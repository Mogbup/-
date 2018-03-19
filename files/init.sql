--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE IF EXISTS "scrap";
--
-- Name: scrap; Type: DATABASE; Schema: -; Owner: mogbup
--

CREATE DATABASE "scrap" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'ru_RU.UTF-8' LC_CTYPE = 'ru_RU.UTF-8';


ALTER DATABASE "scrap" OWNER TO "mogbup";

\connect "scrap"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: SCHEMA "public"; Type: COMMENT; Schema: -; Owner: mogbup
--

COMMENT ON SCHEMA "public" IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS "plpgsql" WITH SCHEMA "pg_catalog";


--
-- Name: EXTENSION "plpgsql"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "plpgsql" IS 'PL/pgSQL procedural language';


SET search_path = "public", pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: class; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "class" (
    "id" integer NOT NULL,
    "class" character varying(30) NOT NULL
);


ALTER TABLE "class" OWNER TO "mogbup_4";

--
-- Name: class_id_seq; Type: SEQUENCE; Schema: public; Owner: mogbup_4
--

CREATE SEQUENCE "class_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "class_id_seq" OWNER TO "mogbup_4";

--
-- Name: class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mogbup_4
--

ALTER SEQUENCE "class_id_seq" OWNED BY "class"."id";


--
-- Name: client; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "client" (
    "id" integer NOT NULL,
    "f" character varying(30) NOT NULL,
    "i" character varying(30) NOT NULL,
    "o" character varying(30),
    "num" character varying(12) NOT NULL,
    "mail" character varying(50),
    "birth_day" "date",
    "reg_day" "date",
    "sum_order" integer NOT NULL,
    "sum_cash" integer NOT NULL
);


ALTER TABLE "client" OWNER TO "mogbup_4";

--
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: mogbup_4
--

CREATE SEQUENCE "client_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "client_id_seq" OWNER TO "mogbup_4";

--
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mogbup_4
--

ALTER SEQUENCE "client_id_seq" OWNED BY "client"."id";


--
-- Name: color; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "color" (
    "id" integer NOT NULL,
    "color" character varying(30) NOT NULL
);


ALTER TABLE "color" OWNER TO "mogbup_4";

--
-- Name: color_id_seq; Type: SEQUENCE; Schema: public; Owner: mogbup_4
--

CREATE SEQUENCE "color_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "color_id_seq" OWNER TO "mogbup_4";

--
-- Name: color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mogbup_4
--

ALTER SEQUENCE "color_id_seq" OWNED BY "color"."id";


--
-- Name: idea; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "idea" (
    "id" integer NOT NULL,
    "about" "text",
    "photo" "macaddr" NOT NULL,
    "color" integer NOT NULL,
    "style" integer NOT NULL,
    "class" integer NOT NULL
);


ALTER TABLE "idea" OWNER TO "mogbup_4";

--
-- Name: idea_id_seq; Type: SEQUENCE; Schema: public; Owner: mogbup_4
--

CREATE SEQUENCE "idea_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "idea_id_seq" OWNER TO "mogbup_4";

--
-- Name: idea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mogbup_4
--

ALTER SEQUENCE "idea_id_seq" OWNED BY "idea"."id";


--
-- Name: material; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "material" (
    "id" integer NOT NULL,
    "about" "text",
    "parent_material" integer,
    "tool" integer,
    "produse" character varying(50),
    "cost" character varying(30) NOT NULL,
    "size" character varying(30),
    "amount" integer NOT NULL,
    "color" integer NOT NULL,
    "second_color" integer,
    "style" integer NOT NULL,
    "store" character varying(30) NOT NULL,
    "type" integer NOT NULL,
    "other_char" "text"
);


ALTER TABLE "material" OWNER TO "mogbup_4";

--
-- Name: material_id_seq; Type: SEQUENCE; Schema: public; Owner: mogbup_4
--

CREATE SEQUENCE "material_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "material_id_seq" OWNER TO "mogbup_4";

--
-- Name: material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mogbup_4
--

ALTER SEQUENCE "material_id_seq" OWNED BY "material"."id";


--
-- Name: material_tool; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "material_tool" (
    "material" integer,
    "photo" "macaddr" NOT NULL
);


ALTER TABLE "material_tool" OWNER TO "mogbup_4";

--
-- Name: order; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "order" (
    "id" integer NOT NULL,
    "client" integer NOT NULL,
    "project" integer NOT NULL,
    "start" "date" NOT NULL,
    "finish" "date",
    "is_done" boolean NOT NULL
);


ALTER TABLE "order" OWNER TO "mogbup_4";

--
-- Name: order_id_seq; Type: SEQUENCE; Schema: public; Owner: mogbup_4
--

CREATE SEQUENCE "order_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "order_id_seq" OWNER TO "mogbup_4";

--
-- Name: order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mogbup_4
--

ALTER SEQUENCE "order_id_seq" OWNED BY "order"."id";


--
-- Name: photo_tool; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "photo_tool" (
    "tool" integer,
    "photo" "macaddr" NOT NULL
);


ALTER TABLE "photo_tool" OWNER TO "mogbup_4";

--
-- Name: project; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "project" (
    "id" integer NOT NULL,
    "about" "text",
    "cost" "money" NOT NULL,
    "real_cost" "money" NOT NULL,
    "style" integer NOT NULL,
    "class" integer NOT NULL,
    "idea" integer,
    "start" "date",
    "finish" "date",
    "is_done" boolean NOT NULL
);


ALTER TABLE "project" OWNER TO "mogbup_4";

--
-- Name: project_id_seq; Type: SEQUENCE; Schema: public; Owner: mogbup_4
--

CREATE SEQUENCE "project_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "project_id_seq" OWNER TO "mogbup_4";

--
-- Name: project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mogbup_4
--

ALTER SEQUENCE "project_id_seq" OWNED BY "project"."id";


--
-- Name: project_material; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "project_material" (
    "project" integer,
    "material" integer,
    "sum" integer NOT NULL
);


ALTER TABLE "project_material" OWNER TO "mogbup_4";

--
-- Name: project_tool; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "project_tool" (
    "project" integer,
    "photo" "macaddr" NOT NULL
);


ALTER TABLE "project_tool" OWNER TO "mogbup_4";

--
-- Name: style; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "style" (
    "id" integer NOT NULL,
    "style" character varying(30) NOT NULL
);


ALTER TABLE "style" OWNER TO "mogbup_4";

--
-- Name: style_id_seq; Type: SEQUENCE; Schema: public; Owner: mogbup_4
--

CREATE SEQUENCE "style_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "style_id_seq" OWNER TO "mogbup_4";

--
-- Name: style_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mogbup_4
--

ALTER SEQUENCE "style_id_seq" OWNED BY "style"."id";


--
-- Name: tool; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "tool" (
    "id" integer NOT NULL,
    "about" "text",
    "produse" character varying(50),
    "cost" character varying(30) NOT NULL,
    "store" character varying(30) NOT NULL,
    "color" integer,
    "other_char" "text",
    "type" integer
);


ALTER TABLE "tool" OWNER TO "mogbup_4";

--
-- Name: tool_id_seq; Type: SEQUENCE; Schema: public; Owner: mogbup_4
--

CREATE SEQUENCE "tool_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "tool_id_seq" OWNER TO "mogbup_4";

--
-- Name: tool_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mogbup_4
--

ALTER SEQUENCE "tool_id_seq" OWNED BY "tool"."id";


--
-- Name: type; Type: TABLE; Schema: public; Owner: mogbup_4
--

CREATE TABLE "type" (
    "id" integer NOT NULL,
    "type" character varying(30) NOT NULL,
    "level" integer NOT NULL,
    "parent" integer
);


ALTER TABLE "type" OWNER TO "mogbup_4";

--
-- Name: type_id_seq; Type: SEQUENCE; Schema: public; Owner: mogbup_4
--

CREATE SEQUENCE "type_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "type_id_seq" OWNER TO "mogbup_4";

--
-- Name: type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mogbup_4
--

ALTER SEQUENCE "type_id_seq" OWNED BY "type"."id";


--
-- Name: class id; Type: DEFAULT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "class" ALTER COLUMN "id" SET DEFAULT "nextval"('"class_id_seq"'::"regclass");


--
-- Name: client id; Type: DEFAULT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "client" ALTER COLUMN "id" SET DEFAULT "nextval"('"client_id_seq"'::"regclass");


--
-- Name: color id; Type: DEFAULT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "color" ALTER COLUMN "id" SET DEFAULT "nextval"('"color_id_seq"'::"regclass");


--
-- Name: idea id; Type: DEFAULT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "idea" ALTER COLUMN "id" SET DEFAULT "nextval"('"idea_id_seq"'::"regclass");


--
-- Name: material id; Type: DEFAULT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "material" ALTER COLUMN "id" SET DEFAULT "nextval"('"material_id_seq"'::"regclass");


--
-- Name: order id; Type: DEFAULT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "order" ALTER COLUMN "id" SET DEFAULT "nextval"('"order_id_seq"'::"regclass");


--
-- Name: project id; Type: DEFAULT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "project" ALTER COLUMN "id" SET DEFAULT "nextval"('"project_id_seq"'::"regclass");


--
-- Name: style id; Type: DEFAULT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "style" ALTER COLUMN "id" SET DEFAULT "nextval"('"style_id_seq"'::"regclass");


--
-- Name: tool id; Type: DEFAULT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "tool" ALTER COLUMN "id" SET DEFAULT "nextval"('"tool_id_seq"'::"regclass");


--
-- Name: type id; Type: DEFAULT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "type" ALTER COLUMN "id" SET DEFAULT "nextval"('"type_id_seq"'::"regclass");


--
-- Name: class class_pkey; Type: CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "class"
    ADD CONSTRAINT "class_pkey" PRIMARY KEY ("id");


--
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "client"
    ADD CONSTRAINT "client_pkey" PRIMARY KEY ("id");


--
-- Name: color color_pkey; Type: CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "color"
    ADD CONSTRAINT "color_pkey" PRIMARY KEY ("id");


--
-- Name: idea idea_pkey; Type: CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "idea"
    ADD CONSTRAINT "idea_pkey" PRIMARY KEY ("id");


--
-- Name: material material_pkey; Type: CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "material"
    ADD CONSTRAINT "material_pkey" PRIMARY KEY ("id");


--
-- Name: order oreder_pkey; Type: CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT "oreder_pkey" PRIMARY KEY ("id");


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "project"
    ADD CONSTRAINT "project_pkey" PRIMARY KEY ("id");


--
-- Name: style style_pkey; Type: CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "style"
    ADD CONSTRAINT "style_pkey" PRIMARY KEY ("id");


--
-- Name: tool tool_pkey; Type: CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "tool"
    ADD CONSTRAINT "tool_pkey" PRIMARY KEY ("id");


--
-- Name: type type_pkey; Type: CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "type"
    ADD CONSTRAINT "type_pkey" PRIMARY KEY ("id");


--
-- Name: idea idea_class_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "idea"
    ADD CONSTRAINT "idea_class_fkey" FOREIGN KEY ("class") REFERENCES "class"("id");


--
-- Name: idea idea_color_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "idea"
    ADD CONSTRAINT "idea_color_fkey" FOREIGN KEY ("color") REFERENCES "color"("id");


--
-- Name: idea idea_style_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "idea"
    ADD CONSTRAINT "idea_style_fkey" FOREIGN KEY ("style") REFERENCES "style"("id");


--
-- Name: material material_color_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "material"
    ADD CONSTRAINT "material_color_fkey" FOREIGN KEY ("color") REFERENCES "color"("id");


--
-- Name: material material_parent_material_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "material"
    ADD CONSTRAINT "material_parent_material_fkey" FOREIGN KEY ("parent_material") REFERENCES "material"("id");


--
-- Name: material material_second_color_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "material"
    ADD CONSTRAINT "material_second_color_fkey" FOREIGN KEY ("second_color") REFERENCES "color"("id");


--
-- Name: material material_style_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "material"
    ADD CONSTRAINT "material_style_fkey" FOREIGN KEY ("style") REFERENCES "style"("id");


--
-- Name: material material_tool_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "material"
    ADD CONSTRAINT "material_tool_fkey" FOREIGN KEY ("tool") REFERENCES "tool"("id");


--
-- Name: material_tool material_tool_material_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "material_tool"
    ADD CONSTRAINT "material_tool_material_fkey" FOREIGN KEY ("material") REFERENCES "material"("id");


--
-- Name: material material_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "material"
    ADD CONSTRAINT "material_type_fkey" FOREIGN KEY ("type") REFERENCES "type"("id");


--
-- Name: order order_client_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT "order_client_fkey" FOREIGN KEY ("client") REFERENCES "client"("id");


--
-- Name: order order_project_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "order"
    ADD CONSTRAINT "order_project_fkey" FOREIGN KEY ("project") REFERENCES "project"("id");


--
-- Name: photo_tool photo_tool_tool_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "photo_tool"
    ADD CONSTRAINT "photo_tool_tool_fkey" FOREIGN KEY ("tool") REFERENCES "tool"("id");


--
-- Name: project project_class_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "project"
    ADD CONSTRAINT "project_class_fkey" FOREIGN KEY ("class") REFERENCES "class"("id");


--
-- Name: project project_idea_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "project"
    ADD CONSTRAINT "project_idea_fkey" FOREIGN KEY ("idea") REFERENCES "idea"("id");


--
-- Name: project_material project_material_material_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "project_material"
    ADD CONSTRAINT "project_material_material_fkey" FOREIGN KEY ("material") REFERENCES "material"("id");


--
-- Name: project_material project_material_project_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "project_material"
    ADD CONSTRAINT "project_material_project_fkey" FOREIGN KEY ("project") REFERENCES "project"("id");


--
-- Name: project project_style_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "project"
    ADD CONSTRAINT "project_style_fkey" FOREIGN KEY ("style") REFERENCES "style"("id");


--
-- Name: project_tool project_tool_project_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "project_tool"
    ADD CONSTRAINT "project_tool_project_fkey" FOREIGN KEY ("project") REFERENCES "project"("id");


--
-- Name: tool tool_color_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "tool"
    ADD CONSTRAINT "tool_color_fkey" FOREIGN KEY ("color") REFERENCES "color"("id");


--
-- Name: tool tool_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "tool"
    ADD CONSTRAINT "tool_type_fkey" FOREIGN KEY ("type") REFERENCES "type"("id");


--
-- Name: type type_parent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mogbup_4
--

ALTER TABLE ONLY "type"
    ADD CONSTRAINT "type_parent_fkey" FOREIGN KEY ("parent") REFERENCES "type"("id");


--
-- Name: public; Type: ACL; Schema: -; Owner: mogbup
--

GRANT ALL ON SCHEMA "public" TO PUBLIC;


--
-- PostgreSQL database dump complete
--

