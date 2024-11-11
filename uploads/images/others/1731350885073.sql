--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+1)
-- Dumped by pg_dump version 16.4 (Debian 16.4-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_created_by_id_fk;
ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_inv_fk;
ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_fk;
ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_created_by_id_fk;
ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_updated_by_id_fk;
ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_created_by_id_fk;
ALTER TABLE ONLY public.articles_categories_links DROP CONSTRAINT articles_categories_links_inv_fk;
ALTER TABLE ONLY public.articles_categories_links DROP CONSTRAINT articles_categories_links_fk;
ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
DROP INDEX public.upload_folders_updated_by_id_fk;
DROP INDEX public.upload_folders_parent_links_order_inv_fk;
DROP INDEX public.upload_folders_parent_links_inv_fk;
DROP INDEX public.upload_folders_parent_links_fk;
DROP INDEX public.upload_folders_created_by_id_fk;
DROP INDEX public.upload_files_updated_at_index;
DROP INDEX public.upload_files_size_index;
DROP INDEX public.upload_files_name_index;
DROP INDEX public.upload_files_folder_path_index;
DROP INDEX public.upload_files_ext_index;
DROP INDEX public.upload_files_created_at_index;
DROP INDEX public.up_users_updated_by_id_fk;
DROP INDEX public.up_users_role_links_order_inv_fk;
DROP INDEX public.up_users_role_links_inv_fk;
DROP INDEX public.up_users_role_links_fk;
DROP INDEX public.up_users_created_by_id_fk;
DROP INDEX public.up_roles_updated_by_id_fk;
DROP INDEX public.up_roles_created_by_id_fk;
DROP INDEX public.up_permissions_updated_by_id_fk;
DROP INDEX public.up_permissions_role_links_order_inv_fk;
DROP INDEX public.up_permissions_role_links_inv_fk;
DROP INDEX public.up_permissions_role_links_fk;
DROP INDEX public.up_permissions_created_by_id_fk;
DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
DROP INDEX public.strapi_releases_updated_by_id_fk;
DROP INDEX public.strapi_releases_created_by_id_fk;
DROP INDEX public.strapi_release_actions_updated_by_id_fk;
DROP INDEX public.strapi_release_actions_release_links_order_inv_fk;
DROP INDEX public.strapi_release_actions_release_links_inv_fk;
DROP INDEX public.strapi_release_actions_release_links_fk;
DROP INDEX public.strapi_release_actions_created_by_id_fk;
DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
DROP INDEX public.strapi_api_tokens_created_by_id_fk;
DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
DROP INDEX public.strapi_api_token_permissions_token_links_fk;
DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
DROP INDEX public.i18n_locale_updated_by_id_fk;
DROP INDEX public.i18n_locale_created_by_id_fk;
DROP INDEX public.files_updated_by_id_fk;
DROP INDEX public.files_related_morphs_order_index;
DROP INDEX public.files_related_morphs_id_column_index;
DROP INDEX public.files_related_morphs_fk;
DROP INDEX public.files_folder_links_order_inv_fk;
DROP INDEX public.files_folder_links_inv_fk;
DROP INDEX public.files_folder_links_fk;
DROP INDEX public.files_created_by_id_fk;
DROP INDEX public.categories_updated_by_id_fk;
DROP INDEX public.categories_created_by_id_fk;
DROP INDEX public.articles_updated_by_id_fk;
DROP INDEX public.articles_created_by_id_fk;
DROP INDEX public.articles_categories_links_order_inv_fk;
DROP INDEX public.articles_categories_links_order_fk;
DROP INDEX public.articles_categories_links_inv_fk;
DROP INDEX public.articles_categories_links_fk;
DROP INDEX public.admin_users_updated_by_id_fk;
DROP INDEX public.admin_users_roles_links_order_inv_fk;
DROP INDEX public.admin_users_roles_links_order_fk;
DROP INDEX public.admin_users_roles_links_inv_fk;
DROP INDEX public.admin_users_roles_links_fk;
DROP INDEX public.admin_users_created_by_id_fk;
DROP INDEX public.admin_roles_updated_by_id_fk;
DROP INDEX public.admin_roles_created_by_id_fk;
DROP INDEX public.admin_permissions_updated_by_id_fk;
DROP INDEX public.admin_permissions_role_links_order_inv_fk;
DROP INDEX public.admin_permissions_role_links_inv_fk;
DROP INDEX public.admin_permissions_role_links_fk;
DROP INDEX public.admin_permissions_created_by_id_fk;
ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
ALTER TABLE ONLY public.strapi_releases DROP CONSTRAINT strapi_releases_pkey;
ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_unique;
ALTER TABLE ONLY public.strapi_release_actions_release_links DROP CONSTRAINT strapi_release_actions_release_links_pkey;
ALTER TABLE ONLY public.strapi_release_actions DROP CONSTRAINT strapi_release_actions_pkey;
ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
ALTER TABLE ONLY public.articles_categories_links DROP CONSTRAINT articles_categories_links_unique;
ALTER TABLE ONLY public.articles_categories_links DROP CONSTRAINT articles_categories_links_pkey;
ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_releases ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_release_actions_release_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_release_actions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.articles_categories_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.upload_folders_parent_links_id_seq;
DROP TABLE public.upload_folders_parent_links;
DROP SEQUENCE public.upload_folders_id_seq;
DROP TABLE public.upload_folders;
DROP SEQUENCE public.up_users_role_links_id_seq;
DROP TABLE public.up_users_role_links;
DROP SEQUENCE public.up_users_id_seq;
DROP TABLE public.up_users;
DROP SEQUENCE public.up_roles_id_seq;
DROP TABLE public.up_roles;
DROP SEQUENCE public.up_permissions_role_links_id_seq;
DROP TABLE public.up_permissions_role_links;
DROP SEQUENCE public.up_permissions_id_seq;
DROP TABLE public.up_permissions;
DROP SEQUENCE public.strapi_webhooks_id_seq;
DROP TABLE public.strapi_webhooks;
DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
DROP TABLE public.strapi_transfer_tokens;
DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
DROP TABLE public.strapi_transfer_token_permissions_token_links;
DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
DROP TABLE public.strapi_transfer_token_permissions;
DROP SEQUENCE public.strapi_releases_id_seq;
DROP TABLE public.strapi_releases;
DROP SEQUENCE public.strapi_release_actions_release_links_id_seq;
DROP TABLE public.strapi_release_actions_release_links;
DROP SEQUENCE public.strapi_release_actions_id_seq;
DROP TABLE public.strapi_release_actions;
DROP SEQUENCE public.strapi_migrations_id_seq;
DROP TABLE public.strapi_migrations;
DROP SEQUENCE public.strapi_database_schema_id_seq;
DROP TABLE public.strapi_database_schema;
DROP SEQUENCE public.strapi_core_store_settings_id_seq;
DROP TABLE public.strapi_core_store_settings;
DROP SEQUENCE public.strapi_api_tokens_id_seq;
DROP TABLE public.strapi_api_tokens;
DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
DROP TABLE public.strapi_api_token_permissions_token_links;
DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
DROP TABLE public.strapi_api_token_permissions;
DROP SEQUENCE public.i18n_locale_id_seq;
DROP TABLE public.i18n_locale;
DROP SEQUENCE public.files_related_morphs_id_seq;
DROP TABLE public.files_related_morphs;
DROP SEQUENCE public.files_id_seq;
DROP SEQUENCE public.files_folder_links_id_seq;
DROP TABLE public.files_folder_links;
DROP TABLE public.files;
DROP SEQUENCE public.categories_id_seq;
DROP TABLE public.categories;
DROP SEQUENCE public.articles_id_seq;
DROP SEQUENCE public.articles_categories_links_id_seq;
DROP TABLE public.articles_categories_links;
DROP TABLE public.articles;
DROP SEQUENCE public.admin_users_roles_links_id_seq;
DROP TABLE public.admin_users_roles_links;
DROP SEQUENCE public.admin_users_id_seq;
DROP TABLE public.admin_users;
DROP SEQUENCE public.admin_roles_id_seq;
DROP TABLE public.admin_roles;
DROP SEQUENCE public.admin_permissions_role_links_id_seq;
DROP TABLE public.admin_permissions_role_links;
DROP SEQUENCE public.admin_permissions_id_seq;
DROP TABLE public.admin_permissions;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO galib;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO galib;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO galib;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNER TO galib;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO galib;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO galib;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO galib;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO galib;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO galib;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNER TO galib;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: articles; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    title character varying(255),
    name character varying(255),
    order_priority integer,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    summery text,
    content jsonb,
    slug character varying(255),
    is_active boolean
);


ALTER TABLE public.articles OWNER TO galib;

--
-- Name: articles_categories_links; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.articles_categories_links (
    id integer NOT NULL,
    article_id integer,
    category_id integer,
    category_order double precision,
    article_order double precision
);


ALTER TABLE public.articles_categories_links OWNER TO galib;

--
-- Name: articles_categories_links_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.articles_categories_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_categories_links_id_seq OWNER TO galib;

--
-- Name: articles_categories_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.articles_categories_links_id_seq OWNED BY public.articles_categories_links.id;


--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_id_seq OWNER TO galib;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    title character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    slug character varying(255),
    is_active boolean
);


ALTER TABLE public.categories OWNER TO galib;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO galib;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO galib;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO galib;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_links_id_seq OWNER TO galib;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO galib;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO galib;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_morphs_id_seq OWNER TO galib;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO galib;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO galib;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO galib;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO galib;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO galib;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNER TO galib;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO galib;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO galib;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO galib;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO galib;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO galib;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO galib;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO galib;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO galib;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    type character varying(255),
    target_id integer,
    target_type character varying(255),
    content_type character varying(255),
    locale character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO galib;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO galib;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_links; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);


ALTER TABLE public.strapi_release_actions_release_links OWNER TO galib;

--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNER TO galib;

--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_releases OWNER TO galib;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO galib;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO galib;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO galib;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO galib;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO galib;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO galib;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO galib;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO galib;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO galib;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO galib;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO galib;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO galib;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNER TO galib;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO galib;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO galib;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO galib;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO galib;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO galib;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_links_id_seq OWNER TO galib;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO galib;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO galib;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: galib
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO galib;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: galib
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNER TO galib;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: galib
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: articles_categories_links id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.articles_categories_links ALTER COLUMN id SET DEFAULT nextval('public.articles_categories_links_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_links id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
11	plugin::upload.read	{}	\N	{}	[]	2024-09-25 20:18:07.737	2024-09-25 20:18:07.737	\N	\N
12	plugin::upload.configure-view	{}	\N	{}	[]	2024-09-25 20:18:08.041	2024-09-25 20:18:08.041	\N	\N
13	plugin::upload.assets.create	{}	\N	{}	[]	2024-09-25 20:18:08.343	2024-09-25 20:18:08.343	\N	\N
14	plugin::upload.assets.update	{}	\N	{}	[]	2024-09-25 20:18:08.649	2024-09-25 20:18:08.649	\N	\N
15	plugin::upload.assets.download	{}	\N	{}	[]	2024-09-25 20:18:08.963	2024-09-25 20:18:08.963	\N	\N
16	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-09-25 20:18:09.27	2024-09-25 20:18:09.27	\N	\N
25	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2024-09-25 20:18:12.021	2024-09-25 20:18:12.021	\N	\N
26	plugin::upload.configure-view	{}	\N	{}	[]	2024-09-25 20:18:12.324	2024-09-25 20:18:12.324	\N	\N
27	plugin::upload.assets.create	{}	\N	{}	[]	2024-09-25 20:18:12.633	2024-09-25 20:18:12.633	\N	\N
28	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2024-09-25 20:18:12.939	2024-09-25 20:18:12.939	\N	\N
29	plugin::upload.assets.download	{}	\N	{}	[]	2024-09-25 20:18:13.239	2024-09-25 20:18:13.239	\N	\N
30	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-09-25 20:18:13.538	2024-09-25 20:18:13.538	\N	\N
42	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2024-09-25 20:18:17.461	2024-09-25 20:18:17.461	\N	\N
45	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2024-09-25 20:18:18.38	2024-09-25 20:18:18.38	\N	\N
46	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2024-09-25 20:18:18.69	2024-09-25 20:18:18.69	\N	\N
47	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2024-09-25 20:18:18.99	2024-09-25 20:18:18.99	\N	\N
48	plugin::content-type-builder.read	{}	\N	{}	[]	2024-09-25 20:18:19.294	2024-09-25 20:18:19.294	\N	\N
49	plugin::email.settings.read	{}	\N	{}	[]	2024-09-25 20:18:19.604	2024-09-25 20:18:19.604	\N	\N
50	plugin::upload.read	{}	\N	{}	[]	2024-09-25 20:18:19.91	2024-09-25 20:18:19.91	\N	\N
51	plugin::upload.assets.create	{}	\N	{}	[]	2024-09-25 20:18:20.22	2024-09-25 20:18:20.22	\N	\N
52	plugin::upload.assets.update	{}	\N	{}	[]	2024-09-25 20:18:20.521	2024-09-25 20:18:20.521	\N	\N
53	plugin::upload.assets.download	{}	\N	{}	[]	2024-09-25 20:18:20.822	2024-09-25 20:18:20.822	\N	\N
54	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-09-25 20:18:21.123	2024-09-25 20:18:21.123	\N	\N
55	plugin::upload.configure-view	{}	\N	{}	[]	2024-09-25 20:18:21.43	2024-09-25 20:18:21.43	\N	\N
56	plugin::upload.settings.read	{}	\N	{}	[]	2024-09-25 20:18:21.731	2024-09-25 20:18:21.731	\N	\N
57	plugin::documentation.read	{}	\N	{}	[]	2024-09-25 20:18:22.042	2024-09-25 20:18:22.042	\N	\N
58	plugin::documentation.settings.update	{}	\N	{}	[]	2024-09-25 20:18:22.35	2024-09-25 20:18:22.35	\N	\N
59	plugin::documentation.settings.regenerate	{}	\N	{}	[]	2024-09-25 20:18:22.658	2024-09-25 20:18:22.658	\N	\N
60	plugin::documentation.settings.read	{}	\N	{}	[]	2024-09-25 20:18:22.963	2024-09-25 20:18:22.963	\N	\N
61	plugin::i18n.locale.create	{}	\N	{}	[]	2024-09-25 20:18:23.274	2024-09-25 20:18:23.274	\N	\N
62	plugin::i18n.locale.read	{}	\N	{}	[]	2024-09-25 20:18:23.575	2024-09-25 20:18:23.575	\N	\N
63	plugin::i18n.locale.update	{}	\N	{}	[]	2024-09-25 20:18:23.878	2024-09-25 20:18:23.878	\N	\N
64	plugin::i18n.locale.delete	{}	\N	{}	[]	2024-09-25 20:18:24.185	2024-09-25 20:18:24.185	\N	\N
65	plugin::users-permissions.roles.create	{}	\N	{}	[]	2024-09-25 20:18:24.492	2024-09-25 20:18:24.492	\N	\N
66	plugin::users-permissions.roles.read	{}	\N	{}	[]	2024-09-25 20:18:24.796	2024-09-25 20:18:24.796	\N	\N
67	plugin::users-permissions.roles.update	{}	\N	{}	[]	2024-09-25 20:18:25.097	2024-09-25 20:18:25.097	\N	\N
68	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2024-09-25 20:18:25.399	2024-09-25 20:18:25.399	\N	\N
69	plugin::users-permissions.providers.read	{}	\N	{}	[]	2024-09-25 20:18:25.706	2024-09-25 20:18:25.706	\N	\N
70	plugin::users-permissions.providers.update	{}	\N	{}	[]	2024-09-25 20:18:26.009	2024-09-25 20:18:26.009	\N	\N
71	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2024-09-25 20:18:26.316	2024-09-25 20:18:26.316	\N	\N
72	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2024-09-25 20:18:26.628	2024-09-25 20:18:26.628	\N	\N
73	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2024-09-25 20:18:26.946	2024-09-25 20:18:26.946	\N	\N
74	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2024-09-25 20:18:27.249	2024-09-25 20:18:27.249	\N	\N
75	admin::marketplace.read	{}	\N	{}	[]	2024-09-25 20:18:27.55	2024-09-25 20:18:27.55	\N	\N
76	admin::webhooks.create	{}	\N	{}	[]	2024-09-25 20:18:27.856	2024-09-25 20:18:27.856	\N	\N
77	admin::webhooks.read	{}	\N	{}	[]	2024-09-25 20:18:28.165	2024-09-25 20:18:28.165	\N	\N
78	admin::webhooks.update	{}	\N	{}	[]	2024-09-25 20:18:28.468	2024-09-25 20:18:28.468	\N	\N
79	admin::webhooks.delete	{}	\N	{}	[]	2024-09-25 20:18:28.767	2024-09-25 20:18:28.767	\N	\N
80	admin::users.create	{}	\N	{}	[]	2024-09-25 20:18:29.071	2024-09-25 20:18:29.071	\N	\N
81	admin::users.read	{}	\N	{}	[]	2024-09-25 20:18:29.374	2024-09-25 20:18:29.374	\N	\N
82	admin::users.update	{}	\N	{}	[]	2024-09-25 20:18:29.682	2024-09-25 20:18:29.682	\N	\N
83	admin::users.delete	{}	\N	{}	[]	2024-09-25 20:18:29.981	2024-09-25 20:18:29.981	\N	\N
84	admin::roles.create	{}	\N	{}	[]	2024-09-25 20:18:30.291	2024-09-25 20:18:30.291	\N	\N
85	admin::roles.read	{}	\N	{}	[]	2024-09-25 20:18:30.597	2024-09-25 20:18:30.597	\N	\N
86	admin::roles.update	{}	\N	{}	[]	2024-09-25 20:18:30.899	2024-09-25 20:18:30.899	\N	\N
87	admin::roles.delete	{}	\N	{}	[]	2024-09-25 20:18:31.209	2024-09-25 20:18:31.209	\N	\N
88	admin::api-tokens.access	{}	\N	{}	[]	2024-09-25 20:18:31.517	2024-09-25 20:18:31.517	\N	\N
89	admin::api-tokens.create	{}	\N	{}	[]	2024-09-25 20:18:31.822	2024-09-25 20:18:31.822	\N	\N
90	admin::api-tokens.read	{}	\N	{}	[]	2024-09-25 20:18:32.122	2024-09-25 20:18:32.122	\N	\N
91	admin::api-tokens.update	{}	\N	{}	[]	2024-09-25 20:18:32.424	2024-09-25 20:18:32.424	\N	\N
92	admin::api-tokens.regenerate	{}	\N	{}	[]	2024-09-25 20:18:32.729	2024-09-25 20:18:32.729	\N	\N
93	admin::api-tokens.delete	{}	\N	{}	[]	2024-09-25 20:18:33.031	2024-09-25 20:18:33.031	\N	\N
94	admin::project-settings.update	{}	\N	{}	[]	2024-09-25 20:18:33.341	2024-09-25 20:18:33.341	\N	\N
95	admin::project-settings.read	{}	\N	{}	[]	2024-09-25 20:18:33.643	2024-09-25 20:18:33.643	\N	\N
96	admin::transfer.tokens.access	{}	\N	{}	[]	2024-09-25 20:18:33.947	2024-09-25 20:18:33.947	\N	\N
97	admin::transfer.tokens.create	{}	\N	{}	[]	2024-09-25 20:18:34.251	2024-09-25 20:18:34.251	\N	\N
98	admin::transfer.tokens.read	{}	\N	{}	[]	2024-09-25 20:18:34.562	2024-09-25 20:18:34.562	\N	\N
99	admin::transfer.tokens.update	{}	\N	{}	[]	2024-09-25 20:18:34.867	2024-09-25 20:18:34.867	\N	\N
100	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2024-09-25 20:18:35.167	2024-09-25 20:18:35.167	\N	\N
101	admin::transfer.tokens.delete	{}	\N	{}	[]	2024-09-25 20:18:35.465	2024-09-25 20:18:35.465	\N	\N
116	plugin::content-manager.explorer.delete	{}	api::category.category	{}	[]	2024-10-02 23:01:30.134	2024-10-02 23:01:30.134	\N	\N
117	plugin::content-manager.explorer.publish	{}	api::category.category	{}	[]	2024-10-02 23:01:30.467	2024-10-02 23:01:30.467	\N	\N
124	plugin::content-manager.explorer.delete	{}	api::article.article	{}	[]	2024-10-02 23:18:00.679	2024-10-02 23:18:00.679	\N	\N
125	plugin::content-manager.explorer.publish	{}	api::article.article	{}	[]	2024-10-02 23:18:01.016	2024-10-02 23:18:01.016	\N	\N
144	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["title", "name", "orderPriority", "categories", "summery", "thumb", "content", "slug", "isActive"]}	[]	2024-10-03 19:30:40.098	2024-10-03 19:30:40.098	\N	\N
145	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["title", "name", "orderPriority", "categories", "summery", "thumb", "content", "slug", "isActive"]}	[]	2024-10-03 19:30:40.433	2024-10-03 19:30:40.433	\N	\N
146	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["title", "name", "orderPriority", "categories", "summery", "thumb", "content", "slug", "isActive"]}	[]	2024-10-03 19:30:40.771	2024-10-03 19:30:40.771	\N	\N
147	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["title", "description", "articles", "slug", "isActive"]}	[]	2024-10-03 19:41:46.558	2024-10-03 19:41:46.558	\N	\N
148	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["title", "description", "articles", "slug", "isActive"]}	[]	2024-10-03 19:41:46.894	2024-10-03 19:41:46.894	\N	\N
149	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["title", "description", "articles", "slug", "isActive"]}	[]	2024-10-03 19:41:47.225	2024-10-03 19:41:47.225	\N	\N
150	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-10-05 23:13:38.331	2024-10-05 23:13:38.331	\N	\N
151	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-10-05 23:13:38.802	2024-10-05 23:13:38.802	\N	\N
152	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-10-05 23:13:39.19	2024-10-05 23:13:39.19	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
25	25	3	9
26	26	3	10
27	27	3	11
28	28	3	12
29	29	3	13
30	30	3	14
42	42	1	12
45	45	1	15
46	46	1	16
47	47	1	17
48	48	1	18
49	49	1	19
50	50	1	20
51	51	1	21
52	52	1	22
53	53	1	23
54	54	1	24
55	55	1	25
56	56	1	26
57	57	1	27
58	58	1	28
59	59	1	29
60	60	1	30
61	61	1	31
62	62	1	32
63	63	1	33
64	64	1	34
65	65	1	35
66	66	1	36
67	67	1	37
68	68	1	38
69	69	1	39
70	70	1	40
71	71	1	41
72	72	1	42
73	73	1	43
74	74	1	44
75	75	1	45
76	76	1	46
77	77	1	47
78	78	1	48
79	79	1	49
80	80	1	50
81	81	1	51
82	82	1	52
83	83	1	53
84	84	1	54
85	85	1	55
86	86	1	56
87	87	1	57
88	88	1	58
89	89	1	59
90	90	1	60
91	91	1	61
92	92	1	62
93	93	1	63
94	94	1	64
95	95	1	65
96	96	1	66
97	97	1	67
98	98	1	68
99	99	1	69
100	100	1	70
101	101	1	71
116	116	1	83
117	117	1	84
124	124	1	91
125	125	1	92
144	144	1	93
145	145	1	94
146	146	1	95
147	147	1	96
148	148	1	97
149	149	1	98
150	150	1	99
151	151	1	100
152	152	1	101
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2024-09-25 20:18:03.884	2024-09-25 20:18:03.884	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2024-09-25 20:18:04.189	2024-09-25 20:18:04.189	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2024-09-25 20:18:04.451	2024-09-25 20:18:04.451	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Md.	Al Galib	\N	asadullahagalib81@gmail.com	$2a$10$KClZNItDYnlsstTklBMTbe6GoMwvuIq0priJGiCJhY0yDJC4CWdEm	\N	\N	t	f	\N	2024-09-25 20:20:55.73	2024-09-25 20:20:55.73	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.articles (id, title, name, order_priority, created_at, updated_at, published_at, created_by_id, updated_by_id, summery, content, slug, is_active) FROM stdin;
12	An AI Revolution in Finance: Opportunities and Challenges	\N	1	2024-10-03 19:05:33.578	2024-10-03 22:12:48.33	2024-10-03 19:27:54.957	\N	1	Quia commodo quia au	{"time": 1727971963547, "blocks": [{"id": "X4EV6X8UTz", "data": {"text": "After years of quiet evolution, artificial intelligence (AI) is now driving innovation in all industries at an unprecedented speed. Even the finance industry, a highly regulated sector that was initially slower to adopt the new technology, is beginning to use AI for analysis and forecasting,&nbsp;<a href=\\"https://www.toptal.com/finance/risk-management-consultants/financial-risk-analysis\\" target=\\"_blank\\">fraud detection</a>&nbsp;and prevention, personal finance management, compliance-related tasks, and customer service and support. But challenges and opportunities remain ahead."}, "type": "paragraph"}, {"id": "xwoBqPmNVi", "data": {"text": "As recently as 2021, financial institutions were considered&nbsp;<a href=\\"https://www.accenture.com/us-en/insights/artificial-intelligence/ai-maturity-and-transformation\\" target=\\"_blank\\">relatively immature</a>&nbsp;in terms of AI deployment compared to other industries, and were projected to lag for the foreseeable future due to regulatory concerns, a lack of AI infrastructure, and a dearth of AI-trained workers."}, "type": "paragraph"}, {"id": "nzmBiMpCoH", "data": {"text": "But the rise of&nbsp;<a href=\\"https://www.ibm.com/topics/large-language-models\\" target=\\"_blank\\">large language models</a>&nbsp;(LLMs) and&nbsp;<a href=\\"https://www.nvidia.com/en-us/glossary/generative-ai/\\" target=\\"_blank\\">generative AI</a>&nbsp;(Gen AI) at the beginning of 2023 sparked a change. According to forecasts by technology market research firm IDC, worldwide spending on AI hardware and services is set to&nbsp;<a href=\\"https://www.idc.com/getdoc.jsp?containerId=prUS51335823#:~:text=As%20a%20result%2C%20IDC%20expects,AI%2Denhanced%20products%2Fservices.\\" target=\\"_blank\\">exceed $500 billion by 2027</a>, and financial service organizations are expected to&nbsp;<a href=\\"https://www.imf.org/en/Publications/fandd/issues/2023/12/AI-reverberations-across-finance-Kearns\\" target=\\"_blank\\">double their AI spending</a>&nbsp;during that time, reports the International Monetary Fund. That’s understandable, considering AI’s potential to reduce human error, predict market trends, speed document analysis, and churn through huge datasets. However, it could be catastrophic if the technology opened the door to sophisticated versions of theft, fraud, cybercrime, or even a financial crisis. Caution will continue to be the watchword, even as adoption accelerates."}, "type": "paragraph"}, {"id": "Pm_TGj-t_N", "data": {"text": "In this article, three Toptal finance specialists—<a href=\\"https://www.toptal.com/finance/resume/carlos-salas-najera\\" target=\\"_blank\\">Carlos Salas Najera</a>, former Head of Equities at London &amp; Capital,&nbsp;<a href=\\"https://www.toptal.com/finance/resume/arvind-kumar1\\" target=\\"_blank\\">Arvind Kumar</a>, who’s worked globally with KPMG, Goldman Sachs, and EY, and&nbsp;<a href=\\"https://www.toptal.com/finance/resume/david-quinn?origin=slack\\" target=\\"_blank\\">David Quinn</a>, a seasoned finance expert who runs his own wealth management firm—offer their insights about AI and finance."}, "type": "paragraph"}, {"id": "pEGjIOFePl", "data": {"text": "How Is Artificial Intelligence Changing the Finance Sector?", "level": 2}, "type": "header"}, {"id": "RBM5G5mjLy", "data": {"text": "Companies are embracing the abilities of AI and LLMs to simplify and speed up data-heavy tasks, pinpoint fraud, and improve customer service. Despite the slow start, it’s easy to see why the finance industry and finance teams within companies are accelerating their adoption of the technology."}, "type": "paragraph"}, {"id": "KnhoQzxY7B", "data": {"text": "“Over the last decade, a quick paradigm shift took place when institutions like&nbsp;<a href=\\"https://www.blackrock.com/us/individual/insights/ai-investing\\" target=\\"_blank\\">BlackRock embraced AI</a>&nbsp;and forced the rest of [the] players to play catch-up or get wiped out of the game,” says Salas, who specializes in AI and machine learning (ML) with a focus on investment applications. In 2023, BlackRock integrated AI across various facets of its operations to enhance investment strategies, improve client outcomes, and drive innovation. Salas adds that the benefits of using AI in finance—such as increased operational efficiency and the ability to make more thoroughly informed decisions—are already well documented. However, he noted that some investment firms have resisted AI due to the need to update legacy systems, the challenges of integrating the technology into existing financial models, and other potential risks."}, "type": "paragraph"}, {"id": "nMJ0Q6qlvC", "data": {"text": "Some of these barriers have been removed by the rapid expansion of ChatGPT and the gradual general acceptance of AI in our daily lives. “That reluctance diminished as more success stories and tangible benefits of AI adoption emerged,” explains Salas. “Additionally,&nbsp;<a href=\\"https://www.skadden.com/insights/publications/2023/12/how-regulators-worldwide-are-addressing-the-adoption-of-ai-in-financial-services#:~:text=How%20Have%20Governments%20and%20Regulators%20Reacted%20to%20the%20Use%20of%20AI%20in%20Financial%20Services%3F\\" target=\\"_blank\\">regulatory bodies have become more receptive&nbsp;</a>to AI applications in finance, further facilitating its implementation. Yet there are still many gaps in the regulatory frameworks that force many financial companies to adopt a wait-and-see approach.”"}, "type": "paragraph"}, {"id": "IkxdFXzgTe", "data": {"text": "What AI Use Cases Are Companies Investing in Today?"}, "type": "paragraph"}, {"id": "hSZXx4n-Jy", "data": {"text": "A survey of approximately 400 financial services professionals around the globe highlights these applications:"}, "type": "paragraph"}, {"id": "O1Yfu19DR8", "data": {"content": [["Risk management", "36%"], ["Portfolio optimization", "29%"], ["Fraud detection (transactions/payments)", "28%"], ["Algorithmic trading", "27%"], ["Document management", "26%"], ["Customer experience", "26%"]], "withHeadings": false}, "type": "table"}, {"id": "OluImCHW_9", "data": {"text": "Source:&nbsp;State of AI in Financial Services: 2024 Trends, Nvidia"}, "type": "paragraph"}, {"id": "aHnJRLGn2N", "data": {"text": "4 Specific Areas Where AI in Finance Can Deliver Impact", "level": 2}, "type": "header"}, {"id": "7OjjK2wfLD", "data": {"text": "Parsing Data", "level": 3}, "type": "header"}, {"id": "a6g7CYGytp", "data": {"text": "The most&nbsp;<a href=\\"https://sloanreview.mit.edu/article/how-ai-is-improving-data-management/\\" target=\\"_blank\\">obvious benefit</a>&nbsp;that AI offers to finance is its facility for reading, classifying, and extracting insights from datasets too large and complex for humans to manage effectively. That’s important: Companies usually collect massive amounts of information, even though&nbsp;<a href=\\"https://www.seagate.com/la/es/news/news-archive/seagates-rethink-data-report-reveals-that-68-percent-of-data-available-to-businesses-goes-unleveraged-pr-master/\\" target=\\"_blank\\">more than two-thirds</a>&nbsp;may never be used."}, "type": "paragraph"}, {"id": "ydQW0vraUD", "data": {"text": "Unlike&nbsp;<a href=\\"https://www.toptal.com/finance/fintech/bots-for-finance\\" target=\\"_blank\\">traditional bots and automation tools</a>, machine learning algorithms can sift through data to identify and learn from patterns, enabling them to make predictions or decisions without explicit programming. This is particularly useful when analyzing loan applications, for example. Until recently, JPMorganChase relied on human workers to manually review and interpret commercial loan agreements, a process that was not only time-consuming but also prone to human error, due to the complexity and volume of the documents. To address this challenge, the bank developed a contract intelligence platform called&nbsp;<a href=\\"https://www.bloomberg.com/news/articles/2017-02-28/jpmorgan-marshals-an-army-of-developers-to-automate-high-finance\\" target=\\"_blank\\">COIN</a>. Utilizing natural language processing (NLP), a branch of AI that helps computers understand, interpret, and produce human language, COIN extracts and analyzes key information from loan documents automatically."}, "type": "paragraph"}, {"id": "zfl7NiNsr2", "data": {"text": "The implementation of COiN dramatically reduced the time required to review documents, the bank told investors. What used to take the company’s lawyers and loan officers&nbsp;<a href=\\"https://futurism.com/an-ai-completed-360000-hours-of-finance-work-in-just-seconds\\" target=\\"_blank\\">360,000 hours annually</a>&nbsp;can now be accomplished in just seconds and with fewer errors, speeding operations without a proportional increase in overhead costs."}, "type": "paragraph"}, {"id": "UOr4K7dBjA", "data": {"text": "According to Kumar, LLM tools can also be used for small-scale experimentation, even without fully fledged customized AI models or profound technical knowledge. “If there’s a business question where I have to think about four or five angles or four or five go-to-market strategies for a company looking to make a financial decision, I can just type the situation in ChatGPT or Gemini: ‘I am consulting on [type of project]. This is the kind of client, this is the context. What are the aspects that I should be looking at?’ The answers are not 100% accurate, but they’re a pretty good starting point if you have the experience to craft a good prompt and identify right answers from wrong.”"}, "type": "paragraph"}, {"id": "D9E4St25lW", "data": {"text": "Optimizing Portfolios With Precision", "level": 3}, "type": "header"}, {"id": "tdfEfBzquu", "data": {"text": "Using AI, companies can tap into previously underutilized data in real time, greatly enhancing their ability to respond to changes in financial markets, a skill especially useful in trading. More than 40 years ago, Renaissance Technologies&nbsp;<a href=\\"https://www.cnbc.com/2019/11/05/how-jim-simons-founder-of-renaissance-technologies-beats-the-market.html\\" target=\\"_blank\\">developed&nbsp;</a><a href=\\"https://www.cnbc.com/2019/11/05/how-jim-simons-founder-of-renaissance-technologies-beats-the-market.html\\" target=\\"_blank\\">sophisticated algorithms</a>&nbsp;to allow the fund to capitalize on very small price discrepancies in the market that exist for only seconds or milliseconds. This ability allowed Renaissance’s flagship Medallion fund to enjoy a&nbsp;<a href=\\"https://www.cornell-capital.com/blog/2020/02/medallion-fund-the-ultimate-counterexample.html\\" target=\\"_blank\\">virtually unmatched 63.3% return</a>&nbsp;from 1998 to 2018."}, "type": "paragraph"}, {"id": "PHY0Z6dcH3", "data": {"text": "LLMs can be fine-tuned to serve the same purpose even better than any algorithm could. Unlike traditional algorithms, LLMs can analyze vast amounts of unstructured data, understand complex patterns, and adapt to new information dynamically. This makes it possible to predict the behavior of financial markets faster and more accurately, potentially providing a significant edge in high-frequency trading and other investment strategies."}, "type": "paragraph"}, {"id": "VDLs2jnkR9", "data": {"text": "That’s the idea behind BlackRock’s newest venture into AI. Unlike general LLMs such as OpenAI’s GPT models, BlackRock uses specialized LLMs trained on narrower datasets specifically tailored for precise investment tasks, such as analyzing trends from earnings calls and predicting subsequent market movements. The benefit of narrower datasets is that they typically contain less irrelevant data, minimizing the likelihood of the model being influenced by extraneous factors and thereby reducing noise and potential errors. This approach helps the models focus on the most pertinent information, improving their ability to make precise and reliable predictions."}, "type": "paragraph"}, {"id": "eEHiFIpLYX", "data": {"text": "BlackRock has showcased the effectiveness of its tailored LLMs with comparative studies indicating that its models outperform larger, more generalized AI models in specific financial tasks."}, "type": "paragraph"}, {"id": "5wSB-_Da7k", "data": {"file": {"raw": {}, "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727971391/images_a8a6cd5e6f.avif"}, "caption": "zxcz zx czxc zxcz xcz xczxczxc", "stretched": false, "withBorder": false, "withBackground": false}, "type": "image"}, {"id": "Obk2t7NTey", "data": {"text": "This application of AI can also be implemented on a smaller scale, with much less investment, for smaller financial organizations, says Quinn, who was head of wealth management at a fintech startup before helping to orchestrate its successful exit to a major US bank. During his time at the startup, he began experimenting with a training algorithm to propose trades that would help get portfolios closer to their targets, while accounting for cash needs and withdrawals. “The algorithm suggested daily trades, which I would then review and approve or reject. This process helped create a valuable dataset for training an AI capable of predicting whether a human would approve a trade.”"}, "type": "paragraph"}, {"id": "6QZhHW5Q_l", "data": {"text": "The startup was acquired before Quinn could refine the tool, but in his current wealth management business, Quinn continues to use the technology he developed to predict client transactions. By analyzing data from custodial accounts, his algorithms identify recurring transactions and their frequencies, such as monthly contributions or withdrawals, to create a training set. The result allows the AI to anticipate cash flows without manual input. This approach leverages multiple algorithms and LLMs to enhance the client experience by focusing on prediction and thoughtful integration of data."}, "type": "paragraph"}, {"id": "O6ZGHfdiGX", "data": {"text": "Supporting Compliance Tasks", "level": 3}, "type": "header"}, {"id": "OXhluxs4JL", "data": {"text": "As financial services become more complex, the tools firms use to support regulatory compliance must keep up. One area where some companies have been employing this capability is in helping to investigate financial crimes."}, "type": "paragraph"}, {"id": "vlxRrAc2Vz", "data": {"text": "Following the discovery that UK-based bank HSBC was one of 17 banks used to&nbsp;<a href=\\"https://www.theguardian.com/world/2017/mar/20/british-banks-handled-vast-sums-of-laundered-russian-money\\" target=\\"_blank\\">launder at least $20 billion</a>&nbsp;for organized crime, the company quickly brought in&nbsp;<a href=\\"https://www.reuters.com/article/us-hsbc-ai-idUSKBN18S4M5/\\" target=\\"_blank\\">AI startup Ayasdi</a>&nbsp;to better detect potentially suspicious financial transactions and flag them for investigation. Later, it partnered with the&nbsp;<a href=\\"https://www.cnbc.com/2023/09/22/hsbc-backed-startup-is-using-ai-to-help-banks-fight-financial-crime.html\\" target=\\"_blank\\">AI firm Silent Eight</a>&nbsp;to use generative AI to automate routine tasks such as customer screening, transaction monitoring, and alert adjudication, which human operators traditionally handled."}, "type": "paragraph"}, {"id": "ErkMTas3jF", "data": {"text": "HSBC credits the adoption of AI to combat money laundering with a reduction in the number of&nbsp;<a href=\\"https://www.finextra.com/blogposting/14748/ai-implementation-in-aml-at-hsbc-sees-a-considerable-reduction-in-compliance-costs#:~:text=they%20saw%20the%20number%20of%20investigations%20drop%20by%2020%25%20without%20reducing%20the%20number%20of%20cases%20referred%20for%20more%20scrutiny.\\" target=\\"_blank\\">investigations needed by 20%</a>. This efficiency gain lowered costs and allowed compliance officers to focus more on high-risk cases. Additionally, the company’s AI-driven systems have lowered the false positive rates in transaction monitoring, significantly reducing unnecessary reviews and streamlining compliance operations."}, "type": "paragraph"}, {"id": "tihMAFngLD", "data": {"text": "Using Robots in Customer Service", "level": 3}, "type": "header"}, {"id": "vZUWFsX4RL", "data": {"text": "LLM-driven&nbsp;<a href=\\"https://www.toptal.com/insights/innovation/chatbot-technology-past-present-future\\" target=\\"_blank\\">chatbots and virtual assistants</a>&nbsp;are transforming customer service for financial organizations by using deep learning to autonomously manage routine inquiries and transactions. These systems engage with customers in real time, offering quick responses and services like checking account balances, initiating payments, and providing detailed transaction histories."}, "type": "paragraph"}, {"id": "WYgPCOZTcv", "data": {"text": "Bank of America’s chatbot, Erica, was the first such financial tool to offer advanced AI capabilities. Launched in 2018, Erica initially provided functionalities like predictive insights, proactive alerts, enhanced fraud detection, and personalized financial planning. The tool became popular for its ease of use and constant updates. By 2023, clients engaged with Erica&nbsp;<a href=\\"https://newsroom.bankofamerica.com/content/newsroom/press-releases/2023/07/bofa-s-erica-surpasses-1-5-billion-client-interactions--totaling.html\\" target=\\"_blank\\">56 million times</a>&nbsp;monthly to monitor and manage subscriptions, understand spending habits, track merchandise refunds, and check their FICO scores."}, "type": "paragraph"}, {"id": "vKZlXWGKrf", "data": {"text": "The use of similar robo-assistants has multiplied in the financial services industry, with examples like&nbsp;<a href=\\"https://www.citigroup.com/global/news/press-release/2018/citi-releases-its-first-citi-bot-sg-on-facebook-messenger-in-singapore\\" target=\\"_blank\\">Citi Bot SG</a>&nbsp;from Citi,&nbsp;<a href=\\"https://www.rbcroyalbank.com/mobile/feature/nomi/index.html\\" target=\\"_blank\\">NOMI</a>&nbsp;from the Royal Bank of Canada, and&nbsp;<a href=\\"https://www.santander.co.uk/personal/support/customer-support/chat-with-us\\" target=\\"_blank\\">Sandi</a>&nbsp;from Santander. This trend aligns with customers’ current sentiment toward these services. According to a survey by Salesforce,&nbsp;<a href=\\"https://www.salesforce.com/blog/customer-service-in-banking/#:~:text=We%20found%2081%25%20of%20people%20try%20to%20solve%20a%20problem%20themselves\\" target=\\"_blank\\">81% of banking customers</a>&nbsp;now try to solve problems themselves with tools like chatbots before requesting human intervention."}, "type": "paragraph"}, {"id": "XQCJSvLJUz", "data": {"file": {"raw": {}, "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727971421/images_97779f2b78.png"}, "caption": "AI-powered chatbots can help users address common banking issues like dealing with potentially suspicious charges.", "stretched": false, "withBorder": false, "withBackground": false}, "type": "image"}, {"id": "UEPn-A773N", "data": {"text": "How Can Financial Firms Navigate the Challenges of AI?", "level": 2}, "type": "header"}, {"id": "8K2WLj0xrl", "data": {"text": "By now, there’s no lack of enthusiasm about using artificial intelligence in finance. Estimates from tech leaders like&nbsp;<a href=\\"https://resources.nvidia.com/en-us-2024-fsi-survey/ai-financial-services?ncid=2\\" target=\\"_blank\\">Nvidia</a>&nbsp;and financial institutions like the&nbsp;<a href=\\"https://www.ecb.europa.eu/press/financial-stability-publications/fsr/special/html/ecb.fsrart202405_02~58c3ce5246.en.html#:~:text=There%20is%20a%20broad%20consensus%20that%20the%20use%20of%20AI%20is%20associated%20with%20possible%20benefits%20for%20numerous%20sectors%2C%20including%20the%20financial%20sector.\\" target=\\"_blank\\">European Central Bank</a>&nbsp;generally anticipate that AI will make a very positive potential impact on all functions within a company, and the consensus among the financial experts Toptal consulted is that these institutions must invest in AI to maintain competitiveness. But since this field is evolving at such a rapid pace, there are many challenges that must be carefully managed to&nbsp;<a href=\\"https://www.toptal.com/executive-guidance/data-analytics-ai/value-of-ai-initiatives\\" target=\\"_blank\\">ensure successful AI deployment</a>."}, "type": "paragraph"}, {"id": "cbkeG-NXUa", "data": {"text": "What Are the Biggest Challenges Companies Face in Achieving AI Goals?"}, "type": "paragraph"}, {"id": "ZBaT0n4W9Q", "data": {"text": "A survey of approximately 400 financial services professionals around the globe cites these roadblocks:"}, "type": "paragraph"}, {"id": "IyJW3-mjdb", "data": {"content": [["Data issues: privacy, sovereignty, and disparate locations", "38%"], ["Recruiting and retaining AI experts and data scientists", "32%"], ["Lack of budget", "28%"], ["Lack of sufficient data for model training and accuracy", "27%"]], "withHeadings": false}, "type": "table"}, {"id": "Kilr6w0o2t", "data": {"text": "Source:&nbsp;State of AI in Financial Services: 2024 Trends,&nbsp;Nvidia"}, "type": "paragraph"}, {"id": "_xmBnne01n", "data": {"text": "Maintaining Robust Security", "level": 3}, "type": "header"}, {"id": "HrJNjvBLn0", "data": {"text": "<a href=\\"https://www.ey.com/en_us/board-matters/banking-risks-from-ai-and-machine-learning\\" target=\\"_blank\\">Maintaining data security</a>&nbsp;is of paramount concern for the finance industry. These companies handle vast amounts of sensitive data, including personal information, transaction histories, and potentially confidential business information. The integration of AI in finance necessitates handling this data in ways that protect it against breaches and unauthorized access.&nbsp;<a href=\\"https://www.toptal.com/finance/finance-directors/cyber-security\\" target=\\"_blank\\">Ensuring data privacy</a>&nbsp;can involve encrypting data, securely storing and processing data, and implementing robust access controls, among many other safeguards."}, "type": "paragraph"}, {"id": "kwHp5S9Pyi", "data": {"text": "“A crucial point to consider is that collecting more data to enhance our machine learning and AI capabilities also means housing more data, increasing our risk exposure,” says Quinn. “Therefore, having a robust policy around data management and data security is critically important.”"}, "type": "paragraph"}, {"id": "85MP9SDH_h", "data": {"text": "Regulatory frameworks like the General Data Protection Regulation (GDPR), the California Consumer Privacy Act (CCPA) in the US, and the European Union’s newly approved&nbsp;<a href=\\"https://digital-strategy.ec.europa.eu/en/policies/regulatory-framework-ai\\" target=\\"_blank\\">AI Act</a>&nbsp;impose strict rules on data handling, which pushes financial institutions to adopt AI solutions capable of complying with these laws. Penalties under these regulations can be substantial. For example, the&nbsp;<a href=\\"https://gdpr.eu/fines/#:~:text=These%20types%20of%20infringements%20could%20result%20in%20a%20fine%20of%20up%20to%20%E2%82%AC20%20million%2C%20or%204%25%20of%20the%20firm%E2%80%99s%20worldwide%20annual%20revenue%20from%20the%20preceding%20financial%20year%2C%20whichever%20amount%20is%20higher.\\" target=\\"_blank\\">GDPR can impose fines</a>&nbsp;of up to €20 million or 4% of a company’s global annual revenue.&nbsp;<a href=\\"https://leginfo.legislature.ca.gov/faces/codes_displayText.xhtml?lawCode=CIV&amp;division=3.&amp;title=1.81.5.&amp;part=4.&amp;chapter=&amp;article#:~:text=Any%20business%2C%20service,Privacy%20Protection%20Agency.\\" target=\\"_blank\\">The CCPA can levy fines</a>&nbsp;of up to $7,500 per intentional violation and $2,500 per unintentional violation."}, "type": "paragraph"}, {"id": "Kgqend8vqC", "data": {"text": "Ensuring High Data Quality", "level": 3}, "type": "header"}, {"id": "gOClvQi8vW", "data": {"text": "AI models are only as good as the data they are trained on, so a related challenge to manage is checking that the data used is clean, meaning that it is&nbsp;<a href=\\"https://hbr.org/2024/03/is-your-companys-data-ready-for-generative-ai#:~:text=The%20relatively%20unstructured%20data%20that%20generative%20AI%20uses%20needs%20to%20be%20well%2Dcurated%20for%20accuracy%2C%20recency%2C%20uniqueness%2C%20and%20other%20attributes%20if%20generative%20AI%20models%20employing%20it%20are%20to%20be%20highly%20useful.%20Poor%2Dquality%20internal%20data%20will%20yield%20poor%2Dquality%20responses%20from%20genAI%20models.\\" target=\\"_blank\\">accurate, complete, and free of inconsistencies</a>. “Even the best model will face obstacles, so we must consider what data will be collected to further enhance our machine learning intelligence. It’s not simply a matter of creating an algorithm at one point in time and leaving it at that,” explains Quinn. “The algorithm needs to continuously update its parameters over time, based on additional training sets and observations, to refine its accuracy and effectiveness. So the questions companies need to address are: How will we collect this data? How will we clean it?”"}, "type": "paragraph"}, {"id": "00WR1R1SOt", "data": {"text": "Finding Talent With AI Skills", "level": 3}, "type": "header"}, {"id": "K9AxMZnNFt", "data": {"text": "The data quality challenge leads to the third obstacle on the way to AI adoption: finding the right talent to tackle all the related tasks and responsibilities. According to a recent report from Rackspace Technologies,&nbsp;<a href=\\"https://www.rackspace.com/sites/default/files/2023-02/AI-Machine-Learning-Research-Report.pdf#page=2\\" target=\\"_blank\\">two-thirds of IT leaders</a>&nbsp;cited the shortage of&nbsp;<a href=\\"https://www.toptal.com/services/technology-services/artificial-intelligence\\" target=\\"_blank\\">skilled AI talent</a>&nbsp;as their main roadblock for their AI initiatives. The tech and its applications are so new that the&nbsp;<a href=\\"https://www.toptal.com/artificial-intelligence\\" target=\\"_blank\\">AI experts</a>&nbsp;capable of coordinating complex deployments are few and highly sought-after, limiting the number of companies capable of accessing their services."}, "type": "paragraph"}, {"id": "437z4KOcbm", "data": {"text": "Another issue regarding talent is that bringing AI into any team will not necessarily translate into efficiency. A study from Harvard Business School found that AI can&nbsp;<a href=\\"https://mitsloan.mit.edu/sites/default/files/2023-10/SSRN-id4573321.pdf#page=4\\" target=\\"_blank\\">improve work quality by up to 40%</a>—but only if it’s in the hands of highly skilled people working on the right tasks. If you use AI for jobs it’s not suited for, such as qualitative analysis, performance can drop by 19%, no matter how skilled the user is. Human intelligence still matters."}, "type": "paragraph"}, {"id": "vh4RFPbcKx", "data": {"text": "“AI is definitely something that takes a lot of tinkering,” Kumar says. “You can come to a problem thinking you’ll solve it with automation, but then you see the first results, and everything is harder than you imagined. You have to commit [to the process], because you won’t hit a home run after seeing the first pitch.”"}, "type": "paragraph"}, {"id": "XLPcIkkS-i", "data": {"text": "The Cost of AI Implementation", "level": 3}, "type": "header"}, {"id": "kSp0GldlOL", "data": {"text": "Beyond the technical and talent hurdles, the financial commitment required to implement AI can be substantial and often prohibitive. “Training Meta’s largest AI model, which consists of more than 65 billion parameters, uses 2,048 specialized Nvidia GPUs, taking about 21 days, or the equivalent of 1 million GPU hours, to do it effectively. If a company wanted to train a similar model for its own purposes, it would cost roughly more than $2.4 million,” says Salas. “Using those numbers as a reference, Bloomberg’s GPT model, specifically fine-tuned for financial operations, could cost between $1.2 million and $1.8 million.”"}, "type": "paragraph"}, {"id": "U0EfMPGvpl", "data": {"text": "This financial barrier limits the deployment of AI in finance primarily to large institutions, leaving smaller firms at a competitive disadvantage unless they can access more cost-effective AI solutions through third-party providers or partnerships. This is even before considering that many financial institutions operate on legacy IT infrastructures that were not designed to support the latest AI technologies."}, "type": "paragraph"}, {"id": "ROuWih1Gom", "data": {"text": "“I’d prioritize those technologies that are straightforward to implement, focused on cost control, and for which many vendors can provide a service,” advises Salas. Additionally, he recommends a dual approach: automating routine tasks now while still investigating new, untested technologies. The best strategy would vary depending on the financial firm’s sub-industry and its technological maturity compared to its peers."}, "type": "paragraph"}, {"id": "OfjHuRsRJ9", "data": {"text": "Is AI the Future of Finance?", "level": 2}, "type": "header"}, {"id": "ueK7KZ09cW", "data": {"text": "As artificial intelligence rapidly evolves, financial organizations must embrace continuous innovation and adaptability to stay ahead. Developing financial AI technologies requires a proactive approach, including investing in ongoing staff training, updating systems regularly, and experimenting with new AI applications."}, "type": "paragraph"}, {"id": "an55rpxN2N", "data": {"text": "Collaboration is also critical in the financial industry, especially when dealing with the complexities of AI. No single institution can address these challenges alone. By forming partnerships with banks, fintech companies, regulators, and technology providers, companies can tackle common issues like data privacy, AI model accuracy, and compliance with regulations. Such collaborative efforts can lead to shared solutions and help set industrywide standards and best practices for AI usage, ensuring a unified and ethical approach to integrating technology into financial services organizations."}, "type": "paragraph"}, {"id": "7b16YwW7ue", "data": {"text": "But in the shorter term, our three Toptal experts agree on one main takeaway for financial companies and finance departments leveraging their next AI project: Be patient and keep expectations realistic. Salas says that while AI offers immense potential, it is not a panacea, and its implementation requires careful consideration of ethical, regulatory, cultural, and technical challenges. Firms should focus first on building robust infrastructure, investing in data quality and governance, and fostering a culture of innovation and continuous learning to truly unlock the benefits of AI in finance. If an organization does all these things correctly, the rewards should flourish in tim"}, "type": "paragraph"}], "version": "2.30.6"}	an-ai-revolution-in-finance-opportunities-and-challenges	t
13	Exercitation est nob	Ethan Estes	1	2024-10-05 19:32:32.807	2024-10-05 19:33:35.854	2024-10-05 19:32:42.96	1	1	Magni quaerat in ull	{"dd": "d"}	Amet assumenda fugi	t
9	Using AI-powered Enterprise Interfaces to Optimize Operational Efficiency	\N	10	2024-10-03 16:05:28.389	2024-10-03 22:01:21.103	2024-10-03 19:27:54.957	\N	1	Generative interfaces can unlock insights at unprecedented speeds. A Toptal strategy consulting expert with experience at Deloitte and AWS explains how companies of all sizes can use Gen AI for sales, development, and customer support.	{"time": 1727971107212, "blocks": [{"id": "cha-Em2rh-", "data": {"text": "As businesses grow and evolve, they collect reams of data, and over time, that information can become siloed and difficult to use. Recent research suggests that knowledge workers spend&nbsp;<a href=\\"https://www.apqc.org/blog/km-makes-knowledge-workers-more-productive-and-less-stressed-out#:~:text=According%20to%20APQC%E2%80%99s%20research%2C%20the%20average%20knowledge%20worker%20spends%208.2%20hours%20each%20week%20looking%20for%2C%20recreating%2C%20and%20duplicating%20information%20and%20expertise.%20While%20these%20activities%20are%20important%2C%20they%20clearly%20need%20to%20be%20streamlined%20so%20they%20aren%E2%80%99t%20taking%20up%2020%20percent%20of%20the%20workweek\\" target=\\"_blank\\">more than eight hours</a>&nbsp;per week simply finding and interpreting the information they need to do their jobs. But generative artificial intelligence (Gen AI) can help. Over the last 10 years, I have consulted on digital transformation and AI adoption at large enterprises and have seen firsthand the pivotal role that Gen AI can play in streamlining knowledge management and boosting productivity."}, "type": "paragraph"}, {"id": "x1wD_420tj", "data": {"text": "One of the most promising ways to deploy AI for operational efficiency is via generative business interfaces. These tools allow users to&nbsp;<a href=\\"https://www.ibm.com/blog/ibm-watsonx-assistant-driving-generative-ai-innovation-with-conversational-search/\\" target=\\"_blank\\">search company databases</a>&nbsp;in a conversational style that doesn’t depend on exact keywords (also known as semantic or conversational search). Such interfaces are powered by large language models (LLMs) that use natural language processing (NLP) to understand the user’s intent better than traditional search functions. These powerful tools construct a personalized answer to each query by combining relevant information scattered across different data sources. Some interfaces can also generate new content&nbsp;<a href=\\"https://techcommunity.microsoft.com/t5/fasttrack-for-azure/grounding-llms/ba-p/3843857\\" target=\\"_blank\\">grounded</a>&nbsp;in the company’s data sources. McKinsey &amp; Company estimates that in the banking industry alone, Gen AI could increase efficiency by&nbsp;<a href=\\"https://www.mckinsey.com/industries/financial-services/our-insights/global-banking-annual-review#:~:text=In%20particular%2C%20the%20emergence%20of%20generative%20AI%20could%20be%20a%20game%20changer%2C%20lifting%20productivity%20by%203%20to%205%20percent%20and%20enabling%20a%20reduction%20in%20operating%20expenditures%20of%20between%20%24200%20billion%20and%20%24300%20billion%2C%20according%20to%20our%20estimates.\\" target=\\"_blank\\">as much as 5%</a>, resulting in cost savings of between $200 billion and $300 billion across the sector."}, "type": "paragraph"}, {"id": "eXqtjgXNZP", "data": {"text": "Many large enterprise resource planning (ERP) providers, including&nbsp;<a href=\\"https://www.microsoft.com/en-us/microsoft-copilot/meet-copilot\\" target=\\"_blank\\">Microsoft Copilot</a>,&nbsp;<a href=\\"https://www.salesforce.com/artificial-intelligence/\\" target=\\"_blank\\">Salesforce Einstein</a>, and&nbsp;<a href=\\"https://www.hubspot.com/products/artificial-intelligence?__hstc=6380845.48197a2f2c0a018849a2b1a4b1de0c6d.1727970964694.1727970964694.1727970964694.1&amp;__hssc=6380845.2.1727970964695&amp;__hsfp=3208677886\\" target=\\"_blank\\">HubSpotAI</a>, offer generative interfaces that work with their own platforms and integrate with others. Numerous third-party options are also available, including&nbsp;<a href=\\"https://get.coveo.com/lp/generic/coveo-demo/\\" target=\\"_blank\\">Coveo</a>, Bloomreach, Algolia. (New entrants to this space include&nbsp;<a href=\\"https://www.glean.com/\\" target=\\"_blank\\">Glean</a>, an enterprise AI startup that received more than $200 million in March 2024 at a $2.2 billion valuation, and&nbsp;<a href=\\"https://www.hebbia.ai/\\" target=\\"_blank\\">Hebbia</a>, which raised $130 million in July 2024 at a $700 million valuation.)"}, "type": "paragraph"}, {"id": "btgETnD4Jy", "data": {"file": {"raw": {}, "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727971062/images_b877fd754f.avif"}, "caption": "", "stretched": false, "withBorder": false, "withBackground": false}, "type": "image"}, {"id": "G4iMqi75iO", "data": {"text": "SaaS vs. API: Which Generative Interface to Choose", "level": 2}, "type": "header"}, {"id": "udQ-o-oC5T", "data": {"text": "Third-party options are either available as SaaS offerings with dedicated search portals or as application programming interfaces (APIs) that a company’s engineers can integrate with their existing systems. SaaS platforms are best suited for companies that want to adopt generative interfaces with minimal implementation time and are satisfied with basic, out-of-the-box features to manage routine tasks."}, "type": "paragraph"}, {"id": "nyCvJ-T0Vy", "data": {"text": "However, an API is the better choice for companies that need highly customized solutions or want their tool trained on a specialized LLM for improved accuracy. API-based offerings are most commonly used for product search and discovery use cases. They allow companies to provide generative interfaces within their existing apps and offer much more sophisticated model training and customization capabilities. But implementation requires skilled developer and data science resources."}, "type": "paragraph"}, {"id": "jbJ8ILkkg4", "data": {"text": "In terms of pricing, options are available at all price points. Some vendors offer a freemium pricing model which includes free usage up to a certain limit of search queries. Beyond the free tier, most vendors provide subscription-based or&nbsp;<a href=\\"https://www.algolia.com/pricing/\\" target=\\"_blank\\">pay-as-you-go</a>&nbsp;pricing ranging from a few hundred dollars per month for small businesses to fully customized enterprise-scale solutions that could cost hundreds of thousands of dollars per year or more."}, "type": "paragraph"}, {"id": "9KAHHpRWWR", "data": {"text": "Depending on the provider they choose, companies may be able to select which LLM database they wish to use—such as Anthropic’s Claude, OpenAI’s GPT-4, Facebook’s LLaMA, or Google’s Gemini. Each one offers different benefits; for example, GPT-4 is the most powerful and versatile, while Gemini offers the best integration within the Google ecosystem. Your use case should drive that decision."}, "type": "paragraph"}, {"id": "GpcsOF412-", "data": {"text": "One of the key technologies that these models utilize is called&nbsp;<a href=\\"https://research.ibm.com/blog/retrieval-augmented-generation-RAG\\" target=\\"_blank\\">retrieval-augmented generation</a>&nbsp;(RAG), which delivers real-time insights based on the most recent information available. Moreover, it ensures that the information can always be traced back to its original source for easy verification."}, "type": "paragraph"}, {"id": "ouKvTkVGm4", "data": {"text": "Some providers may also employ bespoke LLMs based on highly specific training data, customized vector databases that use machine learning to categorize information, and the deep learning capabilities of&nbsp;<a href=\\"https://www.algolia.com/blog/ai/what-is-neural-search-and-how-does-it-work/\\" target=\\"_blank\\">neural search</a>&nbsp;to make their search results and summaries more accurate for their specific audiences."}, "type": "paragraph"}, {"id": "bKk9oMlF5m", "data": {"text": "How Does AI Improve Operational Efficiency?", "level": 2}, "type": "header"}, {"id": "CIovYKyhvb", "data": {"text": "In general, AI can automate routine or administrative tasks, increasing productivity. AI-enabled search interfaces allow workers to find relevant information that is siloed in disparate databases or difficult or time-consuming to interpret. Generative interfaces can even customize and personalize the answer to a query depending on who is asking and what level of data access they have. While this may not directly reduce operational costs, it allows employees to focus more on the strategic activities that drive results."}, "type": "paragraph"}, {"id": "y3EUVepR_o", "data": {"file": {"raw": {}, "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727971093/images_2d6b89c321.avif"}, "caption": "", "stretched": false, "withBorder": false, "withBackground": false}, "type": "image"}, {"id": "XcWctdKns4", "data": {"text": "Generative interfaces can help any department that manages a large amount of information, such as human resources, inventory management, and supply chain management, but in my experience, developers, sales executives, and customer support agents stand to benefit the most immediately. Here’s how:"}, "type": "paragraph"}, {"id": "2f6Ak7uNz2", "data": {"text": "Eliminating Knowledge Silos for Developers", "level": 3}, "type": "header"}, {"id": "qNEwsg1dN1", "data": {"text": "Software teams are the backbone of growth for many enterprises. Maximizing the amount of time developers can spend working on code&nbsp;<a href=\\"https://www.mckinsey.com/industries/technology-media-and-telecommunications/our-insights/yes-you-can-measure-software-developer-productivity\\" target=\\"_blank\\">is crucial for success</a>. Yet a wide range of developer-focused surveys show that developers spend significant amounts of time searching for information. According to a survey by Stack Overflow, developers run into knowledge silos&nbsp;<a href=\\"https://survey.stackoverflow.co/2022/#section-productivity-impacts-daily-time-spent-answering-questions\\" target=\\"_blank\\">at least once a week</a>&nbsp;and a majority spend more than 30 minutes each day searching for answers or solutions to problems."}, "type": "paragraph"}, {"id": "3WPP8EUh4F", "data": {"text": "Generative interfaces for engineering help&nbsp;<a href=\\"https://www.mckinsey.com/capabilities/mckinsey-digital/our-insights/unleashing-developer-productivity-with-generative-ai\\" target=\\"_blank\\">improve operational efficiency</a>&nbsp;by connecting development, deployment, ticketing, and project management resources to enable employees to semantically search and easily find answers from codebase documentation, code change histories and comments, ticket histories, best practices, and more. This, in turn, helps developers write, review, and deploy new code or fix existing code faster than before. Generative interfaces also significantly reduce onboarding time by making it easier for new employees to get quick answers to their questions."}, "type": "paragraph"}, {"id": "nOjJJj-Bot", "data": {"text": "Most of the established developer-focused tools and platforms, including Jira, Confluence, GitLab, and Visual Studio have some form of generative interface options, and third-party SaaS solutions are available as well."}, "type": "paragraph"}, {"id": "3a73z_oZIs", "data": {"text": "Personalizing Sales Outreach", "level": 3}, "type": "header"}, {"id": "73cjUAA3YJ", "data": {"text": "According to McKinsey research, about&nbsp;<a href=\\"https://www.mckinsey.com/capabilities/growth-marketing-and-sales/our-insights/the-value-of-getting-personalization-right-or-wrong-is-multiplying#:~:text=%E2%80%A6And%20consumers%20reward%20those%20that%20get%20it%20right\\" target=\\"_blank\\">three-quarters of customers</a>&nbsp;say they’re more likely to purchase, repurchase, and recommend products when the buying experience is personalized. This means that sellers must stay abreast of their buyers’ latest purchase preferences, buying stage, and other relevant information—and then use that knowledge to generate an enormous amount of unique content."}, "type": "paragraph"}, {"id": "OwYzPBsWdj", "data": {"text": "Generative interfaces can quickly pull actionable insights from customer relationship management (CRM) platforms, customer emails, billing or configure/price/quote (CPQ) software, and other sales tools to provide sales teams with the most comprehensive and up-to-date information on customers. These tools can then use that information to deliver highly targeted and personalized outreach emails, sales pitches, value propositions, and other sales collateral with significantly less effort."}, "type": "paragraph"}, {"id": "YSk1457v1C", "data": {"text": "This capability can help teams respond more quickly to customers, and in a more personalized way. It empowers teams to:"}, "type": "paragraph"}, {"id": "9mjce-EHBa", "data": {"items": ["Develop more comprehensive account dossiers.", "Consolidate real-time data, documents, and contact information across multiple applications.", "Generate valuable insights about products and sales territories."], "style": "unordered"}, "type": "list"}, {"id": "LqBAYUoZCx", "data": {"text": "Finally, it can accelerate the time to revenue for new sales executives, who otherwise might&nbsp;<a href=\\"https://brooksgroup.com/sales-training-blog/onboarding-for-sales/#:~:text=It%20takes%20months,or%20performance%20target.%E2%80%AF\\" target=\\"_blank\\">need up to a year</a>&nbsp;to learn the ropes and carry their full weight in the organization."}, "type": "paragraph"}, {"id": "ihXCZRoU3m", "data": {"text": "Most of the established sales-focused tools and platforms in the market have released their own generative interfaces, including Salesforce’s EinsteinGPT, Microsoft Sales Copilot, and HubSpot AI. However, there are some newer third-party startups that have recently entered the space, including 1up, Regie.ai, and Chatspot."}, "type": "paragraph"}, {"id": "F0X1hRVMtD", "data": {"text": "Speeding Up Customer Support", "level": 3}, "type": "header"}, {"id": "kY16wgrlM_", "data": {"text": "Customer service teams are&nbsp;<a href=\\"https://www.mckinsey.com/capabilities/operations/our-insights/where-is-customer-care-in-2024\\" target=\\"_blank\\">having to do more with less</a>, as customer call volume continues to increase, and attrition and talent shortages in the field remain high. Meanwhile, these departments are increasingly responsible for revenue growth and other metrics."}, "type": "paragraph"}, {"id": "AdyhKq0fqQ", "data": {"text": "Generative interfaces can support these hardworking teams&nbsp;<a href=\\"https://www.salesforce.com/news/stories/sales-service-research-generative-ai/#:~:text=84%25%20of%20salespeople%20using%20generative%20AI%20say%20it%20helps%20increase%20sales%20at%20their%20organization%20by%20enhancing%20and%20speeding%20up%20customer%20interactions.%20Service%20professionals%20currently%20using%20generative%20AI%20agree%3A%2090%25%20report%20it%20helps%20them%20serve%20their%20customers%20faster.\\" target=\\"_blank\\">in a variety of ways</a>. The interfaces connect across the ticketing and communication tools used by support personnel—such as Zendesk, ServiceNow, FreshService, Google Calendar, Slack—and provide data-driven insights to customer care agents about ticket history and resolution, customer value and interaction history, and product how-to’s. This can help agents improve resolution rates, quickly discover upselling/cross-selling opportunities, and even onboard more efficiently when first hired."}, "type": "paragraph"}, {"id": "jcTYzlLnv8", "data": {"text": "Most established sales tools and platforms, such as Freshdesk, Zendesk, Sprinklr, and Zoho have already incorporated generative interfaces into their products; third-party options such as Yuma AI, Tidio, and Intercom are also available."}, "type": "paragraph"}, {"id": "70TsgDTim8", "data": {"text": "Customers&nbsp;<a href=\\"https://emt.gartnerweb.com/ngw/globalassets/en/sales-service/documents/trends/customer_service_support_2024_top_priorities.pdf?_gl=1*1ccvo7g*_gcl_au*MjA4NzkxNzMwNC4xNzE5NDc1Nzc3LjE1ODY1ODQ2NjMuMTcyMjI3OTYzMy4xNzIyMjc5NjMz*_ga*MTI3OTI2MzE3Mi4xNzE5NDc1Nzc3*_ga_R1W5CE5FEV*MTcyMjI3OTU4Ni4yLjEuMTcyMjI3OTYzOS43LjAuMA..\\" target=\\"_blank\\">increasingly prefer self-service</a>&nbsp;over interacting with representatives, and generative AI interfaces play a crucial role there too. AI-powered chatbots and enhanced website search functions rooted in natural language processing help reserve human interventions for the most complex or high-value customer inquiries. Investing in a better&nbsp;<a href=\\"https://www.toptal.com/designers/ux/cx-design\\" target=\\"_blank\\">customer experience</a>&nbsp;is also good for the bottom line—companies that do so&nbsp;<a href=\\"https://business.adobe.com/content/dam/dx/us/en/resources/reports/the-business-impact-of-investing-in-experience-forrester-thought-leadership-paper-2021/the-business-impact-of-investing-in-experience-forrester-thought-leadership-paper-2021.pdf\\" target=\\"_blank\\">improve customer retention by 19 percentage points</a>&nbsp;and improve customer lifetime value by 25 percentage points, according to recent research from Forrester and Adobe."}, "type": "paragraph"}, {"id": "qM_kRkTnJ5", "data": {"text": "6 Steps to Successful Generative Interface Adoption", "level": 2}, "type": "header"}, {"id": "d79eBU3Hkb", "data": {"text": "As we’ve noted, Gen AI interfaces are best suited for routine tasks that require finding and analyzing a large amount of information—as well as creating content derived from that information. Consequently, I advise clients to focus adoption on business processes that lean heavily on these tasks, such as development, sales outreach, and customer service, and follow these steps:"}, "type": "paragraph"}, {"id": "wTn7g6cYAI", "data": {"text": "1. Engage Users to Identify Business Needs", "level": 3}, "type": "header"}, {"id": "vRFb_ZZTPU", "data": {"text": "Your best experts on how to deploy AI for operational efficiency are the people who will be using it every day. So your first step must be to interview potential users to understand their pain points and identify whether there are any areas where Gen AI can help."}, "type": "paragraph"}, {"id": "xLkqUw-AAo", "data": {"text": "With ongoing input from the potential users, develop a descriptive list of use cases, such as “a tool that collects relevant real-time data and summarizes insights from analyst reports,” or “a tool that writes&nbsp;<a href=\\"https://www.toptal.com/executive-guidance/growth-and-digital-marketing/ai-content-personalization\\" target=\\"_blank\\">personalized outreach emails</a>&nbsp;to cold leads in completely new accounts.”"}, "type": "paragraph"}, {"id": "l-LMgP3RHx", "data": {"text": "Score each use case on the basis of technical feasibility, alignment with strategic initiatives, priority given by the target employees, and any other factors that might be important. You can then identify the top 5 to 10 use cases to investigate further."}, "type": "paragraph"}, {"id": "jRqllMy1WB", "data": {"text": "2. Target the Right KPIs", "level": 3}, "type": "header"}, {"id": "SgzxU5sJ5q", "data": {"text": "KPIs vary based on function and industry, but generally fall into three broad categories: operational efficiency, employee satisfaction, and customer satisfaction. When adopting generative interfaces, it’s helpful to focus on KPIs that you already track, so you have a point of comparison."}, "type": "paragraph"}, {"id": "liQrIdOmAQ", "data": {"text": "Under the operational efficiency banner, you’ll want to prioritize employee productivity and its associated KPIs, such as the number of features your company releases per month, the number of outreach emails sent per month, and so on."}, "type": "paragraph"}, {"id": "hqmuOHdRnI", "data": {"text": "It’s unlikely that you’ll see an immediate impact from generative interfaces in very high-level metrics like revenue growth and cost savings, but you may well see significant improvements at the team level, especially around efficiency and user satisfaction. This can have downstream effects on metrics as diverse as&nbsp;<a href=\\"https://www.uxmatters.com/mt/archives/2022/10/unleashing-the-power-of-the-employee-with-a-great-user-experience.php#:~:text=Given%20the%20immovable%20force%20of%20workers%20who%20are%20happy%20to%20be%20working%20off%20site%2C%20IT%2C%20Human%20Resources%20(HR)%2C%20and%20collaborative%20teams%20must%20focus%20on%20delivering%20a%20user%20experience%20that%20helps%20further%20improve%20productivity%2C%20transparently%20secures%20endpoint%20devices%2C%20and%20improves%20employee%20retention.\\" target=\\"_blank\\">employee retention</a>&nbsp;and&nbsp;<a href=\\"https://pages.nosto.com/rs/339-ZHG-780/images/The%20Future%20of%20Ecommerce%20Search.pdf\\" target=\\"_blank\\">customer experience</a>."}, "type": "paragraph"}, {"id": "Q0G9S61dvc", "data": {"text": "Finally, you’ll want to determine what a meaningful ROI will look like. Again, this depends considerably on the team, company, and industry. If you’re measuring customer satisfaction, a large brand might only need a boost of 2%, while a new startup would need much larger numbers for the outlay to make sense."}, "type": "paragraph"}, {"id": "dMwUvIVTO5", "data": {"text": "3. Identify Solutions", "level": 3}, "type": "header"}, {"id": "uFnAa3l_iM", "data": {"text": "Once you’ve established the process you wish to improve, review the market to see what solutions are available and how well they can solve your problems. Consider the following:"}, "type": "paragraph"}, {"id": "rL9NrAGtc0", "data": {"items": ["How well the solution aligns with your use case and industry", "Customer satisfaction and analyst ratings", "Pricing", "The maturity and financial stability of the vendor", "Whether you want an API (which requires having or hiring software engineers to train and integrate) or a plug-and-play SaaS application"], "style": "unordered"}, "type": "list"}, {"id": "HR2kflBc00", "data": {"text": "4. Pilot the Solution", "level": 3}, "type": "header"}, {"id": "BdbWHSBDGF", "data": {"text": "Once you’ve identified a possible solution, you’re ready for a trial—typically lasting anywhere from two weeks to six months. It’s helpful to limit the trial to a select group of enthusiastic employee volunteers who are willing to help identify potential risks, troubleshoot problems, and work with the vendor to solve them. If the trial is successful, these users can then serve as the product’s evangelists to the broader team."}, "type": "paragraph"}, {"id": "kxu6kDWCf8", "data": {"text": "If you opt for an API, make sure your engineers have the time and support to invest in the initial technical work like model tuning, prompt design, embedding, and grounding that will be required to get your pilot up and running. Solicit continuous feedback from the team, and be sure to give the pilot enough time to generate meaningful results for the KPIs you’ve identified."}, "type": "paragraph"}, {"id": "8vfl7_0V1y", "data": {"text": "If the solution works well and the results are significant, it’s time to present a&nbsp;<a href=\\"https://www.toptal.com/product-managers/product-leader/product-project-business-case\\" target=\\"_blank\\">business case</a>&nbsp;to leadership for full-scale implementation."}, "type": "paragraph"}, {"id": "dHbKlR2tne", "data": {"text": "5. Implement Your Gen AI Interface", "level": 3}, "type": "header"}, {"id": "jTnsMWlcDw", "data": {"text": "Once the solution has been approved, the team spearheading the project has to create an&nbsp;<a href=\\"https://www.toptal.com/executive-guidance/data-analytics-ai/generative-ai-integration\\" target=\\"_blank\\">implementation roadmap</a>&nbsp;that covers every step from price negotiation to creating a governance and program management structure to encouraging adoption among users. Other considerations to keep in mind:"}, "type": "paragraph"}, {"id": "9eQw23tQyb", "data": {"items": ["Quality control:&nbsp;Ensure data is correctly labeled and tagged for training datasets.", "Resource allocation:&nbsp;For APIs, plan to hire or assign data scientists and developers to optimize the LLM response, integrate the generative interface with the right systems, build widgets and apps on top of the generative interface, and improve the UX of the interface.", "Risk management:&nbsp;Implement access control mechanisms so that the employee or customer asking questions of the interface cannot retrieve information they aren’t authorized to have.", "Long-term success:&nbsp;Put mechanisms in place for the solution to retrain and update itself so that responses stay up to date and accurate."], "style": "unordered"}, "type": "list"}, {"id": "VTFuQMvIWH", "data": {"text": "How much attention must be focused on each of these activities depends on the solution selected, as well as the degree of customization/response optimization required by the use case."}, "type": "paragraph"}, {"id": "5hafic3xvY", "data": {"text": "6. Scale the Solution", "level": 3}, "type": "header"}, {"id": "xA-mKSMfhp", "data": {"text": "Once you’re ready to roll out the solution to the entire department or company, assemble a team of generative AI developers and functional experts, a project manager/business analyst, and leaders responsible for the KPIs that the AI solution will impact. Ensure that your project manager or analyst has the expertise to translate business requirements into technical requirements (and vice versa) to facilitate communication across the team."}, "type": "paragraph"}, {"id": "GxQiGCDywJ", "data": {"text": "The role of this team is to:"}, "type": "paragraph"}, {"id": "bA_dmZmGFM", "data": {"items": ["Ensure target stakeholders get the required training and hands-on support to help them meaningfully adopt the solution in their routine workflow.", "Establish and oversee robust reporting and monitoring mechanisms that measure the adoption and impact of the tool—both qualitative feedback from users and quantitative impact measured by tracking relevant KPIs.", "<a href=\\"https://www.toptal.com/finance/interim-cfos/change-management\\" target=\\"_blank\\">Champion the solution</a>&nbsp;for the rest of the enterprise, solving issues and seeking out new users who can benefit from the solution."], "style": "unordered"}, "type": "list"}, {"id": "EEz2IDGNOQ", "data": {"text": "Any Business Can Use AI for Operational Efficiency", "level": 2}, "type": "header"}, {"id": "mqNi5NCYyO", "data": {"text": "Generative artificial intelligence is expected to generate&nbsp;<a href=\\"https://www.mckinsey.com/industries/technology-media-and-telecommunications/our-insights/beyond-the-hype-capturing-the-potential-of-ai-and-gen-ai-in-tmt#:~:text=How%20big%20is%20the%20opportunity,by%2015%20to%2040%20percent.\\" target=\\"_blank\\">$2.6 trillion to $4.4 trillion of value</a>&nbsp;annually for the global economy by 2030. However,&nbsp;<a href=\\"https://www.mckinsey.com/industries/technology-media-and-telecommunications/our-insights/tech-services-and-generative-ai-plotting-the-necessary-reinvention#:~:text=The%20bulk%20of%20enterprises%20(50%20to%2060%20percent)%20are%20%E2%80%9Cobservers%E2%80%9D%20focused%20on%20AI%20readiness\\" target=\\"_blank\\">50% to 60% of companies</a>&nbsp;that have adopted AI in some way are still stuck in “observer” mode, running small pilots but failing to adopt the technology on a meaningful level or realize full productivity gains. I’d like to change that."}, "type": "paragraph"}, {"id": "hpb303Uy-J", "data": {"text": "In this article, I argued that generative interfaces provide a validated, relatively low-risk opportunity to build more efficient processes for managing information and producing customized content. While enterprise-size organizations have the most resources to invest in AI-powered tools,&nbsp;<a href=\\"https://www.americanexpress.com/en-us/newsroom/articles/amex-for-business/american-express-launches-first-small-business-financial-con.html#:~:text=Across%20all%20small%20businesses%20surveyed%2041%25%20said%20that%20their%20business%20is%20currently%20prioritizing%20artificial%20intelligence%20to%20help%20make%20business%20decisions\\" target=\\"_blank\\">4 in 10 small businesses</a>&nbsp;are beginning to experiment with the technology too, according to a survey by American Express. Wherever your company falls on the size spectrum, the strategies I shared will help you realize the value of your AI tools and significantly improve your operation’s efficiency."}, "type": "paragraph"}], "version": "2.30.6"}	using-aipowered-enterprise-interfaces-to-optimize-operational-efficiency	t
\.


--
-- Data for Name: articles_categories_links; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.articles_categories_links (id, article_id, category_id, category_order, article_order) FROM stdin;
8	9	2	1	1
14	12	1	1	1
31	13	2	0	2
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.categories (id, title, description, created_at, updated_at, published_at, created_by_id, updated_by_id, slug, is_active) FROM stdin;
1	science	zxczxc	2024-10-02 23:18:33.262	2024-10-03 19:44:41.691	2024-10-02 23:18:37.576	1	1	zxzxc-zsdcz	t
2	new	zxczx	2024-10-03 01:33:32.558	2024-10-05 19:09:39.286	2024-10-03 01:33:35.837	1	1	new	t
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
18	imresizer-1719931435716.jpg	\N	\N	600	600	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727948357/thumbnail_imresizer_1719931435716_84d766a1db.jpg", "hash": "thumbnail_imresizer_1719931435716_84d766a1db", "mime": "image/jpeg", "name": "thumbnail_imresizer-1719931435716.jpg", "path": null, "size": 5.03, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_imresizer_1719931435716_84d766a1db", "resource_type": "image"}}}	imresizer_1719931435716_84d766a1db	.jpg	image/jpeg	254.34	https://res.cloudinary.com/dxthattjv/image/upload/v1727948357/imresizer_1719931435716_84d766a1db.jpg	\N	cloudinary	{"public_id": "imresizer_1719931435716_84d766a1db", "resource_type": "image"}	/1	2024-10-03 15:39:18.121	2024-10-03 15:39:18.121	\N	\N
19	430837380_1800184320478138_3594830731497028544_n.png	\N	\N	334	325	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727948395/thumbnail_430837380_1800184320478138_3594830731497028544_n_7c8c87f318.png", "hash": "thumbnail_430837380_1800184320478138_3594830731497028544_n_7c8c87f318", "mime": "image/png", "name": "thumbnail_430837380_1800184320478138_3594830731497028544_n.png", "path": null, "size": 45.64, "width": 160, "height": 156, "provider_metadata": {"public_id": "thumbnail_430837380_1800184320478138_3594830731497028544_n_7c8c87f318", "resource_type": "image"}}}	430837380_1800184320478138_3594830731497028544_n_7c8c87f318	.png	image/png	143.07	https://res.cloudinary.com/dxthattjv/image/upload/v1727948395/430837380_1800184320478138_3594830731497028544_n_7c8c87f318.png	\N	cloudinary	{"public_id": "430837380_1800184320478138_3594830731497028544_n_7c8c87f318", "resource_type": "image"}	/1	2024-10-03 15:39:55.791	2024-10-03 15:39:55.791	\N	\N
20	imresizer-1719931435716.jpg	\N	\N	600	600	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727948501/thumbnail_imresizer_1719931435716_483873b648.jpg", "hash": "thumbnail_imresizer_1719931435716_483873b648", "mime": "image/jpeg", "name": "thumbnail_imresizer-1719931435716.jpg", "path": null, "size": 5.03, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_imresizer_1719931435716_483873b648", "resource_type": "image"}}}	imresizer_1719931435716_483873b648	.jpg	image/jpeg	254.34	https://res.cloudinary.com/dxthattjv/image/upload/v1727948502/imresizer_1719931435716_483873b648.jpg	\N	cloudinary	{"public_id": "imresizer_1719931435716_483873b648", "resource_type": "image"}	/1	2024-10-03 15:41:43.081	2024-10-03 15:41:43.081	\N	\N
21	430837380_1800184320478138_3594830731497028544_n.png	\N	\N	334	325	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727948621/thumbnail_430837380_1800184320478138_3594830731497028544_n_5a3ad415c5.png", "hash": "thumbnail_430837380_1800184320478138_3594830731497028544_n_5a3ad415c5", "mime": "image/png", "name": "thumbnail_430837380_1800184320478138_3594830731497028544_n.png", "path": null, "size": 45.64, "width": 160, "height": 156, "provider_metadata": {"public_id": "thumbnail_430837380_1800184320478138_3594830731497028544_n_5a3ad415c5", "resource_type": "image"}}}	430837380_1800184320478138_3594830731497028544_n_5a3ad415c5	.png	image/png	143.07	https://res.cloudinary.com/dxthattjv/image/upload/v1727948621/430837380_1800184320478138_3594830731497028544_n_5a3ad415c5.png	\N	cloudinary	{"public_id": "430837380_1800184320478138_3594830731497028544_n_5a3ad415c5", "resource_type": "image"}	/1	2024-10-03 15:43:41.694	2024-10-03 15:43:41.694	\N	\N
22	430837380_1800184320478138_3594830731497028544_n.png	\N	\N	334	325	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727948655/thumbnail_430837380_1800184320478138_3594830731497028544_n_61a394f3a9.png", "hash": "thumbnail_430837380_1800184320478138_3594830731497028544_n_61a394f3a9", "mime": "image/png", "name": "thumbnail_430837380_1800184320478138_3594830731497028544_n.png", "path": null, "size": 45.64, "width": 160, "height": 156, "provider_metadata": {"public_id": "thumbnail_430837380_1800184320478138_3594830731497028544_n_61a394f3a9", "resource_type": "image"}}}	430837380_1800184320478138_3594830731497028544_n_61a394f3a9	.png	image/png	143.07	https://res.cloudinary.com/dxthattjv/image/upload/v1727948655/430837380_1800184320478138_3594830731497028544_n_61a394f3a9.png	\N	cloudinary	{"public_id": "430837380_1800184320478138_3594830731497028544_n_61a394f3a9", "resource_type": "image"}	/1	2024-10-03 15:44:15.684	2024-10-03 15:44:15.684	\N	\N
23	imresizer-1719931435716.jpg	\N	\N	600	600	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727948842/thumbnail_imresizer_1719931435716_a480ce50b2.jpg", "hash": "thumbnail_imresizer_1719931435716_a480ce50b2", "mime": "image/jpeg", "name": "thumbnail_imresizer-1719931435716.jpg", "path": null, "size": 5.03, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_imresizer_1719931435716_a480ce50b2", "resource_type": "image"}}}	imresizer_1719931435716_a480ce50b2	.jpg	image/jpeg	254.34	https://res.cloudinary.com/dxthattjv/image/upload/v1727948842/imresizer_1719931435716_a480ce50b2.jpg	\N	cloudinary	{"public_id": "imresizer_1719931435716_a480ce50b2", "resource_type": "image"}	/1	2024-10-03 15:47:22.848	2024-10-03 15:47:22.848	\N	\N
24	imresizer-1719931435716.jpg	\N	\N	600	600	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727949379/thumbnail_imresizer_1719931435716_7ffb39a7d6.jpg", "hash": "thumbnail_imresizer_1719931435716_7ffb39a7d6", "mime": "image/jpeg", "name": "thumbnail_imresizer-1719931435716.jpg", "path": null, "size": 5.03, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_imresizer_1719931435716_7ffb39a7d6", "resource_type": "image"}}}	imresizer_1719931435716_7ffb39a7d6	.jpg	image/jpeg	254.34	https://res.cloudinary.com/dxthattjv/image/upload/v1727949380/imresizer_1719931435716_7ffb39a7d6.jpg	\N	cloudinary	{"public_id": "imresizer_1719931435716_7ffb39a7d6", "resource_type": "image"}	/1	2024-10-03 15:56:20.727	2024-10-03 15:56:20.727	\N	\N
25	IMG_20171219_183318-2.jpg	\N	\N	1349	1729	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727949921/thumbnail_IMG_20171219_183318_2_a567a09499.jpg", "hash": "thumbnail_IMG_20171219_183318_2_a567a09499", "mime": "image/jpeg", "name": "thumbnail_IMG_20171219_183318-2.jpg", "path": null, "size": 3.37, "width": 121, "height": 156, "provider_metadata": {"public_id": "thumbnail_IMG_20171219_183318_2_a567a09499", "resource_type": "image"}}}	IMG_20171219_183318_2_a567a09499	.jpg	image/jpeg	531.94	https://res.cloudinary.com/dxthattjv/image/upload/v1727949922/IMG_20171219_183318_2_a567a09499.jpg	\N	cloudinary	{"public_id": "IMG_20171219_183318_2_a567a09499", "resource_type": "image"}	/1	2024-10-03 16:05:23.192	2024-10-03 16:05:23.192	\N	\N
10	430837380_1800184320478138_3594830731497028544_n.png	\N	\N	334	325	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727947541/thumbnail_430837380_1800184320478138_3594830731497028544_n_0d2f143aee.png", "hash": "thumbnail_430837380_1800184320478138_3594830731497028544_n_0d2f143aee", "mime": "image/png", "name": "thumbnail_430837380_1800184320478138_3594830731497028544_n.png", "path": null, "size": 45.64, "width": 160, "height": 156, "provider_metadata": {"public_id": "thumbnail_430837380_1800184320478138_3594830731497028544_n_0d2f143aee", "resource_type": "image"}}}	430837380_1800184320478138_3594830731497028544_n_0d2f143aee	.png	image/png	143.07	https://res.cloudinary.com/dxthattjv/image/upload/v1727947541/430837380_1800184320478138_3594830731497028544_n_0d2f143aee.png	\N	cloudinary	{"public_id": "430837380_1800184320478138_3594830731497028544_n_0d2f143aee", "resource_type": "image"}	/1	2024-10-03 15:25:41.937	2024-10-03 15:25:41.937	\N	\N
11	430837380_1800184320478138_3594830731497028544_n.png	\N	\N	334	325	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727947669/thumbnail_430837380_1800184320478138_3594830731497028544_n_656c42ee10.png", "hash": "thumbnail_430837380_1800184320478138_3594830731497028544_n_656c42ee10", "mime": "image/png", "name": "thumbnail_430837380_1800184320478138_3594830731497028544_n.png", "path": null, "size": 45.64, "width": 160, "height": 156, "provider_metadata": {"public_id": "thumbnail_430837380_1800184320478138_3594830731497028544_n_656c42ee10", "resource_type": "image"}}}	430837380_1800184320478138_3594830731497028544_n_656c42ee10	.png	image/png	143.07	https://res.cloudinary.com/dxthattjv/image/upload/v1727947669/430837380_1800184320478138_3594830731497028544_n_656c42ee10.png	\N	cloudinary	{"public_id": "430837380_1800184320478138_3594830731497028544_n_656c42ee10", "resource_type": "image"}	/1	2024-10-03 15:27:49.346	2024-10-03 15:27:49.346	\N	\N
12	imresizer-1719931435716.jpg	\N	\N	600	600	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727947867/thumbnail_imresizer_1719931435716_9765075432.jpg", "hash": "thumbnail_imresizer_1719931435716_9765075432", "mime": "image/jpeg", "name": "thumbnail_imresizer-1719931435716.jpg", "path": null, "size": 5.03, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_imresizer_1719931435716_9765075432", "resource_type": "image"}}}	imresizer_1719931435716_9765075432	.jpg	image/jpeg	254.34	https://res.cloudinary.com/dxthattjv/image/upload/v1727947867/imresizer_1719931435716_9765075432.jpg	\N	cloudinary	{"public_id": "imresizer_1719931435716_9765075432", "resource_type": "image"}	/1	2024-10-03 15:31:08.401	2024-10-03 15:31:08.401	\N	\N
13	imresizer-1719931435716.jpg	\N	\N	600	600	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727947948/thumbnail_imresizer_1719931435716_444e22787b.jpg", "hash": "thumbnail_imresizer_1719931435716_444e22787b", "mime": "image/jpeg", "name": "thumbnail_imresizer-1719931435716.jpg", "path": null, "size": 5.03, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_imresizer_1719931435716_444e22787b", "resource_type": "image"}}}	imresizer_1719931435716_444e22787b	.jpg	image/jpeg	254.34	https://res.cloudinary.com/dxthattjv/image/upload/v1727947948/imresizer_1719931435716_444e22787b.jpg	\N	cloudinary	{"public_id": "imresizer_1719931435716_444e22787b", "resource_type": "image"}	/1	2024-10-03 15:32:28.946	2024-10-03 15:32:28.946	\N	\N
14	430837380_1800184320478138_3594830731497028544_n.png	\N	\N	334	325	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727948017/thumbnail_430837380_1800184320478138_3594830731497028544_n_421bdb2103.png", "hash": "thumbnail_430837380_1800184320478138_3594830731497028544_n_421bdb2103", "mime": "image/png", "name": "thumbnail_430837380_1800184320478138_3594830731497028544_n.png", "path": null, "size": 45.64, "width": 160, "height": 156, "provider_metadata": {"public_id": "thumbnail_430837380_1800184320478138_3594830731497028544_n_421bdb2103", "resource_type": "image"}}}	430837380_1800184320478138_3594830731497028544_n_421bdb2103	.png	image/png	143.07	https://res.cloudinary.com/dxthattjv/image/upload/v1727948018/430837380_1800184320478138_3594830731497028544_n_421bdb2103.png	\N	cloudinary	{"public_id": "430837380_1800184320478138_3594830731497028544_n_421bdb2103", "resource_type": "image"}	/1	2024-10-03 15:33:38.102	2024-10-03 15:33:38.102	\N	\N
15	imresizer-1719931435716.jpg	\N	\N	600	600	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727948194/thumbnail_imresizer_1719931435716_a958c5b40b.jpg", "hash": "thumbnail_imresizer_1719931435716_a958c5b40b", "mime": "image/jpeg", "name": "thumbnail_imresizer-1719931435716.jpg", "path": null, "size": 5.03, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_imresizer_1719931435716_a958c5b40b", "resource_type": "image"}}}	imresizer_1719931435716_a958c5b40b	.jpg	image/jpeg	254.34	https://res.cloudinary.com/dxthattjv/image/upload/v1727948194/imresizer_1719931435716_a958c5b40b.jpg	\N	cloudinary	{"public_id": "imresizer_1719931435716_a958c5b40b", "resource_type": "image"}	/1	2024-10-03 15:36:35.157	2024-10-03 15:36:35.157	\N	\N
16	imresizer-1719931435716.jpg	\N	\N	600	600	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727948247/thumbnail_imresizer_1719931435716_63706065e1.jpg", "hash": "thumbnail_imresizer_1719931435716_63706065e1", "mime": "image/jpeg", "name": "thumbnail_imresizer-1719931435716.jpg", "path": null, "size": 5.03, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_imresizer_1719931435716_63706065e1", "resource_type": "image"}}}	imresizer_1719931435716_63706065e1	.jpg	image/jpeg	254.34	https://res.cloudinary.com/dxthattjv/image/upload/v1727948247/imresizer_1719931435716_63706065e1.jpg	\N	cloudinary	{"public_id": "imresizer_1719931435716_63706065e1", "resource_type": "image"}	/1	2024-10-03 15:37:27.8	2024-10-03 15:37:27.8	\N	\N
17	imresizer-1719931435716.jpg	\N	\N	600	600	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727948300/thumbnail_imresizer_1719931435716_0fdb6e450e.jpg", "hash": "thumbnail_imresizer_1719931435716_0fdb6e450e", "mime": "image/jpeg", "name": "thumbnail_imresizer-1719931435716.jpg", "path": null, "size": 5.03, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_imresizer_1719931435716_0fdb6e450e", "resource_type": "image"}}}	imresizer_1719931435716_0fdb6e450e	.jpg	image/jpeg	254.34	https://res.cloudinary.com/dxthattjv/image/upload/v1727948300/imresizer_1719931435716_0fdb6e450e.jpg	\N	cloudinary	{"public_id": "imresizer_1719931435716_0fdb6e450e", "resource_type": "image"}	/1	2024-10-03 15:38:20.877	2024-10-03 15:38:20.877	\N	\N
26	imresizer-1719931435716.jpg	\N	\N	600	600	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727950057/thumbnail_imresizer_1719931435716_fc0abcafcb.jpg", "hash": "thumbnail_imresizer_1719931435716_fc0abcafcb", "mime": "image/jpeg", "name": "thumbnail_imresizer-1719931435716.jpg", "path": null, "size": 5.03, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_imresizer_1719931435716_fc0abcafcb", "resource_type": "image"}}}	imresizer_1719931435716_fc0abcafcb	.jpg	image/jpeg	254.34	https://res.cloudinary.com/dxthattjv/image/upload/v1727950058/imresizer_1719931435716_fc0abcafcb.jpg	\N	cloudinary	{"public_id": "imresizer_1719931435716_fc0abcafcb", "resource_type": "image"}	/1	2024-10-03 16:07:38.585	2024-10-03 16:07:38.585	\N	\N
27	430837380_1800184320478138_3594830731497028544_n.png	\N	\N	334	325	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727950197/thumbnail_430837380_1800184320478138_3594830731497028544_n_f1b9a13aed.png", "hash": "thumbnail_430837380_1800184320478138_3594830731497028544_n_f1b9a13aed", "mime": "image/png", "name": "thumbnail_430837380_1800184320478138_3594830731497028544_n.png", "path": null, "size": 45.64, "width": 160, "height": 156, "provider_metadata": {"public_id": "thumbnail_430837380_1800184320478138_3594830731497028544_n_f1b9a13aed", "resource_type": "image"}}}	430837380_1800184320478138_3594830731497028544_n_f1b9a13aed	.png	image/png	143.07	https://res.cloudinary.com/dxthattjv/image/upload/v1727950197/430837380_1800184320478138_3594830731497028544_n_f1b9a13aed.png	\N	cloudinary	{"public_id": "430837380_1800184320478138_3594830731497028544_n_f1b9a13aed", "resource_type": "image"}	/1	2024-10-03 16:09:58.02	2024-10-03 16:09:58.02	\N	\N
28	430837380_1800184320478138_3594830731497028544_n.png	\N	\N	334	325	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727950242/thumbnail_430837380_1800184320478138_3594830731497028544_n_b5ee17195b.png", "hash": "thumbnail_430837380_1800184320478138_3594830731497028544_n_b5ee17195b", "mime": "image/png", "name": "thumbnail_430837380_1800184320478138_3594830731497028544_n.png", "path": null, "size": 45.64, "width": 160, "height": 156, "provider_metadata": {"public_id": "thumbnail_430837380_1800184320478138_3594830731497028544_n_b5ee17195b", "resource_type": "image"}}}	430837380_1800184320478138_3594830731497028544_n_b5ee17195b	.png	image/png	143.07	https://res.cloudinary.com/dxthattjv/image/upload/v1727950242/430837380_1800184320478138_3594830731497028544_n_b5ee17195b.png	\N	cloudinary	{"public_id": "430837380_1800184320478138_3594830731497028544_n_b5ee17195b", "resource_type": "image"}	/1	2024-10-03 16:10:42.598	2024-10-03 16:10:42.598	\N	\N
29	imresizer-1719931435716.jpg	\N	\N	600	600	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727960257/thumbnail_imresizer_1719931435716_f4363d52ee.jpg", "hash": "thumbnail_imresizer_1719931435716_f4363d52ee", "mime": "image/jpeg", "name": "thumbnail_imresizer-1719931435716.jpg", "path": null, "size": 5.03, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_imresizer_1719931435716_f4363d52ee", "resource_type": "image"}}}	imresizer_1719931435716_f4363d52ee	.jpg	image/jpeg	254.34	https://res.cloudinary.com/dxthattjv/image/upload/v1727960258/imresizer_1719931435716_f4363d52ee.jpg	\N	cloudinary	{"public_id": "imresizer_1719931435716_f4363d52ee", "resource_type": "image"}	/1	2024-10-03 18:57:38.268	2024-10-03 18:57:38.268	\N	\N
30	imresizer-1719931435716.jpg	\N	\N	600	600	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727960267/thumbnail_imresizer_1719931435716_75d9d442bb.jpg", "hash": "thumbnail_imresizer_1719931435716_75d9d442bb", "mime": "image/jpeg", "name": "thumbnail_imresizer-1719931435716.jpg", "path": null, "size": 5.03, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_imresizer_1719931435716_75d9d442bb", "resource_type": "image"}}}	imresizer_1719931435716_75d9d442bb	.jpg	image/jpeg	254.34	https://res.cloudinary.com/dxthattjv/image/upload/v1727960267/imresizer_1719931435716_75d9d442bb.jpg	\N	cloudinary	{"public_id": "imresizer_1719931435716_75d9d442bb", "resource_type": "image"}	/1	2024-10-03 18:57:47.745	2024-10-03 18:57:47.745	\N	\N
31	430837380_1800184320478138_3594830731497028544_n.png	\N	\N	334	325	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727960431/thumbnail_430837380_1800184320478138_3594830731497028544_n_8007e75cc8.png", "hash": "thumbnail_430837380_1800184320478138_3594830731497028544_n_8007e75cc8", "mime": "image/png", "name": "thumbnail_430837380_1800184320478138_3594830731497028544_n.png", "path": null, "size": 45.64, "width": 160, "height": 156, "provider_metadata": {"public_id": "thumbnail_430837380_1800184320478138_3594830731497028544_n_8007e75cc8", "resource_type": "image"}}}	430837380_1800184320478138_3594830731497028544_n_8007e75cc8	.png	image/png	143.07	https://res.cloudinary.com/dxthattjv/image/upload/v1727960431/430837380_1800184320478138_3594830731497028544_n_8007e75cc8.png	\N	cloudinary	{"public_id": "430837380_1800184320478138_3594830731497028544_n_8007e75cc8", "resource_type": "image"}	/1	2024-10-03 19:00:31.364	2024-10-03 19:00:31.364	\N	\N
32	430837380_1800184320478138_3594830731497028544_n.png	\N	\N	334	325	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727960481/thumbnail_430837380_1800184320478138_3594830731497028544_n_8958141d3e.png", "hash": "thumbnail_430837380_1800184320478138_3594830731497028544_n_8958141d3e", "mime": "image/png", "name": "thumbnail_430837380_1800184320478138_3594830731497028544_n.png", "path": null, "size": 45.64, "width": 160, "height": 156, "provider_metadata": {"public_id": "thumbnail_430837380_1800184320478138_3594830731497028544_n_8958141d3e", "resource_type": "image"}}}	430837380_1800184320478138_3594830731497028544_n_8958141d3e	.png	image/png	143.07	https://res.cloudinary.com/dxthattjv/image/upload/v1727960481/430837380_1800184320478138_3594830731497028544_n_8958141d3e.png	\N	cloudinary	{"public_id": "430837380_1800184320478138_3594830731497028544_n_8958141d3e", "resource_type": "image"}	/1	2024-10-03 19:01:20.995	2024-10-03 19:01:20.995	\N	\N
33	download.png	\N	\N	540	540	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727960553/thumbnail_download_1ea254175e.png", "hash": "thumbnail_download_1ea254175e", "mime": "image/png", "name": "thumbnail_download.png", "path": null, "size": 16.77, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_download_1ea254175e", "resource_type": "image"}}}	download_1ea254175e	.png	image/png	151.60	https://res.cloudinary.com/dxthattjv/image/upload/v1727960554/download_1ea254175e.png	\N	cloudinary	{"public_id": "download_1ea254175e", "resource_type": "image"}	/1	2024-10-03 19:02:34.233	2024-10-03 19:02:34.233	\N	\N
34	imresizer-1719931435716.jpg	\N	\N	600	600	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727960725/thumbnail_imresizer_1719931435716_4ff8056e70.jpg", "hash": "thumbnail_imresizer_1719931435716_4ff8056e70", "mime": "image/jpeg", "name": "thumbnail_imresizer-1719931435716.jpg", "path": null, "size": 5.03, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_imresizer_1719931435716_4ff8056e70", "resource_type": "image"}}}	imresizer_1719931435716_4ff8056e70	.jpg	image/jpeg	254.34	https://res.cloudinary.com/dxthattjv/image/upload/v1727960725/imresizer_1719931435716_4ff8056e70.jpg	\N	cloudinary	{"public_id": "imresizer_1719931435716_4ff8056e70", "resource_type": "image"}	/1	2024-10-03 19:05:25.865	2024-10-03 19:05:25.865	\N	\N
35	430837380_1800184320478138_3594830731497028544_n.png	\N	\N	334	325	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727960749/thumbnail_430837380_1800184320478138_3594830731497028544_n_1d130a1f1e.png", "hash": "thumbnail_430837380_1800184320478138_3594830731497028544_n_1d130a1f1e", "mime": "image/png", "name": "thumbnail_430837380_1800184320478138_3594830731497028544_n.png", "path": null, "size": 45.64, "width": 160, "height": 156, "provider_metadata": {"public_id": "thumbnail_430837380_1800184320478138_3594830731497028544_n_1d130a1f1e", "resource_type": "image"}}}	430837380_1800184320478138_3594830731497028544_n_1d130a1f1e	.png	image/png	143.07	https://res.cloudinary.com/dxthattjv/image/upload/v1727960749/430837380_1800184320478138_3594830731497028544_n_1d130a1f1e.png	\N	cloudinary	{"public_id": "430837380_1800184320478138_3594830731497028544_n_1d130a1f1e", "resource_type": "image"}	/1	2024-10-03 19:05:49.855	2024-10-03 19:05:49.855	\N	\N
36	16640.jpg	\N	\N	2000	2000	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727963569/thumbnail_16640_4df78148ed.jpg", "hash": "thumbnail_16640_4df78148ed", "mime": "image/jpeg", "name": "thumbnail_16640.jpg", "path": null, "size": 3.09, "width": 156, "height": 156, "provider_metadata": {"public_id": "thumbnail_16640_4df78148ed", "resource_type": "image"}}}	16640_4df78148ed	.jpg	image/jpeg	418.83	https://res.cloudinary.com/dxthattjv/image/upload/v1727963571/16640_4df78148ed.jpg	\N	cloudinary	{"public_id": "16640_4df78148ed", "resource_type": "image"}	/1	2024-10-03 19:52:51.433	2024-10-03 19:52:51.433	\N	\N
37	images.avif	\N	\N	\N	\N	\N	images_b877fd754f	.avif	image/avif	87.59	https://res.cloudinary.com/dxthattjv/image/upload/v1727971062/images_b877fd754f.avif	\N	cloudinary	{"public_id": "images_b877fd754f", "resource_type": "image"}	/1	2024-10-03 21:57:43.064	2024-10-03 21:57:43.064	\N	\N
38	images.avif	\N	\N	\N	\N	\N	images_2d6b89c321	.avif	image/avif	51.64	https://res.cloudinary.com/dxthattjv/image/upload/v1727971093/images_2d6b89c321.avif	\N	cloudinary	{"public_id": "images_2d6b89c321", "resource_type": "image"}	/1	2024-10-03 21:58:13.119	2024-10-03 21:58:13.119	\N	\N
39	images.jpeg	\N	\N	328	154	{"thumbnail": {"ext": ".jpeg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727971277/thumbnail_images_8d7a086edc.jpg", "hash": "thumbnail_images_8d7a086edc", "mime": "image/jpeg", "name": "thumbnail_images.jpeg", "path": null, "size": 8.15, "width": 245, "height": 115, "provider_metadata": {"public_id": "thumbnail_images_8d7a086edc", "resource_type": "image"}}}	images_8d7a086edc	.jpeg	image/jpeg	10.71	https://res.cloudinary.com/dxthattjv/image/upload/v1727971277/images_8d7a086edc.jpg	\N	cloudinary	{"public_id": "images_8d7a086edc", "resource_type": "image"}	/1	2024-10-03 22:01:18.581	2024-10-03 22:01:18.581	\N	\N
40	AI-Artificial-Intelligence-What-it-is-and-why-it-matters-qb1o8gpaeu2d4z5h27m45d99w1tmlkjwinh4wq1izi.jpg	\N	\N	500	291	{"thumbnail": {"ext": ".jpg", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727971318/thumbnail_AI_Artificial_Intelligence_What_it_is_and_why_it_matters_qb1o8gpaeu2d4z5h27m45d99w1tmlkjwinh4wq1izi_f57f467469.jpg", "hash": "thumbnail_AI_Artificial_Intelligence_What_it_is_and_why_it_matters_qb1o8gpaeu2d4z5h27m45d99w1tmlkjwinh4wq1izi_f57f467469", "mime": "image/jpeg", "name": "thumbnail_AI-Artificial-Intelligence-What-it-is-and-why-it-matters-qb1o8gpaeu2d4z5h27m45d99w1tmlkjwinh4wq1izi.jpg", "path": null, "size": 3.69, "width": 245, "height": 143, "provider_metadata": {"public_id": "thumbnail_AI_Artificial_Intelligence_What_it_is_and_why_it_matters_qb1o8gpaeu2d4z5h27m45d99w1tmlkjwinh4wq1izi_f57f467469", "resource_type": "image"}}}	AI_Artificial_Intelligence_What_it_is_and_why_it_matters_qb1o8gpaeu2d4z5h27m45d99w1tmlkjwinh4wq1izi_f57f467469	.jpg	image/jpeg	12.83	https://res.cloudinary.com/dxthattjv/image/upload/v1727971318/AI_Artificial_Intelligence_What_it_is_and_why_it_matters_qb1o8gpaeu2d4z5h27m45d99w1tmlkjwinh4wq1izi_f57f467469.jpg	\N	cloudinary	{"public_id": "AI_Artificial_Intelligence_What_it_is_and_why_it_matters_qb1o8gpaeu2d4z5h27m45d99w1tmlkjwinh4wq1izi_f57f467469", "resource_type": "image"}	/1	2024-10-03 22:01:58.689	2024-10-03 22:01:58.689	\N	\N
41	images.avif	\N	\N	\N	\N	\N	images_a8a6cd5e6f	.avif	image/avif	81.31	https://res.cloudinary.com/dxthattjv/image/upload/v1727971391/images_a8a6cd5e6f.avif	\N	cloudinary	{"public_id": "images_a8a6cd5e6f", "resource_type": "image"}	/1	2024-10-03 22:03:11.863	2024-10-03 22:03:11.863	\N	\N
42	images.png	\N	\N	1560	1353	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727971412/thumbnail_images_b26ebe36b6.png", "hash": "thumbnail_images_b26ebe36b6", "mime": "image/png", "name": "thumbnail_images.png", "path": null, "size": 14.18, "width": 180, "height": 156, "provider_metadata": {"public_id": "thumbnail_images_b26ebe36b6", "resource_type": "image"}}}	images_b26ebe36b6	.png	image/png	54.60	https://res.cloudinary.com/dxthattjv/image/upload/v1727971412/images_b26ebe36b6.png	\N	cloudinary	{"public_id": "images_b26ebe36b6", "resource_type": "image"}	/1	2024-10-03 22:03:32.723	2024-10-03 22:03:32.723	\N	\N
43	images.png	\N	\N	1560	1353	{"thumbnail": {"ext": ".png", "url": "https://res.cloudinary.com/dxthattjv/image/upload/v1727971420/thumbnail_images_97779f2b78.png", "hash": "thumbnail_images_97779f2b78", "mime": "image/png", "name": "thumbnail_images.png", "path": null, "size": 14.18, "width": 180, "height": 156, "provider_metadata": {"public_id": "thumbnail_images_97779f2b78", "resource_type": "image"}}}	images_97779f2b78	.png	image/png	54.60	https://res.cloudinary.com/dxthattjv/image/upload/v1727971421/images_97779f2b78.png	\N	cloudinary	{"public_id": "images_97779f2b78", "resource_type": "image"}	/1	2024-10-03 22:03:41.217	2024-10-03 22:03:41.217	\N	\N
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
8	10	3	1
9	11	3	2
10	12	3	3
11	13	3	4
12	14	3	5
13	15	3	6
14	16	3	7
15	17	3	8
16	18	3	9
17	19	3	10
18	20	3	11
19	21	3	12
20	22	3	13
21	23	3	14
22	24	3	15
23	25	3	16
24	26	3	17
25	27	3	18
26	28	3	19
27	29	3	20
28	30	3	21
29	31	3	22
30	32	3	23
31	33	3	24
32	34	3	25
33	35	3	26
34	36	3	27
35	37	3	28
36	38	3	29
37	39	3	30
38	40	3	31
39	41	3	32
40	42	3	33
41	43	3	34
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
5	22	5	api::article.article	thumb	1
6	23	6	api::article.article	thumb	1
7	24	7	api::article.article	thumb	1
8	24	8	api::article.article	thumb	1
10	25	10	api::article.article	thumb	1
11	25	11	api::article.article	thumb	1
29	39	9	api::article.article	thumb	1
33	40	12	api::article.article	thumb	1
34	36	13	api::article.article	thumb	1
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2024-09-25 20:18:01.168	2024-09-25 20:18:01.168	\N	\N
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
2	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
3	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
4	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
5	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
6	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"api::article.article":{"kind":"collectionType","collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"article","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"name":{"type":"string"},"orderPriority":{"type":"integer"},"categories":{"type":"relation","relation":"manyToMany","target":"api::category.category","inversedBy":"articles"},"summery":{"type":"text","required":true},"thumb":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"content":{"type":"json"},"slug":{"type":"string"},"isActive":{"type":"boolean","default":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"article","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"name":{"type":"string"},"orderPriority":{"type":"integer"},"categories":{"type":"relation","relation":"manyToMany","target":"api::category.category","inversedBy":"articles"},"summery":{"type":"text","required":true},"thumb":{"type":"media","multiple":false,"required":false,"allowedTypes":["images","files","videos","audios"]},"content":{"type":"json"},"slug":{"type":"string"},"isActive":{"type":"boolean","default":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"article","connection":"default","uid":"api::article.article","apiName":"article","globalId":"Article","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"category","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"string"},"articles":{"type":"relation","relation":"manyToMany","target":"api::article.article","mappedBy":"categories"},"slug":{"type":"string","unique":true},"isActive":{"type":"boolean","default":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"category","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"description":{"type":"string"},"articles":{"type":"relation","relation":"manyToMany","target":"api::article.article","mappedBy":"categories"},"slug":{"type":"string","unique":true},"isActive":{"type":"boolean","default":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"category","connection":"default","uid":"api::category.category","apiName":"category","globalId":"Category","actions":{},"lifecycles":{}},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release","connection":"default","uid":"plugin::content-releases.release","plugin":"content-releases","globalId":"ContentReleasesRelease"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release-action","connection":"default","uid":"plugin::content-releases.release-action","plugin":"content-releases","globalId":"ContentReleasesReleaseAction"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__filename__":"schema.json","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
20	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
22	plugin_documentation_config	{"restrictedAccess":false}	object	\N	\N
23	plugin_i18n_default_locale	"en"	string	\N	\N
24	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}	object	\N	\N
25	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
26	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
21	plugin_upload_metrics	{"weeklySchedule":"27 6 23 * * 3","lastWeeklyUpdate":1727888787196}	object	\N	\N
19	plugin_upload_settings	{"sizeOptimization":false,"responsiveDimensions":false,"autoOrientation":false}	object	\N	\N
12	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"locale":{"edit":{"label":"locale","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"locale","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","locale"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"locale","size":6},{"name":"release","size":6}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
27	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
14	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
31	plugin_upload_api-folder	{"id":3}	object	\N	\N
30	plugin_content_manager_configuration_content_types::api::article.article	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"orderPriority":{"edit":{"label":"orderPriority","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"orderPriority","searchable":true,"sortable":true}},"categories":{"edit":{"label":"categories","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"categories","searchable":false,"sortable":false}},"summery":{"edit":{"label":"summery","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"summery","searchable":true,"sortable":true}},"thumb":{"edit":{"label":"thumb","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"thumb","searchable":false,"sortable":false}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","name","orderPriority"],"edit":[[{"name":"title","size":6},{"name":"name","size":6}],[{"name":"orderPriority","size":4}],[{"name":"summery","size":6},{"name":"thumb","size":6}],[{"name":"categories","size":6}],[{"name":"content","size":12}],[{"name":"slug","size":6},{"name":"isActive","size":4}]]},"uid":"api::article.article"}	object	\N	\N
29	plugin_content_manager_configuration_content_types::api::category.category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"articles":{"edit":{"label":"articles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"title"},"list":{"label":"articles","searchable":false,"sortable":false}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","description","createdAt"],"edit":[[{"name":"title","size":6},{"name":"description","size":6}],[{"name":"articles","size":6},{"name":"slug","size":6}],[{"name":"isActive","size":4}]]},"uid":"api::category.category"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
17	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles","indexes":[{"name":"articles_created_by_id_fk","columns":["created_by_id"]},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order_priority","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"summery","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"categories","indexes":[{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"target_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"target_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_categories_links","indexes":[{"name":"articles_categories_links_fk","columns":["article_id"]},{"name":"articles_categories_links_inv_fk","columns":["category_id"]},{"name":"articles_categories_links_unique","columns":["article_id","category_id"],"type":"unique"},{"name":"articles_categories_links_order_fk","columns":["category_order"]},{"name":"articles_categories_links_order_inv_fk","columns":["article_order"]}],"foreignKeys":[{"name":"articles_categories_links_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_categories_links_inv_fk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"]},{"name":"files_related_morphs_id_column_index","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_links","indexes":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"]},{"name":"strapi_release_actions_release_links_unique","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_links_order_inv_fk","columns":["release_action_order"]}],"foreignKeys":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2024-10-05 23:13:33.367	fee07f5a475da3ef2900e481b8fe2ecb
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_links; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.auth.changePassword	2024-09-25 20:18:03.148	2024-09-25 20:18:03.148	\N	\N
2	plugin::users-permissions.user.me	2024-09-25 20:18:03.148	2024-09-25 20:18:03.148	\N	\N
3	plugin::users-permissions.auth.forgotPassword	2024-09-25 20:18:03.452	2024-09-25 20:18:03.452	\N	\N
4	plugin::users-permissions.auth.resetPassword	2024-09-25 20:18:03.452	2024-09-25 20:18:03.452	\N	\N
5	plugin::users-permissions.auth.register	2024-09-25 20:18:03.452	2024-09-25 20:18:03.452	\N	\N
6	plugin::users-permissions.auth.emailConfirmation	2024-09-25 20:18:03.452	2024-09-25 20:18:03.452	\N	\N
7	plugin::users-permissions.auth.sendEmailConfirmation	2024-09-25 20:18:03.452	2024-09-25 20:18:03.452	\N	\N
8	plugin::users-permissions.auth.callback	2024-09-25 20:18:03.452	2024-09-25 20:18:03.452	\N	\N
9	plugin::users-permissions.auth.connect	2024-09-25 20:18:03.452	2024-09-25 20:18:03.452	\N	\N
10	plugin::email.email.send	2024-09-25 20:26:49.155	2024-09-25 20:26:49.155	\N	\N
11	api::category.category.findOne	2024-10-02 23:14:24.694	2024-10-02 23:14:24.694	\N	\N
12	api::category.category.find	2024-10-02 23:14:24.694	2024-10-02 23:14:24.694	\N	\N
13	api::category.category.create	2024-10-02 23:14:24.694	2024-10-02 23:14:24.694	\N	\N
14	api::category.category.update	2024-10-02 23:14:24.694	2024-10-02 23:14:24.694	\N	\N
15	api::category.category.delete	2024-10-02 23:14:24.694	2024-10-02 23:14:24.694	\N	\N
16	api::article.article.create	2024-10-02 23:53:56.589	2024-10-02 23:53:56.589	\N	\N
17	api::article.article.findOne	2024-10-02 23:53:56.589	2024-10-02 23:53:56.589	\N	\N
18	api::article.article.find	2024-10-02 23:53:56.589	2024-10-02 23:53:56.589	\N	\N
19	api::article.article.delete	2024-10-02 23:53:56.589	2024-10-02 23:53:56.589	\N	\N
20	api::article.article.update	2024-10-02 23:53:56.589	2024-10-02 23:53:56.589	\N	\N
21	api::article.article.findOne	2024-10-03 10:13:21.972	2024-10-03 10:13:21.972	\N	\N
22	api::article.article.find	2024-10-03 10:13:21.972	2024-10-03 10:13:21.972	\N	\N
23	api::article.article.create	2024-10-03 10:13:21.972	2024-10-03 10:13:21.972	\N	\N
24	api::article.article.update	2024-10-03 10:13:21.972	2024-10-03 10:13:21.972	\N	\N
25	api::article.article.delete	2024-10-03 10:13:21.972	2024-10-03 10:13:21.972	\N	\N
26	api::category.category.find	2024-10-03 10:13:21.972	2024-10-03 10:13:21.972	\N	\N
27	api::category.category.findOne	2024-10-03 10:13:21.972	2024-10-03 10:13:21.972	\N	\N
28	api::category.category.create	2024-10-03 10:13:21.972	2024-10-03 10:13:21.972	\N	\N
29	api::category.category.update	2024-10-03 10:13:21.972	2024-10-03 10:13:21.972	\N	\N
30	api::category.category.delete	2024-10-03 10:13:21.972	2024-10-03 10:13:21.972	\N	\N
31	plugin::upload.content-api.findOne	2024-10-03 15:04:45.893	2024-10-03 15:04:45.893	\N	\N
32	plugin::upload.content-api.find	2024-10-03 15:04:45.893	2024-10-03 15:04:45.893	\N	\N
33	plugin::upload.content-api.destroy	2024-10-03 15:04:45.893	2024-10-03 15:04:45.893	\N	\N
34	plugin::upload.content-api.upload	2024-10-03 15:04:45.893	2024-10-03 15:04:45.893	\N	\N
35	plugin::upload.content-api.findOne	2024-10-03 15:04:55.593	2024-10-03 15:04:55.593	\N	\N
36	plugin::upload.content-api.destroy	2024-10-03 15:04:55.593	2024-10-03 15:04:55.593	\N	\N
37	plugin::upload.content-api.upload	2024-10-03 15:04:55.593	2024-10-03 15:04:55.593	\N	\N
38	plugin::upload.content-api.find	2024-10-03 15:04:55.593	2024-10-03 15:04:55.593	\N	\N
39	plugin::upload.content-api.findOne	2024-10-03 15:09:07.615	2024-10-03 15:09:07.615	\N	\N
40	plugin::upload.content-api.destroy	2024-10-03 15:09:07.615	2024-10-03 15:09:07.615	\N	\N
41	plugin::upload.content-api.find	2024-10-03 15:09:07.615	2024-10-03 15:09:07.615	\N	\N
42	plugin::upload.content-api.upload	2024-10-03 15:09:07.615	2024-10-03 15:09:07.615	\N	\N
43	api::category.category.countArticles	2024-10-05 18:37:27.589	2024-10-05 18:37:27.589	\N	\N
44	api::category.category.countArticles	2024-10-05 18:37:41.876	2024-10-05 18:37:41.876	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	1	1
2	2	1	1
3	4	2	1
4	7	2	1
5	6	2	1
6	5	2	1
7	3	2	1
8	8	2	1
9	9	2	1
10	10	2	2
11	11	2	3
12	12	2	3
13	14	2	4
14	15	2	4
15	13	2	4
16	16	2	5
17	17	2	5
18	18	2	5
19	19	2	6
20	20	2	6
21	22	3	1
23	23	3	1
22	21	3	1
24	24	3	1
25	25	3	1
26	27	3	1
27	26	3	1
28	28	3	1
29	29	3	1
30	30	3	1
31	32	1	2
32	31	1	2
33	33	1	3
34	34	1	3
35	36	3	2
36	37	3	2
37	35	3	2
38	38	3	2
39	40	2	7
40	39	2	7
41	41	2	7
42	42	2	8
43	43	3	3
44	44	2	9
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2024-09-25 20:18:02.637	2024-10-03 15:04:45.614	\N	\N
3	admin	x	admin	2024-10-03 10:13:21.743	2024-10-05 18:37:27.322	\N	\N
2	Public	Default role given to unauthenticated user.	public	2024-09-25 20:18:02.841	2024-10-05 18:37:41.61	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Marzan	marzan@gmail.com	local	$2a$10$4bn/F6Hd5naw4DEmWGcfauehiTbBRjBBJiMWcYMqd76tu5j1lzyGa	\N	\N	t	f	2024-10-03 10:22:33.3	2024-10-03 10:22:33.3	1	1
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
1	1	3	1
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
3	API Uploads	1	/1	2024-10-03 15:25:39.201	2024-10-03 15:25:39.201	\N	\N
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: galib
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 152, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 152, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: articles_categories_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.articles_categories_links_id_seq', 31, true);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.articles_id_seq', 13, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.categories_id_seq', 4, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 41, true);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.files_id_seq', 43, true);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 34, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 31, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 17, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 44, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 44, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 3, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, true);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 3, true);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: galib
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: articles_categories_links articles_categories_links_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.articles_categories_links
    ADD CONSTRAINT articles_categories_links_pkey PRIMARY KEY (id);


--
-- Name: articles_categories_links articles_categories_links_unique; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.articles_categories_links
    ADD CONSTRAINT articles_categories_links_unique UNIQUE (article_id, category_id);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_unique; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: articles_categories_links_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX articles_categories_links_fk ON public.articles_categories_links USING btree (article_id);


--
-- Name: articles_categories_links_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX articles_categories_links_inv_fk ON public.articles_categories_links USING btree (category_id);


--
-- Name: articles_categories_links_order_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX articles_categories_links_order_fk ON public.articles_categories_links USING btree (category_order);


--
-- Name: articles_categories_links_order_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX articles_categories_links_order_inv_fk ON public.articles_categories_links USING btree (article_order);


--
-- Name: articles_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX articles_created_by_id_fk ON public.articles USING btree (created_by_id);


--
-- Name: articles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX articles_updated_by_id_fk ON public.articles USING btree (updated_by_id);


--
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);


--
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_release_links_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_links_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);


--
-- Name: strapi_release_actions_release_links_order_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: galib
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: articles_categories_links articles_categories_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.articles_categories_links
    ADD CONSTRAINT articles_categories_links_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: articles_categories_links articles_categories_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.articles_categories_links
    ADD CONSTRAINT articles_categories_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: articles articles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: articles articles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: galib
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

