import { INestApplication } from "@nestjs/common";
import { ConfigService } from "@nestjs/config";
import { DocumentBuilder, OpenAPIObject, SwaggerModule } from "@nestjs/swagger";
import { PathsObject } from "@nestjs/swagger/dist/interfaces/open-api-spec.interface";

function filterInternalRoutes(doc: OpenAPIObject, tag) {
  const publicDoc = structuredClone(doc);
  const paths: PathsObject = {};
  Object.entries(publicDoc.paths).map(([k, path]) => {
    if (k.includes("/web/")) {
      paths[k] = path;
    }
  });
  publicDoc.paths = paths;
  return publicDoc;
}

const defaultSwaggerOpts = {
  swaggerOptions: {
    docExpansion: false,
    tagsSorter: "alpha",
    operationsSorter: "alpha",
  },
};

export function setupSwagger(app: INestApplication): void {
  const configService = app.get(ConfigService); // Get ConfigService instance
  const options = new DocumentBuilder()
    .setTitle(configService.get("global.apiTitle"))
    .setDescription(configService.get("global.apiDescription"))
    .setVersion(configService.get("global.apiVersion"))
    .addServer("https://centinel-api.asadullahalgalib.tech")
    .addBearerAuth()
    .build();

  console.log(options);
  const document = SwaggerModule.createDocument(app, options);
  const publicDoc = filterInternalRoutes(document, "web");
  SwaggerModule.setup("/docs", app, document, defaultSwaggerOpts);
  SwaggerModule.setup("/docs/web", app, publicDoc, defaultSwaggerOpts);
}
