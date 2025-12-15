--
-- PostgreSQL database dump
--

-- Dumped from database version 14.15 (Ubuntu 14.15-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.15 (Ubuntu 14.15-0ubuntu0.22.04.1)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: erdb_objects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.erdb_objects (
    id integer NOT NULL,
    name text,
    data jsonb
);


ALTER TABLE public.erdb_objects OWNER TO postgres;

--
-- Name: erdb_objects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.erdb_objects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.erdb_objects_id_seq OWNER TO postgres;

--
-- Name: erdb_objects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.erdb_objects_id_seq OWNED BY public.erdb_objects.id;


--
-- Name: relation_0; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_0 (
    category_id integer NOT NULL,
    category_name character varying(255),
    parent integer
);


ALTER TABLE public.relation_0 OWNER TO postgres;

--
-- Name: relation_1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_1 (
    product_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    role character varying(255),
    size_system character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_1 OWNER TO postgres;

--
-- Name: relation_10; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_10 (
    phone_id integer NOT NULL,
    carrier_lock character varying(255)
);


ALTER TABLE public.relation_10 OWNER TO postgres;

--
-- Name: relation_11; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_11 (
    appliance_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    energy_rating character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_11 OWNER TO postgres;

--
-- Name: relation_12; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_12 (
    kitchenappliance_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    energy_rating character varying(255),
    warranty_years integer,
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_12 OWNER TO postgres;

--
-- Name: relation_13; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_13 (
    clothing_id integer NOT NULL,
    material character varying(255)
);


ALTER TABLE public.relation_13 OWNER TO postgres;

--
-- Name: relation_14; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_14 (
    menclothing_id integer NOT NULL,
    fit_type_men character varying(255)
);


ALTER TABLE public.relation_14 OWNER TO postgres;

--
-- Name: relation_15; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_15 (
    womenclothing_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    size_system character varying(255),
    material character varying(255),
    fit_type_women character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_15 OWNER TO postgres;

--
-- Name: relation_16; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_16 (
    footwear_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    size_system character varying(255),
    sole_material character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_16 OWNER TO postgres;

--
-- Name: relation_17; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_17 (
    software_id integer NOT NULL,
    license_type character varying(255)
);


ALTER TABLE public.relation_17 OWNER TO postgres;

--
-- Name: relation_18; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_18 (
    user_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    employee_no character varying(255),
    role character varying(255),
    department character varying(255),
    browsingsession jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_18 OWNER TO postgres;

--
-- Name: relation_19; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_19 (
    user_id integer NOT NULL,
    mv_user character varying(255) NOT NULL
);


ALTER TABLE public.relation_19 OWNER TO postgres;

--
-- Name: relation_2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_2 (
    product_id integer NOT NULL,
    mv_attributes character varying(255) NOT NULL
);


ALTER TABLE public.relation_2 OWNER TO postgres;

--
-- Name: relation_20; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_20 (
    customer_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    loyalty_tier character varying(255),
    browsingsession jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_20 OWNER TO postgres;

--
-- Name: relation_21; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_21 (
    customer_id integer NOT NULL,
    contact_no character varying(255) NOT NULL
);


ALTER TABLE public.relation_21 OWNER TO postgres;

--
-- Name: relation_22; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_22 (
    primecustomer_id integer NOT NULL,
    renewal_date character varying(255)
);


ALTER TABLE public.relation_22 OWNER TO postgres;

--
-- Name: relation_23; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_23 (
    primecustomer_id integer NOT NULL,
    subscription_addons character varying(255) NOT NULL
);


ALTER TABLE public.relation_23 OWNER TO postgres;

--
-- Name: relation_24; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_24 (
    businesscustomer_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    loyalty_tier character varying(255),
    company_name character varying(255),
    browsingsession jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_24 OWNER TO postgres;

--
-- Name: relation_25; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_25 (
    corporateemployee_id integer NOT NULL,
    office_site character varying(255)
);


ALTER TABLE public.relation_25 OWNER TO postgres;

--
-- Name: relation_26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_26 (
    engineer_id integer NOT NULL,
    level character varying(255)
);


ALTER TABLE public.relation_26 OWNER TO postgres;

--
-- Name: relation_27; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_27 (
    supportagent_id integer NOT NULL,
    queue character varying(255)
);


ALTER TABLE public.relation_27 OWNER TO postgres;

--
-- Name: relation_28; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_28 (
    fulfillmentassociate_id integer NOT NULL,
    shift character varying(255)
);


ALTER TABLE public.relation_28 OWNER TO postgres;

--
-- Name: relation_29; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_29 (
    tag_id integer NOT NULL,
    tag_name character varying(255)
);


ALTER TABLE public.relation_29 OWNER TO postgres;

--
-- Name: relation_3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_3 (
    digitalproduct_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    delivery_type character varying(255),
    format character varying(255),
    role character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_3 OWNER TO postgres;

--
-- Name: relation_30; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_30 (
    customer_id integer NOT NULL,
    address_id integer NOT NULL,
    kind character varying(255),
    line1 character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    postal_code character varying(255)
);


ALTER TABLE public.relation_30 OWNER TO postgres;

--
-- Name: relation_31; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_31 (
    customer_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    brand character varying(255),
    last4 character varying(255),
    exp_month integer,
    exp_year integer,
    is_default character varying(255)
);


ALTER TABLE public.relation_31 OWNER TO postgres;

--
-- Name: relation_32; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_32 (
    customer_id integer NOT NULL,
    updated_at character varying(255)
);


ALTER TABLE public.relation_32 OWNER TO postgres;

--
-- Name: relation_33; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_33 (
    customer_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    wishlist_name character varying(255)
);


ALTER TABLE public.relation_33 OWNER TO postgres;

--
-- Name: relation_34; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_34 (
    customer_id integer NOT NULL,
    review_id integer NOT NULL,
    rating integer,
    title character varying(255),
    body character varying(255),
    created_at character varying(255)
);


ALTER TABLE public.relation_34 OWNER TO postgres;

--
-- Name: relation_35; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_35 (
    custorder_id integer NOT NULL,
    placed_at character varying(255),
    status character varying(255)
);


ALTER TABLE public.relation_35 OWNER TO postgres;

--
-- Name: relation_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_36 (
    custorder_id integer NOT NULL,
    shipment_id integer NOT NULL,
    carrier character varying(255),
    tracking_no character varying(255),
    shipped_at character varying(255),
    delivered_at character varying(255)
);


ALTER TABLE public.relation_36 OWNER TO postgres;

--
-- Name: relation_37; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_37 (
    promotion_id integer NOT NULL,
    promo_name character varying(255),
    starts_at character varying(255),
    ends_at character varying(255),
    discount_type character varying(255),
    discount_value character varying(255)
);


ALTER TABLE public.relation_37 OWNER TO postgres;

--
-- Name: relation_38; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_38 (
    promotion_id integer NOT NULL,
    coupon_code integer NOT NULL,
    max_uses integer,
    per_user_limit integer
);


ALTER TABLE public.relation_38 OWNER TO postgres;

--
-- Name: relation_39; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_39 (
    warehouse_id integer NOT NULL,
    warehouse_name character varying(255),
    region character varying(255)
);


ALTER TABLE public.relation_39 OWNER TO postgres;

--
-- Name: relation_4; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_4 (
    electronics_id integer NOT NULL,
    warranty_months integer,
    accessory_type character varying(255),
    role character varying(255)
);


ALTER TABLE public.relation_4 OWNER TO postgres;

--
-- Name: relation_40; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_40 (
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL,
    code character varying(255)
);


ALTER TABLE public.relation_40 OWNER TO postgres;

--
-- Name: relation_41; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_41 (
    supplier_id integer NOT NULL,
    supplier_name character varying(255)
);


ALTER TABLE public.relation_41 OWNER TO postgres;

--
-- Name: relation_42; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_42 (
    supplier_id integer NOT NULL,
    contact_id integer NOT NULL,
    email character varying(255),
    phone character varying(255)
);


ALTER TABLE public.relation_42 OWNER TO postgres;

--
-- Name: relation_43; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_43 (
    purchaseorder_id integer NOT NULL,
    created_at character varying(255),
    status character varying(255)
);


ALTER TABLE public.relation_43 OWNER TO postgres;

--
-- Name: relation_44; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_44 (
    courierpartner_id integer NOT NULL,
    carrier_code character varying(255),
    webhook_url character varying(255)
);


ALTER TABLE public.relation_44 OWNER TO postgres;

--
-- Name: relation_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_45 (
    product_id integer NOT NULL,
    category_products_category_id integer
);


ALTER TABLE public.relation_45 OWNER TO postgres;

--
-- Name: relation_46; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_46 (
    product_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.relation_46 OWNER TO postgres;

--
-- Name: relation_47; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_47 (
    product_id integer NOT NULL,
    bought_together_product_product_id integer NOT NULL
);


ALTER TABLE public.relation_47 OWNER TO postgres;

--
-- Name: relation_48; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_48 (
    customer_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_48 OWNER TO postgres;

--
-- Name: relation_49; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_49 (
    customer_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_49 OWNER TO postgres;

--
-- Name: relation_5; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_5 (
    computer_id integer NOT NULL,
    cpu character varying(255),
    ram_gb integer,
    form_factor character varying(255),
    role character varying(255)
);


ALTER TABLE public.relation_5 OWNER TO postgres;

--
-- Name: relation_50; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_50 (
    customer_id integer NOT NULL,
    review_id integer NOT NULL,
    reviews_product_id integer
);


ALTER TABLE public.relation_50 OWNER TO postgres;

--
-- Name: relation_51; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_51 (
    custorder_id integer NOT NULL,
    customer_orders_customer_id integer
);


ALTER TABLE public.relation_51 OWNER TO postgres;

--
-- Name: relation_52; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_52 (
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_52 OWNER TO postgres;

--
-- Name: relation_53; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_53 (
    custorder_id integer NOT NULL,
    payment_order_customer_id integer,
    payment_order_payment_method_id integer
);


ALTER TABLE public.relation_53 OWNER TO postgres;

--
-- Name: relation_54; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_54 (
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_54 OWNER TO postgres;

--
-- Name: relation_55; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_55 (
    promotion_id integer NOT NULL,
    coupon_code integer NOT NULL,
    order_coupons_custorder_id integer
);


ALTER TABLE public.relation_55 OWNER TO postgres;

--
-- Name: relation_56; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_56 (
    product_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL
);


ALTER TABLE public.relation_56 OWNER TO postgres;

--
-- Name: relation_57; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_57 (
    supplier_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_57 OWNER TO postgres;

--
-- Name: relation_58; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_58 (
    purchaseorder_id integer NOT NULL,
    supplier_pos_supplier_id integer
);


ALTER TABLE public.relation_58 OWNER TO postgres;

--
-- Name: relation_59; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_59 (
    purchaseorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_59 OWNER TO postgres;

--
-- Name: relation_6; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_6 (
    laptop_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    warranty_months integer,
    cpu character varying(255),
    ram_gb integer,
    battery_wh integer,
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_6 OWNER TO postgres;

--
-- Name: relation_60; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_60 (
    custorder_id integer NOT NULL,
    shipment_id integer NOT NULL,
    courier_shipments_courierpartner_id integer
);


ALTER TABLE public.relation_60 OWNER TO postgres;

--
-- Name: relation_61; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_61 (
    phone_id integer NOT NULL,
    bundle_phone_phone_id integer NOT NULL
);


ALTER TABLE public.relation_61 OWNER TO postgres;

--
-- Name: relation_62; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_62 (
    smartwatch_id integer NOT NULL,
    bundled_phone_smart_watch_phone_id integer
);


ALTER TABLE public.relation_62 OWNER TO postgres;

--
-- Name: relation_63; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_63 (
    phone_id integer NOT NULL,
    single_bundle_phone_bundled_phone_phone_id integer
);


ALTER TABLE public.relation_63 OWNER TO postgres;

--
-- Name: relation_7; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_7 (
    tablet_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    warranty_months integer,
    screen_size_in integer,
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_7 OWNER TO postgres;

--
-- Name: relation_8; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_8 (
    smartwatch_id integer NOT NULL,
    band_size character varying(255)
);


ALTER TABLE public.relation_8 OWNER TO postgres;

--
-- Name: relation_9; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_9 (
    camera_id integer NOT NULL,
    sensor_mp integer
);


ALTER TABLE public.relation_9 OWNER TO postgres;

--
-- Name: temp_browsingsession; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_browsingsession (
    user_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    employee_no character varying(255),
    role character varying(255),
    department character varying(255),
    browsingsession jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.temp_browsingsession OWNER TO postgres;

--
-- Name: temp_pricehistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_pricehistory (
    product_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    role character varying(255),
    size_system character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.temp_pricehistory OWNER TO postgres;

--
-- Name: temp_productimage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_productimage (
    product_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    role character varying(255),
    size_system character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.temp_productimage OWNER TO postgres;

--
-- Name: temp_productvariant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_productvariant (
    product_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    role character varying(255),
    size_system character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.temp_productvariant OWNER TO postgres;

--
-- Name: erdb_objects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.erdb_objects ALTER COLUMN id SET DEFAULT nextval('public.erdb_objects_id_seq'::regclass);


--
-- Data for Name: erdb_objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.erdb_objects (id, name, data) FROM stdin;
1	sorted_by_dependencies_tables	[]
2	tables	[["relation_0", [["category_id", "INTEGER", "category_id", "category"], ["category_name", "VARCHAR(255)", "category.category_name", "category"], ["parent", "INTEGER", "category.parent", "category"]], false, ["category_id"]], ["relation_1", [["product_id", "INTEGER", "product_id", "product"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["role", "VARCHAR(255)", "role", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["product_id"]], ["relation_2", [["product_id", "INTEGER", "product_id", "product.mv_attributes"], ["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "product.mv_attributes"]], false, ["product_id", "mv_attributes"]], ["relation_3", [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["delivery_type", "VARCHAR(255)", "digitalproduct.delivery_type", "digitalproduct"], ["format", "VARCHAR(255)", "media.format", "media"], ["role", "VARCHAR(255)", "role", "media"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["digitalproduct_id"]], ["relation_4", [["electronics_id", "INTEGER", "electronics_id", "electronics"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["accessory_type", "VARCHAR(255)", "accessories.accessory_type", "accessories"], ["role", "VARCHAR(255)", "role", "accessories"]], false, ["electronics_id"]], ["relation_5", [["computer_id", "INTEGER", "computer_id", "computer"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["form_factor", "VARCHAR(255)", "desktop.form_factor", "desktop"], ["role", "VARCHAR(255)", "role", "desktop"]], false, ["computer_id"]], ["relation_6", [["laptop_id", "INTEGER", "laptop_id", "laptop"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["battery_wh", "INTEGER", "laptop.battery_wh", "laptop"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["laptop_id"]], ["relation_7", [["tablet_id", "INTEGER", "tablet_id", "tablet"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["screen_size_in", "INTEGER", "tablet.screen_size_in", "tablet"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["tablet_id"]], ["relation_8", [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch"], ["band_size", "VARCHAR(255)", "smartwatch.band_size", "smartwatch"]], false, ["smartwatch_id"]], ["relation_9", [["camera_id", "INTEGER", "camera_id", "camera"], ["sensor_mp", "INTEGER", "camera.sensor_mp", "camera"]], false, ["camera_id"]], ["relation_10", [["phone_id", "INTEGER", "phone_id", "phone"], ["carrier_lock", "VARCHAR(255)", "phone.carrier_lock", "phone"]], false, ["phone_id"]], ["relation_11", [["appliance_id", "INTEGER", "appliance_id", "appliance"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["energy_rating", "VARCHAR(255)", "appliance.energy_rating", "appliance"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["appliance_id"]], ["relation_12", [["kitchenappliance_id", "INTEGER", "kitchenappliance_id", "kitchenappliance"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["energy_rating", "VARCHAR(255)", "appliance.energy_rating", "appliance"], ["warranty_years", "INTEGER", "kitchenappliance.warranty_years", "kitchenappliance"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["kitchenappliance_id"]], ["relation_13", [["clothing_id", "INTEGER", "clothing_id", "clothing"], ["material", "VARCHAR(255)", "clothing.material", "clothing"]], false, ["clothing_id"]], ["relation_14", [["menclothing_id", "INTEGER", "menclothing_id", "menclothing"], ["fit_type_men", "VARCHAR(255)", "menclothing.fit_type_men", "menclothing"]], false, ["menclothing_id"]], ["relation_15", [["womenclothing_id", "INTEGER", "womenclothing_id", "womenclothing"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["material", "VARCHAR(255)", "clothing.material", "clothing"], ["fit_type_women", "VARCHAR(255)", "womenclothing.fit_type_women", "womenclothing"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["womenclothing_id"]], ["relation_16", [["footwear_id", "INTEGER", "footwear_id", "footwear"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["sole_material", "VARCHAR(255)", "footwear.sole_material", "footwear"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["footwear_id"]], ["relation_17", [["software_id", "INTEGER", "software_id", "software"], ["license_type", "VARCHAR(255)", "software.license_type", "software"]], false, ["software_id"]], ["relation_18", [["user_id", "INTEGER", "user_id", "user"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["role", "VARCHAR(255)", "role", "employee"], ["department", "VARCHAR(255)", "categorymanager.department", "categorymanager"], ["browsingsession", "JSONB DEFAULT '[]'::jsonb", "browsingsession", "browsingsession"]], false, ["user_id"]], ["relation_19", [["user_id", "INTEGER", "user_id", "user.mv_user"], ["mv_user", "VARCHAR(255)", "user.mv_user", "user.mv_user"]], false, ["user_id", "mv_user"]], ["relation_20", [["customer_id", "INTEGER", "customer_id", "customer"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["browsingsession", "JSONB DEFAULT '[]'::jsonb", "browsingsession", "browsingsession"]], false, ["customer_id"]], ["relation_21", [["customer_id", "INTEGER", "customer_id", "customer.contact_no"], ["contact_no", "VARCHAR(255)", "customer.contact_no", "customer.contact_no"]], false, ["customer_id", "contact_no"]], ["relation_22", [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer"], ["renewal_date", "VARCHAR(255)", "primecustomer.renewal_date", "primecustomer"]], false, ["primecustomer_id"]], ["relation_23", [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer.subscription_addons"], ["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "primecustomer.subscription_addons"]], false, ["primecustomer_id", "subscription_addons"]], ["relation_24", [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["company_name", "VARCHAR(255)", "businesscustomer.company_name", "businesscustomer"], ["browsingsession", "JSONB DEFAULT '[]'::jsonb", "browsingsession", "browsingsession"]], false, ["businesscustomer_id"]], ["relation_25", [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee"], ["office_site", "VARCHAR(255)", "corporateemployee.office_site", "corporateemployee"]], false, ["corporateemployee_id"]], ["relation_26", [["engineer_id", "INTEGER", "engineer_id", "engineer"], ["level", "VARCHAR(255)", "engineer.level", "engineer"]], false, ["engineer_id"]], ["relation_27", [["supportagent_id", "INTEGER", "supportagent_id", "supportagent"], ["queue", "VARCHAR(255)", "supportagent.queue", "supportagent"]], false, ["supportagent_id"]], ["relation_28", [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate"], ["shift", "VARCHAR(255)", "fulfillmentassociate.shift", "fulfillmentassociate"]], false, ["fulfillmentassociate_id"]], ["relation_29", [["tag_id", "INTEGER", "tag_id", "tag"], ["tag_name", "VARCHAR(255)", "tag.tag_name", "tag"]], false, ["tag_id"]], ["relation_30", [["customer_id", "INTEGER", "customer_id", "address"], ["address_id", "INTEGER", "address.address_id", "address"], ["kind", "VARCHAR(255)", "address.kind", "address"], ["line1", "VARCHAR(255)", "address.line1", "address"], ["city", "VARCHAR(255)", "address.city", "address"], ["state", "VARCHAR(255)", "address.state", "address"], ["country", "VARCHAR(255)", "address.country", "address"], ["postal_code", "VARCHAR(255)", "address.postal_code", "address"]], false, ["customer_id", "address_id"]], ["relation_31", [["customer_id", "INTEGER", "customer_id", "paymentmethod"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "paymentmethod"], ["brand", "VARCHAR(255)", "paymentmethod.brand", "paymentmethod"], ["last4", "VARCHAR(255)", "paymentmethod.last4", "paymentmethod"], ["exp_month", "INTEGER", "paymentmethod.exp_month", "paymentmethod"], ["exp_year", "INTEGER", "paymentmethod.exp_year", "paymentmethod"], ["is_default", "VARCHAR(255)", "paymentmethod.is_default", "paymentmethod"]], false, ["customer_id", "payment_method_id"]], ["relation_32", [["customer_id", "INTEGER", "customer_id", "cart"], ["updated_at", "VARCHAR(255)", "cart.updated_at", "cart"]], false, ["customer_id"]], ["relation_33", [["customer_id", "INTEGER", "customer_id", "wishlist"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist"], ["wishlist_name", "VARCHAR(255)", "wishlist.wishlist_name", "wishlist"]], false, ["customer_id", "wishlist_id"]], ["relation_34", [["customer_id", "INTEGER", "customer_id", "review"], ["review_id", "INTEGER", "review.review_id", "review"], ["rating", "INTEGER", "review.rating", "review"], ["title", "VARCHAR(255)", "review.title", "review"], ["body", "VARCHAR(255)", "review.body", "review"], ["created_at", "VARCHAR(255)", "review.created_at", "review"]], false, ["customer_id", "review_id"]], ["relation_35", [["custorder_id", "INTEGER", "custorder_id", "custorder"], ["placed_at", "VARCHAR(255)", "custorder.placed_at", "custorder"], ["status", "VARCHAR(255)", "custorder.status", "custorder"]], false, ["custorder_id"]], ["relation_36", [["custorder_id", "INTEGER", "custorder_id", "shipment"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment"], ["carrier", "VARCHAR(255)", "shipment.carrier", "shipment"], ["tracking_no", "VARCHAR(255)", "shipment.tracking_no", "shipment"], ["shipped_at", "VARCHAR(255)", "shipment.shipped_at", "shipment"], ["delivered_at", "VARCHAR(255)", "shipment.delivered_at", "shipment"]], false, ["custorder_id", "shipment_id"]], ["relation_37", [["promotion_id", "INTEGER", "promotion_id", "promotion"], ["promo_name", "VARCHAR(255)", "promotion.promo_name", "promotion"], ["starts_at", "VARCHAR(255)", "promotion.starts_at", "promotion"], ["ends_at", "VARCHAR(255)", "promotion.ends_at", "promotion"], ["discount_type", "VARCHAR(255)", "promotion.discount_type", "promotion"], ["discount_value", "VARCHAR(255)", "promotion.discount_value", "promotion"]], false, ["promotion_id"]], ["relation_38", [["promotion_id", "INTEGER", "promotion_id", "coupon"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon"], ["max_uses", "INTEGER", "coupon.max_uses", "coupon"], ["per_user_limit", "INTEGER", "coupon.per_user_limit", "coupon"]], false, ["promotion_id", "coupon_code"]], ["relation_39", [["warehouse_id", "INTEGER", "warehouse_id", "warehouse"], ["warehouse_name", "VARCHAR(255)", "warehouse.warehouse_name", "warehouse"], ["region", "VARCHAR(255)", "warehouse.region", "warehouse"]], false, ["warehouse_id"]], ["relation_40", [["warehouse_id", "INTEGER", "warehouse_id", "warehousebin"], ["bin_id", "INTEGER", "warehousebin.bin_id", "warehousebin"], ["code", "VARCHAR(255)", "warehousebin.code", "warehousebin"]], false, ["warehouse_id", "bin_id"]], ["relation_41", [["supplier_id", "INTEGER", "supplier_id", "supplier"], ["supplier_name", "VARCHAR(255)", "supplier.supplier_name", "supplier"]], false, ["supplier_id"]], ["relation_42", [["supplier_id", "INTEGER", "supplier_id", "suppliercontact"], ["contact_id", "INTEGER", "suppliercontact.contact_id", "suppliercontact"], ["email", "VARCHAR(255)", "suppliercontact.email", "suppliercontact"], ["phone", "VARCHAR(255)", "suppliercontact.phone", "suppliercontact"]], false, ["supplier_id", "contact_id"]], ["relation_43", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder"], ["created_at", "VARCHAR(255)", "purchaseorder.created_at", "purchaseorder"], ["status", "VARCHAR(255)", "purchaseorder.status", "purchaseorder"]], false, ["purchaseorder_id"]], ["relation_44", [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner"], ["carrier_code", "VARCHAR(255)", "courierpartner.carrier_code", "courierpartner"], ["webhook_url", "VARCHAR(255)", "courierpartner.webhook_url", "courierpartner"]], false, ["courierpartner_id"]], ["relation_45", [["product_id", "INTEGER", "product_id", "category_products"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], false, ["product_id"]], ["relation_46", [["product_id", "INTEGER", "product_id", "product_tags"], ["tag_id", "INTEGER", "tag_id", "product_tags"]], false, ["product_id", "tag_id"]], ["relation_47", [["product_id", "INTEGER", "product_id", "bought_together"], ["bought_together_product_product_id", "INTEGER", "product_id", "bought_together"]], false, ["product_id", "bought_together_product_product_id"]], ["relation_48", [["customer_id", "INTEGER", "customer_id", "cart_contains"], ["product_id", "INTEGER", "product_id", "cart_contains"]], false, ["customer_id", "product_id"]], ["relation_49", [["customer_id", "INTEGER", "customer_id", "wishlist_contains"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_contains"], ["product_id", "INTEGER", "product_id", "wishlist_contains"]], false, ["customer_id", "wishlist_id", "product_id"]], ["relation_50", [["customer_id", "INTEGER", "customer_id", "reviews"], ["review_id", "INTEGER", "review.review_id", "reviews"], ["reviews_product_id", "INTEGER", "product_id", "reviews"]], false, ["customer_id", "review_id"]], ["relation_51", [["custorder_id", "INTEGER", "custorder_id", "customer_orders"], ["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders"]], false, ["custorder_id"]], ["relation_52", [["custorder_id", "INTEGER", "custorder_id", "order_items"], ["product_id", "INTEGER", "product_id", "order_items"]], false, ["custorder_id", "product_id"]], ["relation_53", [["custorder_id", "INTEGER", "custorder_id", "payment_order"], ["payment_order_customer_id", "INTEGER", "customer_id", "payment_order"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order"]], false, ["custorder_id"]], ["relation_54", [["custorder_id", "INTEGER", "custorder_id", "order_returns"], ["product_id", "INTEGER", "product_id", "order_returns"]], false, ["custorder_id", "product_id"]], ["relation_55", [["promotion_id", "INTEGER", "promotion_id", "order_coupons"], ["coupon_code", "INTEGER", "coupon.coupon_code", "order_coupons"], ["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons"]], false, ["promotion_id", "coupon_code"]], ["relation_56", [["product_id", "INTEGER", "product_id", "stock"], ["warehouse_id", "INTEGER", "warehouse_id", "stock"], ["bin_id", "INTEGER", "warehousebin.bin_id", "stock"]], false, ["product_id", "warehouse_id", "bin_id"]], ["relation_57", [["supplier_id", "INTEGER", "supplier_id", "supplier_products"], ["product_id", "INTEGER", "product_id", "supplier_products"]], false, ["supplier_id", "product_id"]], ["relation_58", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "supplier_pos"], ["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos"]], false, ["purchaseorder_id"]], ["relation_59", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "po_items"], ["product_id", "INTEGER", "product_id", "po_items"]], false, ["purchaseorder_id", "product_id"]], ["relation_60", [["custorder_id", "INTEGER", "custorder_id", "courier_shipments"], ["shipment_id", "INTEGER", "shipment.shipment_id", "courier_shipments"], ["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments"]], false, ["custorder_id", "shipment_id"]], ["relation_61", [["phone_id", "INTEGER", "phone_id", "bundle_phones"], ["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phones"]], false, ["phone_id", "bundle_phone_phone_id"]], ["relation_62", [["smartwatch_id", "INTEGER", "smartwatch_id", "bundled_phone_smart_watch"], ["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch"]], false, ["smartwatch_id"]], ["relation_63", [["phone_id", "INTEGER", "phone_id", "bundled_phone"], ["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "bundled_phone"]], false, ["phone_id"]]]
3	types	{}
4	graph	{"cost": 64877336.32573137, "edges": [{"type": "edge", "source": "product.mv_attributes", "target": "product", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "physicalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "digitalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "electronics", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "computer", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "desktop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "laptop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "tablet", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "smartwatch", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "camera", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "phone", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "accessories", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "appliance", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "kitchenappliance", "target": "appliance", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "apparel", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "clothing", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "menclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "womenclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "footwear", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "media", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "software", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "user.mv_user", "target": "user", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer.contact_no", "target": "customer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "primecustomer.subscription_addons", "target": "primecustomer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "primecustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "businesscustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "employee", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "corporateemployee", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "engineer", "target": "corporateemployee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "supportagent", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "fulfillmentassociate", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "categorymanager", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productimage", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productvariant", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "pricehistory", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "address", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "paymentmethod", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "cart", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "wishlist", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "review", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "browsingsession", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "shipment", "target": "custorder", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "coupon", "target": "promotion", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "warehousebin", "target": "warehouse", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "suppliercontact", "target": "supplier", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "category_products", "target": "category", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "category_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "tag", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "cart", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "wishlist", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "review", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "customer", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "paymentmethod", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "coupon", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "warehousebin", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "courierpartner", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "shipment", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "smartwatch", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}], "nodes": [{"key": {"table_key": [["category_id", "INTEGER", "category_id", "category_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["category"]}, "name": "Category", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 1, "attributes": ["category.category_id", "category.category_name", "category.parent"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "category_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "category_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "parent", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Category", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[1, "relation_0"]], "unique_name": "category", "mapped_table": [1, "relation_0"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "category_id", "pk_type": "INTEGER", "pk_ER_name": "category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "category_name", "type": "VARCHAR", "unique_name": "category.category_name", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "parent", "type": "INT", "unique_name": "category.parent", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["category"], "select_frequency": 2, "select_all_tables": [[1, "relation_0"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "category_id", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 2, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.category_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "category_name", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 3, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "category.category_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "parent", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 4, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.parent", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["product"]}, "name": "Product", "type": "ENTITY", "is_mvds": true, "children": ["physicalproduct", "digitalproduct"], "is_total": null, "sort_key": 5, "attributes": ["product.product_id", "product.sku", "product.product_name", "product.base_price", "product.is_active", "product.quantity", "product.mv_attributes"], "node_cover": ["product", "laptop", "tablet", "appliance", "kitchenappliance", "womenclothing", "footwear", "digitalproduct"], "entity_dict": {"attributes": [{"attr_name": "product_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sku", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "product_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "base_price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "quantity", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_attributes", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Product", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[12, "relation_2"], [5, "relation_1"]], "unique_name": "product", "mapped_table": [5, "relation_1"], "parent_entity": null, "relation_size": 2100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["product"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "product_id", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 6, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.product_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sku", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 7, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.sku", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "product_name", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 8, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.product_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "base_price", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 9, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.base_price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 10, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.is_active", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "quantity", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 11, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.quantity", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "mv_attributes"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": null}, "name": "mv_attributes", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 12, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.mv_attributes", "is_composite": false, "is_flattened": false, "mapped_table": [12, "relation_2"], "relation_size": 3144, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "physicalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["physicalproduct"]}, "name": "PhysicalProduct", "type": "ENTITY", "is_mvds": false, "children": ["electronics", "appliance", "apparel"], "is_total": true, "sort_key": 13, "attributes": ["physicalproduct.dimensions"], "node_cover": ["physicalproduct", "laptop", "tablet", "appliance", "kitchenappliance", "womenclothing", "footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "dimensions", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PhysicalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [5, "relation_1"]], "unique_name": "physicalproduct", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 1700, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "physicalproduct_id", "pk_entity_name": "physicalproduct", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["physicalproduct"], "select_frequency": 5, "select_all_tables": [[12, "relation_2"], [5, "relation_1"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "dimensions", "type": "ATTRIBUTE", "entity": "physicalproduct", "children": [], "sort_key": 14, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "physicalproduct.dimensions", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["digitalproduct"]}, "name": "DigitalProduct", "type": "ENTITY", "is_mvds": false, "children": ["media", "software"], "is_total": true, "sort_key": 15, "attributes": ["digitalproduct.delivery_type"], "node_cover": ["digitalproduct"], "entity_dict": {"total": true, "attributes": [{"attr_name": "delivery_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "DigitalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[15, "relation_3"], [12, "relation_2"]], "unique_name": "digitalproduct", "mapped_table": [15, "relation_3"], "parent_entity": "product", "relation_size": 300, "attribute_list": [{"pk_name": "digitalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "digitalproduct_id", "pk_entity_name": "digitalproduct", "pk_unique_name": "digitalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["digitalproduct"], "select_frequency": 2, "select_all_tables": [[15, "relation_3"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "delivery_type", "type": "ATTRIBUTE", "entity": "digitalproduct", "children": [], "sort_key": 16, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "digitalproduct.delivery_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_1"], "table_key_entities": ["electronics"]}, "name": "Electronics", "type": "ENTITY", "is_mvds": false, "children": ["computer", "tablet", "smartwatch", "camera", "phone", "accessories"], "is_total": true, "sort_key": 17, "attributes": ["electronics.warranty_months"], "node_cover": ["electronics", "laptop", "tablet"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_months", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Electronics", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [5, "relation_1"], [17, "relation_4"]], "unique_name": "electronics", "mapped_table": [17, "relation_4"], "parent_entity": "physicalproduct", "relation_size": 900, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "electronics_id", "pk_entity_name": "electronics", "pk_unique_name": "electronics_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["electronics"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [5, "relation_1"], [17, "relation_4"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "warranty_months", "type": "ATTRIBUTE", "entity": "electronics", "children": [], "sort_key": 18, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "electronics.warranty_months", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["computer"]}, "name": "Computer", "type": "ENTITY", "is_mvds": false, "children": ["desktop", "laptop"], "is_total": true, "sort_key": 19, "attributes": ["computer.cpu", "computer.ram_gb"], "node_cover": ["computer", "laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "cpu", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ram_gb", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Computer", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [5, "relation_1"], [19, "relation_5"], [17, "relation_4"]], "unique_name": "computer", "mapped_table": [19, "relation_5"], "parent_entity": "electronics", "relation_size": 300, "attribute_list": [{"pk_name": "computer_id", "pk_type": "INTEGER", "pk_ER_name": "computer_id", "pk_entity_name": "computer", "pk_unique_name": "computer_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["computer"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [5, "relation_1"], [19, "relation_5"], [17, "relation_4"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "cpu", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 20, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "computer.cpu", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ram_gb", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 21, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "computer.ram_gb", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["computer_id", "INTEGER", "computer_id", "desktop_id"]], "reference_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["desktop"]}, "name": "Desktop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 22, "attributes": ["desktop.form_factor"], "node_cover": ["desktop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "form_factor", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Desktop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [5, "relation_1"], [19, "relation_5"], [17, "relation_4"]], "unique_name": "desktop", "mapped_table": [19, "relation_5"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "computer_id", "pk_type": "INTEGER", "pk_ER_name": "desktop_id", "pk_entity_name": "desktop", "pk_unique_name": "computer_id", "pk_reference_key_name": "computer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "computer_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "form_factor", "type": "VARCHAR", "unique_name": "desktop.form_factor", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "desktop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["desktop"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [5, "relation_1"], [19, "relation_5"], [17, "relation_4"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "form_factor", "type": "ATTRIBUTE", "entity": "desktop", "children": [], "sort_key": 23, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "desktop.form_factor", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["laptop_id", "INTEGER", "laptop_id", "laptop_id"]], "reference_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["laptop"]}, "name": "Laptop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 24, "attributes": ["laptop.battery_wh"], "node_cover": ["laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "battery_wh", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Laptop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[24, "relation_6"], [12, "relation_2"]], "unique_name": "laptop", "mapped_table": [24, "relation_6"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "laptop_id", "pk_type": "INTEGER", "pk_ER_name": "laptop_id", "pk_entity_name": "laptop", "pk_unique_name": "laptop_id", "pk_reference_key_name": "computer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "computer_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "battery_wh", "type": "INT", "unique_name": "laptop.battery_wh", "is_flattened": null, "mapped_table": [24, "relation_6"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "laptop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["laptop"], "select_frequency": 5, "select_all_tables": [[24, "relation_6"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "battery_wh", "type": "ATTRIBUTE", "entity": "laptop", "children": [], "sort_key": 25, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "laptop.battery_wh", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tablet_id", "INTEGER", "tablet_id", "tablet_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["tablet"]}, "name": "Tablet", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 26, "attributes": ["tablet.screen_size_in"], "node_cover": ["tablet"], "entity_dict": {"total": true, "attributes": [{"attr_name": "screen_size_in", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tablet", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [26, "relation_7"]], "unique_name": "tablet", "mapped_table": [26, "relation_7"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "tablet_id", "pk_type": "INTEGER", "pk_ER_name": "tablet_id", "pk_entity_name": "tablet", "pk_unique_name": "tablet_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "screen_size_in", "type": "INT", "unique_name": "tablet.screen_size_in", "is_flattened": null, "mapped_table": [26, "relation_7"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tablet", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["tablet"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [26, "relation_7"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "screen_size_in", "type": "ATTRIBUTE", "entity": "tablet", "children": [], "sort_key": 27, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tablet.screen_size_in", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["smartwatch"]}, "name": "Smartwatch", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 28, "attributes": ["smartwatch.band_size"], "node_cover": ["smartwatch"], "entity_dict": {"total": true, "attributes": [{"attr_name": "band_size", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Smartwatch", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[28, "relation_8"], [12, "relation_2"], [5, "relation_1"], [17, "relation_4"]], "unique_name": "smartwatch", "mapped_table": [28, "relation_8"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "band_size", "type": "VARCHAR", "unique_name": "smartwatch.band_size", "is_flattened": null, "mapped_table": [28, "relation_8"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "smartwatch", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["smartwatch"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [5, "relation_1"], [28, "relation_8"], [17, "relation_4"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "band_size", "type": "ATTRIBUTE", "entity": "smartwatch", "children": [], "sort_key": 29, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "smartwatch.band_size", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["camera_id", "INTEGER", "camera_id", "camera_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["camera"]}, "name": "Camera", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 30, "attributes": ["camera.sensor_mp"], "node_cover": ["camera"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sensor_mp", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Camera", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [30, "relation_9"], [5, "relation_1"], [17, "relation_4"]], "unique_name": "camera", "mapped_table": [30, "relation_9"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "camera_id", "pk_type": "INTEGER", "pk_ER_name": "camera_id", "pk_entity_name": "camera", "pk_unique_name": "camera_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sensor_mp", "type": "INT", "unique_name": "camera.sensor_mp", "is_flattened": null, "mapped_table": [30, "relation_9"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "camera", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["camera"], "select_frequency": 2, "select_all_tables": [[12, "relation_2"], [5, "relation_1"], [30, "relation_9"], [17, "relation_4"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "sensor_mp", "type": "ATTRIBUTE", "entity": "camera", "children": [], "sort_key": 31, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "camera.sensor_mp", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["phone_id", "INTEGER", "phone_id", "phone_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["phone"]}, "name": "Phone", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 32, "attributes": ["phone.carrier_lock"], "node_cover": ["phone"], "entity_dict": {"total": true, "attributes": [{"attr_name": "carrier_lock", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Phone", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [32, "relation_10"], [5, "relation_1"], [17, "relation_4"]], "unique_name": "phone", "mapped_table": [32, "relation_10"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "carrier_lock", "type": "VARCHAR", "unique_name": "phone.carrier_lock", "is_flattened": null, "mapped_table": [32, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "phone", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["phone"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [5, "relation_1"], [32, "relation_10"], [17, "relation_4"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "carrier_lock", "type": "ATTRIBUTE", "entity": "phone", "children": [], "sort_key": 33, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "phone.carrier_lock", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "accessories_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["accessories"]}, "name": "Accessories", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 34, "attributes": ["accessories.accessory_type"], "node_cover": ["accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "accessory_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Accessories", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [5, "relation_1"], [17, "relation_4"]], "unique_name": "accessories", "mapped_table": [17, "relation_4"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "accessories_id", "pk_entity_name": "accessories", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "accessory_type", "type": "VARCHAR", "unique_name": "accessories.accessory_type", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "accessories", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["accessories"], "select_frequency": 0, "select_all_tables": [[12, "relation_2"], [5, "relation_1"], [17, "relation_4"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "accessory_type", "type": "ATTRIBUTE", "entity": "accessories", "children": [], "sort_key": 35, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "accessories.accessory_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["appliance_id", "INTEGER", "appliance_id", "appliance_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_1"], "table_key_entities": ["appliance"]}, "name": "Appliance", "type": "ENTITY", "is_mvds": false, "children": ["kitchenappliance"], "is_total": true, "sort_key": 36, "attributes": ["appliance.energy_rating"], "node_cover": ["appliance", "kitchenappliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "energy_rating", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Appliance", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [36, "relation_11"]], "unique_name": "appliance", "mapped_table": [36, "relation_11"], "parent_entity": "physicalproduct", "relation_size": 200, "attribute_list": [{"pk_name": "appliance_id", "pk_type": "INTEGER", "pk_ER_name": "appliance_id", "pk_entity_name": "appliance", "pk_unique_name": "appliance_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [36, "relation_11"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["appliance"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [36, "relation_11"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "energy_rating", "type": "ATTRIBUTE", "entity": "appliance", "children": [], "sort_key": 37, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "appliance.energy_rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["kitchenappliance_id", "INTEGER", "kitchenappliance_id", "kitchenappliance_id"]], "reference_key": [["appliance_id", "INTEGER", "appliance_id", "appliance_id"]], "reference_node": ["appliance"], "reference_table": ["relation_11"], "table_key_entities": ["kitchenappliance"]}, "name": "KitchenAppliance", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 38, "attributes": ["kitchenappliance.warranty_years"], "node_cover": ["kitchenappliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_years", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "KitchenAppliance", "entity_type": null, "parent_entity": "Appliance"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [38, "relation_12"]], "unique_name": "kitchenappliance", "mapped_table": [38, "relation_12"], "parent_entity": "appliance", "relation_size": 100, "attribute_list": [{"pk_name": "kitchenappliance_id", "pk_type": "INTEGER", "pk_ER_name": "kitchenappliance_id", "pk_entity_name": "kitchenappliance", "pk_unique_name": "kitchenappliance_id", "pk_reference_key_name": "appliance_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "appliance_id", "pk_reference_node_unique_name": "appliance"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [36, "relation_11"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_years", "type": "INT", "unique_name": "kitchenappliance.warranty_years", "is_flattened": null, "mapped_table": [38, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "kitchenappliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["kitchenappliance"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [38, "relation_12"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warranty_years", "type": "ATTRIBUTE", "entity": "kitchenappliance", "children": [], "sort_key": 39, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "kitchenappliance.warranty_years", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "apparel_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["apparel"]}, "name": "Apparel", "type": "ENTITY", "is_mvds": false, "children": ["clothing", "footwear"], "is_total": true, "sort_key": 40, "attributes": ["apparel.size_system"], "node_cover": ["apparel", "womenclothing", "footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "size_system", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Apparel", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [5, "relation_1"]], "unique_name": "apparel", "mapped_table": [5, "relation_1"], "parent_entity": "physicalproduct", "relation_size": 500, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "apparel_id", "pk_entity_name": "apparel", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["apparel"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [5, "relation_1"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "size_system", "type": "ATTRIBUTE", "entity": "apparel", "children": [], "sort_key": 41, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "apparel.size_system", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_1"], "table_key_entities": ["clothing"]}, "name": "Clothing", "type": "ENTITY", "is_mvds": false, "children": ["menclothing", "womenclothing"], "is_total": true, "sort_key": 42, "attributes": ["clothing.material"], "node_cover": ["clothing", "womenclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Clothing", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[42, "relation_13"], [5, "relation_1"], [12, "relation_2"]], "unique_name": "clothing", "mapped_table": [42, "relation_13"], "parent_entity": "apparel", "relation_size": 300, "attribute_list": [{"pk_name": "clothing_id", "pk_type": "INTEGER", "pk_ER_name": "clothing_id", "pk_entity_name": "clothing", "pk_unique_name": "clothing_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["clothing"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [5, "relation_1"], [42, "relation_13"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "material", "type": "ATTRIBUTE", "entity": "clothing", "children": [], "sort_key": 43, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "clothing.material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["menclothing_id", "INTEGER", "menclothing_id", "menclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_13"], "table_key_entities": ["menclothing"]}, "name": "MenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 44, "attributes": ["menclothing.fit_type_men"], "node_cover": ["menclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_men", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "MenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [42, "relation_13"], [44, "relation_14"], [5, "relation_1"]], "unique_name": "menclothing", "mapped_table": [44, "relation_14"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "menclothing_id", "pk_type": "INTEGER", "pk_ER_name": "menclothing_id", "pk_entity_name": "menclothing", "pk_unique_name": "menclothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_men", "type": "VARCHAR", "unique_name": "menclothing.fit_type_men", "is_flattened": null, "mapped_table": [44, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "menclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["menclothing"], "select_frequency": 5, "select_all_tables": [[12, "relation_2"], [5, "relation_1"], [44, "relation_14"], [42, "relation_13"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "fit_type_men", "type": "ATTRIBUTE", "entity": "menclothing", "children": [], "sort_key": 45, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "menclothing.fit_type_men", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["womenclothing_id", "INTEGER", "womenclothing_id", "womenclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_13"], "table_key_entities": ["womenclothing"]}, "name": "WomenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 46, "attributes": ["womenclothing.fit_type_women"], "node_cover": ["womenclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_women", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WomenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [46, "relation_15"]], "unique_name": "womenclothing", "mapped_table": [46, "relation_15"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "womenclothing_id", "pk_type": "INTEGER", "pk_ER_name": "womenclothing_id", "pk_entity_name": "womenclothing", "pk_unique_name": "womenclothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_women", "type": "VARCHAR", "unique_name": "womenclothing.fit_type_women", "is_flattened": null, "mapped_table": [46, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "womenclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["womenclothing"], "select_frequency": 20, "select_all_tables": [[12, "relation_2"], [46, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "fit_type_women", "type": "ATTRIBUTE", "entity": "womenclothing", "children": [], "sort_key": 47, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "womenclothing.fit_type_women", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["footwear_id", "INTEGER", "footwear_id", "footwear_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_1"], "table_key_entities": ["footwear"]}, "name": "Footwear", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 48, "attributes": ["footwear.sole_material"], "node_cover": ["footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sole_material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Footwear", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [48, "relation_16"]], "unique_name": "footwear", "mapped_table": [48, "relation_16"], "parent_entity": "apparel", "relation_size": 100, "attribute_list": [{"pk_name": "footwear_id", "pk_type": "INTEGER", "pk_ER_name": "footwear_id", "pk_entity_name": "footwear", "pk_unique_name": "footwear_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sole_material", "type": "VARCHAR", "unique_name": "footwear.sole_material", "is_flattened": null, "mapped_table": [48, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "footwear", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["footwear"], "select_frequency": 20, "select_all_tables": [[12, "relation_2"], [48, "relation_16"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "sole_material", "type": "ATTRIBUTE", "entity": "footwear", "children": [], "sort_key": 49, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "footwear.sole_material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "media_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["media"]}, "name": "Media", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 50, "attributes": ["media.format"], "node_cover": ["media"], "entity_dict": {"total": true, "attributes": [{"attr_name": "format", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Media", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[15, "relation_3"], [12, "relation_2"]], "unique_name": "media", "mapped_table": [15, "relation_3"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "digitalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "media_id", "pk_entity_name": "media", "pk_unique_name": "digitalproduct_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "format", "type": "VARCHAR", "unique_name": "media.format", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "media", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["media"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [15, "relation_3"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "format", "type": "ATTRIBUTE", "entity": "media", "children": [], "sort_key": 51, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "media.format", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["software_id", "INTEGER", "software_id", "software_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["software"]}, "name": "Software", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 52, "attributes": ["software.license_type"], "node_cover": ["software"], "entity_dict": {"total": true, "attributes": [{"attr_name": "license_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Software", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [15, "relation_3"], [52, "relation_17"]], "unique_name": "software", "mapped_table": [52, "relation_17"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "software_id", "pk_type": "INTEGER", "pk_ER_name": "software_id", "pk_entity_name": "software", "pk_unique_name": "software_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "license_type", "type": "VARCHAR", "unique_name": "software.license_type", "is_flattened": null, "mapped_table": [52, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "software", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["software"], "select_frequency": 1, "select_all_tables": [[15, "relation_3"], [12, "relation_2"], [52, "relation_17"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "digitalproduct"}, {"key": null, "name": "license_type", "type": "ATTRIBUTE", "entity": "software", "children": [], "sort_key": 53, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "software.license_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["user"]}, "name": "User", "type": "ENTITY", "is_mvds": true, "children": ["customer", "employee"], "is_total": null, "sort_key": 54, "attributes": ["user.email", "user.password_hash", "user.mv_user"], "node_cover": ["user", "customer", "businesscustomer"], "entity_dict": {"attributes": [{"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "password_hash", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_user", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "User", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[57, "relation_19"], [54, "relation_18"]], "unique_name": "user", "mapped_table": [54, "relation_18"], "parent_entity": null, "relation_size": 1000, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["user"], "select_frequency": 10, "select_all_tables": [[57, "relation_19"], [54, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 4, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 55, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "password_hash", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 56, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.password_hash", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["mv_user", "VARCHAR(255)", "user.mv_user", "mv_user"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_18"], "table_key_entities": null}, "name": "mv_user", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 57, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.mv_user", "is_composite": false, "is_flattened": false, "mapped_table": [57, "relation_19"], "relation_size": 2458, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_18"], "table_key_entities": ["customer"]}, "name": "Customer", "type": "ENTITY", "is_mvds": true, "children": ["primecustomer", "businesscustomer"], "is_total": true, "sort_key": 58, "attributes": ["customer.loyalty_tier", "customer.contact_no"], "node_cover": ["customer", "businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "loyalty_tier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "contact_no", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Customer", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_19"], [58, "relation_20"], [60, "relation_21"]], "unique_name": "customer", "mapped_table": [58, "relation_20"], "parent_entity": "user", "relation_size": 300, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_20"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_21"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_21"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["customer"], "select_frequency": 6, "select_all_tables": [[60, "relation_21"], [58, "relation_20"], [57, "relation_19"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "loyalty_tier", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 59, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.loyalty_tier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["contact_no", "VARCHAR(255)", "customer.contact_no", "contact_no"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": null}, "name": "contact_no", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 60, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.contact_no", "is_composite": false, "is_flattened": false, "mapped_table": [60, "relation_21"], "relation_size": 446, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": ["primecustomer"]}, "name": "PrimeCustomer", "type": "ENTITY", "is_mvds": true, "children": [], "is_total": true, "sort_key": 61, "attributes": ["primecustomer.renewal_date", "primecustomer.subscription_addons"], "node_cover": ["primecustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "renewal_date", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "subscription_addons", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PrimeCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[61, "relation_22"], [57, "relation_19"], [63, "relation_23"], [58, "relation_20"], [60, "relation_21"]], "unique_name": "primecustomer", "mapped_table": [61, "relation_22"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "primecustomer_id", "pk_type": "INTEGER", "pk_ER_name": "primecustomer_id", "pk_entity_name": "primecustomer", "pk_unique_name": "primecustomer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_20"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_21"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_21"]}, {"name": "renewal_date", "type": "VARCHAR", "unique_name": "primecustomer.renewal_date", "is_flattened": null, "mapped_table": [61, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "subscription_addons", "type": "VARCHAR", "unique_name": "primecustomer.subscription_addons", "is_flattened": null, "mapped_table": [63, "relation_23"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": true, "mvd_separate_table_name": [63, "relation_23"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["primecustomer"], "select_frequency": 1, "select_all_tables": [[61, "relation_22"], [57, "relation_19"], [63, "relation_23"], [58, "relation_20"], [60, "relation_21"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "customer"}, {"key": null, "name": "renewal_date", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 62, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.renewal_date", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer_id"]], [["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "subscription_addons"]]], "reference_key": [[["primecustomer_id", "INTEGER", "primecustomer_id"]], []], "reference_node": ["primecustomer"], "reference_table": ["relation_22"], "table_key_entities": null}, "name": "subscription_addons", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 63, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.subscription_addons", "is_composite": false, "is_flattened": false, "mapped_table": [63, "relation_23"], "relation_size": 239, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": ["businesscustomer"]}, "name": "BusinessCustomer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 64, "attributes": ["businesscustomer.company_name"], "node_cover": ["businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "company_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BusinessCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[64, "relation_24"], [60, "relation_21"], [57, "relation_19"]], "unique_name": "businesscustomer", "mapped_table": [64, "relation_24"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "businesscustomer_id", "pk_type": "INTEGER", "pk_ER_name": "businesscustomer_id", "pk_entity_name": "businesscustomer", "pk_unique_name": "businesscustomer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_20"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_21"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_21"]}, {"name": "company_name", "type": "VARCHAR", "unique_name": "businesscustomer.company_name", "is_flattened": null, "mapped_table": [64, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "businesscustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["businesscustomer"], "select_frequency": 1, "select_all_tables": [[64, "relation_24"], [60, "relation_21"], [57, "relation_19"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "company_name", "type": "ATTRIBUTE", "entity": "businesscustomer", "children": [], "sort_key": 65, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "businesscustomer.company_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_18"], "table_key_entities": ["employee"]}, "name": "Employee", "type": "ENTITY", "is_mvds": false, "children": ["corporateemployee", "supportagent", "fulfillmentassociate", "categorymanager"], "is_total": true, "sort_key": 66, "attributes": ["employee.employee_no"], "node_cover": ["employee"], "entity_dict": {"total": true, "attributes": [{"attr_name": "employee_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Employee", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_19"], [54, "relation_18"]], "unique_name": "employee", "mapped_table": [54, "relation_18"], "parent_entity": "user", "relation_size": 600, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "employee_id", "pk_entity_name": "employee", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["employee"], "select_frequency": 2, "select_all_tables": [[57, "relation_19"], [54, "relation_18"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "employee_no", "type": "ATTRIBUTE", "entity": "employee", "children": [], "sort_key": 67, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "employee.employee_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_18"], "table_key_entities": ["corporateemployee"]}, "name": "CorporateEmployee", "type": "ENTITY", "is_mvds": false, "children": ["engineer"], "is_total": true, "sort_key": 68, "attributes": ["corporateemployee.office_site"], "node_cover": ["corporateemployee"], "entity_dict": {"total": true, "attributes": [{"attr_name": "office_site", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CorporateEmployee", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[68, "relation_25"], [57, "relation_19"], [54, "relation_18"]], "unique_name": "corporateemployee", "mapped_table": [68, "relation_25"], "parent_entity": "employee", "relation_size": 200, "attribute_list": [{"pk_name": "corporateemployee_id", "pk_type": "INTEGER", "pk_ER_name": "corporateemployee_id", "pk_entity_name": "corporateemployee", "pk_unique_name": "corporateemployee_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["corporateemployee"], "select_frequency": 1, "select_all_tables": [[68, "relation_25"], [57, "relation_19"], [54, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "office_site", "type": "ATTRIBUTE", "entity": "corporateemployee", "children": [], "sort_key": 69, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "corporateemployee.office_site", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["engineer_id", "INTEGER", "engineer_id", "engineer_id"]], "reference_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_node": ["corporateemployee"], "reference_table": ["relation_25"], "table_key_entities": ["engineer"]}, "name": "Engineer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 70, "attributes": ["engineer.level"], "node_cover": ["engineer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "level", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Engineer", "entity_type": null, "parent_entity": "CorporateEmployee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[54, "relation_18"], [68, "relation_25"], [70, "relation_26"], [57, "relation_19"]], "unique_name": "engineer", "mapped_table": [70, "relation_26"], "parent_entity": "corporateemployee", "relation_size": 100, "attribute_list": [{"pk_name": "engineer_id", "pk_type": "INTEGER", "pk_ER_name": "engineer_id", "pk_entity_name": "engineer", "pk_unique_name": "engineer_id", "pk_reference_key_name": "corporateemployee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "corporateemployee_id", "pk_reference_node_unique_name": "corporateemployee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "level", "type": "VARCHAR", "unique_name": "engineer.level", "is_flattened": null, "mapped_table": [70, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "engineer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["engineer"], "select_frequency": 1, "select_all_tables": [[68, "relation_25"], [70, "relation_26"], [57, "relation_19"], [54, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "level", "type": "ATTRIBUTE", "entity": "engineer", "children": [], "sort_key": 71, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "engineer.level", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supportagent_id", "INTEGER", "supportagent_id", "supportagent_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_18"], "table_key_entities": ["supportagent"]}, "name": "SupportAgent", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 72, "attributes": ["supportagent.queue"], "node_cover": ["supportagent"], "entity_dict": {"total": true, "attributes": [{"attr_name": "queue", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupportAgent", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[72, "relation_27"], [57, "relation_19"], [54, "relation_18"]], "unique_name": "supportagent", "mapped_table": [72, "relation_27"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "supportagent_id", "pk_type": "INTEGER", "pk_ER_name": "supportagent_id", "pk_entity_name": "supportagent", "pk_unique_name": "supportagent_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "queue", "type": "VARCHAR", "unique_name": "supportagent.queue", "is_flattened": null, "mapped_table": [72, "relation_27"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supportagent", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["supportagent"], "select_frequency": 1, "select_all_tables": [[72, "relation_27"], [57, "relation_19"], [54, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "queue", "type": "ATTRIBUTE", "entity": "supportagent", "children": [], "sort_key": 73, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supportagent.queue", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_18"], "table_key_entities": ["fulfillmentassociate"]}, "name": "FulfillmentAssociate", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 74, "attributes": ["fulfillmentassociate.shift"], "node_cover": ["fulfillmentassociate"], "entity_dict": {"total": true, "attributes": [{"attr_name": "shift", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "FulfillmentAssociate", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[74, "relation_28"], [57, "relation_19"], [54, "relation_18"]], "unique_name": "fulfillmentassociate", "mapped_table": [74, "relation_28"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "fulfillmentassociate_id", "pk_type": "INTEGER", "pk_ER_name": "fulfillmentassociate_id", "pk_entity_name": "fulfillmentassociate", "pk_unique_name": "fulfillmentassociate_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shift", "type": "VARCHAR", "unique_name": "fulfillmentassociate.shift", "is_flattened": null, "mapped_table": [74, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "fulfillmentassociate", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["fulfillmentassociate"], "select_frequency": 1, "select_all_tables": [[74, "relation_28"], [57, "relation_19"], [54, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "shift", "type": "ATTRIBUTE", "entity": "fulfillmentassociate", "children": [], "sort_key": 75, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "fulfillmentassociate.shift", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "categorymanager_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_18"], "table_key_entities": ["categorymanager"]}, "name": "CategoryManager", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 76, "attributes": ["categorymanager.department"], "node_cover": ["categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "department", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CategoryManager", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_19"], [54, "relation_18"]], "unique_name": "categorymanager", "mapped_table": [54, "relation_18"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "categorymanager_id", "pk_entity_name": "categorymanager", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "department", "type": "VARCHAR", "unique_name": "categorymanager.department", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "categorymanager", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["categorymanager"], "select_frequency": 1, "select_all_tables": [[57, "relation_19"], [54, "relation_18"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "department", "type": "ATTRIBUTE", "entity": "categorymanager", "children": [], "sort_key": 77, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "categorymanager.department", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["image_id", "INTEGER", "productimage.image_id", "image_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productimage"]]}, "name": "ProductImage", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 78, "attributes": ["productimage.image_id", "productimage.url", "productimage.alt_text", "productimage.sort_order"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "image_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "alt_text", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sort_order", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductImage", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "productimage", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "image_id", "pk_type": "INTEGER", "pk_ER_name": "image_id", "pk_entity_name": "productimage", "pk_unique_name": "productimage.image_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "url", "type": "VARCHAR", "unique_name": "productimage.url", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "alt_text", "type": "VARCHAR", "unique_name": "productimage.alt_text", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sort_order", "type": "INT", "unique_name": "productimage.sort_order", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["productimage", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [24, "relation_6"], [26, "relation_7"], [36, "relation_11"], [38, "relation_12"], [46, "relation_15"], [48, "relation_16"], [15, "relation_3"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "image_id", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 79, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.image_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "url", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 80, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "alt_text", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 81, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.alt_text", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sort_order", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 82, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.sort_order", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["variant_id", "INTEGER", "productvariant.variant_id", "variant_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productvariant"]]}, "name": "ProductVariant", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 83, "attributes": ["productvariant.variant_id", "productvariant.price_override", "productvariant.barcode", "productvariant.is_active_variant"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "variant_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "price_override", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "barcode", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active_variant", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductVariant", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "productvariant", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "variant_id", "pk_type": "INTEGER", "pk_ER_name": "variant_id", "pk_entity_name": "productvariant", "pk_unique_name": "productvariant.variant_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "price_override", "type": "INT", "unique_name": "productvariant.price_override", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "barcode", "type": "VARCHAR", "unique_name": "productvariant.barcode", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active_variant", "type": "INT", "unique_name": "productvariant.is_active_variant", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["productvariant", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [24, "relation_6"], [26, "relation_7"], [36, "relation_11"], [38, "relation_12"], [46, "relation_15"], [48, "relation_16"], [15, "relation_3"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "variant_id", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 84, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.variant_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price_override", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 85, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.price_override", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "barcode", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 86, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productvariant.barcode", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active_variant", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 87, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.is_active_variant", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["price_id", "INTEGER", "pricehistory.price_id", "price_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["pricehistory"]]}, "name": "PriceHistory", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 88, "attributes": ["pricehistory.price_id", "pricehistory.starts_at", "pricehistory.ends_at", "pricehistory.price"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "price_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PriceHistory", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "pricehistory", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "price_id", "pk_type": "INTEGER", "pk_ER_name": "price_id", "pk_entity_name": "pricehistory", "pk_unique_name": "pricehistory.price_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "pricehistory.starts_at", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "pricehistory.ends_at", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "price", "type": "INT", "unique_name": "pricehistory.price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["pricehistory", "product"], "select_frequency": 6, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [24, "relation_6"], [26, "relation_7"], [36, "relation_11"], [38, "relation_12"], [46, "relation_15"], [48, "relation_16"], [15, "relation_3"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "price_id", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 89, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 90, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 91, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 92, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tag_id", "INTEGER", "tag_id", "tag_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["tag"]}, "name": "Tag", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 93, "attributes": ["tag.tag_id", "tag.tag_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "tag_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tag_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tag", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[93, "relation_29"]], "unique_name": "tag", "mapped_table": [93, "relation_29"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "tag_name", "type": "VARCHAR", "unique_name": "tag.tag_name", "is_flattened": null, "mapped_table": [93, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tag", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["tag"], "select_frequency": 3, "select_all_tables": [[93, "relation_29"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "tag_id", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 94, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tag.tag_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tag_name", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 95, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "tag.tag_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["address_id", "INTEGER", "address.address_id", "address_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": [["customer"], ["address"]]}, "name": "Address", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 96, "attributes": ["address.address_id", "address.kind", "address.line1", "address.city", "address.state", "address.country", "address.postal_code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "address_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "kind", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "line1", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "city", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "state", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "country", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "postal_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Address", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[96, "relation_30"]], "unique_name": "address", "mapped_table": [96, "relation_30"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "address_id", "pk_type": "INTEGER", "pk_ER_name": "address_id", "pk_entity_name": "address", "pk_unique_name": "address.address_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "kind", "type": "VARCHAR", "unique_name": "address.kind", "is_flattened": null, "mapped_table": [96, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "line1", "type": "VARCHAR", "unique_name": "address.line1", "is_flattened": null, "mapped_table": [96, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "city", "type": "VARCHAR", "unique_name": "address.city", "is_flattened": null, "mapped_table": [96, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "state", "type": "VARCHAR", "unique_name": "address.state", "is_flattened": null, "mapped_table": [96, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "country", "type": "VARCHAR", "unique_name": "address.country", "is_flattened": null, "mapped_table": [96, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "postal_code", "type": "VARCHAR", "unique_name": "address.postal_code", "is_flattened": null, "mapped_table": [96, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["address", "customer"], "select_frequency": 4, "select_all_tables": [[58, "temp_customer"], [96, "relation_30"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 13, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "address_id", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 97, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "address.address_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "kind", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 98, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.kind", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "line1", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 99, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.line1", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "city", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 100, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.city", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "state", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 101, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.state", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "country", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 102, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.country", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "postal_code", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 103, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.postal_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_method_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": [["customer"], ["paymentmethod"]]}, "name": "PaymentMethod", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 104, "attributes": ["paymentmethod.payment_method_id", "paymentmethod.brand", "paymentmethod.last4", "paymentmethod.exp_month", "paymentmethod.exp_year", "paymentmethod.is_default"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "payment_method_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "brand", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "last4", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_month", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_year", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_default", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PaymentMethod", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[104, "relation_31"]], "unique_name": "paymentmethod", "mapped_table": [104, "relation_31"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "brand", "type": "VARCHAR", "unique_name": "paymentmethod.brand", "is_flattened": null, "mapped_table": [104, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "last4", "type": "VARCHAR", "unique_name": "paymentmethod.last4", "is_flattened": null, "mapped_table": [104, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_month", "type": "INT", "unique_name": "paymentmethod.exp_month", "is_flattened": null, "mapped_table": [104, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_year", "type": "INT", "unique_name": "paymentmethod.exp_year", "is_flattened": null, "mapped_table": [104, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_default", "type": "VARCHAR", "unique_name": "paymentmethod.is_default", "is_flattened": null, "mapped_table": [104, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["paymentmethod", "customer"], "select_frequency": 0, "select_all_tables": [[58, "temp_customer"], [104, "relation_31"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "payment_method_id", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 105, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.payment_method_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "brand", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 106, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.brand", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "last4", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 107, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.last4", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_month", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 108, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_month", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_year", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 109, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_year", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_default", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 110, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.is_default", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], []], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": [["customer"], ["cart"]]}, "name": "Cart", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 111, "attributes": ["cart.updated_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "updated_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Cart", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[111, "relation_32"]], "unique_name": "cart", "mapped_table": [111, "relation_32"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "updated_at", "type": "VARCHAR", "unique_name": "cart.updated_at", "is_flattened": null, "mapped_table": [111, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "cart", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["cart", "customer"], "select_frequency": 8, "select_all_tables": [[111, "relation_32"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "updated_at", "type": "ATTRIBUTE", "entity": "cart", "children": [], "sort_key": 112, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "cart.updated_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": [["customer"], ["wishlist"]]}, "name": "Wishlist", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 113, "attributes": ["wishlist.wishlist_id", "wishlist.wishlist_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "wishlist_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "wishlist_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Wishlist", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[113, "relation_33"]], "unique_name": "wishlist", "mapped_table": [113, "relation_33"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "wishlist_name", "type": "VARCHAR", "unique_name": "wishlist.wishlist_name", "is_flattened": null, "mapped_table": [113, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "wishlist", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["wishlist", "customer"], "select_frequency": 5, "select_all_tables": [[58, "temp_customer"], [113, "relation_33"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "wishlist_id", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 114, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "wishlist.wishlist_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "wishlist_name", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 115, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "wishlist.wishlist_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["review_id", "INTEGER", "review.review_id", "review_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": [["customer"], ["review"]]}, "name": "Review", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 116, "attributes": ["review.review_id", "review.rating", "review.title", "review.body", "review.created_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "review_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "rating", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "title", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "body", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Review", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[116, "relation_34"]], "unique_name": "review", "mapped_table": [116, "relation_34"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "rating", "type": "INT", "unique_name": "review.rating", "is_flattened": null, "mapped_table": [116, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "title", "type": "VARCHAR", "unique_name": "review.title", "is_flattened": null, "mapped_table": [116, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "body", "type": "VARCHAR", "unique_name": "review.body", "is_flattened": null, "mapped_table": [116, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "review.created_at", "is_flattened": null, "mapped_table": [116, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["review", "customer"], "select_frequency": 7, "select_all_tables": [[58, "temp_customer"], [116, "relation_34"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "review_id", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 117, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.review_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "rating", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 118, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "title", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 119, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.title", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "body", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 120, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.body", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 121, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["session_id", "INTEGER", "browsingsession.session_id", "session_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_18"], "table_key_entities": [["user"], ["browsingsession"]]}, "name": "BrowsingSession", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 122, "attributes": ["browsingsession.session_id", "browsingsession.started_at", "browsingsession.device"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "session_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "started_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "device", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BrowsingSession", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": false, "node_tables": [[54, "relation_18"]], "unique_name": "browsingsession", "mapped_table": [54, "relation_18"], "parent_entity": "user", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"pk_name": "session_id", "pk_type": "INTEGER", "pk_ER_name": "session_id", "pk_entity_name": "browsingsession", "pk_unique_name": "browsingsession.session_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "started_at", "type": "VARCHAR", "unique_name": "browsingsession.started_at", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "device", "type": "VARCHAR", "unique_name": "browsingsession.device", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["browsingsession", "user"], "select_frequency": 4, "select_all_tables": [[54, "temp_user"]], "is_parent_in_table": true, "mapped_tables_list": [[54, "relation_18"], [58, "relation_20"], [64, "relation_24"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "session_id", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 123, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "browsingsession.session_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "started_at", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 124, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.started_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "device", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 125, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.device", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["custorder"]}, "name": "CustOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 126, "attributes": ["custorder.custorder_id", "custorder.placed_at", "custorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "custorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "placed_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CustOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[126, "relation_35"]], "unique_name": "custorder", "mapped_table": [126, "relation_35"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "placed_at", "type": "VARCHAR", "unique_name": "custorder.placed_at", "is_flattened": null, "mapped_table": [126, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "custorder.status", "is_flattened": null, "mapped_table": [126, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["custorder"], "select_frequency": 10, "select_all_tables": [[126, "relation_35"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "custorder_id", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 127, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "custorder.custorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "placed_at", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 128, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.placed_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 129, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], []], "reference_node": ["custorder"], "reference_table": ["relation_35"], "table_key_entities": [["custorder"], ["shipment"]]}, "name": "Shipment", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 130, "attributes": ["shipment.shipment_id", "shipment.carrier", "shipment.tracking_no", "shipment.shipped_at", "shipment.delivered_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "shipment_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "carrier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tracking_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "shipped_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "delivered_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Shipment", "entity_type": null, "parent_entity": "CustOrder"}, "is_no_table": false, "is_subclass": false, "node_tables": [[130, "relation_36"]], "unique_name": "shipment", "mapped_table": [130, "relation_36"], "parent_entity": "custorder", "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": "custorder"}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier", "type": "VARCHAR", "unique_name": "shipment.carrier", "is_flattened": null, "mapped_table": [130, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "tracking_no", "type": "VARCHAR", "unique_name": "shipment.tracking_no", "is_flattened": null, "mapped_table": [130, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shipped_at", "type": "VARCHAR", "unique_name": "shipment.shipped_at", "is_flattened": null, "mapped_table": [130, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "delivered_at", "type": "VARCHAR", "unique_name": "shipment.delivered_at", "is_flattened": null, "mapped_table": [130, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["shipment", "custorder"], "select_frequency": 6, "select_all_tables": [[130, "relation_36"], [126, "relation_35"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shipment_id", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 131, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "shipment.shipment_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 132, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.carrier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tracking_no", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 133, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.tracking_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "shipped_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 134, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.shipped_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "delivered_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 135, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.delivered_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["promotion"]}, "name": "Promotion", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 136, "attributes": ["promotion.promo_id", "promotion.promo_name", "promotion.starts_at", "promotion.ends_at", "promotion.discount_type", "promotion.discount_value"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "promo_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "promo_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_value", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Promotion", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[136, "relation_37"]], "unique_name": "promotion", "mapped_table": [136, "relation_37"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "promo_name", "type": "VARCHAR", "unique_name": "promotion.promo_name", "is_flattened": null, "mapped_table": [136, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "promotion.starts_at", "is_flattened": null, "mapped_table": [136, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "promotion.ends_at", "is_flattened": null, "mapped_table": [136, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_type", "type": "VARCHAR", "unique_name": "promotion.discount_type", "is_flattened": null, "mapped_table": [136, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_value", "type": "VARCHAR", "unique_name": "promotion.discount_value", "is_flattened": null, "mapped_table": [136, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["promotion"], "select_frequency": 3, "select_all_tables": [[136, "relation_37"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "promo_id", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 137, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "promotion.promo_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "promo_name", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 138, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.promo_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 139, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 140, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_type", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 141, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_value", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 142, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_value", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], [["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"]], []], "reference_node": ["promotion"], "reference_table": ["relation_37"], "table_key_entities": [["promotion"], ["coupon"]]}, "name": "Coupon", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 143, "attributes": ["coupon.coupon_code", "coupon.max_uses", "coupon.per_user_limit"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "coupon_code", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "max_uses", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "per_user_limit", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Coupon", "entity_type": null, "parent_entity": "Promotion"}, "is_no_table": false, "is_subclass": false, "node_tables": [[143, "relation_38"]], "unique_name": "coupon", "mapped_table": [143, "relation_38"], "parent_entity": "promotion", "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": "promotion"}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "max_uses", "type": "INT", "unique_name": "coupon.max_uses", "is_flattened": null, "mapped_table": [143, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "per_user_limit", "type": "INT", "unique_name": "coupon.per_user_limit", "is_flattened": null, "mapped_table": [143, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["coupon", "promotion"], "select_frequency": 3, "select_all_tables": [[143, "relation_38"], [136, "relation_37"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "coupon_code", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 144, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.coupon_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "max_uses", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 145, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.max_uses", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "per_user_limit", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 146, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.per_user_limit", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["warehouse"]}, "name": "Warehouse", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 147, "attributes": ["warehouse.warehouse_id", "warehouse.warehouse_name", "warehouse.region"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "warehouse_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "warehouse_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "region", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Warehouse", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[147, "relation_39"]], "unique_name": "warehouse", "mapped_table": [147, "relation_39"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "warehouse_name", "type": "VARCHAR", "unique_name": "warehouse.warehouse_name", "is_flattened": null, "mapped_table": [147, "relation_39"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "region", "type": "VARCHAR", "unique_name": "warehouse.region", "is_flattened": null, "mapped_table": [147, "relation_39"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_39"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warehouse_id", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 148, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehouse.warehouse_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "warehouse_name", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 149, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.warehouse_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "region", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 150, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.region", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], [["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["warehouse_id", "INTEGER", "warehouse_id"]], []], "reference_node": ["warehouse"], "reference_table": ["relation_39"], "table_key_entities": [["warehouse"], ["warehousebin"]]}, "name": "WarehouseBin", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 151, "attributes": ["warehousebin.bin_id", "warehousebin.code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "bin_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WarehouseBin", "entity_type": null, "parent_entity": "Warehouse"}, "is_no_table": false, "is_subclass": false, "node_tables": [[151, "relation_40"]], "unique_name": "warehousebin", "mapped_table": [151, "relation_40"], "parent_entity": "warehouse", "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": "warehouse"}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "code", "type": "VARCHAR", "unique_name": "warehousebin.code", "is_flattened": null, "mapped_table": [151, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehousebin", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehousebin", "warehouse"], "select_frequency": 2, "select_all_tables": [[151, "relation_40"], [147, "relation_39"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "bin_id", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 152, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehousebin.bin_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "code", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 153, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehousebin.code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["supplier"]}, "name": "Supplier", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 154, "attributes": ["supplier.supplier_id", "supplier.supplier_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "supplier_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "supplier_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Supplier", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[154, "relation_41"]], "unique_name": "supplier", "mapped_table": [154, "relation_41"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "supplier_name", "type": "VARCHAR", "unique_name": "supplier.supplier_name", "is_flattened": null, "mapped_table": [154, "relation_41"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supplier", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["supplier"], "select_frequency": 3, "select_all_tables": [[154, "relation_41"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "supplier_id", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 155, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "supplier.supplier_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "supplier_name", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 156, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supplier.supplier_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["contact_id", "INTEGER", "suppliercontact.contact_id", "contact_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], []], "reference_node": ["supplier"], "reference_table": ["relation_41"], "table_key_entities": [["supplier"], ["suppliercontact"]]}, "name": "SupplierContact", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 157, "attributes": ["suppliercontact.contact_id", "suppliercontact.email", "suppliercontact.phone"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "contact_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "phone", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupplierContact", "entity_type": null, "parent_entity": "Supplier"}, "is_no_table": false, "is_subclass": false, "node_tables": [[157, "relation_42"]], "unique_name": "suppliercontact", "mapped_table": [157, "relation_42"], "parent_entity": "supplier", "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": "supplier"}, {"pk_name": "contact_id", "pk_type": "INTEGER", "pk_ER_name": "contact_id", "pk_entity_name": "suppliercontact", "pk_unique_name": "suppliercontact.contact_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "suppliercontact.email", "is_flattened": null, "mapped_table": [157, "relation_42"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "phone", "type": "VARCHAR", "unique_name": "suppliercontact.phone", "is_flattened": null, "mapped_table": [157, "relation_42"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["suppliercontact", "supplier"], "select_frequency": 3, "select_all_tables": [[157, "relation_42"], [154, "relation_41"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "contact_id", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 158, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "suppliercontact.contact_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 159, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "phone", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 160, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.phone", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["purchaseorder"]}, "name": "PurchaseOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 161, "attributes": ["purchaseorder.purchaseorder_id", "purchaseorder.created_at", "purchaseorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "purchaseorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PurchaseOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[161, "relation_43"]], "unique_name": "purchaseorder", "mapped_table": [161, "relation_43"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "purchaseorder.created_at", "is_flattened": null, "mapped_table": [161, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "purchaseorder.status", "is_flattened": null, "mapped_table": [161, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["purchaseorder"], "select_frequency": 4, "select_all_tables": [[161, "relation_43"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "purchaseorder_id", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 162, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "purchaseorder.purchaseorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 163, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 164, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["courierpartner"]}, "name": "CourierPartner", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 165, "attributes": ["courierpartner.courierpartner_id", "courierpartner.carrier_code", "courierpartner.webhook_url"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "courierpartner_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "carrier_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "webhook_url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CourierPartner", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[165, "relation_44"]], "unique_name": "courierpartner", "mapped_table": [165, "relation_44"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier_code", "type": "VARCHAR", "unique_name": "courierpartner.carrier_code", "is_flattened": null, "mapped_table": [165, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "webhook_url", "type": "VARCHAR", "unique_name": "courierpartner.webhook_url", "is_flattened": null, "mapped_table": [165, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["courierpartner"], "select_frequency": 1, "select_all_tables": [[165, "relation_44"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "courierpartner_id", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 166, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "courierpartner.courierpartner_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier_code", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 167, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.carrier_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "webhook_url", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 168, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.webhook_url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["category_products_category_id", "INTEGER", "category_id", "category_products_category_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["category_id", "INTEGER", "category_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_0"], "table_key_entities": [["product"], ["category"]]}, "name": "category_products", "type": "RELATIONSHIP", "entity1": "category", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Category", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "category_products"}, "sort_key": 169, "attributes": [], "node_tables": [[169, "relation_45"]], "unique_name": "category_products", "mapped_table": [169, "relation_45"], "relation_size": 483, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "category_products_category_id", "pk_type": "INTEGER", "pk_ER_name": "category_products_category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": "category_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "category_id", "pk_reference_node_unique_name": null}], "insert_frequency": 483, "select_all_nodes": ["category_products", "category", "product"], "select_frequency": 1, "select_all_tables": [[1, "relation_0"], [169, "relation_45"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["tag_id", "INTEGER", "tag_id", "tag_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["tag_id", "INTEGER", "tag_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_29"], "table_key_entities": [["product"], ["tag"]]}, "name": "product_tags", "type": "RELATIONSHIP", "entity1": "product", "entity2": "tag", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Tag", "role": null, "total": true}, "attributes": [], "table_name": "product_tags"}, "sort_key": 170, "attributes": [], "node_tables": [[170, "relation_46"]], "unique_name": "product_tags", "mapped_table": [170, "relation_46"], "relation_size": 3172, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": "tag_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "tag_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3172, "select_all_nodes": ["product_tags", "product", "tag"], "select_frequency": 1, "select_all_tables": [[93, "relation_29"], [5, "temp_product"], [170, "relation_46"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["bought_together_product_product_id", "INTEGER", "product_id", "bought_together_product_product_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_1"], "table_key_entities": [["product"], ["product"]]}, "name": "bought_together", "type": "RELATIONSHIP", "entity1": "product", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": "product_id", "total": true}, "entity2": {"one": false, "name": "Product", "role": "bought_together_product_id", "total": true}, "attributes": [], "table_name": "bought_together"}, "sort_key": 171, "attributes": [], "node_tables": [[171, "relation_47"]], "unique_name": "bought_together", "mapped_table": [171, "relation_47"], "relation_size": 4151, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "bought_together_product_product_id", "pk_type": "INTEGER", "pk_ER_name": "bought_together_product_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 4151, "select_all_nodes": ["bought_together", "product", "product"], "select_frequency": 0, "select_all_tables": [[5, "temp_product"], [171, "relation_47"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": ["product_id", "bought_together_product_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_32", "relation_1"], "table_key_entities": [["cart"], ["product"]]}, "name": "cart_contains", "type": "RELATIONSHIP", "entity1": "cart", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Cart", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "cart_contains"}, "sort_key": 172, "attributes": [], "node_tables": [[172, "relation_48"]], "unique_name": "cart_contains", "mapped_table": [172, "relation_48"], "relation_size": 202, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "cart", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 202, "select_all_nodes": ["cart_contains", "cart", "customer", "product"], "select_frequency": 2, "select_all_tables": [[111, "relation_32"], [58, "temp_customer"], [172, "relation_48"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_33", "relation_1"], "table_key_entities": [["wishlist"], ["product"]]}, "name": "wishlist_contains", "type": "RELATIONSHIP", "entity1": "wishlist", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Wishlist", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "wishlist_contains"}, "sort_key": 173, "attributes": [], "node_tables": [[173, "relation_49"]], "unique_name": "wishlist_contains", "mapped_table": [173, "relation_49"], "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "wishlist", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": "wishlist_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "wishlist.wishlist_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["wishlist_contains", "wishlist", "customer", "product"], "select_frequency": 2, "select_all_tables": [[58, "temp_customer"], [113, "relation_33"], [173, "relation_49"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["review_id", "INTEGER", "review.review_id", "review_id"]], [["reviews_product_id", "INTEGER", "product_id", "reviews_product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["review_id", "INTEGER", "review.review_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_34", "relation_1"], "table_key_entities": [["review"], ["product"]]}, "name": "reviews", "type": "RELATIONSHIP", "entity1": "product", "entity2": "review", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Review", "role": null, "total": true}, "attributes": [], "table_name": "reviews"}, "sort_key": 174, "attributes": [], "node_tables": [[174, "relation_50"]], "unique_name": "reviews", "mapped_table": [174, "relation_50"], "relation_size": 47, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "review", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": "review_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "review.review_id", "pk_reference_node_unique_name": null}, {"pk_name": "reviews_product_id", "pk_type": "INTEGER", "pk_ER_name": "reviews_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 47, "select_all_nodes": ["reviews", "product", "review", "customer"], "select_frequency": 1, "select_all_tables": [[58, "temp_customer"], [5, "temp_product"], [174, "relation_50"], [116, "relation_34"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 18, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders_customer_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"]]], "reference_node": [], "reference_table": ["relation_35", "relation_20"], "table_key_entities": [["custorder"], ["customer"]]}, "name": "customer_orders", "type": "RELATIONSHIP", "entity1": "customer", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Customer", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "customer_orders"}, "sort_key": 175, "attributes": [], "node_tables": [[175, "relation_51"]], "unique_name": "customer_orders", "mapped_table": [175, "relation_51"], "relation_size": 71, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "customer_orders_customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_orders_customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}], "insert_frequency": 71, "select_all_nodes": ["customer_orders", "customer", "custorder"], "select_frequency": 5, "select_all_tables": [[58, "temp_customer"], [126, "relation_35"], [175, "relation_51"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_35", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_items", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_items"}, "sort_key": 176, "attributes": [], "node_tables": [[176, "relation_52"]], "unique_name": "order_items", "mapped_table": [176, "relation_52"], "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_items", "custorder", "product"], "select_frequency": 2, "select_all_tables": [[5, "temp_product"], [126, "relation_35"], [176, "relation_52"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["payment_order_customer_id", "INTEGER", "customer_id", "payment_order_customer_id"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order_payment_method_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id"]]], "reference_node": [], "reference_table": ["relation_35", "relation_31"], "table_key_entities": [["custorder"], ["paymentmethod"]]}, "name": "payment_order", "type": "RELATIONSHIP", "entity1": "paymentmethod", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "PaymentMethod", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "payment_order"}, "sort_key": 177, "attributes": [], "node_tables": [[177, "relation_53"]], "unique_name": "payment_order", "mapped_table": [177, "relation_53"], "relation_size": 90, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_customer_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_customer_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": "payment_method_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "paymentmethod.payment_method_id", "pk_reference_node_unique_name": null}], "insert_frequency": 90, "select_all_nodes": ["payment_order", "paymentmethod", "customer", "custorder"], "select_frequency": 2, "select_all_tables": [[58, "temp_customer"], [104, "relation_31"], [126, "relation_35"], [177, "relation_53"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_35", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_returns", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_returns"}, "sort_key": 178, "attributes": [], "node_tables": [[178, "relation_54"]], "unique_name": "order_returns", "mapped_table": [178, "relation_54"], "relation_size": 188, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 188, "select_all_nodes": ["order_returns", "custorder", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [126, "relation_35"], [178, "relation_54"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]], [["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons_custorder_id"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code"]], [["custorder_id", "INTEGER", "custorder_id"]]], "reference_node": [], "reference_table": ["relation_38", "relation_35"], "table_key_entities": [["coupon"], ["custorder"]]}, "name": "order_coupons", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "coupon", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Coupon", "role": null, "total": true}, "attributes": [], "table_name": "order_coupons"}, "sort_key": 179, "attributes": [], "node_tables": [[179, "relation_55"]], "unique_name": "order_coupons", "mapped_table": [179, "relation_55"], "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "coupon", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": null}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": "coupon_code", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "coupon.coupon_code", "pk_reference_node_unique_name": null}, {"pk_name": "order_coupons_custorder_id", "pk_type": "INTEGER", "pk_ER_name": "order_coupons_custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_coupons", "custorder", "coupon", "promotion"], "select_frequency": 1, "select_all_tables": [[179, "relation_55"], [126, "relation_35"], [143, "relation_38"], [136, "relation_37"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_40"], "table_key_entities": [["product"], ["warehousebin"]]}, "name": "stock", "type": "RELATIONSHIP", "entity1": "product", "entity2": "warehousebin", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "WarehouseBin", "role": null, "total": true}, "attributes": [], "table_name": "stock"}, "sort_key": 180, "attributes": [], "node_tables": [[180, "relation_56"]], "unique_name": "stock", "mapped_table": [180, "relation_56"], "relation_size": 3173, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": null}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": "bin_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehousebin.bin_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3173, "select_all_nodes": ["stock", "product", "warehousebin", "warehouse"], "select_frequency": 1, "select_all_tables": [[180, "relation_56"], [5, "temp_product"], [151, "relation_40"], [147, "relation_39"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_41", "relation_1"], "table_key_entities": [["supplier"], ["product"]]}, "name": "supplier_products", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "supplier_products"}, "sort_key": 181, "attributes": [], "node_tables": [[181, "relation_57"]], "unique_name": "supplier_products", "mapped_table": [181, "relation_57"], "relation_size": 159, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 159, "select_all_nodes": ["supplier_products", "supplier", "product"], "select_frequency": 1, "select_all_tables": [[181, "relation_57"], [5, "temp_product"], [154, "relation_41"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos_supplier_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["supplier_id", "INTEGER", "supplier_id"]]], "reference_node": [], "reference_table": ["relation_43", "relation_41"], "table_key_entities": [["purchaseorder"], ["supplier"]]}, "name": "supplier_pos", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "purchaseorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "attributes": [], "table_name": "supplier_pos"}, "sort_key": 182, "attributes": [], "node_tables": [[182, "relation_58"]], "unique_name": "supplier_pos", "mapped_table": [182, "relation_58"], "relation_size": 87, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "supplier_pos_supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_pos_supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}], "insert_frequency": 87, "select_all_nodes": ["supplier_pos", "supplier", "purchaseorder"], "select_frequency": 1, "select_all_tables": [[182, "relation_58"], [161, "relation_43"], [154, "relation_41"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 5, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_43", "relation_1"], "table_key_entities": [["purchaseorder"], ["product"]]}, "name": "po_items", "type": "RELATIONSHIP", "entity1": "purchaseorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "po_items"}, "sort_key": 183, "attributes": [], "node_tables": [[183, "relation_59"]], "unique_name": "po_items", "mapped_table": [183, "relation_59"], "relation_size": 156, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 156, "select_all_nodes": ["po_items", "purchaseorder", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [183, "relation_59"], [161, "relation_43"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]], [["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments_courierpartner_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id"]], [["courierpartner_id", "INTEGER", "courierpartner_id"]]], "reference_node": [], "reference_table": ["relation_36", "relation_44"], "table_key_entities": [["shipment"], ["courierpartner"]]}, "name": "courier_shipments", "type": "RELATIONSHIP", "entity1": "courierpartner", "entity2": "shipment", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CourierPartner", "role": null, "total": true}, "entity2": {"one": false, "name": "Shipment", "role": null, "total": true}, "attributes": [], "table_name": "courier_shipments"}, "sort_key": 184, "attributes": [], "node_tables": [[184, "relation_60"]], "unique_name": "courier_shipments", "mapped_table": [184, "relation_60"], "relation_size": 95, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "shipment", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": "shipment_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "shipment.shipment_id", "pk_reference_node_unique_name": null}, {"pk_name": "courier_shipments_courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courier_shipments_courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": "courierpartner_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "courierpartner_id", "pk_reference_node_unique_name": null}], "insert_frequency": 95, "select_all_nodes": ["courier_shipments", "courierpartner", "shipment", "custorder"], "select_frequency": 2, "select_all_tables": [[184, "relation_60"], [165, "relation_44"], [130, "relation_36"], [126, "relation_35"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 11, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_10", "relation_10"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundle_phones", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundle_phones"}, "sort_key": 185, "attributes": [], "node_tables": [[185, "relation_61"]], "unique_name": "bundle_phones", "mapped_table": [185, "relation_61"], "relation_size": 207, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundle_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundle_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 207, "select_all_nodes": ["bundle_phones", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [5, "relation_1"], [185, "relation_61"], [17, "relation_4"], [32, "relation_10"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "bundle_phone_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], [["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch_phone_id"]]], "reference_key": [[["smartwatch_id", "INTEGER", "smartwatch_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_8", "relation_10"], "table_key_entities": [["smartwatch"], ["phone"]]}, "name": "bundled_phone_smart_watch", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "smartwatch", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": null, "total": true}, "entity2": {"one": false, "name": "Smartwatch", "role": null, "total": true}, "attributes": [], "table_name": "bundled_phone_smart_watch"}, "sort_key": 186, "attributes": [], "node_tables": [[186, "relation_62"]], "unique_name": "bundled_phone_smart_watch", "mapped_table": [186, "relation_62"], "relation_size": 48, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "smartwatch_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "smartwatch_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundled_phone_smart_watch_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundled_phone_smart_watch_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 48, "select_all_nodes": ["bundled_phone_smart_watch", "phone", "smartwatch"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [28, "relation_8"], [5, "relation_1"], [186, "relation_62"], [17, "relation_4"], [32, "relation_10"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "single_bundle_phone_bundled_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_10", "relation_10"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundled_phone", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "single_bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundled_phone"}, "sort_key": 187, "attributes": [], "node_tables": [[187, "relation_63"]], "unique_name": "bundled_phone", "mapped_table": [187, "relation_63"], "relation_size": 12, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "single_bundle_phone_bundled_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "single_bundle_phone_bundled_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 12, "select_all_nodes": ["bundled_phone", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [187, "relation_63"], [5, "relation_1"], [17, "relation_4"], [32, "relation_10"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "single_bundle_phone_id"], "node_type_for_partitioning_options": "1_N_relationship"}], "config": {"tag": "all_by_itself", "cart": "all_by_itself", "user": "all_by_itself", "media": "contained_in_parent", "phone": "partially_by_itself", "stock": "all_by_itself", "camera": "partially_by_itself", "coupon": "all_by_itself", "laptop": "all_by_itself", "review": "all_by_itself", "tablet": "all_by_itself", "address": "all_by_itself", "apparel": "contained_in_parent", "desktop": "contained_in_parent", "product": "all_by_itself", "reviews": "all_by_itself", "category": "all_by_itself", "clothing": "partially_by_itself", "computer": "partially_by_itself", "customer": "all_by_itself", "employee": "contained_in_parent", "engineer": "partially_by_itself", "footwear": "all_by_itself", "po_items": "all_by_itself", "shipment": "all_by_itself", "software": "partially_by_itself", "supplier": "all_by_itself", "wishlist": "all_by_itself", "appliance": "all_by_itself", "custorder": "all_by_itself", "promotion": "all_by_itself", "warehouse": "all_by_itself", "smartwatch": "partially_by_itself", "accessories": "contained_in_parent", "electronics": "partially_by_itself", "menclothing": "partially_by_itself", "order_items": "all_by_itself", "pricehistory": "contained_in_parent", "product_tags": "all_by_itself", "productimage": "contained_in_parent", "supplier_pos": "all_by_itself", "supportagent": "partially_by_itself", "user.mv_user": "all_by_itself", "warehousebin": "all_by_itself", "bundle_phones": "all_by_itself", "bundled_phone": "all_by_itself", "cart_contains": "all_by_itself", "order_coupons": "all_by_itself", "order_returns": "all_by_itself", "payment_order": "all_by_itself", "paymentmethod": "all_by_itself", "primecustomer": "partially_by_itself", "purchaseorder": "all_by_itself", "womenclothing": "all_by_itself", "courierpartner": "all_by_itself", "digitalproduct": "all_by_itself", "productvariant": "contained_in_parent", "bought_together": "all_by_itself", "browsingsession": "contained_in_parent", "categorymanager": "contained_in_parent", "customer_orders": "all_by_itself", "physicalproduct": "contained_in_parent", "suppliercontact": "all_by_itself", "businesscustomer": "all_by_itself", "kitchenappliance": "all_by_itself", "category_products": "all_by_itself", "corporateemployee": "partially_by_itself", "courier_shipments": "all_by_itself", "supplier_products": "all_by_itself", "wishlist_contains": "all_by_itself", "customer.contact_no": "all_by_itself", "fulfillmentassociate": "partially_by_itself", "product.mv_attributes": "all_by_itself", "bundled_phone_smart_watch": "all_by_itself", "primecustomer.subscription_addons": "all_by_itself"}}
\.


--
-- Data for Name: relation_0; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_0 (category_id, category_name, parent) FROM stdin;
1	court	138
2	law	583
3	memory	868
4	anything	822
5	too	783
6	hit	65
7	between	262
8	about	121
9	out	508
10	instead	780
11	almost	461
12	ready	484
13	school	668
14	make	389
15	be	808
16	third	215
17	face	97
18	senior	500
19	positive	30
20	trip	915
21	lawyer	856
22	far	400
23	wife	444
24	ok	623
25	believe	781
26	fly	786
27	national	3
28	article	713
29	able	457
30	nice	273
31	culture	739
32	network	822
33	marriage	235
34	few	606
35	must	968
36	book	105
37	maybe	924
38	join	326
39	use	32
40	mean	23
41	mother	27
42	skin	666
43	enter	555
44	bring	10
45	worker	962
46	to	903
47	unit	391
48	consumer	703
49	join	222
50	fight	993
51	strong	433
52	number	744
53	wish	30
54	property	541
55	natural	228
56	piece	783
57	them	449
58	much	962
59	deal	508
60	office	567
61	city	239
62	miss	354
63	phone	237
64	article	694
65	identify	225
66	until	780
67	Congress	471
68	purpose	976
69	month	297
70	person	949
71	oil	23
72	teacher	427
73	break	858
74	explain	939
75	high	570
76	rise	945
77	catch	658
78	data	103
79	response	191
80	positive	645
81	offer	742
82	although	881
83	rise	304
84	possible	124
85	site	761
86	fear	341
87	store	918
88	share	739
89	class	997
90	shake	729
91	day	513
92	idea	959
93	wife	991
94	wind	433
95	say	520
96	under	850
97	hold	933
98	note	687
99	financial	195
100	those	311
\.


--
-- Data for Name: relation_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_1 (product_id, sku, product_name, base_price, is_active, quantity, dimensions, role, size_system, productimage, productvariant, pricehistory) FROM stdin;
1	simple	want	291	602	997	\N	product	\N	\N	\N	\N
2	population	visit	867	964	518	\N	product	\N	\N	\N	\N
4	data	off	249	762	817	\N	product	\N	\N	\N	\N
5	shoulder	close	425	681	178	\N	product	\N	\N	\N	\N
6	answer	sing	562	904	720	\N	product	\N	\N	\N	\N
7	push	plant	89	450	680	\N	product	\N	\N	\N	\N
8	example	ready	798	168	534	\N	product	\N	\N	\N	\N
9	under	leg	380	502	751	\N	product	\N	\N	\N	\N
10	anyone	style	481	45	316	\N	product	\N	\N	\N	\N
11	her	hard	663	175	173	\N	product	\N	\N	\N	\N
12	action	lot	13	790	205	\N	product	\N	\N	\N	\N
14	religious	challenge	471	932	276	\N	product	\N	\N	\N	\N
15	fly	they	393	803	878	\N	product	\N	\N	\N	\N
16	say	director	532	797	575	\N	product	\N	\N	\N	\N
17	board	rock	437	973	58	\N	product	\N	\N	\N	\N
18	take	oil	891	374	584	\N	product	\N	\N	\N	\N
19	in	culture	964	517	424	\N	product	\N	\N	\N	\N
20	become	become	833	366	425	\N	product	\N	\N	\N	\N
21	former	maybe	2	552	554	\N	product	\N	\N	\N	\N
22	spring	picture	470	615	29	\N	product	\N	\N	\N	\N
24	drive	bed	882	94	818	\N	product	\N	\N	\N	\N
25	maybe	week	34	862	967	\N	product	\N	\N	\N	\N
26	serious	draw	86	889	18	\N	product	\N	\N	\N	\N
27	owner	add	15	773	774	\N	product	\N	\N	\N	\N
28	region	economy	256	276	113	\N	product	\N	\N	\N	\N
29	learn	recognize	353	298	72	\N	product	\N	\N	\N	\N
30	throw	include	164	262	541	\N	product	\N	\N	\N	\N
31	claim	more	673	280	664	\N	product	\N	\N	\N	\N
33	pay	necessary	486	117	25	\N	product	\N	\N	\N	\N
34	fear	go	396	352	432	\N	product	\N	\N	\N	\N
35	anything	safe	265	112	260	\N	product	\N	\N	\N	\N
36	girl	simply	989	621	443	\N	product	\N	\N	\N	\N
37	yard	suffer	231	19	407	\N	product	\N	\N	\N	\N
38	when	see	37	737	983	\N	product	\N	\N	\N	\N
39	strategy	accept	457	722	519	\N	product	\N	\N	\N	\N
40	without	better	558	853	226	\N	product	\N	\N	\N	\N
41	mean	seek	229	537	665	\N	product	\N	\N	\N	\N
43	huge	office	676	647	437	\N	product	\N	\N	\N	\N
44	know	arrive	756	306	129	\N	product	\N	\N	\N	\N
45	maybe	personal	897	49	314	\N	product	\N	\N	\N	\N
46	picture	me	880	79	318	\N	product	\N	\N	\N	\N
47	career	executive	762	163	427	\N	product	\N	\N	\N	\N
48	newspaper	activity	134	9	575	\N	product	\N	\N	\N	\N
49	political	try	605	840	223	\N	product	\N	\N	\N	\N
50	dinner	five	176	848	889	\N	product	\N	\N	\N	\N
51	reveal	authority	388	206	356	\N	product	\N	\N	\N	\N
52	kind	start	211	588	691	\N	product	\N	\N	\N	\N
53	door	nature	606	199	505	\N	product	\N	\N	\N	\N
54	skin	perform	961	682	400	\N	product	\N	\N	\N	\N
57	school	woman	19	161	206	\N	product	\N	\N	\N	\N
58	team	father	831	577	802	\N	product	\N	\N	\N	\N
59	technology	save	348	440	219	\N	product	\N	\N	\N	\N
60	like	Mr	691	99	858	\N	product	\N	\N	\N	\N
61	issue	on	955	561	353	\N	product	\N	\N	\N	\N
62	food	present	787	546	241	\N	product	\N	\N	\N	\N
63	particular	cut	743	42	87	\N	product	\N	\N	\N	\N
64	leader	son	174	171	933	\N	product	\N	\N	\N	\N
65	impact	door	275	778	341	\N	product	\N	\N	\N	\N
66	firm	mean	377	347	349	\N	product	\N	\N	\N	\N
67	six	material	299	241	889	\N	product	\N	\N	\N	\N
68	finish	answer	139	594	565	\N	product	\N	\N	\N	\N
69	herself	will	329	41	417	\N	product	\N	\N	\N	\N
70	century	use	390	887	808	\N	product	\N	\N	\N	\N
71	share	still	849	129	350	\N	product	\N	\N	\N	\N
72	dream	tree	630	602	801	\N	product	\N	\N	\N	\N
73	save	operation	79	585	564	\N	product	\N	\N	\N	\N
74	unit	crime	580	84	976	\N	product	\N	\N	\N	\N
76	seven	age	469	919	284	\N	product	\N	\N	\N	\N
77	common	see	806	47	848	\N	product	\N	\N	\N	\N
78	speech	whatever	13	629	687	\N	product	\N	\N	\N	\N
79	activity	resource	94	424	118	\N	product	\N	\N	\N	\N
80	grow	purpose	193	246	805	\N	product	\N	\N	\N	\N
81	doctor	animal	166	119	462	\N	product	\N	\N	\N	\N
82	growth	night	698	248	163	\N	product	\N	\N	\N	\N
83	certainly	challenge	446	933	988	\N	product	\N	\N	\N	\N
84	investment	assume	826	994	556	\N	product	\N	\N	\N	\N
85	walk	capital	564	260	729	\N	product	\N	\N	\N	\N
86	think	surface	323	103	213	\N	product	\N	\N	\N	\N
87	free	catch	41	28	11	\N	product	\N	\N	\N	\N
88	computer	four	744	611	328	\N	product	\N	\N	\N	\N
89	type	particularly	401	321	409	\N	product	\N	\N	\N	\N
90	community	others	66	936	325	\N	product	\N	\N	\N	\N
91	suddenly	wait	115	257	221	\N	product	\N	\N	\N	\N
92	task	pick	678	365	266	\N	product	\N	\N	\N	\N
93	late	peace	555	213	315	\N	product	\N	\N	\N	\N
94	new	risk	253	370	84	\N	product	\N	\N	\N	\N
95	play	relationship	92	772	459	\N	product	\N	\N	\N	\N
96	between	figure	668	589	659	\N	product	\N	\N	\N	\N
98	doctor	military	43	336	192	\N	product	\N	\N	\N	\N
99	federal	leader	812	868	593	\N	product	\N	\N	\N	\N
100	anyone	machine	252	343	104	\N	product	\N	\N	\N	\N
103	it	recently	747	77	23	artist	physicalproduct	\N	\N	\N	\N
104	meeting	program	298	769	812	push	physicalproduct	\N	\N	\N	\N
105	yourself	pretty	506	481	884	so	physicalproduct	\N	\N	\N	\N
42	field	west	405	692	590	\N	product	\N	\N	[{"barcode": "success", "variant_id": "910", "price_override": "262", "is_active_variant": "476"}]	\N
56	least	child	627	893	412	\N	product	\N	\N	\N	[{"price": "197", "ends_at": "term", "price_id": "760", "starts_at": "sign"}]
102	three	might	412	75	275	necessary	physicalproduct	\N	\N	\N	[{"price": "102", "ends_at": "realize", "price_id": "540", "starts_at": "street"}]
106	movie	pull	104	514	797	huge	physicalproduct	\N	\N	\N	\N
107	away	majority	79	522	973	present	physicalproduct	\N	\N	\N	\N
108	either	alone	184	795	154	yourself	physicalproduct	\N	\N	\N	\N
109	box	director	842	887	328	weight	physicalproduct	\N	\N	\N	\N
110	position	play	110	727	527	because	physicalproduct	\N	\N	\N	\N
112	else	partner	559	933	740	agent	physicalproduct	\N	\N	\N	\N
114	investment	tonight	183	307	444	study	physicalproduct	\N	\N	\N	\N
115	tax	nor	50	732	883	fire	physicalproduct	\N	\N	\N	\N
116	join	real	259	797	66	hospital	physicalproduct	\N	\N	\N	\N
118	nation	clearly	555	450	872	media	physicalproduct	\N	\N	\N	\N
119	design	evening	12	406	857	thought	physicalproduct	\N	\N	\N	\N
120	conference	pattern	176	265	498	whom	physicalproduct	\N	\N	\N	\N
121	pull	must	813	662	956	success	physicalproduct	\N	\N	\N	\N
122	better	real	1000	585	20	thing	physicalproduct	\N	\N	\N	\N
123	right	major	709	364	594	worker	physicalproduct	\N	\N	\N	\N
124	occur	join	608	129	142	share	physicalproduct	\N	\N	\N	\N
125	sister	know	849	284	408	thousand	physicalproduct	\N	\N	\N	\N
126	me	past	177	628	92	from	physicalproduct	\N	\N	\N	\N
128	use	ball	513	915	665	have	physicalproduct	\N	\N	\N	\N
129	prepare	office	953	703	655	hear	physicalproduct	\N	\N	\N	\N
130	toward	message	245	321	507	public	physicalproduct	\N	\N	\N	\N
131	maintain	year	980	231	730	my	physicalproduct	\N	\N	\N	\N
132	evidence	money	346	574	626	attack	physicalproduct	\N	\N	\N	\N
133	officer	space	996	662	225	they	physicalproduct	\N	\N	\N	\N
134	generation	simple	944	74	782	believe	physicalproduct	\N	\N	\N	\N
135	cause	knowledge	164	524	785	evening	physicalproduct	\N	\N	\N	\N
136	especially	by	320	306	710	food	physicalproduct	\N	\N	\N	\N
137	whom	investment	870	566	381	me	physicalproduct	\N	\N	\N	\N
138	person	above	719	719	755	owner	physicalproduct	\N	\N	\N	\N
139	national	race	609	88	877	once	physicalproduct	\N	\N	\N	\N
140	role	wide	919	621	984	moment	physicalproduct	\N	\N	\N	\N
142	great	chair	223	965	584	after	physicalproduct	\N	\N	\N	\N
143	write	wall	507	698	404	take	physicalproduct	\N	\N	\N	\N
144	return	eat	394	528	866	area	physicalproduct	\N	\N	\N	\N
145	difference	goal	558	748	42	recognize	physicalproduct	\N	\N	\N	\N
146	them	attorney	828	262	644	debate	physicalproduct	\N	\N	\N	\N
147	view	issue	274	755	935	capital	physicalproduct	\N	\N	\N	\N
148	and	time	983	999	143	benefit	physicalproduct	\N	\N	\N	\N
150	sing	second	995	872	392	method	physicalproduct	\N	\N	\N	\N
151	too	myself	407	169	932	film	physicalproduct	\N	\N	\N	\N
152	public	sort	449	130	638	back	physicalproduct	\N	\N	\N	\N
153	foreign	strategy	983	218	123	never	physicalproduct	\N	\N	\N	\N
154	election	do	616	547	419	fact	physicalproduct	\N	\N	\N	\N
155	seek	soldier	677	303	285	street	physicalproduct	\N	\N	\N	\N
157	board	tonight	983	195	542	arrive	physicalproduct	\N	\N	\N	\N
158	theory	develop	593	22	32	treat	physicalproduct	\N	\N	\N	\N
159	treat	age	856	267	212	lay	physicalproduct	\N	\N	\N	\N
160	stand	commercial	292	152	556	now	physicalproduct	\N	\N	\N	\N
161	protect	family	280	319	600	identify	physicalproduct	\N	\N	\N	\N
162	of	seat	853	700	458	stay	physicalproduct	\N	\N	\N	\N
163	environment	fund	559	366	503	check	physicalproduct	\N	\N	\N	\N
164	dinner	capital	877	125	788	but	physicalproduct	\N	\N	\N	\N
165	story	data	585	901	393	company	physicalproduct	\N	\N	\N	\N
166	college	reason	291	831	111	that	physicalproduct	\N	\N	\N	\N
167	station	pull	121	583	766	religious	physicalproduct	\N	\N	\N	\N
168	real	light	559	304	989	science	physicalproduct	\N	\N	\N	\N
169	discuss	spend	77	513	383	or	physicalproduct	\N	\N	\N	\N
170	since	understand	448	516	694	economy	physicalproduct	\N	\N	\N	\N
171	rise	it	777	542	332	around	physicalproduct	\N	\N	\N	\N
172	enjoy	difficult	127	453	736	as	physicalproduct	\N	\N	\N	\N
173	cup	control	359	313	553	against	physicalproduct	\N	\N	\N	\N
174	machine	minute	348	802	749	support	physicalproduct	\N	\N	\N	\N
175	ever	operation	116	664	940	try	physicalproduct	\N	\N	\N	\N
176	possible	industry	392	209	571	door	physicalproduct	\N	\N	\N	\N
177	everyone	show	285	651	613	both	physicalproduct	\N	\N	\N	\N
178	often	become	946	473	616	culture	physicalproduct	\N	\N	\N	\N
179	threat	member	960	763	730	accept	physicalproduct	\N	\N	\N	\N
180	political	positive	720	175	461	have	physicalproduct	\N	\N	\N	\N
181	impact	have	369	539	4	control	physicalproduct	\N	\N	\N	\N
182	government	season	594	437	994	score	physicalproduct	\N	\N	\N	\N
183	last	side	345	882	637	state	physicalproduct	\N	\N	\N	\N
184	support	despite	505	764	254	time	physicalproduct	\N	\N	\N	\N
185	something	somebody	645	22	417	teacher	physicalproduct	\N	\N	\N	\N
186	cut	teacher	649	798	960	plant	physicalproduct	\N	\N	\N	\N
187	party	would	802	277	867	miss	physicalproduct	\N	\N	\N	\N
188	live	either	786	76	835	pretty	physicalproduct	\N	\N	\N	\N
189	book	line	358	935	271	reveal	physicalproduct	\N	\N	\N	\N
190	accept	clearly	895	702	558	use	physicalproduct	\N	\N	\N	\N
191	catch	campaign	156	474	853	animal	physicalproduct	\N	\N	\N	\N
192	career	rate	497	174	479	church	physicalproduct	\N	\N	\N	\N
113	here	collection	799	324	841	TV	physicalproduct	\N	\N	\N	[{"price": "102", "ends_at": "matter", "price_id": "140", "starts_at": "reach"}]
193	hit	challenge	278	523	101	training	physicalproduct	\N	\N	\N	\N
194	surface	might	72	364	69	should	physicalproduct	\N	\N	\N	\N
195	everyone	fly	21	169	520	begin	physicalproduct	\N	\N	\N	\N
197	oil	easy	620	312	214	we	physicalproduct	\N	\N	\N	\N
198	each	crime	243	908	342	outside	physicalproduct	\N	\N	\N	\N
199	myself	like	71	77	716	me	physicalproduct	\N	\N	\N	\N
200	book	read	480	524	572	everybody	physicalproduct	\N	\N	\N	\N
302	mission	per	827	291	226	national	electronics	\N	\N	\N	\N
304	edge	control	464	692	376	establish	electronics	\N	\N	\N	\N
305	us	where	494	744	75	top	electronics	\N	\N	\N	\N
306	large	they	207	9	765	population	electronics	\N	\N	\N	\N
307	soon	can	898	499	79	run	electronics	\N	\N	\N	\N
308	pick	effect	904	523	816	lawyer	electronics	\N	\N	\N	\N
309	cut	shoulder	361	872	470	let	electronics	\N	\N	\N	\N
310	quickly	occur	984	307	713	health	electronics	\N	\N	\N	\N
311	onto	gas	123	842	310	security	electronics	\N	\N	\N	\N
312	her	become	796	557	661	serve	electronics	\N	\N	\N	\N
313	agent	book	422	556	963	accept	electronics	\N	\N	\N	\N
314	can	draw	646	596	316	technology	electronics	\N	\N	\N	\N
315	more	also	135	519	455	north	electronics	\N	\N	\N	\N
316	whose	lead	792	998	167	often	electronics	\N	\N	\N	\N
317	exist	three	10	435	754	speak	electronics	\N	\N	\N	\N
318	television	effort	431	412	289	business	electronics	\N	\N	\N	\N
319	process	sense	93	948	93	way	electronics	\N	\N	\N	\N
320	skill	what	276	476	279	two	electronics	\N	\N	\N	\N
321	area	white	768	873	493	sound	electronics	\N	\N	\N	\N
322	grow	law	468	823	120	involve	electronics	\N	\N	\N	\N
323	worker	paper	149	426	152	current	electronics	\N	\N	\N	\N
325	have	also	806	295	973	man	electronics	\N	\N	\N	\N
326	growth	question	962	527	295	section	electronics	\N	\N	\N	\N
327	health	someone	281	444	344	policy	electronics	\N	\N	\N	\N
328	sister	although	733	850	504	computer	electronics	\N	\N	\N	\N
329	stage	remain	436	94	66	much	electronics	\N	\N	\N	\N
330	project	watch	990	154	235	range	electronics	\N	\N	\N	\N
331	nation	brother	260	160	492	effect	electronics	\N	\N	\N	\N
332	significant	finish	666	741	192	a	electronics	\N	\N	\N	\N
333	himself	them	438	627	978	at	electronics	\N	\N	\N	\N
334	compare	oil	224	548	433	and	electronics	\N	\N	\N	\N
335	couple	lose	969	668	993	simple	electronics	\N	\N	\N	\N
336	fish	prevent	567	696	430	look	electronics	\N	\N	\N	\N
337	difference	individual	701	286	184	raise	electronics	\N	\N	\N	\N
339	off	eight	220	694	660	prepare	electronics	\N	\N	\N	\N
340	professor	somebody	400	127	685	down	electronics	\N	\N	\N	\N
341	far	we	699	521	510	season	electronics	\N	\N	\N	\N
342	author	Congress	621	875	491	tell	electronics	\N	\N	\N	\N
343	other	similar	396	629	928	suggest	electronics	\N	\N	\N	\N
345	to	despite	505	649	917	place	electronics	\N	\N	\N	\N
346	white	discover	778	639	346	too	electronics	\N	\N	\N	\N
347	single	finish	9	776	747	customer	electronics	\N	\N	\N	\N
348	yet	along	907	992	726	join	electronics	\N	\N	\N	\N
349	peace	bar	554	641	451	need	electronics	\N	\N	\N	\N
350	decade	relate	926	863	104	difference	electronics	\N	\N	\N	\N
351	show	health	282	277	724	president	electronics	\N	\N	\N	\N
352	similar	attack	152	134	263	within	electronics	\N	\N	\N	\N
353	around	glass	575	646	613	lead	electronics	\N	\N	\N	\N
354	whose	stuff	855	624	522	fly	electronics	\N	\N	\N	\N
355	green	us	424	277	287	show	electronics	\N	\N	\N	\N
356	seek	recognize	314	274	504	Mr	electronics	\N	\N	\N	\N
357	total	success	377	614	482	left	electronics	\N	\N	\N	\N
358	religious	admit	181	621	778	concern	electronics	\N	\N	\N	\N
359	play	will	902	595	711	student	electronics	\N	\N	\N	\N
362	practice	total	638	506	492	claim	electronics	\N	\N	\N	\N
363	policy	cover	131	909	144	whatever	electronics	\N	\N	\N	\N
364	hospital	on	91	651	552	star	electronics	\N	\N	\N	\N
365	stop	case	177	702	119	effect	electronics	\N	\N	\N	\N
366	hope	policy	205	516	582	human	electronics	\N	\N	\N	\N
367	hope	partner	336	5	793	whole	electronics	\N	\N	\N	\N
368	grow	member	313	842	631	task	electronics	\N	\N	\N	\N
369	smile	food	761	230	287	deep	electronics	\N	\N	\N	\N
370	quickly	medical	616	737	531	attention	electronics	\N	\N	\N	\N
371	although	build	125	338	356	environment	electronics	\N	\N	\N	\N
373	thing	start	588	43	356	finally	electronics	\N	\N	\N	\N
375	point	a	276	543	51	with	electronics	\N	\N	\N	\N
376	thank	wonder	81	143	948	open	electronics	\N	\N	\N	\N
377	why	though	957	738	654	represent	electronics	\N	\N	\N	\N
378	leave	new	696	337	281	call	electronics	\N	\N	\N	\N
379	item	impact	910	330	982	personal	electronics	\N	\N	\N	\N
380	more	method	946	823	810	data	electronics	\N	\N	\N	\N
381	skin	letter	950	892	278	think	electronics	\N	\N	\N	\N
382	relate	he	696	591	636	must	electronics	\N	\N	\N	\N
383	market	visit	429	549	957	recent	electronics	\N	\N	\N	\N
384	evidence	save	920	225	648	finish	electronics	\N	\N	\N	\N
360	top	arm	154	60	517	international	electronics	\N	\N	[{"barcode": "bed", "variant_id": "554", "price_override": "352", "is_active_variant": "508"}]	\N
338	former	maintain	813	722	879	home	electronics	\N	\N	\N	[{"price": "484", "ends_at": "each", "price_id": "690", "starts_at": "bill"}]
387	star	job	560	21	257	new	electronics	\N	\N	\N	\N
388	picture	himself	543	269	485	wife	electronics	\N	\N	\N	\N
390	between	group	671	558	372	street	electronics	\N	\N	\N	\N
391	political	difficult	316	457	699	he	electronics	\N	\N	\N	\N
392	finally	international	77	936	594	total	electronics	\N	\N	\N	\N
394	what	person	821	869	786	draw	electronics	\N	\N	\N	\N
395	miss	civil	910	300	164	outside	electronics	\N	\N	\N	\N
396	big	product	815	391	854	effect	electronics	\N	\N	\N	\N
397	scientist	program	121	616	149	assume	electronics	\N	\N	\N	\N
398	me	expert	683	704	819	modern	electronics	\N	\N	\N	\N
399	leave	yet	976	10	942	none	electronics	\N	\N	\N	\N
400	ready	chair	765	576	965	expert	electronics	\N	\N	\N	\N
401	light	address	32	798	443	meet	computer	\N	\N	\N	\N
402	clear	event	380	419	416	guess	computer	\N	\N	\N	\N
404	south	authority	852	114	602	discuss	computer	\N	\N	\N	\N
405	off	help	782	365	565	determine	computer	\N	\N	\N	\N
406	follow	our	931	992	671	in	computer	\N	\N	\N	\N
409	should	arrive	42	939	721	green	computer	\N	\N	\N	\N
410	this	at	745	355	260	music	computer	\N	\N	\N	\N
412	because	leave	350	452	818	report	computer	\N	\N	\N	\N
413	security	number	532	148	58	finally	computer	\N	\N	\N	\N
414	everybody	go	913	526	177	bad	computer	\N	\N	\N	\N
415	ask	nothing	776	728	125	miss	computer	\N	\N	\N	\N
416	officer	boy	215	393	647	fund	computer	\N	\N	\N	\N
417	natural	star	234	103	255	vote	computer	\N	\N	\N	\N
418	into	condition	337	673	252	production	computer	\N	\N	\N	\N
419	size	side	379	505	668	full	computer	\N	\N	\N	\N
420	movement	lose	409	556	124	get	computer	\N	\N	\N	\N
421	fire	throw	860	129	154	picture	computer	\N	\N	\N	\N
422	fear	ability	112	819	27	enough	computer	\N	\N	\N	\N
423	record	respond	470	785	387	letter	computer	\N	\N	\N	\N
424	song	site	158	996	538	beautiful	computer	\N	\N	\N	\N
425	point	investment	20	476	407	study	computer	\N	\N	\N	\N
426	his	people	401	6	558	economy	computer	\N	\N	\N	\N
427	lose	opportunity	163	679	184	green	computer	\N	\N	\N	\N
428	news	important	78	794	550	some	computer	\N	\N	\N	\N
429	thing	red	600	23	526	fill	computer	\N	\N	\N	\N
430	though	even	814	42	959	now	computer	\N	\N	\N	\N
431	resource	big	708	627	670	future	computer	\N	\N	\N	\N
432	after	buy	799	477	122	might	computer	\N	\N	\N	\N
433	claim	pretty	574	97	657	itself	computer	\N	\N	\N	\N
434	few	character	245	797	13	commercial	computer	\N	\N	\N	\N
435	tax	citizen	320	478	285	above	computer	\N	\N	\N	\N
437	beat	yeah	652	460	514	edge	computer	\N	\N	\N	\N
438	film	within	716	405	716	strong	computer	\N	\N	\N	\N
439	member	end	508	837	286	thousand	computer	\N	\N	\N	\N
440	write	every	266	581	287	show	computer	\N	\N	\N	\N
441	ago	hit	637	86	749	data	computer	\N	\N	\N	\N
442	think	onto	147	265	262	it	computer	\N	\N	\N	\N
443	capital	hospital	286	580	479	a	computer	\N	\N	\N	\N
444	assume	value	134	982	259	country	computer	\N	\N	\N	\N
445	house	life	821	594	551	democratic	computer	\N	\N	\N	\N
446	surface	specific	734	893	246	onto	computer	\N	\N	\N	\N
447	budget	condition	401	729	201	business	computer	\N	\N	\N	\N
448	other	population	80	157	806	station	computer	\N	\N	\N	\N
449	pass	it	416	392	428	area	computer	\N	\N	\N	\N
450	born	hard	133	689	552	goal	computer	\N	\N	\N	\N
451	management	key	871	391	143	else	computer	\N	\N	\N	\N
452	old	than	737	407	366	occur	computer	\N	\N	\N	\N
454	ready	particular	91	527	848	college	computer	\N	\N	\N	\N
455	money	language	475	23	298	affect	computer	\N	\N	\N	\N
456	but	nice	773	455	262	operation	computer	\N	\N	\N	\N
457	conference	production	801	324	164	show	computer	\N	\N	\N	\N
458	fly	late	645	842	106	quite	computer	\N	\N	\N	\N
459	notice	ten	649	601	252	office	computer	\N	\N	\N	\N
460	chair	performance	407	125	935	item	computer	\N	\N	\N	\N
462	strong	then	593	261	743	arrive	computer	\N	\N	\N	\N
463	brother	worker	829	207	782	base	computer	\N	\N	\N	\N
464	child	field	559	629	237	national	computer	\N	\N	\N	\N
465	area	establish	172	688	687	specific	computer	\N	\N	\N	\N
466	really	road	991	281	788	half	computer	\N	\N	\N	\N
467	operation	enough	506	101	686	direction	computer	\N	\N	\N	\N
468	opportunity	week	17	465	772	apply	computer	\N	\N	\N	\N
469	majority	owner	404	843	748	interview	computer	\N	\N	\N	\N
471	finally	instead	854	453	194	recent	computer	\N	\N	\N	\N
473	point	story	202	239	369	final	computer	\N	\N	\N	\N
474	the	east	54	470	46	big	computer	\N	\N	\N	\N
475	their	because	875	929	962	people	computer	\N	\N	\N	\N
476	carry	trial	598	514	67	analysis	computer	\N	\N	\N	\N
478	near	wonder	928	361	482	money	computer	\N	\N	\N	\N
386	moment	huge	247	221	919	shake	electronics	\N	\N	[{"barcode": "agency", "variant_id": "228", "price_override": "682", "is_active_variant": "934"}]	\N
411	five	determine	425	386	368	yes	computer	\N	\N	\N	[{"price": "50", "ends_at": "great", "price_id": "77", "starts_at": "seek"}]
436	you	rock	137	576	725	everybody	computer	\N	\N	\N	[{"price": "841", "ends_at": "place", "price_id": "188", "starts_at": "positive"}]
480	including	voice	603	767	325	success	computer	\N	\N	\N	\N
481	media	maintain	570	872	285	price	computer	\N	\N	\N	\N
482	number	letter	807	810	795	major	computer	\N	\N	\N	\N
483	board	city	533	810	25	act	computer	\N	\N	\N	\N
484	edge	green	543	15	104	particularly	computer	\N	\N	\N	\N
485	star	political	378	769	565	bit	computer	\N	\N	\N	\N
486	change	admit	597	76	497	tell	computer	\N	\N	\N	\N
487	blood	what	457	343	513	site	computer	\N	\N	\N	\N
488	teach	magazine	932	333	370	walk	computer	\N	\N	\N	\N
489	other	certainly	595	152	604	score	computer	\N	\N	\N	\N
490	dog	officer	888	521	431	or	computer	\N	\N	\N	\N
491	ask	lose	267	624	378	tough	computer	\N	\N	\N	\N
492	gas	manager	786	646	253	agent	computer	\N	\N	\N	\N
493	go	true	407	564	291	notice	computer	\N	\N	\N	\N
494	agent	indeed	175	927	959	citizen	computer	\N	\N	\N	\N
495	poor	kid	130	290	565	company	computer	\N	\N	\N	\N
496	environment	must	102	284	740	small	computer	\N	\N	\N	\N
497	subject	development	525	309	807	in	computer	\N	\N	\N	\N
498	its	him	77	564	324	wind	computer	\N	\N	\N	\N
499	civil	control	881	529	137	some	computer	\N	\N	\N	\N
500	player	player	373	819	766	election	computer	\N	\N	\N	\N
501	some	computer	428	768	168	approach	desktop	\N	\N	\N	\N
502	scene	teacher	719	680	645	science	desktop	\N	\N	\N	\N
503	direction	my	925	203	239	behavior	desktop	\N	\N	\N	\N
504	case	those	998	601	519	else	desktop	\N	\N	\N	\N
505	establish	with	470	202	801	different	desktop	\N	\N	\N	\N
506	home	physical	468	343	950	run	desktop	\N	\N	\N	\N
507	coach	ago	955	651	10	turn	desktop	\N	\N	\N	\N
508	degree	similar	169	260	921	available	desktop	\N	\N	\N	\N
509	anything	our	784	909	87	red	desktop	\N	\N	\N	\N
511	economy	night	503	519	381	deal	desktop	\N	\N	\N	\N
512	address	budget	670	76	200	although	desktop	\N	\N	\N	\N
513	pick	simply	639	305	979	different	desktop	\N	\N	\N	\N
514	themselves	guess	373	24	500	certainly	desktop	\N	\N	\N	\N
515	against	her	675	641	592	put	desktop	\N	\N	\N	\N
516	training	begin	597	352	348	page	desktop	\N	\N	\N	\N
517	ask	skin	200	719	527	mean	desktop	\N	\N	\N	\N
518	technology	not	853	623	578	natural	desktop	\N	\N	\N	\N
519	take	end	757	590	927	across	desktop	\N	\N	\N	\N
520	blood	special	170	853	275	else	desktop	\N	\N	\N	\N
522	whether	institution	16	620	776	shoulder	desktop	\N	\N	\N	\N
524	finish	left	215	717	488	goal	desktop	\N	\N	\N	\N
525	down	TV	149	394	884	smile	desktop	\N	\N	\N	\N
526	even	day	114	365	893	wall	desktop	\N	\N	\N	\N
528	family	if	333	347	317	art	desktop	\N	\N	\N	\N
529	film	message	84	337	123	newspaper	desktop	\N	\N	\N	\N
530	foot	particular	708	302	983	bed	desktop	\N	\N	\N	\N
531	serve	represent	239	28	986	remain	desktop	\N	\N	\N	\N
532	reduce	control	775	517	768	relationship	desktop	\N	\N	\N	\N
533	card	water	388	431	950	door	desktop	\N	\N	\N	\N
534	skill	maybe	879	76	963	might	desktop	\N	\N	\N	\N
535	employee	animal	238	623	44	gun	desktop	\N	\N	\N	\N
536	top	accept	250	731	405	not	desktop	\N	\N	\N	\N
537	factor	control	156	738	307	grow	desktop	\N	\N	\N	\N
538	large	box	722	704	315	health	desktop	\N	\N	\N	\N
539	manager	alone	692	150	32	less	desktop	\N	\N	\N	\N
540	challenge	set	351	896	821	trouble	desktop	\N	\N	\N	\N
541	grow	drive	619	115	598	push	desktop	\N	\N	\N	\N
542	full	hair	679	283	440	become	desktop	\N	\N	\N	\N
543	note	sound	771	89	655	feeling	desktop	\N	\N	\N	\N
544	information	employee	226	892	621	avoid	desktop	\N	\N	\N	\N
545	their	cold	804	237	56	lawyer	desktop	\N	\N	\N	\N
546	rule	nation	527	524	167	politics	desktop	\N	\N	\N	\N
547	admit	time	50	906	70	suggest	desktop	\N	\N	\N	\N
548	along	fight	64	434	750	color	desktop	\N	\N	\N	\N
549	party	produce	10	36	551	one	desktop	\N	\N	\N	\N
550	thank	receive	20	627	10	finally	desktop	\N	\N	\N	\N
552	expect	together	188	216	401	cold	desktop	\N	\N	\N	\N
554	wait	story	417	123	17	why	desktop	\N	\N	\N	\N
555	government	although	96	780	190	last	desktop	\N	\N	\N	\N
556	piece	arm	312	928	826	word	desktop	\N	\N	\N	\N
558	arrive	outside	454	154	237	pressure	desktop	\N	\N	\N	\N
559	lay	least	985	353	60	eight	desktop	\N	\N	\N	\N
561	level	road	208	56	765	system	desktop	\N	\N	\N	\N
562	type	understand	806	832	761	recent	desktop	\N	\N	\N	\N
563	none	argue	732	259	540	suffer	desktop	\N	\N	\N	\N
564	yes	present	740	34	742	loss	desktop	\N	\N	\N	\N
567	traditional	quality	396	92	437	vote	desktop	\N	\N	\N	\N
569	ready	hour	117	246	75	particular	desktop	\N	\N	\N	\N
571	may	game	380	420	468	position	desktop	\N	\N	\N	\N
572	hospital	difficult	406	982	483	carry	desktop	\N	\N	\N	\N
573	one	tell	310	173	310	war	desktop	\N	\N	\N	\N
574	soldier	move	729	745	154	from	desktop	\N	\N	\N	\N
521	create	either	826	406	622	leader	desktop	\N	\N	[{"barcode": "find", "variant_id": "524", "price_override": "479", "is_active_variant": "504"}]	\N
527	large	alone	555	760	56	art	desktop	\N	\N	[{"barcode": "money", "variant_id": "193", "price_override": "341", "is_active_variant": "197"}]	\N
568	become	training	502	899	352	that	desktop	\N	\N	\N	[{"price": "799", "ends_at": "trouble", "price_id": "826", "starts_at": "charge"}]
576	discover	red	627	260	242	especially	desktop	\N	\N	\N	\N
577	region	maybe	176	284	877	send	desktop	\N	\N	\N	\N
579	either	truth	939	111	866	body	desktop	\N	\N	\N	\N
580	heavy	data	71	702	192	product	desktop	\N	\N	\N	\N
581	space	number	48	744	978	share	desktop	\N	\N	\N	\N
583	wife	stuff	801	516	643	else	desktop	\N	\N	\N	\N
584	assume	exactly	124	190	972	research	desktop	\N	\N	\N	\N
585	explain	perhaps	907	629	729	apply	desktop	\N	\N	\N	\N
586	argue	help	858	869	312	party	desktop	\N	\N	\N	\N
587	out	benefit	251	369	791	for	desktop	\N	\N	\N	\N
589	skin	owner	1000	139	229	husband	desktop	\N	\N	\N	\N
590	single	environmental	273	145	167	quickly	desktop	\N	\N	\N	\N
591	scene	perform	588	523	522	personal	desktop	\N	\N	\N	\N
594	book	outside	284	211	235	really	desktop	\N	\N	\N	\N
596	lead	light	51	803	369	wide	desktop	\N	\N	\N	\N
597	huge	share	695	713	889	prove	desktop	\N	\N	\N	\N
598	court	evidence	660	672	202	direction	desktop	\N	\N	\N	\N
599	really	themselves	708	859	856	material	desktop	\N	\N	\N	\N
600	trade	history	912	492	566	treatment	desktop	\N	\N	\N	\N
801	itself	focus	525	94	910	language	smartwatch	\N	\N	\N	\N
802	gas	television	38	284	863	bar	smartwatch	\N	\N	\N	\N
803	traditional	teach	586	172	441	use	smartwatch	\N	\N	\N	\N
805	sit	wrong	393	29	984	teacher	smartwatch	\N	\N	\N	\N
806	tonight	require	294	266	26	social	smartwatch	\N	\N	\N	\N
807	word	perhaps	641	527	679	option	smartwatch	\N	\N	\N	\N
808	feel	near	301	758	83	four	smartwatch	\N	\N	\N	\N
809	entire	friend	381	409	653	heavy	smartwatch	\N	\N	\N	\N
811	garden	card	501	577	86	campaign	smartwatch	\N	\N	\N	\N
813	cold	something	181	551	489	assume	smartwatch	\N	\N	\N	\N
814	citizen	page	466	895	351	start	smartwatch	\N	\N	\N	\N
815	TV	behavior	991	232	355	explain	smartwatch	\N	\N	\N	\N
817	peace	no	184	238	84	development	smartwatch	\N	\N	\N	\N
819	risk	teacher	836	635	540	research	smartwatch	\N	\N	\N	\N
820	program	expert	858	433	228	community	smartwatch	\N	\N	\N	\N
821	remain	old	532	995	982	newspaper	smartwatch	\N	\N	\N	\N
822	stage	whose	859	42	620	responsibility	smartwatch	\N	\N	\N	\N
823	might	ever	409	524	437	week	smartwatch	\N	\N	\N	\N
824	teacher	material	346	579	948	lawyer	smartwatch	\N	\N	\N	\N
825	challenge	up	484	853	750	audience	smartwatch	\N	\N	\N	\N
826	new	as	919	441	165	someone	smartwatch	\N	\N	\N	\N
827	hard	clear	423	767	493	tonight	smartwatch	\N	\N	\N	\N
829	produce	rich	408	565	386	lead	smartwatch	\N	\N	\N	\N
830	many	range	368	556	558	I	smartwatch	\N	\N	\N	\N
831	through	produce	21	873	674	school	smartwatch	\N	\N	\N	\N
832	put	look	727	898	400	surface	smartwatch	\N	\N	\N	\N
833	draw	your	789	820	603	officer	smartwatch	\N	\N	\N	\N
834	time	current	17	164	841	pressure	smartwatch	\N	\N	\N	\N
835	five	husband	225	156	116	magazine	smartwatch	\N	\N	\N	\N
836	sound	surface	177	70	98	especially	smartwatch	\N	\N	\N	\N
837	off	score	748	671	480	save	smartwatch	\N	\N	\N	\N
840	manager	according	449	114	347	write	smartwatch	\N	\N	\N	\N
841	relate	newspaper	392	959	670	science	smartwatch	\N	\N	\N	\N
842	pick	economic	85	235	838	crime	smartwatch	\N	\N	\N	\N
843	big	capital	358	438	442	unit	smartwatch	\N	\N	\N	\N
844	lose	treatment	273	192	155	great	smartwatch	\N	\N	\N	\N
845	talk	behind	986	361	991	suddenly	smartwatch	\N	\N	\N	\N
846	of	floor	647	608	813	company	smartwatch	\N	\N	\N	\N
847	site	best	925	994	182	short	smartwatch	\N	\N	\N	\N
848	project	culture	737	937	862	whatever	smartwatch	\N	\N	\N	\N
849	study	situation	210	489	970	environment	smartwatch	\N	\N	\N	\N
850	news	mind	632	541	934	everybody	smartwatch	\N	\N	\N	\N
851	buy	customer	209	307	176	pick	smartwatch	\N	\N	\N	\N
852	buy	probably	410	436	501	difference	smartwatch	\N	\N	\N	\N
853	cause	responsibility	799	35	545	crime	smartwatch	\N	\N	\N	\N
857	north	power	349	84	607	consider	smartwatch	\N	\N	\N	\N
858	short	street	143	940	869	while	smartwatch	\N	\N	\N	\N
859	make	age	181	94	9	road	smartwatch	\N	\N	\N	\N
860	begin	small	188	286	199	health	smartwatch	\N	\N	\N	\N
861	little	conference	731	555	524	fish	smartwatch	\N	\N	\N	\N
862	maybe	task	997	881	943	stage	smartwatch	\N	\N	\N	\N
863	finish	surface	394	890	108	apply	smartwatch	\N	\N	\N	\N
864	response	culture	248	73	745	theory	smartwatch	\N	\N	\N	\N
865	do	responsibility	703	619	28	participant	smartwatch	\N	\N	\N	\N
866	American	catch	58	298	354	right	smartwatch	\N	\N	\N	\N
867	media	my	636	450	325	he	smartwatch	\N	\N	\N	\N
810	fall	another	828	695	484	often	smartwatch	\N	\N	[{"barcode": "moment", "variant_id": "869", "price_override": "343", "is_active_variant": "478"}]	\N
582	particular	church	754	986	375	government	desktop	\N	\N	[{"barcode": "money", "variant_id": "151", "price_override": "185", "is_active_variant": "192"}]	\N
804	cost	speak	454	748	250	but	smartwatch	\N	\N	\N	[{"price": "482", "ends_at": "that", "price_id": "716", "starts_at": "current"}]
839	simply	gun	760	658	213	world	smartwatch	\N	\N	\N	[{"price": "811", "ends_at": "operation", "price_id": "7", "starts_at": "young"}]
856	cost	look	611	880	347	thus	smartwatch	\N	\N	\N	[{"price": "738", "ends_at": "strong", "price_id": "134", "starts_at": "style"}]
868	from	either	546	324	942	treatment	smartwatch	\N	\N	\N	\N
869	network	sing	968	778	750	at	smartwatch	\N	\N	\N	\N
870	interview	sure	833	700	458	lay	smartwatch	\N	\N	\N	\N
871	over	find	416	754	127	newspaper	smartwatch	\N	\N	\N	\N
872	Democrat	himself	937	957	794	plant	smartwatch	\N	\N	\N	\N
874	social	forward	42	147	951	language	smartwatch	\N	\N	\N	\N
876	figure	discover	584	481	741	worry	smartwatch	\N	\N	\N	\N
877	degree	son	831	610	263	call	smartwatch	\N	\N	\N	\N
878	hear	campaign	904	401	553	walk	smartwatch	\N	\N	\N	\N
879	drop	establish	150	332	175	part	smartwatch	\N	\N	\N	\N
880	approach	wish	592	949	937	attack	smartwatch	\N	\N	\N	\N
881	north	party	917	658	81	church	smartwatch	\N	\N	\N	\N
882	instead	federal	402	501	747	last	smartwatch	\N	\N	\N	\N
883	attention	blood	642	758	298	share	smartwatch	\N	\N	\N	\N
884	yeah	myself	649	959	276	again	smartwatch	\N	\N	\N	\N
885	hand	night	128	262	989	drive	smartwatch	\N	\N	\N	\N
886	mother	soon	123	854	688	point	smartwatch	\N	\N	\N	\N
887	myself	value	970	155	478	many	smartwatch	\N	\N	\N	\N
888	power	teacher	244	43	231	current	smartwatch	\N	\N	\N	\N
889	watch	free	835	955	99	skin	smartwatch	\N	\N	\N	\N
890	of	end	674	117	45	contain	smartwatch	\N	\N	\N	\N
892	cause	same	863	818	932	indeed	smartwatch	\N	\N	\N	\N
893	police	heart	814	629	640	between	smartwatch	\N	\N	\N	\N
894	senior	seat	550	588	502	foot	smartwatch	\N	\N	\N	\N
895	land	degree	849	620	408	election	smartwatch	\N	\N	\N	\N
898	exactly	fine	462	90	1	capital	smartwatch	\N	\N	\N	\N
899	have	act	288	562	313	feel	smartwatch	\N	\N	\N	\N
900	mouth	bill	393	121	832	tree	smartwatch	\N	\N	\N	\N
901	allow	heart	657	682	798	now	camera	\N	\N	\N	\N
902	benefit	mission	907	764	962	wear	camera	\N	\N	\N	\N
903	course	begin	727	458	97	myself	camera	\N	\N	\N	\N
905	future	trip	842	217	337	cultural	camera	\N	\N	\N	\N
907	word	election	495	368	657	kid	camera	\N	\N	\N	\N
908	order	reduce	352	438	922	arm	camera	\N	\N	\N	\N
909	star	protect	55	541	303	stop	camera	\N	\N	\N	\N
912	lay	give	144	438	784	hit	camera	\N	\N	\N	\N
914	likely	activity	437	415	146	oil	camera	\N	\N	\N	\N
915	its	wear	843	531	683	half	camera	\N	\N	\N	\N
917	reveal	difficult	258	581	773	only	camera	\N	\N	\N	\N
918	current	two	264	946	494	senior	camera	\N	\N	\N	\N
919	big	animal	932	961	858	six	camera	\N	\N	\N	\N
920	risk	team	266	659	931	us	camera	\N	\N	\N	\N
921	little	realize	705	378	705	democratic	camera	\N	\N	\N	\N
922	big	account	785	195	109	himself	camera	\N	\N	\N	\N
923	door	sea	348	587	338	yes	camera	\N	\N	\N	\N
927	thing	investment	903	355	792	probably	camera	\N	\N	\N	\N
928	place	opportunity	109	609	544	he	camera	\N	\N	\N	\N
929	many	several	773	231	792	herself	camera	\N	\N	\N	\N
930	pretty	piece	434	409	637	develop	camera	\N	\N	\N	\N
931	budget	hospital	157	749	602	end	camera	\N	\N	\N	\N
932	card	free	486	687	956	police	camera	\N	\N	\N	\N
933	religious	land	420	940	803	rest	camera	\N	\N	\N	\N
934	might	shake	676	505	221	site	camera	\N	\N	\N	\N
935	side	clear	798	38	882	worry	camera	\N	\N	\N	\N
936	oil	sport	143	258	843	risk	camera	\N	\N	\N	\N
937	year	owner	447	342	534	include	camera	\N	\N	\N	\N
938	interesting	candidate	41	319	515	idea	camera	\N	\N	\N	\N
939	one	Mrs	271	164	297	reason	camera	\N	\N	\N	\N
940	huge	protect	343	998	153	from	camera	\N	\N	\N	\N
941	place	they	690	453	964	color	camera	\N	\N	\N	\N
942	especially	region	917	908	393	hope	camera	\N	\N	\N	\N
943	health	water	211	995	953	participant	camera	\N	\N	\N	\N
944	example	you	764	313	42	tell	camera	\N	\N	\N	\N
945	opportunity	recent	979	633	642	bank	camera	\N	\N	\N	\N
946	remain	heavy	11	353	248	medical	camera	\N	\N	\N	\N
948	old	benefit	20	669	455	community	camera	\N	\N	\N	\N
949	state	will	828	902	764	into	camera	\N	\N	\N	\N
950	option	will	632	850	215	feel	camera	\N	\N	\N	\N
951	view	than	169	45	40	conference	camera	\N	\N	\N	\N
952	win	indeed	978	555	701	fact	camera	\N	\N	\N	\N
953	group	foot	447	932	52	smile	camera	\N	\N	\N	\N
954	center	entire	602	590	499	position	camera	\N	\N	\N	\N
955	forward	people	691	92	345	can	camera	\N	\N	\N	\N
956	center	ability	184	800	967	former	camera	\N	\N	\N	\N
957	raise	few	855	973	497	wonder	camera	\N	\N	\N	\N
958	sell	build	430	695	405	later	camera	\N	\N	\N	\N
959	range	poor	2	289	34	newspaper	camera	\N	\N	\N	\N
960	enter	car	185	634	259	decision	camera	\N	\N	\N	\N
962	person	treatment	837	261	562	produce	camera	\N	\N	\N	\N
963	family	front	690	409	565	area	camera	\N	\N	\N	\N
925	system	center	283	792	362	interesting	camera	\N	\N	[{"barcode": "involve", "variant_id": "796", "price_override": "177", "is_active_variant": "606"}]	\N
911	wear	individual	263	893	2	treat	camera	\N	\N	[{"barcode": "worker", "variant_id": "844", "price_override": "598", "is_active_variant": "101"}]	\N
897	environment	few	16	828	590	now	smartwatch	\N	\N	\N	[{"price": "750", "ends_at": "special", "price_id": "921", "starts_at": "hundred"}]
910	yet	edge	235	857	754	change	camera	\N	\N	\N	[{"price": "259", "ends_at": "name", "price_id": "371", "starts_at": "whatever"}]
891	program	together	151	835	356	teach	smartwatch	\N	\N	\N	[{"price": "635", "ends_at": "recent", "price_id": "56", "starts_at": "house"}]
965	two	real	263	166	613	animal	camera	\N	\N	\N	\N
966	drop	art	800	719	697	middle	camera	\N	\N	\N	\N
967	drug	recognize	740	24	226	yard	camera	\N	\N	\N	\N
969	go	major	818	989	792	nor	camera	\N	\N	\N	\N
970	look	effort	940	799	406	successful	camera	\N	\N	\N	\N
971	serious	level	228	94	627	cell	camera	\N	\N	\N	\N
972	field	call	343	873	682	hold	camera	\N	\N	\N	\N
973	happy	eight	611	262	841	travel	camera	\N	\N	\N	\N
974	people	allow	300	635	264	music	camera	\N	\N	\N	\N
977	different	daughter	23	108	224	kitchen	camera	\N	\N	\N	\N
979	argue	easy	398	269	264	strong	camera	\N	\N	\N	\N
981	age	authority	737	509	962	not	camera	\N	\N	\N	\N
982	into	third	872	376	416	trip	camera	\N	\N	\N	\N
983	head	statement	294	937	287	president	camera	\N	\N	\N	\N
984	national	themselves	157	804	595	hear	camera	\N	\N	\N	\N
986	section	season	214	465	885	wrong	camera	\N	\N	\N	\N
987	hot	country	346	864	5	same	camera	\N	\N	\N	\N
988	ground	road	836	893	930	only	camera	\N	\N	\N	\N
989	certain	camera	376	956	624	note	camera	\N	\N	\N	\N
990	cause	ten	760	443	883	court	camera	\N	\N	\N	\N
991	eight	add	99	83	980	item	camera	\N	\N	\N	\N
992	family	job	936	375	583	student	camera	\N	\N	\N	\N
993	evening	fast	127	860	895	able	camera	\N	\N	\N	\N
994	in	mention	623	206	116	writer	camera	\N	\N	\N	\N
997	shake	hotel	830	789	888	glass	camera	\N	\N	\N	\N
998	suffer	year	966	496	577	plant	camera	\N	\N	\N	\N
999	sure	machine	204	697	256	character	camera	\N	\N	\N	\N
1001	certain	beyond	293	852	853	painting	phone	\N	\N	\N	\N
1002	play	something	956	320	673	sound	phone	\N	\N	\N	\N
1003	in	foreign	69	736	161	discover	phone	\N	\N	\N	\N
1004	light	often	784	830	134	skin	phone	\N	\N	\N	\N
1005	notice	carry	198	945	783	edge	phone	\N	\N	\N	\N
1006	recent	better	427	222	801	want	phone	\N	\N	\N	\N
1008	thank	scene	511	249	209	pass	phone	\N	\N	\N	\N
1009	hand	article	156	251	922	same	phone	\N	\N	\N	\N
1010	here	reveal	629	718	983	near	phone	\N	\N	\N	\N
1011	notice	low	266	990	67	attack	phone	\N	\N	\N	\N
1014	evening	call	130	568	604	alone	phone	\N	\N	\N	\N
1015	share	interest	906	446	760	leave	phone	\N	\N	\N	\N
1016	father	job	230	455	692	car	phone	\N	\N	\N	\N
1018	new	player	940	50	377	only	phone	\N	\N	\N	\N
1019	floor	I	680	738	478	score	phone	\N	\N	\N	\N
1020	hotel	fast	160	469	206	management	phone	\N	\N	\N	\N
1021	her	low	289	613	214	method	phone	\N	\N	\N	\N
1022	past	like	226	290	109	your	phone	\N	\N	\N	\N
1023	card	today	233	867	435	decision	phone	\N	\N	\N	\N
1024	party	particularly	858	308	505	push	phone	\N	\N	\N	\N
1025	husband	indeed	209	652	716	strong	phone	\N	\N	\N	\N
1026	stuff	identify	765	307	637	across	phone	\N	\N	\N	\N
1027	manage	sister	13	777	468	of	phone	\N	\N	\N	\N
1028	other	also	250	664	108	free	phone	\N	\N	\N	\N
1029	course	grow	53	757	392	single	phone	\N	\N	\N	\N
1031	marriage	class	497	378	563	head	phone	\N	\N	\N	\N
1033	most	real	986	244	531	majority	phone	\N	\N	\N	\N
1034	arm	these	643	45	989	eye	phone	\N	\N	\N	\N
1035	rich	may	859	324	37	real	phone	\N	\N	\N	\N
1036	project	wear	862	720	183	company	phone	\N	\N	\N	\N
1037	center	effort	148	258	517	summer	phone	\N	\N	\N	\N
1038	agree	edge	96	525	127	mind	phone	\N	\N	\N	\N
1039	blood	local	970	393	859	choose	phone	\N	\N	\N	\N
1040	deal	anything	216	39	543	movie	phone	\N	\N	\N	\N
1041	media	thus	987	493	977	even	phone	\N	\N	\N	\N
1042	stop	whether	243	202	543	adult	phone	\N	\N	\N	\N
1043	way	place	713	306	952	pressure	phone	\N	\N	\N	\N
1044	customer	against	860	824	791	power	phone	\N	\N	\N	\N
1045	may	despite	926	929	219	agree	phone	\N	\N	\N	\N
1046	star	herself	993	789	584	ago	phone	\N	\N	\N	\N
1047	watch	eight	38	639	323	will	phone	\N	\N	\N	\N
1048	take	seven	541	667	183	believe	phone	\N	\N	\N	\N
1049	summer	skill	83	420	739	fact	phone	\N	\N	\N	\N
1050	marriage	develop	558	45	811	chance	phone	\N	\N	\N	\N
1051	line	while	959	684	955	movie	phone	\N	\N	\N	\N
1052	security	employee	766	196	915	leg	phone	\N	\N	\N	\N
1055	agree	though	855	984	641	must	phone	\N	\N	\N	\N
1056	event	concern	457	816	863	loss	phone	\N	\N	\N	\N
1057	ask	physical	717	178	307	it	phone	\N	\N	\N	\N
1058	example	win	338	934	341	music	phone	\N	\N	\N	\N
1059	join	necessary	42	53	983	use	phone	\N	\N	\N	\N
1060	several	school	187	616	474	discover	phone	\N	\N	\N	\N
1061	avoid	agree	731	38	273	government	phone	\N	\N	\N	\N
1062	phone	seven	68	736	656	run	phone	\N	\N	\N	\N
1053	feel	eye	862	823	88	Democrat	phone	\N	\N	[{"barcode": "spring", "variant_id": "554", "price_override": "896", "is_active_variant": "613"}]	\N
1000	activity	church	996	967	571	floor	camera	\N	\N	[{"barcode": "nation", "variant_id": "364", "price_override": "352", "is_active_variant": "554"}]	\N
1030	garden	group	855	18	527	field	phone	\N	\N	\N	[{"price": "260", "ends_at": "approach", "price_id": "648", "starts_at": "up"}]
1032	represent	or	950	661	609	choice	phone	\N	\N	\N	[{"price": "858", "ends_at": "state", "price_id": "918", "starts_at": "can"}]
1063	street	step	933	886	13	head	phone	\N	\N	\N	\N
1064	recent	push	424	356	277	travel	phone	\N	\N	\N	\N
1065	light	require	396	114	313	occur	phone	\N	\N	\N	\N
1066	special	image	255	235	531	exist	phone	\N	\N	\N	\N
1067	long	through	271	11	6	simply	phone	\N	\N	\N	\N
1068	cut	many	487	726	783	Congress	phone	\N	\N	\N	\N
1070	purpose	cultural	613	951	866	it	phone	\N	\N	\N	\N
1071	probably	ready	660	892	564	trip	phone	\N	\N	\N	\N
1072	treatment	range	411	143	626	total	phone	\N	\N	\N	\N
1074	baby	phone	794	35	611	list	phone	\N	\N	\N	\N
1075	debate	financial	361	8	921	alone	phone	\N	\N	\N	\N
1076	company	cover	856	9	66	form	phone	\N	\N	\N	\N
1077	majority	each	734	444	732	evidence	phone	\N	\N	\N	\N
1078	thank	respond	702	137	402	door	phone	\N	\N	\N	\N
1079	leg	use	369	803	459	very	phone	\N	\N	\N	\N
1081	south	head	319	236	712	big	phone	\N	\N	\N	\N
1082	least	speech	62	803	8	claim	phone	\N	\N	\N	\N
1083	morning	as	475	3	1000	recent	phone	\N	\N	\N	\N
1084	popular	story	729	402	825	imagine	phone	\N	\N	\N	\N
1085	attack	air	608	873	865	issue	phone	\N	\N	\N	\N
1087	media	prevent	925	940	339	himself	phone	\N	\N	\N	\N
1088	stop	protect	125	955	823	quickly	phone	\N	\N	\N	\N
1090	move	beautiful	795	723	85	often	phone	\N	\N	\N	\N
1091	attorney	on	365	966	915	hope	phone	\N	\N	\N	\N
1092	section	finish	633	105	363	commercial	phone	\N	\N	\N	\N
1093	involve	subject	896	948	506	listen	phone	\N	\N	\N	\N
1094	listen	campaign	442	224	65	policy	phone	\N	\N	\N	\N
1095	significant	across	650	258	337	mind	phone	\N	\N	\N	\N
1096	any	production	378	596	335	type	phone	\N	\N	\N	\N
1097	without	along	636	614	667	generation	phone	\N	\N	\N	\N
1098	conference	example	915	422	356	song	phone	\N	\N	\N	\N
1099	strong	entire	710	123	459	ready	phone	\N	\N	\N	\N
1100	on	late	231	977	312	practice	phone	\N	\N	\N	\N
1101	onto	suddenly	975	695	144	I	accessories	\N	\N	\N	\N
1102	during	suggest	723	522	631	politics	accessories	\N	\N	\N	\N
1103	medical	result	864	594	318	physical	accessories	\N	\N	\N	\N
1104	score	doctor	114	273	654	institution	accessories	\N	\N	\N	\N
1108	police	high	299	763	385	state	accessories	\N	\N	\N	\N
1109	ahead	writer	448	133	702	anything	accessories	\N	\N	\N	\N
1110	anything	avoid	499	65	605	audience	accessories	\N	\N	\N	\N
1111	our	car	534	190	64	oil	accessories	\N	\N	\N	\N
1112	hot	rule	20	356	244	car	accessories	\N	\N	\N	\N
1113	best	offer	540	540	666	job	accessories	\N	\N	\N	\N
1116	table	seven	160	881	562	wear	accessories	\N	\N	\N	\N
1117	against	story	26	146	558	hospital	accessories	\N	\N	\N	\N
1118	chair	better	370	341	749	total	accessories	\N	\N	\N	\N
1119	everything	staff	262	900	996	four	accessories	\N	\N	\N	\N
1120	magazine	friend	609	891	44	top	accessories	\N	\N	\N	\N
1122	million	real	952	308	692	art	accessories	\N	\N	\N	\N
1123	as	system	813	395	495	election	accessories	\N	\N	\N	\N
1124	eat	already	123	600	977	health	accessories	\N	\N	\N	\N
1125	later	fight	109	435	76	one	accessories	\N	\N	\N	\N
1126	these	later	646	10	252	wide	accessories	\N	\N	\N	\N
1127	name	fish	73	968	218	thus	accessories	\N	\N	\N	\N
1129	speech	let	714	572	587	option	accessories	\N	\N	\N	\N
1130	before	third	474	386	86	responsibility	accessories	\N	\N	\N	\N
1131	season	part	992	309	740	subject	accessories	\N	\N	\N	\N
1132	green	resource	738	303	835	long	accessories	\N	\N	\N	\N
1133	hard	trouble	658	622	946	discussion	accessories	\N	\N	\N	\N
1134	over	either	865	873	746	product	accessories	\N	\N	\N	\N
1135	drug	Mr	253	944	506	professional	accessories	\N	\N	\N	\N
1136	fish	some	275	486	506	both	accessories	\N	\N	\N	\N
1137	serve	everything	113	608	740	could	accessories	\N	\N	\N	\N
1138	this	but	706	458	398	theory	accessories	\N	\N	\N	\N
1139	myself	concern	64	964	747	movie	accessories	\N	\N	\N	\N
1140	practice	home	719	700	396	political	accessories	\N	\N	\N	\N
1141	whole	off	539	146	820	along	accessories	\N	\N	\N	\N
1142	huge	cultural	525	730	164	forward	accessories	\N	\N	\N	\N
1143	job	ground	795	218	778	stop	accessories	\N	\N	\N	\N
1144	score	story	947	318	309	red	accessories	\N	\N	\N	\N
1145	concern	two	22	725	463	trade	accessories	\N	\N	\N	\N
1146	per	event	691	593	354	nor	accessories	\N	\N	\N	\N
1147	than	case	373	877	224	source	accessories	\N	\N	\N	\N
1148	maintain	training	685	473	592	agreement	accessories	\N	\N	\N	\N
1149	protect	capital	278	704	639	note	accessories	\N	\N	\N	\N
1150	agent	whom	284	889	455	chance	accessories	\N	\N	\N	\N
1151	voice	do	965	334	459	financial	accessories	\N	\N	\N	\N
1152	protect	oil	841	912	859	couple	accessories	\N	\N	\N	\N
1153	when	story	926	934	328	pass	accessories	\N	\N	\N	\N
1154	difference	movement	161	261	726	training	accessories	\N	\N	\N	\N
1156	space	police	231	140	74	clearly	accessories	\N	\N	\N	\N
1157	suddenly	book	480	617	745	left	accessories	\N	\N	\N	\N
1086	land	family	741	224	166	thus	phone	\N	\N	[{"barcode": "grow", "variant_id": "222", "price_override": "1", "is_active_variant": "52"}]	\N
1073	serious	different	133	141	623	over	phone	\N	\N	\N	[{"price": "9", "ends_at": "gas", "price_id": "626", "starts_at": "point"}]
1069	summer	strategy	909	906	359	money	phone	\N	\N	\N	[{"price": "651", "ends_at": "often", "price_id": "285", "starts_at": "always"}]
1158	price	accept	816	945	226	number	accessories	\N	\N	\N	\N
1159	war	just	401	275	9	when	accessories	\N	\N	\N	\N
1160	near	decision	124	760	442	level	accessories	\N	\N	\N	\N
1162	Democrat	bed	63	679	764	relationship	accessories	\N	\N	\N	\N
1163	management	theory	918	792	170	paper	accessories	\N	\N	\N	\N
1164	sister	sound	444	114	949	hear	accessories	\N	\N	\N	\N
1166	thing	two	822	463	33	author	accessories	\N	\N	\N	\N
1167	instead	far	573	643	218	make	accessories	\N	\N	\N	\N
1168	production	your	768	281	173	threat	accessories	\N	\N	\N	\N
1169	herself	list	347	569	837	exactly	accessories	\N	\N	\N	\N
1170	suddenly	film	713	37	132	national	accessories	\N	\N	\N	\N
1172	hundred	subject	300	28	773	institution	accessories	\N	\N	\N	\N
1173	dark	throw	557	654	628	author	accessories	\N	\N	\N	\N
1175	surface	kind	633	522	880	traditional	accessories	\N	\N	\N	\N
1176	black	space	128	895	589	beat	accessories	\N	\N	\N	\N
1178	yeah	exactly	600	34	848	radio	accessories	\N	\N	\N	\N
1179	see	eye	889	556	327	next	accessories	\N	\N	\N	\N
1180	huge	most	131	484	483	federal	accessories	\N	\N	\N	\N
1181	base	necessary	647	528	104	tend	accessories	\N	\N	\N	\N
1182	will	draw	565	529	303	no	accessories	\N	\N	\N	\N
1183	brother	mention	921	911	434	peace	accessories	\N	\N	\N	\N
1184	future	service	941	360	832	approach	accessories	\N	\N	\N	\N
1186	himself	anyone	677	104	892	just	accessories	\N	\N	\N	\N
1187	me	gas	326	163	893	community	accessories	\N	\N	\N	\N
1190	responsibility	stand	473	834	513	much	accessories	\N	\N	\N	\N
1191	that	effort	373	536	789	society	accessories	\N	\N	\N	\N
1193	easy	use	180	316	182	drop	accessories	\N	\N	\N	\N
1194	quickly	decide	880	794	138	business	accessories	\N	\N	\N	\N
1195	civil	however	469	810	142	reduce	accessories	\N	\N	\N	\N
1196	building	close	497	519	562	free	accessories	\N	\N	\N	\N
1197	research	kitchen	626	655	766	eat	accessories	\N	\N	\N	\N
1198	over	international	980	662	517	decide	accessories	\N	\N	\N	\N
1199	significant	page	287	489	129	man	accessories	\N	\N	\N	\N
1200	stuff	attention	37	977	956	first	accessories	\N	\N	\N	\N
1401	where	past	204	202	186	forward	apparel	where	\N	\N	\N
1403	night	material	402	643	817	executive	apparel	voice	\N	\N	\N
1405	true	choose	912	958	408	father	apparel	central	\N	\N	\N
1406	number	while	920	833	977	see	apparel	next	\N	\N	\N
1407	perhaps	who	619	366	237	step	apparel	firm	\N	\N	\N
1408	join	yes	810	853	554	pattern	apparel	message	\N	\N	\N
1410	not	food	948	396	153	tonight	apparel	Democrat	\N	\N	\N
1413	ahead	but	219	642	7	for	apparel	consumer	\N	\N	\N
1414	commercial	effort	952	1000	664	language	apparel	themselves	\N	\N	\N
1415	series	chair	879	471	292	door	apparel	area	\N	\N	\N
1416	too	growth	537	772	936	morning	apparel	western	\N	\N	\N
1417	consider	resource	767	80	619	any	apparel	thousand	\N	\N	\N
1418	tax	argue	874	208	969	soldier	apparel	reality	\N	\N	\N
1419	option	day	910	32	447	tree	apparel	kitchen	\N	\N	\N
1420	blue	somebody	176	451	975	democratic	apparel	walk	\N	\N	\N
1421	account	charge	54	458	634	popular	apparel	prepare	\N	\N	\N
1422	deep	hour	725	294	593	attention	apparel	stay	\N	\N	\N
1423	likely	behind	995	557	968	prepare	apparel	yard	\N	\N	\N
1424	now	site	250	117	464	at	apparel	hand	\N	\N	\N
1425	speech	somebody	236	527	325	pretty	apparel	director	\N	\N	\N
1426	expect	take	687	314	959	significant	apparel	doctor	\N	\N	\N
1428	care	large	118	19	979	major	apparel	evening	\N	\N	\N
1430	stay	price	59	336	163	total	apparel	week	\N	\N	\N
1431	international	report	36	31	268	pull	apparel	machine	\N	\N	\N
1432	man	production	32	743	299	in	apparel	budget	\N	\N	\N
1433	share	without	738	740	613	soon	apparel	key	\N	\N	\N
1434	range	study	346	602	92	commercial	apparel	owner	\N	\N	\N
1435	practice	company	180	360	736	officer	apparel	magazine	\N	\N	\N
1436	heart	hair	805	379	148	listen	apparel	senior	\N	\N	\N
1437	receive	owner	199	937	473	charge	apparel	inside	\N	\N	\N
1438	respond	meeting	459	356	630	be	apparel	friend	\N	\N	\N
1440	low	thought	91	749	320	last	apparel	resource	\N	\N	\N
1441	affect	large	84	125	602	stand	apparel	soldier	\N	\N	\N
1442	wait	enter	946	256	570	evidence	apparel	we	\N	\N	\N
1443	especially	provide	793	905	936	minute	apparel	look	\N	\N	\N
1444	very	see	829	932	128	add	apparel	who	\N	\N	\N
1446	check	daughter	969	140	794	experience	apparel	create	\N	\N	\N
1429	happy	sure	937	380	514	rich	apparel	certain	\N	[{"barcode": "table", "variant_id": "478", "price_override": "491", "is_active_variant": "507"}]	\N
1165	leg	such	663	326	315	all	accessories	\N	\N	[{"barcode": "happen", "variant_id": "268", "price_override": "697", "is_active_variant": "561"}]	\N
1427	voice	worker	273	656	430	send	apparel	result	\N	[{"barcode": "war", "variant_id": "564", "price_override": "688", "is_active_variant": "590"}]	\N
1439	best	experience	253	239	98	follow	apparel	discuss	\N	\N	[{"price": "74", "ends_at": "entire", "price_id": "785", "starts_at": "significant"}]
1161	report	knowledge	687	309	706	common	accessories	\N	\N	\N	[{"price": "460", "ends_at": "real", "price_id": "172", "starts_at": "cost"}]
1447	case	guy	856	82	445	particularly	apparel	total	\N	\N	\N
1448	box	lay	391	158	585	law	apparel	most	\N	\N	\N
1449	sea	lose	948	309	263	letter	apparel	face	\N	\N	\N
1450	through	onto	880	396	121	soon	apparel	sure	\N	\N	\N
1451	will	field	912	676	369	vote	apparel	go	\N	\N	\N
1452	adult	into	494	675	920	later	apparel	likely	\N	\N	\N
1454	force	various	154	643	275	six	apparel	address	\N	\N	\N
1455	surface	here	976	653	201	fear	apparel	grow	\N	\N	\N
1456	issue	wrong	949	677	413	wide	apparel	policy	\N	\N	\N
1457	consumer	peace	330	828	111	safe	apparel	prepare	\N	\N	\N
1459	find	former	647	333	578	son	apparel	part	\N	\N	\N
1460	off	writer	57	727	470	production	apparel	lose	\N	\N	\N
1461	physical	contain	466	511	522	main	apparel	represent	\N	\N	\N
1462	apply	month	822	880	285	beautiful	apparel	word	\N	\N	\N
1464	his	age	996	326	229	show	apparel	different	\N	\N	\N
1465	high	include	321	202	778	likely	apparel	majority	\N	\N	\N
1466	these	usually	875	426	217	hour	apparel	middle	\N	\N	\N
1469	beyond	tax	143	404	355	moment	apparel	decide	\N	\N	\N
1470	than	fine	617	150	750	product	apparel	air	\N	\N	\N
1472	security	know	773	988	205	again	apparel	name	\N	\N	\N
1473	fund	win	485	388	791	billion	apparel	seven	\N	\N	\N
1474	owner	attorney	259	571	993	vote	apparel	tree	\N	\N	\N
1478	four	just	102	417	117	ever	apparel	sense	\N	\N	\N
1479	process	late	414	936	55	be	apparel	most	\N	\N	\N
1480	their	factor	84	962	578	back	apparel	head	\N	\N	\N
1481	feel	north	228	925	346	not	apparel	training	\N	\N	\N
1482	end	send	626	696	676	very	apparel	east	\N	\N	\N
1484	near	possible	248	420	141	generation	apparel	high	\N	\N	\N
1485	garden	full	700	942	411	occur	apparel	key	\N	\N	\N
1486	blue	a	253	193	582	class	apparel	who	\N	\N	\N
1487	line	choice	581	348	192	thus	apparel	inside	\N	\N	\N
1488	or	should	925	790	214	arm	apparel	mother	\N	\N	\N
1490	true	claim	884	550	775	account	apparel	well	\N	\N	\N
1491	can	during	358	676	725	know	apparel	might	\N	\N	\N
1492	have	read	939	234	359	minute	apparel	no	\N	\N	\N
1493	keep	bar	74	231	930	go	apparel	traditional	\N	\N	\N
1494	training	shake	132	366	642	behind	apparel	hit	\N	\N	\N
1495	probably	maintain	95	475	528	learn	apparel	do	\N	\N	\N
1496	tell	American	387	797	270	base	apparel	share	\N	\N	\N
1497	own	board	469	479	681	production	apparel	resource	\N	\N	\N
1498	live	fund	270	721	967	be	apparel	meeting	\N	\N	\N
1499	four	our	804	964	541	minute	apparel	radio	\N	\N	\N
1500	personal	hotel	434	948	243	past	apparel	represent	\N	\N	\N
1501	than	plan	721	477	824	girl	clothing	fund	\N	\N	\N
1502	test	modern	452	533	771	mission	clothing	process	\N	\N	\N
1503	full	about	149	826	736	its	clothing	difference	\N	\N	\N
1504	during	network	806	709	102	customer	clothing	one	\N	\N	\N
1505	here	could	280	374	230	all	clothing	last	\N	\N	\N
1507	time	consider	855	716	40	nature	clothing	offer	\N	\N	\N
1508	tax	house	399	545	362	education	clothing	with	\N	\N	\N
1509	possible	story	678	835	865	measure	clothing	when	\N	\N	\N
1510	happen	style	310	522	267	one	clothing	tend	\N	\N	\N
1511	ability	site	85	55	107	sure	clothing	medical	\N	\N	\N
1512	side	wish	761	318	942	picture	clothing	experience	\N	\N	\N
1514	bad	movie	252	286	95	space	clothing	fly	\N	\N	\N
1515	actually	recent	402	697	519	office	clothing	seek	\N	\N	\N
1516	team	necessary	300	620	498	suggest	clothing	machine	\N	\N	\N
1517	point	if	423	230	718	money	clothing	list	\N	\N	\N
1518	camera	answer	494	125	528	skin	clothing	city	\N	\N	\N
1519	street	past	867	583	769	account	clothing	yes	\N	\N	\N
1520	city	six	33	84	331	theory	clothing	choose	\N	\N	\N
1521	lay	myself	881	454	93	candidate	clothing	sign	\N	\N	\N
1522	morning	everything	906	34	452	agency	clothing	value	\N	\N	\N
1523	two	which	88	703	483	option	clothing	share	\N	\N	\N
1524	foot	two	813	905	52	again	clothing	ok	\N	\N	\N
1525	on	would	507	129	707	black	clothing	newspaper	\N	\N	\N
1527	action	deep	622	257	558	way	clothing	easy	\N	\N	\N
1528	officer	place	612	915	94	ready	clothing	lead	\N	\N	\N
1529	wonder	article	35	239	965	room	clothing	trade	\N	\N	\N
1530	join	thus	877	23	770	miss	clothing	mean	\N	\N	\N
1531	while	seem	43	136	342	safe	clothing	suggest	\N	\N	\N
1532	development	say	569	824	846	effect	clothing	yet	\N	\N	\N
1533	control	answer	617	798	462	short	clothing	name	\N	\N	\N
1534	sit	car	336	212	438	art	clothing	along	\N	\N	\N
1535	hope	party	66	390	931	certain	clothing	world	\N	\N	\N
1536	room	gun	856	803	5	picture	clothing	dark	\N	\N	\N
1506	real	leader	986	456	367	natural	clothing	report	\N	[{"barcode": "avoid", "variant_id": "591", "price_override": "390", "is_active_variant": "268"}]	\N
1489	relate	may	54	952	526	break	apparel	marriage	\N	[{"barcode": "gas", "variant_id": "288", "price_override": "404", "is_active_variant": "340"}]	\N
1477	set	election	149	175	626	company	apparel	Democrat	\N	\N	[{"price": "592", "ends_at": "order", "price_id": "386", "starts_at": "allow"}]
1513	live	field	438	571	600	around	clothing	his	\N	\N	[{"price": "938", "ends_at": "site", "price_id": "447", "starts_at": "I"}]
1475	within	compare	542	773	537	friend	apparel	activity	\N	\N	[{"price": "705", "ends_at": "all", "price_id": "291", "starts_at": "once"}]
1537	keep	cold	310	749	837	appear	clothing	cost	\N	\N	\N
1538	newspaper	hotel	581	592	388	agree	clothing	plan	\N	\N	\N
1539	food	box	996	401	78	example	clothing	turn	\N	\N	\N
1540	prove	hope	864	250	65	professional	clothing	watch	\N	\N	\N
1541	camera	space	881	871	540	operation	clothing	quickly	\N	\N	\N
1542	leave	yourself	567	873	319	hard	clothing	gun	\N	\N	\N
1543	these	with	148	506	497	any	clothing	cold	\N	\N	\N
1544	thought	national	154	561	120	determine	clothing	return	\N	\N	\N
1545	number	significant	275	556	804	term	clothing	without	\N	\N	\N
1546	paper	experience	509	641	679	about	clothing	old	\N	\N	\N
1548	training	concern	453	280	855	protect	clothing	join	\N	\N	\N
1549	great	consumer	607	979	804	born	clothing	way	\N	\N	\N
1550	in	wish	723	926	407	police	clothing	although	\N	\N	\N
1551	whether	feeling	23	221	563	already	clothing	again	\N	\N	\N
1552	half	all	253	625	689	green	clothing	unit	\N	\N	\N
1553	chance	compare	992	444	571	conference	clothing	be	\N	\N	\N
1555	debate	low	878	662	340	poor	clothing	claim	\N	\N	\N
1557	itself	so	563	87	523	fact	clothing	point	\N	\N	\N
1558	attack	into	63	308	653	score	clothing	north	\N	\N	\N
1559	win	thank	601	909	727	send	clothing	friend	\N	\N	\N
1560	executive	their	888	910	357	finally	clothing	stop	\N	\N	\N
1561	fact	lead	381	788	211	major	clothing	particularly	\N	\N	\N
1562	could	why	628	596	512	item	clothing	standard	\N	\N	\N
1563	brother	city	183	391	3	expect	clothing	use	\N	\N	\N
1564	thing	mention	18	272	375	purpose	clothing	agency	\N	\N	\N
1565	history	scene	417	675	194	hotel	clothing	have	\N	\N	\N
1566	movie	will	429	914	678	to	clothing	different	\N	\N	\N
1567	special	three	426	585	389	father	clothing	specific	\N	\N	\N
1569	individual	structure	837	643	213	interesting	clothing	itself	\N	\N	\N
1570	poor	investment	59	299	151	main	clothing	yard	\N	\N	\N
1571	option	government	625	369	189	go	clothing	instead	\N	\N	\N
1572	national	newspaper	168	915	525	agent	clothing	discussion	\N	\N	\N
1573	there	ability	512	879	661	artist	clothing	executive	\N	\N	\N
1574	understand	above	929	459	188	firm	clothing	shoulder	\N	\N	\N
1575	work	experience	274	359	454	prevent	clothing	management	\N	\N	\N
1576	green	born	587	722	45	rock	clothing	could	\N	\N	\N
1578	machine	great	246	832	767	fight	clothing	total	\N	\N	\N
1579	major	you	849	964	897	direction	clothing	general	\N	\N	\N
1580	ask	together	734	934	241	politics	clothing	who	\N	\N	\N
1581	back	specific	864	802	910	first	clothing	pass	\N	\N	\N
1582	wonder	economic	901	421	826	choose	clothing	capital	\N	\N	\N
1583	onto	last	470	526	693	camera	clothing	first	\N	\N	\N
1584	these	morning	48	239	228	former	clothing	yeah	\N	\N	\N
1585	star	out	434	127	558	tax	clothing	central	\N	\N	\N
1586	team	water	780	427	953	claim	clothing	billion	\N	\N	\N
1587	catch	turn	525	391	616	experience	clothing	popular	\N	\N	\N
1588	because	husband	97	816	208	law	clothing	million	\N	\N	\N
1589	possible	indicate	401	214	559	exactly	clothing	finish	\N	\N	\N
1590	worry	race	443	539	860	there	clothing	car	\N	\N	\N
1591	news	morning	771	384	656	change	clothing	condition	\N	\N	\N
1592	television	this	386	652	961	million	clothing	sense	\N	\N	\N
1593	away	style	521	815	976	a	clothing	base	\N	\N	\N
1594	of	full	321	877	181	smile	clothing	can	\N	\N	\N
1595	become	mention	680	815	556	area	clothing	first	\N	\N	\N
1597	exactly	drug	88	261	699	perform	clothing	say	\N	\N	\N
1598	resource	else	759	229	505	quite	clothing	common	\N	\N	\N
1599	Democrat	now	882	35	959	kitchen	clothing	run	\N	\N	\N
1600	structure	draw	353	412	945	wrong	clothing	turn	\N	\N	\N
1601	air	road	427	210	56	few	menclothing	article	\N	\N	\N
1602	skill	doctor	940	238	155	bring	menclothing	to	\N	\N	\N
1603	brother	then	958	345	675	but	menclothing	assume	\N	\N	\N
1604	get	national	626	993	596	control	menclothing	career	\N	\N	\N
1605	scene	other	436	691	309	whom	menclothing	figure	\N	\N	\N
1606	leg	even	753	321	266	suggest	menclothing	he	\N	\N	\N
1607	it	local	465	404	984	process	menclothing	agency	\N	\N	\N
1608	heart	I	40	593	797	still	menclothing	be	\N	\N	\N
1609	surface	nation	819	796	698	huge	menclothing	process	\N	\N	\N
1610	worry	dinner	676	641	140	three	menclothing	parent	\N	\N	\N
1611	movement	get	361	902	148	staff	menclothing	man	\N	\N	\N
1612	line	television	773	409	257	product	menclothing	alone	\N	\N	\N
1613	meeting	western	427	324	887	foot	menclothing	fund	\N	\N	\N
1614	leader	person	327	71	212	partner	menclothing	sound	\N	\N	\N
1615	help	issue	216	410	630	hundred	menclothing	south	\N	\N	\N
1616	somebody	clearly	694	653	480	finally	menclothing	growth	\N	\N	\N
1617	along	social	116	142	832	long	menclothing	also	\N	\N	\N
1618	training	author	940	115	396	federal	menclothing	successful	\N	\N	\N
1619	energy	agreement	479	791	495	involve	menclothing	increase	\N	\N	\N
1620	clearly	record	166	773	6	about	menclothing	political	\N	\N	\N
1621	when	person	977	58	971	several	menclothing	kid	\N	\N	\N
1622	allow	anyone	140	774	512	three	menclothing	capital	\N	\N	\N
1623	far	relationship	207	871	745	view	menclothing	produce	\N	\N	\N
1556	treatment	talk	744	951	206	do	clothing	thought	\N	[{"barcode": "rock", "variant_id": "697", "price_override": "863", "is_active_variant": "30"}]	\N
1577	admit	voice	667	223	876	picture	clothing	garden	\N	\N	[{"price": "852", "ends_at": "sign", "price_id": "490", "starts_at": "probably"}]
1624	poor	American	618	63	349	different	menclothing	serve	\N	\N	\N
1625	century	method	491	288	764	participant	menclothing	tonight	\N	\N	\N
1626	person	fall	562	510	518	tax	menclothing	popular	\N	\N	\N
1627	common	so	938	50	159	deep	menclothing	live	\N	\N	\N
1628	add	compare	11	859	315	late	menclothing	sound	\N	\N	\N
1629	occur	daughter	711	74	189	beautiful	menclothing	act	\N	\N	\N
1630	tax	plan	386	297	523	claim	menclothing	six	\N	\N	\N
1631	difficult	response	293	142	175	like	menclothing	political	\N	\N	\N
1633	look	about	887	830	460	red	menclothing	spring	\N	\N	\N
1634	pull	until	521	200	719	performance	menclothing	take	\N	\N	\N
1635	contain	brother	211	621	386	those	menclothing	discuss	\N	\N	\N
1636	listen	pay	994	365	676	full	menclothing	tell	\N	\N	\N
1638	management	drop	91	162	506	story	menclothing	remain	\N	\N	\N
1640	avoid	score	42	710	494	popular	menclothing	force	\N	\N	\N
1641	none	wrong	365	354	356	most	menclothing	if	\N	\N	\N
1642	generation	yard	797	557	137	start	menclothing	fly	\N	\N	\N
1644	easy	improve	971	246	264	soon	menclothing	part	\N	\N	\N
1645	language	save	548	923	475	key	menclothing	soldier	\N	\N	\N
1646	seven	else	645	454	997	candidate	menclothing	determine	\N	\N	\N
1649	face	war	293	575	706	show	menclothing	out	\N	\N	\N
1650	career	couple	196	895	606	though	menclothing	nothing	\N	\N	\N
1651	Congress	evening	823	759	715	sort	menclothing	hard	\N	\N	\N
1652	price	approach	250	659	496	hot	menclothing	begin	\N	\N	\N
1653	reveal	Republican	372	456	317	third	menclothing	official	\N	\N	\N
1654	carry	two	977	881	60	he	menclothing	hope	\N	\N	\N
1656	fish	food	484	248	875	read	menclothing	party	\N	\N	\N
1657	join	now	846	36	15	together	menclothing	take	\N	\N	\N
1658	two	house	917	470	838	table	menclothing	few	\N	\N	\N
1659	page	great	788	440	249	prepare	menclothing	phone	\N	\N	\N
1660	increase	thus	181	107	249	country	menclothing	few	\N	\N	\N
1662	parent	any	211	440	944	receive	menclothing	affect	\N	\N	\N
1663	she	song	928	508	773	board	menclothing	matter	\N	\N	\N
1664	part	alone	816	966	314	during	menclothing	toward	\N	\N	\N
1665	hard	American	647	478	143	treatment	menclothing	reach	\N	\N	\N
1666	member	majority	321	807	319	daughter	menclothing	necessary	\N	\N	\N
1667	significant	company	37	305	202	shake	menclothing	marriage	\N	\N	\N
1668	travel	culture	476	515	741	remember	menclothing	series	\N	\N	\N
1669	win	gun	773	4	321	energy	menclothing	father	\N	\N	\N
1670	image	husband	114	67	437	interest	menclothing	woman	\N	\N	\N
1671	pass	green	259	44	144	memory	menclothing	staff	\N	\N	\N
1672	marriage	determine	384	801	352	cut	menclothing	none	\N	\N	\N
1673	treatment	than	929	184	886	rich	menclothing	prevent	\N	\N	\N
1674	cup	professional	480	861	335	challenge	menclothing	later	\N	\N	\N
1676	event	leader	167	637	437	everything	menclothing	can	\N	\N	\N
1677	he	apply	113	320	924	federal	menclothing	suddenly	\N	\N	\N
1678	natural	nature	628	471	997	bill	menclothing	oil	\N	\N	\N
1679	describe	writer	604	966	446	own	menclothing	board	\N	\N	\N
1680	plant	out	655	144	760	four	menclothing	daughter	\N	\N	\N
1681	just	city	32	572	717	short	menclothing	friend	\N	\N	\N
1682	which	century	585	615	552	trip	menclothing	reflect	\N	\N	\N
1683	generation	player	245	46	921	fight	menclothing	these	\N	\N	\N
1684	goal	benefit	424	827	701	power	menclothing	strategy	\N	\N	\N
1685	only	international	264	584	358	surface	menclothing	some	\N	\N	\N
1686	page	investment	529	375	581	job	menclothing	offer	\N	\N	\N
1687	move	investment	185	438	228	police	menclothing	society	\N	\N	\N
1688	attack	short	836	997	647	training	menclothing	situation	\N	\N	\N
1689	price	seek	674	260	744	approach	menclothing	each	\N	\N	\N
1690	little	put	68	632	266	alone	menclothing	stop	\N	\N	\N
1691	staff	property	526	792	35	like	menclothing	religious	\N	\N	\N
1692	gas	you	490	946	494	page	menclothing	last	\N	\N	\N
1693	dog	sit	868	95	690	here	menclothing	among	\N	\N	\N
1694	success	machine	52	586	596	myself	menclothing	exactly	\N	\N	\N
1695	live	national	293	68	569	surface	menclothing	career	\N	\N	\N
1697	never	total	698	737	444	budget	menclothing	three	\N	\N	\N
1698	interview	sound	649	965	727	program	menclothing	hundred	\N	\N	\N
1699	mind	kind	621	961	797	class	menclothing	force	\N	\N	\N
1700	light	could	683	943	989	source	menclothing	inside	\N	\N	\N
344	raise	play	534	264	427	catch	electronics	\N	[{"url": "politics", "alt_text": "fast", "image_id": "659", "sort_order": "221"}]	\N	\N
875	blue	catch	718	628	421	decision	smartwatch	\N	[{"url": "yeah", "alt_text": "medical", "image_id": "754", "sort_order": "843"}]	\N	\N
1637	out	training	788	46	689	then	menclothing	painting	\N	[{"barcode": "forget", "variant_id": "542", "price_override": "513", "is_active_variant": "386"}]	\N
1639	run	cost	361	918	317	unit	menclothing	safe	\N	[{"barcode": "teacher", "variant_id": "196", "price_override": "354", "is_active_variant": "862"}]	\N
1632	building	popular	955	521	240	enjoy	menclothing	these	\N	\N	[{"price": "399", "ends_at": "across", "price_id": "382", "starts_at": "popular"}]
1661	prepare	care	312	236	26	green	menclothing	let	\N	\N	[{"price": "394", "ends_at": "become", "price_id": "199", "starts_at": "reflect"}]
557	process	audience	322	900	744	visit	desktop	\N	[{"url": "house", "alt_text": "land", "image_id": "588", "sort_order": "868"}]	\N	\N
1155	wall	rise	864	31	691	top	accessories	\N	[{"url": "board", "alt_text": "gun", "image_id": "499", "sort_order": "925"}]	\N	\N
361	cold	wife	707	139	661	big	electronics	\N	[{"url": "relate", "alt_text": "smile", "image_id": "796", "sort_order": "714"}]	\N	\N
1547	mean	TV	148	152	324	participant	clothing	pressure	[{"url": "glass", "alt_text": "office", "image_id": "132", "sort_order": "928"}]	\N	\N
964	although	job	305	3	745	year	camera	\N	[{"url": "energy", "alt_text": "quality", "image_id": "405", "sort_order": "997"}]	\N	\N
1655	professional	interview	162	140	55	writer	menclothing	major	[{"url": "western", "alt_text": "indeed", "image_id": "38", "sort_order": "31"}]	\N	\N
55	guy	thousand	517	512	18	\N	product	\N	[{"url": "everyone", "alt_text": "garden", "image_id": "473", "sort_order": "593"}]	\N	\N
156	also	put	388	768	573	conference	physicalproduct	\N	[{"url": "lead", "alt_text": "against", "image_id": "694", "sort_order": "769"}]	\N	\N
1554	character	defense	85	30	797	nearly	clothing	finish	[{"url": "education", "alt_text": "rate", "image_id": "260", "sort_order": "499"}]	\N	\N
1013	yourself	race	581	481	444	myself	phone	\N	[{"url": "around", "alt_text": "else", "image_id": "324", "sort_order": "67"}]	\N	\N
1471	ball	law	783	989	703	opportunity	apparel	couple	[{"url": "act", "alt_text": "behind", "image_id": "330", "sort_order": "892"}]	\N	\N
385	onto	prepare	137	56	615	interview	electronics	\N	[{"url": "official", "alt_text": "thought", "image_id": "143", "sort_order": "439"}]	\N	\N
1596	price	American	979	195	77	share	clothing	speak	[{"url": "father", "alt_text": "trip", "image_id": "5", "sort_order": "231"}]	\N	\N
372	opportunity	source	257	921	789	other	electronics	\N	[{"url": "away", "alt_text": "relate", "image_id": "272", "sort_order": "415"}]	\N	\N
570	scene	stay	546	312	943	million	desktop	\N	[{"url": "very", "alt_text": "focus", "image_id": "478", "sort_order": "460"}]	\N	\N
1115	debate	east	225	967	523	cut	accessories	\N	[{"url": "surface", "alt_text": "heart", "image_id": "673", "sort_order": "580"}]	\N	\N
595	body	company	214	22	168	establish	desktop	\N	[{"url": "western", "alt_text": "positive", "image_id": "903", "sort_order": "221"}, {"url": "movement", "alt_text": "message", "image_id": "578", "sort_order": "194"}]	\N	\N
855	wish	knowledge	406	455	523	policy	smartwatch	\N	[{"url": "third", "alt_text": "rich", "image_id": "383", "sort_order": "745"}]	\N	\N
101	law	morning	251	226	21	rate	physicalproduct	\N	[{"url": "million", "alt_text": "happen", "image_id": "595", "sort_order": "38"}]	\N	\N
560	model	interest	813	234	681	author	desktop	\N	[{"url": "or", "alt_text": "several", "image_id": "267", "sort_order": "782"}]	\N	\N
1648	stage	computer	28	436	397	ready	menclothing	decision	[{"url": "simply", "alt_text": "street", "image_id": "511", "sort_order": "120"}]	\N	\N
1647	service	order	504	721	500	management	menclothing	computer	[{"url": "its", "alt_text": "number", "image_id": "100", "sort_order": "859"}]	\N	\N
453	teacher	him	727	148	357	difference	computer	\N	[{"url": "store", "alt_text": "than", "image_id": "936", "sort_order": "353"}]	\N	\N
1468	these	course	904	398	30	participant	apparel	road	[{"url": "evidence", "alt_text": "indeed", "image_id": "174", "sort_order": "581"}]	\N	\N
1409	beautiful	memory	466	638	129	central	apparel	employee	[{"url": "she", "alt_text": "mention", "image_id": "207", "sort_order": "338"}]	\N	\N
1476	future	whether	25	998	391	artist	apparel	event	[{"url": "memory", "alt_text": "without", "image_id": "848", "sort_order": "792"}]	\N	\N
1412	stage	scientist	897	147	193	far	apparel	protect	[{"url": "meeting", "alt_text": "cultural", "image_id": "175", "sort_order": "906"}]	\N	\N
924	traditional	edge	809	708	264	room	camera	\N	[{"url": "lose", "alt_text": "kitchen", "image_id": "227", "sort_order": "762"}]	\N	\N
1054	audience	ball	11	292	217	team	phone	\N	[{"url": "write", "alt_text": "protect", "image_id": "341", "sort_order": "681"}]	\N	\N
510	of	place	541	206	215	receive	desktop	\N	[{"url": "Mr", "alt_text": "they", "image_id": "128", "sort_order": "143"}]	\N	\N
324	time	energy	834	267	377	gas	electronics	\N	[{"url": "million", "alt_text": "specific", "image_id": "135", "sort_order": "573"}]	\N	\N
75	upon	view	374	913	303	\N	product	\N	[{"url": "popular", "alt_text": "style", "image_id": "52", "sort_order": "392"}]	\N	\N
976	here	politics	225	792	881	wall	camera	\N	[{"url": "decision", "alt_text": "that", "image_id": "133", "sort_order": "348"}]	\N	\N
565	dream	side	334	359	366	imagine	desktop	\N	[{"url": "paper", "alt_text": "catch", "image_id": "399", "sort_order": "150"}]	\N	\N
1453	several	stand	909	218	601	our	apparel	often	[{"url": "argue", "alt_text": "newspaper", "image_id": "89", "sort_order": "765"}]	\N	\N
947	last	claim	961	730	247	admit	camera	\N	[{"url": "carry", "alt_text": "discuss", "image_id": "88", "sort_order": "522"}]	\N	\N
1568	field	half	176	599	855	kid	clothing	week	[{"url": "owner", "alt_text": "fight", "image_id": "998", "sort_order": "910"}]	\N	\N
812	son	firm	20	286	38	process	smartwatch	\N	[{"url": "billion", "alt_text": "board", "image_id": "593", "sort_order": "454"}]	\N	\N
551	those	detail	273	303	596	could	desktop	\N	[{"url": "guy", "alt_text": "person", "image_id": "935", "sort_order": "970"}]	\N	\N
1192	there	effect	179	858	696	entire	accessories	\N	[{"url": "want", "alt_text": "by", "image_id": "538", "sort_order": "791"}]	\N	\N
1174	pull	nature	553	847	476	skin	accessories	\N	[{"url": "bill", "alt_text": "voice", "image_id": "18", "sort_order": "601"}]	\N	\N
1411	computer	result	352	257	855	necessary	apparel	clearly	[{"url": "yes", "alt_text": "drug", "image_id": "72", "sort_order": "576"}]	\N	[{"price": "299", "ends_at": "something", "price_id": "667", "starts_at": "test"}]
828	kind	religious	356	959	725	single	smartwatch	\N	[{"url": "feel", "alt_text": "television", "image_id": "313", "sort_order": "647"}]	\N	\N
588	call	agree	298	715	583	fall	desktop	\N	[{"url": "behavior", "alt_text": "reveal", "image_id": "427", "sort_order": "945"}]	\N	\N
1107	thing	all	56	145	505	agent	accessories	\N	[{"url": "upon", "alt_text": "a", "image_id": "837", "sort_order": "554"}]	\N	\N
1121	ten	let	690	470	39	already	accessories	\N	[{"url": "professional", "alt_text": "manage", "image_id": "840", "sort_order": "48"}]	\N	\N
896	seven	beyond	543	877	73	region	smartwatch	\N	[{"url": "technology", "alt_text": "help", "image_id": "652", "sort_order": "369"}]	\N	\N
32	kind	describe	466	720	330	\N	product	\N	\N	[{"barcode": "director", "variant_id": "170", "price_override": "968", "is_active_variant": "843"}]	\N
97	public	spend	964	233	400	\N	product	\N	\N	[{"barcode": "leader", "variant_id": "559", "price_override": "176", "is_active_variant": "921"}]	\N
1080	physical	course	906	487	191	one	phone	\N	\N	[{"barcode": "black", "variant_id": "651", "price_override": "899", "is_active_variant": "780"}]	\N
1185	each	effect	468	371	114	energy	accessories	\N	\N	[{"barcode": "listen", "variant_id": "601", "price_override": "210", "is_active_variant": "212"}]	\N
1171	opportunity	section	331	348	853	weight	accessories	\N	[{"url": "increase", "alt_text": "nothing", "image_id": "178", "sort_order": "748"}]	[{"barcode": "ready", "variant_id": "994", "price_override": "471", "is_active_variant": "421"}]	\N
566	order	mother	945	676	889	continue	desktop	\N	\N	[{"barcode": "whom", "variant_id": "635", "price_override": "478", "is_active_variant": "183"}]	\N
553	director	help	569	718	464	story	desktop	\N	\N	[{"barcode": "special", "variant_id": "418", "price_override": "825", "is_active_variant": "833"}]	\N
3	enter	southern	604	874	36	\N	product	\N	\N	[{"barcode": "goal", "variant_id": "805", "price_override": "475", "is_active_variant": "616"}]	\N
23	chair	stock	651	182	564	\N	product	\N	\N	[{"barcode": "visit", "variant_id": "479", "price_override": "647", "is_active_variant": "864"}]	\N
461	time	man	394	677	946	see	computer	\N	\N	[{"barcode": "fact", "variant_id": "468", "price_override": "581", "is_active_variant": "700"}]	\N
479	behavior	cell	932	893	489	past	computer	\N	\N	[{"barcode": "relate", "variant_id": "310", "price_override": "141", "is_active_variant": "266"}]	\N
1467	wind	wide	799	137	525	civil	apparel	buy	\N	[{"barcode": "ground", "variant_id": "882", "price_override": "128", "is_active_variant": "946"}]	\N
1696	oil	partner	607	672	174	type	menclothing	wear	\N	[{"barcode": "step", "variant_id": "355", "price_override": "636", "is_active_variant": "542"}]	\N
926	mind	do	946	865	448	sure	camera	\N	\N	[{"barcode": "open", "variant_id": "408", "price_override": "931", "is_active_variant": "118"}]	\N
1458	news	movie	209	951	383	able	apparel	course	\N	[{"barcode": "option", "variant_id": "372", "price_override": "234", "is_active_variant": "14"}]	\N
818	Mrs	member	179	328	5	attention	smartwatch	\N	\N	[{"barcode": "age", "variant_id": "218", "price_override": "705", "is_active_variant": "776"}]	\N
1463	doctor	top	631	160	291	manage	apparel	central	\N	[{"barcode": "television", "variant_id": "81", "price_override": "30", "is_active_variant": "584"}]	\N
1404	development	radio	764	787	186	reality	apparel	close	[{"url": "often", "alt_text": "yard", "image_id": "872", "sort_order": "44"}]	[{"barcode": "animal", "variant_id": "363", "price_override": "396", "is_active_variant": "120"}]	\N
968	lawyer	behind	688	5	541	American	camera	\N	\N	[{"barcode": "trial", "variant_id": "629", "price_override": "769", "is_active_variant": "170"}]	\N
389	everybody	here	726	107	763	spring	electronics	\N	\N	[{"barcode": "owner", "variant_id": "215", "price_override": "477", "is_active_variant": "966"}]	\N
578	money	page	439	158	564	drug	desktop	\N	\N	[{"barcode": "deal", "variant_id": "13", "price_override": "127", "is_active_variant": "178"}]	\N
407	act	follow	840	715	252	individual	computer	\N	\N	[{"barcode": "radio", "variant_id": "240", "price_override": "327", "is_active_variant": "324"}]	\N
838	say	serious	278	53	542	role	smartwatch	\N	\N	[{"barcode": "sing", "variant_id": "428", "price_override": "484", "is_active_variant": "143"}]	\N
961	firm	friend	313	103	305	walk	camera	\N	\N	[{"barcode": "film", "variant_id": "290", "price_override": "737", "is_active_variant": "298"}]	\N
592	none	human	450	595	525	trouble	desktop	\N	\N	[{"barcode": "market", "variant_id": "373", "price_override": "883", "is_active_variant": "507"}]	\N
906	central	authority	963	630	8	behavior	camera	\N	\N	[{"barcode": "prevent", "variant_id": "190", "price_override": "910", "is_active_variant": "582"}]	\N
523	fine	much	469	914	365	local	desktop	\N	\N	[{"barcode": "risk", "variant_id": "329", "price_override": "136", "is_active_variant": "518"}]	\N
1007	region	establish	869	502	178	four	phone	\N	\N	[{"barcode": "whatever", "variant_id": "763", "price_override": "53", "is_active_variant": "201"}]	\N
1089	election	job	337	815	574	actually	phone	\N	\N	[{"barcode": "material", "variant_id": "862", "price_override": "230", "is_active_variant": "844"}]	\N
1017	evening	summer	686	581	188	set	phone	\N	\N	[{"barcode": "leader", "variant_id": "894", "price_override": "674", "is_active_variant": "230"}]	\N
1675	better	hand	616	235	835	dog	menclothing	respond	\N	[{"barcode": "challenge", "variant_id": "932", "price_override": "530", "is_active_variant": "631"}]	\N
916	you	nearly	280	375	858	strong	camera	\N	\N	[{"barcode": "food", "variant_id": "946", "price_override": "678", "is_active_variant": "180"}]	\N
1483	interesting	figure	856	365	731	including	apparel	lead	\N	[{"barcode": "rather", "variant_id": "394", "price_override": "516", "is_active_variant": "160"}]	\N
873	issue	time	996	357	180	sign	smartwatch	\N	\N	[{"barcode": "including", "variant_id": "583", "price_override": "542", "is_active_variant": "131"}]	\N
1012	right	read	365	541	286	one	phone	\N	\N	[{"barcode": "trial", "variant_id": "388", "price_override": "601", "is_active_variant": "681"}]	[{"price": "884", "ends_at": "goal", "price_id": "976", "starts_at": "there"}]
1189	quite	study	598	976	68	military	accessories	\N	\N	[{"barcode": "peace", "variant_id": "680", "price_override": "906", "is_active_variant": "171"}]	\N
1526	should	industry	447	491	302	hotel	clothing	young	\N	[{"barcode": "current", "variant_id": "920", "price_override": "61", "is_active_variant": "509"}]	\N
913	suggest	Republican	819	853	283	your	camera	\N	\N	[{"barcode": "science", "variant_id": "457", "price_override": "148", "is_active_variant": "518"}]	\N
127	great	single	498	8	182	dark	physicalproduct	\N	\N	[{"barcode": "rather", "variant_id": "856", "price_override": "402", "is_active_variant": "115"}]	\N
1643	budget	family	425	820	685	run	menclothing	magazine	\N	[{"barcode": "happen", "variant_id": "44", "price_override": "38", "is_active_variant": "493"}]	\N
575	physical	finish	643	156	139	loss	desktop	\N	\N	[{"barcode": "message", "variant_id": "2", "price_override": "275", "is_active_variant": "767"}]	\N
593	affect	easy	885	365	201	affect	desktop	\N	\N	[{"barcode": "ok", "variant_id": "243", "price_override": "156", "is_active_variant": "735"}]	\N
303	shake	total	506	887	921	collection	electronics	\N	\N	\N	[{"price": "127", "ends_at": "degree", "price_id": "485", "starts_at": "father"}]
117	current	same	828	441	563	assume	physicalproduct	\N	\N	\N	[{"price": "72", "ends_at": "wonder", "price_id": "656", "starts_at": "executive"}]
1188	budget	mouth	790	84	214	ground	accessories	\N	\N	\N	[{"price": "904", "ends_at": "seem", "price_id": "720", "starts_at": "sometimes"}]
985	you	create	63	74	267	continue	camera	\N	\N	\N	[{"price": "195", "ends_at": "join", "price_id": "444", "starts_at": "choose"}]
1177	hear	significant	393	92	512	ok	accessories	\N	\N	\N	[{"price": "45", "ends_at": "stock", "price_id": "431", "starts_at": "tree"}]
980	hear	series	385	43	787	region	camera	\N	\N	\N	[{"price": "86", "ends_at": "prepare", "price_id": "55", "starts_at": "magazine"}]
13	president	arm	415	527	353	\N	product	\N	\N	\N	[{"price": "434", "ends_at": "human", "price_id": "347", "starts_at": "bed"}]
1445	it	class	733	417	217	car	apparel	first	\N	\N	[{"price": "441", "ends_at": "discussion", "price_id": "172", "starts_at": "late"}]
1402	computer	skill	74	263	969	early	apparel	ready	\N	\N	[{"price": "777", "ends_at": "result", "price_id": "398", "starts_at": "behind"}]
141	while	soon	181	160	257	forget	physicalproduct	\N	\N	\N	[{"price": "810", "ends_at": "use", "price_id": "335", "starts_at": "guess"}, {"price": "403", "ends_at": "business", "price_id": "571", "starts_at": "who"}]
374	chance	weight	743	106	308	stock	electronics	\N	\N	\N	[{"price": "220", "ends_at": "identify", "price_id": "444", "starts_at": "film"}]
301	voice	market	23	605	377	carry	electronics	\N	\N	\N	[{"price": "38", "ends_at": "property", "price_id": "988", "starts_at": "address"}]
470	deal	laugh	97	79	695	stock	computer	\N	\N	\N	[{"price": "658", "ends_at": "art", "price_id": "316", "starts_at": "test"}]
477	office	size	816	525	863	she	computer	\N	\N	\N	[{"price": "4", "ends_at": "throw", "price_id": "638", "starts_at": "page"}]
995	military	hour	490	393	178	from	camera	\N	\N	\N	[{"price": "162", "ends_at": "feeling", "price_id": "462", "starts_at": "can"}]
403	score	section	483	798	39	small	computer	\N	\N	\N	[{"price": "896", "ends_at": "teach", "price_id": "655", "starts_at": "practice"}]
996	until	address	99	710	356	material	camera	\N	\N	\N	[{"price": "59", "ends_at": "other", "price_id": "376", "starts_at": "rule"}]
149	structure	apply	456	872	947	decision	physicalproduct	\N	\N	\N	[{"price": "221", "ends_at": "walk", "price_id": "997", "starts_at": "direction"}]
408	idea	phone	975	367	893	look	computer	\N	\N	\N	[{"price": "160", "ends_at": "three", "price_id": "994", "starts_at": "its"}]
975	main	thus	273	371	593	serious	camera	\N	\N	\N	[{"price": "964", "ends_at": "nice", "price_id": "465", "starts_at": "where"}]
1106	care	various	931	254	954	hair	accessories	\N	\N	\N	[{"price": "886", "ends_at": "prove", "price_id": "929", "starts_at": "new"}]
1105	behind	response	185	724	656	lose	accessories	\N	\N	\N	[{"price": "144", "ends_at": "language", "price_id": "581", "starts_at": "right"}]
854	story	newspaper	377	255	160	trouble	smartwatch	\N	\N	\N	[{"price": "181", "ends_at": "none", "price_id": "50", "starts_at": "adult"}]
978	edge	painting	330	225	167	glass	camera	\N	[{"url": "region", "alt_text": "training", "image_id": "827", "sort_order": "212"}, {"url": "degree", "alt_text": "candidate", "image_id": "831", "sort_order": "676"}]	\N	[{"price": "7", "ends_at": "cultural", "price_id": "560", "starts_at": "my"}]
1114	economic	model	425	170	804	well	accessories	\N	\N	\N	[{"price": "469", "ends_at": "woman", "price_id": "956", "starts_at": "popular"}]
904	region	impact	160	282	117	sound	camera	\N	\N	\N	[{"price": "82", "ends_at": "coach", "price_id": "185", "starts_at": "finally"}]
816	specific	view	452	525	203	energy	smartwatch	\N	\N	\N	[{"price": "521", "ends_at": "woman", "price_id": "924", "starts_at": "mind"}]
196	box	hear	708	96	412	process	physicalproduct	\N	\N	\N	[{"price": "24", "ends_at": "property", "price_id": "492", "starts_at": "would"}]
111	firm	will	130	916	212	hope	physicalproduct	\N	\N	\N	[{"price": "152", "ends_at": "force", "price_id": "839", "starts_at": "you"}]
1128	nature	at	931	304	293	couple	accessories	\N	\N	\N	[{"price": "180", "ends_at": "option", "price_id": "828", "starts_at": "company"}]
472	parent	choose	195	868	522	check	computer	\N	\N	\N	[{"price": "848", "ends_at": "voice", "price_id": "326", "starts_at": "since"}]
393	turn	effort	901	847	222	tax	electronics	\N	[{"url": "order", "alt_text": "though", "image_id": "611", "sort_order": "375"}]	\N	[{"price": "711", "ends_at": "war", "price_id": "512", "starts_at": "edge"}]
\.


--
-- Data for Name: relation_10; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_10 (phone_id, carrier_lock) FROM stdin;
1001	play
1002	stand
1003	time
1004	yes
1005	meet
1006	clearly
1007	share
1008	statement
1009	deal
1010	Congress
1011	year
1012	think
1013	positive
1014	run
1015	officer
1016	produce
1017	bad
1018	behavior
1019	little
1020	decade
1021	push
1022	good
1023	including
1024	professional
1025	few
1026	financial
1027	face
1028	their
1029	edge
1030	difficult
1031	deal
1032	law
1033	weight
1034	risk
1035	two
1036	skin
1037	rest
1038	live
1039	before
1040	decide
1041	we
1042	value
1043	leg
1044	more
1045	site
1046	assume
1047	short
1048	gas
1049	require
1050	their
1051	ever
1052	fear
1053	try
1054	position
1055	he
1056	brother
1057	wind
1058	sign
1059	together
1060	must
1061	decade
1062	along
1063	a
1064	doctor
1065	admit
1066	stand
1067	pick
1068	conference
1069	meet
1070	opportunity
1071	need
1072	third
1073	wife
1074	several
1075	add
1076	carry
1077	picture
1078	low
1079	fight
1080	happen
1081	indicate
1082	page
1083	into
1084	certain
1085	ten
1086	entire
1087	contain
1088	fall
1089	development
1090	research
1091	two
1092	right
1093	meet
1094	score
1095	role
1096	argue
1097	or
1098	sport
1099	government
1100	home
\.


--
-- Data for Name: relation_11; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_11 (appliance_id, sku, product_name, base_price, is_active, quantity, dimensions, energy_rating, productimage, productvariant, pricehistory) FROM stdin;
1201	reality	budget	802	144	451	environment	while	\N	\N	\N
1202	really	still	159	924	400	suggest	have	\N	\N	\N
1204	test	adult	726	232	683	goal	officer	\N	\N	\N
1205	with	race	293	607	794	difference	it	\N	\N	\N
1207	none	have	677	844	633	out	federal	\N	\N	\N
1208	sit	foot	925	687	861	chance	matter	\N	\N	\N
1209	skin	writer	76	1	877	dog	capital	\N	\N	\N
1210	parent	design	683	77	837	door	agent	\N	\N	\N
1211	sit	foot	899	882	135	relationship	outside	\N	\N	\N
1212	article	throw	63	214	879	early	reduce	\N	\N	\N
1213	these	full	346	699	286	knowledge	figure	\N	\N	\N
1215	his	sit	420	83	363	start	night	\N	\N	\N
1216	drive	citizen	433	462	852	day	huge	\N	\N	\N
1218	establish	probably	927	677	58	church	off	\N	\N	\N
1219	wrong	job	418	786	929	forward	support	\N	\N	\N
1220	buy	enough	207	70	889	party	case	\N	\N	\N
1221	benefit	now	467	910	527	today	research	\N	\N	\N
1222	believe	by	335	717	824	realize	successful	\N	\N	\N
1223	evening	while	675	318	808	near	peace	\N	\N	\N
1224	mind	order	464	54	45	risk	window	\N	\N	\N
1225	play	fill	164	783	25	realize	as	\N	\N	\N
1226	will	table	25	865	152	part	arm	\N	\N	\N
1227	behavior	upon	110	240	263	brother	we	\N	\N	\N
1228	probably	car	512	197	945	put	moment	\N	\N	\N
1230	three	people	659	864	242	identify	explain	\N	\N	\N
1231	force	leave	787	696	180	able	gun	\N	\N	\N
1232	read	him	607	632	472	system	society	\N	\N	\N
1233	play	any	4	960	836	investment	because	\N	\N	\N
1234	among	admit	582	375	668	win	unit	\N	\N	\N
1235	important	start	277	836	98	lead	difference	\N	\N	\N
1237	up	rate	559	139	945	heart	money	\N	\N	\N
1238	remember	else	143	305	847	growth	dog	\N	\N	\N
1239	throughout	fire	307	536	103	perhaps	body	\N	\N	\N
1240	research	several	451	410	656	change	for	\N	\N	\N
1241	process	game	32	988	832	already	thus	\N	\N	\N
1242	trade	item	489	989	658	season	somebody	\N	\N	\N
1243	study	detail	898	301	711	attorney	strategy	\N	\N	\N
1244	job	require	481	378	185	hope	responsibility	\N	\N	\N
1245	loss	voice	489	893	562	concern	conference	\N	\N	\N
1246	process	couple	532	756	806	politics	newspaper	\N	\N	\N
1247	help	exist	142	444	716	win	everything	\N	\N	\N
1248	rule	the	735	374	504	hand	deep	\N	\N	\N
1249	material	improve	50	252	851	much	here	\N	\N	\N
1250	compare	employee	992	372	69	fast	animal	\N	\N	\N
1251	man	little	218	443	340	write	will	\N	\N	\N
1252	white	often	461	453	838	any	girl	\N	\N	\N
1253	society	through	902	673	610	unit	history	\N	\N	\N
1254	want	race	381	41	209	hear	attention	\N	\N	\N
1256	word	development	807	779	905	dog	task	\N	\N	\N
1257	police	nice	859	205	336	interesting	conference	\N	\N	\N
1258	conference	hand	855	6	891	thus	message	\N	\N	\N
1259	manage	morning	204	964	736	by	food	\N	\N	\N
1260	team	soldier	200	311	835	space	entire	\N	\N	\N
1261	specific	friend	676	798	384	out	direction	\N	\N	\N
1262	push	benefit	29	695	913	resource	him	\N	\N	\N
1263	goal	carry	611	285	313	wish	others	\N	\N	\N
1264	card	local	818	682	718	serve	show	\N	\N	\N
1265	pretty	when	903	16	357	camera	think	\N	\N	\N
1267	play	because	863	503	467	spend	identify	\N	\N	\N
1268	heavy	off	995	232	614	if	trouble	\N	\N	\N
1269	should	term	64	85	248	house	green	\N	\N	\N
1270	above	produce	203	438	144	leader	owner	\N	\N	\N
1271	class	purpose	411	602	361	away	arrive	\N	\N	\N
1273	student	foot	821	871	848	Mrs	personal	\N	\N	\N
1274	discover	cell	295	720	382	occur	race	\N	\N	\N
1275	blue	staff	995	947	384	growth	medical	\N	\N	\N
1276	they	last	955	876	118	actually	while	\N	\N	\N
1277	at	land	309	981	280	but	oil	\N	\N	\N
1278	herself	beyond	686	864	780	himself	team	\N	\N	\N
1279	compare	throw	284	54	504	like	energy	\N	\N	\N
1280	happen	way	855	722	439	receive	necessary	\N	\N	\N
1281	themselves	alone	596	906	576	away	miss	\N	\N	\N
1282	simply	safe	175	524	43	energy	address	\N	\N	\N
1284	build	laugh	759	115	628	president	red	\N	\N	\N
1285	girl	chair	431	432	580	short	subject	\N	\N	\N
1286	party	you	622	743	133	international	save	\N	\N	\N
1287	main	break	265	246	720	product	appear	\N	\N	\N
1289	visit	who	841	436	18	account	write	\N	\N	\N
1290	manager	five	313	523	142	attention	ten	\N	\N	\N
1291	billion	add	422	38	479	tax	room	\N	\N	\N
1293	degree	these	397	109	706	language	although	\N	\N	\N
1294	result	whose	424	475	111	response	recently	\N	\N	\N
1295	chair	including	832	888	421	particularly	voice	\N	\N	\N
1297	expert	fish	299	266	334	degree	discussion	\N	\N	\N
1298	realize	area	144	557	57	laugh	fall	\N	\N	\N
1203	him	watch	643	690	64	behavior	catch	\N	[{"barcode": "research", "variant_id": "535", "price_override": "863", "is_active_variant": "230"}]	\N
1214	push	fast	206	846	703	research	choice	\N	[{"barcode": "action", "variant_id": "414", "price_override": "175", "is_active_variant": "732"}]	\N
1292	foot	church	875	921	531	majority	clear	\N	\N	[{"price": "164", "ends_at": "real", "price_id": "660", "starts_at": "trade"}]
1206	such	peace	959	339	157	yet	possible	\N	\N	[{"price": "620", "ends_at": "option", "price_id": "288", "starts_at": "term"}]
1299	general	serious	324	760	100	election	likely	\N	\N	\N
1300	measure	former	310	762	423	continue	accept	\N	\N	\N
1236	week	Democrat	308	238	386	himself	color	[{"url": "hand", "alt_text": "game", "image_id": "993", "sort_order": "729"}]	\N	\N
1296	crime	take	881	269	616	if	thought	[{"url": "out", "alt_text": "score", "image_id": "252", "sort_order": "522"}]	\N	\N
1283	religious	interview	263	197	323	perhaps	whether	[{"url": "although", "alt_text": "discuss", "image_id": "206", "sort_order": "439"}]	\N	\N
1266	reveal	read	712	580	769	nor	exactly	[{"url": "may", "alt_text": "decide", "image_id": "304", "sort_order": "155"}]	\N	\N
1272	plant	on	39	981	874	than	this	[{"url": "four", "alt_text": "stock", "image_id": "737", "sort_order": "938"}]	[{"barcode": "music", "variant_id": "105", "price_override": "345", "is_active_variant": "349"}]	\N
1255	reveal	culture	134	847	954	light	upon	\N	[{"barcode": "shoulder", "variant_id": "496", "price_override": "231", "is_active_variant": "401"}]	\N
1229	bring	officer	135	293	921	structure	event	\N	\N	[{"price": "509", "ends_at": "war", "price_id": "387", "starts_at": "trial"}]
1288	area	the	585	896	189	federal	animal	\N	\N	[{"price": "59", "ends_at": "event", "price_id": "756", "starts_at": "interest"}]
1217	city	man	515	945	105	remember	serious	\N	[{"barcode": "address", "variant_id": "274", "price_override": "640", "is_active_variant": "390"}]	[{"price": "319", "ends_at": "series", "price_id": "229", "starts_at": "good"}]
\.


--
-- Data for Name: relation_12; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_12 (kitchenappliance_id, sku, product_name, base_price, is_active, quantity, dimensions, energy_rating, warranty_years, productimage, productvariant, pricehistory) FROM stdin;
1301	subject	story	82	999	537	so	parent	933	\N	\N	\N
1303	recognize	fight	946	644	849	imagine	middle	801	\N	\N	\N
1305	third	picture	289	511	998	a	trip	543	\N	\N	\N
1306	enough	despite	139	19	648	mouth	section	905	\N	\N	\N
1307	sit	present	991	211	624	win	grow	492	\N	\N	\N
1308	discussion	when	528	152	788	history	protect	929	\N	\N	\N
1309	also	example	720	136	435	very	tax	77	\N	\N	\N
1310	coach	adult	365	654	759	science	next	702	\N	\N	\N
1311	peace	police	258	741	370	much	street	955	\N	\N	\N
1312	this	difficult	318	417	409	pretty	social	449	\N	\N	\N
1313	themselves	common	378	334	907	ask	fight	156	\N	\N	\N
1315	no	song	653	921	711	manage	suddenly	438	\N	\N	\N
1316	mother	yeah	984	592	483	wrong	sometimes	302	\N	\N	\N
1317	energy	media	544	825	506	side	fund	507	\N	\N	\N
1318	myself	once	135	458	149	two	without	978	\N	\N	\N
1319	book	newspaper	866	155	898	resource	floor	342	\N	\N	\N
1320	above	state	799	72	700	well	art	175	\N	\N	\N
1321	heavy	upon	812	431	641	behavior	this	312	\N	\N	\N
1322	line	check	277	227	632	five	heavy	877	\N	\N	\N
1323	able	main	672	492	367	tree	fly	852	\N	\N	\N
1324	foreign	call	270	498	737	game	defense	471	\N	\N	\N
1325	open	collection	838	47	438	leave	simple	500	\N	\N	\N
1326	Congress	author	543	154	330	move	standard	211	\N	\N	\N
1327	best	blood	754	391	125	half	anyone	804	\N	\N	\N
1328	piece	until	909	915	330	summer	necessary	481	\N	\N	\N
1329	game	simply	644	534	819	although	himself	887	\N	\N	\N
1330	key	require	944	539	159	author	impact	863	\N	\N	\N
1331	third	lay	160	872	63	morning	guy	722	\N	\N	\N
1332	herself	real	409	343	660	suddenly	add	500	\N	\N	\N
1333	himself	industry	297	38	447	real	talk	220	\N	\N	\N
1334	medical	serious	28	972	590	as	allow	415	\N	\N	\N
1335	that	course	832	299	253	six	energy	847	\N	\N	\N
1336	most	energy	443	359	886	their	short	913	\N	\N	\N
1337	price	myself	333	844	698	thus	mean	124	\N	\N	\N
1338	many	firm	692	381	35	blue	story	209	\N	\N	\N
1339	either	particular	743	602	112	though	computer	18	\N	\N	\N
1341	despite	explain	409	922	472	pretty	close	560	\N	\N	\N
1342	outside	beat	287	382	148	phone	strategy	60	\N	\N	\N
1343	popular	mind	107	388	910	how	across	942	\N	\N	\N
1344	after	score	321	912	8	computer	study	645	\N	\N	\N
1345	moment	live	241	140	322	whatever	these	209	\N	\N	\N
1346	car	represent	497	887	176	explain	many	353	\N	\N	\N
1347	detail	western	225	664	788	offer	way	630	\N	\N	\N
1349	model	hair	283	688	694	chair	customer	473	\N	\N	\N
1350	line	wear	482	374	438	education	cold	70	\N	\N	\N
1351	then	throughout	997	965	231	police	bank	964	\N	\N	\N
1353	loss	better	733	711	512	break	may	146	\N	\N	\N
1354	show	coach	928	208	71	walk	again	509	\N	\N	\N
1355	per	despite	906	499	480	fear	firm	477	\N	\N	\N
1356	office	class	557	83	505	lawyer	black	746	\N	\N	\N
1360	agent	level	928	835	392	owner	compare	434	\N	\N	\N
1361	low	similar	942	751	571	million	financial	970	\N	\N	\N
1362	tree	religious	151	4	574	east	allow	958	\N	\N	\N
1363	floor	writer	850	104	84	fear	fall	128	\N	\N	\N
1364	shake	American	694	597	573	fund	main	427	\N	\N	\N
1365	record	quickly	700	405	77	network	majority	880	\N	\N	\N
1366	difference	party	843	869	871	practice	prove	308	\N	\N	\N
1367	them	Democrat	762	798	447	learn	tree	408	\N	\N	\N
1368	store	expect	638	558	623	positive	truth	469	\N	\N	\N
1369	trial	box	619	490	397	worker	line	341	\N	\N	\N
1370	drive	important	285	642	851	turn	south	272	\N	\N	\N
1371	memory	arm	675	45	97	effort	Mr	750	\N	\N	\N
1372	event	take	675	37	5	right	born	347	\N	\N	\N
1373	movement	success	43	166	432	man	all	634	\N	\N	\N
1374	fact	political	18	442	563	present	statement	126	\N	\N	\N
1375	why	discover	894	696	405	establish	theory	29	\N	\N	\N
1376	lose	next	140	246	990	the	company	665	\N	\N	\N
1379	evidence	consider	145	778	150	behavior	wonder	744	\N	\N	\N
1380	take	want	916	875	204	whose	who	853	\N	\N	\N
1382	new	old	373	481	649	data	the	544	\N	\N	\N
1383	trade	home	1	431	917	report	agree	728	\N	\N	\N
1384	change	indicate	389	849	879	name	court	634	\N	\N	\N
1385	according	stock	959	965	28	your	Democrat	112	\N	\N	\N
1386	focus	sign	827	526	879	always	within	439	\N	\N	\N
1387	outside	seven	264	133	905	father	staff	582	\N	\N	\N
1388	enjoy	card	888	781	561	war	reason	258	\N	\N	\N
1389	hundred	sign	919	125	898	remain	though	729	\N	\N	\N
1390	enough	strategy	359	415	453	full	clear	432	\N	\N	\N
1391	staff	player	940	693	519	report	air	512	\N	\N	\N
1392	despite	near	386	550	29	name	edge	848	\N	\N	\N
1394	analysis	technology	21	359	79	herself	foot	710	\N	\N	\N
1314	company	weight	819	136	718	head	move	257	\N	\N	[{"price": "881", "ends_at": "wall", "price_id": "757", "starts_at": "open"}]
1340	they	walk	265	982	988	economy	mission	114	\N	\N	[{"price": "80", "ends_at": "base", "price_id": "57", "starts_at": "study"}]
1381	heavy	would	973	218	502	health	should	807	\N	\N	[{"price": "202", "ends_at": "hotel", "price_id": "230", "starts_at": "agent"}]
1395	always	kid	487	126	237	including	such	471	\N	\N	\N
1398	those	expect	239	45	300	list	image	557	\N	\N	\N
1399	others	father	568	928	465	relationship	development	842	\N	\N	\N
1400	work	industry	252	12	312	painting	theory	153	\N	\N	\N
1377	not	lay	400	967	322	key	pay	296	[{"url": "newspaper", "alt_text": "democratic", "image_id": "99", "sort_order": "583"}]	\N	\N
1358	series	hair	586	828	836	within	run	914	[{"url": "interesting", "alt_text": "wonder", "image_id": "892", "sort_order": "291"}]	\N	\N
1397	anyone	prepare	286	775	485	along	area	192	[{"url": "not", "alt_text": "gas", "image_id": "360", "sort_order": "241"}]	\N	\N
1357	line	air	560	859	661	dog	like	725	\N	[{"barcode": "boy", "variant_id": "176", "price_override": "432", "is_active_variant": "585"}]	\N
1359	cultural	debate	427	96	761	better	cell	936	\N	[{"barcode": "claim", "variant_id": "998", "price_override": "145", "is_active_variant": "961"}]	\N
1396	attention	industry	914	759	78	yes	owner	644	\N	[{"barcode": "either", "variant_id": "459", "price_override": "736", "is_active_variant": "443"}, {"barcode": "whether", "variant_id": "614", "price_override": "630", "is_active_variant": "86"}]	\N
1348	expert	create	971	63	619	mission	citizen	813	\N	[{"barcode": "wide", "variant_id": "917", "price_override": "429", "is_active_variant": "568"}]	\N
1302	support	life	997	534	65	trade	price	375	\N	[{"barcode": "sea", "variant_id": "543", "price_override": "186", "is_active_variant": "473"}]	\N
1352	five	today	57	333	107	yeah	member	559	\N	[{"barcode": "career", "variant_id": "238", "price_override": "52", "is_active_variant": "573"}]	\N
1393	material	between	500	870	331	remain	cold	106	\N	[{"barcode": "far", "variant_id": "256", "price_override": "736", "is_active_variant": "760"}]	\N
1304	phone	the	472	416	627	everything	himself	698	\N	\N	[{"price": "585", "ends_at": "century", "price_id": "491", "starts_at": "send"}]
1378	cut	vote	627	143	583	idea	into	568	\N	\N	[{"price": "308", "ends_at": "future", "price_id": "49", "starts_at": "same"}]
\.


--
-- Data for Name: relation_13; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_13 (clothing_id, material) FROM stdin;
1501	night
1502	executive
1503	religious
1504	author
1505	nature
1506	two
1507	popular
1508	think
1509	so
1510	listen
1511	eight
1512	education
1513	table
1514	actually
1515	tell
1516	her
1517	career
1518	action
1519	view
1520	skin
1521	what
1522	something
1523	story
1524	if
1525	quite
1526	behind
1527	tough
1528	event
1529	inside
1530	enter
1531	wind
1532	open
1533	lay
1534	surface
1535	wife
1536	of
1537	system
1538	subject
1539	agreement
1540	boy
1541	hear
1542	economy
1543	training
1544	Congress
1545	message
1546	over
1547	feel
1548	across
1549	identify
1550	price
1551	before
1552	win
1553	blue
1554	herself
1555	look
1556	past
1557	lose
1558	reality
1559	concern
1560	ground
1561	such
1562	time
1563	old
1564	recently
1565	chance
1566	feeling
1567	state
1568	let
1569	sort
1570	when
1571	tend
1572	require
1573	administration
1574	own
1575	far
1576	build
1577	radio
1578	ten
1579	song
1580	raise
1581	too
1582	computer
1583	spend
1584	listen
1585	left
1586	course
1587	prepare
1588	meeting
1589	my
1590	chair
1591	statement
1592	thousand
1593	lose
1594	worry
1595	source
1596	board
1597	learn
1598	near
1599	eight
1600	so
1601	thus
1602	tend
1603	throughout
1604	trouble
1605	the
1606	rock
1607	tree
1608	between
1609	last
1610	mother
1611	hair
1612	more
1613	here
1614	cover
1615	about
1616	senior
1617	wait
1618	child
1619	certainly
1620	no
1621	suddenly
1622	with
1623	PM
1624	lot
1625	they
1626	research
1627	Congress
1628	day
1629	such
1630	war
1631	use
1632	which
1633	man
1634	possible
1635	interesting
1636	natural
1637	sound
1638	our
1639	social
1640	notice
1641	attack
1642	we
1643	which
1644	enough
1645	teach
1646	available
1647	certainly
1648	admit
1649	spring
1650	third
1651	street
1652	consider
1653	news
1654	remain
1655	firm
1656	already
1657	project
1658	really
1659	where
1660	blue
1661	pay
1662	how
1663	side
1664	even
1665	report
1666	mission
1667	pick
1668	lay
1669	who
1670	listen
1671	sit
1672	summer
1673	fall
1674	government
1675	member
1676	region
1677	magazine
1678	century
1679	prove
1680	movie
1681	feeling
1682	cost
1683	weight
1684	especially
1685	industry
1686	scientist
1687	season
1688	fear
1689	dark
1690	leg
1691	parent
1692	another
1693	artist
1694	but
1695	central
1696	by
1697	own
1698	dark
1699	camera
1700	to
\.


--
-- Data for Name: relation_14; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_14 (menclothing_id, fit_type_men) FROM stdin;
1601	could
1602	establish
1603	hold
1604	end
1605	too
1606	without
1607	friend
1608	risk
1609	population
1610	leave
1611	anyone
1612	money
1613	ever
1614	girl
1615	for
1616	least
1617	say
1618	nature
1619	lose
1620	four
1621	lose
1622	left
1623	some
1624	response
1625	plan
1626	store
1627	exactly
1628	avoid
1629	me
1630	different
1631	like
1632	Democrat
1633	agree
1634	building
1635	everybody
1636	growth
1637	information
1638	tax
1639	article
1640	along
1641	provide
1642	must
1643	wind
1644	machine
1645	two
1646	theory
1647	standard
1648	maybe
1649	low
1650	way
1651	that
1652	represent
1653	organization
1654	instead
1655	Democrat
1656	leave
1657	bring
1658	news
1659	firm
1660	true
1661	would
1662	else
1663	staff
1664	work
1665	standard
1666	fish
1667	soon
1668	enter
1669	capital
1670	develop
1671	account
1672	small
1673	the
1674	world
1675	wait
1676	really
1677	skin
1678	skin
1679	happen
1680	art
1681	take
1682	budget
1683	both
1684	rule
1685	easy
1686	general
1687	year
1688	condition
1689	our
1690	price
1691	degree
1692	image
1693	enter
1694	question
1695	contain
1696	wear
1697	century
1698	dog
1699	safe
1700	use
\.


--
-- Data for Name: relation_15; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_15 (womenclothing_id, sku, product_name, base_price, is_active, quantity, dimensions, size_system, material, fit_type_women, productimage, productvariant, pricehistory) FROM stdin;
1701	keep	hair	906	1	783	law	three	sometimes	might	\N	\N	\N
1702	huge	apply	52	18	79	yet	rule	in	result	\N	\N	\N
1704	white	only	193	938	860	on	everyone	interest	I	\N	\N	\N
1705	wind	agree	6	838	437	security	green	hundred	camera	\N	\N	\N
1707	car	trade	116	379	384	become	administration	break	individual	\N	\N	\N
1708	before	stop	876	390	536	bad	impact	test	parent	\N	\N	\N
1709	natural	note	763	326	502	organization	six	see	card	\N	\N	\N
1710	television	card	479	241	414	source	some	join	reflect	\N	\N	\N
1711	add	like	444	869	616	still	strategy	anything	could	\N	\N	\N
1712	prepare	heavy	20	353	528	instead	require	audience	knowledge	\N	\N	\N
1714	speech	difference	379	52	863	head	deep	upon	admit	\N	\N	\N
1715	participant	drive	418	621	439	option	word	foreign	onto	\N	\N	\N
1717	morning	degree	145	504	936	term	again	education	scene	\N	\N	\N
1718	each	however	322	773	791	type	same	court	young	\N	\N	\N
1719	lawyer	more	907	375	382	process	four	animal	true	\N	\N	\N
1720	six	success	748	83	803	alone	foot	concern	amount	\N	\N	\N
1722	some	though	895	145	51	reflect	raise	clearly	resource	\N	\N	\N
1723	collection	relationship	271	341	42	nothing	bill	pick	address	\N	\N	\N
1724	product	for	131	141	246	board	door	assume	admit	\N	\N	\N
1727	attention	save	135	319	804	Congress	need	region	attorney	\N	\N	\N
1728	down	again	472	26	588	television	brother	evidence	act	\N	\N	\N
1729	grow	carry	752	970	642	a	worry	better	public	\N	\N	\N
1730	series	firm	33	765	145	respond	whose	investment	no	\N	\N	\N
1731	pass	news	676	299	526	onto	range	their	gas	\N	\N	\N
1733	project	notice	750	275	710	step	sign	use	number	\N	\N	\N
1734	determine	just	573	452	477	wall	safe	spend	rich	\N	\N	\N
1735	science	hotel	579	352	109	put	force	allow	writer	\N	\N	\N
1736	market	star	235	799	46	professional	throughout	from	six	\N	\N	\N
1737	game	name	119	211	184	prove	worry	war	nearly	\N	\N	\N
1738	medical	create	772	840	912	increase	party	live	sport	\N	\N	\N
1739	hand	two	649	132	847	age	executive	today	example	\N	\N	\N
1740	system	development	576	658	212	home	upon	night	consider	\N	\N	\N
1741	fill	beautiful	896	707	602	include	memory	picture	candidate	\N	\N	\N
1742	third	traditional	703	990	759	recognize	three	could	professor	\N	\N	\N
1743	year	street	393	456	368	international	create	meet	stage	\N	\N	\N
1744	agreement	process	980	617	825	ability	medical	health	early	\N	\N	\N
1745	quickly	soldier	653	500	790	single	place	hour	lot	\N	\N	\N
1746	seek	movement	256	625	920	box	difference	recognize	sea	\N	\N	\N
1747	young	provide	178	519	624	each	mean	current	blood	\N	\N	\N
1748	police	agency	70	768	880	thing	address	executive	international	\N	\N	\N
1749	reflect	approach	89	984	852	nearly	Republican	prevent	deep	\N	\N	\N
1750	end	film	714	832	533	word	away	actually	police	\N	\N	\N
1751	newspaper	system	870	691	133	lawyer	everything	town	pretty	\N	\N	\N
1752	tree	interview	323	82	151	often	job	couple	ball	\N	\N	\N
1753	most	unit	177	682	794	artist	sometimes	need	picture	\N	\N	\N
1754	including	speech	631	548	1	memory	card	fight	door	\N	\N	\N
1755	stuff	speech	71	774	553	officer	matter	tax	drive	\N	\N	\N
1756	man	process	944	489	50	notice	identify	couple	lose	\N	\N	\N
1757	set	hundred	471	466	581	minute	half	four	range	\N	\N	\N
1758	generation	hand	283	365	460	provide	manage	suffer	around	\N	\N	\N
1759	often	sound	356	66	180	impact	trial	letter	rate	\N	\N	\N
1760	a	relationship	776	588	5	leave	before	company	treat	\N	\N	\N
1761	thing	beautiful	199	583	686	condition	institution	perform	keep	\N	\N	\N
1762	begin	mouth	967	159	499	hit	feel	worker	successful	\N	\N	\N
1763	glass	question	357	537	879	explain	medical	security	billion	\N	\N	\N
1764	popular	them	611	106	737	cost	trouble	here	other	\N	\N	\N
1766	its	present	993	308	91	system	onto	several	hit	\N	\N	\N
1767	certainly	carry	586	330	551	then	religious	forward	none	\N	\N	\N
1768	not	natural	590	758	595	tell	animal	color	own	\N	\N	\N
1769	near	she	451	296	776	mind	government	type	away	\N	\N	\N
1770	day	raise	805	805	933	every	him	successful	list	\N	\N	\N
1771	dream	include	604	154	312	yeah	off	same	feel	\N	\N	\N
1772	design	clear	937	859	80	picture	sense	full	keep	\N	\N	\N
1773	next	kind	35	582	891	ahead	suffer	somebody	that	\N	\N	\N
1775	age	I	683	269	979	who	song	according	occur	\N	\N	\N
1776	look	find	592	297	447	main	election	yes	control	\N	\N	\N
1777	clearly	pay	250	400	554	require	player	town	tend	\N	\N	\N
1778	particularly	campaign	412	691	130	describe	leader	model	who	\N	\N	\N
1779	seem	body	44	699	260	Mr	risk	father	as	\N	\N	\N
1780	others	significant	348	83	940	perform	paper	lot	any	\N	\N	\N
1781	feel	new	391	107	135	cup	alone	head	sense	\N	\N	\N
1783	special	training	417	795	84	pattern	discuss	must	official	\N	\N	\N
1784	animal	learn	999	37	445	example	become	interview	yes	\N	\N	\N
1721	week	or	135	733	661	human	risk	argue	yourself	\N	[{"barcode": "economy", "variant_id": "566", "price_override": "261", "is_active_variant": "927"}]	\N
1706	need	wait	252	64	927	give	consumer	wait	several	\N	[{"barcode": "election", "variant_id": "185", "price_override": "835", "is_active_variant": "497"}, {"barcode": "deal", "variant_id": "563", "price_override": "71", "is_active_variant": "197"}]	\N
1726	ask	black	455	204	419	art	responsibility	until	most	\N	\N	[{"price": "995", "ends_at": "produce", "price_id": "122", "starts_at": "defense"}]
1785	responsibility	rise	404	580	585	also	new	oil	can	\N	\N	\N
1786	inside	follow	632	633	776	unit	rule	alone	music	\N	\N	\N
1788	house	quite	57	19	985	a	center	hour	represent	\N	\N	\N
1789	office	south	452	4	355	tend	career	central	knowledge	\N	\N	\N
1790	through	large	335	997	823	but	yes	pressure	forget	\N	\N	\N
1791	able	task	716	682	984	two	whose	rise	become	\N	\N	\N
1792	difference	more	744	452	638	thank	unit	step	answer	\N	\N	\N
1793	three	free	678	205	942	rise	group	whole	red	\N	\N	\N
1795	line	road	286	281	166	wish	strong	give	both	\N	\N	\N
1796	table	move	687	90	785	to	already	seat	sit	\N	\N	\N
1797	prevent	learn	542	634	492	husband	ability	history	record	\N	\N	\N
1798	recognize	mission	98	512	123	yeah	grow	tell	ago	\N	\N	\N
1799	claim	decide	518	559	171	develop	plant	between	your	\N	\N	\N
1800	cold	benefit	714	994	661	word	main	language	power	\N	\N	\N
1774	have	night	734	134	502	note	important	data	late	[{"url": "energy", "alt_text": "evidence", "image_id": "92", "sort_order": "843"}]	\N	\N
1725	whatever	measure	987	216	773	trial	girl	management	particular	[{"url": "sense", "alt_text": "them", "image_id": "985", "sort_order": "536"}]	\N	\N
1713	pass	find	238	408	509	else	head	walk	buy	[{"url": "concern", "alt_text": "site", "image_id": "557", "sort_order": "409"}]	\N	\N
1732	upon	home	59	920	73	safe	choice	woman	table	[{"url": "administration", "alt_text": "meeting", "image_id": "482", "sort_order": "416"}]	\N	\N
1765	especially	smile	513	936	317	view	management	middle	religious	[{"url": "truth", "alt_text": "teach", "image_id": "114", "sort_order": "612"}]	\N	\N
1782	threat	here	995	498	332	fund	fire	themselves	describe	[{"url": "group", "alt_text": "improve", "image_id": "213", "sort_order": "568"}]	[{"barcode": "act", "variant_id": "834", "price_override": "495", "is_active_variant": "759"}]	\N
1794	unit	mouth	340	793	969	during	send	side	government	\N	[{"barcode": "keep", "variant_id": "840", "price_override": "184", "is_active_variant": "130"}]	\N
1703	seven	trip	804	371	922	accept	statement	city	health	\N	\N	[{"price": "333", "ends_at": "subject", "price_id": "89", "starts_at": "foreign"}]
1787	peace	imagine	137	879	868	hand	your	form	whether	\N	\N	[{"price": "242", "ends_at": "fire", "price_id": "590", "starts_at": "head"}]
1716	discussion	reality	708	149	339	finally	specific	policy	heart	\N	\N	[{"price": "592", "ends_at": "responsibility", "price_id": "795", "starts_at": "education"}]
\.


--
-- Data for Name: relation_16; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_16 (footwear_id, sku, product_name, base_price, is_active, quantity, dimensions, size_system, sole_material, productimage, productvariant, pricehistory) FROM stdin;
1801	name	town	535	732	801	among	choose	edge	\N	\N	\N
1802	coach	light	596	230	534	teach	direction	event	\N	\N	\N
1803	will	method	804	462	235	fall	finally	population	\N	\N	\N
1804	fall	into	864	784	90	them	fill	woman	\N	\N	\N
1805	indicate	few	258	591	527	others	move	our	\N	\N	\N
1806	gun	environment	841	21	342	find	grow	old	\N	\N	\N
1809	while	once	420	757	858	professional	through	wear	\N	\N	\N
1810	certainly	spring	722	126	930	mouth	method	which	\N	\N	\N
1811	show	this	957	122	859	can	effect	goal	\N	\N	\N
1812	yet	miss	388	873	33	season	owner	rate	\N	\N	\N
1813	Mr	between	558	353	77	garden	kitchen	nation	\N	\N	\N
1814	interview	time	1000	692	482	animal	able	then	\N	\N	\N
1815	order	which	765	687	661	fear	series	attack	\N	\N	\N
1816	continue	everyone	410	44	268	loss	system	job	\N	\N	\N
1817	follow	attack	692	402	395	almost	Republican	power	\N	\N	\N
1818	not	change	16	731	693	teach	street	point	\N	\N	\N
1819	type	two	551	134	76	education	mouth	turn	\N	\N	\N
1820	our	our	414	215	110	assume	stand	career	\N	\N	\N
1821	trip	skin	202	414	651	man	foot	and	\N	\N	\N
1822	top	skin	446	27	820	hot	contain	quite	\N	\N	\N
1823	front	organization	23	795	45	industry	idea	difficult	\N	\N	\N
1824	each	daughter	759	429	134	red	sea	house	\N	\N	\N
1825	agency	money	762	194	517	exist	improve	very	\N	\N	\N
1826	consider	entire	846	291	903	manage	recent	sit	\N	\N	\N
1827	people	when	561	44	424	smile	work	also	\N	\N	\N
1828	student	meeting	479	163	305	economic	Mrs	happen	\N	\N	\N
1829	hundred	work	666	308	600	mouth	risk	cup	\N	\N	\N
1830	great	answer	33	630	537	alone	stock	effort	\N	\N	\N
1831	his	father	301	33	500	civil	as	difference	\N	\N	\N
1832	early	parent	960	168	759	travel	physical	truth	\N	\N	\N
1833	according	affect	954	720	646	hard	increase	at	\N	\N	\N
1834	away	report	271	835	460	speech	chance	measure	\N	\N	\N
1835	on	four	431	36	303	another	mission	current	\N	\N	\N
1836	country	board	356	205	351	if	event	reason	\N	\N	\N
1837	anyone	look	251	142	967	eye	coach	unit	\N	\N	\N
1838	interview	everything	857	42	97	while	conference	support	\N	\N	\N
1840	meet	purpose	22	395	592	audience	music	wonder	\N	\N	\N
1841	everything	board	241	754	539	begin	quickly	range	\N	\N	\N
1842	senior	our	564	788	939	finish	Congress	general	\N	\N	\N
1843	foreign	them	428	567	396	though	of	suddenly	\N	\N	\N
1844	raise	audience	983	571	9	alone	cold	go	\N	\N	\N
1845	week	summer	420	813	398	phone	only	already	\N	\N	\N
1846	product	eat	136	448	839	any	site	eight	\N	\N	\N
1847	middle	way	113	582	116	you	beyond	six	\N	\N	\N
1848	less	home	180	917	361	camera	mission	environmental	\N	\N	\N
1849	improve	group	510	788	894	trouble	on	Mr	\N	\N	\N
1850	role	book	905	603	882	whatever	audience	give	\N	\N	\N
1851	end	animal	656	718	246	upon	can	page	\N	\N	\N
1852	she	build	73	734	878	be	make	game	\N	\N	\N
1853	walk	listen	251	672	814	number	chair	role	\N	\N	\N
1854	reality	best	270	793	932	south	tonight	perhaps	\N	\N	\N
1855	after	under	653	843	135	scene	whatever	magazine	\N	\N	\N
1856	first	right	474	366	133	war	college	above	\N	\N	\N
1859	personal	possible	178	977	574	stand	couple	best	\N	\N	\N
1860	minute	culture	829	684	697	once	always	outside	\N	\N	\N
1862	stuff	trip	285	163	367	cost	news	money	\N	\N	\N
1863	well	size	841	95	776	eye	pay	year	\N	\N	\N
1864	agreement	amount	833	249	976	return	attack	total	\N	\N	\N
1865	service	free	97	960	926	line	state	wish	\N	\N	\N
1866	left	position	249	731	68	compare	beyond	after	\N	\N	\N
1867	theory	dog	973	693	548	receive	argue	learn	\N	\N	\N
1868	development	remain	45	922	584	total	politics	contain	\N	\N	\N
1870	light	above	395	676	99	foreign	term	other	\N	\N	\N
1872	laugh	hour	474	112	222	himself	industry	full	\N	\N	\N
1873	water	change	69	525	142	machine	yes	quality	\N	\N	\N
1877	part	someone	124	664	137	our	particularly	picture	\N	\N	\N
1878	end	spend	655	960	406	list	reason	gas	\N	\N	\N
1879	kind	week	187	230	818	boy	common	contain	\N	\N	\N
1880	leave	whether	835	874	878	always	budget	second	\N	\N	\N
1881	never	political	51	957	617	wife	current	quickly	\N	\N	\N
1882	second	member	7	610	713	reason	soon	capital	\N	\N	\N
1883	animal	someone	13	832	935	reflect	keep	billion	\N	\N	\N
1884	per	agreement	711	197	630	although	case	finish	\N	\N	\N
1885	stop	medical	305	153	870	share	for	nothing	\N	\N	\N
1886	can	stop	381	633	388	American	return	his	\N	\N	\N
1887	girl	stuff	906	832	626	network	law	finally	\N	\N	\N
1888	know	full	348	9	433	other	apply	material	\N	\N	\N
1889	court	nation	740	198	170	sell	water	do	\N	\N	\N
1890	note	another	514	270	480	interview	improve	painting	\N	\N	\N
1891	receive	along	903	817	85	artist	pressure	Mr	\N	\N	\N
1858	step	bag	458	505	892	important	approach	from	\N	[{"barcode": "appear", "variant_id": "602", "price_override": "347", "is_active_variant": "622"}]	\N
1807	generation	whom	250	442	157	all	kitchen	before	\N	[{"barcode": "easy", "variant_id": "876", "price_override": "316", "is_active_variant": "284"}]	\N
1871	attorney	who	846	3	588	game	create	whether	\N	\N	[{"price": "228", "ends_at": "determine", "price_id": "666", "starts_at": "cause"}]
1893	appear	war	941	255	809	open	work	recent	\N	\N	\N
1894	receive	sound	733	880	559	cell	art	according	\N	\N	\N
1895	available	road	534	535	20	decade	form	response	\N	\N	\N
1896	movement	drop	461	33	882	toward	police	attorney	\N	\N	\N
1898	summer	their	518	937	236	hit	inside	security	\N	\N	\N
1899	finish	full	58	381	174	recent	create	serious	\N	\N	\N
1900	identify	face	442	838	552	town	too	six	\N	\N	\N
1839	run	court	315	324	505	beat	middle	each	[{"url": "anyone", "alt_text": "information", "image_id": "406", "sort_order": "489"}]	\N	\N
1808	focus	appear	70	488	906	have	remain	take	[{"url": "Mrs", "alt_text": "collection", "image_id": "258", "sort_order": "900"}]	\N	\N
1861	image	scene	670	741	321	may	exist	commercial	[{"url": "act", "alt_text": "any", "image_id": "159", "sort_order": "537"}]	\N	\N
1897	character	none	179	421	132	off	rise	season	[{"url": "ok", "alt_text": "job", "image_id": "235", "sort_order": "719"}]	\N	\N
1874	your	cost	189	449	870	discuss	worry	glass	[{"url": "responsibility", "alt_text": "more", "image_id": "961", "sort_order": "709"}]	\N	\N
1892	way	member	221	953	616	hope	never	brother	\N	[{"barcode": "mean", "variant_id": "326", "price_override": "77", "is_active_variant": "840"}]	\N
1875	main	generation	528	938	279	sound	cover	walk	[{"url": "actually", "alt_text": "it", "image_id": "56", "sort_order": "63"}]	\N	[{"price": "458", "ends_at": "hard", "price_id": "767", "starts_at": "room"}]
1857	owner	bag	312	754	43	with	record	in	\N	\N	[{"price": "993", "ends_at": "candidate", "price_id": "446", "starts_at": "tonight"}]
1869	bring	blue	945	910	531	institution	feeling	worker	\N	\N	[{"price": "9", "ends_at": "radio", "price_id": "765", "starts_at": "work"}]
1876	that	between	826	187	384	design	film	behind	\N	\N	[{"price": "794", "ends_at": "attack", "price_id": "47", "starts_at": "majority"}]
\.


--
-- Data for Name: relation_17; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_17 (software_id, license_type) FROM stdin;
2001	end
2002	Democrat
2003	forward
2004	ahead
2005	where
2006	collection
2007	line
2008	character
2009	assume
2010	western
2011	prove
2012	people
2013	agency
2014	image
2015	whatever
2016	color
2017	sea
2018	base
2019	shake
2020	fall
2021	time
2022	bag
2023	medical
2024	above
2025	heavy
2026	improve
2027	enough
2028	federal
2029	theory
2030	expert
2031	bar
2032	mission
2033	bag
2034	she
2035	meet
2036	character
2037	eat
2038	arm
2039	movement
2040	coach
2041	together
2042	evening
2043	idea
2044	final
2045	its
2046	son
2047	claim
2048	night
2049	speak
2050	quality
2051	century
2052	buy
2053	others
2054	could
2055	owner
2056	like
2057	movement
2058	president
2059	campaign
2060	thank
2061	night
2062	final
2063	owner
2064	nice
2065	skill
2066	past
2067	property
2068	team
2069	manage
2070	operation
2071	since
2072	artist
2073	bit
2074	power
2075	age
2076	choice
2077	agent
2078	team
2079	talk
2080	himself
2081	suffer
2082	traditional
2083	enough
2084	some
2085	wide
2086	quality
2087	lay
2088	exactly
2089	hour
2090	guy
2091	itself
2092	foreign
2093	series
2094	hundred
2095	mean
2096	feel
2097	beautiful
2098	page
2099	support
2100	day
\.


--
-- Data for Name: relation_18; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_18 (user_id, email, password_hash, employee_no, role, department, browsingsession) FROM stdin;
1	dustin25@example.org	lay	\N	user	\N	\N
3	jamesduncan@example.org	enjoy	\N	user	\N	\N
4	leahwright@example.com	various	\N	user	\N	\N
5	brandon95@example.net	write	\N	user	\N	\N
6	badkins@example.com	buy	\N	user	\N	\N
8	sarah08@example.org	thought	\N	user	\N	\N
9	danielle89@example.org	base	\N	user	\N	\N
10	wjohnson@example.com	address	\N	user	\N	\N
12	zweaver@example.org	my	\N	user	\N	\N
13	davidwang@example.com	begin	\N	user	\N	\N
14	amy14@example.net	within	\N	user	\N	\N
15	xshea@example.com	inside	\N	user	\N	\N
16	uwilkins@example.com	southern	\N	user	\N	\N
17	brownaudrey@example.com	most	\N	user	\N	\N
18	jpowell@example.org	through	\N	user	\N	\N
19	susannoble@example.com	after	\N	user	\N	\N
20	nicolesanchez@example.com	fund	\N	user	\N	\N
22	njohnson@example.com	claim	\N	user	\N	\N
23	russellreynolds@example.com	other	\N	user	\N	\N
24	ashley55@example.com	site	\N	user	\N	\N
25	yday@example.org	management	\N	user	\N	\N
26	torresxavier@example.org	purpose	\N	user	\N	\N
27	joycehunt@example.org	health	\N	user	\N	\N
28	samuelhale@example.net	fund	\N	user	\N	\N
29	jamesdunn@example.com	treat	\N	user	\N	\N
30	brianfisher@example.net	drive	\N	user	\N	\N
31	christophermorgan@example.org	century	\N	user	\N	\N
32	wendy91@example.net	from	\N	user	\N	\N
33	joseph71@example.net	material	\N	user	\N	\N
34	mperez@example.net	leave	\N	user	\N	\N
35	marc94@example.org	common	\N	user	\N	\N
36	cdalton@example.com	focus	\N	user	\N	\N
37	matthew87@example.org	become	\N	user	\N	\N
38	yangjessica@example.net	so	\N	user	\N	\N
39	meyercourtney@example.org	indeed	\N	user	\N	\N
40	hector40@example.net	reason	\N	user	\N	\N
41	mariawelch@example.org	real	\N	user	\N	\N
42	curtismichelle@example.org	artist	\N	user	\N	\N
43	traceysmith@example.com	recently	\N	user	\N	\N
44	mejiajeffery@example.com	moment	\N	user	\N	\N
45	daniel64@example.net	performance	\N	user	\N	\N
46	brittanymack@example.com	education	\N	user	\N	\N
47	matthew04@example.com	he	\N	user	\N	\N
48	stacy68@example.org	government	\N	user	\N	\N
49	phale@example.net	money	\N	user	\N	\N
50	amoreno@example.org	for	\N	user	\N	\N
51	greenejoseph@example.net	present	\N	user	\N	\N
52	evansmindy@example.com	argue	\N	user	\N	\N
53	ashleystrickland@example.org	mother	\N	user	\N	\N
54	johnkane@example.com	at	\N	user	\N	\N
55	audreydorsey@example.org	officer	\N	user	\N	\N
56	campbellgabriel@example.com	go	\N	user	\N	\N
57	colleen86@example.org	north	\N	user	\N	\N
58	reyesjacob@example.org	same	\N	user	\N	\N
59	lstevens@example.org	center	\N	user	\N	\N
60	russell38@example.org	four	\N	user	\N	\N
61	bruceshea@example.net	bit	\N	user	\N	\N
62	summersjoshua@example.org	improve	\N	user	\N	\N
63	mendezrandy@example.org	civil	\N	user	\N	\N
64	turnertammy@example.org	ask	\N	user	\N	\N
65	robertrobles@example.net	son	\N	user	\N	\N
67	wrodriguez@example.net	consider	\N	user	\N	\N
68	caitlin58@example.net	wonder	\N	user	\N	\N
69	hpetty@example.com	wrong	\N	user	\N	\N
70	ubutler@example.com	painting	\N	user	\N	\N
71	brownbarbara@example.com	him	\N	user	\N	\N
72	jasminehorton@example.net	star	\N	user	\N	\N
73	williamsjacob@example.org	story	\N	user	\N	\N
74	hallstephanie@example.com	third	\N	user	\N	\N
75	jessicaperez@example.net	happen	\N	user	\N	\N
76	nicholas39@example.org	radio	\N	user	\N	\N
78	ianthompson@example.net	region	\N	user	\N	\N
79	christina31@example.org	art	\N	user	\N	\N
80	dcarroll@example.org	knowledge	\N	user	\N	\N
81	danielleharris@example.com	sit	\N	user	\N	\N
82	ywatts@example.com	impact	\N	user	\N	\N
83	rachelmunoz@example.org	issue	\N	user	\N	\N
84	therrera@example.com	trade	\N	user	\N	\N
85	ckelly@example.org	inside	\N	user	\N	\N
86	matthewjames@example.com	ago	\N	user	\N	\N
87	fbrown@example.com	wait	\N	user	\N	\N
88	jillaguilar@example.com	return	\N	user	\N	\N
89	halljonathan@example.com	garden	\N	user	\N	\N
90	ogutierrez@example.com	tend	\N	user	\N	\N
91	jennifer67@example.org	line	\N	user	\N	\N
92	gary62@example.org	paper	\N	user	\N	\N
93	josephstrickland@example.org	nation	\N	user	\N	\N
94	escobarabigail@example.net	lay	\N	user	\N	\N
95	knoxsamuel@example.net	enough	\N	user	\N	\N
96	gordonmargaret@example.net	bed	\N	user	\N	\N
97	crodriguez@example.org	none	\N	user	\N	\N
98	usmith@example.com	rich	\N	user	\N	\N
99	jessicafranklin@example.com	class	\N	user	\N	\N
100	nwhite@example.com	wrong	\N	user	\N	\N
401	robertwhite@example.net	cover	article	employee	\N	\N
402	wrightvicki@example.org	democratic	instead	employee	\N	\N
403	zsutton@example.net	everything	up	employee	\N	\N
404	pedrowhite@example.net	sell	market	employee	\N	\N
405	ihernandez@example.com	live	executive	employee	\N	\N
406	riverajulie@example.org	action	ahead	employee	\N	\N
407	kcobb@example.com	participant	common	employee	\N	\N
409	princedouglas@example.net	course	or	employee	\N	\N
410	ujones@example.net	million	medical	employee	\N	\N
411	tylercollier@example.org	certainly	western	employee	\N	\N
412	christophermorris@example.org	lay	animal	employee	\N	\N
414	jonesleslie@example.net	wife	major	employee	\N	\N
416	russellcrosby@example.net	industry	think	employee	\N	\N
417	rrivera@example.org	painting	himself	employee	\N	\N
418	beckvictoria@example.com	consider	test	employee	\N	\N
419	mathewssummer@example.net	section	down	employee	\N	\N
420	bryanzavala@example.org	investment	treat	employee	\N	\N
421	anthony55@example.net	among	significant	employee	\N	\N
422	barbermichelle@example.com	Democrat	record	employee	\N	\N
423	wesley34@example.net	game	audience	employee	\N	\N
425	kyle42@example.net	professor	newspaper	employee	\N	\N
426	robertsdavid@example.net	hear	experience	employee	\N	\N
427	john85@example.org	cultural	wonder	employee	\N	\N
428	jessicacole@example.org	oil	store	employee	\N	\N
429	brandon37@example.org	our	subject	employee	\N	\N
430	cobbtimothy@example.net	example	society	employee	\N	\N
431	fcooper@example.org	risk	north	employee	\N	\N
432	samanthalewis@example.org	performance	stage	employee	\N	\N
433	williamselizabeth@example.org	half	black	employee	\N	\N
434	michael06@example.org	pressure	one	employee	\N	\N
435	aprilhunt@example.org	agree	major	employee	\N	\N
436	eric62@example.org	nice	yes	employee	\N	\N
437	lauracamacho@example.net	camera	represent	employee	\N	\N
438	valdezsonya@example.com	fire	wonder	employee	\N	\N
439	nhall@example.org	father	though	employee	\N	\N
440	dmoore@example.com	mouth	remain	employee	\N	\N
441	dfuentes@example.org	run	help	employee	\N	\N
442	jlopez@example.net	great	memory	employee	\N	\N
443	summerspatrick@example.net	control	many	employee	\N	\N
444	rcampbell@example.com	remember	evidence	employee	\N	\N
445	shelia21@example.com	Republican	century	employee	\N	\N
446	gdunn@example.net	trade	series	employee	\N	\N
448	david20@example.com	ball	finally	employee	\N	\N
449	elee@example.net	energy	particular	employee	\N	\N
450	emurray@example.com	market	anything	employee	\N	\N
451	ujones@example.org	court	business	employee	\N	\N
452	donald87@example.org	sort	a	employee	\N	\N
453	alison70@example.org	degree	dream	employee	\N	\N
454	eric74@example.com	paper	pretty	employee	\N	\N
455	christensenmichael@example.com	between	down	employee	\N	\N
456	casey57@example.com	next	money	employee	\N	\N
457	mayokristin@example.net	report	bag	employee	\N	\N
459	michelleshort@example.org	enough	keep	employee	\N	\N
460	faith14@example.com	available	lawyer	employee	\N	\N
462	jamesroach@example.org	at	base	employee	\N	\N
463	raymond56@example.net	art	experience	employee	\N	\N
464	hwerner@example.com	wait	party	employee	\N	\N
468	kevinhernandez@example.org	black	wonder	employee	\N	\N
469	jessicasantiago@example.org	during	quite	employee	\N	\N
470	christopher05@example.net	international	quickly	employee	\N	\N
471	tprice@example.com	industry	worker	employee	\N	\N
472	andrew21@example.net	weight	ten	employee	\N	\N
473	brianwallace@example.net	amount	end	employee	\N	\N
474	rporter@example.org	still	message	employee	\N	\N
475	thomas99@example.com	cause	community	employee	\N	\N
476	nsutton@example.org	street	expert	employee	\N	\N
477	belindamiller@example.com	administration	rock	employee	\N	\N
478	evanswilliam@example.net	where	everyone	employee	\N	\N
479	thomasmichael@example.net	discussion	drive	employee	\N	\N
480	bennettrussell@example.com	large	big	employee	\N	\N
481	tpierce@example.org	resource	adult	employee	\N	\N
482	cherring@example.net	game	interesting	employee	\N	\N
483	nturner@example.com	sister	strong	employee	\N	\N
484	sparksshawn@example.net	may	whatever	employee	\N	\N
485	rachel54@example.net	try	nice	employee	\N	\N
486	sherry84@example.com	matter	maybe	employee	\N	\N
487	robert90@example.com	off	unit	employee	\N	\N
488	shannon83@example.com	operation	fine	employee	\N	\N
489	melissa18@example.net	point	feeling	employee	\N	\N
490	uriddle@example.org	early	reach	employee	\N	\N
491	jasminemahoney@example.com	improve	run	employee	\N	\N
493	anthony44@example.net	base	hotel	employee	\N	\N
494	bstrickland@example.org	enter	which	employee	\N	\N
495	umartinez@example.org	beat	sell	employee	\N	\N
496	johnsonsharon@example.net	value	doctor	employee	\N	\N
497	alexander85@example.net	between	author	employee	\N	\N
498	lwhite@example.net	business	environmental	employee	\N	\N
499	joann83@example.com	language	into	employee	\N	\N
500	melinda35@example.org	sure	budget	employee	\N	\N
501	danielmorris@example.org	position	course	corporateemployee	\N	\N
502	donna76@example.org	them	heavy	corporateemployee	\N	\N
503	gabrielnguyen@example.net	who	player	corporateemployee	\N	\N
504	kellydavid@example.com	total	smile	corporateemployee	\N	\N
505	zbell@example.com	character	forward	corporateemployee	\N	\N
506	christinageorge@example.net	reduce	go	corporateemployee	\N	\N
507	craigreginald@example.com	themselves	Democrat	corporateemployee	\N	\N
508	kayla90@example.net	begin	wife	corporateemployee	\N	\N
509	gweaver@example.org	magazine	ready	corporateemployee	\N	\N
510	mirandagilmore@example.com	bar	into	corporateemployee	\N	\N
511	dwest@example.com	ever	statement	corporateemployee	\N	\N
512	thoward@example.net	fear	ball	corporateemployee	\N	\N
513	oguzman@example.org	once	me	corporateemployee	\N	\N
514	kevinbarnes@example.com	forward	firm	corporateemployee	\N	\N
515	kimberly15@example.com	low	police	corporateemployee	\N	\N
516	nlucero@example.net	the	among	corporateemployee	\N	\N
517	xewing@example.org	painting	film	corporateemployee	\N	\N
519	wfitzgerald@example.net	certainly	imagine	corporateemployee	\N	\N
520	williamsjames@example.org	meeting	place	corporateemployee	\N	\N
521	meghanknox@example.net	live	rise	corporateemployee	\N	\N
522	kimberly54@example.net	identify	pattern	corporateemployee	\N	\N
523	thomasyoung@example.com	then	security	corporateemployee	\N	\N
524	sergiomiller@example.net	author	significant	corporateemployee	\N	\N
525	patrickkeith@example.org	write	reduce	corporateemployee	\N	\N
526	toniwilliams@example.com	black	where	corporateemployee	\N	\N
527	stacey64@example.net	third	suggest	corporateemployee	\N	\N
528	dperez@example.net	possible	choice	corporateemployee	\N	\N
529	mcintyreandrea@example.org	writer	material	corporateemployee	\N	\N
530	maloneandrew@example.com	professional	lead	corporateemployee	\N	\N
531	emily14@example.net	response	tough	corporateemployee	\N	\N
532	fieldsheather@example.com	win	east	corporateemployee	\N	\N
533	marie46@example.com	program	themselves	corporateemployee	\N	\N
534	stephen62@example.org	even	although	corporateemployee	\N	\N
535	anthony85@example.com	then	success	corporateemployee	\N	\N
536	khernandez@example.com	situation	bed	corporateemployee	\N	\N
538	hmitchell@example.net	six	himself	corporateemployee	\N	\N
539	ugray@example.net	enough	third	corporateemployee	\N	\N
540	austin34@example.com	event	system	corporateemployee	\N	\N
541	drewmorales@example.net	soldier	people	corporateemployee	\N	\N
542	averytaylor@example.net	various	rich	corporateemployee	\N	\N
543	uhoffman@example.com	finally	knowledge	corporateemployee	\N	\N
544	rcarter@example.org	each	at	corporateemployee	\N	\N
545	amandahughes@example.com	her	why	corporateemployee	\N	\N
546	jessicaclements@example.net	big	ten	corporateemployee	\N	\N
547	pmorris@example.org	house	indeed	corporateemployee	\N	\N
548	timothy46@example.org	force	pretty	corporateemployee	\N	\N
549	donaldadams@example.com	agency	back	corporateemployee	\N	\N
550	qbaker@example.org	phone	western	corporateemployee	\N	\N
551	taylormelissa@example.net	you	north	corporateemployee	\N	\N
552	hendersonryan@example.com	outside	better	corporateemployee	\N	\N
553	gordonjustin@example.com	firm	he	corporateemployee	\N	\N
554	harrissarah@example.com	skill	just	corporateemployee	\N	\N
555	asanchez@example.net	region	concern	corporateemployee	\N	\N
556	shane48@example.com	chair	run	corporateemployee	\N	\N
557	millscameron@example.org	budget	none	corporateemployee	\N	\N
558	amandawalker@example.org	affect	product	corporateemployee	\N	\N
559	jacob52@example.com	ability	health	corporateemployee	\N	\N
560	danielcampbell@example.com	stay	friend	corporateemployee	\N	\N
561	tracigarcia@example.com	create	history	corporateemployee	\N	\N
562	melissa39@example.com	allow	may	corporateemployee	\N	\N
563	cory74@example.org	agency	however	corporateemployee	\N	\N
564	laura09@example.net	employee	the	corporateemployee	\N	\N
565	arthurwhite@example.org	be	throw	corporateemployee	\N	\N
566	slowe@example.com	rule	public	corporateemployee	\N	\N
567	osbornmargaret@example.com	say	arm	corporateemployee	\N	\N
568	tiffanyhatfield@example.org	institution	administration	corporateemployee	\N	\N
569	paulvasquez@example.com	foreign	model	corporateemployee	\N	\N
570	kmaldonado@example.com	wind	state	corporateemployee	\N	\N
571	brettjackson@example.com	part	sea	corporateemployee	\N	\N
572	christopherallen@example.net	same	once	corporateemployee	\N	\N
573	danielcarr@example.net	short	share	corporateemployee	\N	\N
574	andrew58@example.org	short	relate	corporateemployee	\N	\N
575	xhayden@example.org	game	kid	corporateemployee	\N	\N
576	castanedabetty@example.com	cost	condition	corporateemployee	\N	\N
577	kempjoseph@example.com	can	affect	corporateemployee	\N	\N
578	darleneknight@example.com	action	college	corporateemployee	\N	\N
580	tyler73@example.org	friend	final	corporateemployee	\N	\N
581	angelicawhitaker@example.org	sit	term	corporateemployee	\N	\N
582	sbowers@example.org	once	head	corporateemployee	\N	\N
583	nguerra@example.org	whole	choose	corporateemployee	\N	\N
584	sevans@example.net	respond	fund	corporateemployee	\N	\N
585	amandagomez@example.net	might	relationship	corporateemployee	\N	\N
587	graykenneth@example.com	chance	picture	corporateemployee	\N	\N
588	allen25@example.com	trip	them	corporateemployee	\N	\N
589	jamesrodriguez@example.org	player	past	corporateemployee	\N	\N
590	robin54@example.net	staff	away	corporateemployee	\N	\N
591	escobarjohn@example.org	us	difficult	corporateemployee	\N	\N
592	julie97@example.org	which	skin	corporateemployee	\N	\N
593	zacharyhart@example.com	movement	enter	corporateemployee	\N	\N
594	xferguson@example.net	more	design	corporateemployee	\N	\N
595	lhoward@example.org	tell	might	corporateemployee	\N	\N
596	darrengarcia@example.org	couple	himself	corporateemployee	\N	\N
597	melanie34@example.com	eye	beat	corporateemployee	\N	\N
598	canderson@example.org	everything	anyone	corporateemployee	\N	\N
599	woodroy@example.com	address	represent	corporateemployee	\N	\N
600	fmcdowell@example.com	imagine	such	corporateemployee	\N	\N
601	changjoshua@example.com	position	garden	engineer	\N	\N
602	jonesmorgan@example.net	war	study	engineer	\N	\N
603	kromero@example.net	population	describe	engineer	\N	\N
604	charlesbrenda@example.com	expert	since	engineer	\N	\N
605	cisnerosdouglas@example.net	seek	white	engineer	\N	\N
606	clifford20@example.org	a	ground	engineer	\N	\N
607	mary88@example.net	around	old	engineer	\N	\N
608	khogan@example.org	far	station	engineer	\N	\N
609	johnsondiana@example.org	window	save	engineer	\N	\N
610	gary61@example.com	today	environmental	engineer	\N	\N
611	preid@example.org	follow	book	engineer	\N	\N
612	jason47@example.com	various	with	engineer	\N	\N
614	cgonzalez@example.org	true	author	engineer	\N	\N
615	flee@example.com	quite	production	engineer	\N	\N
616	palmerrobert@example.org	will	down	engineer	\N	\N
617	victoria18@example.org	notice	require	engineer	\N	\N
618	erika19@example.org	worker	work	engineer	\N	\N
620	vrodriguez@example.net	wife	two	engineer	\N	\N
621	rpena@example.org	morning	young	engineer	\N	\N
622	tdelgado@example.com	minute	boy	engineer	\N	\N
623	daniel66@example.net	organization	despite	engineer	\N	\N
624	russoeric@example.org	country	general	engineer	\N	\N
625	russellkrueger@example.org	forward	fish	engineer	\N	\N
626	xchandler@example.net	tough	along	engineer	\N	\N
627	joanna65@example.org	available	phone	engineer	\N	\N
628	andrew93@example.net	official	may	engineer	\N	\N
629	tcoleman@example.net	impact	community	engineer	\N	\N
630	cfreeman@example.org	environmental	environment	engineer	\N	\N
631	cynthia14@example.com	opportunity	fish	engineer	\N	\N
632	clarencehernandez@example.com	pull	minute	engineer	\N	\N
633	abrown@example.com	others	red	engineer	\N	\N
634	diana57@example.org	than	husband	engineer	\N	\N
635	xmaynard@example.com	magazine	suggest	engineer	\N	\N
638	gjones@example.net	none	tell	engineer	\N	\N
639	ymiddleton@example.com	notice	make	engineer	\N	\N
640	morenokaren@example.com	them	have	engineer	\N	\N
641	joseph74@example.net	rule	produce	engineer	\N	\N
642	johnhall@example.com	foot	difference	engineer	\N	\N
643	brittanybaxter@example.net	most	data	engineer	\N	\N
644	sryan@example.net	data	offer	engineer	\N	\N
645	nicholas23@example.org	end	most	engineer	\N	\N
646	bwarren@example.com	hope	plant	engineer	\N	\N
647	vmorris@example.org	course	she	engineer	\N	\N
649	uwest@example.org	thousand	so	engineer	\N	\N
650	daniel94@example.net	hand	show	engineer	\N	\N
651	jonathan06@example.net	land	provide	engineer	\N	\N
652	shannonjulia@example.net	source	morning	engineer	\N	\N
653	michael93@example.com	action	fact	engineer	\N	\N
654	daughertyjohn@example.net	together	edge	engineer	\N	\N
655	johnny13@example.net	research	movement	engineer	\N	\N
656	joesullivan@example.com	say	hospital	engineer	\N	\N
657	xmueller@example.org	go	show	engineer	\N	\N
658	hclark@example.com	budget	tough	engineer	\N	\N
659	jeffrey05@example.com	issue	floor	engineer	\N	\N
660	jonathan46@example.org	several	bank	engineer	\N	\N
661	scottroberson@example.net	investment	fight	engineer	\N	\N
662	douglas66@example.com	father	direction	engineer	\N	\N
663	wrightrebecca@example.net	certainly	tree	engineer	\N	\N
664	qjones@example.com	sea	fact	engineer	\N	\N
665	zhorn@example.net	majority	final	engineer	\N	\N
666	fostergregory@example.org	medical	number	engineer	\N	\N
667	ernestsullivan@example.net	hear	property	engineer	\N	\N
668	alishachristensen@example.net	receive	perform	engineer	\N	\N
669	mirandaboyd@example.com	bank	a	engineer	\N	\N
670	patricialopez@example.net	large	fight	engineer	\N	\N
671	johnsonryan@example.com	then	tree	engineer	\N	\N
672	santiagorussell@example.net	establish	security	engineer	\N	\N
673	heather37@example.org	six	sign	engineer	\N	\N
674	elizabethbailey@example.org	team	particularly	engineer	\N	\N
675	crossjudy@example.net	send	get	engineer	\N	\N
676	philip28@example.com	child	little	engineer	\N	\N
677	nedwards@example.com	would	son	engineer	\N	\N
678	amyevans@example.net	baby	remember	engineer	\N	\N
679	cmason@example.org	no	enough	engineer	\N	\N
680	salazarpamela@example.net	sometimes	three	engineer	\N	\N
681	frederickcoleman@example.net	recent	per	engineer	\N	\N
682	amanda78@example.net	each	somebody	engineer	\N	\N
683	gouldbradley@example.org	nature	price	engineer	\N	\N
684	zpham@example.com	conference	little	engineer	\N	\N
685	joshua05@example.net	actually	table	engineer	\N	\N
686	nicholasgarza@example.com	true	camera	engineer	\N	\N
687	matthewdixon@example.org	class	heavy	engineer	\N	\N
688	ryan79@example.net	inside	charge	engineer	\N	\N
689	sheriwhite@example.org	music	issue	engineer	\N	\N
691	paulgomez@example.com	product	issue	engineer	\N	\N
692	rnolan@example.com	health	threat	engineer	\N	\N
693	kathleen07@example.com	still	show	engineer	\N	\N
694	donald14@example.com	environmental	election	engineer	\N	\N
696	hinesvalerie@example.org	property	particular	engineer	\N	\N
697	icruz@example.net	player	which	engineer	\N	\N
698	kevin65@example.net	always	fall	engineer	\N	\N
700	smithmark@example.com	thing	difficult	engineer	\N	\N
702	jyates@example.net	what	often	supportagent	\N	\N
703	claudia72@example.com	under	smile	supportagent	\N	\N
704	susan95@example.net	evening	year	supportagent	\N	\N
705	handrews@example.net	resource	fill	supportagent	\N	\N
706	valerie03@example.com	evidence	collection	supportagent	\N	\N
707	wilsoncharles@example.org	save	role	supportagent	\N	\N
708	jonesmichael@example.net	prove	quickly	supportagent	\N	\N
709	kimberly73@example.com	tree	share	supportagent	\N	\N
710	mknox@example.net	person	free	supportagent	\N	\N
711	smithdeborah@example.com	remember	sort	supportagent	\N	\N
712	rjohnson@example.com	can	those	supportagent	\N	\N
713	jasminemoreno@example.com	lose	deal	supportagent	\N	\N
714	brycestanley@example.net	bank	official	supportagent	\N	\N
715	robert31@example.net	themselves	because	supportagent	\N	\N
716	steven91@example.com	anything	education	supportagent	\N	\N
717	patriciasmith@example.com	drug	fall	supportagent	\N	\N
719	maldonadophilip@example.net	suddenly	why	supportagent	\N	\N
720	anthony07@example.net	situation	many	supportagent	\N	\N
721	jameszachary@example.com	accept	address	supportagent	\N	\N
722	tlam@example.net	four	bed	supportagent	\N	\N
723	brooke02@example.net	many	hand	supportagent	\N	\N
725	vdavis@example.org	state	political	supportagent	\N	\N
726	ymann@example.net	against	meeting	supportagent	\N	\N
727	brandon16@example.com	learn	after	supportagent	\N	\N
728	williamssarah@example.net	claim	account	supportagent	\N	\N
731	kenneth98@example.com	good	peace	supportagent	\N	\N
732	sharon18@example.net	necessary	read	supportagent	\N	\N
733	pittswilliam@example.net	student	think	supportagent	\N	\N
735	rbrown@example.com	discuss	believe	supportagent	\N	\N
736	martinezrichard@example.net	of	never	supportagent	\N	\N
737	keithlowe@example.net	management	majority	supportagent	\N	\N
738	penadebbie@example.org	door	capital	supportagent	\N	\N
739	tscott@example.com	collection	somebody	supportagent	\N	\N
741	barryburns@example.org	wrong	identify	supportagent	\N	\N
742	carolvilla@example.com	any	budget	supportagent	\N	\N
743	ralphwheeler@example.org	history	figure	supportagent	\N	\N
744	lewisphillip@example.org	artist	poor	supportagent	\N	\N
745	catherine59@example.com	only	summer	supportagent	\N	\N
746	buchanankatrina@example.com	like	quite	supportagent	\N	\N
747	cantumark@example.org	money	program	supportagent	\N	\N
748	kennedytimothy@example.com	practice	authority	supportagent	\N	\N
749	hallsydney@example.com	maintain	will	supportagent	\N	\N
750	jennifer01@example.org	card	process	supportagent	\N	\N
752	yatesjared@example.org	manage	mention	supportagent	\N	\N
755	joseph65@example.org	minute	reveal	supportagent	\N	\N
756	brooksmargaret@example.org	these	officer	supportagent	\N	\N
757	courtney09@example.org	election	so	supportagent	\N	\N
758	rebecca52@example.com	a	just	supportagent	\N	\N
759	carloscampbell@example.org	first	event	supportagent	\N	\N
760	tolson@example.org	family	mean	supportagent	\N	\N
762	xgraves@example.net	part	support	supportagent	\N	\N
763	lewisalan@example.com	gun	shoulder	supportagent	\N	\N
764	michaelbanks@example.org	traditional	this	supportagent	\N	\N
765	andrewknox@example.com	foreign	official	supportagent	\N	\N
766	heatherpotter@example.com	real	traditional	supportagent	\N	\N
767	harperphilip@example.com	too	before	supportagent	\N	\N
768	robertwhite@example.org	interview	what	supportagent	\N	\N
769	mdowns@example.net	participant	message	supportagent	\N	\N
770	lisa50@example.org	ask	record	supportagent	\N	\N
771	johnsontyler@example.net	market	wait	supportagent	\N	\N
773	rachelbates@example.com	gas	matter	supportagent	\N	\N
775	alice83@example.com	office	food	supportagent	\N	\N
776	cking@example.com	eye	page	supportagent	\N	\N
777	albert97@example.com	information	role	supportagent	\N	\N
778	laurayoung@example.net	how	treatment	supportagent	\N	\N
779	greenbecky@example.org	certainly	energy	supportagent	\N	\N
780	bobby44@example.com	watch	style	supportagent	\N	\N
781	waltonchristopher@example.com	actually	possible	supportagent	\N	\N
782	erin21@example.net	family	apply	supportagent	\N	\N
783	qcarrillo@example.com	thousand	sense	supportagent	\N	\N
785	jamesscott@example.net	expect	mind	supportagent	\N	\N
786	jenkinssamantha@example.com	staff	cell	supportagent	\N	\N
787	ryan32@example.com	executive	hope	supportagent	\N	\N
788	xharris@example.org	night	young	supportagent	\N	\N
789	eedwards@example.net	do	assume	supportagent	\N	\N
790	danielkaufman@example.org	price	behavior	supportagent	\N	\N
791	gonzalezamanda@example.com	oil	act	supportagent	\N	\N
792	nbenton@example.com	include	at	supportagent	\N	\N
793	paul40@example.net	arrive	say	supportagent	\N	\N
794	christopherkline@example.org	religious	break	supportagent	\N	\N
795	vwatson@example.net	second	into	supportagent	\N	\N
796	joneselijah@example.com	activity	arm	supportagent	\N	\N
797	mhardin@example.org	difficult	any	supportagent	\N	\N
798	christian08@example.net	defense	time	supportagent	\N	\N
799	gkennedy@example.org	these	serve	supportagent	\N	\N
800	blevinsroberto@example.org	ball	each	supportagent	\N	\N
802	thomasnina@example.com	shoulder	sound	fulfillmentassociate	\N	\N
804	kaylavalencia@example.net	dinner	view	fulfillmentassociate	\N	\N
805	alan85@example.net	whom	improve	fulfillmentassociate	\N	\N
806	rose87@example.com	church	ever	fulfillmentassociate	\N	\N
807	amber27@example.org	half	but	fulfillmentassociate	\N	\N
809	cynthia34@example.org	spring	summer	fulfillmentassociate	\N	\N
810	hphillips@example.com	quite	perform	fulfillmentassociate	\N	\N
811	alexander32@example.net	authority	most	fulfillmentassociate	\N	\N
812	tylerstewart@example.net	administration	sister	fulfillmentassociate	\N	\N
813	robinsongregory@example.com	rule	field	fulfillmentassociate	\N	\N
814	hesterchad@example.com	dark	Democrat	fulfillmentassociate	\N	\N
816	jordansmith@example.net	despite	also	fulfillmentassociate	\N	\N
817	john70@example.com	visit	issue	fulfillmentassociate	\N	\N
818	dzuniga@example.com	base	wait	fulfillmentassociate	\N	\N
819	williamcox@example.net	seat	skill	fulfillmentassociate	\N	\N
820	jenniferdiaz@example.org	him	different	fulfillmentassociate	\N	\N
821	dawnbell@example.org	often	buy	fulfillmentassociate	\N	\N
823	santiagorobert@example.com	choose	among	fulfillmentassociate	\N	\N
824	alanblack@example.com	news	sport	fulfillmentassociate	\N	\N
825	danielsmatthew@example.org	change	agent	fulfillmentassociate	\N	\N
826	cherrynicholas@example.net	or	top	fulfillmentassociate	\N	\N
827	david98@example.net	upon	wall	fulfillmentassociate	\N	\N
828	garciajoanna@example.com	rich	within	fulfillmentassociate	\N	\N
829	johnsonmichael@example.com	character	choose	fulfillmentassociate	\N	\N
830	christian49@example.org	box	view	fulfillmentassociate	\N	\N
831	allendavid@example.net	young	range	fulfillmentassociate	\N	\N
832	garciaann@example.com	town	out	fulfillmentassociate	\N	\N
833	tross@example.net	of	cut	fulfillmentassociate	\N	\N
834	shorton@example.com	student	for	fulfillmentassociate	\N	\N
835	franciscorobles@example.org	state	than	fulfillmentassociate	\N	\N
838	stevengrant@example.net	pressure	expect	fulfillmentassociate	\N	\N
839	juliawhite@example.com	week	put	fulfillmentassociate	\N	\N
840	zhunter@example.org	water	education	fulfillmentassociate	\N	\N
841	stephanie80@example.org	government	way	fulfillmentassociate	\N	\N
842	mmathews@example.net	direction	until	fulfillmentassociate	\N	\N
843	kevincopeland@example.org	though	history	fulfillmentassociate	\N	\N
844	fgreen@example.net	short	show	fulfillmentassociate	\N	\N
845	nguyentaylor@example.net	lawyer	top	fulfillmentassociate	\N	\N
846	nbender@example.com	development	beat	fulfillmentassociate	\N	\N
847	jharris@example.net	exist	sure	fulfillmentassociate	\N	\N
848	alvaradobrandon@example.org	parent	local	fulfillmentassociate	\N	\N
849	badams@example.net	base	force	fulfillmentassociate	\N	\N
850	carlsonjoanne@example.net	special	dream	fulfillmentassociate	\N	\N
851	kelseyrobinson@example.net	and	year	fulfillmentassociate	\N	\N
852	danielle43@example.org	simply	place	fulfillmentassociate	\N	\N
853	jeanneallen@example.com	speech	story	fulfillmentassociate	\N	\N
854	shawnmartinez@example.net	let	play	fulfillmentassociate	\N	\N
855	carrbradley@example.com	society	provide	fulfillmentassociate	\N	\N
856	btrujillo@example.net	require	write	fulfillmentassociate	\N	\N
857	williamsdiane@example.net	choose	decide	fulfillmentassociate	\N	\N
858	pcrawford@example.org	treat	factor	fulfillmentassociate	\N	\N
859	cgoodman@example.org	he	scene	fulfillmentassociate	\N	\N
860	bernardbutler@example.com	daughter	capital	fulfillmentassociate	\N	\N
861	nmcfarland@example.net	paper	impact	fulfillmentassociate	\N	\N
862	hhudson@example.com	two	policy	fulfillmentassociate	\N	\N
863	ycarlson@example.net	finally	hot	fulfillmentassociate	\N	\N
864	stanleydavis@example.com	maybe	effort	fulfillmentassociate	\N	\N
865	jessesmith@example.com	later	catch	fulfillmentassociate	\N	\N
866	ibrown@example.net	run	concern	fulfillmentassociate	\N	\N
867	wgray@example.net	politics	free	fulfillmentassociate	\N	\N
868	angelabolton@example.com	fish	cut	fulfillmentassociate	\N	\N
869	vjohnson@example.net	property	finish	fulfillmentassociate	\N	\N
870	yfox@example.com	painting	major	fulfillmentassociate	\N	\N
871	jessica30@example.org	account	visit	fulfillmentassociate	\N	\N
872	snyderrichard@example.com	hit	health	fulfillmentassociate	\N	\N
873	gailpatterson@example.net	model	available	fulfillmentassociate	\N	\N
874	nicholasreynolds@example.com	civil	deep	fulfillmentassociate	\N	\N
875	chelsea72@example.org	might	according	fulfillmentassociate	\N	\N
876	davisjeremy@example.com	garden	staff	fulfillmentassociate	\N	\N
877	simpsonstephanie@example.org	degree	sort	fulfillmentassociate	\N	\N
878	omar32@example.com	food	as	fulfillmentassociate	\N	\N
879	robertmalone@example.org	beat	east	fulfillmentassociate	\N	\N
880	vanessa54@example.net	over	above	fulfillmentassociate	\N	\N
881	figueroaandrea@example.org	now	like	fulfillmentassociate	\N	\N
882	cartererin@example.com	age	throughout	fulfillmentassociate	\N	\N
883	juliablake@example.net	test	job	fulfillmentassociate	\N	\N
884	karen87@example.com	above	address	fulfillmentassociate	\N	\N
885	patrick54@example.org	father	small	fulfillmentassociate	\N	\N
886	scarter@example.org	production	stuff	fulfillmentassociate	\N	\N
887	bryan99@example.com	then	paper	fulfillmentassociate	\N	\N
888	kempkarina@example.net	concern	religious	fulfillmentassociate	\N	\N
889	vthompson@example.com	today	more	fulfillmentassociate	\N	\N
890	paulyates@example.net	behind	article	fulfillmentassociate	\N	\N
891	duncanchad@example.net	message	hour	fulfillmentassociate	\N	\N
892	jonesashley@example.net	indeed	wind	fulfillmentassociate	\N	\N
893	riggsmatthew@example.com	hair	question	fulfillmentassociate	\N	\N
894	ttaylor@example.org	service	deep	fulfillmentassociate	\N	\N
895	uedwards@example.com	it	business	fulfillmentassociate	\N	\N
896	fordshawn@example.com	little	above	fulfillmentassociate	\N	\N
897	wmoreno@example.org	evening	strong	fulfillmentassociate	\N	\N
900	alexis09@example.org	human	behavior	fulfillmentassociate	\N	\N
901	brittanystokes@example.net	feeling	enough	categorymanager	actually	\N
902	patriciaflores@example.net	between	per	categorymanager	within	\N
903	angela18@example.com	result	gas	categorymanager	save	\N
904	timothyhenderson@example.com	meet	notice	categorymanager	different	\N
905	denniswalsh@example.net	half	citizen	categorymanager	rather	\N
906	urussell@example.com	despite	stop	categorymanager	star	\N
907	ronald95@example.net	attack	wind	categorymanager	eye	\N
908	dannybridges@example.net	state	skill	categorymanager	water	\N
911	nsmith@example.org	especially	great	categorymanager	continue	\N
912	njimenez@example.org	property	piece	categorymanager	hot	\N
913	brian46@example.com	politics	line	categorymanager	more	\N
914	jenkinscraig@example.net	field	machine	categorymanager	reflect	\N
915	jordanwillis@example.org	include	toward	categorymanager	fact	\N
916	jamieflores@example.net	window	theory	categorymanager	successful	\N
917	timothy61@example.org	visit	data	categorymanager	despite	\N
918	annettecrawford@example.com	tend	kind	categorymanager	back	\N
919	williamsjonathon@example.net	guy	anyone	categorymanager	establish	\N
920	stephaniehudson@example.com	guy	wait	categorymanager	every	\N
922	cunninghamshirley@example.com	local	seek	categorymanager	political	\N
923	cantualicia@example.net	tend	seek	categorymanager	front	\N
924	martinalexandra@example.org	for	matter	categorymanager	day	\N
925	scarrillo@example.net	draw	score	categorymanager	cut	\N
926	lukejones@example.net	nearly	decade	categorymanager	general	\N
927	dennisdavis@example.org	end	what	categorymanager	figure	\N
928	fperez@example.net	attack	claim	categorymanager	against	\N
930	vrobinson@example.org	management	hospital	categorymanager	audience	\N
931	parsonswilliam@example.com	other	wrong	categorymanager	plan	\N
932	marie57@example.net	one	lawyer	categorymanager	take	\N
933	ashleywong@example.net	involve	whether	categorymanager	rule	\N
934	christopher35@example.org	nation	look	categorymanager	risk	\N
935	jeffrey54@example.com	country	standard	categorymanager	factor	\N
936	garrett55@example.net	career	best	categorymanager	science	\N
937	daltonroberts@example.org	know	minute	categorymanager	represent	\N
938	kevinpatton@example.com	in	who	categorymanager	not	\N
939	rjohnson@example.net	happy	yeah	categorymanager	next	\N
940	walkerchristopher@example.net	speak	him	categorymanager	result	\N
941	michael93@example.com	break	to	categorymanager	power	\N
942	christianfranklin@example.org	arrive	than	categorymanager	budget	\N
943	dayfernando@example.org	budget	word	categorymanager	federal	\N
944	amymendez@example.com	gas	hand	categorymanager	down	\N
945	jack07@example.net	organization	after	categorymanager	catch	\N
947	holmesdarlene@example.net	establish	rise	categorymanager	hand	\N
948	melissaevans@example.com	economy	game	categorymanager	only	\N
949	qbailey@example.net	market	surface	categorymanager	real	\N
950	margaret74@example.net	present	throw	categorymanager	chair	\N
951	ojohnson@example.org	health	son	categorymanager	form	\N
952	gonzalezeric@example.net	become	seat	categorymanager	there	\N
953	james66@example.net	evening	line	categorymanager	need	\N
954	anthonywolf@example.net	key	old	categorymanager	either	\N
955	williamsmarissa@example.org	get	speak	categorymanager	even	\N
956	fcruz@example.com	standard	but	categorymanager	party	\N
957	keithjimenez@example.com	air	reflect	categorymanager	receive	\N
958	dward@example.net	need	produce	categorymanager	rock	\N
959	webbnicole@example.com	act	area	categorymanager	lead	\N
960	jasonmartin@example.net	bag	first	categorymanager	apply	\N
961	warnermarie@example.com	though	population	categorymanager	explain	\N
962	holderandrea@example.net	hospital	away	categorymanager	from	\N
963	michelle31@example.com	suffer	political	categorymanager	all	\N
964	bakercameron@example.net	fall	building	categorymanager	beautiful	\N
965	edward83@example.net	both	close	categorymanager	site	\N
966	joel28@example.org	remember	memory	categorymanager	drop	\N
968	melissa36@example.net	account	travel	categorymanager	relate	\N
969	johnalexander@example.com	today	program	categorymanager	game	\N
970	charles49@example.org	long	although	categorymanager	watch	\N
971	petersonryan@example.com	third	wish	categorymanager	building	\N
972	moonamber@example.com	maybe	happy	categorymanager	whose	\N
973	jonesnicholas@example.com	suffer	next	categorymanager	life	\N
974	armstrongkenneth@example.com	crime	act	categorymanager	keep	\N
975	russelllee@example.com	radio	structure	categorymanager	thousand	\N
976	ztrujillo@example.org	understand	form	categorymanager	challenge	\N
978	aarmstrong@example.org	analysis	argue	categorymanager	watch	\N
979	andersondanielle@example.com	use	sometimes	categorymanager	very	\N
980	zwelch@example.com	hotel	whose	categorymanager	would	\N
981	johnathan26@example.com	whole	of	categorymanager	second	\N
982	pwilliamson@example.org	on	yeah	categorymanager	might	\N
983	crodriguez@example.org	about	than	categorymanager	parent	\N
984	nrogers@example.org	than	responsibility	categorymanager	high	\N
985	kimberlyortiz@example.net	nature	again	categorymanager	of	\N
986	icervantes@example.org	authority	simple	categorymanager	travel	\N
987	rogersrobert@example.com	claim	water	categorymanager	push	\N
988	anthonydiaz@example.org	allow	off	categorymanager	person	\N
989	michaelkelly@example.com	dark	increase	categorymanager	around	\N
990	dakota25@example.com	sense	tonight	categorymanager	central	\N
991	eyoung@example.net	state	pay	categorymanager	necessary	\N
992	robinsonrobert@example.com	same	region	categorymanager	scene	\N
994	brianbass@example.com	bag	yeah	categorymanager	seem	\N
996	garciamitchell@example.org	top	book	categorymanager	heavy	\N
997	kellypetersen@example.net	perform	particularly	categorymanager	difference	\N
998	oneillgeoffrey@example.net	almost	science	categorymanager	all	\N
999	alexander24@example.org	animal	fall	categorymanager	several	\N
1000	juancastillo@example.com	behind	author	categorymanager	western	\N
7	rowlandkatie@example.net	cost	\N	user	\N	[{"device": "country", "session_id": "445", "started_at": "draw"}]
740	ewright@example.org	hospital	picture	supportagent	\N	[{"device": "religious", "session_id": "702", "started_at": "responsibility"}]
699	barbara40@example.net	husband	pressure	engineer	\N	[{"device": "act", "session_id": "641", "started_at": "want"}]
946	amandahenderson@example.net	less	control	categorymanager	least	[{"device": "least", "session_id": "38", "started_at": "sign"}]
461	adam85@example.org	where	write	employee	\N	[{"device": "series", "session_id": "322", "started_at": "determine"}]
967	riosrebecca@example.org	ask	final	categorymanager	left	[{"device": "sell", "session_id": "224", "started_at": "quite"}]
619	paynekathleen@example.org	area	since	engineer	\N	[{"device": "third", "session_id": "747", "started_at": "kid"}]
518	gbaker@example.net	maybe	wall	corporateemployee	\N	[{"device": "himself", "session_id": "578", "started_at": "follow"}]
586	llewis@example.net	modern	evidence	corporateemployee	\N	[{"device": "discussion", "session_id": "63", "started_at": "pretty"}]
66	allison14@example.net	wall	\N	user	\N	[{"device": "after", "session_id": "685", "started_at": "allow"}]
995	kevin40@example.com	happy	wind	categorymanager	will	[{"device": "strong", "session_id": "975", "started_at": "state"}]
648	michellerobinson@example.org	house	recognize	engineer	\N	[{"device": "attorney", "session_id": "671", "started_at": "hear"}]
415	woodsshelley@example.net	federal	growth	employee	\N	[{"device": "Democrat", "session_id": "630", "started_at": "clearly"}]
803	chrismay@example.net	here	address	fulfillmentassociate	\N	[{"device": "word", "session_id": "783", "started_at": "success"}]
77	mooreamy@example.org	art	\N	user	\N	[{"device": "item", "session_id": "899", "started_at": "participant"}]
909	johnmiller@example.net	it	usually	categorymanager	begin	[{"device": "training", "session_id": "377", "started_at": "avoid"}]
772	millerdale@example.com	summer	feeling	supportagent	\N	[{"device": "she", "session_id": "361", "started_at": "leave"}]
898	cli@example.org	answer	Mr	fulfillmentassociate	\N	[{"device": "easy", "session_id": "778", "started_at": "billion"}]
467	charlesallen@example.org	decide	kitchen	employee	\N	[{"device": "general", "session_id": "40", "started_at": "whose"}]
993	qduncan@example.com	light	late	categorymanager	son	[{"device": "necessary", "session_id": "979", "started_at": "city"}]
921	stephaniebaker@example.net	cup	admit	categorymanager	must	[{"device": "follow", "session_id": "421", "started_at": "politics"}, {"device": "degree", "session_id": "316", "started_at": "believe"}]
21	sdavila@example.org	money	\N	user	\N	[{"device": "over", "session_id": "430", "started_at": "body"}]
537	nlopez@example.net	live	admit	corporateemployee	\N	[{"device": "price", "session_id": "314", "started_at": "floor"}]
977	alison49@example.com	table	office	categorymanager	region	[{"device": "animal", "session_id": "863", "started_at": "source"}]
637	cooperrussell@example.com	Mr	officer	engineer	\N	[{"device": "security", "session_id": "447", "started_at": "investment"}]
754	william58@example.org	almost	reflect	supportagent	\N	[{"device": "great", "session_id": "709", "started_at": "structure"}]
837	susanwarner@example.com	coach	side	fulfillmentassociate	\N	[{"device": "serve", "session_id": "128", "started_at": "nature"}]
730	jonathan50@example.net	film	court	supportagent	\N	[{"device": "film", "session_id": "848", "started_at": "ahead"}]
774	alyssa67@example.org	voice	particularly	supportagent	\N	[{"device": "party", "session_id": "872", "started_at": "better"}]
492	anthony93@example.net	knowledge	leader	employee	\N	[{"device": "scientist", "session_id": "268", "started_at": "last"}]
910	sierrasmith@example.org	protect	close	categorymanager	discover	[{"device": "grow", "session_id": "571", "started_at": "blue"}]
753	christinasutton@example.com	bring	position	supportagent	\N	[{"device": "position", "session_id": "264", "started_at": "network"}]
784	combsedward@example.org	under	leave	supportagent	\N	[{"device": "phone", "session_id": "748", "started_at": "development"}]
413	mitchell23@example.com	see	beat	employee	\N	[{"device": "shoulder", "session_id": "672", "started_at": "at"}]
751	bryanlittle@example.com	speak	beautiful	supportagent	\N	[{"device": "two", "session_id": "65", "started_at": "country"}]
815	emitchell@example.com	your	become	fulfillmentassociate	\N	[{"device": "beyond", "session_id": "640", "started_at": "few"}, {"device": "level", "session_id": "294", "started_at": "police"}]
801	tpatel@example.org	anything	produce	fulfillmentassociate	\N	[{"device": "federal", "session_id": "607", "started_at": "pass"}]
836	morrisonjodi@example.org	tax	citizen	fulfillmentassociate	\N	[{"device": "believe", "session_id": "7", "started_at": "early"}]
458	collinsbrenda@example.net	official	wish	employee	\N	[{"device": "PM", "session_id": "367", "started_at": "relate"}]
734	parkerbenjamin@example.org	what	common	supportagent	\N	[{"device": "them", "session_id": "152", "started_at": "each"}]
724	peterdavenport@example.net	war	black	supportagent	\N	[{"device": "why", "session_id": "28", "started_at": "three"}]
729	ramirezsandra@example.org	practice	court	supportagent	\N	[{"device": "start", "session_id": "889", "started_at": "tend"}]
690	elizabethmartinez@example.com	design	sure	engineer	\N	[{"device": "newspaper", "session_id": "792", "started_at": "special"}]
579	curtiscollins@example.net	personal	develop	corporateemployee	\N	[{"device": "job", "session_id": "10", "started_at": "attention"}]
11	bhuff@example.net	account	\N	user	\N	[{"device": "rate", "session_id": "421", "started_at": "west"}]
718	linda86@example.org	program	water	supportagent	\N	[{"device": "also", "session_id": "82", "started_at": "but"}]
424	mmcclure@example.org	law	site	employee	\N	[{"device": "relate", "session_id": "838", "started_at": "score"}]
636	clinedaniel@example.net	floor	during	engineer	\N	[{"device": "them", "session_id": "528", "started_at": "drop"}]
695	halldiane@example.org	community	then	engineer	\N	[{"device": "campaign", "session_id": "301", "started_at": "since"}]
2	ramirezkathleen@example.org	time	\N	user	\N	[{"device": "successful", "session_id": "169", "started_at": "we"}]
929	martinezbrandi@example.com	message	production	categorymanager	forward	[{"device": "truth", "session_id": "254", "started_at": "stuff"}]
465	wfleming@example.net	happen	young	employee	\N	[{"device": "Congress", "session_id": "840", "started_at": "institution"}]
899	petersengavin@example.net	people	upon	fulfillmentassociate	\N	[{"device": "keep", "session_id": "157", "started_at": "mind"}]
808	teresa74@example.net	assume	eight	fulfillmentassociate	\N	[{"device": "eye", "session_id": "893", "started_at": "stuff"}]
613	christophermoran@example.com	huge	tree	engineer	\N	[{"device": "option", "session_id": "103", "started_at": "poor"}]
447	afritz@example.com	suddenly	shoulder	employee	\N	[{"device": "possible", "session_id": "326", "started_at": "serious"}]
701	piercejacqueline@example.org	question	anyone	supportagent	\N	[{"device": "region", "session_id": "1000", "started_at": "store"}]
822	jacksondaniel@example.org	fire	recognize	fulfillmentassociate	\N	[{"device": "realize", "session_id": "905", "started_at": "hand"}]
408	williamjimenez@example.net	may	method	employee	\N	[{"device": "authority", "session_id": "444", "started_at": "level"}]
466	william62@example.org	family	do	employee	\N	[{"device": "significant", "session_id": "11", "started_at": "performance"}]
761	ustokes@example.org	mission	build	supportagent	\N	[{"device": "decide", "session_id": "891", "started_at": "turn"}]
\.


--
-- Data for Name: relation_19; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_19 (user_id, mv_user) FROM stdin;
1	happen
1	campaign
2	end
2	improve
2	law
2	feeling
3	whole
3	adult
3	marriage
4	small
4	thank
5	me
5	range
5	keep
6	plan
7	take
8	perhaps
9	too
9	yes
10	back
10	company
10	drive
10	teacher
11	stage
11	rate
11	trip
11	despite
12	book
13	six
13	eat
13	type
13	art
14	real
15	appear
15	compare
16	listen
17	such
17	data
17	because
18	stuff
19	federal
19	value
19	increase
19	occur
20	such
20	her
21	nation
21	return
22	carry
22	power
23	student
23	officer
24	kitchen
24	movie
24	attention
24	five
25	blood
25	quite
26	cause
26	politics
27	happy
27	employee
28	religious
28	way
28	why
29	action
30	individual
30	TV
30	particularly
31	family
32	character
32	current
32	prevent
32	medical
33	usually
33	feeling
33	step
33	issue
34	weight
35	commercial
36	morning
36	again
36	inside
36	off
37	ready
37	herself
38	indeed
38	operation
38	work
38	agent
39	as
39	serve
39	goal
40	group
41	pass
42	film
43	which
43	knowledge
44	center
44	cold
45	run
45	camera
45	song
46	drive
47	resource
47	little
47	unit
48	little
48	expect
49	buy
50	eye
51	world
51	rule
51	north
51	small
52	security
52	contain
53	cell
53	happy
53	herself
54	car
55	bill
56	must
56	leg
56	use
57	of
57	open
58	floor
58	shake
59	individual
59	citizen
60	power
60	human
60	then
61	indicate
61	level
61	statement
61	four
62	field
62	specific
62	next
63	western
64	Congress
65	another
65	top
65	whether
66	institution
66	realize
67	according
68	we
68	ahead
68	short
69	most
69	act
69	hear
70	modern
70	whose
71	central
72	activity
72	must
72	either
72	draw
73	Republican
73	particular
74	guy
74	herself
74	government
75	perform
75	financial
75	memory
76	wind
76	job
76	weight
76	or
77	throughout
77	stock
77	but
77	see
78	through
78	young
78	for
78	language
79	simply
79	marriage
79	become
80	attorney
80	give
80	sell
80	staff
81	enter
703	my
82	others
83	cultural
84	thank
84	for
85	both
85	fast
85	others
86	TV
86	physical
87	notice
88	provide
89	against
89	very
89	hundred
90	somebody
90	hour
91	between
91	these
91	decade
91	she
92	fight
92	southern
92	marriage
92	least
93	successful
94	film
95	individual
95	with
95	shake
95	life
96	go
96	what
96	beyond
97	relationship
97	religious
97	safe
98	amount
99	also
100	or
100	continue
100	generation
101	difficult
101	much
102	environmental
102	represent
102	until
102	practice
103	another
103	city
104	share
104	long
104	very
104	produce
105	lay
105	food
106	another
106	describe
107	third
107	resource
108	cause
109	interesting
109	camera
110	agreement
110	paper
110	above
111	available
111	bill
111	above
111	into
112	finally
112	difficult
112	reflect
112	control
113	establish
113	thank
113	break
113	quality
114	campaign
115	police
115	however
116	school
117	air
117	change
117	personal
117	structure
118	growth
118	team
118	understand
118	onto
119	class
119	mother
120	even
120	determine
120	task
120	per
121	name
121	want
121	ever
121	doctor
122	bar
122	remember
122	poor
123	course
123	benefit
123	cause
123	decision
124	popular
124	shoulder
125	interesting
125	purpose
125	quite
126	what
127	home
127	present
128	interesting
128	assume
128	heavy
129	firm
129	benefit
129	letter
129	single
130	perhaps
131	group
131	degree
132	serve
133	tree
133	kid
133	officer
134	run
135	speech
136	number
136	nice
137	six
137	choice
137	matter
138	standard
138	tend
138	occur
139	beyond
139	camera
139	point
139	benefit
140	buy
140	bit
141	type
142	every
142	talk
143	lay
143	professor
143	model
144	general
144	movement
144	it
144	hit
145	across
145	first
145	magazine
145	public
146	prepare
146	catch
146	young
146	production
147	medical
147	result
147	few
148	what
148	design
149	draw
149	agreement
149	loss
150	clearly
150	answer
150	east
150	benefit
151	score
151	oil
151	push
151	day
152	financial
153	amount
153	relate
153	everyone
153	board
154	throw
154	choose
154	join
154	growth
155	just
155	computer
156	area
157	wait
157	discuss
158	decision
158	less
158	assume
159	her
159	major
160	account
160	store
160	lose
161	leader
161	between
161	executive
162	allow
162	ever
162	build
163	imagine
163	tonight
163	material
164	meet
164	notice
165	machine
166	degree
167	official
168	society
168	like
168	Republican
168	son
169	no
169	grow
169	shoulder
169	first
170	appear
170	respond
170	page
170	hotel
171	south
172	one
172	walk
173	remember
173	vote
173	responsibility
174	perhaps
175	early
175	newspaper
176	purpose
176	claim
177	speech
177	car
178	design
178	financial
178	success
178	perform
179	defense
179	town
179	maybe
179	thought
180	follow
180	letter
180	think
181	follow
181	itself
182	hear
182	face
182	energy
183	at
184	even
184	care
184	travel
184	poor
185	public
186	quite
187	best
188	reason
188	start
188	PM
188	participant
189	hour
190	talk
190	boy
190	officer
190	woman
191	sense
191	debate
191	religious
191	often
192	indicate
193	record
193	word
193	sound
194	policy
195	table
195	according
195	modern
196	analysis
197	lay
197	recent
198	day
199	order
199	myself
199	mean
199	billion
200	ten
200	later
200	growth
200	upon
201	difficult
202	democratic
203	authority
203	notice
204	ready
205	seek
206	yes
206	law
206	skin
207	identify
207	less
208	however
208	part
209	top
210	Republican
211	technology
211	bed
211	treat
212	discover
212	father
213	ball
214	page
215	cover
216	all
216	must
217	single
217	face
217	rate
218	represent
218	rich
218	often
219	mission
219	your
219	animal
220	black
221	condition
221	run
221	kind
222	practice
222	boy
222	whom
223	debate
223	director
224	arrive
224	go
225	reduce
225	station
225	with
226	career
227	brother
227	rule
227	unit
227	whose
228	cause
228	camera
228	until
229	meet
229	tonight
229	set
230	room
230	still
231	kid
231	hard
231	dog
231	hair
232	try
232	medical
232	care
233	particular
233	style
234	short
234	community
234	director
234	indeed
235	agent
235	really
236	choice
236	rather
236	right
236	car
237	relationship
237	condition
238	amount
239	thing
239	operation
240	second
240	executive
240	school
241	top
241	pressure
242	above
242	address
243	majority
243	language
244	science
244	ten
245	more
245	bring
246	certain
246	approach
246	institution
247	thousand
247	close
248	street
249	scientist
249	right
250	image
250	quality
251	white
252	crime
252	expect
252	meeting
253	although
253	garden
254	white
254	pattern
254	short
254	until
255	response
256	animal
257	seem
257	true
257	middle
258	fact
259	attack
259	indeed
259	offer
260	tonight
260	while
261	book
261	rather
262	piece
262	author
262	where
263	specific
263	benefit
263	leave
263	final
264	relate
265	window
265	race
265	political
266	whole
266	cup
266	student
266	majority
267	inside
268	teacher
268	father
269	pay
270	store
270	present
271	practice
271	environment
271	attention
272	PM
272	weight
272	again
272	accept
273	language
274	simple
275	line
275	listen
275	through
275	send
276	enjoy
277	wrong
277	relate
277	follow
277	college
278	onto
279	become
279	he
280	shake
280	course
281	whole
282	just
283	born
283	simple
284	another
284	city
284	stay
285	top
286	campaign
286	article
287	return
287	her
288	head
288	mission
288	speak
289	professor
289	high
290	study
290	mission
291	body
291	voice
291	against
291	begin
292	floor
292	gas
292	federal
293	possible
293	draw
294	middle
295	then
295	happy
295	among
296	young
296	impact
296	game
296	south
297	everyone
297	good
297	fish
297	another
298	remain
298	culture
298	music
298	week
299	state
299	interview
299	whole
299	who
300	coach
300	simply
300	certain
300	far
301	tend
302	develop
302	military
302	author
302	open
303	ground
304	fire
304	draw
304	much
304	start
305	myself
306	see
307	others
307	grow
308	wife
308	seem
308	away
309	politics
310	feeling
310	team
310	say
310	onto
311	medical
311	hair
311	support
311	main
312	ready
312	deal
312	science
312	whatever
313	sing
314	keep
314	good
314	peace
314	six
315	western
315	final
315	decade
316	which
316	share
316	turn
316	be
317	large
317	media
317	me
318	expect
318	your
319	read
320	wish
321	both
321	spend
321	however
322	article
322	everybody
323	hit
323	none
323	ten
324	with
324	technology
324	message
325	lot
325	task
325	leg
326	what
326	difference
327	agent
327	show
328	item
329	simply
330	believe
330	management
330	education
330	among
331	oil
331	production
332	again
332	despite
332	find
332	sport
333	travel
333	recognize
334	major
334	beautiful
334	mind
335	well
335	few
335	message
336	radio
336	watch
337	past
337	image
338	how
338	subject
338	religious
338	modern
339	only
339	act
339	assume
340	ahead
340	feeling
341	political
341	describe
341	smile
342	wrong
342	vote
342	by
342	affect
343	human
343	tonight
344	interest
344	yourself
345	piece
345	network
346	agency
346	ask
347	want
348	site
349	generation
349	ability
349	experience
349	together
350	red
351	particular
351	stand
351	usually
352	different
352	television
352	either
353	analysis
353	professor
353	night
353	television
354	prove
355	deal
355	series
355	top
355	television
356	both
356	class
357	thought
357	anything
358	last
358	when
358	class
359	among
360	street
360	structure
360	else
361	like
361	number
362	class
362	southern
362	economic
363	certainly
364	necessary
364	yet
365	few
365	only
366	learn
367	use
367	direction
367	material
367	finally
368	policy
368	best
368	civil
369	office
369	chair
369	personal
369	along
370	return
370	test
370	feeling
371	policy
371	week
371	arm
372	concern
373	man
373	west
374	animal
375	here
375	then
376	debate
376	nice
376	trouble
377	cover
378	close
379	cut
380	film
380	government
381	condition
381	any
382	oil
382	middle
383	require
383	garden
383	few
384	star
384	structure
384	per
385	three
385	picture
385	number
385	set
386	return
387	play
387	Mrs
388	serve
388	place
388	voice
388	new
389	century
389	bad
389	song
390	ok
390	reality
391	put
391	form
391	social
391	exist
392	language
393	majority
393	beyond
393	size
394	nation
394	while
394	if
395	across
395	once
395	others
395	exactly
396	these
396	water
396	middle
396	standard
397	mind
397	pretty
397	yeah
398	center
398	future
398	audience
398	step
399	half
400	source
400	say
401	none
401	free
402	movie
402	him
402	politics
403	painting
403	field
404	common
404	theory
404	treat
405	others
405	allow
405	note
405	sister
406	blue
407	play
407	speech
408	stage
408	suffer
408	rest
408	mean
409	list
410	husband
410	ten
410	hair
411	different
411	open
411	purpose
412	prepare
412	light
412	yes
413	government
414	amount
414	themselves
414	person
414	rate
415	owner
416	hotel
417	hand
417	yeah
418	religious
418	measure
418	party
418	may
419	item
419	money
420	onto
420	hit
420	already
420	animal
421	benefit
421	cost
421	real
422	relationship
422	produce
422	own
423	half
423	return
423	federal
423	anything
424	research
424	feel
424	with
425	policy
425	while
425	nothing
426	effect
426	tough
427	include
427	rock
427	social
427	month
428	staff
428	ability
428	well
428	two
429	here
429	focus
429	prepare
429	letter
430	article
430	enough
431	fine
431	want
432	during
432	source
432	thousand
432	moment
433	admit
433	Republican
433	five
433	civil
434	responsibility
435	song
435	rich
435	black
435	media
436	generation
437	writer
438	blue
438	identify
439	out
439	community
439	one
440	spend
440	put
441	a
442	bank
443	very
443	street
443	law
443	later
444	rule
444	article
445	image
446	word
446	billion
447	analysis
447	prepare
447	affect
448	item
449	child
449	stock
449	cold
450	hear
450	find
451	campaign
451	woman
452	maintain
452	kind
452	cut
452	likely
453	result
454	difficult
454	first
455	this
455	size
455	material
456	eight
457	hand
457	hospital
458	hope
459	decide
460	different
460	scene
461	pass
461	few
462	agent
462	company
462	adult
463	what
463	eat
464	make
464	size
465	black
465	situation
465	serve
465	attorney
466	former
467	single
468	he
468	too
468	pretty
469	five
470	government
470	friend
471	program
472	then
472	reality
472	section
472	although
473	recognize
473	whose
473	over
473	business
474	trip
475	first
475	anything
476	reveal
476	forward
476	late
477	girl
478	order
478	life
478	dinner
478	without
479	season
479	he
479	bag
480	receive
480	follow
481	group
481	form
482	cost
482	fire
482	partner
483	college
484	season
484	front
484	heart
485	finish
485	sort
485	detail
486	crime
486	front
487	still
488	they
489	follow
489	people
489	member
490	yet
490	southern
491	what
491	any
492	carry
492	material
493	turn
493	exist
494	culture
494	fish
494	begin
494	form
495	shake
495	paper
495	source
496	process
496	born
496	reach
496	research
497	middle
497	form
497	girl
497	cell
498	each
499	hour
499	end
499	network
500	into
501	collection
501	happy
501	prevent
501	company
502	industry
502	black
502	poor
503	marriage
503	because
503	determine
503	low
504	resource
505	evidence
506	record
506	everything
506	ability
507	particularly
507	fear
507	too
507	task
508	make
509	image
509	number
510	manage
510	upon
511	candidate
512	treatment
512	season
512	participant
512	Democrat
513	stay
514	rule
514	ok
515	turn
516	visit
516	realize
516	few
517	cover
517	business
517	general
518	receive
519	easy
520	check
520	sure
520	concern
521	perform
521	black
521	weight
522	improve
522	tend
523	sound
523	choose
524	voice
524	whose
525	drop
525	art
525	collection
525	short
526	whatever
527	staff
527	box
527	other
527	any
528	second
528	those
528	federal
528	bag
529	other
530	miss
531	arm
531	ground
531	who
532	southern
532	every
532	ago
532	even
533	thus
533	worry
533	civil
534	project
534	may
534	arm
534	yes
535	well
536	off
536	nor
536	similar
536	street
537	community
537	fire
537	daughter
538	white
538	always
538	thousand
538	service
539	near
540	develop
540	stand
541	wide
541	tree
541	through
542	fear
542	boy
542	world
543	argue
543	war
544	get
545	keep
545	understand
546	where
546	require
546	major
547	nice
547	different
547	prevent
547	especially
548	product
548	push
548	news
549	black
549	wonder
549	later
550	ask
550	rest
550	specific
551	education
551	news
551	bag
551	those
552	new
552	customer
553	my
553	technology
554	tend
554	indeed
554	wear
554	team
555	continue
555	education
556	apply
557	lawyer
558	western
558	tonight
559	together
560	finally
561	strategy
562	building
562	join
562	campaign
562	sit
563	sign
564	five
564	free
565	chance
565	for
565	age
566	throughout
566	positive
567	teach
567	article
568	house
568	their
568	sort
568	process
569	against
570	movement
570	top
570	each
570	leave
571	themselves
572	along
573	hear
573	member
573	concern
573	chance
574	college
574	suffer
574	recognize
575	its
575	sit
575	color
575	buy
576	development
576	middle
577	bad
577	society
577	reflect
578	east
578	writer
579	when
579	staff
580	or
580	data
580	operation
580	most
581	score
581	for
581	into
582	together
582	assume
583	billion
584	race
584	system
584	affect
585	everyone
585	catch
585	sure
585	investment
586	war
586	provide
587	pass
587	list
587	team
587	care
588	wife
588	box
589	kid
589	tough
589	purpose
590	director
591	toward
591	task
592	develop
592	crime
593	their
593	nor
593	large
593	material
594	center
594	drop
595	industry
596	whose
596	star
596	husband
596	interview
597	draw
597	stop
597	your
598	walk
598	continue
598	fine
598	art
599	someone
599	agency
599	probably
599	heavy
600	teach
600	able
601	call
601	pick
602	deep
603	state
604	may
604	election
605	enough
605	public
605	enjoy
605	control
606	compare
606	kind
607	hand
607	late
607	color
607	finally
608	beautiful
608	story
608	possible
609	just
609	fly
609	attack
609	matter
610	may
611	expect
612	man
613	require
613	pull
613	television
614	environmental
614	draw
615	main
615	culture
616	front
616	class
616	her
616	other
617	me
617	step
617	analysis
618	scene
618	simply
618	standard
618	language
619	century
619	can
619	us
620	pressure
620	paper
621	offer
621	follow
621	raise
621	treat
622	man
622	enter
622	inside
622	rise
623	people
624	my
625	not
625	effort
626	wish
626	once
626	several
627	floor
627	sound
627	series
627	morning
628	necessary
628	hotel
628	ability
629	participant
629	manage
629	of
629	thousand
630	talk
630	lawyer
630	chance
631	standard
631	free
631	wall
631	speech
632	fear
632	remember
632	performance
632	main
633	feel
633	national
634	above
634	economic
635	how
635	wide
635	bar
635	decade
636	three
636	practice
636	require
637	treatment
637	rise
637	per
638	central
638	cause
638	difference
639	matter
639	different
639	rule
639	above
640	interesting
641	these
641	environmental
641	much
642	single
643	too
643	share
643	marriage
644	listen
645	new
645	protect
646	clear
646	too
646	show
647	order
647	religious
648	what
648	upon
648	senior
649	you
649	allow
649	message
649	minute
650	prepare
650	end
651	today
651	film
651	almost
651	trip
652	total
652	military
652	question
653	simply
653	help
653	TV
654	my
655	future
655	onto
656	keep
656	interview
657	sell
657	career
657	tell
658	learn
658	education
658	hotel
658	color
659	free
659	hot
659	require
659	air
660	item
660	who
661	a
662	human
662	information
662	control
663	far
664	sign
664	break
664	staff
664	dog
665	sing
665	safe
666	generation
666	although
666	enough
666	miss
667	manager
667	year
667	student
668	lose
668	provide
668	child
668	art
669	debate
669	fish
669	child
670	front
671	story
671	box
672	meet
672	rate
672	break
672	conference
673	allow
674	news
675	property
676	top
676	radio
677	special
677	let
678	member
679	discuss
679	environment
679	first
679	son
680	purpose
680	until
680	seat
681	coach
681	place
682	turn
682	Mr
683	bit
684	red
685	painting
685	continue
685	pretty
686	long
686	crime
686	away
687	party
688	at
688	claim
689	place
689	woman
689	return
690	cover
690	others
690	reveal
690	tree
691	actually
691	million
691	evening
691	ball
692	begin
692	scene
692	government
693	box
694	or
694	compare
694	leader
695	big
696	end
696	and
696	west
696	nation
697	improve
697	range
698	recognize
698	Mr
699	stop
699	a
700	subject
700	all
700	write
701	assume
701	staff
701	catch
701	buy
702	now
702	place
702	will
703	term
703	wait
704	mean
705	significant
705	inside
705	discover
706	state
706	move
707	summer
707	fine
708	fact
708	subject
709	talk
709	many
709	represent
709	water
710	later
710	lawyer
710	shoulder
711	very
711	expect
711	these
711	many
712	I
712	current
712	camera
712	lay
713	short
713	financial
714	guess
714	no
715	sound
715	take
715	senior
715	born
716	join
716	create
717	you
717	try
717	himself
718	miss
718	thank
719	hope
719	western
720	federal
720	put
721	environment
721	free
721	design
722	or
723	hundred
724	wind
724	move
725	pull
726	quickly
726	anything
726	Democrat
727	between
728	southern
728	we
729	rate
729	ground
729	cost
729	catch
730	light
730	before
730	skill
730	hotel
731	small
732	author
733	almost
734	set
734	life
735	modern
735	set
735	personal
735	commercial
736	side
736	there
736	far
736	set
737	deep
737	phone
737	conference
738	model
738	board
739	employee
739	require
740	much
740	upon
740	their
740	each
741	experience
741	worker
742	seat
742	citizen
743	serious
743	fill
743	everyone
744	perform
744	main
744	might
744	according
745	language
745	might
745	knowledge
745	room
746	important
746	close
746	loss
747	someone
747	yard
748	design
748	appear
749	process
750	mean
750	contain
751	become
751	add
752	medical
753	discover
753	take
753	scene
754	less
754	media
755	million
756	plant
756	look
756	hotel
757	job
757	anything
757	south
757	air
758	future
758	act
759	card
759	while
760	before
760	next
760	enter
761	film
761	cause
762	several
762	bar
763	customer
763	can
764	against
764	bank
764	land
764	generation
765	when
765	list
766	long
766	thousand
767	act
767	truth
768	fine
769	later
769	money
769	off
770	deep
770	modern
771	discussion
771	low
771	medical
771	meet
772	job
772	above
772	understand
772	lot
773	tonight
773	draw
773	better
774	leg
774	Mr
775	week
776	his
777	approach
778	some
779	throughout
779	middle
779	same
780	care
780	stage
780	trade
780	fill
781	step
782	partner
783	threat
783	option
783	particular
784	want
784	understand
784	less
785	shoulder
785	order
785	author
786	fear
786	teach
787	including
787	night
788	rise
788	watch
788	letter
789	last
789	for
790	threat
790	idea
791	according
791	bag
791	garden
792	cultural
792	operation
792	hard
793	ago
793	listen
793	skill
794	use
794	TV
794	small
795	million
796	price
797	since
797	current
798	east
798	them
799	home
799	film
799	him
799	degree
800	education
800	cover
800	total
800	set
801	generation
801	kid
802	test
803	like
803	recognize
803	skin
803	research
804	eat
804	price
804	school
804	most
805	that
805	garden
805	be
805	institution
806	new
806	may
806	admit
807	little
807	fund
807	know
808	recent
808	price
808	author
808	direction
809	sport
810	wait
810	its
810	sign
811	technology
812	manage
813	watch
813	tax
813	what
813	floor
814	might
814	service
814	cultural
814	as
815	say
815	store
815	leader
816	affect
816	pick
816	voice
816	manager
817	question
817	stand
818	employee
818	involve
818	exist
819	ask
819	model
820	imagine
821	standard
821	join
821	economy
822	center
823	behind
823	light
823	blue
823	see
824	result
825	although
825	economy
825	front
825	when
826	way
827	audience
827	hard
827	if
827	pressure
828	memory
828	matter
829	need
829	letter
829	plant
829	rest
830	serve
830	far
830	color
831	as
832	far
832	ask
833	in
833	likely
834	late
834	blue
835	finally
835	west
835	card
836	no
836	both
837	address
837	training
837	begin
838	point
838	book
838	program
839	life
840	can
840	development
840	remain
840	science
841	community
841	particularly
841	where
842	strong
843	agreement
843	real
843	important
843	beautiful
844	when
845	while
845	school
845	cold
845	star
846	everybody
847	few
848	situation
848	affect
849	clearly
849	police
850	part
851	article
851	rule
851	purpose
851	water
852	son
852	his
852	old
852	mention
853	we
853	short
854	easy
855	deep
855	poor
856	full
856	force
857	spend
857	both
857	however
857	clearly
858	stay
858	which
858	defense
859	well
859	author
859	peace
860	same
861	conference
861	fight
862	read
862	it
863	risk
864	agreement
864	whether
865	whatever
865	election
865	former
866	church
866	pressure
866	on
867	prepare
867	get
867	current
868	local
868	black
868	while
868	whatever
869	occur
869	improve
869	attorney
870	cost
870	necessary
870	alone
870	president
871	hard
871	same
871	letter
872	care
872	cause
873	generation
874	fund
874	strategy
874	also
874	hospital
875	physical
875	shake
876	growth
876	view
876	play
877	office
878	chair
878	return
878	shoulder
879	ability
879	require
880	point
880	interest
880	under
881	suffer
881	follow
881	run
882	low
882	away
882	since
883	group
883	subject
884	your
884	forward
884	want
885	positive
885	prove
885	town
886	pick
886	physical
886	long
887	understand
887	plant
887	trip
887	people
888	admit
889	trip
889	industry
889	affect
889	war
890	production
890	alone
891	carry
891	word
891	of
891	clear
892	citizen
892	to
893	important
893	consider
894	check
894	happy
894	natural
895	almost
895	civil
895	them
895	someone
896	coach
896	natural
896	risk
896	parent
897	war
898	manager
899	and
899	major
899	energy
900	in
900	person
901	five
901	behavior
901	social
901	painting
902	require
903	again
903	question
903	support
904	also
904	despite
905	mother
905	rest
905	yourself
906	believe
906	view
906	family
907	discover
907	evening
907	role
907	manage
908	less
908	summer
908	material
908	into
909	capital
909	wall
910	case
910	include
910	view
911	pretty
911	sell
912	note
912	memory
913	degree
913	couple
913	fill
913	character
914	admit
914	but
914	thing
915	film
916	ahead
916	court
916	food
917	hold
917	game
917	son
917	clear
918	guess
918	worry
918	book
919	require
920	next
920	type
921	indeed
921	stuff
921	second
921	true
922	often
922	protect
922	although
922	season
923	industry
924	environment
925	lose
925	ball
925	chair
925	should
926	pass
926	skill
926	this
926	town
927	president
928	option
928	rate
929	good
929	job
929	write
929	former
930	road
930	employee
930	back
931	describe
931	station
931	stuff
931	believe
932	same
932	car
932	memory
932	discussion
933	speak
933	less
933	that
933	throughout
934	choose
934	street
934	issue
934	power
935	treat
936	front
936	kid
936	economic
936	new
937	parent
937	PM
938	simple
938	interview
939	blood
939	stock
940	establish
941	treatment
941	huge
941	improve
941	pretty
942	not
942	ability
942	baby
943	need
943	rich
944	imagine
944	play
945	me
945	upon
945	child
945	might
946	star
946	rise
946	official
947	movement
947	tough
947	write
948	life
948	impact
949	improve
949	evidence
950	color
950	fine
951	certainly
951	sit
951	camera
952	type
952	kid
953	scientist
954	able
955	machine
955	wide
956	carry
956	simply
956	industry
956	stage
957	almost
957	financial
957	small
957	consumer
958	television
959	less
959	force
959	second
960	beautiful
960	up
961	beyond
962	recent
962	analysis
962	indicate
962	job
963	before
964	speak
964	structure
964	professional
965	really
965	notice
966	society
966	take
966	gas
966	mind
967	class
967	concern
968	easy
968	hour
968	start
969	how
969	have
970	here
970	left
970	seek
971	represent
971	enjoy
972	late
972	admit
972	provide
972	better
973	degree
974	character
975	teacher
976	give
976	hour
976	experience
977	much
977	Mrs
977	page
978	success
979	share
979	draw
979	learn
980	all
980	various
981	lose
981	magazine
981	although
981	religious
982	suggest
982	oil
983	east
984	establish
984	decade
984	make
984	everybody
985	set
986	second
986	peace
986	than
987	improve
987	research
987	care
987	never
988	person
988	leader
988	development
988	response
989	eat
989	whether
989	environment
989	choice
990	defense
990	will
991	bar
991	professional
991	break
991	assume
992	year
992	example
992	toward
993	north
993	thus
993	call
993	short
994	arm
995	leave
995	commercial
995	wonder
995	bill
996	idea
996	fire
996	defense
996	wear
997	environment
998	life
999	all
999	option
999	activity
1000	trial
1000	science
1000	voice
\.


--
-- Data for Name: relation_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_2 (product_id, mv_attributes) FROM stdin;
1	reach
1	must
2	national
2	attorney
3	away
3	meet
4	on
4	board
5	simply
5	area
6	message
6	son
7	government
8	his
8	record
9	recent
10	need
10	despite
11	share
12	card
13	couple
13	sport
14	remember
15	position
16	teacher
17	thousand
17	crime
18	return
19	candidate
19	place
20	focus
20	after
21	structure
21	like
22	space
23	fund
24	religious
24	foot
25	box
26	field
26	our
27	save
27	wind
28	director
29	high
30	seek
31	page
31	analysis
32	sit
32	me
33	ahead
33	name
34	according
35	show
36	ball
37	establish
38	help
39	it
39	store
40	become
40	party
41	say
42	new
42	radio
43	up
44	decade
45	despite
46	practice
46	generation
47	head
47	arm
48	television
49	eight
49	perform
50	eat
51	sit
52	sister
52	ago
53	maybe
54	join
54	necessary
55	here
55	out
56	agency
56	particularly
57	suggest
57	technology
58	necessary
59	through
59	smile
60	family
60	study
61	or
61	official
62	north
63	increase
64	month
65	behind
65	food
66	attention
67	behind
67	dog
68	chair
69	one
70	design
71	general
72	enough
72	great
73	billion
74	simply
74	feeling
75	vote
76	fire
77	necessary
77	until
78	and
79	wrong
80	happy
80	major
81	wind
82	air
83	television
83	stock
84	floor
84	drive
85	page
85	effect
86	record
86	subject
87	main
87	activity
88	rather
88	low
89	section
90	air
90	tonight
91	available
91	economy
92	system
93	discuss
94	herself
94	purpose
95	pattern
96	win
96	blue
97	have
97	resource
98	discover
98	meet
99	current
99	south
100	this
101	develop
102	world
103	mean
104	organization
104	trial
105	reach
106	toward
106	stage
107	three
108	available
109	as
109	son
110	suddenly
110	training
111	down
112	everything
113	type
114	work
115	gun
116	teach
116	indeed
117	senior
117	enjoy
118	woman
118	quickly
119	main
119	seven
120	never
121	turn
121	agree
122	she
123	technology
124	wife
124	knowledge
125	number
125	again
126	community
127	management
127	enter
128	fact
128	region
129	different
130	floor
130	management
131	reality
131	office
132	second
132	cost
133	structure
134	a
134	make
135	skin
136	red
136	order
137	her
138	none
138	also
139	no
140	two
140	bring
141	force
141	control
142	respond
143	glass
143	start
144	now
145	second
146	information
147	professional
148	bit
149	him
150	raise
150	contain
151	drug
151	approach
152	another
152	body
153	detail
153	actually
154	entire
155	analysis
156	answer
157	both
157	see
158	stop
159	leader
160	just
161	dog
161	reveal
162	here
163	usually
163	write
164	church
165	sure
166	table
167	though
168	more
169	realize
169	less
170	movement
170	somebody
171	special
172	and
172	movement
173	all
173	real
174	half
174	according
175	art
175	without
176	audience
177	home
178	set
178	able
179	understand
179	smile
180	west
181	do
181	analysis
182	knowledge
182	long
183	someone
184	response
184	PM
185	dark
186	because
186	ok
187	reduce
188	present
189	soon
189	although
190	marriage
190	treat
191	need
191	capital
192	upon
193	majority
193	debate
194	attention
194	economic
195	time
196	actually
196	city
197	college
198	responsibility
198	focus
199	call
199	box
200	cup
201	any
201	other
202	evening
203	cause
204	low
204	yourself
205	part
206	central
206	mother
207	under
208	heavy
209	so
209	apply
210	various
211	cut
211	prevent
212	its
213	hand
213	wait
214	eat
215	front
215	father
216	employee
216	author
217	free
218	determine
219	rich
220	draw
220	choose
221	subject
221	stay
222	situation
223	place
224	significant
225	five
225	entire
226	letter
226	couple
227	girl
227	election
228	at
229	discover
230	type
230	per
231	her
231	memory
232	me
233	great
234	character
235	city
236	some
237	continue
237	suffer
238	story
239	appear
240	low
241	himself
242	simply
242	represent
243	amount
244	might
244	capital
245	stay
245	ago
246	speech
247	both
248	happen
249	contain
249	light
250	fall
250	might
251	today
251	itself
252	medical
253	industry
254	threat
255	nor
256	each
256	with
257	real
257	something
258	study
259	population
259	wide
260	buy
260	control
261	talk
261	development
262	human
262	beyond
263	concern
263	its
264	lawyer
264	Mr
265	pretty
265	sort
266	apply
266	finish
267	maybe
268	lot
268	produce
269	others
269	third
270	stock
270	administration
271	market
271	sound
272	factor
273	heart
274	relate
274	drug
275	expert
276	another
276	specific
277	argue
277	difference
278	tree
278	certain
279	else
280	campaign
280	office
281	why
281	sell
282	prepare
282	cup
283	level
283	leader
284	happy
284	room
285	bring
286	smile
287	various
287	manage
288	control
289	discover
289	staff
290	son
290	class
291	court
291	use
292	speak
293	rest
294	single
295	international
296	buy
296	not
297	yet
297	stage
298	store
299	program
300	view
300	agreement
301	avoid
301	behavior
302	sort
303	conference
304	fight
305	according
305	remember
306	policy
306	task
307	really
307	lose
308	TV
308	ago
309	fill
310	us
311	she
311	response
312	specific
312	fear
313	record
313	ok
314	owner
314	according
315	expert
316	born
316	sense
317	tend
318	continue
319	box
320	five
320	value
321	cut
321	stock
322	agreement
322	sea
323	charge
324	kitchen
325	game
325	whole
326	price
326	never
327	feeling
327	his
328	entire
328	well
329	thus
330	serious
331	world
332	off
333	adult
334	about
334	affect
335	structure
336	bag
337	although
337	fill
338	early
339	art
340	sound
340	scientist
341	structure
341	they
342	have
343	visit
344	floor
344	lot
345	against
346	huge
346	similar
347	also
347	truth
348	number
348	study
349	land
349	baby
350	ten
351	but
352	stay
353	last
354	and
355	fine
355	day
356	state
357	citizen
358	finally
359	though
359	girl
360	me
360	majority
361	physical
362	general
362	boy
363	too
363	simply
364	own
365	produce
366	word
366	down
367	five
368	during
369	his
369	thought
370	natural
370	brother
371	still
372	per
373	building
374	listen
374	newspaper
375	body
375	billion
376	piece
376	election
377	room
378	information
379	through
380	final
381	professor
381	guy
382	myself
382	popular
383	represent
383	head
384	consider
384	do
385	bag
386	point
386	you
387	such
387	leave
388	chair
389	election
389	finish
390	officer
391	benefit
392	team
393	become
393	agreement
394	break
394	natural
395	him
396	process
396	business
397	TV
397	your
398	every
399	door
400	staff
401	forward
401	point
402	believe
402	forward
403	part
404	notice
405	report
405	thousand
406	design
406	have
407	call
408	key
409	executive
409	improve
410	soon
411	body
411	by
412	indicate
413	focus
413	consumer
414	war
414	candidate
415	hear
416	what
417	imagine
417	upon
418	girl
418	have
419	benefit
420	letter
420	person
421	later
422	law
423	most
423	teacher
424	seven
425	time
426	camera
427	analysis
427	listen
428	worry
429	it
430	practice
431	contain
432	plan
433	guy
433	month
434	develop
435	deal
435	peace
436	middle
436	effect
437	bad
437	mention
438	trouble
438	reduce
439	impact
439	break
440	near
441	street
441	listen
442	serious
442	tend
443	music
444	lose
445	candidate
446	sound
447	former
448	concern
449	discover
450	bank
451	camera
451	six
452	current
453	last
453	more
454	stay
454	woman
455	region
456	west
457	you
458	pattern
459	never
460	challenge
461	attack
462	country
463	while
463	blood
464	drive
464	option
465	already
466	product
466	deal
467	bed
468	water
469	represent
469	yes
470	main
471	these
472	buy
472	take
473	series
474	issue
475	and
475	born
476	type
476	factor
477	role
477	share
478	kitchen
479	live
480	nation
481	three
482	both
482	happy
483	sea
484	prove
484	executive
485	your
486	face
487	law
488	night
489	measure
490	commercial
490	per
491	office
492	military
492	others
493	health
494	free
494	material
495	sea
495	nation
496	want
496	of
497	inside
498	side
498	management
499	bring
500	piece
501	job
502	kitchen
502	believe
503	past
504	control
505	already
506	miss
506	center
507	property
508	recently
509	back
510	rate
510	thank
511	issue
511	rather
512	mention
513	senior
513	out
514	music
515	college
515	without
516	idea
517	human
517	edge
518	daughter
518	defense
519	decade
519	street
520	serve
520	mind
521	health
521	enter
522	usually
523	edge
524	agreement
524	according
525	guy
525	claim
526	across
527	even
527	option
528	least
529	employee
530	as
530	them
531	offer
532	available
532	million
533	agreement
533	wide
534	wonder
535	new
536	herself
536	eight
537	line
537	matter
538	single
538	goal
539	four
539	now
540	generation
540	suggest
541	indeed
541	southern
542	we
543	international
543	never
544	rock
544	yourself
545	student
546	adult
547	book
548	education
549	anyone
549	sound
550	reality
551	share
551	edge
552	gun
553	hundred
554	from
555	organization
556	sit
557	husband
558	she
559	training
560	music
561	ground
562	thank
563	cover
563	line
564	level
564	student
565	agreement
565	let
566	reduce
566	east
567	serve
568	war
569	music
569	management
570	likely
570	several
571	training
571	do
572	choice
573	story
574	push
575	quite
576	general
576	realize
577	realize
577	use
578	wide
578	write
579	entire
580	along
580	each
581	near
582	surface
582	only
583	enter
583	forward
584	understand
584	wear
585	boy
586	eat
586	approach
587	old
588	visit
589	go
589	forget
590	education
591	next
591	nice
592	find
592	office
593	matter
593	money
594	read
595	whom
595	recent
596	couple
597	because
598	financial
598	gas
599	news
600	leader
601	effort
601	act
602	step
602	side
603	force
603	case
604	wear
604	success
605	term
605	same
606	always
606	front
607	value
607	season
608	mission
609	argue
609	structure
610	group
610	may
611	idea
612	good
613	coach
614	create
614	room
615	career
615	while
616	a
616	indicate
617	this
617	as
618	sign
618	admit
619	discover
620	cold
620	surface
621	knowledge
621	professional
622	successful
623	investment
623	anything
624	finish
625	century
625	page
626	middle
626	easy
627	candidate
628	day
628	likely
629	charge
630	travel
630	under
631	section
632	director
633	assume
634	president
634	wrong
635	conference
635	why
636	them
637	gas
637	cold
638	party
639	meet
639	put
640	color
640	under
641	first
642	state
643	role
644	century
645	doctor
646	carry
646	upon
647	power
647	sign
648	benefit
648	bit
649	none
649	deep
650	writer
650	score
651	teach
651	stuff
652	wonder
653	above
653	imagine
654	interesting
655	month
655	use
656	develop
657	society
658	learn
658	hotel
659	cut
660	PM
661	less
661	heavy
662	lay
663	hard
663	today
664	open
665	try
666	Congress
666	we
667	election
668	figure
669	suggest
669	less
670	window
671	his
672	large
673	feeling
674	design
675	police
675	magazine
676	so
676	admit
677	former
678	away
679	sometimes
680	provide
681	they
682	might
682	upon
683	affect
683	concern
684	model
685	least
686	state
687	phone
687	feeling
688	position
688	far
689	half
689	establish
690	this
690	agreement
691	remain
692	bed
693	him
694	fear
694	because
695	letter
696	want
697	beat
697	skill
698	early
698	people
699	spend
699	country
700	plan
700	artist
701	stay
701	require
702	position
703	court
704	president
704	station
705	season
706	offer
706	method
707	paper
707	land
708	each
709	hair
709	case
710	star
711	concern
711	recent
712	investment
712	position
713	into
714	blue
715	since
716	energy
717	film
717	trial
718	more
719	wide
720	some
720	shoulder
721	pick
722	what
722	agreement
723	help
723	road
724	at
725	finally
726	government
727	shake
727	field
728	money
729	act
729	clearly
730	staff
730	mouth
731	central
731	forward
732	less
732	prepare
733	charge
733	staff
734	receive
735	enjoy
735	chance
736	affect
736	attention
737	police
738	close
738	report
739	avoid
739	candidate
740	debate
740	person
741	wrong
742	production
742	across
743	college
744	enough
745	political
745	indeed
746	war
746	blue
747	wrong
748	prepare
749	mouth
750	realize
751	stage
751	institution
752	hotel
752	change
753	choose
753	member
754	officer
755	then
755	action
756	film
756	not
757	animal
758	share
759	always
760	guy
761	animal
762	represent
762	when
763	might
764	from
764	recently
765	she
766	glass
767	strategy
767	cultural
768	those
768	different
769	specific
769	much
770	sound
770	market
771	whether
772	attack
773	family
773	player
774	art
775	drive
776	middle
776	structure
777	short
777	above
778	stand
778	modern
779	national
779	improve
780	meeting
781	authority
782	heart
782	though
783	fly
784	drive
784	argue
785	see
785	wish
786	education
786	stay
787	lead
788	country
789	article
790	very
791	green
792	task
793	say
794	economy
794	serve
795	again
796	put
796	send
797	if
797	west
798	any
798	generation
799	heart
799	learn
800	store
801	thus
801	more
802	record
802	you
803	reach
803	bag
804	expect
804	life
805	also
805	loss
806	memory
807	arm
808	mother
809	rule
809	in
810	way
811	fly
812	task
812	hope
813	boy
813	finally
814	floor
815	why
816	tough
816	center
817	occur
817	record
818	student
818	now
819	economy
820	sort
820	read
821	various
821	almost
822	industry
822	allow
823	human
823	late
824	talk
825	act
825	bank
826	night
827	between
827	section
828	course
828	skill
829	modern
829	conference
830	election
831	radio
832	us
833	follow
833	such
834	hard
834	entire
835	stuff
835	field
836	once
836	moment
837	pay
838	trouble
838	positive
839	group
839	sort
840	news
840	meeting
841	shake
841	son
842	people
842	risk
843	away
843	under
844	sense
845	white
845	although
846	throughout
846	age
847	detail
848	guy
849	drug
850	fact
851	century
852	create
852	professional
853	television
854	accept
855	truth
855	compare
856	land
856	person
857	field
858	American
858	amount
859	forget
860	determine
860	include
861	star
861	realize
862	despite
862	onto
863	camera
863	standard
864	place
864	quality
865	project
865	general
866	little
867	lay
868	stage
868	recently
869	financial
870	on
871	operation
872	live
872	pass
873	instead
873	real
874	forward
874	keep
875	capital
876	red
876	better
877	effect
878	such
878	country
879	anything
879	station
880	difficult
881	simple
881	late
882	point
883	everything
884	because
884	describe
885	gun
886	answer
887	voice
888	without
889	like
890	seven
890	together
891	him
892	current
892	idea
893	later
894	decision
895	real
896	save
897	why
897	five
898	such
899	one
899	cut
900	treatment
901	international
902	with
903	will
903	economy
904	plant
904	at
905	film
906	drive
907	across
908	leader
908	dream
909	lot
909	economy
910	catch
911	loss
911	share
912	talk
912	board
913	yourself
914	whose
915	decade
916	support
916	dark
917	after
918	song
919	for
920	rich
921	inside
921	court
922	occur
923	bag
923	girl
924	later
924	window
925	feeling
926	activity
927	material
927	trial
928	significant
929	spring
929	go
930	power
931	until
932	everybody
932	attack
933	short
934	door
934	story
935	through
935	former
936	until
936	cell
937	after
937	yet
938	early
938	hotel
939	hold
939	you
940	focus
940	hundred
941	chance
941	tax
942	painting
943	join
943	Republican
944	number
944	music
945	fine
945	five
946	institution
946	citizen
947	matter
948	marriage
949	various
949	section
950	sell
950	level
951	affect
951	someone
952	kid
953	ask
954	recent
955	interview
955	why
956	market
957	east
958	ability
959	likely
959	TV
960	baby
960	or
961	a
962	child
963	discussion
964	after
964	safe
965	around
966	laugh
966	important
967	reality
967	garden
968	face
968	Congress
969	recognize
970	today
970	single
971	floor
971	treatment
972	relationship
972	trade
973	pretty
973	road
974	fact
975	whether
975	why
976	contain
977	close
977	forward
978	charge
979	last
980	condition
981	new
981	wait
982	reality
982	letter
983	entire
983	kind
984	board
984	firm
985	hand
986	environmental
986	something
987	prepare
987	spend
988	since
988	effect
989	however
989	despite
990	machine
990	full
991	behavior
992	near
992	mission
993	yard
993	room
994	sing
995	mission
996	lawyer
996	charge
997	even
998	else
999	north
1000	relate
1001	easy
1002	difference
1003	career
1003	property
1004	family
1005	agency
1006	history
1006	southern
1007	bank
1008	never
1009	natural
1010	whether
1011	to
1011	however
1012	trial
1013	follow
1014	assume
1015	likely
1015	of
1016	approach
1016	conference
1017	education
1018	next
1018	word
1019	media
1019	later
1020	different
1020	during
1021	this
1022	catch
1023	service
1024	various
1025	attorney
1026	show
1027	mind
1027	must
1028	small
1029	ever
1030	support
1030	ten
1031	fill
1031	decide
1032	audience
1032	garden
1033	hit
1034	return
1035	piece
1036	sure
1036	receive
1037	together
1037	until
1038	try
1039	though
1039	couple
1040	ten
1040	according
1041	couple
1042	PM
1042	fine
1043	summer
1043	type
1044	citizen
1045	ground
1045	raise
1046	also
1047	worker
1048	action
1048	although
1049	summer
1050	scientist
1051	sound
1051	performance
1052	among
1052	near
1053	someone
1053	generation
1054	air
1054	plant
1055	interview
1056	popular
1056	large
1057	test
1058	change
1059	nice
1060	plan
1060	determine
1061	site
1061	source
1062	focus
1063	participant
1064	discussion
1064	safe
1065	daughter
1065	assume
1066	area
1066	improve
1067	him
1068	world
1069	marriage
1070	part
1071	early
1072	itself
1072	cultural
1073	sure
1074	forget
1074	station
1075	price
1076	former
1076	appear
1077	lot
1077	film
1078	huge
1078	there
1079	treatment
1079	nearly
1080	other
1080	water
1081	accept
1082	study
1083	look
1084	instead
1084	true
1085	country
1085	or
1086	life
1087	statement
1087	surface
1088	hit
1089	degree
1089	stock
1090	also
1090	drug
1091	family
1092	my
1093	direction
1094	ability
1095	sister
1095	star
1096	over
1096	billion
1097	very
1098	court
1098	or
1099	whom
1099	dog
1100	resource
1100	put
1101	wall
1102	discover
1103	public
1104	of
1105	hard
1105	million
1106	relate
1106	player
1107	produce
1107	region
1108	establish
1109	conference
1110	enter
1110	power
1111	participant
1112	treat
1113	consider
1113	position
1114	soon
1115	it
1116	executive
1117	every
1117	against
1118	research
1119	soon
1119	thank
1120	long
1121	thought
1121	official
1122	discussion
1122	life
1123	think
1123	upon
1124	moment
1125	necessary
1126	on
1126	industry
1127	than
1127	beautiful
1128	visit
1128	design
1129	allow
1130	generation
1131	space
1131	door
1132	thing
1132	run
1133	national
1133	interview
1134	music
1134	respond
1135	lead
1136	answer
1136	commercial
1137	after
1138	material
1139	prepare
1140	join
1140	who
1141	pattern
1142	around
1143	military
1143	phone
1144	discussion
1144	great
1145	unit
1145	sport
1146	protect
1146	leg
1147	evidence
1147	artist
1148	ground
1148	site
1149	turn
1149	second
1150	investment
1151	enjoy
1151	tax
1152	in
1153	whatever
1154	fund
1155	name
1155	cold
1156	lay
1157	none
1157	product
1158	behind
1158	lot
1159	just
1159	tend
1160	glass
1160	attorney
1161	environmental
1161	nature
1162	believe
1163	garden
1163	under
1164	activity
1165	both
1166	five
1166	remain
1167	sure
1167	sing
1168	ball
1168	wife
1169	right
1170	method
1171	town
1171	special
1172	southern
1172	remain
1173	heavy
1174	government
1175	free
1175	she
1176	clear
1177	help
1178	loss
1178	beautiful
1179	from
1180	more
1180	hundred
1181	live
1181	who
1182	join
1183	somebody
1184	wall
1185	food
1185	test
1186	change
1187	ten
1188	theory
1188	example
1189	class
1189	friend
1190	purpose
1190	small
1191	rock
1191	old
1192	such
1193	threat
1194	scientist
1195	half
1196	with
1196	letter
1197	mean
1197	item
1198	pressure
1198	safe
1199	nearly
1200	yeah
1200	actually
1201	culture
1202	could
1202	establish
1203	get
1203	nor
1204	want
1205	dinner
1205	know
1206	local
1207	listen
1207	will
1208	summer
1209	something
1210	my
1211	admit
1211	hour
1212	government
1212	involve
1213	whether
1213	feel
1214	force
1215	however
1216	tree
1216	drug
1217	seem
1218	green
1219	financial
1220	stuff
1221	knowledge
1222	employee
1222	me
1223	clear
1224	let
1224	forget
1225	beat
1225	cut
1226	morning
1226	organization
1227	bag
1227	ago
1228	full
1229	than
1230	daughter
1231	character
1232	watch
1233	back
1234	woman
1235	leader
1236	stuff
1236	nearly
1237	hour
1237	air
1238	thought
1239	choice
1240	investment
1241	much
1241	clearly
1242	others
1243	middle
1243	none
1244	ground
1245	traditional
1246	available
1247	across
1248	room
1249	art
1250	accept
1251	news
1251	business
1252	true
1252	though
1253	wish
1253	speak
1254	close
1254	may
1255	debate
1256	blue
1256	least
1257	popular
1258	south
1259	into
1259	so
1260	media
1260	any
1261	various
1262	bed
1263	front
1264	describe
1265	kind
1266	particular
1266	political
1267	discuss
1268	actually
1268	herself
1269	even
1270	second
1270	college
1271	reveal
1272	toward
1272	suggest
1273	three
1273	truth
1274	nice
1274	eye
1275	usually
1276	job
1276	call
1277	management
1278	clear
1278	exactly
1279	let
1279	early
1280	year
1280	group
1281	leg
1282	build
1282	marriage
1283	note
1284	upon
1285	still
1285	appear
1286	up
1287	notice
1287	degree
1288	plant
1288	administration
1289	glass
1290	once
1291	require
1291	yard
1292	leader
1293	bring
1293	teach
1294	ability
1294	less
1295	media
1296	another
1297	smile
1298	eight
1299	heart
1300	candidate
1301	purpose
1301	star
1302	financial
1302	nor
1303	gun
1304	positive
1304	to
1305	school
1306	first
1307	stock
1307	marriage
1308	coach
1309	happy
1310	example
1310	sometimes
1311	fight
1311	message
1312	future
1312	necessary
1313	hundred
1313	too
1314	become
1314	away
1315	party
1315	quality
1316	next
1317	program
1317	look
1318	field
1318	however
1319	society
1320	worry
1320	top
1321	far
1321	such
1322	arm
1323	knowledge
1324	court
1324	image
1325	attention
1325	rate
1326	at
1327	condition
1328	according
1329	back
1329	start
1330	impact
1330	within
1331	let
1332	everybody
1332	understand
1333	figure
1334	control
1334	plan
1335	call
1335	difference
1336	rule
1336	several
1337	dream
1337	process
1338	every
1338	watch
1339	chair
1339	war
1340	medical
1340	up
1341	option
1341	economy
1342	knowledge
1342	foreign
1343	detail
1343	significant
1344	color
1344	carry
1345	off
1346	leave
1346	special
1347	which
1348	sell
1348	inside
1349	and
1349	already
1350	different
1350	low
1351	consumer
1351	listen
1352	evidence
1352	skin
1353	reveal
1353	watch
1354	reality
1354	seek
1355	expect
1355	agree
1356	term
1356	especially
1357	case
1358	expert
1359	already
1360	night
1361	health
1362	store
1363	believe
1363	now
1364	series
1364	movie
1365	mouth
1365	believe
1366	benefit
1366	despite
1367	reflect
1367	better
1368	international
1369	personal
1370	year
1371	source
1372	against
1372	very
1373	field
1373	drug
1374	go
1374	create
1375	every
1376	in
1376	understand
1377	network
1378	third
1379	tell
1380	drop
1381	child
1381	office
1382	pass
1382	him
1383	home
1384	reason
1384	set
1385	message
1385	work
1386	point
1387	nice
1387	police
1388	near
1388	follow
1389	character
1390	focus
1390	onto
1391	bill
1391	lead
1392	pick
1393	throughout
1394	rate
1395	be
1396	person
1397	him
1397	four
1398	town
1398	produce
1399	police
1399	choose
1400	meeting
1400	large
1401	though
1401	alone
1402	film
1403	soon
1403	continue
1404	season
1404	serve
1405	open
1406	town
1406	specific
1407	professor
1408	standard
1409	adult
1409	top
1410	scene
1410	trouble
1411	customer
1412	wall
1412	young
1413	risk
1414	meeting
1415	true
1416	she
1417	suffer
1418	full
1419	end
1420	cup
1420	wife
1421	seem
1421	as
1422	without
1423	half
1424	behavior
1424	executive
1425	apply
1426	character
1427	result
1427	we
1428	occur
1429	color
1430	station
1431	spend
1432	wall
1432	need
1433	recently
1433	really
1434	figure
1435	thus
1436	respond
1436	environment
1437	pay
1437	collection
1438	draw
1439	southern
1440	perform
1440	attention
1441	still
1441	American
1442	study
1442	conference
1443	son
1443	outside
1444	administration
1445	significant
1445	enough
1446	pick
1447	road
1448	guy
1449	rule
1449	service
1450	minute
1451	success
1451	answer
1452	area
1452	daughter
1453	amount
1453	appear
1454	force
1454	throw
1455	ground
1456	dog
1456	wait
1457	wife
1458	bad
1458	list
1459	ago
1460	simple
1461	these
1462	language
1462	likely
1463	sound
1464	along
1464	we
1465	stock
1466	detail
1466	mother
1467	want
1468	television
1468	range
1469	high
1469	hospital
1470	recently
1471	sell
1472	world
1472	remain
1473	skill
1473	follow
1474	she
1475	bad
1475	Mr
1476	mean
1476	environmental
1477	ok
1477	now
1478	movement
1478	general
1479	left
1479	artist
1480	they
1481	yeah
1481	card
1482	provide
1482	research
1483	capital
1483	other
1484	adult
1485	news
1486	plan
1487	actually
1488	our
1488	thus
1489	whose
1489	conference
1490	factor
1490	college
1491	despite
1491	collection
1492	education
1492	wonder
1493	social
1493	plan
1494	fall
1494	service
1495	side
1495	health
1496	back
1497	describe
1498	so
1499	effort
1499	policy
1500	pull
1500	remember
1501	successful
1501	attack
1502	economic
1503	everything
1504	of
1505	million
1506	mouth
1506	wind
1507	sister
1508	management
1508	bed
1509	simply
1509	although
1510	sort
1510	listen
1511	stay
1511	clear
1512	wear
1513	catch
1514	store
1514	well
1515	goal
1515	lot
1516	whose
1517	away
1518	interview
1518	moment
1519	from
1520	wear
1521	action
1522	model
1523	age
1524	game
1525	age
1525	view
1526	nothing
1527	against
1528	media
1528	like
1529	radio
1530	suffer
1530	east
1531	expert
1531	never
1532	those
1533	product
1533	something
1534	ground
1534	ability
1535	resource
1535	late
1536	us
1537	senior
1538	behavior
1539	thus
1540	example
1540	state
1541	thousand
1541	hundred
1542	watch
1543	federal
1543	level
1544	away
1545	up
1546	every
1546	pretty
1547	often
1547	apply
1548	true
1548	tend
1549	consider
1549	medical
1550	agency
1551	better
1552	quality
1552	box
1553	factor
1554	phone
1555	home
1556	how
1557	during
1558	interest
1558	performance
1559	center
1559	their
1560	local
1560	likely
1561	red
1562	actually
1563	decide
1564	production
1565	camera
1566	can
1567	close
1568	produce
1569	other
1570	million
1570	develop
1571	film
1572	already
1573	turn
1574	its
1574	poor
1575	least
1576	bed
1577	point
1577	common
1578	be
1578	when
1579	among
1579	nice
1580	door
1580	from
1581	gas
1581	medical
1582	son
1583	likely
1583	woman
1584	total
1585	prevent
1586	also
1586	account
1587	treat
1587	same
1588	walk
1589	hold
1590	something
1590	talk
1591	between
1592	daughter
1592	trade
1593	someone
1593	let
1594	woman
1594	short
1595	article
1596	source
1597	ok
1597	industry
1598	fast
1598	fund
1599	dog
1599	early
1600	ground
1600	simple
1601	parent
1601	suddenly
1602	individual
1603	discuss
1603	building
1604	whether
1604	seek
1605	who
1605	base
1606	attack
1607	per
1607	purpose
1608	thing
1609	interesting
1610	exist
1611	enjoy
1611	common
1612	than
1613	many
1614	no
1614	fight
1615	speech
1616	six
1617	no
1617	wear
1618	boy
1619	agree
1620	challenge
1620	hundred
1621	particular
1621	be
1622	late
1622	only
1623	usually
1624	probably
1625	your
1626	energy
1626	baby
1627	much
1628	require
1628	seat
1629	this
1630	shoulder
1631	nor
1631	ball
1632	provide
1632	which
1633	technology
1634	interest
1635	as
1635	form
1636	room
1636	can
1637	identify
1637	stage
1638	American
1639	number
1640	them
1640	almost
1641	student
1642	special
1643	trade
1644	bank
1644	account
1645	Mrs
1645	gas
1646	health
1647	second
1648	serve
1649	reveal
1649	site
1650	life
1650	response
1651	house
1652	develop
1652	information
1653	lead
1654	order
1654	floor
1655	know
1655	area
1656	heavy
1657	writer
1657	do
1658	none
1658	position
1659	pretty
1659	beyond
1660	clear
1660	spend
1661	foreign
1662	leg
1662	good
1663	agree
1663	mean
1664	analysis
1665	happen
1665	hand
1666	perhaps
1666	hundred
1667	benefit
1667	create
1668	perform
1669	suggest
1669	interesting
1670	a
1670	step
1671	send
1671	from
1672	prepare
1672	wife
1673	trip
1674	white
1675	central
1675	where
1676	professor
1676	take
1677	left
1678	address
1679	professor
1679	bring
1680	reach
1681	smile
1681	moment
1682	affect
1683	gas
1683	daughter
1684	into
1684	ago
1685	conference
1685	pressure
1686	fund
1687	least
1687	should
1688	grow
1688	mention
1689	try
1690	middle
1690	school
1691	school
1691	wish
1692	past
1693	behavior
1694	draw
1694	next
1695	only
1696	I
1697	view
1697	believe
1698	song
1699	allow
1699	own
1700	material
1701	long
1702	hand
1702	set
1703	participant
1703	hold
1704	give
1705	themselves
1706	power
1706	idea
1707	such
1708	hand
1709	car
1710	quality
1711	pattern
1711	personal
1712	step
1712	black
1713	raise
1713	buy
1714	impact
1715	night
1716	wrong
1717	local
1717	fine
1718	certain
1719	high
1719	cut
1720	crime
1720	point
1721	find
1722	body
1722	network
1723	single
1724	beat
1724	early
1725	some
1726	charge
1726	bar
1727	fact
1728	rather
1729	part
1730	city
1730	expert
1731	fire
1732	though
1732	coach
1733	trip
1733	reason
1734	process
1735	successful
1735	beat
1736	outside
1737	keep
1737	option
1738	win
1738	southern
1739	different
1740	offer
1740	risk
1741	speech
1742	collection
1743	body
1744	north
1744	president
1745	miss
1746	word
1746	fish
1747	all
1747	able
1748	ahead
1748	clear
1749	group
1749	sometimes
1750	behind
1750	by
1751	although
1752	ability
1753	prove
1754	degree
1755	claim
1755	education
1756	civil
1757	traditional
1758	pass
1759	dream
1760	owner
1760	area
1761	however
1762	our
1763	compare
1763	fire
1764	page
1765	type
1766	free
1767	cause
1767	eye
1768	hope
1768	different
1769	green
1769	provide
1770	likely
1770	him
1771	leg
1771	throughout
1772	compare
1772	fall
1773	hospital
1773	teacher
1774	sing
1774	none
1775	author
1776	few
1777	everyone
1778	main
1778	resource
1779	light
1780	since
1780	system
1781	throughout
1782	itself
1782	ok
1783	affect
1783	world
1784	provide
1785	all
1785	your
1786	movie
1787	player
1787	campaign
1788	account
1789	media
1789	dream
1790	cultural
1791	maintain
1792	without
1793	be
1793	level
1794	fear
1794	man
1795	perhaps
1795	continue
1796	up
1797	interest
1798	concern
1798	even
1799	why
1800	expect
1800	production
1801	thank
1801	buy
1802	left
1803	rate
1804	rock
1804	hard
1805	everybody
1805	property
1806	cover
1806	gun
1807	color
1807	city
1808	different
1808	exist
1809	little
1810	statement
1810	card
1811	lose
1811	of
1812	level
1813	nature
1813	industry
1814	federal
1814	wind
1815	record
1816	question
1816	new
1817	human
1817	night
1818	stay
1819	trouble
1819	study
1820	wear
1820	when
1821	magazine
1821	bring
1822	national
1822	indeed
1823	building
1823	old
1824	specific
1825	activity
1825	brother
1826	up
1827	hard
1828	address
1829	want
1829	catch
1830	wall
1830	blood
1831	course
1832	answer
1832	box
1833	more
1833	research
1834	true
1835	company
1836	newspaper
1837	student
1838	service
1839	matter
1839	letter
1840	rich
1840	film
1841	sister
1842	all
1843	tell
1844	contain
1844	often
1845	experience
1846	close
1847	stock
1847	near
1848	process
1848	law
1849	defense
1850	partner
1850	word
1851	effect
1851	record
1852	business
1852	stand
1853	anything
1854	agency
1855	stock
1856	project
1857	space
1857	baby
1858	evidence
1859	sort
1859	or
1860	teach
1860	yourself
1861	not
1861	carry
1862	partner
1862	mention
1863	listen
1863	effect
1864	tend
1864	raise
1865	couple
1865	west
1866	again
1866	someone
1867	five
1867	realize
1868	thought
1868	into
1869	find
1870	watch
1871	remember
1872	body
1872	go
1873	whose
1873	start
1874	whatever
1875	Mr
1875	learn
1876	glass
1877	after
1878	country
1879	agreement
1879	choice
1880	political
1881	difference
1882	series
1883	protect
1883	term
1884	knowledge
1884	major
1885	check
1885	notice
1886	cultural
1887	fear
1888	see
1888	black
1889	support
1890	yard
1891	road
1892	short
1893	environmental
1894	million
1894	ready
1895	parent
1896	authority
1897	campaign
1897	rock
1898	prove
1899	Republican
1900	however
1901	radio
1902	speak
1903	environment
1903	democratic
1904	strong
1905	cold
1905	sound
1906	run
1907	week
1908	land
1909	pressure
1909	establish
1910	language
1910	easy
1911	effort
1912	across
1913	bank
1914	drop
1914	letter
1915	share
1915	medical
1916	me
1916	add
1917	close
1918	wait
1919	morning
1919	condition
1920	success
1921	somebody
1922	action
1922	activity
1923	big
1924	stage
1924	process
1925	support
1926	law
1927	car
1927	large
1928	find
1928	make
1929	else
1929	safe
1930	debate
1930	health
1931	dog
1932	issue
1932	place
1933	none
1934	reveal
1934	develop
1935	development
1935	its
1936	where
1936	suddenly
1937	capital
1938	article
1938	rise
1939	there
1939	example
1940	friend
1941	Democrat
1941	truth
1942	heart
1942	even
1943	smile
1944	story
1945	four
1945	hold
1946	anything
1946	executive
1947	wrong
1947	game
1948	forget
1949	woman
1950	need
1951	no
1951	smile
1952	sell
1952	there
1953	fight
1953	operation
1954	draw
1954	religious
1955	our
1956	officer
1956	add
1957	stage
1958	class
1958	hotel
1959	once
1960	happy
1960	serve
1961	himself
1961	education
1962	smile
1963	today
1964	alone
1965	road
1966	ability
1967	card
1968	after
1968	information
1969	possible
1970	dinner
1971	fill
1971	help
1972	peace
1973	indeed
1974	southern
1975	church
1976	statement
1977	performance
1978	tree
1978	century
1979	together
1979	save
1980	class
1980	simple
1981	couple
1981	spend
1982	include
1983	letter
1983	strategy
1984	bring
1985	learn
1986	reach
1986	mission
1987	while
1988	president
1989	policy
1990	science
1990	director
1991	line
1991	central
1992	ground
1993	across
1993	small
1994	strong
1994	our
1995	network
1996	trip
1996	across
1997	sport
1997	might
1998	be
1998	sure
1999	onto
2000	yeah
2001	important
2002	approach
2003	trade
2003	although
2004	different
2005	close
2005	factor
2006	guess
2007	appear
2007	hand
2008	person
2008	run
2009	debate
2010	sense
2011	west
2011	happy
2012	admit
2013	several
2014	vote
2014	degree
2015	woman
2015	hot
2016	teacher
2017	understand
2018	pressure
2019	design
2020	project
2020	word
2021	value
2021	open
2022	far
2022	us
2023	discover
2024	cause
2024	always
2025	husband
2025	so
2026	threat
2027	agree
2027	as
2028	trouble
2029	experience
2030	fine
2031	base
2031	various
2032	theory
2033	listen
2033	operation
2034	positive
2035	him
2036	list
2037	law
2038	these
2039	be
2040	while
2040	education
2041	civil
2041	east
2042	shoulder
2042	inside
2043	newspaper
2043	sport
2044	student
2044	owner
2045	computer
2046	drive
2046	administration
2047	admit
2047	else
2048	score
2049	dinner
2049	surface
2050	send
2050	management
2051	particularly
2051	contain
2052	my
2053	may
2054	have
2054	ok
2055	cup
2056	much
2056	ground
2057	develop
2058	clearly
2058	enough
2059	bring
2060	hand
2061	sell
2061	need
2062	difficult
2062	test
2063	opportunity
2064	military
2064	former
2065	however
2066	issue
2066	serious
2067	one
2068	me
2069	artist
2070	picture
2071	machine
2071	blue
2072	allow
2073	world
2074	war
2075	phone
2076	leave
2076	both
2077	garden
2077	week
2078	budget
2079	sit
2079	good
2080	weight
2081	gun
2081	event
2082	indicate
2082	public
2083	letter
2083	financial
2084	family
2085	natural
2085	former
2086	paper
2087	parent
2087	rich
2088	street
2088	impact
2089	then
2090	amount
2091	walk
2091	social
2092	state
2092	account
2093	election
2093	law
2094	learn
2094	professor
2095	like
2095	authority
2096	chance
2097	help
2098	billion
2099	small
2099	consider
2100	also
\.


--
-- Data for Name: relation_20; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_20 (customer_id, email, password_hash, loyalty_tier, browsingsession) FROM stdin;
101	brianfernandez@example.net	event	data	\N
103	laurahart@example.net	whole	military	\N
104	ystone@example.com	effect	office	\N
105	pwhitehead@example.org	bit	bit	\N
106	robinsondakota@example.com	social	against	\N
107	johnsondonna@example.net	scientist	lawyer	\N
108	jackwilson@example.net	garden	she	\N
109	njones@example.com	true	difficult	\N
110	hday@example.org	rest	arrive	\N
111	jcollier@example.net	position	might	\N
112	edwardfisher@example.net	allow	investment	\N
115	christopher26@example.org	a	half	\N
117	rmcdonald@example.org	whatever	member	\N
118	jwilson@example.net	easy	north	\N
119	olsonkevin@example.com	individual	quite	\N
120	lewiscassandra@example.com	kitchen	social	\N
121	martinashley@example.com	wide	degree	\N
122	kevin46@example.com	less	guy	\N
123	simonjill@example.com	take	defense	\N
124	carol31@example.net	toward	Mr	\N
125	ashley58@example.com	company	industry	\N
126	longsandra@example.org	operation	one	\N
127	hross@example.net	country	save	\N
128	littlevicki@example.com	scientist	room	\N
129	ldominguez@example.net	cultural	day	\N
130	debrafernandez@example.com	future	take	\N
131	kyle90@example.com	into	must	\N
133	deborah27@example.com	many	agent	\N
134	kenneth75@example.org	voice	outside	\N
135	rwang@example.org	nothing	himself	\N
136	kevin80@example.com	picture	loss	\N
137	michelle15@example.net	leg	growth	\N
138	dalebird@example.org	join	father	\N
139	meghan24@example.net	within	stuff	\N
140	robert97@example.net	grow	production	\N
141	laura71@example.org	former	forget	\N
142	rachelmoore@example.net	drug	light	\N
143	nshelton@example.com	address	daughter	\N
144	hpeters@example.org	opportunity	camera	\N
145	kmartin@example.org	response	others	\N
146	katherinethomas@example.com	because	score	\N
147	carterjacqueline@example.net	place	police	\N
149	vbradshaw@example.org	move	learn	\N
150	briannamorrow@example.org	soldier	huge	\N
151	xryan@example.com	past	commercial	\N
152	alvaradodawn@example.net	our	woman	\N
153	tuckerbrandon@example.net	full	late	\N
154	robertgonzales@example.com	rise	describe	\N
155	pamelathompson@example.net	worry	early	\N
156	williammartinez@example.net	although	pull	\N
157	brettmurray@example.com	understand	officer	\N
158	choijohn@example.org	after	believe	\N
159	angelajones@example.com	listen	same	\N
160	ayalamike@example.org	last	environment	\N
161	michellerodriguez@example.net	page	key	\N
162	melissa65@example.net	face	else	\N
163	george24@example.com	memory	lose	\N
164	felicia21@example.org	which	today	\N
165	zromero@example.org	end	start	\N
166	phillipjones@example.net	body	above	\N
167	gomezjustin@example.org	them	them	\N
168	feliciahendricks@example.com	ever	population	\N
170	carl94@example.net	support	popular	\N
171	campbellsean@example.net	green	sea	\N
172	brandonherrera@example.com	notice	garden	\N
173	nicholascalderon@example.org	lawyer	character	\N
174	madelinerobles@example.org	result	sense	\N
175	amandagonzalez@example.org	safe	idea	\N
176	joe18@example.org	capital	bar	\N
177	robinmullins@example.net	always	region	\N
178	housetara@example.com	live	seek	\N
179	stoneandrew@example.org	argue	development	\N
180	imurphy@example.net	chance	could	\N
181	darrell21@example.org	his	large	\N
182	wmartinez@example.net	about	affect	\N
184	anthonystafford@example.org	her	glass	\N
185	kimberlyjackson@example.net	degree	fire	\N
186	bradshawtyler@example.com	peace	less	\N
187	leonard94@example.org	different	shoulder	\N
188	dillonkayla@example.org	plant	leader	\N
189	valerie99@example.net	whole	political	\N
190	aguilarkathleen@example.com	move	know	\N
191	jonathan81@example.org	cold	gas	\N
192	kristinerosales@example.org	meeting	attack	\N
193	lindsayfigueroa@example.net	yard	total	\N
194	mwaller@example.org	those	kind	\N
195	jamesarcher@example.com	effect	data	\N
196	lowerymatthew@example.com	operation	its	\N
198	heathtimothy@example.net	cover	road	\N
199	msmith@example.org	scene	whether	\N
200	allenjulie@example.net	until	goal	\N
201	michael18@example.org	cell	big	\N
203	hartscott@example.net	guess	gas	\N
204	wboyle@example.org	however	trade	\N
205	robert06@example.net	parent	us	\N
206	amywolfe@example.com	control	involve	\N
207	santosdebra@example.org	push	what	\N
209	wbell@example.com	director	give	\N
210	brobinson@example.com	early	nation	\N
211	palmermichael@example.org	history	public	\N
212	owenjessica@example.net	age	collection	\N
213	westveronica@example.com	pick	assume	\N
214	bentonrandall@example.net	suffer	able	\N
216	lford@example.net	either	Mrs	\N
217	fraziertaylor@example.com	body	collection	\N
218	connerjo@example.com	common	ok	\N
219	gromero@example.org	account	pretty	\N
220	stephanieray@example.com	war	likely	\N
221	lee38@example.org	toward	appear	\N
223	khughes@example.org	increase	sing	\N
224	vbryan@example.com	change	analysis	\N
225	james17@example.com	like	provide	\N
226	murrayjoanne@example.com	beyond	own	\N
227	emily85@example.net	federal	piece	\N
228	john83@example.com	admit	light	\N
229	staceycarroll@example.org	down	his	\N
230	angelalawrence@example.net	they	green	\N
231	freemanwilliam@example.com	kitchen	public	\N
232	gstephens@example.net	world	bar	\N
233	jessebrown@example.com	arm	model	\N
234	dmejia@example.org	back	fly	\N
235	rchurch@example.org	while	paper	\N
236	douglas05@example.com	kind	federal	\N
237	morrisleah@example.net	sing	sign	\N
239	msmith@example.com	their	bad	\N
241	trich@example.org	public	it	\N
242	christophermcdonald@example.net	man	hard	\N
243	ehorton@example.org	everyone	any	\N
244	hernandezangel@example.org	visit	medical	\N
245	sarah45@example.net	never	system	\N
247	kennethcook@example.com	political	Mrs	\N
248	kristinjohnson@example.org	human	large	\N
249	michael32@example.org	memory	how	\N
250	nhill@example.org	community	seven	\N
251	obrewer@example.net	spring	answer	\N
252	meganking@example.net	organization	leg	\N
253	robertcarrillo@example.net	me	sound	\N
254	ericacarpenter@example.net	himself	bank	\N
255	ymcintosh@example.com	skin	fight	\N
256	juarezwendy@example.net	accept	poor	\N
257	emartinez@example.com	step	key	\N
258	john15@example.net	away	agreement	\N
259	karen25@example.net	beautiful	itself	\N
260	scott58@example.org	with	matter	\N
261	wleonard@example.org	science	action	\N
262	wangelizabeth@example.net	modern	degree	\N
263	williamsonphilip@example.net	material	side	\N
264	mckenzie40@example.org	life	head	\N
267	gregorygarza@example.com	summer	bill	\N
268	ericpreston@example.org	eye	although	\N
269	josephboyd@example.net	quite	against	\N
270	kharris@example.com	toward	walk	\N
271	ghoward@example.com	theory	whatever	\N
272	phillipcampbell@example.com	evidence	anyone	\N
273	robertwilson@example.net	cup	language	\N
274	myerspatrick@example.com	idea	away	\N
275	tinajordan@example.net	official	month	\N
276	blong@example.com	word	rise	\N
277	desiree30@example.net	one	medical	\N
278	madeline25@example.com	young	offer	\N
279	jfriedman@example.net	black	general	\N
280	elizabeth00@example.org	various	cell	\N
281	newmanpaul@example.org	according	hotel	\N
282	fordkevin@example.net	trouble	wife	\N
283	stewartgrace@example.com	product	friend	\N
284	victoria94@example.net	draw	spring	\N
285	cnguyen@example.org	tree	this	\N
286	ryan38@example.net	happy	total	\N
287	dwaynemeyer@example.org	past	argue	\N
288	johnsonyvonne@example.com	artist	statement	\N
289	amolina@example.org	worry	beyond	\N
290	shahtiffany@example.net	source	help	\N
291	conniebaldwin@example.net	step	us	\N
292	meghan93@example.org	smile	professor	\N
293	ryan97@example.org	before	grow	\N
295	kle@example.com	kitchen	drive	\N
296	shawmichelle@example.org	enter	individual	\N
297	lsnow@example.org	attack	adult	\N
298	mbrown@example.org	economic	tonight	\N
299	watsonpeter@example.net	heart	news	\N
300	deborah15@example.net	television	mean	\N
183	john11@example.com	she	car	[{"device": "these", "session_id": "47", "started_at": "natural"}]
116	lestersarah@example.org	recently	throughout	[{"device": "on", "session_id": "643", "started_at": "reason"}]
238	lanelisa@example.com	condition	senior	[{"device": "as", "session_id": "748", "started_at": "very"}]
113	mdavis@example.net	table	policy	[{"device": "majority", "session_id": "858", "started_at": "weight"}]
208	victor33@example.com	final	training	[{"device": "read", "session_id": "813", "started_at": "really"}]
102	albertjones@example.com	protect	already	[{"device": "scientist", "session_id": "577", "started_at": "full"}]
169	smithlinda@example.org	not	sit	[{"device": "use", "session_id": "717", "started_at": "blood"}]
246	pryan@example.com	ever	east	[{"device": "enough", "session_id": "457", "started_at": "seat"}]
266	vvargas@example.net	eat	each	[{"device": "true", "session_id": "713", "started_at": "manage"}]
197	webbbrandon@example.com	visit	top	[{"device": "fine", "session_id": "636", "started_at": "purpose"}]
148	petersonmark@example.org	game	successful	[{"device": "project", "session_id": "931", "started_at": "artist"}]
222	henry97@example.com	goal	consumer	[{"device": "listen", "session_id": "366", "started_at": "beat"}]
294	nmclean@example.org	huge	cost	[{"device": "court", "session_id": "12", "started_at": "property"}]
202	dawn34@example.net	knowledge	interesting	[{"device": "off", "session_id": "463", "started_at": "continue"}]
215	braungrant@example.com	girl	sound	[{"device": "decision", "session_id": "649", "started_at": "decade"}, {"device": "test", "session_id": "571", "started_at": "why"}]
132	willisjames@example.com	three	white	[{"device": "let", "session_id": "516", "started_at": "federal"}]
240	vramirez@example.com	wonder	billion	[{"device": "item", "session_id": "87", "started_at": "set"}]
114	mwilliams@example.com	serve	dream	[{"device": "brother", "session_id": "66", "started_at": "and"}]
265	kimthomas@example.com	sure	other	[{"device": "at", "session_id": "35", "started_at": "decade"}]
\.


--
-- Data for Name: relation_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_21 (customer_id, contact_no) FROM stdin;
101	side
101	by
102	camera
102	within
103	mother
104	choice
104	take
105	maybe
106	policy
107	central
108	director
109	size
109	while
110	wife
111	sense
111	ahead
112	strategy
113	wide
114	tonight
115	specific
116	determine
117	which
117	today
118	interview
118	price
119	ready
120	language
121	fear
121	test
122	according
123	song
124	hard
124	bank
125	best
125	go
126	paper
127	green
127	friend
128	trial
128	yet
129	role
129	daughter
130	brother
131	defense
131	local
132	near
132	certainly
133	or
134	pay
134	gas
135	coach
135	man
136	necessary
136	stop
137	state
138	line
139	make
139	new
140	quite
141	give
142	best
143	pay
144	television
144	population
145	baby
145	likely
146	occur
146	list
147	recent
147	capital
148	worker
149	hotel
150	green
150	sport
151	investment
152	dark
153	instead
154	wife
155	move
156	discover
156	gun
157	resource
157	could
158	decision
158	key
159	authority
159	culture
160	tough
161	close
162	argue
162	new
163	want
164	step
164	but
165	much
165	century
166	during
167	technology
168	fight
169	certain
169	spend
170	few
171	try
171	think
172	own
173	continue
173	art
174	order
175	no
176	program
177	these
178	generation
179	American
179	choice
180	power
180	yourself
181	trial
181	something
182	glass
182	or
183	conference
183	official
184	economic
185	house
186	production
186	too
187	mean
188	rather
188	between
189	current
189	threat
190	crime
191	red
192	experience
193	anything
193	cold
194	seven
194	rich
195	take
195	relationship
196	value
196	senior
197	business
198	poor
199	officer
200	power
201	price
202	huge
203	deep
204	us
205	stay
205	author
206	value
207	require
208	and
208	research
209	story
210	treat
210	resource
211	poor
212	cost
213	music
213	team
214	be
215	others
215	second
216	politics
217	student
217	purpose
218	window
218	none
219	once
219	others
220	kitchen
221	skin
221	increase
222	suddenly
222	stay
223	current
223	might
224	machine
224	need
225	laugh
225	whom
226	read
227	bill
228	threat
228	movement
229	through
229	fear
230	reduce
230	could
231	middle
231	expect
232	yet
233	name
233	local
234	call
234	show
235	eat
236	bad
236	sense
237	window
237	lot
238	agency
239	popular
239	across
240	walk
241	ever
241	among
242	front
243	although
243	other
244	popular
244	though
245	fall
246	start
247	question
248	bar
248	much
249	among
249	provide
250	ready
250	issue
251	society
251	everybody
252	author
253	necessary
253	sit
254	training
254	act
255	plan
256	choice
257	cell
258	trouble
259	spend
260	line
261	foot
262	rise
263	level
264	lot
265	over
265	difference
266	morning
267	red
267	opportunity
268	make
269	long
269	hospital
270	again
270	four
271	moment
272	court
273	a
273	individual
274	behavior
275	power
276	lawyer
277	build
277	not
278	happen
279	too
279	project
280	leave
280	around
281	magazine
281	employee
282	edge
282	course
283	them
284	guess
285	cup
285	wear
286	speech
286	girl
287	staff
287	herself
288	daughter
288	stay
289	prove
289	accept
290	fight
291	anyone
292	figure
293	agree
294	discuss
294	view
295	movement
296	music
297	heart
297	spring
298	only
298	bring
299	activity
299	sort
300	play
300	near
301	black
302	too
302	sit
303	first
304	by
304	get
305	movement
306	heart
306	wife
307	professor
307	six
308	activity
308	government
309	break
310	huge
310	college
311	ask
311	kid
312	concern
313	reduce
314	stand
315	maybe
316	show
317	fast
318	off
318	whom
319	assume
319	truth
320	loss
321	Congress
321	performance
322	serve
322	benefit
323	soon
323	protect
324	politics
324	drive
325	feeling
326	our
327	run
327	group
328	career
329	available
330	apply
331	air
332	hospital
332	event
333	into
334	hand
335	third
336	impact
336	store
337	investment
338	have
339	you
340	purpose
340	material
341	learn
341	case
342	surface
343	data
344	go
344	cell
345	not
345	whose
346	law
347	series
348	door
349	year
349	wear
350	your
350	later
351	language
351	fight
352	dinner
352	until
353	growth
354	here
354	stock
355	news
355	rate
356	senior
357	rich
358	service
359	yourself
359	really
360	exist
361	morning
361	myself
362	leader
363	memory
364	suddenly
364	ever
365	often
366	capital
366	lawyer
367	mind
368	magazine
369	area
369	tax
370	hundred
370	early
371	begin
372	environmental
373	effort
374	together
375	cell
375	wear
376	floor
377	office
377	fight
378	matter
379	painting
380	organization
380	city
381	administration
381	single
382	prepare
382	attorney
383	myself
383	science
384	seem
385	stage
386	fact
386	others
387	election
387	identify
388	south
389	prove
389	line
390	research
390	machine
391	those
391	I
392	source
392	marriage
393	best
393	commercial
394	left
395	away
395	guess
396	explain
396	public
397	customer
398	image
399	air
399	not
400	everyone
400	allow
\.


--
-- Data for Name: relation_22; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_22 (primecustomer_id, renewal_date) FROM stdin;
201	admit
202	produce
203	four
204	include
205	arm
206	speech
207	arm
208	building
209	some
210	visit
211	prevent
212	imagine
213	set
214	defense
215	here
216	budget
217	rate
218	way
219	power
220	return
221	bank
222	maybe
223	western
224	test
225	price
226	purpose
227	attention
228	section
229	maintain
230	present
231	past
232	charge
233	threat
234	this
235	plant
236	majority
237	address
238	spring
239	nothing
240	good
241	ask
242	reduce
243	court
244	study
245	far
246	medical
247	race
248	professor
249	society
250	culture
251	official
252	leader
253	be
254	history
255	various
256	produce
257	senior
258	discuss
259	camera
260	term
261	news
262	action
263	left
264	sometimes
265	matter
266	third
267	eye
268	you
269	manage
270	picture
271	green
272	deal
273	item
274	return
275	century
276	certainly
277	mouth
278	again
279	rest
280	much
281	they
282	change
283	particularly
284	smile
285	step
286	into
287	south
288	west
289	will
290	under
291	senior
292	send
293	TV
294	expert
295	walk
296	field
297	much
298	thus
299	across
300	stock
\.


--
-- Data for Name: relation_23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_23 (primecustomer_id, subscription_addons) FROM stdin;
201	glass
201	thought
201	beautiful
201	hotel
202	amount
203	loss
204	determine
204	new
204	most
204	close
205	police
205	bit
205	lot
206	director
206	teacher
207	yes
207	thus
208	difficult
209	charge
209	performance
210	fly
210	material
210	other
211	vote
211	young
212	human
212	election
212	maybe
212	road
213	pattern
213	night
214	edge
214	visit
214	leg
215	free
215	college
215	agreement
215	feeling
216	section
216	situation
216	daughter
217	your
217	movement
218	nice
218	lay
218	north
218	avoid
219	modern
220	movement
221	man
221	represent
221	across
221	tend
222	significant
223	mother
223	trip
223	create
223	difficult
224	our
224	agent
224	ahead
224	interview
225	song
225	face
226	boy
227	doctor
227	list
227	discuss
227	candidate
228	act
229	challenge
230	a
231	with
232	spring
233	produce
233	then
234	mention
235	experience
236	class
236	catch
236	front
237	fire
237	consumer
238	understand
239	Mr
239	single
239	throughout
239	campaign
240	none
240	everybody
241	detail
241	represent
242	rule
242	page
242	should
242	kid
243	behind
243	expect
243	hotel
244	total
244	data
244	nation
245	job
245	military
246	church
246	hold
247	treat
247	sign
247	think
247	news
248	there
248	remember
248	sport
248	laugh
249	until
249	force
250	best
250	this
251	alone
251	quickly
251	media
252	charge
252	still
252	weight
253	onto
254	enjoy
255	he
256	defense
256	kid
257	step
257	early
257	college
257	walk
258	raise
258	myself
259	mention
259	evidence
260	animal
260	any
260	red
261	again
262	purpose
262	event
262	read
262	number
263	organization
263	physical
263	fast
263	notice
264	face
264	center
264	last
264	project
265	reveal
265	him
265	loss
266	deal
267	decision
267	reality
267	number
268	east
268	magazine
268	which
268	red
269	here
270	soldier
270	I
270	identify
271	number
271	hit
271	leave
271	take
272	assume
272	collection
273	explain
273	teacher
273	night
273	seek
274	action
275	sister
275	away
275	law
276	important
276	program
277	he
277	bag
277	society
278	however
278	own
278	behind
278	suddenly
279	down
280	ago
281	myself
282	consider
282	not
282	example
282	sometimes
283	term
283	senior
283	fear
283	eat
284	learn
285	more
286	there
286	yet
286	nothing
286	heavy
287	cultural
287	treatment
287	follow
288	deal
288	test
288	many
288	same
289	notice
290	rule
291	collection
292	official
292	reason
292	notice
293	almost
293	data
293	boy
294	far
295	blood
295	understand
295	boy
295	compare
296	board
297	certainly
297	boy
297	down
298	another
298	both
298	policy
298	reflect
299	good
300	want
\.


--
-- Data for Name: relation_24; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_24 (businesscustomer_id, email, password_hash, loyalty_tier, company_name, browsingsession) FROM stdin;
301	khanmichele@example.com	author	present	show	\N
302	djacobson@example.com	president	plan	city	\N
303	raymond85@example.com	like	ago	build	\N
304	maldonadojamie@example.org	five	try	identify	\N
305	vromero@example.org	adult	within	sound	\N
306	amartinez@example.org	get	blue	region	\N
307	steven62@example.net	teacher	probably	build	\N
308	oadams@example.com	front	deal	eye	\N
310	tcantu@example.net	wear	term	deal	\N
311	donaldpeterson@example.net	wait	line	force	\N
312	christinagarcia@example.com	begin	hundred	new	\N
313	perezmichael@example.org	other	if	reduce	\N
316	sarasnow@example.net	government	north	Democrat	\N
317	scooper@example.org	glass	factor	dark	\N
319	michael14@example.com	eye	kitchen	character	\N
320	jenniferjohnson@example.net	book	state	popular	\N
321	andersonbarbara@example.com	capital	education	idea	\N
322	jeffersondaniel@example.net	course	job	every	\N
323	holly34@example.org	goal	animal	red	\N
324	uvaldez@example.org	social	contain	color	\N
325	michellemiller@example.net	face	detail	nor	\N
326	ywilliams@example.net	move	break	rise	\N
327	stanleyterri@example.net	look	artist	within	\N
328	ashley30@example.org	require	save	occur	\N
330	twilliams@example.net	mind	matter	beyond	\N
331	qsmith@example.org	visit	lose	occur	\N
332	jonesjohn@example.net	better	send	continue	\N
333	thompsonjenny@example.org	per	experience	attention	\N
334	neilmiller@example.net	rise	citizen	job	\N
335	christopherbaldwin@example.org	level	nearly	approach	\N
336	ncosta@example.net	president	official	teacher	\N
337	markpatton@example.com	television	then	establish	\N
338	michelle30@example.org	sea	among	moment	\N
339	taylorjamie@example.net	after	measure	officer	\N
340	stewartmadison@example.org	open	nice	population	\N
341	thomas83@example.net	game	large	open	\N
342	xhenry@example.net	degree	ball	life	\N
343	crawfordjulie@example.net	citizen	call	sea	\N
344	eileen22@example.com	doctor	discuss	money	\N
345	dustin48@example.com	hospital	single	natural	\N
347	ylee@example.net	how	low	game	\N
348	philip88@example.org	appear	reality	Mr	\N
349	lindareynolds@example.net	over	single	study	\N
350	hmccann@example.com	front	although	price	\N
351	jmoore@example.com	picture	their	sometimes	\N
352	fhale@example.org	focus	call	black	\N
353	joel14@example.com	lot	bill	worker	\N
354	wtate@example.com	carry	artist	color	\N
355	katie86@example.com	budget	power	customer	\N
356	manuel69@example.org	measure	term	make	\N
359	stoutbrian@example.net	small	on	city	\N
360	qkeith@example.net	central	popular	national	\N
363	bryanjohnson@example.org	fear	firm	somebody	\N
364	regina18@example.org	head	pay	character	\N
365	kevin46@example.com	drop	morning	network	\N
366	tina65@example.net	recently	degree	because	\N
367	heidireed@example.net	give	job	value	\N
368	donaldfisher@example.com	both	heart	area	\N
369	julie47@example.com	pick	large	point	\N
370	kyliemorgan@example.net	eat	family	save	\N
371	lisabarry@example.com	special	four	president	\N
372	bridgetyates@example.org	return	hour	foreign	\N
373	alyssaspencer@example.com	article	charge	kind	\N
374	vaughnelaine@example.org	writer	result	positive	\N
376	lwheeler@example.org	eat	simple	set	\N
377	ywood@example.com	mission	media	upon	\N
378	parsonstara@example.net	total	time	leave	\N
379	cindylevy@example.com	name	training	kind	\N
380	kdiaz@example.net	career	imagine	bar	\N
381	vbullock@example.net	major	his	table	\N
383	morganshawn@example.net	edge	move	make	\N
386	mwilliams@example.net	could	side	environmental	\N
387	iarroyo@example.com	us	a	debate	\N
388	osexton@example.org	bed	consider	whatever	\N
389	callahanelaine@example.com	nature	it	represent	\N
391	icummings@example.net	edge	best	team	\N
392	ihill@example.com	material	according	cut	\N
393	iwilkinson@example.net	student	too	perform	\N
394	zhardy@example.com	ready	moment	film	\N
395	blakeerin@example.net	answer	single	final	\N
396	alexandra23@example.com	decide	him	represent	\N
397	russell31@example.org	exist	party	deep	\N
399	marcus52@example.org	network	sister	big	\N
400	mlawrence@example.com	matter	stay	probably	\N
309	jcole@example.org	this	red	during	[{"device": "water", "session_id": "102", "started_at": "situation"}]
318	brittany47@example.org	address	yourself	view	[{"device": "contain", "session_id": "72", "started_at": "feeling"}]
329	lauramartinez@example.org	they	Congress	state	[{"device": "crime", "session_id": "443", "started_at": "risk"}]
382	gjones@example.net	measure	his	base	[{"device": "sometimes", "session_id": "748", "started_at": "when"}, {"device": "issue", "session_id": "657", "started_at": "ready"}]
315	laurenbaker@example.org	my	dinner	Republican	[{"device": "bed", "session_id": "281", "started_at": "describe"}]
357	greenecarol@example.org	watch	life	entire	[{"device": "front", "session_id": "1", "started_at": "five"}]
361	schmidtamanda@example.net	also	month	key	[{"device": "option", "session_id": "792", "started_at": "remember"}]
346	robinsondouglas@example.net	whether	movie	member	[{"device": "stock", "session_id": "49", "started_at": "degree"}]
384	sonya46@example.net	account	exactly	second	[{"device": "class", "session_id": "489", "started_at": "fight"}]
375	tharrington@example.net	team	on	chair	[{"device": "half", "session_id": "1", "started_at": "help"}]
314	lynnhood@example.net	be	decision	ever	[{"device": "culture", "session_id": "62", "started_at": "cover"}]
385	eric40@example.net	push	language	country	[{"device": "certainly", "session_id": "541", "started_at": "occur"}]
362	michael58@example.com	effort	both	people	[{"device": "these", "session_id": "437", "started_at": "person"}]
390	gonzalesjohn@example.com	thus	serve	style	[{"device": "mind", "session_id": "843", "started_at": "sometimes"}]
398	timothymiddleton@example.com	daughter	relationship	event	[{"device": "his", "session_id": "789", "started_at": "brother"}]
358	kharmon@example.org	position	represent	discuss	[{"device": "ahead", "session_id": "557", "started_at": "base"}]
\.


--
-- Data for Name: relation_25; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_25 (corporateemployee_id, office_site) FROM stdin;
501	source
502	bed
503	people
504	door
505	old
506	she
507	physical
508	the
509	time
510	small
511	music
512	war
513	food
514	factor
515	individual
516	short
517	special
518	car
519	stuff
520	girl
521	instead
522	social
523	friend
524	research
525	air
526	her
527	authority
528	office
529	including
530	action
531	case
532	single
533	when
534	hope
535	particularly
536	assume
537	recently
538	create
539	maintain
540	after
541	people
542	find
543	pull
544	fight
545	they
546	herself
547	far
548	realize
549	language
550	politics
551	realize
552	television
553	among
554	suffer
555	coach
556	shoulder
557	side
558	value
559	section
560	seek
561	nothing
562	career
563	money
564	public
565	treatment
566	call
567	different
568	save
569	policy
570	later
571	issue
572	young
573	produce
574	hard
575	when
576	accept
577	space
578	citizen
579	development
580	anyone
581	own
582	surface
583	benefit
584	director
585	sing
586	tell
587	worker
588	next
589	get
590	hit
591	rule
592	indicate
593	reach
594	south
595	like
596	item
597	action
598	me
599	leader
600	camera
601	sing
602	three
603	fine
604	leg
605	wish
606	natural
607	indicate
608	traditional
609	huge
610	table
611	fund
612	yes
613	manage
614	middle
615	unit
616	finally
617	lead
618	writer
619	always
620	none
621	sort
622	question
623	per
624	alone
625	color
626	head
627	nature
628	doctor
629	run
630	these
631	back
632	hot
633	often
634	modern
635	must
636	from
637	expert
638	necessary
639	thus
640	generation
641	more
642	after
643	brother
644	exist
645	visit
646	evening
647	reveal
648	role
649	traditional
650	sense
651	change
652	begin
653	really
654	idea
655	light
656	stay
657	style
658	floor
659	policy
660	sometimes
661	college
662	speak
663	ten
664	television
665	lawyer
666	manager
667	reach
668	professional
669	huge
670	paper
671	view
672	perhaps
673	speak
674	my
675	standard
676	long
677	lose
678	eat
679	bad
680	beat
681	strong
682	where
683	technology
684	avoid
685	just
686	soon
687	someone
688	land
689	station
690	against
691	apply
692	every
693	day
694	ever
695	simply
696	project
697	hour
698	foot
699	attention
700	significant
\.


--
-- Data for Name: relation_26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_26 (engineer_id, level) FROM stdin;
601	nearly
602	kind
603	somebody
604	degree
605	ten
606	quickly
607	data
608	serve
609	western
610	receive
611	have
612	ready
613	simply
614	Mrs
615	rather
616	hear
617	news
618	law
619	turn
620	order
621	hospital
622	free
623	wonder
624	pay
625	upon
626	culture
627	address
628	it
629	rise
630	hotel
631	near
632	several
633	number
634	agent
635	success
636	past
637	explain
638	traditional
639	manage
640	available
641	fall
642	Democrat
643	Democrat
644	office
645	rather
646	black
647	many
648	report
649	argue
650	ability
651	order
652	movement
653	too
654	share
655	box
656	move
657	natural
658	capital
659	send
660	present
661	particularly
662	share
663	memory
664	company
665	believe
666	by
667	end
668	miss
669	election
670	house
671	we
672	hotel
673	least
674	commercial
675	they
676	four
677	push
678	likely
679	number
680	minute
681	set
682	region
683	recently
684	several
685	show
686	billion
687	building
688	easy
689	PM
690	PM
691	for
692	practice
693	unit
694	political
695	section
696	game
697	with
698	actually
699	but
700	amount
\.


--
-- Data for Name: relation_27; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_27 (supportagent_id, queue) FROM stdin;
701	space
702	safe
703	recent
704	very
705	rise
706	huge
707	can
708	food
709	inside
710	describe
711	eat
712	you
713	open
714	describe
715	day
716	these
717	time
718	sometimes
719	the
720	public
721	message
722	culture
723	since
724	green
725	authority
726	herself
727	real
728	over
729	technology
730	pressure
731	choice
732	job
733	ten
734	debate
735	city
736	investment
737	human
738	high
739	activity
740	page
741	author
742	manager
743	member
744	research
745	guy
746	gun
747	summer
748	series
749	become
750	rock
751	his
752	positive
753	couple
754	pretty
755	pick
756	out
757	single
758	enough
759	camera
760	various
761	skill
762	reveal
763	century
764	build
765	dog
766	shoulder
767	third
768	management
769	writer
770	cup
771	contain
772	save
773	significant
774	wish
775	decision
776	become
777	eat
778	successful
779	at
780	sister
781	have
782	long
783	carry
784	onto
785	soldier
786	threat
787	family
788	news
789	fund
790	coach
791	current
792	majority
793	skin
794	song
795	control
796	life
797	paper
798	common
799	six
800	number
\.


--
-- Data for Name: relation_28; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_28 (fulfillmentassociate_id, shift) FROM stdin;
801	environment
802	significant
803	together
804	science
805	age
806	kitchen
807	very
808	describe
809	dark
810	understand
811	in
812	later
813	soon
814	blue
815	cost
816	exactly
817	society
818	add
819	interesting
820	police
821	into
822	better
823	allow
824	history
825	perhaps
826	role
827	with
828	toward
829	road
830	kind
831	west
832	father
833	author
834	address
835	rise
836	because
837	beyond
838	big
839	report
840	center
841	analysis
842	eye
843	generation
844	little
845	result
846	purpose
847	movie
848	technology
849	strategy
850	beat
851	conference
852	buy
853	wrong
854	generation
855	risk
856	same
857	agency
858	offer
859	include
860	with
861	generation
862	foreign
863	large
864	image
865	environmental
866	follow
867	fire
868	politics
869	common
870	structure
871	fire
872	office
873	difficult
874	knowledge
875	show
876	difference
877	begin
878	behind
879	official
880	easy
881	view
882	know
883	agree
884	Republican
885	baby
886	available
887	serious
888	smile
889	leave
890	anything
891	federal
892	scene
893	garden
894	responsibility
895	fast
896	protect
897	civil
898	entire
899	single
900	girl
\.


--
-- Data for Name: relation_29; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_29 (tag_id, tag_name) FROM stdin;
1	however
2	project
3	upon
4	maintain
5	get
6	probably
7	visit
8	hotel
9	assume
10	strategy
11	agree
12	campaign
13	believe
14	talk
15	sister
16	student
17	floor
18	make
19	collection
20	agree
21	think
22	or
23	include
24	human
25	idea
26	interest
27	magazine
28	then
29	course
30	first
31	service
32	owner
33	tend
34	financial
35	north
36	condition
37	street
38	manager
39	moment
40	understand
41	nation
42	study
43	strategy
44	order
45	different
46	his
47	from
48	lay
49	book
50	would
51	put
52	full
53	experience
54	American
55	approach
56	Democrat
57	machine
58	themselves
59	ever
60	radio
61	difficult
62	interest
63	hospital
64	goal
65	owner
66	year
67	commercial
68	easy
69	American
70	send
71	represent
72	same
73	benefit
74	administration
75	development
76	best
77	always
78	art
79	laugh
80	which
81	blue
82	establish
83	whose
84	information
85	yourself
86	offer
87	we
88	force
89	together
90	choice
91	training
92	bill
93	crime
94	friend
95	simply
96	sister
97	those
98	rather
99	Mr
100	eye
\.


--
-- Data for Name: relation_3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_3 (digitalproduct_id, sku, product_name, base_price, is_active, quantity, delivery_type, format, role, productimage, productvariant, pricehistory) FROM stdin;
201	hundred	town	173	305	669	strategy	\N	digitalproduct	\N	\N	\N
202	camera	floor	365	625	758	far	\N	digitalproduct	\N	\N	\N
203	order	six	402	575	410	exactly	\N	digitalproduct	\N	\N	\N
204	pay	service	496	809	266	general	\N	digitalproduct	\N	\N	\N
205	her	visit	734	228	265	much	\N	digitalproduct	\N	\N	\N
206	writer	remember	865	677	32	others	\N	digitalproduct	\N	\N	\N
207	specific	budget	325	951	443	chair	\N	digitalproduct	\N	\N	\N
208	wife	however	805	276	195	beyond	\N	digitalproduct	\N	\N	\N
209	leave	forward	641	750	170	toward	\N	digitalproduct	\N	\N	\N
211	still	interesting	621	969	269	perhaps	\N	digitalproduct	\N	\N	\N
212	per	everything	540	167	142	under	\N	digitalproduct	\N	\N	\N
213	manage	buy	916	733	452	close	\N	digitalproduct	\N	\N	\N
214	hour	simple	318	770	411	subject	\N	digitalproduct	\N	\N	\N
215	human	factor	119	736	212	minute	\N	digitalproduct	\N	\N	\N
216	take	sit	70	109	234	writer	\N	digitalproduct	\N	\N	\N
217	smile	choice	330	505	951	middle	\N	digitalproduct	\N	\N	\N
218	various	from	979	192	47	base	\N	digitalproduct	\N	\N	\N
219	special	cut	829	612	24	short	\N	digitalproduct	\N	\N	\N
220	dinner	nature	700	36	507	single	\N	digitalproduct	\N	\N	\N
221	official	group	351	679	858	hotel	\N	digitalproduct	\N	\N	\N
222	television	decade	121	628	710	view	\N	digitalproduct	\N	\N	\N
223	despite	player	98	228	410	lawyer	\N	digitalproduct	\N	\N	\N
224	news	business	507	461	387	along	\N	digitalproduct	\N	\N	\N
225	reason	cause	997	238	242	defense	\N	digitalproduct	\N	\N	\N
226	civil	late	474	561	594	say	\N	digitalproduct	\N	\N	\N
227	camera	along	217	463	733	study	\N	digitalproduct	\N	\N	\N
229	marriage	eye	932	219	81	network	\N	digitalproduct	\N	\N	\N
230	subject	smile	16	817	6	husband	\N	digitalproduct	\N	\N	\N
231	create	girl	328	911	393	central	\N	digitalproduct	\N	\N	\N
232	human	poor	941	201	410	raise	\N	digitalproduct	\N	\N	\N
233	but	rise	902	845	777	pattern	\N	digitalproduct	\N	\N	\N
234	seem	someone	813	936	32	whatever	\N	digitalproduct	\N	\N	\N
235	team	training	397	149	898	other	\N	digitalproduct	\N	\N	\N
237	energy	bag	82	474	668	say	\N	digitalproduct	\N	\N	\N
238	claim	answer	928	15	37	life	\N	digitalproduct	\N	\N	\N
239	as	strong	538	861	133	attention	\N	digitalproduct	\N	\N	\N
240	little	whatever	956	281	800	age	\N	digitalproduct	\N	\N	\N
241	well	career	443	94	195	theory	\N	digitalproduct	\N	\N	\N
242	key	degree	512	653	134	magazine	\N	digitalproduct	\N	\N	\N
243	this	not	704	837	866	in	\N	digitalproduct	\N	\N	\N
244	range	your	679	459	400	end	\N	digitalproduct	\N	\N	\N
245	box	now	647	275	993	character	\N	digitalproduct	\N	\N	\N
246	year	per	658	651	249	real	\N	digitalproduct	\N	\N	\N
247	ability	successful	62	603	958	quality	\N	digitalproduct	\N	\N	\N
248	bill	news	359	439	620	so	\N	digitalproduct	\N	\N	\N
249	beat	mention	927	362	561	concern	\N	digitalproduct	\N	\N	\N
250	else	player	552	205	729	particular	\N	digitalproduct	\N	\N	\N
251	unit	remember	942	679	72	find	\N	digitalproduct	\N	\N	\N
252	drug	official	762	626	739	yard	\N	digitalproduct	\N	\N	\N
253	tough	practice	258	182	1000	financial	\N	digitalproduct	\N	\N	\N
254	son	he	155	61	941	major	\N	digitalproduct	\N	\N	\N
255	tell	remain	876	439	873	down	\N	digitalproduct	\N	\N	\N
256	though	never	55	653	94	white	\N	digitalproduct	\N	\N	\N
257	own	include	514	380	102	trouble	\N	digitalproduct	\N	\N	\N
258	keep	develop	42	130	545	president	\N	digitalproduct	\N	\N	\N
259	painting	name	454	681	132	step	\N	digitalproduct	\N	\N	\N
260	enter	blood	782	725	921	phone	\N	digitalproduct	\N	\N	\N
261	raise	decide	26	755	538	sound	\N	digitalproduct	\N	\N	\N
262	itself	send	93	257	820	sign	\N	digitalproduct	\N	\N	\N
263	upon	record	88	310	36	nice	\N	digitalproduct	\N	\N	\N
264	maintain	thank	60	751	268	specific	\N	digitalproduct	\N	\N	\N
265	a	interest	753	134	267	their	\N	digitalproduct	\N	\N	\N
266	religious	hand	827	120	877	country	\N	digitalproduct	\N	\N	\N
268	able	push	515	571	211	high	\N	digitalproduct	\N	\N	\N
269	event	inside	946	347	522	force	\N	digitalproduct	\N	\N	\N
270	car	red	980	918	599	result	\N	digitalproduct	\N	\N	\N
271	here	sure	108	133	669	pass	\N	digitalproduct	\N	\N	\N
272	class	only	537	573	737	huge	\N	digitalproduct	\N	\N	\N
274	whether	truth	205	380	399	age	\N	digitalproduct	\N	\N	\N
275	these	gun	100	420	354	along	\N	digitalproduct	\N	\N	\N
277	ball	owner	835	819	667	deal	\N	digitalproduct	\N	\N	\N
278	customer	other	428	306	327	owner	\N	digitalproduct	\N	\N	\N
279	probably	weight	280	334	767	technology	\N	digitalproduct	\N	\N	\N
280	director	race	539	125	153	west	\N	digitalproduct	\N	\N	\N
281	election	page	937	745	334	item	\N	digitalproduct	\N	\N	\N
282	baby	kitchen	587	71	463	add	\N	digitalproduct	\N	\N	\N
283	total	red	492	466	935	drop	\N	digitalproduct	\N	\N	\N
285	north	yes	836	911	948	cultural	\N	digitalproduct	\N	\N	\N
286	out	cup	945	593	821	public	\N	digitalproduct	\N	\N	\N
287	beat	rule	138	50	537	approach	\N	digitalproduct	\N	\N	\N
288	billion	kind	590	874	258	newspaper	\N	digitalproduct	\N	\N	\N
289	happy	follow	720	588	765	fear	\N	digitalproduct	\N	\N	\N
284	entire	center	950	760	994	many	\N	digitalproduct	\N	[{"barcode": "film", "variant_id": "237", "price_override": "481", "is_active_variant": "68"}]	\N
290	large	meeting	371	965	817	author	\N	digitalproduct	\N	\N	\N
291	what	not	413	315	476	be	\N	digitalproduct	\N	\N	\N
292	religious	suddenly	545	520	172	family	\N	digitalproduct	\N	\N	\N
296	own	behavior	832	102	559	page	\N	digitalproduct	\N	\N	\N
297	consumer	soon	732	110	210	set	\N	digitalproduct	\N	\N	\N
300	future	image	659	859	178	set	\N	digitalproduct	\N	\N	\N
1901	start	rate	276	355	769	too	forget	media	\N	\N	\N
1902	prepare	even	303	608	243	kid	dark	media	\N	\N	\N
1903	human	bit	559	43	338	why	particular	media	\N	\N	\N
1904	note	civil	570	183	758	table	win	media	\N	\N	\N
1905	whatever	beat	424	326	559	story	second	media	\N	\N	\N
1907	than	suggest	797	662	547	staff	field	media	\N	\N	\N
1908	lawyer	either	30	326	489	read	agent	media	\N	\N	\N
1909	always	seat	210	409	102	social	or	media	\N	\N	\N
1910	effort	power	728	647	817	help	item	media	\N	\N	\N
1911	few	sea	506	552	565	together	movement	media	\N	\N	\N
1912	record	different	775	797	459	similar	seat	media	\N	\N	\N
1913	glass	pass	696	654	198	defense	everyone	media	\N	\N	\N
1914	positive	perhaps	651	264	620	media	example	media	\N	\N	\N
1915	summer	trade	8	69	832	bad	think	media	\N	\N	\N
1916	six	various	19	825	196	medical	choice	media	\N	\N	\N
1917	success	hear	281	653	580	economy	yes	media	\N	\N	\N
1918	just	return	787	490	573	say	section	media	\N	\N	\N
1919	ten	whom	464	43	390	stage	recent	media	\N	\N	\N
1920	there	speech	412	57	656	character	professor	media	\N	\N	\N
1921	quality	page	297	363	240	house	thank	media	\N	\N	\N
1922	myself	attorney	471	572	482	us	than	media	\N	\N	\N
1923	strategy	sister	39	786	998	minute	west	media	\N	\N	\N
1924	special	Congress	121	330	833	theory	space	media	\N	\N	\N
1925	feeling	senior	960	439	750	many	type	media	\N	\N	\N
1926	also	every	862	719	759	discuss	color	media	\N	\N	\N
1927	care	common	883	911	284	guess	issue	media	\N	\N	\N
1928	day	born	701	563	895	our	run	media	\N	\N	\N
1929	nearly	skill	991	110	674	participant	of	media	\N	\N	\N
1930	song	help	436	519	435	not	father	media	\N	\N	\N
1931	to	learn	837	491	229	chance	add	media	\N	\N	\N
1932	name	spend	182	530	610	cup	hair	media	\N	\N	\N
1933	practice	social	636	938	479	break	ten	media	\N	\N	\N
1934	pressure	sound	105	87	411	assume	area	media	\N	\N	\N
1935	anything	store	772	273	196	degree	drop	media	\N	\N	\N
1937	trade	everyone	995	610	385	your	amount	media	\N	\N	\N
1938	probably	herself	605	13	244	very	read	media	\N	\N	\N
1940	very	report	88	167	404	despite	too	media	\N	\N	\N
1941	around	continue	803	53	218	leader	pick	media	\N	\N	\N
1942	whether	suffer	873	185	179	to	bag	media	\N	\N	\N
1943	PM	will	578	119	240	occur	condition	media	\N	\N	\N
1944	design	card	429	296	161	rule	simply	media	\N	\N	\N
1946	property	cut	562	195	126	I	performance	media	\N	\N	\N
1947	effort	safe	673	506	207	hope	simply	media	\N	\N	\N
1948	hit	human	640	717	815	decision	person	media	\N	\N	\N
1949	clear	take	735	851	619	appear	word	media	\N	\N	\N
1950	follow	debate	181	339	674	shoulder	treat	media	\N	\N	\N
1951	six	final	197	979	665	environment	miss	media	\N	\N	\N
1952	perhaps	include	114	335	597	movie	film	media	\N	\N	\N
1953	many	whose	183	3	772	especially	trade	media	\N	\N	\N
1954	nearly	government	392	553	396	issue	keep	media	\N	\N	\N
1955	artist	partner	66	325	345	interesting	democratic	media	\N	\N	\N
1956	paper	effect	266	903	275	course	message	media	\N	\N	\N
1957	although	ever	164	960	473	subject	seek	media	\N	\N	\N
1958	federal	civil	393	481	96	past	trouble	media	\N	\N	\N
1959	current	knowledge	728	125	572	few	marriage	media	\N	\N	\N
1961	rule	soon	833	302	761	begin	evidence	media	\N	\N	\N
1962	race	image	205	366	666	trade	price	media	\N	\N	\N
1963	assume	politics	687	876	863	short	boy	media	\N	\N	\N
1964	may	dog	553	895	659	certainly	effect	media	\N	\N	\N
1965	power	risk	843	816	442	student	much	media	\N	\N	\N
1966	must	sort	269	775	548	truth	night	media	\N	\N	\N
1967	address	step	136	681	911	economic	market	media	\N	\N	\N
1968	spend	front	807	346	54	TV	close	media	\N	\N	\N
1969	phone	from	967	257	882	discussion	fund	media	\N	\N	\N
1971	cup	determine	619	252	38	interview	factor	media	\N	\N	\N
1972	go	small	880	873	96	environmental	without	media	\N	\N	\N
1973	deep	wind	686	185	197	easy	doctor	media	\N	\N	\N
1974	fire	action	923	832	841	a	often	media	\N	\N	\N
1975	fact	after	518	627	874	energy	choice	media	\N	\N	\N
1976	market	discover	696	419	506	especially	manage	media	\N	\N	\N
1978	particular	sort	678	111	836	new	mother	media	\N	\N	\N
1979	fire	system	437	181	33	approach	song	media	\N	\N	\N
1980	message	everybody	313	363	32	everything	meet	media	\N	\N	\N
1936	need	upon	588	686	964	compare	hundred	media	\N	[{"barcode": "popular", "variant_id": "240", "price_override": "863", "is_active_variant": "738"}]	\N
1970	tell	buy	990	680	903	scientist	environmental	media	\N	[{"barcode": "drive", "variant_id": "907", "price_override": "136", "is_active_variant": "886"}]	\N
1977	the	mission	555	901	246	sport	might	media	\N	\N	[{"price": "2", "ends_at": "side", "price_id": "303", "starts_at": "line"}]
1960	high	foot	264	966	317	word	sometimes	media	\N	\N	[{"price": "449", "ends_at": "impact", "price_id": "191", "starts_at": "accept"}]
1981	phone	time	350	396	449	part	here	media	\N	\N	\N
1982	name	if	485	364	742	development	score	media	\N	\N	\N
1984	analysis	outside	266	583	50	finish	season	media	\N	\N	\N
1985	would	full	394	158	487	everyone	agency	media	\N	\N	\N
1986	write	too	400	848	557	director	total	media	\N	\N	\N
1987	third	service	183	232	527	pull	responsibility	media	\N	\N	\N
1988	prove	accept	856	630	867	agreement	benefit	media	\N	\N	\N
1989	debate	factor	422	465	768	attention	level	media	\N	\N	\N
1990	bring	sign	203	48	581	around	deal	media	\N	\N	\N
1991	tonight	population	76	968	723	fall	system	media	\N	\N	\N
1993	defense	type	705	872	841	though	near	media	\N	\N	\N
1994	current	north	348	214	105	truth	great	media	\N	\N	\N
1995	box	college	916	325	34	short	example	media	\N	\N	\N
1996	manage	stock	207	359	972	recognize	share	media	\N	\N	\N
1998	difference	sit	607	931	314	who	reality	media	\N	\N	\N
1999	argue	better	301	667	518	bit	question	media	\N	\N	\N
2001	safe	evening	674	842	707	bed	\N	software	\N	\N	\N
2002	office	college	584	1	447	want	\N	software	\N	\N	\N
2003	forward	while	813	228	984	body	\N	software	\N	\N	\N
2004	agent	this	99	8	447	my	\N	software	\N	\N	\N
2005	when	forward	563	295	529	perform	\N	software	\N	\N	\N
2006	national	place	971	757	858	once	\N	software	\N	\N	\N
2007	enjoy	war	826	635	587	something	\N	software	\N	\N	\N
2008	explain	lay	197	823	821	during	\N	software	\N	\N	\N
2009	financial	risk	325	118	971	mission	\N	software	\N	\N	\N
2010	good	about	576	122	496	particular	\N	software	\N	\N	\N
2011	appear	also	808	569	394	chair	\N	software	\N	\N	\N
2012	audience	near	574	917	57	market	\N	software	\N	\N	\N
2013	security	recent	476	917	274	citizen	\N	software	\N	\N	\N
2014	west	will	593	336	741	half	\N	software	\N	\N	\N
2015	mention	author	129	842	319	truth	\N	software	\N	\N	\N
2016	drug	apply	49	130	296	happen	\N	software	\N	\N	\N
2017	help	represent	807	608	126	risk	\N	software	\N	\N	\N
2018	relationship	short	858	439	441	science	\N	software	\N	\N	\N
2019	idea	city	434	365	574	play	\N	software	\N	\N	\N
2020	official	yes	718	590	505	focus	\N	software	\N	\N	\N
2021	win	involve	735	665	722	probably	\N	software	\N	\N	\N
2022	watch	likely	950	301	770	boy	\N	software	\N	\N	\N
2023	training	bank	479	248	214	present	\N	software	\N	\N	\N
2026	second	say	460	987	684	keep	\N	software	\N	\N	\N
2027	expert	appear	214	297	905	sense	\N	software	\N	\N	\N
2028	election	beautiful	149	88	937	this	\N	software	\N	\N	\N
2029	stop	international	544	93	676	specific	\N	software	\N	\N	\N
2030	program	sense	175	418	173	local	\N	software	\N	\N	\N
2031	pass	necessary	779	432	829	forward	\N	software	\N	\N	\N
2032	professional	nothing	348	793	676	nor	\N	software	\N	\N	\N
2033	end	former	862	571	238	near	\N	software	\N	\N	\N
2034	break	doctor	337	763	782	stop	\N	software	\N	\N	\N
2035	memory	hand	793	772	768	expect	\N	software	\N	\N	\N
2036	run	however	175	648	300	check	\N	software	\N	\N	\N
2037	board	tree	115	232	640	suddenly	\N	software	\N	\N	\N
2039	speech	small	179	703	811	pull	\N	software	\N	\N	\N
2040	movement	bill	822	551	451	they	\N	software	\N	\N	\N
2041	media	show	954	645	151	notice	\N	software	\N	\N	\N
2042	degree	require	411	876	231	fly	\N	software	\N	\N	\N
2043	exactly	billion	855	735	927	continue	\N	software	\N	\N	\N
2045	scientist	part	25	301	649	phone	\N	software	\N	\N	\N
2046	exactly	writer	294	57	95	short	\N	software	\N	\N	\N
2047	behind	address	365	118	685	program	\N	software	\N	\N	\N
2048	recently	very	282	980	728	attention	\N	software	\N	\N	\N
2049	red	thousand	57	566	280	box	\N	software	\N	\N	\N
2050	road	speech	978	358	252	act	\N	software	\N	\N	\N
2051	thing	message	1000	804	502	strong	\N	software	\N	\N	\N
2052	thousand	treatment	779	773	70	contain	\N	software	\N	\N	\N
2053	region	strong	419	390	482	project	\N	software	\N	\N	\N
2054	page	today	848	629	423	very	\N	software	\N	\N	\N
2055	stay	center	445	227	468	number	\N	software	\N	\N	\N
2056	type	customer	754	520	405	spend	\N	software	\N	\N	\N
2057	increase	tend	194	206	909	leader	\N	software	\N	\N	\N
2058	manage	add	39	642	147	wall	\N	software	\N	\N	\N
2059	page	billion	360	361	870	figure	\N	software	\N	\N	\N
2060	popular	later	260	875	990	sound	\N	software	\N	\N	\N
2061	yeah	service	328	318	19	rise	\N	software	\N	\N	\N
2062	crime	subject	446	466	272	high	\N	software	\N	\N	\N
2063	difficult	industry	801	736	723	always	\N	software	\N	\N	\N
2065	court	drive	956	436	716	plan	\N	software	\N	\N	\N
2066	particular	science	237	848	612	establish	\N	software	\N	\N	\N
2068	close	organization	242	559	728	ago	\N	software	\N	\N	\N
2069	exactly	international	228	685	123	finish	\N	software	\N	\N	\N
2070	computer	decade	871	97	198	determine	\N	software	\N	\N	\N
2071	hotel	right	44	424	903	scene	\N	software	\N	\N	\N
2072	east	letter	148	740	691	significant	\N	software	\N	\N	\N
1997	rather	phone	715	44	662	whom	child	media	\N	[{"barcode": "chance", "variant_id": "924", "price_override": "652", "is_active_variant": "790"}]	\N
2025	ball	condition	753	15	784	field	\N	software	\N	[{"barcode": "little", "variant_id": "991", "price_override": "657", "is_active_variant": "83"}]	\N
1983	exactly	next	448	63	693	other	magazine	media	\N	[{"barcode": "theory", "variant_id": "218", "price_override": "866", "is_active_variant": "636"}]	\N
2044	myself	peace	125	515	767	material	\N	software	\N	\N	[{"price": "278", "ends_at": "best", "price_id": "802", "starts_at": "interest"}]
2074	southern	court	876	63	969	term	\N	software	\N	\N	\N
2075	serve	age	729	780	103	security	\N	software	\N	\N	\N
2076	world	indeed	193	362	65	around	\N	software	\N	\N	\N
2077	actually	benefit	586	612	223	rise	\N	software	\N	\N	\N
2078	control	result	998	401	299	Congress	\N	software	\N	\N	\N
2079	section	by	609	300	317	together	\N	software	\N	\N	\N
2080	officer	everyone	597	903	372	decide	\N	software	\N	\N	\N
2082	part	rule	146	369	953	watch	\N	software	\N	\N	\N
2083	success	serve	361	612	540	usually	\N	software	\N	\N	\N
2084	Mrs	citizen	924	54	537	protect	\N	software	\N	\N	\N
2085	price	open	93	880	445	onto	\N	software	\N	\N	\N
2086	already	choose	847	539	366	perhaps	\N	software	\N	\N	\N
2087	technology	body	1000	313	532	require	\N	software	\N	\N	\N
2088	job	must	396	530	559	return	\N	software	\N	\N	\N
2089	yet	plan	171	153	550	affect	\N	software	\N	\N	\N
2090	themselves	job	926	677	626	wall	\N	software	\N	\N	\N
2091	official	take	674	228	716	magazine	\N	software	\N	\N	\N
2092	leader	act	446	433	945	single	\N	software	\N	\N	\N
2093	old	million	516	644	892	certain	\N	software	\N	\N	\N
2094	enter	relate	952	317	454	player	\N	software	\N	\N	\N
2095	sing	order	58	466	574	better	\N	software	\N	\N	\N
2096	wait	allow	1	592	965	test	\N	software	\N	\N	\N
2097	thought	church	306	632	514	challenge	\N	software	\N	\N	\N
2099	former	PM	372	459	376	position	\N	software	\N	\N	\N
2100	product	keep	154	285	837	step	\N	software	\N	\N	\N
1906	exist	benefit	614	843	932	instead	democratic	media	[{"url": "responsibility", "alt_text": "every", "image_id": "330", "sort_order": "867"}]	\N	\N
2081	list	task	226	123	754	picture	\N	software	[{"url": "exist", "alt_text": "something", "image_id": "518", "sort_order": "234"}]	\N	\N
2067	today	as	834	634	395	movie	\N	software	[{"url": "question", "alt_text": "third", "image_id": "652", "sort_order": "517"}]	\N	\N
298	deal	data	69	648	585	computer	\N	digitalproduct	[{"url": "until", "alt_text": "character", "image_id": "798", "sort_order": "609"}]	\N	\N
210	end	discussion	596	936	956	natural	\N	digitalproduct	[{"url": "father", "alt_text": "tend", "image_id": "793", "sort_order": "271"}]	\N	\N
2064	media	southern	722	764	13	front	\N	software	[{"url": "put", "alt_text": "whole", "image_id": "949", "sort_order": "541"}]	\N	\N
1945	follow	full	862	594	137	ahead	control	media	[{"url": "goal", "alt_text": "make", "image_id": "768", "sort_order": "815"}]	\N	\N
1992	program	test	6	913	145	movie	source	media	[{"url": "so", "alt_text": "vote", "image_id": "175", "sort_order": "973"}]	\N	\N
2073	sell	today	478	649	851	scene	\N	software	[{"url": "he", "alt_text": "set", "image_id": "566", "sort_order": "363"}]	\N	\N
2038	activity	live	437	605	5	move	\N	software	[{"url": "beat", "alt_text": "large", "image_id": "67", "sort_order": "334"}]	\N	\N
293	agree	window	152	257	704	such	\N	digitalproduct	[{"url": "cold", "alt_text": "night", "image_id": "688", "sort_order": "422"}]	\N	\N
299	season	same	876	75	814	campaign	\N	digitalproduct	[{"url": "plant", "alt_text": "evidence", "image_id": "377", "sort_order": "550"}]	\N	\N
236	doctor	agreement	579	389	261	world	\N	digitalproduct	[{"url": "week", "alt_text": "writer", "image_id": "476", "sort_order": "99"}]	\N	\N
2000	fund	what	768	173	811	avoid	only	media	[{"url": "star", "alt_text": "scene", "image_id": "118", "sort_order": "995"}]	\N	\N
2098	look	particularly	659	75	116	business	\N	software	\N	[{"barcode": "provide", "variant_id": "427", "price_override": "242", "is_active_variant": "850"}]	\N
295	language	gun	190	785	421	class	\N	digitalproduct	[{"url": "apply", "alt_text": "military", "image_id": "941", "sort_order": "955"}]	[{"barcode": "consumer", "variant_id": "178", "price_override": "522", "is_active_variant": "122"}]	\N
267	design	ok	97	436	862	respond	\N	digitalproduct	\N	\N	[{"price": "978", "ends_at": "training", "price_id": "620", "starts_at": "kid"}]
2024	whose	try	136	64	972	threat	\N	software	[{"url": "feeling", "alt_text": "office", "image_id": "289", "sort_order": "482"}, {"url": "up", "alt_text": "success", "image_id": "371", "sort_order": "257"}]	\N	[{"price": "998", "ends_at": "garden", "price_id": "200", "starts_at": "despite"}]
294	base	especially	577	137	929	partner	\N	digitalproduct	\N	\N	[{"price": "208", "ends_at": "design", "price_id": "261", "starts_at": "about"}]
1939	American	six	395	270	629	take	gas	media	\N	\N	[{"price": "664", "ends_at": "sell", "price_id": "235", "starts_at": "hospital"}]
228	technology	drug	339	509	608	girl	\N	digitalproduct	\N	\N	[{"price": "174", "ends_at": "if", "price_id": "288", "starts_at": "water"}]
276	hand	care	589	67	45	hard	\N	digitalproduct	\N	\N	[{"price": "865", "ends_at": "turn", "price_id": "569", "starts_at": "one"}]
273	city	window	919	852	299	attorney	\N	digitalproduct	\N	\N	[{"price": "207", "ends_at": "remain", "price_id": "449", "starts_at": "assume"}]
\.


--
-- Data for Name: relation_30; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_30 (customer_id, address_id, kind, line1, city, state, country, postal_code) FROM stdin;
203	101	general	note	Michaelside	what	gas	just
376	758	him	before	East Michael	economic	reflect	fall
216	906	thought	prove	West Jonathanberg	dinner	cold	particular
164	325	above	let	South Kenneth	begin	manage	laugh
328	812	star	Mr	South Nicholasland	big	total	clearly
267	206	new	expert	West Cynthiamouth	stand	local	us
170	357	laugh	well	Benjaminland	bar	responsibility	available
308	749	money	lead	Deckerport	away	majority	room
372	164	of	property	South Danielbury	common	agreement	event
113	857	almost	sing	Hunterchester	back	mother	national
127	712	if	report	East Stephaniefurt	way	into	hand
287	403	up	true	Johnmouth	now	learn	base
386	383	again	top	Bowmanton	yes	president	dream
356	272	production	floor	Martinhaven	upon	image	few
300	991	successful	will	Port Jeffreystad	nation	question	board
382	120	prove	ten	East Willie	sure	nothing	look
382	629	project	cultural	Andersonberg	president	improve	voice
285	753	goal	network	Seanside	skill	thus	college
196	152	amount	test	Lake Richard	deal	still	war
342	836	yeah	magazine	North Donald	woman	property	memory
290	965	dinner	education	Hernandezview	hard	nothing	free
171	539	read	glass	West Jasmineborough	town	official	so
335	581	anyone	beat	Lake Stephenstad	and	check	person
326	230	voice	official	Davidstad	maintain	unit	recent
139	212	family	together	East Tiffany	not	pick	those
329	696	choice	product	New Gregory	through	against	picture
339	670	notice	relate	Mollyfort	second	century	open
152	323	him	research	Gonzalesbury	often	success	recently
288	378	improve	everyone	Lambshire	management	vote	nearly
359	5	bed	let	Jonathanmouth	medical	manager	between
207	544	on	investment	West Juan	movie	realize	yet
396	774	relate	face	Willistown	customer	clearly	large
110	291	whole	three	New Brandonchester	reveal	should	six
382	149	those	green	New Charlesfort	loss	wife	point
266	698	well	above	Stanleyton	different	show	week
193	120	region	character	New Sabrina	care	prove	many
244	589	into	arm	North Kimberly	play	who	very
195	637	weight	executive	South Williamtown	across	black	pick
246	782	piece	government	Lake Jacob	center	century	guess
254	836	however	either	Lake Melissabury	move	list	then
293	230	dark	small	North Jennifer	together	too	life
385	861	the	threat	Newtonburgh	effect	fill	it
229	226	voice	figure	Rivasmouth	send	spend	region
390	422	one	tend	West Daniel	fly	appear	us
113	800	east	person	New Christophershire	race	think	shake
181	260	song	back	Porterfurt	subject	part	become
125	400	cause	point	Graybury	whole	power	happen
207	938	even	wonder	Sanchezberg	there	in	use
173	948	director	small	Pachecoview	meet	program	any
377	772	two	physical	North Lauren	onto	represent	charge
136	725	exist	look	Parksport	thousand	under	identify
194	396	remember	onto	Ruizchester	management	let	middle
237	367	western	bank	North Joseph	strategy	city	situation
198	917	defense	window	Davenportborough	despite	look	red
255	359	contain	live	Diazfurt	upon	truth	member
129	290	kind	usually	Hallton	direction	option	house
260	433	machine	degree	Lake Amanda	its	describe	decade
348	806	campaign	voice	Roseside	wonder	beat	ground
147	444	but	add	Port Joshua	late	perform	them
136	148	four	finally	Lake Michael	article	painting	tree
297	810	usually	per	Davisshire	despite	stop	too
392	611	school	unit	New Tracyview	process	could	level
297	410	product	strong	Stoneland	red	money	task
272	531	defense	boy	West Adrian	you	phone	serve
364	33	somebody	cause	East Andrew	focus	operation	rich
287	539	economic	table	North Cassandrahaven	itself	left	director
255	79	score	just	Williamburgh	memory	avoid	baby
308	15	be	ever	Brandonberg	address	face	smile
149	807	step	medical	Hodgefurt	list	stock	into
361	482	bad	yeah	Port Julie	partner	born	whom
116	177	condition	outside	West Warrenborough	job	condition	final
370	744	gas	oil	Port Dianemouth	pattern	practice	race
325	864	maybe	city	South Jeffrey	spring	oil	go
217	794	sit	bring	West Suzannebury	standard	since	itself
351	862	stand	choice	New Debbie	head	prepare	turn
244	26	check	similar	New Georgeside	read	system	TV
218	6	doctor	their	Port Shelley	Republican	common	computer
129	226	college	enough	West David	final	participant	appear
364	323	toward	natural	Lake Jasonchester	statement	color	fund
365	99	protect	create	Morrisside	store	memory	lay
268	296	would	worry	Harperberg	majority	stand	think
336	977	strategy	floor	Levyberg	provide	art	piece
186	80	clear	ability	North Williamtown	life	international	response
106	889	writer	feeling	Sheliamouth	hundred	poor	but
363	482	lawyer	bed	Lake Julie	offer	strong	people
365	180	medical	it	West Meganside	ability	stand	nearly
191	319	school	teach	Lake Stephanieville	produce	stock	perform
222	289	civil	catch	East Jenniferland	conference	hear	tonight
117	18	good	value	Staffordfort	my	outside	cover
177	568	decision	low	Hernandezshire	director	two	television
309	142	effort	lot	Adamstown	population	then	blue
250	744	of	very	New Hector	reason	ever	especially
175	596	kid	lawyer	Lake Nicoleshire	nation	sure	guy
133	780	politics	everybody	Port Kathleen	on	there	reflect
335	952	arm	interview	East Jon	particular	head	other
372	102	city	listen	Benjaminmouth	finish	work	establish
254	366	hospital	care	Lake Aaronfurt	land	send	security
116	747	large	wrong	Port Michele	talk	ever	build
128	444	particular	however	South Manuel	rich	possible	he
398	38	sound	card	Mckenziemouth	could	Democrat	measure
\.


--
-- Data for Name: relation_31; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_31 (customer_id, payment_method_id, brand, last4, exp_month, exp_year, is_default) FROM stdin;
177	348	recently	thing	8	980	tend
259	195	important	test	398	242	cost
351	490	raise	mind	445	698	quality
385	405	what	only	452	467	between
124	992	available	again	88	810	time
352	493	toward	west	299	498	author
234	159	coach	enter	690	96	front
253	999	measure	drive	696	670	seek
172	408	media	improve	781	183	officer
391	795	ability	father	963	188	act
236	877	good	debate	956	973	help
120	535	meeting	receive	942	18	effort
317	809	stop	attack	790	446	laugh
191	187	door	dream	533	833	hit
247	841	difference	chance	470	51	throughout
311	880	experience	dark	377	337	figure
257	146	election	eye	239	648	realize
206	496	with	answer	170	504	early
345	208	police	subject	584	268	surface
189	266	sea	film	465	48	everything
354	336	describe	bag	77	494	poor
128	496	main	maybe	50	374	will
139	500	song	interview	371	19	pressure
377	940	gun	dinner	202	708	risk
279	74	answer	second	931	79	until
360	872	nothing	marriage	417	421	peace
361	271	region	key	702	695	responsibility
165	683	civil	many	277	127	work
398	231	best	large	912	756	once
243	486	society	unit	808	142	family
292	575	production	week	896	528	everyone
178	362	street	so	245	290	office
248	774	require	back	778	166	end
126	377	effect	development	778	821	add
127	222	find	assume	406	49	share
349	266	shake	among	3	342	key
295	770	yeah	white	291	800	focus
395	297	ask	house	209	306	might
383	970	three	fight	710	888	happen
152	924	hear	Republican	291	905	magazine
332	749	process	beat	455	975	end
311	794	perhaps	member	218	210	your
354	392	group	feeling	39	818	real
202	571	situation	study	656	115	approach
392	397	production	eat	355	787	keep
316	688	trip	save	69	754	woman
218	235	develop	item	649	538	perform
185	745	color	sport	383	801	impact
112	718	none	trade	328	999	thing
370	850	government	catch	559	305	pressure
230	777	mean	building	285	263	dinner
133	672	bit	water	386	610	whom
190	399	development	house	791	36	author
186	886	happy	when	626	996	at
343	903	movie	on	40	540	interest
321	262	enter	recently	899	61	it
395	697	however	professional	223	348	hotel
133	286	go	there	985	771	purpose
396	306	read	stay	99	945	sure
179	966	laugh	argue	533	699	soldier
297	809	hit	brother	169	959	during
166	455	bill	sense	267	17	detail
118	573	car	almost	33	344	data
284	327	check	population	55	193	staff
114	486	organization	attack	235	489	left
187	675	win	describe	909	669	offer
243	793	parent	that	358	731	thought
122	174	here	very	734	603	baby
178	691	live	seven	908	359	car
256	878	effort	our	339	71	Democrat
309	52	day	positive	125	137	law
261	210	skin	myself	571	337	a
272	478	article	summer	388	319	while
206	800	sense	behavior	791	468	instead
275	382	child	main	488	561	wife
140	642	continue	ahead	490	687	name
128	979	itself	season	858	413	away
242	40	focus	cup	572	563	business
382	664	tonight	receive	134	335	age
150	852	follow	near	423	3	eight
379	126	foot	result	63	978	difference
380	256	attention	standard	210	699	available
227	758	let	possible	658	392	somebody
350	754	mean	understand	540	756	long
107	668	sell	people	972	700	why
222	139	hard	fill	48	891	determine
308	876	tax	large	935	733	light
316	608	worry	specific	911	396	someone
365	356	ready	choice	997	461	understand
389	39	society	treatment	829	42	everything
263	86	street	say	890	763	success
236	155	subject	democratic	56	983	sister
214	809	who	worry	101	11	arrive
110	790	soon	full	914	325	performance
325	562	energy	dog	538	936	sort
321	203	garden	culture	475	463	material
125	409	back	your	14	56	national
354	210	cup	step	296	707	young
326	883	so	pattern	280	327	owner
330	599	cup	life	871	577	be
\.


--
-- Data for Name: relation_32; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_32 (customer_id, updated_at) FROM stdin;
378	national
238	room
335	language
176	service
303	believe
113	style
282	alone
198	national
121	approach
275	join
190	actually
314	citizen
400	top
206	rule
367	modern
395	street
235	itself
123	difference
197	summer
261	figure
163	teacher
155	second
322	popular
146	spend
234	big
290	fight
360	listen
191	compare
192	local
361	thing
377	clear
317	appear
186	together
397	tonight
258	country
345	receive
332	truth
106	fine
180	audience
139	hundred
343	heavy
185	difference
299	probably
306	community
291	page
177	new
300	term
321	probably
359	not
239	letter
319	itself
308	animal
388	easy
302	ability
278	play
279	want
134	eye
233	home
170	hit
144	year
136	month
273	fly
375	must
229	know
221	worry
307	send
160	really
277	job
268	deep
135	care
223	win
200	care
362	grow
245	get
341	investment
247	shake
212	yes
382	find
166	prepare
283	hospital
368	hot
358	to
143	lot
141	material
333	message
254	also
137	relationship
353	bill
385	civil
171	involve
311	sister
248	buy
349	since
110	security
344	any
257	believe
342	world
120	federal
380	education
205	factor
\.


--
-- Data for Name: relation_33; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_33 (customer_id, wishlist_id, wishlist_name) FROM stdin;
202	658	for
145	327	hospital
263	947	reality
391	729	sort
321	567	sure
239	99	environment
256	35	goal
112	929	fund
358	53	each
191	954	media
227	363	upon
294	342	close
129	334	fire
205	660	skill
134	38	he
167	520	account
229	414	garden
256	818	energy
117	669	green
164	817	these
251	678	avoid
379	393	and
121	886	none
253	149	chance
354	393	fear
315	877	goal
395	463	institution
395	756	thing
180	487	detail
112	943	fear
285	127	street
227	225	bad
263	63	scientist
145	377	phone
287	752	minute
317	603	ago
149	989	drop
229	777	and
114	803	return
140	381	population
197	739	bank
191	922	child
343	728	computer
290	216	product
155	932	likely
314	475	else
376	879	little
309	128	small
292	902	admit
290	55	purpose
249	736	ask
124	528	another
255	680	chair
298	791	significant
107	227	boy
108	80	business
124	382	take
125	458	bit
181	929	wrong
116	621	chair
254	822	guess
127	12	design
179	673	ten
122	38	investment
231	413	account
229	870	attorney
132	434	this
375	60	clearly
128	512	garden
335	941	natural
120	673	probably
150	714	office
287	982	successful
193	600	young
247	131	article
365	960	Congress
242	962	charge
104	246	much
226	255	marriage
375	632	religious
355	677	society
309	904	southern
390	453	tell
298	517	offer
307	127	design
257	280	rich
117	642	sure
115	647	so
356	947	forget
328	129	call
344	275	feeling
321	935	rock
208	121	cut
224	795	view
372	533	plant
270	98	majority
134	610	particularly
365	595	resource
333	65	cup
316	894	according
\.


--
-- Data for Name: relation_34; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_34 (customer_id, review_id, rating, title, body, created_at) FROM stdin;
353	675	419	around	special	paper
355	171	859	around	away	their
296	872	668	participant	something	young
349	256	177	former	size	billion
273	979	230	audience	finish	hot
140	929	685	director	vote	beautiful
145	936	380	leader	personal	when
206	591	349	forget	push	how
103	49	379	woman	government	trade
323	322	783	reveal	finish	represent
144	25	508	pattern	though	important
386	532	79	we	always	wife
234	883	960	pattern	month	decade
274	888	55	rock	of	yourself
126	952	93	senior	son	begin
391	714	804	than	class	world
335	248	160	rich	admit	article
331	529	750	total	believe	player
386	408	503	lawyer	network	second
292	511	809	ready	century	group
370	551	833	factor	particularly	serious
113	204	284	become	view	generation
105	452	573	born	interest	anyone
245	7	220	anything	once	administration
385	624	86	put	sound	kid
217	188	618	guess	structure	popular
151	619	507	into	ability	act
400	660	235	individual	whom	property
117	507	371	agent	voice	above
127	244	23	produce	position	heart
165	773	180	way	to	into
289	477	191	fill	wide	ability
193	235	953	into	war	data
264	49	413	phone	test	deep
165	42	720	season	want	standard
309	328	136	add	street	employee
199	723	205	probably	career	thought
273	582	400	actually	me	ask
239	772	152	even	visit	call
127	699	977	avoid	course	election
334	906	742	Mr	class	government
148	383	554	different	voice	cultural
186	255	734	nice	couple	price
221	186	814	letter	director	response
381	270	564	fill	out	sound
265	523	959	bed	wide	fish
365	990	72	various	great	science
167	508	149	group	eight	senior
325	241	221	tough	task	tell
381	236	615	member	yes	buy
369	128	725	huge	compare	if
366	740	617	perform	because	over
269	533	278	feeling	put	various
274	449	358	cost	his	court
339	938	411	news	always	too
223	471	761	seek	skin	make
161	269	446	new	health	beyond
365	36	686	before	keep	worker
385	308	954	song	knowledge	approach
316	755	50	rather	detail	everyone
225	529	685	foreign	network	no
301	662	956	into	occur	last
336	214	926	last	risk	off
254	370	499	whom	system	religious
196	798	99	add	become	project
187	17	208	interview	station	family
298	834	359	money	situation	cost
108	128	218	draw	purpose	child
322	870	626	understand	why	land
294	815	98	future	population	agree
136	255	239	condition	serve	fear
202	356	30	positive	dog	lot
392	42	177	response	agree	reduce
244	484	806	draw	matter	amount
298	550	300	couple	professional	fast
219	259	677	ready	garden	especially
139	22	611	building	just	success
317	897	785	forget	wonder	hour
286	946	525	story	nice	consumer
272	424	949	participant	player	available
377	587	191	success	bag	two
150	460	339	wind	fly	surface
244	780	971	resource	yet	behavior
256	613	789	institution	learn	whom
195	629	393	can	out	age
227	359	97	ago	seven	economy
311	1000	462	do	structure	mouth
116	443	676	detail	focus	democratic
297	701	62	smile	election	write
199	405	148	deal	election	chance
319	366	861	stock	buy	medical
230	759	374	reflect	month	experience
369	887	314	resource	arm	parent
310	951	34	single	chair	picture
373	449	197	himself	spend	defense
353	881	867	good	brother	him
204	496	56	first	recently	clear
120	57	379	there	see	create
188	873	953	radio	heart	voice
345	433	290	address	stage	ahead
\.


--
-- Data for Name: relation_35; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_35 (custorder_id, placed_at, status) FROM stdin;
1	use	fish
2	than	same
3	meeting	ago
4	they	majority
5	I	probably
6	strong	truth
7	question	environmental
8	we	movie
9	drug	population
10	than	they
11	situation	majority
12	amount	campaign
13	imagine	about
14	room	argue
15	management	certainly
16	across	less
17	fill	reduce
18	black	provide
19	care	administration
20	middle	early
21	wait	career
22	office	she
23	magazine	information
24	itself	he
25	body	apply
26	which	floor
27	world	finally
28	almost	threat
29	late	stand
30	treatment	any
31	analysis	think
32	democratic	real
33	visit	long
34	over	lead
35	collection	partner
36	allow	clear
37	she	day
38	success	station
39	role	develop
40	memory	number
41	program	know
42	offer	player
43	almost	my
44	set	open
45	material	project
46	your	write
47	risk	government
48	ball	season
49	day	employee
50	stock	president
51	agency	international
52	simple	focus
53	north	possible
54	nothing	its
55	structure	house
56	affect	it
57	have	day
58	enough	direction
59	talk	though
60	together	dream
61	where	seek
62	create	his
63	medical	outside
64	politics	million
65	raise	today
66	whether	assume
67	buy	nearly
68	chair	read
69	fill	article
70	draw	better
71	final	share
72	their	test
73	hit	where
74	your	provide
75	fact	music
76	girl	more
77	kind	line
78	certain	anything
79	notice	family
80	main	economy
81	door	send
82	thank	board
83	think	nearly
84	girl	out
85	operation	view
86	half	feeling
87	positive	financial
88	how	improve
89	other	fire
90	exactly	state
91	nothing	manager
92	get	its
93	them	kind
94	lay	yes
95	official	indicate
96	form	keep
97	determine	which
98	score	stop
99	human	beyond
100	law	cell
\.


--
-- Data for Name: relation_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_36 (custorder_id, shipment_id, carrier, tracking_no, shipped_at, delivered_at) FROM stdin;
16	927	common	listen	early	bit
37	388	industry	benefit	arrive	trial
19	173	part	sea	nor	carry
40	746	world	bank	oil	loss
52	162	evening	good	beat	until
17	293	himself	toward	company	walk
42	540	goal	nor	idea	red
88	794	management	area	citizen	present
51	769	ask	purpose	situation	federal
80	639	TV	with	pattern	nation
62	282	minute	car	deal	over
68	291	give	carry	try	election
83	891	building	anything	stop	allow
60	769	seem	long	city	travel
100	317	blue	fund	machine	attention
3	5	which	care	any	explain
46	279	spring	turn	energy	different
21	410	entire	late	minute	movement
53	418	him	level	art	hit
61	497	dream	discuss	instead	fly
66	52	blood	office	great	interest
69	807	tend	direction	home	president
32	246	help	different	science	language
57	243	large	shoulder	imagine	world
8	998	career	right	woman	plan
16	479	clearly	by	experience	suffer
75	839	positive	own	morning	final
54	445	member	pressure	sign	week
71	664	production	challenge	such	individual
85	368	car	my	dog	decide
35	685	bit	big	skin	all
8	929	politics	mother	Democrat	religious
46	550	teach	entire	industry	leg
55	342	at	own	together	letter
49	658	commercial	girl	perhaps	old
100	407	left	we	bit	pull
2	590	interesting	walk	suddenly	across
64	50	involve	career	common	approach
18	658	you	seat	respond	exactly
75	350	card	realize	seek	bed
40	30	water	Congress	attorney	would
91	971	him	raise	him	industry
51	819	project	rather	daughter	north
11	424	finally	central	all	debate
84	807	heart	notice	year	purpose
67	944	consumer	free	other	occur
50	682	perform	then	bag	firm
96	71	officer	gas	kitchen	town
94	198	someone	election	high	recently
43	78	their	out	standard	institution
11	51	threat	blue	reason	try
71	535	like	leg	point	thought
92	47	town	than	eat	station
96	302	eat	fast	party	religious
42	67	medical	who	agreement	church
88	886	fall	couple	answer	another
92	272	agency	interview	main	data
11	124	fly	family	production	somebody
82	931	east	attorney	article	right
2	192	camera	whole	stand	bad
35	562	recent	nearly	question	some
78	853	most	meet	machine	number
6	534	my	catch	offer	figure
67	61	reduce	bit	recent	part
72	342	dark	bank	specific	present
21	578	bar	green	miss	blue
27	24	house	try	hold	market
33	610	write	able	special	here
53	426	check	public	organization	put
93	416	read	necessary	feeling	painting
54	214	goal	degree	receive	television
79	170	relate	describe	sing	need
64	183	picture	main	your	same
12	202	science	minute	claim	about
73	231	candidate	laugh	moment	figure
65	19	collection	staff	return	skill
84	573	again	stuff	reveal	five
27	234	case	administration	which	floor
57	984	scene	west	spend	kind
86	599	role	lead	they	while
66	796	plant	charge	Mr	face
21	946	save	matter	serve	individual
61	239	he	season	total	house
72	513	save	before	computer	reach
59	83	run	have	low	on
96	179	you	war	too	the
47	984	together	quickly	produce	may
43	473	result	stage	good	service
25	75	state	high	organization	those
75	476	door	than	former	know
14	42	I	turn	practice	bar
87	925	big	practice	hear	Democrat
77	47	doctor	international	smile	offer
100	587	choose	attention	me	less
48	120	brother	think	meet	friend
38	137	recognize	pull	despite	own
43	382	worry	give	force	source
32	170	hot	strategy	apply	another
15	93	country	figure	dark	friend
44	204	decide	recent	learn	not
\.


--
-- Data for Name: relation_37; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_37 (promotion_id, promo_name, starts_at, ends_at, discount_type, discount_value) FROM stdin;
1	she	case	imagine	be	know
2	stop	west	yourself	possible	face
3	old	top	whom	article	song
4	institution	oil	let	still	mission
5	discover	you	a	voice	first
6	quite	include	share	event	ago
7	president	Democrat	public	executive	and
8	type	onto	wind	war	drive
9	indeed	free	property	writer	within
10	manage	true	market	point	too
11	sell	that	eat	when	share
12	treat	help	serve	source	president
13	care	contain	positive	ground	free
14	conference	responsibility	whatever	vote	list
15	adult	condition	space	put	hot
16	near	perform	tend	almost	wrong
17	or	soon	administration	turn	wrong
18	carry	offer	discover	three	political
19	avoid	in	appear	recent	parent
20	wall	a	size	well	standard
21	ever	billion	decide	rise	the
22	development	leave	of	own	some
23	even	personal	news	trial	artist
24	employee	such	choice	fish	those
25	once	water	on	magazine	she
26	design	local	south	phone	party
27	group	themselves	than	town	direction
28	tell	usually	economic	yes	describe
29	best	simply	sign	sometimes	state
30	live	military	us	late	important
31	growth	water	church	fact	prove
32	task	contain	light	sell	either
33	assume	strategy	new	than	lay
34	chair	law	time	cold	miss
35	television	need	despite	interest	else
36	as	onto	the	participant	product
37	employee	part	national	measure	success
38	difference	mind	serve	two	cut
39	local	easy	first	central	top
40	media	four	close	fly	bank
41	security	quite	but	peace	record
42	position	artist	feel	each	old
43	black	best	guy	possible	second
44	road	most	under	hotel	listen
45	contain	term	capital	physical	piece
46	light	stock	form	before	heart
47	federal	life	many	moment	talk
48	huge	six	reason	that	dark
49	music	anyone	film	choice	light
50	good	bar	piece	south	leave
51	easy	share	growth	arm	first
52	necessary	public	treat	technology	share
53	forward	bar	little	week	interesting
54	clear	same	evening	room	sister
55	create	baby	expect	a	member
56	phone	through	test	let	manager
57	four	suddenly	site	own	throw
58	community	break	point	stock	training
59	say	challenge	fall	special	maintain
60	without	culture	teach	back	heart
61	wonder	understand	understand	call	community
62	resource	check	never	city	good
63	remain	finish	seek	college	factor
64	call	might	statement	article	rather
65	sign	ever	own	item	eat
66	condition	today	thus	reflect	customer
67	bed	impact	film	talk	example
68	public	require	name	let	scene
69	clearly	to	campaign	into	lot
70	receive	operation	live	mission	among
71	build	under	role	discussion	travel
72	event	just	out	share	note
73	end	same	south	special	federal
74	respond	quickly	bed	democratic	house
75	ready	reflect	forward	certainly	almost
76	member	arrive	source	season	real
77	air	family	few	around	see
78	tree	hospital	dinner	apply	production
79	sister	improve	allow	figure	quickly
80	audience	prove	those	subject	finish
81	until	understand	memory	per	mouth
82	stage	analysis	discussion	land	letter
83	but	about	however	conference	interesting
84	treatment	and	at	animal	car
85	there	early	player	thing	area
86	window	certain	past	building	rise
87	design	thought	fly	meeting	treatment
88	machine	start	oil	cup	reduce
89	summer	pay	away	class	since
90	view	man	fire	rather	painting
91	prepare	score	condition	food	hold
92	tough	adult	few	second	either
93	ball	yet	early	should	score
94	line	station	them	analysis	small
95	it	expert	firm	add	employee
96	small	consider	enough	thing	course
97	head	performance	another	suffer	land
98	drug	relate	sit	experience	direction
99	approach	create	focus	all	statement
100	it	address	statement	support	example
\.


--
-- Data for Name: relation_38; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_38 (promotion_id, coupon_code, max_uses, per_user_limit) FROM stdin;
11	690	158	375
22	843	903	667
15	247	733	482
97	466	853	856
21	490	651	113
9	483	108	537
85	361	691	426
54	335	842	358
5	371	521	340
58	36	978	161
21	138	108	168
39	643	701	359
31	681	649	900
30	990	617	354
4	598	339	961
97	855	594	157
97	74	86	377
73	657	825	544
45	961	486	478
45	798	655	91
59	641	767	430
8	393	204	766
72	302	39	335
29	675	405	748
3	875	404	505
56	307	455	218
81	393	982	585
35	92	152	832
1	249	877	988
63	321	324	86
40	988	942	977
85	148	916	177
1	526	208	520
95	524	62	273
61	98	268	341
39	286	372	654
99	234	951	678
70	805	198	632
59	68	560	594
97	711	682	275
49	144	564	147
13	345	661	124
39	149	908	54
20	665	967	894
73	16	732	663
53	733	707	162
31	96	205	273
59	135	835	485
23	435	382	306
3	388	87	280
18	588	898	898
62	869	8	309
86	823	829	184
47	853	166	76
35	7	132	349
86	792	850	784
47	525	555	672
86	835	158	114
100	777	208	994
58	284	677	643
27	956	770	215
58	833	206	529
10	94	417	417
56	627	835	570
86	470	178	846
64	586	737	267
14	966	207	310
13	644	383	319
45	94	5	219
41	99	629	218
58	698	410	393
99	545	205	255
56	437	831	132
46	283	642	369
16	945	47	968
89	735	880	658
49	723	384	504
74	795	189	328
11	619	465	252
40	885	748	990
69	427	575	593
89	872	986	725
80	593	549	409
52	854	134	885
28	198	17	770
21	355	978	137
39	329	902	84
85	26	51	64
90	266	520	197
25	556	964	241
43	960	528	781
74	385	223	817
11	296	125	222
14	997	888	974
34	739	384	803
73	554	555	131
98	710	927	325
98	915	17	360
53	976	89	218
86	595	41	20
\.


--
-- Data for Name: relation_39; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_39 (warehouse_id, warehouse_name, region) FROM stdin;
1	religious	life
2	movement	drive
3	action	woman
4	just	area
5	and	hand
6	during	perhaps
7	month	role
8	mention	none
9	stock	fire
10	indicate	young
11	dark	get
12	law	let
13	pressure	a
14	alone	cup
15	animal	maintain
16	yard	room
17	eat	ten
18	someone	reach
19	fish	rich
20	start	campaign
21	authority	stock
22	ready	idea
23	protect	safe
24	talk	out
25	training	front
26	career	say
27	like	large
28	interest	thought
29	now	necessary
30	happen	lot
31	institution	hundred
32	significant	food
33	population	lawyer
34	source	only
35	fine	eat
36	oil	indeed
37	street	interesting
38	leave	focus
39	glass	goal
40	suddenly	her
41	difference	two
42	party	down
43	middle	my
44	relationship	series
45	table	employee
46	interview	process
47	dinner	through
48	hour	general
49	put	idea
50	report	behind
51	American	tell
52	too	security
53	result	miss
54	entire	blood
55	history	write
56	news	piece
57	reason	sing
58	their	decision
59	relate	us
60	yes	inside
61	later	big
62	become	executive
63	from	off
64	product	information
65	baby	draw
66	indeed	thing
67	memory	page
68	chair	scientist
69	section	consider
70	public	suggest
71	available	tend
72	garden	why
73	whole	break
74	work	any
75	how	store
76	six	lead
77	natural	force
78	stuff	sell
79	agent	boy
80	why	light
81	fund	price
82	article	run
83	authority	white
84	choose	and
85	side	ground
86	plant	charge
87	allow	free
88	young	song
89	level	view
90	sit	kitchen
91	above	have
92	mean	through
93	rock	home
94	up	appear
95	attorney	should
96	walk	probably
97	leave	during
98	film	food
99	news	book
100	ask	century
\.


--
-- Data for Name: relation_4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_4 (electronics_id, warranty_months, accessory_type, role) FROM stdin;
301	728	\N	electronics
302	613	\N	electronics
303	436	\N	electronics
304	818	\N	electronics
305	418	\N	electronics
306	527	\N	electronics
307	631	\N	electronics
308	42	\N	electronics
309	195	\N	electronics
310	554	\N	electronics
311	995	\N	electronics
312	539	\N	electronics
313	618	\N	electronics
314	310	\N	electronics
315	564	\N	electronics
316	652	\N	electronics
317	378	\N	electronics
318	921	\N	electronics
319	393	\N	electronics
320	652	\N	electronics
321	398	\N	electronics
322	364	\N	electronics
323	177	\N	electronics
324	604	\N	electronics
325	265	\N	electronics
326	708	\N	electronics
327	221	\N	electronics
328	734	\N	electronics
329	212	\N	electronics
330	106	\N	electronics
331	409	\N	electronics
332	92	\N	electronics
333	563	\N	electronics
334	49	\N	electronics
335	753	\N	electronics
336	272	\N	electronics
337	825	\N	electronics
338	806	\N	electronics
339	888	\N	electronics
340	302	\N	electronics
341	119	\N	electronics
342	153	\N	electronics
343	172	\N	electronics
344	890	\N	electronics
345	808	\N	electronics
346	106	\N	electronics
347	949	\N	electronics
348	58	\N	electronics
349	779	\N	electronics
350	521	\N	electronics
351	422	\N	electronics
352	418	\N	electronics
353	546	\N	electronics
354	969	\N	electronics
355	713	\N	electronics
356	511	\N	electronics
357	347	\N	electronics
358	757	\N	electronics
359	548	\N	electronics
360	542	\N	electronics
361	323	\N	electronics
362	122	\N	electronics
363	231	\N	electronics
364	577	\N	electronics
365	577	\N	electronics
366	433	\N	electronics
367	842	\N	electronics
368	87	\N	electronics
369	276	\N	electronics
370	24	\N	electronics
371	117	\N	electronics
372	698	\N	electronics
373	95	\N	electronics
374	255	\N	electronics
375	32	\N	electronics
376	381	\N	electronics
377	97	\N	electronics
378	528	\N	electronics
379	361	\N	electronics
380	621	\N	electronics
381	94	\N	electronics
382	578	\N	electronics
383	309	\N	electronics
384	563	\N	electronics
385	180	\N	electronics
386	282	\N	electronics
387	968	\N	electronics
388	413	\N	electronics
389	71	\N	electronics
390	634	\N	electronics
391	160	\N	electronics
392	693	\N	electronics
393	862	\N	electronics
394	374	\N	electronics
395	870	\N	electronics
396	416	\N	electronics
397	303	\N	electronics
398	551	\N	electronics
399	389	\N	electronics
400	471	\N	electronics
401	283	\N	computer
402	55	\N	computer
403	832	\N	computer
404	544	\N	computer
405	802	\N	computer
406	822	\N	computer
407	109	\N	computer
408	120	\N	computer
409	433	\N	computer
410	632	\N	computer
411	773	\N	computer
412	651	\N	computer
413	690	\N	computer
414	916	\N	computer
415	492	\N	computer
416	407	\N	computer
417	999	\N	computer
418	761	\N	computer
419	443	\N	computer
420	950	\N	computer
421	386	\N	computer
422	964	\N	computer
423	940	\N	computer
424	970	\N	computer
425	551	\N	computer
426	434	\N	computer
427	679	\N	computer
428	180	\N	computer
429	438	\N	computer
430	718	\N	computer
431	254	\N	computer
432	397	\N	computer
433	47	\N	computer
434	979	\N	computer
435	171	\N	computer
436	790	\N	computer
437	568	\N	computer
438	828	\N	computer
439	951	\N	computer
440	800	\N	computer
441	345	\N	computer
442	358	\N	computer
443	153	\N	computer
444	202	\N	computer
445	557	\N	computer
446	568	\N	computer
447	641	\N	computer
448	31	\N	computer
449	606	\N	computer
450	950	\N	computer
451	208	\N	computer
452	231	\N	computer
453	549	\N	computer
454	214	\N	computer
455	630	\N	computer
456	54	\N	computer
457	980	\N	computer
458	875	\N	computer
459	517	\N	computer
460	839	\N	computer
461	834	\N	computer
462	735	\N	computer
463	679	\N	computer
464	39	\N	computer
465	876	\N	computer
466	409	\N	computer
467	192	\N	computer
468	501	\N	computer
469	930	\N	computer
470	867	\N	computer
471	610	\N	computer
472	535	\N	computer
473	350	\N	computer
474	913	\N	computer
475	481	\N	computer
476	95	\N	computer
477	404	\N	computer
478	566	\N	computer
479	438	\N	computer
480	611	\N	computer
481	886	\N	computer
482	426	\N	computer
483	38	\N	computer
484	345	\N	computer
485	653	\N	computer
486	868	\N	computer
487	945	\N	computer
488	150	\N	computer
489	414	\N	computer
490	350	\N	computer
491	729	\N	computer
492	773	\N	computer
493	77	\N	computer
494	424	\N	computer
495	241	\N	computer
496	49	\N	computer
497	842	\N	computer
498	949	\N	computer
499	453	\N	computer
500	30	\N	computer
501	724	\N	desktop
502	189	\N	desktop
503	602	\N	desktop
504	739	\N	desktop
505	370	\N	desktop
506	226	\N	desktop
507	501	\N	desktop
508	10	\N	desktop
509	36	\N	desktop
510	296	\N	desktop
511	402	\N	desktop
512	193	\N	desktop
513	629	\N	desktop
514	953	\N	desktop
515	848	\N	desktop
516	663	\N	desktop
517	975	\N	desktop
518	615	\N	desktop
519	619	\N	desktop
520	577	\N	desktop
521	262	\N	desktop
522	801	\N	desktop
523	521	\N	desktop
524	713	\N	desktop
525	56	\N	desktop
526	262	\N	desktop
527	388	\N	desktop
528	214	\N	desktop
529	132	\N	desktop
530	623	\N	desktop
531	774	\N	desktop
532	310	\N	desktop
533	831	\N	desktop
534	418	\N	desktop
535	645	\N	desktop
536	216	\N	desktop
537	2	\N	desktop
538	510	\N	desktop
539	448	\N	desktop
540	326	\N	desktop
541	830	\N	desktop
542	863	\N	desktop
543	118	\N	desktop
544	448	\N	desktop
545	612	\N	desktop
546	300	\N	desktop
547	4	\N	desktop
548	68	\N	desktop
549	341	\N	desktop
550	481	\N	desktop
551	911	\N	desktop
552	245	\N	desktop
553	340	\N	desktop
554	518	\N	desktop
555	231	\N	desktop
556	61	\N	desktop
557	65	\N	desktop
558	766	\N	desktop
559	454	\N	desktop
560	123	\N	desktop
561	90	\N	desktop
562	961	\N	desktop
563	893	\N	desktop
564	784	\N	desktop
565	783	\N	desktop
566	886	\N	desktop
567	852	\N	desktop
568	620	\N	desktop
569	907	\N	desktop
570	773	\N	desktop
571	361	\N	desktop
572	380	\N	desktop
573	893	\N	desktop
574	469	\N	desktop
575	82	\N	desktop
576	661	\N	desktop
577	318	\N	desktop
578	908	\N	desktop
579	701	\N	desktop
580	548	\N	desktop
581	666	\N	desktop
582	879	\N	desktop
583	351	\N	desktop
584	34	\N	desktop
585	64	\N	desktop
586	577	\N	desktop
587	238	\N	desktop
588	201	\N	desktop
589	519	\N	desktop
590	78	\N	desktop
591	884	\N	desktop
592	188	\N	desktop
593	824	\N	desktop
594	137	\N	desktop
595	372	\N	desktop
596	625	\N	desktop
597	90	\N	desktop
598	169	\N	desktop
599	223	\N	desktop
600	923	\N	desktop
801	694	\N	smartwatch
802	133	\N	smartwatch
803	734	\N	smartwatch
804	768	\N	smartwatch
805	124	\N	smartwatch
806	333	\N	smartwatch
807	225	\N	smartwatch
808	467	\N	smartwatch
809	887	\N	smartwatch
810	577	\N	smartwatch
811	61	\N	smartwatch
812	319	\N	smartwatch
813	18	\N	smartwatch
814	869	\N	smartwatch
815	24	\N	smartwatch
816	157	\N	smartwatch
817	42	\N	smartwatch
818	552	\N	smartwatch
819	40	\N	smartwatch
820	690	\N	smartwatch
821	194	\N	smartwatch
822	421	\N	smartwatch
823	454	\N	smartwatch
824	81	\N	smartwatch
825	166	\N	smartwatch
826	274	\N	smartwatch
827	981	\N	smartwatch
828	892	\N	smartwatch
829	246	\N	smartwatch
830	272	\N	smartwatch
831	270	\N	smartwatch
832	271	\N	smartwatch
833	503	\N	smartwatch
834	114	\N	smartwatch
835	59	\N	smartwatch
836	563	\N	smartwatch
837	60	\N	smartwatch
838	911	\N	smartwatch
839	610	\N	smartwatch
840	895	\N	smartwatch
841	298	\N	smartwatch
842	575	\N	smartwatch
843	602	\N	smartwatch
844	339	\N	smartwatch
845	69	\N	smartwatch
846	590	\N	smartwatch
847	783	\N	smartwatch
848	545	\N	smartwatch
849	368	\N	smartwatch
850	792	\N	smartwatch
851	663	\N	smartwatch
852	721	\N	smartwatch
853	25	\N	smartwatch
854	932	\N	smartwatch
855	437	\N	smartwatch
856	922	\N	smartwatch
857	796	\N	smartwatch
858	971	\N	smartwatch
859	25	\N	smartwatch
860	412	\N	smartwatch
861	715	\N	smartwatch
862	571	\N	smartwatch
863	475	\N	smartwatch
864	138	\N	smartwatch
865	653	\N	smartwatch
866	712	\N	smartwatch
867	781	\N	smartwatch
868	712	\N	smartwatch
869	598	\N	smartwatch
870	434	\N	smartwatch
871	12	\N	smartwatch
872	781	\N	smartwatch
873	753	\N	smartwatch
874	529	\N	smartwatch
875	808	\N	smartwatch
876	597	\N	smartwatch
877	798	\N	smartwatch
878	936	\N	smartwatch
879	403	\N	smartwatch
880	516	\N	smartwatch
881	267	\N	smartwatch
882	824	\N	smartwatch
883	863	\N	smartwatch
884	281	\N	smartwatch
885	994	\N	smartwatch
886	480	\N	smartwatch
887	802	\N	smartwatch
888	111	\N	smartwatch
889	593	\N	smartwatch
890	425	\N	smartwatch
891	52	\N	smartwatch
892	999	\N	smartwatch
893	164	\N	smartwatch
894	361	\N	smartwatch
895	334	\N	smartwatch
896	980	\N	smartwatch
897	102	\N	smartwatch
898	760	\N	smartwatch
899	470	\N	smartwatch
900	314	\N	smartwatch
901	522	\N	camera
902	375	\N	camera
903	832	\N	camera
904	259	\N	camera
905	572	\N	camera
906	725	\N	camera
907	419	\N	camera
908	115	\N	camera
909	204	\N	camera
910	386	\N	camera
911	791	\N	camera
912	93	\N	camera
913	225	\N	camera
914	683	\N	camera
915	166	\N	camera
916	356	\N	camera
917	32	\N	camera
918	351	\N	camera
919	715	\N	camera
920	75	\N	camera
921	771	\N	camera
922	956	\N	camera
923	352	\N	camera
924	773	\N	camera
925	952	\N	camera
926	628	\N	camera
927	735	\N	camera
928	176	\N	camera
929	869	\N	camera
930	70	\N	camera
931	863	\N	camera
932	506	\N	camera
933	923	\N	camera
934	992	\N	camera
935	301	\N	camera
936	488	\N	camera
937	216	\N	camera
938	510	\N	camera
939	819	\N	camera
940	397	\N	camera
941	739	\N	camera
942	95	\N	camera
943	53	\N	camera
944	815	\N	camera
945	133	\N	camera
946	532	\N	camera
947	34	\N	camera
948	173	\N	camera
949	824	\N	camera
950	297	\N	camera
951	400	\N	camera
952	390	\N	camera
953	342	\N	camera
954	594	\N	camera
955	887	\N	camera
956	530	\N	camera
957	822	\N	camera
958	262	\N	camera
959	800	\N	camera
960	711	\N	camera
961	489	\N	camera
962	130	\N	camera
963	581	\N	camera
964	349	\N	camera
965	75	\N	camera
966	544	\N	camera
967	699	\N	camera
968	783	\N	camera
969	55	\N	camera
970	196	\N	camera
971	553	\N	camera
972	197	\N	camera
973	254	\N	camera
974	730	\N	camera
975	513	\N	camera
976	550	\N	camera
977	173	\N	camera
978	624	\N	camera
979	651	\N	camera
980	885	\N	camera
981	309	\N	camera
982	633	\N	camera
983	495	\N	camera
984	145	\N	camera
985	794	\N	camera
986	42	\N	camera
987	804	\N	camera
988	434	\N	camera
989	779	\N	camera
990	297	\N	camera
991	723	\N	camera
992	723	\N	camera
993	54	\N	camera
994	880	\N	camera
995	226	\N	camera
996	518	\N	camera
997	388	\N	camera
998	39	\N	camera
999	123	\N	camera
1000	6	\N	camera
1001	56	\N	phone
1002	131	\N	phone
1003	275	\N	phone
1004	923	\N	phone
1005	617	\N	phone
1006	555	\N	phone
1007	823	\N	phone
1008	699	\N	phone
1009	625	\N	phone
1010	562	\N	phone
1011	81	\N	phone
1012	673	\N	phone
1013	950	\N	phone
1014	815	\N	phone
1015	377	\N	phone
1016	341	\N	phone
1017	785	\N	phone
1018	166	\N	phone
1019	361	\N	phone
1020	549	\N	phone
1021	624	\N	phone
1022	672	\N	phone
1023	688	\N	phone
1024	385	\N	phone
1025	317	\N	phone
1026	439	\N	phone
1027	430	\N	phone
1028	518	\N	phone
1029	956	\N	phone
1030	950	\N	phone
1031	30	\N	phone
1032	399	\N	phone
1033	574	\N	phone
1034	663	\N	phone
1035	450	\N	phone
1036	150	\N	phone
1037	709	\N	phone
1038	714	\N	phone
1039	376	\N	phone
1040	226	\N	phone
1041	173	\N	phone
1042	658	\N	phone
1043	846	\N	phone
1044	778	\N	phone
1045	127	\N	phone
1046	778	\N	phone
1047	813	\N	phone
1048	554	\N	phone
1049	839	\N	phone
1050	328	\N	phone
1051	463	\N	phone
1052	475	\N	phone
1053	375	\N	phone
1054	384	\N	phone
1055	98	\N	phone
1056	315	\N	phone
1057	763	\N	phone
1058	991	\N	phone
1059	725	\N	phone
1060	990	\N	phone
1061	988	\N	phone
1062	904	\N	phone
1063	770	\N	phone
1064	40	\N	phone
1065	770	\N	phone
1066	581	\N	phone
1067	800	\N	phone
1068	949	\N	phone
1069	978	\N	phone
1070	571	\N	phone
1071	136	\N	phone
1072	199	\N	phone
1073	131	\N	phone
1074	280	\N	phone
1075	718	\N	phone
1076	965	\N	phone
1077	317	\N	phone
1078	774	\N	phone
1079	300	\N	phone
1080	9	\N	phone
1081	512	\N	phone
1082	609	\N	phone
1083	136	\N	phone
1084	228	\N	phone
1085	188	\N	phone
1086	907	\N	phone
1087	89	\N	phone
1088	210	\N	phone
1089	812	\N	phone
1090	586	\N	phone
1091	186	\N	phone
1092	704	\N	phone
1093	468	\N	phone
1094	682	\N	phone
1095	860	\N	phone
1096	530	\N	phone
1097	195	\N	phone
1098	355	\N	phone
1099	9	\N	phone
1100	685	\N	phone
1101	285	operation	accessories
1102	167	life	accessories
1103	677	candidate	accessories
1104	961	test	accessories
1105	584	wait	accessories
1106	442	coach	accessories
1107	516	difficult	accessories
1108	580	style	accessories
1109	439	investment	accessories
1110	545	region	accessories
1111	195	loss	accessories
1112	727	wish	accessories
1113	572	only	accessories
1114	1	food	accessories
1115	672	their	accessories
1116	818	western	accessories
1117	236	difficult	accessories
1118	97	effect	accessories
1119	365	us	accessories
1120	875	research	accessories
1121	319	reflect	accessories
1122	315	spend	accessories
1123	689	free	accessories
1124	732	article	accessories
1125	127	dog	accessories
1126	936	difference	accessories
1127	220	lay	accessories
1128	477	reach	accessories
1129	713	personal	accessories
1130	76	between	accessories
1131	210	purpose	accessories
1132	190	need	accessories
1133	385	sport	accessories
1134	227	myself	accessories
1135	300	catch	accessories
1136	773	short	accessories
1137	220	production	accessories
1138	432	purpose	accessories
1139	780	difference	accessories
1140	383	apply	accessories
1141	917	hear	accessories
1142	597	challenge	accessories
1143	671	statement	accessories
1144	138	brother	accessories
1145	685	respond	accessories
1146	729	size	accessories
1147	209	her	accessories
1148	836	truth	accessories
1149	292	stop	accessories
1150	114	by	accessories
1151	532	continue	accessories
1152	522	other	accessories
1153	159	language	accessories
1154	422	positive	accessories
1155	408	save	accessories
1156	170	material	accessories
1157	815	add	accessories
1158	619	drive	accessories
1159	154	perhaps	accessories
1160	757	near	accessories
1161	568	activity	accessories
1162	100	price	accessories
1163	835	well	accessories
1164	368	tend	accessories
1165	314	see	accessories
1166	292	individual	accessories
1167	984	right	accessories
1168	524	energy	accessories
1169	918	voice	accessories
1170	393	look	accessories
1171	172	hold	accessories
1172	19	follow	accessories
1173	431	budget	accessories
1174	827	reality	accessories
1175	109	question	accessories
1176	811	goal	accessories
1177	363	science	accessories
1178	484	letter	accessories
1179	9	trade	accessories
1180	443	anyone	accessories
1181	464	allow	accessories
1182	54	inside	accessories
1183	933	situation	accessories
1184	85	hair	accessories
1185	820	nothing	accessories
1186	617	left	accessories
1187	339	class	accessories
1188	571	write	accessories
1189	579	need	accessories
1190	396	others	accessories
1191	829	both	accessories
1192	1	capital	accessories
1193	213	main	accessories
1194	942	against	accessories
1195	928	yard	accessories
1196	404	standard	accessories
1197	558	always	accessories
1198	482	think	accessories
1199	388	off	accessories
1200	625	step	accessories
\.


--
-- Data for Name: relation_40; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_40 (warehouse_id, bin_id, code) FROM stdin;
58	789	loss
40	943	analysis
72	244	issue
65	777	party
3	398	large
59	180	power
57	823	threat
94	989	style
69	35	role
2	134	off
39	489	risk
79	496	fast
81	661	lose
83	790	fire
71	727	how
5	766	culture
58	253	both
26	74	hair
2	441	national
19	5	matter
8	549	test
35	331	industry
9	227	attorney
1	556	force
18	99	people
45	961	body
82	205	put
36	493	care
23	845	color
96	679	authority
60	639	hotel
19	991	war
69	325	throughout
21	995	spring
51	961	newspaper
76	214	sing
39	611	standard
87	677	dark
33	469	stock
57	140	thus
24	180	foot
21	511	finish
53	765	skin
42	173	receive
80	791	person
18	272	nature
70	665	discuss
93	676	discussion
83	24	maintain
52	818	adult
69	279	control
84	954	five
23	557	official
46	750	chair
96	112	put
69	257	by
6	180	strong
82	709	these
55	25	father
9	661	citizen
3	591	produce
70	9	low
60	552	share
56	375	debate
78	789	call
19	922	build
23	57	contain
2	378	dark
93	602	same
84	831	stop
91	85	firm
8	126	coach
19	159	phone
3	262	item
29	586	so
95	580	performance
25	693	population
10	353	each
53	353	close
95	506	suffer
50	521	energy
25	276	third
93	565	natural
25	742	accept
53	812	though
31	390	him
28	103	family
52	694	we
31	325	note
70	951	action
48	826	strategy
5	213	report
21	329	act
39	635	Democrat
59	103	save
2	192	next
97	732	someone
70	377	so
26	163	continue
36	796	near
\.


--
-- Data for Name: relation_41; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_41 (supplier_id, supplier_name) FROM stdin;
1	or
2	unit
3	according
4	couple
5	about
6	old
7	bad
8	kind
9	bad
10	leave
11	second
12	man
13	exactly
14	responsibility
15	send
16	agency
17	central
18	interest
19	company
20	community
21	hair
22	court
23	white
24	brother
25	beat
26	man
27	brother
28	site
29	side
30	blue
31	final
32	over
33	worry
34	leader
35	key
36	challenge
37	fire
38	range
39	benefit
40	dream
41	on
42	none
43	single
44	whether
45	with
46	toward
47	long
48	budget
49	wind
50	democratic
51	woman
52	attorney
53	research
54	person
55	financial
56	trip
57	represent
58	Congress
59	decide
60	outside
61	language
62	generation
63	kitchen
64	season
65	action
66	dream
67	recent
68	against
69	big
70	matter
71	state
72	me
73	while
74	exist
75	sign
76	beat
77	management
78	movement
79	story
80	prevent
81	up
82	visit
83	family
84	against
85	talk
86	suddenly
87	protect
88	enter
89	only
90	market
91	relate
92	provide
93	activity
94	later
95	add
96	summer
97	road
98	force
99	later
100	cut
\.


--
-- Data for Name: relation_42; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_42 (supplier_id, contact_id, email, phone) FROM stdin;
21	114	klineelizabeth@example.org	chance
25	386	edwardsemily@example.com	might
72	443	dchavez@example.net	agreement
40	212	collinsrobert@example.org	machine
9	290	breanna28@example.com	since
64	515	qgarcia@example.org	event
60	233	boltonrhonda@example.com	get
80	742	dixonadrienne@example.net	among
7	892	gjohnson@example.net	audience
34	333	campostina@example.org	once
51	589	heatherdickerson@example.org	across
95	865	loganabbott@example.org	rest
20	946	jeffcox@example.org	although
84	346	matthewcameron@example.org	lawyer
43	463	meyerregina@example.org	than
22	535	hunterjamie@example.net	this
13	825	blakeschroeder@example.net	education
59	130	fritzdaniel@example.org	rate
20	962	hendersonerica@example.net	stuff
1	393	kristenedwards@example.net	expert
22	135	fmendoza@example.com	everything
14	570	mannjames@example.org	have
82	212	mathismichael@example.com	he
81	882	lucas54@example.net	account
15	927	parkeramy@example.com	front
8	797	kevindiaz@example.net	benefit
74	778	marydavis@example.org	we
63	229	ryan88@example.org	whom
70	408	jacobperez@example.com	technology
92	357	westdanielle@example.com	top
38	93	walkeraaron@example.net	theory
29	378	todd99@example.net	live
96	25	edwinjohnson@example.org	control
13	270	brettjordan@example.com	heart
36	297	robintorres@example.com	tell
71	318	melvin83@example.net	face
24	442	gaguirre@example.net	cup
89	502	lmaxwell@example.com	great
42	883	juliedelgado@example.org	civil
49	288	aspencer@example.com	available
71	790	kaitlynbush@example.net	lay
52	928	jacquelineglenn@example.com	language
27	428	kempheather@example.net	off
45	73	yvette40@example.org	tax
90	547	kathrynmontgomery@example.com	network
58	312	arthurboone@example.com	system
40	406	schroederkatie@example.net	someone
45	725	kday@example.com	dark
85	30	floresronald@example.net	that
37	133	virginiaglass@example.com	decade
15	766	schultztrevor@example.com	including
42	243	rjackson@example.net	buy
86	910	erikmyers@example.com	key
32	529	kimberlybray@example.com	rock
76	704	mirandalouis@example.org	expect
44	144	tgalvan@example.org	soon
77	999	alvarezmonique@example.net	contain
6	968	sberry@example.net	thousand
45	172	rebeccamarshall@example.com	wait
75	258	mholmes@example.net	wide
68	952	jharding@example.com	reduce
83	880	rhodge@example.net	first
52	730	uhamilton@example.org	look
8	743	isolis@example.net	so
80	232	tbanks@example.com	physical
39	909	eric53@example.org	nation
44	996	srussell@example.com	hope
44	527	gillsandra@example.net	gun
96	617	eosborne@example.net	them
95	869	rebekah04@example.com	girl
6	3	scottdavid@example.org	entire
53	952	williamschelsea@example.com	similar
37	838	hutchinsonisaac@example.net	offer
1	102	natashacarson@example.net	fund
18	599	elizabethsmith@example.net	able
37	112	lacey88@example.net	he
6	280	ahicks@example.com	a
7	884	tiffanygarner@example.net	evidence
78	489	tammysantos@example.com	modern
64	54	kelly67@example.org	shoulder
27	878	alan49@example.net	late
25	756	rebeccalara@example.net	memory
7	865	cindy59@example.com	include
45	288	williamchen@example.org	final
48	526	sara11@example.net	reduce
29	329	vegavalerie@example.org	happen
42	505	michaelgarcia@example.net	party
5	606	thomas06@example.org	idea
81	820	othompson@example.net	result
18	132	msoto@example.net	price
73	194	qhopkins@example.org	difference
84	241	glenn20@example.net	today
92	56	lisa69@example.net	ready
12	36	josemartinez@example.net	Mr
7	196	matthew27@example.org	my
97	368	norrischristian@example.com	professor
53	803	caseyaaron@example.org	may
93	162	adamsnathan@example.net	ok
25	831	mcleanhenry@example.net	personal
100	214	asmith@example.org	send
\.


--
-- Data for Name: relation_43; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_43 (purchaseorder_id, created_at, status) FROM stdin;
1	rise	free
2	former	know
3	practice	hair
4	level	finally
5	politics	yet
6	ok	something
7	skill	test
8	nice	mouth
9	TV	day
10	maybe	former
11	structure	bar
12	couple	fire
13	source	international
14	Mrs	others
15	break	why
16	method	magazine
17	decision	adult
18	something	statement
19	though	assume
20	remain	central
21	our	among
22	everybody	our
23	contain	five
24	hot	state
25	safe	music
26	power	ok
27	system	during
28	begin	rise
29	build	pull
30	various	on
31	decision	despite
32	station	first
33	need	allow
34	white	store
35	situation	should
36	develop	you
37	skin	argue
38	group	street
39	site	population
40	allow	grow
41	management	smile
42	party	task
43	bad	blood
44	any	detail
45	figure	thousand
46	every	gas
47	yes	stock
48	line	apply
49	above	affect
50	benefit	various
51	her	knowledge
52	hot	risk
53	prevent	write
54	result	be
55	religious	term
56	star	many
57	lay	wide
58	piece	attorney
59	news	during
60	improve	risk
61	word	middle
62	nice	blue
63	energy	pattern
64	local	some
65	future	relate
66	less	attack
67	up	common
68	prevent	cut
69	well	television
70	lawyer	keep
71	low	everything
72	color	laugh
73	policy	rate
74	next	spend
75	live	over
76	field	music
77	rich	writer
78	process	job
79	program	want
80	their	drop
81	structure	listen
82	collection	life
83	role	help
84	say	hope
85	realize	process
86	couple	together
87	task	window
88	national	watch
89	ok	American
90	house	American
91	official	way
92	shoulder	pretty
93	need	general
94	type	coach
95	do	economic
96	Congress	message
97	child	special
98	its	expert
99	teach	his
100	at	plant
\.


--
-- Data for Name: relation_44; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_44 (courierpartner_id, carrier_code, webhook_url) FROM stdin;
1	great	very
2	professional	five
3	quite	well
4	test	democratic
5	shoulder	loss
6	whether	as
7	notice	visit
8	issue	upon
9	create	ground
10	task	sell
11	reflect	past
12	statement	while
13	however	necessary
14	not	dog
15	shoulder	generation
16	artist	base
17	art	artist
18	significant	realize
19	difficult	trouble
20	prepare	common
21	summer	view
22	audience	event
23	radio	most
24	enough	its
25	general	memory
26	what	rather
27	free	stage
28	civil	end
29	responsibility	back
30	hospital	degree
31	a	task
32	stand	produce
33	western	reason
34	energy	magazine
35	partner	program
36	involve	top
37	owner	pressure
38	perform	total
39	game	relationship
40	nation	still
41	serious	education
42	star	car
43	job	ball
44	arrive	environmental
45	tax	deal
46	hospital	respond
47	piece	exactly
48	tell	pay
49	decide	pass
50	outside	work
51	also	item
52	hand	last
53	maintain	fund
54	tonight	beat
55	bar	tree
56	age	us
57	conference	until
58	those	outside
59	drop	why
60	perform	size
61	suddenly	national
62	into	relationship
63	listen	position
64	seek	or
65	option	actually
66	get	interesting
67	course	rise
68	family	above
69	around	surface
70	nature	challenge
71	price	keep
72	something	seem
73	exist	range
74	tend	loss
75	drug	read
76	her	under
77	theory	expert
78	law	Mrs
79	a	clear
80	race	but
81	arm	us
82	research	message
83	what	pattern
84	reality	while
85	those	should
86	draw	spring
87	east	very
88	half	ok
89	ball	investment
90	public	wind
91	ability	grow
92	buy	garden
93	laugh	skin
94	mouth	role
95	grow	stop
96	student	small
97	report	politics
98	son	personal
99	interesting	well
100	tree	important
\.


--
-- Data for Name: relation_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_45 (product_id, category_products_category_id) FROM stdin;
1430	4
1395	58
1340	39
605	55
1926	53
1509	73
1482	54
932	98
1801	56
946	50
788	23
2054	95
1677	69
146	79
87	49
811	25
349	25
1510	10
1838	83
111	60
1498	86
209	87
1750	68
487	74
272	42
432	30
292	94
870	92
1537	98
1147	50
1110	97
1504	10
180	37
1002	14
1106	16
1149	50
1883	3
154	27
760	79
385	52
1038	72
297	59
1434	51
1613	33
1117	11
1751	31
283	51
643	13
1475	66
947	37
2080	58
1753	85
1804	37
15	33
78	56
1668	68
449	60
1105	31
1492	45
2056	42
375	30
896	45
424	85
512	3
1347	33
447	82
1066	65
1752	16
2084	97
1217	62
1735	98
232	86
2095	42
832	39
408	7
24	5
47	35
1231	70
548	51
1439	52
1488	23
1293	74
1010	11
348	43
822	34
1045	1
371	41
1795	39
1718	97
799	30
742	66
1416	14
145	50
115	58
757	86
600	65
1212	48
389	43
436	35
754	62
523	28
1545	65
1714	83
583	46
670	7
1335	52
1666	53
382	70
1113	85
789	41
1281	61
1903	4
2012	16
613	43
1131	78
1374	58
161	59
1450	91
2068	96
690	81
1151	68
772	14
1491	34
7	18
1184	28
1936	1
39	88
1845	86
665	88
1268	96
929	57
1635	70
1710	1
566	10
1653	17
340	4
498	93
1473	72
1249	87
51	7
392	1
851	79
1072	9
61	82
847	59
1645	63
409	94
843	50
1139	46
1617	54
1221	3
1621	26
729	22
1455	4
188	98
1042	18
1182	76
1906	11
429	27
876	26
1424	31
320	2
2016	61
2083	41
378	31
197	76
2029	17
1349	53
214	50
310	68
1765	86
988	64
1827	26
457	52
170	34
833	67
1919	84
1067	37
550	98
1611	29
648	22
2046	47
1794	4
663	55
1052	35
2017	47
367	13
2059	90
287	45
1393	45
33	23
1843	95
1269	53
439	11
532	10
1524	29
1973	30
36	84
1577	83
898	96
1362	5
1575	28
1773	36
2065	18
2026	41
994	97
1980	80
1177	25
1120	85
93	87
107	5
251	62
1493	25
1481	78
143	92
1914	14
826	31
1849	99
1822	3
1810	66
1294	69
627	90
1834	35
1289	2
1523	11
454	62
1559	5
412	66
255	52
1299	15
52	82
450	56
167	52
595	51
666	75
761	45
1413	62
995	48
334	86
68	41
147	60
41	98
628	93
672	84
435	33
1998	66
794	19
1734	97
499	72
1327	21
518	16
780	55
802	18
842	95
839	90
734	9
1896	26
506	91
1144	51
23	98
1454	54
1516	89
549	74
878	37
593	65
1934	86
1777	57
489	7
741	42
127	24
187	73
434	26
887	76
156	43
1967	49
339	35
497	59
827	77
1529	20
70	70
606	51
645	32
1588	20
1167	95
984	91
1025	96
5	44
841	75
148	92
1366	27
559	32
668	49
1266	89
2067	1
2031	62
680	89
250	86
219	37
213	18
1788	95
234	98
538	88
267	73
1511	28
2062	44
1476	44
1925	34
1478	95
1309	7
2002	4
2036	65
534	10
1622	31
502	52
1723	74
926	93
26	24
1584	67
916	76
1026	72
732	5
1451	68
1162	26
611	84
405	32
1601	31
1098	65
1089	44
711	56
1241	42
1634	7
345	89
688	83
1616	1
972	72
1300	83
1749	79
2005	57
289	44
397	93
402	43
441	21
608	95
1820	29
603	64
220	1
1997	51
579	6
490	37
179	71
85	56
351	2
1593	37
1024	19
1785	93
2077	18
2072	81
2088	52
1429	1
849	55
982	63
1522	80
76	89
1277	19
646	26
1766	92
944	16
1250	41
1030	82
1487	64
1323	56
263	98
1214	9
1758	41
957	46
381	27
29	10
908	28
561	80
280	54
420	16
1426	74
749	53
1591	71
1571	18
230	65
153	50
1853	54
712	56
1229	59
2082	62
710	80
1329	31
2032	79
1776	55
515	74
1740	32
526	87
350	9
1175	4
1070	42
1253	45
2060	30
285	35
1736	82
1684	54
1940	41
535	86
1889	22
527	45
504	31
674	25
1895	76
472	90
1835	17
906	63
1833	21
1396	22
809	19
415	88
673	29
962	69
406	5
793	97
226	49
1420	48
465	44
1018	62
478	71
1091	48
2024	46
1965	94
462	95
175	30
416	61
1701	53
1862	60
312	31
1379	67
861	13
607	87
139	19
1332	26
1941	20
1626	78
1628	75
42	29
1815	17
1235	44
1373	53
1680	59
256	81
1888	58
1015	60
2023	14
103	85
1154	25
993	1
1884	59
558	99
1800	52
1769	64
1480	26
1389	73
1284	78
1423	58
752	81
1790	10
1465	74
305	22
1667	60
1590	39
1567	7
975	49
1910	97
491	78
1589	89
956	37
1306	23
1169	22
750	57
268	40
2034	88
\.


--
-- Data for Name: relation_46; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_46 (product_id, tag_id) FROM stdin;
501	3
501	62
502	38
502	47
503	41
503	12
504	62
505	59
506	25
506	93
507	36
507	93
508	34
509	44
509	2
510	57
511	45
511	93
512	37
512	50
513	15
513	1
514	3
515	4
516	21
516	6
517	97
517	91
518	75
518	53
519	51
519	65
520	20
521	54
522	65
522	52
523	31
524	17
525	25
525	82
526	5
526	24
527	23
528	56
529	89
529	6
530	79
530	27
531	63
532	66
533	87
533	98
534	13
535	2
535	64
536	27
536	30
537	21
537	99
538	19
539	59
540	13
540	31
541	80
541	55
542	58
542	86
543	52
544	56
545	50
545	79
546	39
546	94
547	62
547	93
548	43
549	22
550	39
551	12
552	64
552	53
553	67
554	99
554	50
555	47
555	40
556	58
556	61
557	39
557	34
558	97
558	32
559	28
559	85
560	39
560	15
561	43
562	86
562	61
563	10
564	60
565	37
565	50
566	48
567	63
568	11
569	47
569	99
570	85
570	39
571	97
572	8
572	28
573	93
573	61
574	37
575	32
575	15
576	20
576	56
577	6
578	5
579	36
580	27
581	34
582	80
583	38
584	94
585	18
585	24
586	25
587	73
587	59
588	9
589	62
590	34
590	5
591	25
591	80
592	67
593	60
594	71
595	89
595	54
596	74
597	1
598	73
598	87
599	78
600	23
601	57
601	19
602	94
603	26
603	14
604	71
605	85
606	38
606	4
607	41
607	87
608	67
608	68
609	42
610	1
611	59
611	23
612	28
612	73
613	93
614	96
615	63
616	47
617	53
617	23
618	98
618	89
619	23
620	60
621	80
622	3
623	4
623	47
624	41
625	45
625	75
626	56
626	80
627	11
627	99
628	61
628	86
629	98
629	66
630	30
630	60
631	38
631	17
632	8
632	13
633	64
634	84
635	54
636	86
636	23
637	93
638	82
638	5
639	84
640	74
640	48
641	88
642	44
642	93
643	8
643	79
644	72
645	21
646	2
646	28
647	32
647	11
648	71
649	77
650	17
650	53
651	48
652	14
652	18
653	56
653	42
654	84
655	70
655	56
656	1
656	60
657	2
657	37
658	93
658	20
659	44
659	70
660	90
660	12
661	67
661	49
662	69
663	65
664	64
664	100
665	32
666	100
667	15
667	26
668	29
669	36
669	81
670	8
671	40
671	38
672	54
672	11
673	36
674	38
675	77
676	35
677	15
678	26
678	2
679	2
680	59
680	26
681	99
681	93
682	97
683	67
683	6
684	85
684	95
685	16
686	36
687	11
688	72
689	21
689	13
690	90
691	21
692	89
692	80
693	3
694	52
695	100
696	51
696	69
697	91
697	39
698	92
698	10
699	83
700	1
401	10
401	74
402	47
402	58
403	22
403	25
404	99
405	69
406	33
406	49
407	37
408	13
408	91
409	33
410	62
411	51
411	79
412	70
412	46
413	96
413	88
414	54
414	31
415	74
415	80
416	22
417	91
418	11
419	25
419	27
420	85
420	92
421	14
422	25
422	62
423	49
423	23
424	49
424	76
425	29
425	21
426	15
426	55
427	50
427	9
428	20
428	68
429	9
430	9
430	95
431	22
432	35
432	19
433	72
434	43
434	98
435	89
435	20
436	45
437	22
438	33
439	18
440	23
441	68
442	6
442	94
443	43
443	26
444	24
444	63
445	98
445	27
446	56
447	46
448	3
448	66
449	74
449	14
450	8
451	87
451	37
452	62
453	92
453	49
454	70
454	68
455	6
455	36
456	70
456	58
457	1
458	86
459	23
459	61
460	38
460	77
461	83
461	39
462	37
462	67
463	19
464	98
464	40
465	17
465	2
466	67
467	71
467	93
468	12
469	69
470	91
470	21
471	23
471	27
472	28
472	82
473	90
473	60
474	9
474	45
475	84
475	89
476	12
477	25
477	99
478	34
478	51
479	27
479	74
480	27
480	99
481	100
481	73
482	45
482	65
483	44
484	49
485	97
485	38
486	82
486	85
487	65
487	24
488	64
489	6
489	42
490	31
490	53
491	57
492	29
493	77
494	13
494	87
495	30
496	3
496	56
497	57
497	68
498	61
499	4
500	37
500	72
701	2
701	96
702	51
703	11
703	52
704	94
705	5
706	21
707	23
708	43
708	19
709	4
709	72
710	12
710	1
711	28
711	18
712	71
712	48
713	91
714	24
715	42
715	40
716	13
717	37
717	6
718	9
718	61
719	32
719	23
720	34
720	83
721	21
721	64
722	66
723	44
723	23
724	98
725	93
725	6
726	7
727	22
727	71
728	32
729	76
730	8
730	87
731	79
731	71
732	29
733	39
734	7
734	42
735	65
736	29
737	74
738	45
739	29
740	66
740	63
741	1
741	17
742	57
742	54
743	80
743	14
744	27
745	74
745	85
746	58
747	47
747	54
748	57
749	80
749	35
750	1
751	49
751	13
752	45
753	6
754	73
755	83
756	98
756	99
757	98
758	59
759	35
760	13
760	7
761	72
762	31
762	65
763	59
764	20
764	43
765	56
766	29
767	92
768	17
768	50
769	6
769	36
770	100
771	13
772	23
772	9
773	67
774	26
775	9
775	75
776	97
776	89
777	30
777	75
778	4
779	5
779	82
780	11
780	30
781	45
781	37
782	90
782	35
783	75
783	67
784	67
784	11
785	41
785	95
786	9
786	76
787	23
788	10
789	51
790	44
790	29
791	30
792	74
793	43
794	89
795	15
795	56
796	8
796	33
797	25
798	5
799	33
799	88
800	78
800	21
801	35
802	67
803	47
803	10
804	24
804	80
805	34
805	36
806	84
806	60
807	91
808	46
809	89
809	48
810	78
810	17
811	88
811	89
812	54
813	94
814	84
815	65
815	74
816	26
816	35
817	97
817	66
818	26
818	34
819	87
819	12
820	24
821	44
822	17
822	9
823	83
824	72
825	4
825	18
826	87
827	44
828	42
829	44
829	76
830	11
830	75
831	32
832	10
832	97
833	94
833	77
834	50
835	39
836	14
836	53
837	67
838	70
838	87
839	36
840	36
841	49
842	56
842	32
843	30
843	12
844	13
845	26
845	27
846	58
847	39
847	67
848	47
848	55
849	79
850	70
850	77
851	15
852	61
852	60
853	12
854	77
855	19
855	67
856	23
856	61
857	71
858	27
858	16
859	80
860	47
861	10
862	50
862	99
863	81
863	65
864	39
864	70
865	59
865	17
866	66
867	85
867	41
868	41
868	70
869	11
869	65
870	8
871	7
872	50
872	38
873	91
874	63
874	55
875	61
875	65
876	64
876	70
877	63
878	81
879	87
880	33
880	97
881	52
882	9
882	82
883	100
883	56
884	36
884	63
885	75
885	99
886	47
887	46
887	10
888	87
889	41
889	4
890	87
890	42
891	87
891	83
892	12
892	26
893	60
893	81
894	74
894	50
895	66
896	75
897	81
898	67
899	42
900	8
901	85
902	22
902	23
903	4
903	81
904	94
905	86
905	7
906	1
907	12
907	9
908	90
908	29
909	18
909	95
910	94
910	50
911	16
912	82
913	3
914	10
914	33
915	76
915	82
916	44
917	62
917	67
918	16
918	71
919	6
920	63
921	95
921	28
922	74
922	61
923	4
923	65
924	33
924	69
925	35
926	80
927	38
928	94
929	30
929	67
930	49
931	20
931	31
932	26
932	58
933	73
933	19
934	51
934	60
935	54
936	65
937	56
938	94
938	100
939	51
940	30
941	39
942	78
943	96
944	78
944	82
945	49
945	83
946	97
946	90
947	18
948	9
948	87
949	68
949	18
950	69
950	99
951	86
952	87
953	81
954	95
955	80
956	93
956	56
957	82
958	45
959	18
959	42
960	12
961	57
962	61
962	28
963	54
963	37
964	100
964	53
965	47
966	71
967	8
968	35
968	62
969	91
969	25
970	23
971	81
972	61
973	79
973	22
974	90
975	39
975	69
976	55
977	4
977	33
978	30
978	52
979	17
980	80
980	8
981	96
981	55
982	46
982	24
983	47
984	8
985	17
986	82
986	21
987	26
988	97
989	51
989	43
990	10
990	76
991	46
991	19
992	94
993	30
994	82
994	59
995	45
995	99
996	66
997	23
998	35
999	31
999	30
1000	20
1000	98
1001	45
1002	81
1003	78
1003	60
1004	20
1004	7
1005	38
1005	30
1006	95
1007	86
1007	96
1008	11
1009	80
1009	37
1010	95
1010	64
1011	43
1011	54
1012	1
1012	5
1013	6
1013	50
1014	18
1014	68
1015	91
1015	15
1016	62
1016	87
1017	16
1017	63
1018	97
1019	74
1020	58
1020	40
1021	71
1022	96
1022	4
1023	18
1023	38
1024	19
1024	83
1025	89
1025	81
1026	21
1026	55
1027	92
1027	86
1028	27
1028	22
1029	16
1030	3
1030	63
1031	84
1032	40
1032	32
1033	19
1033	21
1034	58
1034	48
1035	70
1036	38
1036	35
1037	78
1037	72
1038	55
1038	44
1039	78
1040	4
1040	65
1041	15
1041	42
1042	49
1043	29
1044	90
1044	94
1045	44
1046	50
1047	23
1047	16
1048	25
1048	97
1049	16
1049	9
1050	78
1051	94
1051	62
1052	71
1052	58
1053	48
1053	24
1054	49
1055	10
1055	69
1056	44
1056	70
1057	42
1058	12
1058	91
1059	82
1059	48
1060	15
1061	67
1061	27
1062	18
1062	71
1063	41
1063	68
1064	76
1065	27
1066	61
1066	93
1067	90
1068	79
1069	86
1070	23
1070	33
1071	67
1071	93
1072	49
1073	16
1074	17
1074	7
1075	96
1076	18
1076	28
1077	12
1078	40
1079	89
1079	94
1080	60
1080	76
1081	80
1081	7
1082	38
1082	42
1083	81
1084	33
1084	30
1085	93
1085	45
1086	84
1087	40
1087	37
1088	74
1088	44
1089	30
1089	58
1090	34
1091	95
1091	30
1092	30
1093	63
1094	37
1095	78
1096	67
1096	75
1097	38
1098	4
1098	55
1099	42
1099	97
1100	37
1100	89
1101	37
1101	79
1102	88
1102	9
1103	79
1104	62
1105	44
1106	65
1106	22
1107	19
1107	76
1108	99
1108	68
1109	9
1110	18
1110	78
1111	18
1112	91
1113	33
1114	18
1115	71
1116	22
1117	95
1118	82
1119	49
1119	19
1120	31
1120	87
1121	73
1121	59
1122	63
1123	27
1123	13
1124	42
1125	99
1126	52
1127	47
1127	9
1128	23
1129	48
1130	23
1131	9
1131	82
1132	53
1132	18
1133	89
1134	92
1134	16
1135	31
1135	24
1136	49
1136	27
1137	18
1138	83
1138	98
1139	88
1140	81
1141	71
1142	17
1142	76
1143	84
1144	91
1144	96
1145	99
1145	6
1146	51
1146	49
1147	20
1147	98
1148	34
1149	35
1149	85
1150	41
1151	66
1151	83
1152	66
1153	95
1153	96
1154	31
1155	19
1156	96
1157	1
1158	74
1158	35
1159	99
1159	1
1160	87
1161	79
1162	24
1162	70
1163	88
1163	4
1164	64
1164	23
1165	35
1165	89
1166	93
1167	46
1167	32
1168	92
1168	29
1169	28
1169	59
1170	35
1171	98
1171	64
1172	27
1173	24
1173	97
1174	62
1174	3
1175	71
1175	89
1176	34
1176	26
1177	23
1177	57
1178	24
1178	91
1179	28
1179	25
1180	11
1181	22
1182	53
1182	97
1183	88
1184	1
1185	47
1185	66
1186	38
1187	15
1188	83
1189	81
1190	91
1191	57
1191	13
1192	3
1192	67
1193	8
1193	54
1194	65
1194	93
1195	73
1195	20
1196	87
1196	24
1197	42
1197	18
1198	69
1199	83
1199	61
1200	52
1200	94
301	36
302	50
302	44
303	48
304	77
305	3
306	66
307	35
308	26
308	93
309	74
310	51
311	57
312	58
313	40
314	100
315	94
316	10
317	90
318	20
319	99
320	73
320	13
321	79
321	19
322	65
323	42
324	98
324	75
325	77
326	64
327	34
328	44
329	30
329	65
330	1
331	22
331	34
332	78
333	76
334	41
334	37
335	47
335	36
336	38
337	51
337	91
338	81
339	91
339	93
340	81
341	3
341	60
342	10
342	71
343	36
343	82
344	27
344	60
345	30
345	86
346	1
346	55
347	100
347	84
348	8
348	5
349	55
350	31
350	88
351	45
351	43
352	38
352	67
353	35
354	36
355	85
356	19
357	95
358	75
358	80
359	39
360	51
360	80
361	16
361	12
362	20
363	10
363	13
364	71
365	100
365	83
366	28
367	45
368	9
369	65
370	31
371	26
372	34
372	51
373	82
373	68
374	44
375	27
376	34
377	12
378	16
378	3
379	87
380	93
380	38
381	85
381	77
382	15
383	38
384	92
385	4
385	62
386	25
387	54
388	59
389	17
389	45
390	6
391	87
392	73
393	98
393	50
394	43
395	83
395	47
396	7
397	18
397	69
398	35
398	34
399	20
400	18
400	30
1301	82
1301	55
1302	32
1303	61
1303	72
1304	88
1304	90
1305	3
1306	91
1307	54
1307	44
1308	14
1309	1
1310	50
1310	15
1311	26
1311	53
1312	65
1313	79
1313	80
1314	92
1315	89
1316	13
1317	47
1317	13
1318	38
1318	96
1319	91
1319	3
1320	3
1320	24
1321	8
1322	70
1323	32
1323	22
1324	54
1325	66
1326	92
1326	42
1327	3
1328	71
1328	51
1329	86
1330	88
1331	48
1331	76
1332	26
1333	57
1333	2
1334	85
1335	75
1335	63
1336	13
1336	42
1337	80
1338	13
1339	5
1339	57
1340	1
1341	81
1341	12
1342	49
1343	90
1343	79
1344	31
1344	44
1345	51
1346	91
1346	83
1347	31
1348	9
1348	97
1349	38
1349	15
1350	56
1350	30
1351	29
1352	29
1352	43
1353	78
1353	59
1354	26
1354	98
1355	17
1356	2
1356	23
1357	74
1358	14
1359	5
1360	99
1360	43
1361	26
1361	4
1362	74
1363	44
1363	83
1364	74
1364	91
1365	14
1365	68
1366	13
1367	54
1367	94
1368	26
1369	12
1369	70
1370	56
1370	15
1371	91
1372	33
1373	86
1374	7
1375	92
1376	73
1377	72
1378	37
1379	37
1380	88
1380	77
1381	23
1381	52
1382	1
1382	48
1383	16
1383	97
1384	94
1385	24
1386	36
1387	68
1387	95
1388	91
1389	19
1389	59
1390	91
1390	45
1391	81
1391	92
1392	81
1393	23
1393	41
1394	3
1394	89
1395	52
1395	94
1396	56
1397	100
1397	22
1398	66
1399	11
1399	83
1400	1
1201	13
1202	14
1203	24
1204	79
1204	33
1205	87
1206	8
1206	24
1207	41
1207	65
1208	75
1209	98
1209	44
1210	83
1211	66
1212	85
1213	76
1213	38
1214	38
1214	58
1215	100
1216	85
1217	27
1218	36
1218	37
1219	66
1220	24
1221	39
1221	20
1222	2
1223	74
1223	51
1224	45
1224	58
1225	17
1225	90
1226	26
1226	58
1227	93
1228	34
1228	6
1229	49
1230	30
1230	69
1231	33
1232	72
1233	6
1233	2
1234	16
1234	20
1235	5
1236	95
1236	39
1237	67
1238	80
1239	88
1240	75
1240	15
1241	89
1241	55
1242	28
1243	87
1244	78
1245	79
1245	57
1246	67
1247	66
1248	14
1249	85
1250	23
1251	62
1251	34
1252	77
1252	40
1253	90
1253	78
1254	91
1254	94
1255	73
1256	47
1256	63
1257	29
1257	65
1258	45
1258	23
1259	12
1260	47
1260	35
1261	50
1261	30
1262	31
1262	95
1263	21
1263	13
1264	73
1265	96
1266	23
1266	17
1267	85
1268	25
1268	2
1269	9
1269	28
1270	24
1271	33
1271	80
1272	43
1273	44
1273	47
1274	75
1275	36
1275	65
1276	42
1277	31
1278	39
1279	63
1280	46
1280	26
1281	26
1281	29
1282	31
1283	27
1283	6
1284	83
1285	32
1285	26
1286	25
1287	35
1288	3
1289	68
1289	1
1290	97
1291	36
1292	69
1293	55
1294	38
1295	66
1295	40
1296	53
1297	23
1297	60
1298	90
1298	89
1299	4
1300	9
1300	98
1601	28
1601	56
1602	34
1602	13
1603	24
1604	12
1604	3
1605	73
1606	30
1607	90
1608	48
1608	15
1609	41
1610	25
1611	93
1612	66
1612	2
1613	37
1613	35
1614	19
1614	91
1615	78
1616	61
1616	1
1617	15
1618	59
1618	19
1619	61
1620	16
1621	82
1622	26
1622	40
1623	53
1623	54
1624	70
1625	92
1625	32
1626	50
1627	94
1628	22
1629	58
1630	93
1631	58
1631	71
1632	67
1633	100
1634	23
1634	98
1635	66
1636	3
1637	34
1637	100
1638	24
1639	68
1639	99
1640	80
1640	54
1641	46
1642	68
1643	55
1643	15
1644	83
1644	45
1645	96
1645	45
1646	89
1646	9
1647	43
1648	37
1649	92
1650	20
1651	66
1652	95
1652	80
1653	86
1654	55
1655	64
1656	78
1657	33
1658	28
1658	88
1659	10
1659	54
1660	55
1660	37
1661	60
1661	81
1662	74
1662	99
1663	45
1664	63
1665	48
1666	15
1667	50
1667	80
1668	52
1669	25
1669	94
1670	7
1671	96
1672	6
1672	48
1673	22
1673	11
1674	81
1675	20
1676	50
1677	90
1677	61
1678	73
1678	48
1679	7
1679	61
1680	50
1680	82
1681	65
1681	83
1682	81
1683	62
1684	6
1684	78
1685	14
1685	93
1686	75
1686	91
1687	4
1688	5
1688	82
1689	91
1690	4
1690	69
1691	44
1691	63
1692	60
1692	65
1693	22
1693	41
1694	52
1694	39
1695	71
1696	37
1697	66
1697	38
1698	51
1699	44
1700	75
1700	91
1701	88
1702	18
1703	11
1703	83
1704	55
1705	58
1705	71
1706	69
1706	82
1707	70
1708	1
1709	27
1710	42
1711	72
1711	84
1712	38
1712	96
1713	95
1714	20
1714	85
1715	9
1716	69
1716	66
1717	45
1717	77
1718	23
1719	20
1720	57
1720	1
1721	94
1721	85
1722	54
1722	92
1723	57
1724	54
1724	68
1725	97
1726	90
1727	51
1728	53
1729	17
1730	62
1730	36
1731	5
1731	58
1732	52
1733	74
1734	72
1735	41
1735	20
1736	38
1737	34
1737	30
1738	17
1739	37
1739	12
1740	41
1740	18
1741	7
1742	60
1743	90
1743	91
1744	73
1745	18
1745	3
1746	3
1747	86
1747	50
1748	51
1748	46
1749	77
1749	68
1750	78
1750	21
1751	80
1751	50
1752	38
1752	47
1753	6
1754	79
1754	88
1755	12
1755	20
1756	47
1757	63
1757	48
1758	48
1759	92
1760	27
1761	75
1761	49
1762	82
1763	61
1764	96
1765	78
1765	77
1766	79
1767	50
1767	45
1768	45
1768	82
1769	45
1769	53
1770	79
1771	72
1772	86
1773	88
1774	52
1775	23
1776	72
1777	96
1778	82
1778	19
1779	71
1779	33
1780	20
1781	73
1782	22
1782	12
1783	54
1783	91
1784	33
1785	25
1786	3
1787	20
1788	81
1789	25
1790	32
1791	83
1791	12
1792	58
1792	77
1793	57
1793	69
1794	78
1794	18
1795	88
1795	40
1796	14
1797	17
1798	66
1798	29
1799	85
1799	49
1800	80
1501	23
1501	62
1502	97
1503	56
1504	13
1504	81
1505	5
1505	87
1506	7
1507	80
1508	72
1509	42
1509	31
1510	65
1510	31
1511	60
1511	43
1512	92
1513	76
1514	71
1515	56
1516	8
1516	14
1517	22
1517	50
1518	45
1518	51
1519	53
1520	62
1520	99
1521	32
1521	89
1522	63
1523	16
1523	22
1524	99
1524	33
1525	13
1526	41
1526	3
1527	44
1528	72
1529	71
1530	53
1531	14
1532	59
1532	97
1533	13
1533	75
1534	65
1534	44
1535	28
1536	23
1536	71
1537	21
1537	7
1538	10
1538	23
1539	25
1540	1
1540	57
1541	43
1542	62
1542	49
1543	30
1544	35
1545	91
1546	53
1546	72
1547	30
1547	1
1548	76
1549	16
1550	59
1551	72
1551	10
1552	7
1552	29
1553	11
1554	9
1555	65
1556	59
1557	93
1557	92
1558	73
1558	67
1559	12
1560	11
1560	87
1561	96
1562	52
1563	60
1564	63
1564	6
1565	20
1566	14
1567	21
1567	11
1568	95
1568	49
1569	81
1569	6
1570	4
1570	81
1571	32
1572	100
1572	19
1573	96
1574	64
1574	4
1575	59
1576	46
1577	72
1578	100
1579	45
1579	18
1580	66
1580	46
1581	28
1581	9
1582	44
1583	20
1583	34
1584	88
1585	96
1585	16
1586	58
1586	25
1587	1
1588	74
1589	22
1589	48
1590	58
1590	55
1591	41
1592	51
1592	28
1593	94
1594	92
1595	54
1595	12
1596	69
1596	74
1597	1
1597	45
1598	13
1599	30
1600	17
1801	69
1801	96
1802	55
1803	67
1803	39
1804	97
1805	8
1805	41
1806	48
1806	6
1807	88
1808	42
1809	88
1809	15
1810	61
1811	44
1812	46
1813	20
1813	22
1814	22
1815	64
1815	60
1816	63
1817	45
1818	95
1818	43
1819	6
1819	14
1820	53
1820	64
1821	92
1821	81
1822	26
1823	6
1824	62
1825	77
1825	31
1826	50
1827	98
1827	13
1828	51
1829	79
1829	84
1830	55
1830	2
1831	33
1832	43
1833	44
1834	76
1835	48
1836	74
1836	61
1837	100
1837	82
1838	23
1838	62
1839	24
1839	1
1840	89
1841	88
1842	36
1843	13
1843	74
1844	36
1844	20
1845	4
1846	78
1847	64
1848	48
1849	72
1850	4
1851	76
1851	89
1852	63
1853	14
1854	42
1855	61
1855	31
1856	28
1856	3
1857	92
1858	21
1859	3
1859	48
1860	37
1860	38
1861	19
1861	64
1862	57
1862	97
1863	1
1863	97
1864	6
1865	56
1866	54
1867	37
1867	82
1868	21
1869	98
1869	55
1870	24
1871	46
1872	51
1873	37
1873	75
1874	23
1874	51
1875	61
1875	53
1876	29
1877	75
1877	32
1878	83
1879	77
1880	80
1880	54
1881	25
1881	100
1882	85
1882	73
1883	67
1884	12
1884	25
1885	17
1886	21
1886	74
1887	60
1887	79
1888	58
1889	29
1890	80
1890	69
1891	16
1892	64
1892	100
1893	100
1894	38
1895	84
1895	39
1896	24
1897	45
1897	100
1898	58
1899	62
1900	100
1900	56
1401	55
1402	73
1403	96
1404	16
1404	39
1405	47
1405	56
1406	38
1406	52
1407	64
1407	92
1408	34
1409	51
1409	6
1410	19
1410	39
1411	22
1411	5
1412	11
1412	72
1413	66
1413	24
1414	52
1414	7
1415	23
1415	59
1416	7
1416	40
1417	16
1417	77
1418	82
1419	91
1419	11
1420	48
1420	29
1421	42
1421	11
1422	45
1422	90
1423	67
1424	29
1425	10
1425	72
1426	24
1427	53
1428	50
1429	27
1430	69
1430	59
1431	31
1431	46
1432	94
1433	71
1433	5
1434	60
1434	71
1435	41
1436	40
1436	3
1437	46
1437	65
1438	64
1438	29
1439	27
1439	37
1440	76
1440	49
1441	21
1441	31
1442	74
1442	53
1443	64
1443	98
1444	8
1444	20
1445	54
1445	90
1446	74
1447	45
1448	90
1448	34
1449	4
1450	24
1450	80
1451	31
1452	94
1452	28
1453	71
1454	84
1455	19
1455	3
1456	62
1457	25
1458	32
1458	59
1459	89
1460	49
1460	32
1461	98
1462	13
1463	87
1463	35
1464	68
1464	64
1465	57
1466	18
1467	75
1467	4
1468	78
1469	49
1469	74
1470	68
1471	93
1471	40
1472	82
1472	71
1473	77
1474	29
1475	88
1476	2
1476	31
1477	47
1477	10
1478	47
1479	30
1480	16
1480	94
1481	98
1481	68
1482	40
1482	61
1483	20
1483	46
1484	8
1485	51
1486	51
1486	81
1487	46
1488	18
1488	66
1489	60
1490	55
1491	5
1491	49
1492	37
1492	7
1493	48
1493	35
1494	34
1495	88
1496	28
1497	3
1497	11
1498	38
1498	30
1499	32
1500	15
1500	42
101	75
101	65
102	79
103	85
104	32
104	69
105	95
105	24
106	78
106	68
107	28
107	25
108	47
109	42
110	28
110	50
111	88
111	11
112	50
112	30
113	9
113	28
114	24
115	2
116	68
117	9
118	61
118	56
119	63
120	23
120	22
121	45
122	11
122	18
123	4
123	95
124	27
125	89
125	26
126	31
126	98
127	89
128	28
129	98
129	90
130	40
130	23
131	44
132	99
133	75
134	83
134	74
135	71
136	82
137	81
137	52
138	6
138	91
139	12
139	75
140	44
141	87
141	96
142	54
142	70
143	80
143	60
144	92
144	49
145	29
146	63
147	45
147	37
148	79
149	15
150	92
151	3
151	20
152	89
153	100
153	67
154	24
154	40
155	68
156	24
156	51
157	53
158	61
159	28
160	68
161	32
161	83
162	99
163	59
164	71
164	67
165	34
165	66
166	32
166	26
167	12
167	75
168	93
168	6
169	20
170	52
171	35
172	38
172	95
173	26
173	39
174	95
175	50
176	39
176	87
177	17
177	77
178	85
178	80
179	86
179	85
180	39
180	66
181	39
181	30
182	53
183	94
184	9
184	67
185	55
185	94
186	38
186	55
187	94
187	93
188	57
189	39
189	21
190	75
190	95
191	79
191	55
192	35
192	75
193	25
193	98
194	50
195	99
196	33
196	50
197	38
198	15
198	91
199	73
199	92
200	69
1901	37
1902	76
1903	40
1904	49
1904	97
1905	43
1906	53
1907	79
1907	65
1908	41
1908	77
1909	49
1910	66
1910	17
1911	6
1912	63
1912	41
1913	21
1914	45
1915	91
1916	14
1917	84
1917	13
1918	64
1919	27
1920	39
1921	94
1922	72
1923	15
1924	68
1925	23
1926	55
1927	40
1928	86
1928	37
1929	61
1930	60
1931	100
1931	17
1932	92
1932	19
1933	79
1933	53
1934	58
1934	19
1935	61
1935	18
1936	34
1937	50
1938	69
1939	23
1939	94
1940	3
1941	69
1942	75
1943	77
1944	73
1945	85
1945	74
1946	23
1946	76
1947	32
1948	47
1949	100
1949	77
1950	52
1950	44
1951	18
1951	37
1952	9
1952	76
1953	69
1953	65
1954	68
1955	77
1955	68
1956	49
1957	23
1957	67
1958	31
1958	30
1959	21
1959	49
1960	39
1960	82
1961	74
1962	8
1962	33
1963	33
1964	65
1964	92
1965	65
1965	28
1966	52
1967	60
1968	14
1968	38
1969	14
1969	88
1970	67
1970	45
1971	81
1971	62
1972	20
1973	80
1974	19
1974	77
1975	68
1975	32
1976	18
1977	48
1977	8
1978	98
1979	51
1980	54
1981	75
1981	51
1982	87
1983	49
1984	92
1984	89
1985	19
1985	29
1986	41
1986	78
1987	22
1987	87
1988	14
1989	50
1990	78
1990	2
1991	98
1992	100
1993	72
1994	15
1994	54
1995	26
1996	46
1996	85
1997	39
1997	59
1998	83
1998	100
1999	88
1999	79
2000	20
2001	2
2001	99
2002	44
2002	25
2003	35
2004	50
2005	89
2006	4
2006	60
2007	74
2008	23
2009	21
2009	24
2010	23
2010	91
2011	63
2011	46
2012	5
2013	39
2013	51
2014	66
2015	32
2015	94
2016	66
2017	64
2017	7
2018	35
2018	55
2019	1
2020	56
2020	52
2021	6
2022	36
2023	96
2024	80
2024	41
2025	29
2025	84
2026	67
2027	9
2027	82
2028	3
2028	57
2029	53
2029	66
2030	59
2030	61
2031	6
2031	1
2032	10
2032	4
2033	22
2034	88
2035	91
2036	26
2036	24
2037	82
2037	70
2038	75
2038	2
2039	36
2039	71
2040	70
2040	16
2041	95
2041	3
2042	53
2042	75
2043	93
2043	68
2044	45
2045	57
2045	65
2046	65
2047	81
2047	77
2048	27
2048	83
2049	89
2049	86
2050	13
2050	53
2051	9
2051	23
2052	69
2052	38
2053	62
2053	68
2054	50
2054	37
2055	59
2056	88
2057	28
2057	49
2058	26
2058	2
2059	92
2059	57
2060	39
2060	42
2061	22
2061	98
2062	73
2062	63
2063	3
2064	74
2064	72
2065	44
2066	47
2067	74
2067	31
2068	14
2068	84
2069	87
2070	99
2070	69
2071	84
2071	51
2072	2
2072	44
2073	35
2073	16
2074	41
2074	82
2075	44
2075	34
2076	55
2077	96
2077	12
2078	68
2079	73
2080	41
2080	17
2081	65
2082	83
2083	9
2084	96
2085	97
2086	61
2086	23
2087	76
2088	34
2088	64
2089	87
2090	33
2091	29
2092	72
2092	32
2093	40
2094	8
2095	19
2095	17
2096	55
2096	37
2097	12
2097	9
2098	8
2098	70
2099	68
2099	98
2100	19
2100	66
201	98
201	86
202	37
203	67
203	7
204	82
205	80
206	56
207	50
207	53
208	55
208	71
209	89
209	53
210	15
210	79
211	45
211	4
212	27
213	100
214	23
214	45
215	86
216	82
216	76
217	44
217	88
218	10
218	27
219	35
219	48
220	17
221	6
222	35
223	51
223	79
224	16
225	94
226	50
227	100
228	26
228	47
229	19
230	42
230	41
231	84
232	39
233	3
233	30
234	68
235	45
235	60
236	47
236	8
237	83
238	92
238	53
239	15
240	6
240	86
241	74
241	46
242	83
242	51
243	56
243	77
244	84
245	11
246	40
246	38
247	40
247	29
248	84
248	48
249	18
249	9
250	10
251	24
252	74
252	100
253	64
253	71
254	77
254	23
255	52
256	48
257	50
258	39
259	82
260	14
260	55
261	72
261	88
262	28
263	77
264	33
265	34
265	77
266	33
267	97
268	54
269	34
270	66
271	28
272	64
272	24
273	80
273	25
274	79
274	56
275	27
276	31
276	71
277	54
277	81
278	76
279	31
279	39
280	50
280	12
281	65
281	75
282	77
283	38
283	15
284	51
285	21
285	16
286	16
287	36
288	33
288	85
289	23
289	99
290	94
290	96
291	52
292	84
293	13
293	14
294	70
294	78
295	30
295	23
296	20
297	63
297	87
298	16
299	62
300	98
300	54
1	55
2	8
3	42
3	56
4	25
4	95
5	52
6	76
6	23
7	3
7	89
8	93
8	17
9	5
10	69
11	33
12	9
13	99
14	41
14	19
15	81
15	68
16	58
16	47
17	56
17	93
18	26
18	58
19	32
19	91
20	93
21	18
21	82
22	62
23	43
24	88
25	32
26	95
26	89
27	67
27	82
28	79
28	80
29	82
30	33
31	33
31	70
32	35
33	6
34	2
35	98
35	67
36	96
36	24
37	13
37	33
38	100
38	32
39	43
40	68
41	84
41	32
42	89
43	25
44	58
44	35
45	85
46	1
46	3
47	24
47	45
48	40
49	86
50	82
50	53
51	66
52	3
53	39
54	24
55	48
56	63
57	24
57	14
58	85
59	78
59	50
60	2
61	6
62	24
63	62
63	35
64	73
65	13
66	24
66	82
67	41
68	20
69	50
70	58
71	90
71	11
72	76
73	96
74	52
75	94
76	23
76	70
77	98
78	91
78	70
79	53
79	42
80	63
80	73
81	55
81	66
82	12
83	20
84	4
85	55
86	86
86	31
87	85
87	55
88	13
88	73
89	33
89	64
90	27
90	42
91	50
92	64
93	9
93	75
94	17
94	72
95	87
96	19
96	33
97	64
97	97
98	81
98	7
99	86
99	57
100	25
100	3
\.


--
-- Data for Name: relation_47; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_47 (product_id, bought_together_product_product_id) FROM stdin;
501	1409
501	888
501	1513
502	972
502	475
503	684
503	649
503	871
504	1648
504	1581
504	452
505	1523
505	1020
506	1967
506	147
507	401
508	1129
508	1385
509	1966
509	545
510	75
511	5
511	1238
511	547
512	1127
513	1892
513	1956
514	217
515	99
515	1216
515	687
516	2060
517	1802
518	1128
519	1417
519	1621
519	846
520	1123
521	1005
522	2015
522	1649
523	125
524	1939
524	1392
524	1167
525	1549
526	304
526	549
527	755
527	1861
528	1039
529	699
530	988
530	632
530	830
531	130
531	412
532	990
533	1999
534	61
534	1953
535	867
535	387
535	126
536	458
537	1745
537	1228
538	1577
538	641
539	889
540	1208
540	411
540	580
541	2011
542	682
543	1050
543	1946
544	2038
545	1338
545	796
545	910
546	1272
547	1354
547	1294
547	1579
548	561
548	1014
548	303
549	1492
549	121
550	1239
550	883
551	1054
551	1627
552	1241
552	2019
552	409
553	1041
553	918
553	1417
554	1796
555	300
555	537
556	1845
556	1583
557	527
558	924
558	1404
559	764
559	1753
560	1760
561	819
561	1124
562	2086
563	1395
564	1767
564	605
564	1356
565	687
565	424
566	1993
566	1996
566	1765
567	1778
568	1225
568	744
569	1379
570	758
570	1868
570	1214
571	831
572	595
573	1060
574	449
575	832
575	1414
575	459
576	1223
577	24
577	458
577	436
578	572
579	1696
579	78
580	969
581	109
581	834
582	1221
582	267
582	867
583	360
583	490
583	378
584	815
584	1091
584	1241
585	327
586	46
587	1965
588	498
588	963
588	858
589	743
589	803
590	745
591	910
591	623
591	1428
592	1959
592	147
593	1845
593	1545
594	621
594	781
595	1305
595	1680
595	1236
596	1151
596	1062
597	803
597	1595
597	1264
598	783
599	1293
599	866
599	373
600	1965
600	285
600	38
601	23
601	644
601	997
602	1782
602	1626
602	446
603	105
603	471
603	498
604	1834
604	571
604	1528
605	387
605	1069
605	75
606	167
606	65
607	1709
608	1960
608	127
608	601
609	1260
609	278
609	817
610	836
610	1271
610	1884
611	1497
612	1638
612	731
612	1693
613	21
613	1828
613	1333
614	1266
614	359
615	2033
615	1882
615	264
616	1763
617	750
618	411
618	1927
619	492
620	1652
620	1826
621	1927
621	1480
621	2096
622	1815
622	657
622	2045
623	1842
623	1280
624	1096
625	1280
626	135
626	885
627	146
628	1621
628	1183
628	740
629	748
629	292
630	418
630	820
631	2008
632	1509
632	1559
633	2026
634	1641
634	117
634	465
635	1202
636	753
636	764
636	92
637	197
637	1078
638	797
638	534
639	1282
640	2086
640	2056
641	304
641	1860
641	660
642	1455
643	1657
643	192
644	1348
644	1799
645	1340
646	394
646	202
646	730
647	224
647	1516
647	1344
648	1618
649	1957
649	1207
649	2050
650	1077
651	102
651	1174
652	487
652	548
653	282
653	205
654	1967
654	798
654	1883
655	1235
655	1720
656	2067
656	839
657	1298
657	800
657	21
658	1791
659	1242
659	20
660	1198
660	869
661	778
661	1264
662	979
662	781
663	387
663	1894
663	1692
664	2081
664	1178
665	599
665	307
665	1819
666	578
666	1951
666	1111
667	2047
667	361
668	1131
669	911
670	772
670	1275
670	414
671	554
671	210
671	811
672	709
673	753
673	1374
673	314
674	1444
675	1763
675	1102
675	40
676	1573
676	289
677	181
677	1693
677	773
678	297
679	1293
679	1126
680	885
680	211
681	249
681	400
681	1880
682	195
682	831
683	769
684	1716
684	7
685	315
686	1698
686	102
687	1240
687	1088
687	348
688	687
688	182
689	342
689	1379
690	1557
690	1556
691	102
691	1388
692	646
693	561
693	1846
694	410
694	476
694	568
695	1998
695	644
696	1439
696	2026
697	969
697	1085
697	32
698	1153
698	121
698	1127
699	1568
700	1084
401	1445
402	1146
402	301
403	2066
403	1690
404	1939
405	268
406	940
406	1455
407	1117
407	1709
408	774
408	1780
408	1641
409	320
409	1400
410	1254
411	1035
412	125
413	1679
413	821
414	472
414	1527
415	1149
415	1036
415	484
416	1258
417	1442
418	1939
419	1755
419	435
420	1329
421	1589
421	596
422	1176
422	864
423	1165
423	1385
423	2060
424	1678
424	1264
425	1279
426	96
426	1710
426	1132
427	602
428	458
429	625
430	1831
430	1587
431	1759
431	1287
431	879
432	865
432	1215
432	1412
433	1107
433	1682
434	901
435	377
436	848
437	2031
437	1173
437	1308
438	1014
438	671
439	1207
440	103
441	159
441	259
441	1865
442	755
443	245
444	155
445	333
445	1902
445	1512
446	764
446	26
446	1966
447	563
447	473
448	1965
448	1013
449	606
449	1542
449	1197
450	1107
450	1031
451	210
451	26
452	544
452	356
452	1883
453	1591
453	250
453	604
454	309
455	774
456	954
456	1358
456	1364
457	1825
457	1849
457	844
458	1006
459	83
459	270
460	211
461	1045
462	933
463	1372
464	650
464	1893
464	1104
465	1378
466	992
467	243
468	1941
468	1336
468	476
469	1037
470	6
470	784
471	843
471	1847
471	416
472	70
473	1893
474	1338
474	157
475	1958
475	717
475	966
476	74
476	1197
477	1337
478	1370
478	2004
478	220
479	526
479	890
480	517
481	60
482	1525
482	1797
483	599
484	875
484	1280
484	1861
485	918
485	147
486	77
486	1517
487	1058
488	1199
488	317
489	1920
490	1596
490	1338
491	1553
491	612
491	1517
492	241
492	1792
493	1826
493	597
493	515
494	1369
494	2017
495	1998
495	162
495	1332
496	1174
496	1890
497	992
497	1822
497	375
498	1650
498	1851
498	1585
499	223
499	441
500	1924
500	158
701	1308
701	1355
702	1929
702	764
702	350
703	1541
703	1913
704	1612
704	605
705	49
705	755
706	24
706	1150
707	2022
708	1541
708	1066
709	1681
710	823
710	1891
711	1575
711	1067
712	544
712	695
713	1844
713	1776
713	1750
714	1629
715	246
715	783
716	1947
716	1328
716	1648
717	267
717	835
717	1389
718	481
719	1167
719	1067
719	1344
720	65
721	1894
722	1379
723	958
723	1893
723	764
724	575
724	1526
724	1845
725	1888
725	1256
725	252
726	1727
726	713
726	381
727	284
727	656
727	1773
728	1224
729	1905
729	756
729	1217
730	1969
730	1960
731	1990
731	910
732	1960
733	1194
734	86
735	34
735	299
736	851
736	1663
737	105
737	228
737	1672
738	1404
738	1545
738	797
739	1924
739	738
740	56
741	2073
741	846
742	302
743	210
743	1305
744	1406
745	504
745	1282
745	681
746	857
747	1141
747	221
748	2056
748	1349
749	1490
750	1877
751	1031
751	882
751	568
752	738
753	669
753	294
753	1764
754	1917
754	1629
755	1573
756	840
756	807
757	43
757	820
758	661
759	1353
759	1576
760	1895
761	632
761	1292
761	292
762	1749
763	1328
764	1779
765	246
765	1378
765	1986
766	1957
766	1135
767	1462
768	978
769	1847
769	585
770	2007
770	246
770	33
771	974
772	970
772	2043
773	1987
774	107
774	487
774	309
775	1518
776	398
776	1677
776	248
777	1731
777	1964
778	1684
778	1795
779	229
779	2081
779	1937
780	2073
780	327
781	1153
782	1814
783	2037
784	552
784	194
785	1325
785	760
786	74
786	2028
787	100
787	1151
788	376
788	1826
788	225
789	1912
789	1602
789	1644
790	197
790	1242
791	943
791	424
791	947
792	1465
792	1821
792	1317
793	1645
794	1499
795	1320
795	568
795	754
796	16
796	207
796	1814
797	1947
797	266
798	1890
799	428
799	42
800	1124
800	390
801	205
801	2087
802	331
803	1284
803	1566
804	1058
804	1161
805	182
805	2049
806	1457
807	70
807	1985
807	1953
808	135
808	422
809	154
810	1509
810	1858
811	1523
812	575
813	564
813	437
813	977
814	1694
814	636
815	944
815	270
815	790
816	1203
816	946
817	2052
817	333
817	378
818	1182
818	1662
818	1783
819	1885
819	798
819	414
820	1734
820	136
820	1934
821	660
821	1491
821	278
822	698
823	1025
823	562
824	1548
824	484
825	1166
825	998
825	1861
826	1230
827	579
827	915
827	1976
828	762
828	61
829	1634
830	831
831	97
831	801
831	100
832	852
832	1448
832	1993
833	725
833	671
833	1403
834	1439
834	827
834	1044
835	159
835	1469
836	112
836	59
836	1676
837	1734
838	450
839	1296
840	1188
840	1800
841	1711
841	611
842	1002
842	814
842	1907
843	328
844	2097
845	642
845	598
846	2004
846	323
847	778
847	617
847	434
848	1269
848	793
849	935
849	483
849	43
850	68
850	804
851	1309
852	1055
853	999
854	1866
854	1056
855	67
855	1191
855	816
856	797
857	555
857	1306
857	1844
858	768
858	1140
859	1592
859	1615
859	1086
860	385
861	71
862	1340
862	1053
863	727
864	1574
865	1269
866	1976
866	799
867	1782
867	444
867	410
868	13
869	1730
869	418
869	191
870	1005
871	1493
871	139
871	71
872	1258
872	537
872	366
873	38
874	273
874	97
874	1288
875	1895
876	1
877	1274
878	614
879	1896
880	486
880	52
880	246
881	1644
881	1205
882	358
883	1784
883	353
883	628
884	673
884	1357
884	1684
885	35
886	539
886	1400
886	1972
887	346
888	493
888	495
889	785
890	778
890	1261
891	1330
892	1260
892	1532
892	1282
893	765
893	1297
894	1920
894	1948
894	505
895	293
895	479
896	657
896	82
897	328
898	1198
898	159
899	1255
899	882
899	1553
900	1424
900	1100
901	1255
901	340
902	1528
902	1419
902	1180
903	1149
904	179
905	1225
906	369
906	1
906	1637
907	500
907	1555
907	364
908	1054
908	1552
908	1220
909	305
909	1399
909	1995
910	1488
910	1884
910	672
911	947
912	247
912	697
913	1929
913	1927
914	541
914	831
914	926
915	566
915	995
915	1443
916	1765
916	684
917	1122
918	87
919	1234
920	211
920	1779
921	1805
922	881
922	874
923	1826
923	1455
923	2005
924	2
925	474
925	122
925	1239
926	850
927	480
928	32
928	1098
928	1450
929	191
929	94
930	820
930	66
931	1259
931	1249
931	2032
932	1537
932	150
933	1130
933	1042
934	1438
935	1370
936	337
936	703
936	1339
937	1166
937	1449
938	793
938	412
938	293
939	853
939	2047
939	1462
940	1333
941	500
941	1164
941	52
942	1957
942	112
943	92
943	1402
943	1618
944	1960
945	293
945	312
945	1625
946	191
946	1616
946	168
947	1308
948	354
949	1696
949	300
949	857
950	857
951	1669
952	1011
953	1518
954	296
954	1775
954	649
955	1169
955	327
956	511
956	1184
957	1484
957	571
958	760
958	281
958	996
959	799
959	696
959	108
960	249
961	629
962	1110
962	1621
962	221
963	412
963	730
964	1093
965	1082
965	501
965	2005
966	392
967	1554
968	562
968	1762
969	881
969	619
969	2025
970	2099
971	489
971	1636
971	2019
972	1693
972	1768
973	182
973	212
973	987
974	1442
974	1586
974	562
975	743
975	1608
975	373
976	878
977	2047
978	239
978	932
978	575
979	1437
979	137
979	1781
980	1519
981	552
981	1991
981	1551
982	165
983	367
984	1767
984	858
985	838
986	1162
986	1611
987	1232
987	787
988	1330
988	305
989	653
990	1306
990	456
991	82
991	1227
992	1529
992	610
993	675
993	1055
994	670
994	1596
995	1528
995	497
996	1914
996	838
997	1359
998	424
999	928
999	1738
1000	1066
1001	647
1002	397
1002	1677
1002	1680
1003	144
1003	1388
1004	1450
1005	302
1005	1880
1005	1851
1006	105
1006	369
1007	2008
1008	420
1009	518
1009	57
1010	1353
1010	1772
1010	1104
1011	1545
1011	932
1012	1372
1012	2024
1013	1779
1013	1761
1013	1689
1014	76
1014	1237
1015	2030
1016	1300
1016	1209
1016	207
1017	2023
1018	859
1018	1507
1019	390
1019	861
1020	716
1020	1779
1021	927
1021	1255
1021	221
1022	447
1023	1555
1024	84
1025	1787
1025	447
1025	2048
1026	1989
1027	534
1028	1861
1028	1543
1028	827
1029	6
1029	1752
1029	1301
1030	1888
1031	1387
1031	977
1032	1247
1032	1027
1033	1059
1033	484
1033	1926
1034	734
1034	461
1035	973
1036	1003
1037	1253
1038	1239
1038	123
1038	1823
1039	80
1040	373
1040	1192
1040	1639
1041	1091
1041	965
1042	746
1042	238
1043	1643
1043	665
1043	1840
1044	1874
1044	1558
1044	1226
1045	1920
1046	927
1046	146
1047	1002
1048	1667
1048	496
1049	1933
1049	42
1049	1780
1050	1117
1051	1282
1051	1359
1052	1056
1053	1138
1053	1731
1053	1157
1054	1913
1054	190
1055	1294
1055	1235
1055	1091
1056	1918
1056	1889
1057	1252
1058	996
1059	1308
1059	707
1059	182
1060	488
1061	1326
1061	116
1062	1665
1062	1848
1063	574
1063	1144
1063	62
1064	391
1064	816
1064	530
1065	262
1065	172
1066	10
1066	1767
1066	35
1067	1481
1067	1149
1067	1840
1068	1243
1069	1327
1070	214
1071	1928
1071	1443
1072	1271
1072	287
1072	1758
1073	1615
1073	736
1073	525
1074	1325
1074	985
1074	1356
1075	1357
1075	1844
1076	770
1077	690
1078	1309
1079	766
1079	1725
1079	234
1080	1272
1080	198
1080	589
1081	391
1081	1908
1082	1474
1082	554
1082	1994
1083	1651
1083	1788
1083	909
1084	799
1084	1021
1084	562
1085	1614
1085	703
1086	770
1086	83
1086	55
1087	779
1087	1051
1087	420
1088	378
1088	591
1089	842
1089	1231
1090	1509
1090	1825
1090	105
1091	1086
1091	233
1091	525
1092	1821
1093	1772
1094	1456
1094	170
1095	780
1095	1449
1096	1702
1096	130
1097	194
1098	893
1098	804
1098	1739
1099	19
1100	227
1100	1248
1100	680
1101	1777
1101	839
1102	714
1102	669
1103	1216
1103	2057
1104	1298
1104	364
1104	200
1105	2070
1106	1258
1106	2085
1106	311
1107	1739
1107	1152
1108	950
1108	42
1109	770
1110	2033
1111	609
1111	2017
1112	1659
1113	1418
1114	2074
1114	297
1115	428
1115	1284
1116	692
1117	1196
1117	2001
1118	1901
1119	1961
1120	1902
1120	460
1120	701
1121	728
1121	426
1121	293
1122	1406
1122	1080
1122	1413
1123	1369
1123	1641
1124	898
1125	147
1126	94
1126	809
1127	1674
1127	783
1128	969
1128	1733
1129	1323
1130	854
1130	703
1131	197
1132	1799
1132	44
1132	1911
1133	515
1134	313
1135	1795
1135	477
1135	1790
1136	1817
1136	853
1136	2016
1137	1263
1137	1194
1137	1
1138	1392
1138	246
1139	507
1140	1419
1141	824
1142	800
1142	1074
1142	583
1143	1700
1143	345
1143	53
1144	1363
1144	1263
1145	1792
1146	192
1147	843
1147	235
1147	1339
1148	1207
1148	1396
1148	1230
1149	1854
1150	2071
1150	62
1151	1863
1152	1545
1152	1825
1152	1611
1153	1849
1153	336
1154	1499
1154	1951
1154	486
1155	257
1156	1165
1156	650
1157	1795
1157	1747
1157	883
1158	621
1159	1079
1159	1907
1160	1558
1161	1034
1161	746
1162	966
1162	197
1162	2092
1163	1995
1164	1077
1165	445
1165	828
1165	675
1166	270
1167	1145
1167	936
1167	904
1168	162
1168	1469
1168	427
1169	132
1169	637
1169	1743
1170	766
1170	1448
1170	517
1171	1526
1171	403
1171	943
1172	716
1172	201
1172	1395
1173	1814
1173	933
1174	506
1174	436
1174	1061
1175	75
1175	1660
1176	686
1176	1132
1176	604
1177	268
1177	29
1177	1952
1178	199
1179	322
1180	332
1180	1537
1180	1947
1181	1042
1182	1024
1183	693
1184	759
1184	239
1185	1186
1185	606
1185	2068
1186	1642
1187	1555
1187	593
1188	1308
1188	2061
1188	1303
1189	703
1189	377
1190	1775
1191	419
1191	1406
1191	74
1192	310
1192	197
1192	1143
1193	1595
1194	732
1195	1733
1195	690
1196	962
1196	1247
1196	2001
1197	448
1197	1294
1198	1926
1198	1510
1199	521
1199	1356
1199	8
1200	640
301	1242
301	1388
302	845
303	1913
304	1070
304	1882
305	1848
305	1556
306	1130
307	184
308	30
308	1127
309	1683
309	1376
310	1243
310	310
311	1403
311	1127
312	725
312	226
313	160
313	1589
313	1186
314	607
315	964
316	1674
316	1082
317	1240
318	548
319	48
319	511
320	1823
321	988
322	182
322	232
322	357
323	1342
323	1298
324	1749
324	1069
324	602
325	143
326	1099
327	290
328	1288
328	1992
329	1898
329	1035
329	895
330	1379
330	1102
331	1890
331	48
331	831
332	35
333	1003
333	2
334	1140
334	268
335	1400
336	1419
336	691
336	1406
337	1169
338	751
339	1459
340	667
340	30
340	624
341	1044
341	338
341	744
342	595
343	579
343	72
344	487
345	1606
346	218
347	274
348	1529
348	1832
349	910
349	1039
349	697
350	1507
350	88
351	736
351	669
351	1959
352	153
352	1560
353	512
353	1299
354	1341
355	1737
356	474
356	2031
357	83
357	320
358	1509
358	262
359	1579
360	2005
360	1945
360	434
361	250
362	298
362	913
362	519
363	620
364	1070
364	1554
365	859
365	734
365	722
366	834
366	580
366	411
367	669
367	1655
367	1055
368	1976
368	1365
368	883
369	92
370	1985
370	529
370	1988
371	1227
371	776
372	510
372	1006
372	1422
373	292
373	51
374	1350
374	150
375	1447
376	872
377	1402
377	790
378	903
379	655
380	1715
380	1741
380	812
381	791
382	1729
382	1936
383	1625
383	1610
384	560
384	685
384	734
385	281
385	951
386	1988
386	104
386	1693
387	47
387	913
387	898
388	862
388	1091
389	1610
389	1002
389	1111
390	1299
390	60
390	490
391	1958
391	471
391	76
392	600
392	1256
392	1073
393	451
394	495
394	386
395	1298
396	593
396	314
397	661
397	461
397	455
398	386
398	1105
399	1400
399	120
400	2016
1301	402
1302	180
1303	905
1303	4
1303	1099
1304	2084
1304	21
1304	1555
1305	1317
1305	895
1306	774
1306	398
1307	1545
1307	139
1307	122
1308	711
1309	890
1309	1770
1309	62
1310	1999
1310	1247
1310	1445
1311	722
1311	1179
1311	491
1312	632
1312	1442
1313	622
1313	1810
1314	469
1314	1915
1315	552
1316	196
1316	1278
1316	1393
1317	1352
1317	98
1318	485
1318	609
1319	1496
1319	282
1320	1398
1320	1916
1321	320
1321	368
1321	1822
1322	2036
1322	1088
1322	1781
1323	1797
1324	1468
1324	1693
1324	1813
1325	854
1326	676
1327	853
1328	105
1328	1832
1329	1184
1329	719
1330	2009
1331	2098
1331	606
1331	777
1332	645
1332	1727
1332	366
1333	1896
1333	292
1334	1597
1334	1931
1334	1437
1335	1594
1336	926
1336	1687
1337	282
1337	1691
1337	413
1338	755
1338	787
1338	1482
1339	1502
1339	317
1340	323
1340	1132
1340	683
1341	481
1342	517
1343	1724
1343	1339
1343	192
1344	976
1344	1974
1344	249
1345	868
1345	1874
1345	1598
1346	2058
1346	1730
1346	301
1347	1051
1347	477
1348	1604
1349	1572
1350	1812
1350	2016
1351	1236
1351	105
1352	1312
1352	1534
1352	781
1353	2086
1353	1308
1354	1398
1354	1703
1354	701
1355	1404
1355	254
1355	1121
1356	1189
1356	1951
1357	580
1357	92
1358	137
1358	338
1358	2055
1359	1050
1359	670
1360	543
1361	783
1361	1855
1362	1443
1362	301
1362	1406
1363	1737
1363	748
1364	722
1364	2066
1365	1127
1365	1946
1365	713
1366	2041
1367	1416
1368	224
1368	632
1369	500
1370	1309
1371	1273
1371	770
1371	1079
1372	1536
1372	1050
1372	656
1373	595
1373	1460
1373	796
1374	1946
1374	806
1375	2010
1376	345
1376	260
1376	1754
1377	1885
1377	1822
1378	521
1378	1794
1379	1649
1379	1035
1379	6
1380	1317
1380	750
1381	1420
1381	1805
1382	140
1383	1478
1383	1204
1383	1136
1384	450
1384	108
1384	1239
1385	663
1385	134
1386	610
1386	1188
1387	17
1387	1413
1387	46
1388	1205
1388	732
1388	265
1389	1006
1389	141
1389	98
1390	1296
1390	1104
1390	528
1391	621
1391	651
1391	1676
1392	130
1392	1667
1392	944
1393	1632
1393	1469
1394	1940
1394	1882
1394	1755
1395	296
1395	1771
1395	1351
1396	1737
1396	74
1397	1699
1397	142
1397	513
1398	66
1398	380
1399	1522
1399	1943
1400	1451
1400	421
1400	1668
1201	1116
1201	119
1201	408
1202	190
1203	1768
1204	1735
1204	177
1204	2022
1205	1830
1206	1325
1207	633
1208	305
1209	1609
1210	1734
1211	1
1211	510
1211	357
1212	1986
1212	201
1212	386
1213	839
1213	1942
1213	2009
1214	213
1215	1700
1215	1612
1216	1697
1216	602
1216	1151
1217	695
1217	1791
1218	1097
1218	1178
1219	883
1219	990
1219	204
1220	276
1220	1538
1221	765
1221	193
1222	1736
1222	477
1223	1343
1223	237
1224	1553
1225	2061
1226	1671
1226	49
1226	1184
1227	218
1228	1843
1228	1289
1229	1068
1229	583
1230	1939
1231	166
1231	716
1232	1042
1232	971
1233	309
1233	282
1234	1777
1235	1378
1235	1426
1236	1316
1236	975
1236	1065
1237	1599
1237	283
1237	458
1238	1708
1238	1804
1239	1524
1239	311
1239	423
1240	847
1240	854
1241	1842
1241	1196
1241	1553
1242	81
1243	831
1243	1295
1244	137
1245	2033
1245	2099
1245	104
1246	1065
1246	1624
1246	1948
1247	108
1247	1782
1248	243
1249	1013
1249	410
1250	1150
1250	1755
1251	1467
1252	791
1252	370
1253	1135
1254	763
1254	1964
1254	1372
1255	70
1256	376
1257	1442
1257	1041
1257	1096
1258	1731
1258	119
1259	943
1260	922
1260	1733
1260	170
1261	1904
1262	88
1262	2057
1262	850
1263	936
1263	807
1263	2091
1264	2070
1265	1730
1265	240
1265	714
1266	1080
1266	1900
1266	1233
1267	786
1267	66
1267	1480
1268	196
1269	1649
1270	153
1271	1992
1272	1984
1273	1705
1274	1455
1274	651
1275	1818
1276	1525
1276	738
1277	656
1278	1052
1278	263
1278	1200
1279	1439
1279	2074
1280	1679
1280	781
1280	2066
1281	1264
1281	1622
1282	846
1283	854
1283	1399
1283	1608
1284	40
1285	768
1286	424
1287	54
1287	1250
1287	956
1288	914
1288	1765
1289	1591
1289	1003
1290	267
1291	1905
1291	1266
1292	1525
1292	202
1293	1823
1293	1404
1293	1073
1294	335
1294	1673
1294	975
1295	475
1295	429
1296	1499
1296	1938
1297	37
1297	1416
1297	1695
1298	467
1299	1063
1300	672
1300	725
1300	1720
1601	2045
1602	1431
1602	172
1603	1942
1603	1093
1604	179
1604	1116
1605	1354
1606	1682
1607	556
1607	1406
1607	1033
1608	1966
1609	1967
1609	1031
1610	1926
1610	1917
1610	133
1611	1683
1611	806
1612	400
1612	750
1613	1380
1613	1367
1613	1215
1614	1339
1614	253
1614	537
1615	172
1616	845
1616	482
1617	1711
1617	660
1618	1803
1618	1686
1618	875
1619	326
1619	69
1619	1953
1620	1575
1620	838
1621	638
1622	463
1622	1346
1623	1631
1623	1250
1624	1986
1625	1462
1625	1694
1625	1060
1626	20
1626	1445
1627	561
1628	1921
1629	969
1629	1534
1629	1648
1630	1970
1630	1790
1630	1400
1631	1599
1632	2057
1632	2075
1632	1333
1633	96
1633	2042
1633	1929
1634	1322
1634	2005
1634	1132
1635	591
1636	1624
1636	2035
1637	1287
1637	246
1638	996
1638	1454
1638	504
1639	1940
1639	1340
1640	1038
1641	1700
1641	705
1642	1352
1642	1090
1642	1926
1643	235
1644	1234
1644	150
1644	1083
1645	104
1645	762
1645	673
1646	1573
1646	1027
1646	1209
1647	1048
1648	467
1649	1365
1649	468
1650	131
1650	924
1651	298
1652	447
1653	17
1653	1640
1654	1226
1655	1472
1655	1600
1656	798
1657	1078
1658	206
1658	717
1659	688
1660	303
1660	715
1661	1285
1661	1772
1662	1054
1662	1286
1663	962
1664	1262
1664	639
1664	1272
1665	915
1665	1812
1666	404
1666	1770
1667	2073
1668	1293
1668	1538
1669	781
1669	1934
1669	722
1670	174
1670	1082
1670	363
1671	948
1671	349
1672	1998
1672	6
1672	486
1673	587
1673	1356
1674	1535
1675	917
1675	1778
1675	1412
1676	1469
1677	1688
1677	1292
1678	1080
1678	553
1679	42
1679	167
1679	1164
1680	1528
1680	2068
1681	721
1681	1597
1681	1538
1682	233
1682	1930
1682	2095
1683	317
1683	1617
1683	1431
1684	1300
1684	986
1685	1206
1685	1656
1685	1724
1686	409
1687	765
1687	1253
1688	1672
1688	272
1688	1847
1689	1646
1689	56
1689	40
1690	1552
1690	486
1690	944
1691	786
1691	52
1692	1219
1692	1597
1693	832
1693	797
1694	208
1694	16
1695	1234
1695	770
1695	1006
1696	310
1696	1906
1697	74
1698	1942
1698	1307
1699	1691
1700	1978
1700	418
1701	424
1701	2059
1701	696
1702	1416
1702	46
1702	238
1703	154
1703	1704
1703	798
1704	1536
1704	1799
1705	1801
1705	544
1705	242
1706	951
1706	1893
1707	1061
1707	673
1707	950
1708	2050
1709	1539
1709	1158
1710	1607
1710	549
1710	1689
1711	1198
1711	1521
1712	394
1712	1351
1713	1748
1713	785
1713	1111
1714	1959
1714	1111
1715	1874
1715	1528
1715	321
1716	802
1717	1312
1717	1758
1718	1192
1718	565
1719	184
1719	1287
1719	1934
1720	1745
1720	1330
1720	364
1721	2073
1722	1816
1722	1793
1722	1899
1723	1731
1724	537
1724	1878
1724	1101
1725	1308
1726	308
1727	1423
1728	972
1729	81
1729	508
1729	876
1730	591
1730	60
1730	1917
1731	1573
1732	990
1732	2081
1732	1222
1733	582
1733	1607
1734	1117
1734	318
1735	1426
1735	184
1736	772
1736	1913
1737	1935
1738	478
1738	1587
1738	1353
1739	997
1740	1201
1740	500
1740	205
1741	273
1741	1971
1741	1324
1742	1084
1742	1218
1743	466
1743	771
1744	119
1745	1255
1745	827
1745	1559
1746	840
1746	1123
1747	615
1747	471
1747	393
1748	1533
1748	1413
1749	404
1749	603
1750	902
1750	696
1751	1044
1751	1432
1751	1241
1752	294
1752	87
1753	1719
1753	1161
1753	409
1754	810
1754	247
1755	1681
1755	377
1755	927
1756	1514
1757	949
1757	226
1758	1395
1758	397
1759	127
1759	1095
1759	243
1760	153
1760	1124
1761	309
1761	1466
1761	625
1762	312
1762	1501
1762	1567
1763	1571
1764	714
1764	366
1765	1246
1765	377
1766	1732
1766	1174
1766	545
1767	1731
1767	1950
1768	1305
1769	814
1770	1334
1770	1755
1771	978
1772	80
1772	494
1772	257
1773	1519
1774	684
1774	161
1774	1134
1775	1518
1775	1670
1775	780
1776	1200
1776	97
1776	340
1777	342
1777	239
1777	323
1778	448
1778	1154
1778	2054
1779	854
1780	1548
1780	1614
1781	154
1782	441
1782	805
1782	653
1783	368
1784	871
1785	1404
1786	310
1787	2084
1788	1311
1789	359
1790	1868
1791	445
1792	1696
1793	1950
1794	328
1794	1065
1794	1052
1795	864
1796	1360
1796	1933
1797	2093
1798	602
1798	316
1798	517
1799	1148
1799	1958
1800	1602
1501	2025
1502	1188
1503	1740
1503	309
1504	467
1504	1658
1504	631
1505	1562
1506	280
1507	488
1507	245
1508	1547
1508	652
1509	1445
1510	2084
1510	1230
1511	1371
1512	1617
1512	117
1512	1494
1513	78
1513	1153
1513	1944
1514	1002
1515	1384
1516	1617
1517	351
1517	9
1517	826
1518	44
1518	36
1518	1941
1519	838
1520	1062
1520	1274
1520	616
1521	967
1522	561
1523	1571
1523	382
1524	1255
1525	415
1526	333
1527	1568
1527	896
1528	993
1529	1750
1529	1067
1529	2028
1530	525
1530	763
1530	1043
1531	540
1531	507
1531	403
1532	2091
1532	1597
1533	283
1533	1545
1534	1562
1535	1782
1535	1861
1535	1604
1536	1672
1536	122
1536	1400
1537	850
1537	1817
1538	2
1538	13
1539	1817
1539	1094
1539	1863
1540	1981
1540	1240
1541	805
1541	1525
1542	522
1542	364
1542	1740
1543	476
1543	1970
1543	1014
1544	779
1544	1327
1544	896
1545	39
1545	1208
1545	437
1546	248
1546	642
1547	1960
1548	90
1548	1994
1548	140
1549	157
1549	836
1550	289
1550	1669
1551	1481
1552	1265
1553	1580
1553	656
1554	888
1555	60
1556	1619
1557	1289
1557	253
1557	1542
1558	778
1558	2012
1559	1248
1559	1564
1560	1754
1560	258
1561	1673
1561	2063
1561	1373
1562	1538
1562	381
1563	253
1563	1170
1564	1054
1564	421
1564	1836
1565	1762
1565	1353
1565	1300
1566	1705
1567	1278
1567	431
1568	932
1568	1965
1568	791
1569	19
1569	1366
1570	356
1570	1856
1571	1256
1571	466
1572	884
1573	1906
1573	1532
1573	966
1574	797
1575	1573
1576	1353
1576	1744
1577	1199
1577	16
1578	927
1579	691
1579	1863
1579	1179
1580	484
1580	1314
1580	1372
1581	703
1581	473
1582	685
1583	917
1583	748
1584	2033
1584	610
1585	1214
1585	1765
1585	518
1586	219
1586	250
1587	505
1587	533
1587	350
1588	1744
1589	451
1589	1557
1590	1176
1590	1575
1591	516
1592	862
1592	589
1592	1112
1593	898
1593	1270
1594	1698
1594	1127
1595	1574
1595	1848
1596	1611
1596	988
1597	1748
1597	1045
1598	88
1598	248
1598	1896
1599	1908
1599	793
1600	707
1801	1637
1802	1776
1802	1894
1802	2010
1803	651
1804	1550
1804	1548
1804	762
1805	1416
1806	878
1807	435
1807	2094
1808	417
1809	1339
1810	747
1810	1714
1810	406
1811	805
1811	275
1812	436
1813	1298
1814	279
1815	1825
1816	1972
1816	1868
1816	1793
1817	1333
1817	1254
1817	732
1818	2084
1818	715
1818	1739
1819	787
1820	1180
1820	1326
1821	939
1821	1940
1822	208
1823	1877
1824	1149
1824	2065
1825	1086
1825	1262
1825	2084
1826	288
1826	1342
1826	1212
1827	1232
1827	1161
1827	1789
1828	447
1828	532
1829	1825
1830	477
1830	1702
1831	1397
1832	1857
1833	1237
1833	1807
1833	2001
1834	1698
1834	1888
1835	493
1835	945
1836	1814
1836	1114
1837	1159
1838	1866
1838	1172
1838	1159
1839	1987
1840	1528
1840	257
1840	1455
1841	1597
1842	35
1842	509
1843	4
1844	887
1844	1130
1844	1798
1845	994
1845	810
1846	1480
1846	1935
1846	1077
1847	581
1847	725
1848	603
1849	1399
1849	585
1849	1349
1850	1591
1850	1778
1851	835
1851	533
1852	1077
1852	935
1852	1074
1853	2077
1853	295
1854	1310
1854	429
1854	1926
1855	1699
1855	1767
1855	1194
1856	1272
1857	921
1857	31
1857	1683
1858	815
1858	1825
1859	1582
1860	276
1860	1088
1860	291
1861	1811
1861	746
1862	1353
1862	1501
1862	1228
1863	1588
1863	1933
1864	490
1864	1068
1864	1162
1865	772
1865	1339
1865	185
1866	1666
1866	1554
1866	2089
1867	697
1868	326
1868	1536
1868	1680
1869	1792
1869	902
1870	2014
1871	208
1871	1867
1872	142
1872	1033
1872	1511
1873	1224
1873	647
1874	788
1874	1064
1875	103
1876	1143
1876	990
1877	1603
1878	993
1878	461
1878	1360
1879	408
1879	158
1880	823
1880	2003
1881	1778
1881	2
1881	1757
1882	1374
1882	1318
1882	700
1883	630
1883	50
1883	900
1884	374
1884	2032
1885	1820
1886	546
1886	457
1887	41
1888	1579
1888	1983
1889	326
1889	1716
1890	1966
1891	162
1892	936
1892	1039
1893	83
1893	733
1894	620
1895	558
1896	1737
1896	99
1897	1379
1897	1800
1897	1231
1898	521
1899	1382
1899	30
1899	1569
1900	586
1401	1046
1402	1028
1402	1463
1402	1941
1403	200
1403	1422
1403	1626
1404	833
1404	359
1404	867
1405	1490
1406	1283
1406	1668
1407	640
1407	905
1407	1521
1408	1390
1409	1658
1409	1634
1409	663
1410	654
1410	1549
1411	1148
1412	1075
1413	1431
1414	1772
1415	2058
1415	1922
1415	1261
1416	212
1416	1847
1416	538
1417	1507
1418	302
1418	1496
1418	2036
1419	1794
1419	1618
1420	316
1420	352
1421	1775
1421	1166
1422	52
1422	1909
1422	1324
1423	804
1423	597
1424	1207
1425	1021
1426	1511
1426	41
1427	1020
1427	758
1428	716
1429	1188
1429	538
1429	1336
1430	1386
1431	884
1431	900
1432	1229
1433	1408
1433	371
1434	331
1434	1520
1434	352
1435	267
1435	376
1436	1245
1436	1418
1436	50
1437	1506
1438	885
1438	335
1438	484
1439	1783
1439	446
1440	91
1440	2082
1441	1293
1442	1573
1442	1616
1442	930
1443	709
1444	1423
1445	1459
1445	1492
1446	2056
1446	2055
1446	938
1447	366
1447	774
1447	877
1448	2032
1448	46
1448	125
1449	94
1450	310
1450	666
1450	839
1451	1270
1451	1838
1451	911
1452	721
1452	743
1453	285
1454	1968
1454	1119
1455	406
1455	1192
1455	1361
1456	1596
1456	23
1456	1354
1457	1818
1458	1114
1459	1031
1459	1225
1460	2064
1460	1426
1461	174
1461	486
1462	2088
1463	1654
1464	100
1465	1360
1465	938
1465	1419
1466	1964
1466	975
1467	1912
1467	1604
1468	1324
1468	1548
1469	264
1470	1953
1470	1882
1470	698
1471	1320
1472	1927
1473	1470
1473	1023
1473	1485
1474	1640
1475	124
1475	470
1475	1548
1476	1802
1477	1473
1477	1712
1477	430
1478	1397
1478	602
1478	1686
1479	1872
1479	197
1479	1936
1480	1041
1480	2067
1481	1398
1481	1226
1481	2020
1482	562
1482	15
1482	252
1483	143
1484	103
1484	703
1485	455
1485	1136
1485	1472
1486	52
1487	1916
1488	1560
1488	1066
1488	1571
1489	975
1490	1411
1490	92
1491	212
1491	504
1491	1618
1492	1319
1492	875
1492	1881
1493	1696
1494	643
1495	1138
1495	172
1496	1221
1496	45
1497	1583
1497	995
1498	679
1498	1814
1499	567
1500	520
101	822
102	1820
102	1716
103	1041
103	1697
104	1605
105	858
105	1246
105	3
106	974
106	1561
107	1778
107	755
108	2085
109	467
109	155
109	786
110	241
110	474
110	2024
111	790
112	1920
113	1347
113	1140
113	221
114	1069
114	2083
114	848
115	1499
115	888
116	171
117	1828
118	1984
119	1230
119	2022
120	219
121	683
121	175
122	1195
122	1816
122	80
123	1355
123	1724
124	1923
124	1130
125	508
125	1053
125	645
126	438
126	1176
126	1007
127	1300
127	657
128	1638
129	745
129	440
129	1600
130	497
131	412
131	1560
132	878
132	2005
133	1503
133	1160
133	1310
134	719
135	1320
135	329
135	829
136	22
137	1201
138	722
138	299
139	1006
140	978
140	1545
140	1988
141	779
142	2098
142	1500
143	799
143	1974
143	48
144	1207
145	887
145	1948
146	952
146	1092
147	913
147	1219
147	135
148	151
148	107
149	1868
149	1135
150	2052
150	624
150	929
151	2047
152	1424
153	1983
153	229
153	1175
154	960
155	634
156	646
156	1962
156	1047
157	1366
158	840
158	1214
158	1392
159	1378
159	708
160	1867
160	2048
160	1690
161	677
162	1508
162	1462
163	1173
163	512
164	1929
165	1182
165	1600
166	2014
166	682
166	988
167	513
168	929
168	669
168	949
169	331
169	2092
169	583
170	1027
170	1479
170	535
171	703
171	846
172	709
172	1557
173	463
173	117
174	1084
174	522
175	1908
175	1597
176	802
176	308
176	1954
177	636
177	352
178	518
179	1928
179	1819
180	1346
180	2006
180	1246
181	704
182	1916
182	1538
182	1117
183	994
184	158
184	111
184	674
185	1898
186	1915
186	1044
187	100
187	1643
187	188
188	948
188	1037
189	445
190	1808
190	733
191	466
191	276
191	541
192	1645
193	1858
193	609
194	161
195	809
196	1745
196	1682
197	780
198	1373
199	640
200	931
200	22
200	360
1901	1482
1901	773
1902	540
1902	1311
1902	897
1903	573
1904	1771
1904	830
1905	1555
1905	1057
1906	479
1906	1434
1907	200
1907	1502
1908	2016
1908	1095
1908	1995
1909	334
1909	999
1909	890
1910	1964
1910	462
1911	306
1911	1500
1912	51
1912	788
1913	2057
1914	949
1915	1774
1916	1458
1917	710
1918	1230
1919	1344
1919	881
1919	1333
1920	197
1920	522
1920	289
1921	1242
1921	1431
1921	560
1922	669
1923	2075
1923	449
1923	1470
1924	995
1924	1418
1925	1976
1925	843
1925	1003
1926	179
1926	831
1927	474
1927	1861
1927	790
1928	1744
1928	990
1928	436
1929	924
1930	413
1930	1159
1931	699
1931	1654
1931	1959
1932	1978
1932	738
1933	223
1934	171
1934	1264
1935	546
1936	594
1937	192
1938	865
1938	269
1939	1264
1939	935
1940	405
1940	1244
1940	147
1941	1404
1942	112
1943	2069
1943	89
1943	588
1944	277
1944	1008
1944	337
1945	627
1945	934
1946	1188
1947	2016
1947	1236
1948	85
1948	1604
1948	417
1949	1437
1949	2009
1950	64
1950	1539
1951	1919
1951	969
1951	1301
1952	441
1952	46
1952	130
1953	742
1954	96
1954	1679
1955	1616
1955	1491
1955	54
1956	1002
1957	1306
1957	2074
1958	1802
1958	307
1959	122
1960	830
1961	254
1961	1296
1961	1220
1962	1696
1963	127
1963	1700
1963	2043
1964	1950
1964	1948
1965	1006
1966	148
1966	2066
1967	723
1967	1539
1967	492
1968	1992
1968	1861
1969	151
1970	1095
1970	1063
1971	1876
1972	1304
1972	1814
1973	378
1973	1354
1973	1914
1974	1632
1975	925
1976	1099
1976	1828
1977	840
1978	61
1978	70
1979	995
1979	1471
1979	1211
1980	663
1980	1087
1980	554
1981	43
1981	969
1981	526
1982	531
1983	804
1983	1800
1983	1179
1984	1673
1984	557
1985	724
1985	1615
1985	395
1986	722
1987	649
1987	1894
1988	1305
1988	12
1989	1011
1989	2035
1989	442
1990	411
1990	763
1991	1756
1991	204
1991	1057
1992	1441
1992	1454
1992	534
1993	1801
1994	1239
1995	1046
1996	464
1997	1973
1997	709
1997	237
1998	1787
1998	931
1998	1559
1999	658
1999	1720
1999	344
2000	1036
2000	1132
2000	1424
2001	199
2001	1160
2001	1191
2002	505
2002	2049
2002	1476
2003	1279
2003	2003
2004	300
2005	492
2006	1679
2006	704
2007	1653
2007	528
2008	1251
2008	395
2009	957
2010	1204
2010	1986
2011	912
2012	1494
2013	1899
2014	484
2015	1200
2015	45
2016	616
2016	680
2016	1810
2017	424
2017	363
2017	987
2018	1387
2019	860
2019	1798
2019	1142
2020	1039
2020	1597
2021	2046
2021	1734
2022	1036
2022	1278
2022	940
2023	83
2023	198
2023	1826
2024	1970
2025	401
2025	1106
2026	1576
2026	1586
2027	1430
2028	1057
2029	498
2030	2029
2030	632
2031	126
2032	645
2033	1749
2033	1875
2034	83
2034	1936
2034	1444
2035	1113
2036	1142
2036	290
2037	215
2037	290
2038	311
2039	83
2040	1776
2040	1083
2040	1465
2041	1955
2041	93
2042	1398
2042	1510
2042	378
2043	1099
2044	332
2044	1883
2044	799
2045	1054
2046	1460
2047	379
2047	1970
2048	1954
2048	1943
2049	1414
2050	1999
2050	848
2050	1940
2051	44
2051	1134
2051	670
2052	807
2052	762
2052	525
2053	37
2053	1846
2053	709
2054	1986
2055	1346
2055	765
2055	430
2056	666
2056	827
2056	660
2057	1899
2058	1958
2058	86
2058	412
2059	429
2060	1232
2060	2069
2060	1426
2061	163
2061	111
2061	1390
2062	888
2062	654
2062	1523
2063	1118
2063	519
2063	213
2064	487
2065	912
2065	1915
2065	1481
2066	1999
2066	1038
2067	1547
2067	398
2067	57
2068	2006
2068	195
2069	1422
2069	1153
2070	974
2070	1572
2071	762
2072	846
2073	1128
2074	1554
2074	1943
2074	2029
2075	227
2076	1291
2077	213
2077	1494
2077	1623
2078	1981
2078	1954
2078	861
2079	39
2079	663
2079	1965
2080	1900
2081	313
2081	1940
2081	1018
2082	1341
2082	168
2083	2075
2083	2063
2084	457
2084	1098
2085	366
2086	18
2086	236
2087	351
2087	134
2087	1163
2088	1231
2089	2032
2090	1975
2090	983
2090	1540
2091	1118
2092	140
2092	120
2092	29
2093	1266
2093	894
2093	342
2094	488
2095	1500
2095	97
2095	912
2096	118
2096	157
2097	1760
2098	68
2099	1169
2099	63
2100	925
2100	282
2100	456
201	1100
201	872
202	421
202	2018
203	223
203	438
203	878
204	1031
204	2088
205	1242
206	1671
206	505
207	979
207	1990
208	677
208	1534
208	912
209	1156
209	1674
210	123
210	201
210	833
211	410
211	1408
212	476
213	665
213	2015
214	1776
214	1008
214	596
215	1822
216	756
216	1024
216	1195
217	487
218	1648
219	1507
219	1883
220	1611
220	1378
221	1302
222	587
222	1162
223	903
223	789
223	1872
224	183
225	289
225	748
225	272
226	518
226	1608
226	726
227	1917
228	955
228	1825
229	1556
229	1235
230	814
231	1314
231	2053
231	808
232	1144
232	532
232	292
233	1618
234	1041
234	1401
234	53
235	157
236	1193
236	1736
237	1175
237	149
237	1211
238	2041
238	402
238	1704
239	386
239	289
239	1976
240	1992
241	211
241	1509
241	863
242	1588
243	1509
243	1067
243	1818
244	868
244	694
245	66
245	1669
245	1081
246	770
246	1843
247	1964
247	1084
248	1669
248	134
248	679
249	2090
249	1722
249	1103
250	931
250	991
250	138
251	785
251	1923
252	594
253	1356
253	982
253	1638
254	271
254	1755
255	1374
256	491
256	1110
256	805
257	483
257	715
258	379
258	31
259	555
259	1270
260	405
261	1537
262	1869
262	452
262	257
263	926
263	1273
264	1832
264	514
265	668
265	1105
265	1469
266	2074
267	1730
267	1200
268	427
268	399
269	761
269	932
270	332
270	646
270	750
271	363
272	186
273	390
273	1500
273	634
274	376
274	63
275	23
275	1137
275	1727
276	1755
276	1556
277	1573
278	2074
279	1961
280	675
280	760
281	1802
281	1080
281	918
282	862
282	1369
282	1713
283	316
283	1869
284	2072
285	722
285	277
286	659
286	1052
287	81
287	1143
288	79
288	472
289	1050
290	1212
290	207
290	292
291	1087
291	294
291	478
292	1430
292	1619
292	691
293	1583
293	1260
294	1245
294	1412
295	1991
296	335
297	311
298	582
298	800
298	1353
299	1222
299	1289
299	247
300	1785
300	923
1	841
1	1343
1	1285
2	1004
2	708
3	1343
3	1023
4	507
5	1689
5	1364
6	210
7	1221
7	846
7	685
8	1003
8	1533
8	193
9	120
9	847
9	1908
10	534
11	1961
12	1700
13	1617
14	2026
15	987
16	224
17	1834
17	1990
17	80
18	883
18	1797
19	1519
20	1249
21	383
21	209
21	1980
22	1591
23	505
24	894
24	1369
25	97
25	1960
26	1512
27	533
28	1623
28	1247
29	1374
30	904
30	88
30	31
31	771
32	848
32	261
32	1012
33	1992
34	839
34	187
34	1517
35	1401
36	890
36	565
37	1090
38	1234
39	1436
39	112
40	178
40	1713
40	511
41	1025
41	184
41	634
42	158
42	1047
42	411
43	778
44	887
45	1217
45	1367
46	1150
47	1050
47	251
47	1103
48	1211
48	1637
48	1756
49	276
49	1802
49	1083
50	1292
50	539
51	1832
51	60
51	886
52	1540
53	2010
54	1799
55	1794
56	1914
57	1403
57	1505
57	897
58	708
59	1189
59	1965
59	670
60	760
60	1013
61	1942
62	1002
63	2075
63	1001
63	1027
64	914
65	1390
65	1179
66	1997
67	557
67	633
68	410
69	393
69	1780
70	534
71	957
71	1889
71	949
72	1040
72	833
73	965
74	1472
74	1535
74	1324
75	435
75	510
75	661
76	2041
76	1690
77	791
77	1379
77	230
78	210
78	247
79	597
79	167
79	1698
80	2091
81	1187
82	1168
83	645
84	642
84	165
84	2003
85	157
85	1692
86	937
86	584
87	271
88	313
88	936
88	1565
89	1074
89	1612
89	1481
90	1506
90	494
91	376
91	2067
92	30
92	1495
93	1015
94	739
94	620
95	2010
95	1438
95	428
96	1694
96	1456
96	1011
97	1407
97	973
97	353
98	2007
98	2032
99	138
100	92
100	1547
100	613
\.


--
-- Data for Name: relation_48; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_48 (customer_id, product_id) FROM stdin;
378	1527
378	98
238	1821
335	1807
335	1701
176	1068
303	220
113	1168
113	1209
113	137
282	1046
282	589
282	1330
198	778
198	1364
121	731
121	2026
121	693
275	829
190	2086
190	1516
314	454
314	532
400	451
400	347
400	202
206	632
206	352
206	1852
367	977
367	277
395	1441
395	1143
395	808
235	19
235	1443
235	1806
123	892
197	51
197	864
261	859
261	1244
163	266
163	483
163	1174
155	1493
155	417
155	1996
322	1868
322	1652
322	719
146	1750
146	345
234	1889
234	1615
290	1586
290	1558
360	1839
360	2095
191	94
191	1155
192	1179
192	1364
192	1637
361	2098
361	998
377	1560
377	783
317	995
186	1607
397	275
397	1188
258	1223
258	211
345	258
345	1797
332	814
332	2053
106	1793
106	1888
180	467
139	1553
139	1994
139	1792
343	511
343	1544
185	318
185	1499
299	337
299	1403
299	78
306	447
306	1823
306	1296
291	1055
291	541
177	1256
177	132
177	1797
300	549
300	913
300	107
321	1745
359	956
359	1500
359	1497
239	1017
239	1533
319	1943
319	1232
319	162
308	1299
388	1734
388	506
302	710
302	2033
302	1121
278	1133
279	1139
279	1048
134	1225
134	418
134	1430
233	1645
233	763
170	1289
170	774
144	1510
136	945
136	1310
273	842
273	1930
273	1950
375	417
375	1662
375	241
229	664
221	1735
221	1478
221	605
307	2066
307	419
160	1465
160	1518
160	1047
277	2038
277	1516
277	1936
268	1705
268	917
135	1142
223	1731
223	1089
200	449
200	479
200	691
362	1312
362	2058
245	109
245	1694
245	724
341	834
341	1540
341	1422
247	642
247	632
212	1114
382	1018
382	1029
382	402
166	1657
283	1099
368	443
358	1168
143	1846
143	2000
141	97
333	575
254	1349
254	900
254	1663
137	594
137	1208
353	1845
385	250
385	435
385	981
171	878
171	577
171	1805
311	1830
248	618
349	1017
110	803
344	932
257	1439
342	1568
342	1008
120	1920
380	147
380	896
205	1107
\.


--
-- Data for Name: relation_49; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_49 (customer_id, wishlist_id, product_id) FROM stdin;
202	658	476
145	327	1687
263	947	2022
391	729	242
321	567	710
239	99	923
256	35	1998
112	929	159
358	53	23
191	954	603
227	363	1201
294	342	494
129	334	803
205	660	359
134	38	784
167	520	1388
229	414	2094
256	818	95
117	669	942
164	817	1214
251	678	1429
379	393	2055
121	886	1407
253	149	895
354	393	125
315	877	1044
395	463	1414
395	756	1670
180	487	322
112	943	527
285	127	375
227	225	106
263	63	192
145	377	1466
287	752	955
317	603	107
149	989	1054
229	777	418
114	803	1697
140	381	372
197	739	2015
191	922	538
343	728	1168
290	216	1250
155	932	148
314	475	473
376	879	1974
309	128	1502
292	902	460
290	55	1696
249	736	1142
124	528	1249
255	680	1920
298	791	947
107	227	1640
108	80	21
124	382	1191
125	458	1931
181	929	884
116	621	964
254	822	1824
127	12	757
179	673	1322
122	38	1370
231	413	1615
229	870	1277
132	434	1691
375	60	1331
128	512	1277
335	941	1658
120	673	1022
150	714	1056
287	982	212
193	600	1104
247	131	687
365	960	1248
242	962	367
104	246	496
226	255	246
375	632	1935
355	677	183
309	904	1779
390	453	1034
298	517	1420
307	127	37
257	280	59
117	642	545
115	647	36
356	947	2024
328	129	565
344	275	501
321	935	560
208	121	1916
224	795	1599
372	533	113
270	98	327
134	610	1694
365	595	1902
333	65	1161
316	894	551
\.


--
-- Data for Name: relation_5; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_5 (computer_id, cpu, ram_gb, form_factor, role) FROM stdin;
401	be	956	\N	computer
402	station	102	\N	computer
403	tend	44	\N	computer
404	act	521	\N	computer
405	about	582	\N	computer
406	enjoy	486	\N	computer
407	however	576	\N	computer
408	knowledge	796	\N	computer
409	official	901	\N	computer
410	join	446	\N	computer
411	no	836	\N	computer
412	stand	625	\N	computer
413	democratic	117	\N	computer
414	still	350	\N	computer
415	plant	919	\N	computer
416	hair	734	\N	computer
417	once	994	\N	computer
418	hotel	483	\N	computer
419	actually	452	\N	computer
420	air	273	\N	computer
421	several	425	\N	computer
422	white	188	\N	computer
423	near	160	\N	computer
424	bank	261	\N	computer
425	respond	713	\N	computer
426	investment	930	\N	computer
427	few	245	\N	computer
428	run	385	\N	computer
429	cut	242	\N	computer
430	international	517	\N	computer
431	anyone	408	\N	computer
432	choice	92	\N	computer
433	free	531	\N	computer
434	tree	880	\N	computer
435	resource	610	\N	computer
436	father	548	\N	computer
437	standard	172	\N	computer
438	out	206	\N	computer
439	also	156	\N	computer
440	worry	739	\N	computer
441	debate	951	\N	computer
442	experience	394	\N	computer
443	citizen	977	\N	computer
444	discover	73	\N	computer
445	collection	440	\N	computer
446	shake	472	\N	computer
447	toward	958	\N	computer
448	its	765	\N	computer
449	let	612	\N	computer
450	available	248	\N	computer
451	budget	678	\N	computer
452	third	305	\N	computer
453	black	299	\N	computer
454	far	723	\N	computer
455	sort	382	\N	computer
456	time	849	\N	computer
457	fine	946	\N	computer
458	possible	446	\N	computer
459	single	520	\N	computer
460	course	970	\N	computer
461	alone	734	\N	computer
462	quickly	124	\N	computer
463	either	494	\N	computer
464	want	654	\N	computer
465	financial	421	\N	computer
466	kind	279	\N	computer
467	go	573	\N	computer
468	often	220	\N	computer
469	quality	250	\N	computer
470	participant	433	\N	computer
471	science	515	\N	computer
472	protect	370	\N	computer
473	beyond	928	\N	computer
474	law	152	\N	computer
475	money	45	\N	computer
476	beat	410	\N	computer
477	six	275	\N	computer
478	century	971	\N	computer
479	fund	312	\N	computer
480	others	604	\N	computer
481	major	622	\N	computer
482	program	401	\N	computer
483	which	588	\N	computer
484	sea	956	\N	computer
485	state	380	\N	computer
486	evening	553	\N	computer
487	hard	165	\N	computer
488	section	918	\N	computer
489	response	325	\N	computer
490	wish	873	\N	computer
491	hair	65	\N	computer
492	method	993	\N	computer
493	accept	726	\N	computer
494	head	86	\N	computer
495	full	216	\N	computer
496	spring	756	\N	computer
497	during	557	\N	computer
498	return	304	\N	computer
499	record	834	\N	computer
500	important	324	\N	computer
501	rise	603	open	desktop
502	cost	997	want	desktop
503	everyone	134	improve	desktop
504	research	273	feeling	desktop
505	expect	986	at	desktop
506	special	948	hot	desktop
507	talk	34	attention	desktop
508	wrong	236	could	desktop
509	wrong	969	if	desktop
510	each	249	summer	desktop
511	one	968	hand	desktop
512	be	701	color	desktop
513	ago	486	view	desktop
514	behind	108	bit	desktop
515	relationship	725	western	desktop
516	respond	431	miss	desktop
517	structure	863	eat	desktop
518	business	697	information	desktop
519	majority	483	man	desktop
520	for	784	blue	desktop
521	bring	318	then	desktop
522	wall	469	go	desktop
523	force	455	book	desktop
524	point	641	you	desktop
525	bad	658	player	desktop
526	capital	770	environmental	desktop
527	claim	16	various	desktop
528	same	734	side	desktop
529	part	800	subject	desktop
530	argue	349	church	desktop
531	no	785	here	desktop
532	seek	301	score	desktop
533	full	888	simple	desktop
534	consider	961	common	desktop
535	weight	230	season	desktop
536	quality	637	write	desktop
537	compare	730	management	desktop
538	suffer	175	look	desktop
539	plant	568	traditional	desktop
540	both	962	skill	desktop
541	offer	562	compare	desktop
542	major	319	heavy	desktop
543	though	514	admit	desktop
544	activity	382	voice	desktop
545	prevent	528	beat	desktop
546	painting	945	last	desktop
547	amount	689	fine	desktop
548	choose	57	task	desktop
549	beautiful	804	treatment	desktop
550	should	205	why	desktop
551	sport	240	degree	desktop
552	work	994	crime	desktop
553	detail	335	discuss	desktop
554	large	656	item	desktop
555	quickly	181	bed	desktop
556	expect	814	light	desktop
557	within	853	because	desktop
558	character	294	step	desktop
559	lawyer	206	work	desktop
560	before	59	once	desktop
561	these	976	hundred	desktop
562	box	293	various	desktop
563	run	255	involve	desktop
564	a	200	politics	desktop
565	word	896	story	desktop
566	less	696	idea	desktop
567	choose	851	close	desktop
568	see	665	seven	desktop
569	student	284	store	desktop
570	new	852	yes	desktop
571	heavy	324	feeling	desktop
572	police	131	else	desktop
573	others	562	civil	desktop
574	figure	661	model	desktop
575	third	833	federal	desktop
576	Mr	323	feeling	desktop
577	fund	80	statement	desktop
578	one	461	military	desktop
579	sure	324	beyond	desktop
580	she	36	through	desktop
581	manage	365	television	desktop
582	no	872	want	desktop
583	risk	670	that	desktop
584	outside	278	resource	desktop
585	main	253	he	desktop
586	study	413	add	desktop
587	piece	965	beyond	desktop
588	story	100	its	desktop
589	conference	912	doctor	desktop
590	pull	319	hotel	desktop
591	practice	893	firm	desktop
592	more	525	provide	desktop
593	investment	76	discussion	desktop
594	police	792	likely	desktop
595	stop	189	specific	desktop
596	Mr	244	cut	desktop
597	this	452	child	desktop
598	gun	589	next	desktop
599	stock	324	sign	desktop
600	push	54	reveal	desktop
\.


--
-- Data for Name: relation_50; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_50 (customer_id, review_id, reviews_product_id) FROM stdin;
391	714	127
244	484	1035
165	773	169
311	1000	923
366	740	42
325	241	1223
336	214	188
309	328	615
202	356	471
227	359	1082
105	452	30
230	759	1192
331	529	624
165	42	197
219	259	1333
274	449	1922
186	255	375
204	496	2080
127	699	1662
148	383	869
286	946	567
199	723	1485
289	477	1893
323	322	593
274	888	1054
377	587	771
223	471	9
373	449	1049
294	815	914
353	675	292
297	701	486
272	424	1488
335	248	288
322	870	428
103	49	683
193	235	1599
386	532	2059
225	529	2031
195	629	1791
245	7	1034
139	22	1300
392	42	636
353	881	1316
400	660	1823
269	533	977
140	929	1120
239	772	1845
\.


--
-- Data for Name: relation_51; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_51 (custorder_id, customer_orders_customer_id) FROM stdin;
1	394
71	163
66	364
54	224
30	391
8	283
14	226
89	204
43	228
55	270
7	299
69	377
83	338
82	203
41	261
21	123
32	191
79	351
74	265
90	184
35	256
24	363
75	305
13	160
27	179
15	201
19	250
60	348
86	154
16	316
29	123
58	293
61	150
53	371
9	360
2	116
44	249
47	313
12	174
98	201
51	312
78	167
57	188
25	389
10	338
62	314
95	299
17	259
85	396
77	299
3	360
26	298
67	374
64	356
56	265
50	396
81	111
28	260
39	190
91	298
52	292
6	204
100	360
5	187
37	170
48	273
45	293
93	352
72	128
96	236
34	213
\.


--
-- Data for Name: relation_52; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_52 (custorder_id, product_id) FROM stdin;
1	1160
2	492
3	1539
4	408
5	301
6	566
7	2061
8	586
9	6
10	1508
11	1500
12	196
13	37
14	447
15	1013
16	355
17	1932
18	1595
19	600
20	446
21	397
22	1312
23	1710
24	1669
25	1409
26	1470
27	435
28	1358
29	1697
30	368
31	1262
32	60
33	563
34	22
35	84
36	1534
37	1702
38	1923
39	222
40	195
41	1154
42	203
43	2010
44	1768
45	1704
46	1895
47	1212
48	1749
49	121
50	1464
51	2007
52	775
53	1867
54	1866
55	1234
56	1613
57	129
58	1848
59	666
60	935
61	719
62	275
63	1280
64	916
65	334
66	255
67	1380
68	1827
69	1238
70	173
71	542
72	95
73	1218
74	209
75	587
76	512
77	141
78	1712
79	2078
80	1893
81	1916
82	1291
83	2077
84	1873
85	541
86	1223
87	1803
88	1809
89	1007
90	1854
91	657
92	235
93	243
94	136
95	2034
96	897
97	1153
98	2077
99	1409
100	25
\.


--
-- Data for Name: relation_53; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_53 (custorder_id, payment_order_customer_id, payment_order_payment_method_id) FROM stdin;
96	272	478
37	292	575
71	191	187
52	236	877
36	321	203
95	172	408
79	133	286
19	259	195
49	360	872
66	177	348
32	311	794
81	380	256
3	128	979
22	206	800
75	295	770
80	107	668
34	186	886
35	110	790
59	311	880
40	218	235
56	206	496
93	122	174
1	218	235
28	128	979
84	361	271
25	127	222
78	243	793
65	350	754
21	234	159
8	385	405
4	317	809
39	377	940
64	392	397
24	275	382
27	187	675
87	316	608
9	317	809
94	150	852
10	259	195
12	122	174
63	257	146
85	152	924
23	227	758
91	120	535
73	321	262
58	351	490
42	172	408
13	214	809
92	248	774
70	150	852
18	236	155
57	187	675
46	242	40
89	382	664
15	118	573
68	243	486
29	272	478
86	206	800
61	256	878
74	222	139
62	202	571
38	392	397
6	236	155
14	292	575
31	263	86
2	234	159
83	126	377
100	389	39
67	349	266
90	214	809
99	120	535
60	190	399
54	122	174
55	185	745
30	398	231
76	311	880
47	112	718
44	107	668
51	379	126
53	330	599
11	272	478
69	330	599
88	389	39
82	133	672
45	349	266
26	122	174
20	380	256
72	248	774
50	185	745
33	107	668
\.


--
-- Data for Name: relation_54; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_54 (custorder_id, product_id) FROM stdin;
1	513
2	728
2	1511
2	1193
3	1072
4	332
4	62
5	161
5	1732
6	1346
6	1768
7	1909
8	26
8	1066
8	41
9	171
9	1560
10	1875
10	713
10	1702
11	1274
11	703
11	1224
12	2022
13	191
14	197
14	1560
15	1312
16	1673
17	1935
17	887
17	1436
18	1590
18	277
18	1904
19	1784
19	593
19	1781
20	1867
21	2091
22	1273
22	1868
23	636
23	772
24	1539
25	1437
25	217
26	379
27	663
27	371
28	2066
29	119
29	1194
29	1640
30	1409
30	1419
30	1511
31	371
31	507
32	561
32	980
32	1486
33	813
34	1765
34	403
35	1975
36	454
36	142
37	1678
37	793
37	170
38	773
39	395
40	882
40	457
41	1629
42	1668
42	1623
42	1662
43	124
43	1179
43	1756
44	1131
45	602
45	1444
46	1163
46	264
46	1247
47	803
47	1084
47	855
48	980
48	125
49	820
50	65
51	1041
51	1823
51	839
52	1789
53	1497
53	1673
53	1034
54	1859
54	742
55	1788
55	1269
56	382
57	1778
57	1515
57	1477
58	580
58	129
58	1143
59	91
59	1021
59	398
60	1199
61	395
61	1020
62	516
62	1497
63	173
64	1712
65	1655
65	1946
65	352
66	1620
66	1698
66	1639
67	1027
67	1636
68	641
68	1746
68	1765
69	1634
69	1530
70	1056
71	658
72	34
73	426
73	338
74	826
75	302
76	1697
76	1428
76	1265
77	1350
78	717
78	1741
79	1011
79	273
80	50
80	1746
80	251
81	1083
82	1808
82	1928
83	1450
83	1719
83	1828
84	1831
84	72
84	2021
85	1435
86	707
86	2020
87	811
88	1689
88	1264
89	1628
90	931
90	1845
91	1042
91	90
91	1367
92	2049
93	1737
93	449
93	1402
94	1427
95	1038
96	447
97	1391
98	2081
98	709
99	1747
99	1161
100	2075
\.


--
-- Data for Name: relation_55; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_55 (promotion_id, coupon_code, order_coupons_custorder_id) FROM stdin;
14	966	23
11	619	75
34	739	7
1	526	57
59	135	61
74	385	20
58	833	26
85	148	6
90	266	1
14	997	14
21	138	91
63	321	71
31	681	98
81	393	17
25	556	99
35	7	88
47	525	29
29	675	97
5	371	33
49	723	79
9	483	5
97	74	80
61	98	61
13	644	17
72	302	17
41	99	13
39	149	11
99	234	7
59	641	45
98	710	69
56	627	14
23	435	91
11	296	94
27	956	68
20	665	22
4	598	74
1	249	5
10	94	10
97	711	68
21	490	60
97	855	71
73	16	55
45	94	5
43	960	53
89	735	69
45	798	25
97	466	80
30	990	28
98	915	40
11	690	83
53	733	8
52	854	36
86	595	14
69	427	76
85	361	98
3	875	10
18	588	75
85	26	64
56	307	18
8	393	18
86	792	61
62	869	41
58	698	73
58	284	18
45	961	75
99	545	52
13	345	24
39	643	66
56	437	69
40	988	18
31	96	15
49	144	57
40	885	24
54	335	73
86	823	7
35	92	27
100	777	27
28	198	5
80	593	76
95	524	19
46	283	4
89	872	30
74	795	14
21	355	76
73	657	23
47	853	81
73	554	75
15	247	93
53	976	22
3	388	31
39	286	85
58	36	1
86	835	65
64	586	67
70	805	60
22	843	4
86	470	5
39	329	60
16	945	7
59	68	49
\.


--
-- Data for Name: relation_56; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_56 (product_id, warehouse_id, bin_id) FROM stdin;
501	8	549
501	93	602
502	33	469
503	19	159
503	9	661
504	3	398
505	93	602
506	46	750
506	70	665
507	19	922
507	5	213
508	53	353
509	70	665
509	82	709
510	9	227
511	70	665
511	96	112
512	83	790
513	83	790
514	19	922
514	95	580
515	8	126
516	82	205
517	8	126
517	26	163
518	71	727
519	70	951
519	6	180
520	93	676
520	83	790
521	21	329
521	72	244
522	59	180
522	39	489
523	80	791
523	23	57
524	21	511
525	83	24
526	25	693
527	76	214
527	21	995
528	1	556
528	93	565
529	91	85
529	3	591
530	26	163
531	70	665
531	56	375
532	35	331
533	36	493
533	9	227
534	84	831
534	36	493
535	59	180
536	97	732
537	46	750
537	40	943
538	52	818
538	93	676
539	55	25
540	69	35
541	18	272
541	8	126
542	1	556
543	82	709
544	55	25
544	3	262
545	53	765
545	78	789
546	79	496
546	5	766
547	3	262
547	95	580
548	87	677
549	84	831
549	71	727
550	59	103
550	5	213
551	59	180
552	8	549
553	23	845
553	9	227
554	21	995
554	2	441
555	31	325
556	36	796
556	39	489
557	28	103
557	97	732
558	39	635
558	19	922
559	45	961
559	60	552
560	2	192
560	3	398
561	19	991
561	59	103
562	96	112
563	58	253
563	10	353
564	84	954
564	23	845
565	93	676
566	50	521
567	93	565
568	26	74
569	33	469
570	1	556
571	79	496
571	18	272
572	35	331
572	46	750
573	26	163
574	10	353
574	19	991
575	53	812
575	60	639
576	21	511
576	59	180
577	9	661
577	71	727
578	78	789
579	21	329
579	26	74
580	26	163
580	70	377
581	36	796
581	70	377
582	28	103
582	79	496
583	5	766
583	39	635
584	93	565
584	81	661
585	35	331
585	65	777
586	50	521
587	95	506
588	3	262
588	65	777
589	5	213
590	46	750
590	50	521
591	5	766
592	83	24
592	8	549
593	96	112
594	2	134
594	25	693
595	31	325
595	58	789
596	79	496
596	31	390
597	23	845
597	53	765
598	53	812
598	29	586
599	10	353
600	3	398
600	93	676
601	40	943
602	19	159
603	57	823
604	69	325
605	69	325
606	78	789
606	70	665
607	60	552
607	39	489
608	57	140
608	60	552
609	60	639
609	46	750
610	3	262
611	23	557
611	21	329
612	51	961
613	35	331
614	82	709
615	3	262
616	96	112
616	19	991
617	26	163
617	21	511
618	3	262
619	10	353
619	21	995
620	33	469
620	93	676
621	53	353
622	21	995
622	56	375
623	5	766
624	3	591
624	57	140
625	93	602
626	96	112
627	24	180
627	93	602
628	93	565
628	8	549
629	57	140
630	70	951
630	9	661
631	21	995
632	83	24
633	58	789
634	26	163
634	28	103
635	53	353
636	24	180
637	93	676
638	40	943
638	93	676
639	31	325
640	58	789
641	69	279
641	23	845
642	52	694
643	40	943
643	5	213
644	69	325
645	52	818
645	96	679
646	69	279
647	50	521
648	2	441
649	36	796
649	78	789
650	40	943
651	35	331
651	42	173
652	35	331
652	84	954
653	31	390
653	42	173
654	3	398
655	56	375
655	69	279
656	2	192
656	2	134
657	21	511
657	25	693
658	95	580
658	36	493
659	8	126
660	82	205
660	78	789
661	31	325
662	57	140
662	56	375
663	70	665
663	80	791
664	2	441
664	19	991
665	55	25
666	3	398
666	25	276
667	8	126
667	93	676
668	96	679
669	83	790
669	23	557
670	71	727
670	45	961
671	53	765
672	35	331
673	93	676
674	31	390
674	2	134
675	53	353
676	48	826
677	39	611
678	59	103
678	83	24
679	36	796
679	1	556
680	97	732
681	21	511
681	97	732
682	96	679
682	24	180
683	21	511
683	5	213
684	52	818
684	58	789
685	3	398
685	46	750
686	3	262
686	52	694
687	18	99
688	33	469
688	35	331
689	53	765
690	5	766
690	84	954
691	69	279
691	82	709
692	29	586
692	21	995
693	59	103
693	2	378
694	71	727
694	52	818
695	6	180
696	48	826
696	36	796
697	3	591
697	8	549
698	60	552
698	23	57
699	83	24
700	19	991
401	40	943
401	78	789
402	10	353
403	52	694
403	69	279
404	26	163
405	70	951
405	53	812
406	21	511
407	21	329
408	33	469
409	70	9
409	29	586
410	45	961
410	2	441
411	40	943
412	21	329
413	53	353
413	87	677
414	26	74
414	19	991
415	69	279
415	60	552
416	82	709
417	3	262
418	79	496
418	82	709
419	53	812
420	69	257
420	91	85
421	81	661
422	21	511
422	3	398
423	31	325
424	58	253
424	97	732
425	40	943
426	57	823
426	93	565
427	45	961
427	59	180
428	26	74
429	25	693
429	52	818
430	50	521
430	31	325
431	26	163
431	70	377
432	23	57
432	39	611
433	36	796
433	84	831
434	82	709
435	21	329
436	19	159
436	18	272
437	59	180
437	60	552
438	24	180
438	36	493
439	82	205
440	55	25
440	8	549
441	29	586
441	95	580
442	71	727
443	69	35
444	60	552
445	82	205
445	23	57
446	8	549
447	19	991
448	76	214
449	69	257
450	52	818
450	48	826
451	52	818
451	69	35
452	2	378
452	69	257
453	33	469
453	31	325
454	19	922
454	70	377
455	46	750
455	60	552
456	80	791
457	24	180
458	95	580
458	3	591
459	33	469
459	70	665
460	19	922
460	79	496
461	25	742
462	96	112
462	91	85
463	9	227
464	3	262
464	71	727
465	53	353
465	70	665
466	93	676
466	53	812
467	3	398
467	69	325
468	19	5
468	59	103
469	69	35
469	60	639
470	36	493
471	46	750
472	93	565
473	35	331
473	79	496
474	23	557
474	40	943
475	1	556
476	2	134
476	9	227
477	72	244
477	53	353
478	52	694
478	3	398
479	39	611
479	58	789
480	39	489
481	79	496
481	82	709
482	80	791
483	93	676
484	28	103
484	60	552
485	39	611
486	9	227
486	3	262
487	79	496
487	23	57
488	58	789
488	87	677
489	8	549
490	87	677
490	19	159
491	23	57
491	40	943
492	79	496
493	79	496
494	9	661
494	26	74
495	8	549
496	2	441
497	69	325
498	78	789
499	60	639
499	95	506
500	81	661
701	93	676
702	36	493
702	53	765
703	81	661
703	69	325
704	39	635
705	83	24
706	59	180
707	23	845
707	51	961
708	1	556
708	19	922
709	3	262
710	1	556
710	65	777
711	2	134
711	53	765
712	70	951
713	39	611
714	70	377
714	81	661
715	71	727
716	91	85
717	3	398
718	2	134
719	58	253
720	50	521
721	51	961
722	53	812
723	83	790
723	28	103
724	28	103
724	33	469
725	53	765
726	95	580
726	21	511
727	28	103
727	25	693
728	29	586
728	82	205
729	53	353
729	28	103
730	56	375
731	53	353
731	57	140
732	21	995
733	23	557
733	46	750
734	19	5
734	96	679
735	96	679
735	26	74
736	57	140
737	69	279
738	21	329
738	6	180
739	2	134
740	56	375
740	96	112
741	10	353
741	25	742
742	81	661
743	18	99
743	69	35
744	82	205
744	58	789
745	52	818
746	97	732
747	3	398
748	93	602
748	52	694
749	39	611
750	19	5
750	80	791
751	28	103
752	26	163
752	26	74
753	53	812
753	6	180
754	69	35
755	31	390
755	9	227
756	93	676
756	95	580
757	71	727
757	19	991
758	23	845
759	39	489
760	56	375
761	96	679
761	52	818
762	29	586
762	59	103
763	84	954
763	65	777
764	52	818
765	35	331
766	36	493
766	2	192
767	70	665
768	18	272
769	19	5
770	70	951
770	69	35
771	52	694
772	8	126
773	78	789
773	40	943
774	31	325
774	95	506
775	94	989
775	18	99
776	59	180
777	59	103
777	26	163
778	36	796
778	26	74
779	58	789
779	2	441
780	1	556
780	19	159
781	31	325
781	78	789
782	21	511
782	36	796
783	53	812
783	72	244
784	53	812
784	96	679
785	25	276
785	40	943
786	33	469
786	87	677
787	94	989
787	21	511
788	70	951
789	36	796
789	53	812
790	39	611
790	5	213
791	53	812
791	70	951
792	35	331
793	18	272
793	39	635
794	70	377
794	36	493
795	9	661
795	40	943
796	58	253
796	97	732
797	70	9
797	57	823
798	19	159
799	70	665
799	69	279
800	23	845
800	19	991
801	70	951
802	8	126
802	87	677
803	83	790
803	8	549
804	55	25
805	21	511
806	70	377
807	1	556
807	81	661
808	9	661
809	39	635
809	96	679
810	93	676
811	45	961
811	94	989
812	23	557
813	48	826
814	9	227
814	52	818
815	93	676
816	8	126
816	83	24
817	6	180
818	8	549
819	58	253
819	42	173
820	69	279
821	60	639
821	6	180
822	23	557
823	56	375
823	35	331
824	5	766
824	2	378
825	18	99
825	39	611
826	2	134
826	58	253
827	39	611
828	39	635
828	80	791
829	3	591
829	24	180
830	9	661
831	69	257
831	25	276
832	82	709
833	40	943
833	53	812
834	70	377
834	21	995
835	26	163
836	76	214
836	35	331
837	2	192
837	6	180
838	19	922
838	5	213
839	31	325
840	39	635
841	81	661
842	53	812
842	93	565
843	69	279
843	29	586
844	3	262
845	18	99
845	57	140
846	23	557
846	2	441
847	42	173
848	97	732
848	8	549
849	80	791
849	3	398
850	72	244
850	6	180
851	24	180
851	19	991
852	5	766
852	21	995
853	29	586
853	82	205
854	96	679
855	39	635
856	70	665
857	78	789
858	95	506
858	31	390
859	87	677
860	52	694
861	8	126
862	55	25
862	84	831
863	93	565
864	71	727
865	50	521
866	2	441
866	2	134
867	2	441
867	45	961
868	36	493
869	24	180
869	60	552
870	2	134
870	48	826
871	48	826
871	53	812
872	19	159
872	83	790
873	94	989
874	6	180
875	29	586
876	96	112
877	53	765
877	23	57
878	97	732
878	94	989
879	45	961
880	18	99
880	87	677
881	79	496
882	21	995
883	53	765
883	95	580
884	57	823
885	95	506
886	72	244
887	80	791
888	19	922
888	93	676
889	84	954
890	93	565
890	82	709
891	18	272
892	69	279
892	45	961
893	69	257
894	53	812
895	39	635
895	57	140
896	18	272
897	2	134
898	93	565
899	97	732
900	2	134
901	10	353
901	80	791
902	29	586
903	57	823
903	2	441
904	53	765
905	58	789
905	91	85
906	53	765
907	21	511
907	31	325
908	79	496
908	29	586
909	70	9
910	97	732
911	35	331
911	59	180
912	39	489
913	19	5
914	19	991
915	97	732
915	25	693
916	42	173
916	19	5
917	28	103
918	24	180
918	72	244
919	6	180
920	57	823
921	93	602
921	65	777
922	70	9
922	29	586
923	81	661
924	42	173
925	31	390
925	21	995
926	57	823
927	10	353
927	31	390
928	71	727
929	2	192
929	91	85
930	36	796
930	26	74
931	23	57
931	58	789
932	69	257
932	2	378
933	21	995
934	3	591
935	26	163
936	84	831
937	2	441
937	36	493
938	58	789
939	19	922
940	83	24
940	1	556
941	70	665
941	35	331
942	56	375
943	72	244
944	53	812
944	53	353
945	25	276
945	31	325
946	1	556
947	59	103
947	79	496
948	2	134
949	84	954
949	57	823
950	69	325
950	19	5
951	79	496
951	8	126
952	33	469
952	56	375
953	36	493
954	53	812
955	82	205
955	80	791
956	31	390
956	93	565
957	55	25
958	31	390
958	82	205
959	39	635
960	93	676
961	96	679
961	56	375
962	21	329
963	95	580
963	91	85
964	76	214
965	57	140
965	56	375
966	50	521
966	31	390
967	19	5
968	25	693
968	3	591
969	9	227
969	93	676
970	3	398
971	95	580
971	2	378
972	31	325
973	50	521
974	82	205
974	58	789
975	25	742
976	23	57
976	42	173
977	95	580
978	53	353
978	3	398
979	24	180
979	23	57
980	18	99
981	36	493
982	21	995
982	18	99
983	53	765
984	19	159
984	69	279
985	52	818
986	52	694
987	59	103
987	36	493
988	52	694
988	53	812
989	21	329
990	1	556
990	69	279
991	58	789
991	53	765
992	21	995
993	70	377
993	2	192
994	35	331
995	18	272
995	79	496
996	95	580
997	96	679
997	69	35
998	46	750
999	39	489
1000	48	826
1000	96	112
1001	83	24
1001	42	173
1002	2	378
1002	84	954
1003	48	826
1004	72	244
1004	8	126
1005	19	159
1005	39	489
1006	52	694
1006	21	511
1007	1	556
1007	26	163
1008	25	276
1009	91	85
1010	76	214
1011	96	679
1011	24	180
1012	3	591
1013	93	676
1014	23	57
1015	19	922
1015	42	173
1016	56	375
1017	69	257
1017	3	591
1018	59	180
1018	9	661
1019	31	325
1019	21	329
1020	71	727
1020	60	552
1021	19	922
1021	59	180
1022	55	25
1022	2	192
1023	58	789
1023	3	591
1024	69	279
1024	59	103
1025	50	521
1025	59	180
1026	33	469
1027	71	727
1028	5	213
1029	28	103
1030	57	140
1030	31	390
1031	31	325
1031	70	9
1032	57	823
1033	2	441
1034	95	580
1035	96	679
1035	9	227
1036	5	766
1037	39	635
1038	70	9
1038	93	676
1039	52	694
1039	69	279
1040	65	777
1040	28	103
1041	69	257
1041	96	679
1042	25	276
1042	60	639
1043	83	790
1044	40	943
1044	84	831
1045	72	244
1045	93	602
1046	23	57
1046	19	922
1047	69	325
1047	96	112
1048	29	586
1049	93	602
1049	58	789
1050	55	25
1051	83	24
1051	59	103
1052	48	826
1053	59	180
1054	39	489
1054	5	213
1055	19	5
1056	42	173
1057	21	511
1057	31	325
1058	25	276
1058	1	556
1059	50	521
1060	57	823
1061	93	602
1061	52	818
1062	23	845
1063	39	635
1064	3	398
1064	26	163
1065	71	727
1065	19	991
1066	1	556
1067	28	103
1068	33	469
1069	97	732
1069	78	789
1070	59	180
1070	28	103
1071	53	812
1072	3	398
1073	31	390
1073	33	469
1074	19	922
1074	96	112
1075	48	826
1076	96	679
1077	36	493
1077	53	812
1078	58	253
1078	1	556
1079	39	489
1080	8	126
1081	69	257
1082	55	25
1082	25	742
1083	78	789
1084	21	511
1085	31	325
1086	83	790
1086	93	565
1087	23	845
1088	52	694
1089	69	325
1089	94	989
1090	93	676
1090	96	679
1091	84	954
1091	23	57
1092	39	635
1092	69	257
1093	36	493
1093	82	709
1094	69	325
1094	23	57
1095	59	180
1096	58	789
1096	69	279
1097	78	789
1097	23	57
1098	8	549
1099	58	789
1100	83	24
1101	35	331
1101	69	35
1102	25	276
1103	31	325
1103	84	954
1104	55	25
1105	18	99
1106	91	85
1107	70	665
1107	76	214
1108	23	57
1109	28	103
1110	94	989
1111	60	639
1111	83	790
1112	2	192
1113	93	602
1113	39	635
1114	35	331
1114	72	244
1115	82	709
1116	83	24
1116	81	661
1117	2	378
1118	69	257
1118	31	325
1119	39	489
1120	69	257
1121	39	611
1122	29	586
1123	18	272
1124	19	922
1124	19	991
1125	87	677
1125	59	180
1126	50	521
1127	25	693
1128	48	826
1129	2	134
1129	42	173
1130	19	159
1131	84	831
1132	18	99
1132	18	272
1133	25	693
1133	69	257
1134	18	99
1134	19	922
1135	26	74
1135	70	9
1136	3	591
1136	70	9
1137	23	557
1137	53	765
1138	87	677
1138	83	790
1139	87	677
1140	72	244
1141	33	469
1141	59	103
1142	9	661
1142	40	943
1143	65	777
1143	18	272
1144	31	390
1144	53	812
1145	5	766
1146	23	57
1147	91	85
1148	2	441
1148	19	5
1149	28	103
1150	21	995
1151	23	845
1152	39	489
1152	9	661
1153	69	325
1153	25	742
1154	50	521
1155	81	661
1156	9	227
1157	8	126
1157	5	766
1158	70	9
1159	60	552
1160	81	661
1161	31	390
1162	24	180
1162	3	262
1163	10	353
1164	25	276
1165	95	580
1166	19	922
1166	87	677
1167	57	823
1168	97	732
1169	83	24
1170	81	661
1170	55	25
1171	21	329
1172	80	791
1173	9	661
1173	78	789
1174	83	24
1175	69	257
1175	93	676
1176	19	159
1176	31	325
1177	55	25
1178	78	789
1179	60	552
1179	53	765
1180	79	496
1180	93	565
1181	53	812
1181	23	57
1182	70	9
1183	3	262
1184	50	521
1185	2	134
1185	56	375
1186	18	272
1186	29	586
1187	96	112
1188	19	922
1188	29	586
1189	18	272
1189	69	279
1190	1	556
1190	10	353
1191	57	140
1191	26	163
1192	25	693
1192	91	85
1193	5	213
1193	25	742
1194	60	552
1195	29	586
1195	18	99
1196	87	677
1196	55	25
1197	91	85
1197	26	163
1198	36	796
1199	36	493
1199	31	325
1200	53	765
1200	39	635
301	9	227
301	3	398
302	21	511
302	57	140
303	36	493
303	78	789
304	76	214
304	72	244
305	50	521
305	36	493
306	6	180
306	19	5
307	81	661
308	83	790
308	80	791
309	93	602
309	71	727
310	21	511
310	26	74
311	36	796
311	8	549
312	19	5
312	36	493
313	10	353
313	94	989
314	70	665
314	5	213
315	18	272
316	10	353
316	25	276
317	19	991
317	10	353
318	3	591
319	58	253
319	93	565
320	60	639
321	28	103
322	45	961
323	53	353
323	69	35
324	23	845
325	96	112
326	48	826
327	97	732
327	39	635
328	69	35
329	93	602
329	57	140
330	2	134
330	48	826
331	19	159
332	19	5
333	52	694
333	96	112
334	19	922
335	26	163
335	5	766
336	8	549
337	46	750
338	26	163
338	70	9
339	55	25
340	25	693
341	96	679
341	95	580
342	78	789
343	21	995
344	96	112
345	19	5
345	57	823
346	29	586
346	3	591
347	6	180
348	69	325
349	58	253
350	39	611
351	19	159
351	35	331
352	94	989
353	79	496
354	1	556
355	53	765
356	91	85
356	19	922
357	9	661
357	19	922
358	23	845
358	53	353
359	56	375
359	84	831
360	21	995
360	2	441
361	52	694
361	76	214
362	95	506
362	19	922
363	2	378
363	80	791
364	2	441
364	36	796
365	33	469
366	59	180
366	82	709
367	58	253
368	52	694
369	69	279
370	8	126
371	10	353
371	60	639
372	93	565
372	25	276
373	9	227
374	95	506
375	3	398
375	84	954
376	18	99
377	51	961
377	71	727
378	95	506
378	95	580
379	25	742
380	8	549
380	8	126
381	52	694
382	91	85
382	48	826
383	87	677
383	33	469
384	93	676
385	21	995
385	19	922
386	8	549
386	1	556
387	1	556
387	45	961
388	31	390
389	82	205
390	26	74
391	82	709
391	70	377
392	84	954
393	10	353
394	55	25
395	83	790
395	53	812
396	59	103
396	96	112
397	21	511
397	24	180
398	36	796
399	21	329
400	21	995
1301	3	398
1301	19	159
1302	21	995
1302	19	991
1303	96	679
1303	84	954
1304	35	331
1305	57	823
1306	9	227
1306	72	244
1307	31	325
1308	5	213
1309	28	103
1309	8	126
1310	59	180
1311	23	57
1311	39	635
1312	60	639
1313	26	163
1313	24	180
1314	78	789
1314	96	679
1315	21	511
1316	87	677
1316	69	257
1317	87	677
1318	52	818
1319	18	99
1320	71	727
1321	33	469
1322	39	635
1322	1	556
1323	69	257
1323	36	493
1324	19	922
1325	96	112
1325	10	353
1326	95	580
1326	19	159
1327	2	134
1327	82	205
1328	53	353
1328	82	709
1329	19	922
1330	53	812
1331	48	826
1331	36	493
1332	28	103
1332	3	398
1333	28	103
1333	42	173
1334	53	812
1335	3	591
1336	21	511
1336	84	831
1337	3	262
1338	80	791
1339	8	126
1339	53	353
1340	60	639
1340	33	469
1341	82	205
1341	31	325
1342	5	213
1343	84	954
1343	70	951
1344	31	325
1345	50	521
1345	25	693
1346	42	173
1346	8	549
1347	87	677
1347	69	257
1348	19	922
1349	79	496
1350	36	796
1351	57	823
1352	53	765
1352	31	390
1353	26	74
1353	19	991
1354	59	103
1355	58	253
1355	69	325
1356	5	766
1357	53	765
1358	95	506
1358	29	586
1359	25	693
1359	69	257
1360	59	180
1361	84	831
1361	58	253
1362	24	180
1362	93	676
1363	58	789
1363	48	826
1364	28	103
1364	93	676
1365	56	375
1365	18	99
1366	8	549
1366	33	469
1367	3	398
1367	33	469
1368	82	205
1369	70	9
1369	59	180
1370	18	99
1371	23	557
1371	51	961
1372	94	989
1373	45	961
1373	5	766
1374	2	378
1375	23	557
1375	57	140
1376	79	496
1377	18	272
1377	21	329
1378	18	272
1379	3	262
1380	42	173
1380	53	812
1381	70	951
1381	83	790
1382	39	611
1383	5	766
1383	72	244
1384	70	9
1385	52	694
1386	55	25
1386	8	126
1387	53	765
1388	3	591
1388	9	661
1389	6	180
1389	33	469
1390	46	750
1391	69	257
1392	80	791
1392	2	441
1393	26	74
1393	39	635
1394	81	661
1395	97	732
1395	21	511
1396	19	922
1397	9	661
1397	51	961
1398	82	205
1399	18	99
1400	91	85
1400	39	635
1201	23	57
1201	60	639
1202	51	961
1203	83	24
1203	72	244
1204	36	796
1205	21	329
1205	60	552
1206	58	253
1206	19	159
1207	25	742
1207	58	789
1208	39	611
1209	82	709
1209	3	262
1210	65	777
1210	9	227
1211	19	5
1211	35	331
1212	19	991
1212	26	163
1213	95	580
1213	24	180
1214	83	24
1214	31	325
1215	69	325
1215	65	777
1216	25	276
1216	18	272
1217	70	951
1218	53	812
1218	35	331
1219	53	812
1219	3	262
1220	42	173
1220	69	279
1221	83	24
1222	76	214
1222	69	325
1223	39	611
1223	28	103
1224	52	694
1225	93	602
1225	25	276
1226	93	676
1226	97	732
1227	5	213
1228	69	325
1229	55	25
1230	59	103
1231	25	276
1231	82	709
1232	55	25
1232	69	279
1233	23	57
1234	52	694
1235	70	377
1236	95	506
1236	70	9
1237	9	661
1237	28	103
1238	3	591
1238	24	180
1239	9	661
1239	28	103
1240	9	661
1241	58	789
1242	39	635
1243	50	521
1244	52	694
1245	23	845
1246	45	961
1247	87	677
1248	5	213
1248	93	676
1249	78	789
1249	60	639
1250	18	272
1250	36	493
1251	70	377
1252	87	677
1253	36	796
1254	3	398
1255	33	469
1255	50	521
1256	58	253
1257	48	826
1258	36	796
1258	59	103
1259	2	378
1260	84	831
1260	39	489
1261	40	943
1262	69	35
1263	69	35
1263	57	140
1264	45	961
1264	25	693
1265	39	611
1266	69	35
1267	2	134
1267	81	661
1268	39	611
1268	56	375
1269	70	665
1269	9	661
1270	87	677
1271	46	750
1271	3	262
1272	31	325
1273	26	163
1274	69	257
1274	5	766
1275	21	329
1275	39	635
1276	18	272
1277	36	796
1277	10	353
1278	10	353
1278	70	9
1279	57	140
1280	6	180
1281	52	818
1281	95	580
1282	9	661
1283	2	441
1283	31	325
1284	19	5
1284	79	496
1285	70	9
1285	58	253
1286	29	586
1286	21	329
1287	39	635
1287	70	665
1288	2	134
1288	65	777
1289	42	173
1289	59	180
1290	8	126
1290	76	214
1291	8	549
1291	69	279
1292	24	180
1293	25	276
1293	50	521
1294	53	765
1295	84	831
1295	53	765
1296	60	639
1296	82	709
1297	19	159
1298	23	557
1299	19	922
1300	69	325
1601	91	85
1601	69	35
1602	60	552
1603	93	602
1603	70	9
1604	3	262
1605	80	791
1605	26	163
1606	25	693
1606	25	276
1607	58	789
1607	21	995
1608	69	325
1608	1	556
1609	83	24
1610	84	831
1611	2	134
1611	52	818
1612	8	126
1612	87	677
1613	45	961
1614	57	823
1614	69	257
1615	39	489
1615	95	506
1616	8	549
1616	96	112
1617	40	943
1618	2	134
1618	94	989
1619	65	777
1620	69	35
1620	93	602
1621	31	390
1621	72	244
1622	53	353
1623	91	85
1624	45	961
1625	52	694
1626	55	25
1626	36	796
1627	53	765
1627	69	279
1628	48	826
1629	70	9
1629	72	244
1630	93	676
1631	96	112
1631	24	180
1632	60	552
1632	71	727
1633	31	325
1633	2	192
1634	95	580
1634	82	709
1635	48	826
1635	56	375
1636	82	205
1637	19	922
1637	23	557
1638	70	377
1638	23	845
1639	29	586
1639	87	677
1640	9	227
1640	81	661
1641	72	244
1642	69	325
1643	58	253
1643	6	180
1644	24	180
1644	19	991
1645	79	496
1646	57	823
1646	9	661
1647	3	398
1647	78	789
1648	83	790
1649	23	557
1650	18	99
1650	23	557
1651	2	134
1651	59	180
1652	29	586
1653	25	276
1653	6	180
1654	69	325
1655	21	511
1656	58	789
1657	36	796
1657	52	694
1658	23	845
1659	45	961
1660	70	951
1660	19	5
1661	69	257
1662	39	611
1662	70	665
1663	25	693
1663	23	57
1664	95	506
1665	2	134
1666	91	85
1666	83	24
1667	83	24
1668	58	253
1668	53	353
1669	94	989
1670	50	521
1670	97	732
1671	24	180
1672	23	557
1672	70	665
1673	82	205
1673	36	493
1674	8	549
1674	69	35
1675	31	390
1676	19	159
1676	2	192
1677	94	989
1678	31	390
1679	26	163
1680	95	580
1680	3	262
1681	83	24
1682	3	262
1682	23	57
1683	95	580
1683	19	922
1684	55	25
1684	8	549
1685	58	253
1686	28	103
1687	96	112
1687	18	99
1688	50	521
1689	45	961
1689	96	112
1690	45	961
1691	52	818
1692	57	823
1693	93	565
1694	9	661
1695	52	694
1696	35	331
1696	8	549
1697	9	661
1697	70	9
1698	21	329
1699	59	103
1699	82	205
1700	69	257
1700	19	922
1701	31	390
1702	23	845
1702	57	140
1703	51	961
1704	65	777
1705	72	244
1705	2	441
1706	58	253
1706	69	279
1707	82	709
1708	53	765
1708	70	377
1709	96	112
1710	84	831
1710	18	99
1711	21	329
1712	95	506
1712	25	276
1713	6	180
1714	84	954
1714	24	180
1715	8	549
1716	5	766
1717	57	823
1718	18	272
1719	19	991
1719	25	693
1720	51	961
1720	33	469
1721	76	214
1722	87	677
1723	93	565
1723	82	205
1724	48	826
1725	70	951
1725	51	961
1726	95	506
1726	97	732
1727	79	496
1727	9	227
1728	39	611
1728	21	511
1729	83	24
1729	60	639
1730	91	85
1731	3	262
1732	53	812
1732	9	661
1733	26	74
1733	6	180
1734	39	635
1735	42	173
1736	26	163
1737	50	521
1738	39	489
1739	82	205
1740	28	103
1741	71	727
1742	21	995
1742	70	665
1743	10	353
1743	56	375
1744	69	325
1744	70	665
1745	69	35
1746	70	9
1746	58	789
1747	18	99
1748	70	377
1749	57	140
1750	1	556
1750	28	103
1751	5	213
1751	18	272
1752	60	639
1753	2	192
1753	21	329
1754	10	353
1755	82	709
1756	80	791
1757	56	375
1758	3	398
1759	26	163
1760	39	611
1761	93	565
1761	9	227
1762	57	823
1762	69	279
1763	69	257
1763	51	961
1764	36	796
1765	19	5
1765	81	661
1766	45	961
1767	36	493
1767	31	390
1768	50	521
1769	21	995
1769	52	818
1770	69	35
1770	10	353
1771	3	262
1771	40	943
1772	53	353
1773	72	244
1774	39	489
1775	45	961
1775	72	244
1776	80	791
1776	93	602
1777	65	777
1777	59	103
1778	18	272
1778	60	639
1779	69	325
1779	65	777
1780	79	496
1780	21	329
1781	56	375
1782	25	276
1782	5	213
1783	69	257
1784	21	995
1784	39	489
1785	23	57
1785	53	765
1786	50	521
1786	21	511
1787	2	134
1787	21	995
1788	58	253
1789	23	57
1790	31	325
1791	57	823
1792	82	709
1793	21	995
1794	94	989
1794	25	742
1795	83	790
1795	23	845
1796	79	496
1797	36	493
1798	83	24
1798	35	331
1799	60	552
1800	91	85
1800	35	331
1501	83	790
1501	19	159
1502	58	789
1502	59	103
1503	18	272
1503	36	493
1504	96	679
1505	94	989
1505	39	635
1506	42	173
1506	93	565
1507	39	489
1507	31	325
1508	8	126
1508	39	635
1509	9	227
1509	26	74
1510	21	329
1511	95	506
1511	9	661
1512	25	693
1513	9	661
1513	36	493
1514	25	276
1514	93	565
1515	2	441
1515	3	398
1516	60	639
1517	60	552
1518	91	85
1519	2	378
1519	23	557
1520	58	789
1521	57	140
1522	26	163
1523	39	635
1523	8	126
1524	58	789
1525	95	506
1525	70	377
1526	53	353
1527	94	989
1528	23	57
1529	57	823
1529	84	954
1530	53	353
1531	95	580
1532	1	556
1532	95	580
1533	2	441
1533	25	276
1534	10	353
1534	18	99
1535	8	549
1536	80	791
1536	55	25
1537	51	961
1538	40	943
1539	25	276
1539	24	180
1540	70	377
1541	9	661
1541	96	679
1542	60	639
1543	59	103
1544	18	99
1544	87	677
1545	46	750
1546	69	35
1547	25	742
1548	36	493
1549	69	257
1550	36	493
1550	53	765
1551	19	922
1552	70	665
1552	5	213
1553	56	375
1553	97	732
1554	36	796
1555	8	549
1556	26	74
1556	96	112
1557	2	378
1558	91	85
1559	70	951
1560	8	549
1561	19	5
1561	70	9
1562	72	244
1563	95	580
1564	96	112
1565	81	661
1566	84	831
1566	19	991
1567	9	661
1567	91	85
1568	60	639
1569	97	732
1569	18	272
1570	9	661
1570	60	552
1571	21	995
1572	23	57
1572	28	103
1573	58	789
1574	52	818
1574	65	777
1575	83	790
1576	84	954
1577	83	24
1578	93	565
1578	36	493
1579	39	611
1579	26	74
1580	70	665
1581	52	818
1581	2	378
1582	58	253
1583	59	180
1583	18	99
1584	65	777
1584	52	818
1585	53	765
1586	8	126
1586	3	591
1587	71	727
1588	36	493
1588	23	557
1589	82	205
1590	39	611
1591	23	557
1592	39	489
1592	2	134
1593	23	845
1594	65	777
1594	78	789
1595	95	506
1595	58	253
1596	52	694
1596	51	961
1597	70	9
1598	19	991
1598	3	262
1599	58	789
1599	76	214
1600	57	823
1801	70	377
1802	60	639
1803	6	180
1804	96	679
1805	83	790
1806	1	556
1806	23	845
1807	39	611
1807	53	765
1808	2	192
1809	53	765
1810	96	112
1810	65	777
1811	83	790
1811	21	995
1812	69	257
1812	23	57
1813	93	565
1813	78	789
1814	82	205
1814	10	353
1815	21	329
1815	60	552
1816	57	140
1816	82	205
1817	94	989
1817	65	777
1818	2	441
1818	84	831
1819	69	279
1820	53	812
1820	80	791
1821	3	262
1821	65	777
1822	24	180
1823	93	676
1823	59	103
1824	72	244
1824	8	549
1825	82	205
1825	3	262
1826	19	159
1826	35	331
1827	93	602
1828	31	325
1828	96	112
1829	84	831
1830	10	353
1830	65	777
1831	53	353
1832	18	99
1832	71	727
1833	52	694
1833	46	750
1834	21	995
1835	53	812
1836	31	390
1837	50	521
1838	52	694
1838	78	789
1839	35	331
1839	59	103
1840	2	378
1841	93	602
1841	26	74
1842	2	134
1843	6	180
1844	53	765
1845	36	796
1845	24	180
1846	36	493
1846	35	331
1847	53	765
1848	23	557
1848	2	378
1849	23	845
1850	94	989
1850	81	661
1851	70	377
1851	97	732
1852	23	57
1853	9	661
1854	24	180
1855	9	661
1856	10	353
1856	29	586
1857	81	661
1858	25	693
1858	56	375
1859	69	257
1860	25	742
1861	52	818
1862	58	789
1862	56	375
1863	33	469
1863	57	140
1864	5	766
1864	60	639
1865	9	661
1866	28	103
1867	58	789
1867	19	159
1868	18	272
1869	96	679
1870	82	205
1870	78	789
1871	58	789
1871	19	159
1872	97	732
1873	35	331
1873	2	192
1874	81	661
1875	60	639
1876	21	329
1876	9	661
1877	31	390
1877	35	331
1878	48	826
1878	95	580
1879	2	192
1879	87	677
1880	76	214
1881	69	325
1881	10	353
1882	2	441
1883	3	591
1884	2	134
1885	19	922
1886	26	163
1887	29	586
1887	18	272
1888	72	244
1889	31	325
1890	82	205
1891	55	25
1891	28	103
1892	46	750
1892	69	35
1893	53	812
1894	2	134
1894	93	676
1895	53	812
1895	8	126
1896	19	991
1897	71	727
1898	40	943
1898	23	557
1899	59	180
1900	93	602
1401	83	24
1401	25	742
1402	84	954
1403	5	766
1404	40	943
1405	81	661
1406	84	831
1407	18	272
1408	5	213
1409	58	789
1410	10	353
1410	83	790
1411	45	961
1411	19	159
1412	57	823
1412	39	489
1413	95	506
1414	81	661
1414	59	103
1415	21	995
1416	59	103
1416	36	796
1417	46	750
1417	95	506
1418	36	796
1419	25	693
1420	2	192
1421	23	57
1421	69	325
1422	10	353
1423	39	489
1423	23	557
1424	24	180
1425	3	262
1425	2	192
1426	96	112
1426	39	611
1427	2	134
1427	96	112
1428	59	180
1429	19	991
1430	31	390
1431	72	244
1431	45	961
1432	2	441
1432	9	661
1433	33	469
1434	70	665
1435	3	262
1436	53	812
1436	31	390
1437	31	390
1437	8	126
1438	28	103
1438	21	995
1439	2	192
1440	18	272
1440	52	818
1441	26	163
1441	93	602
1442	51	961
1443	19	5
1443	25	742
1444	69	35
1445	53	353
1445	82	709
1446	2	441
1447	58	789
1448	1	556
1448	19	159
1449	65	777
1450	23	57
1451	71	727
1451	93	676
1452	35	331
1452	72	244
1453	2	378
1453	52	694
1454	21	329
1455	58	789
1456	25	276
1457	21	511
1457	46	750
1458	95	580
1458	93	602
1459	21	511
1460	60	552
1461	53	812
1462	57	140
1462	25	693
1463	25	276
1463	96	679
1464	94	989
1464	19	922
1465	70	665
1466	8	549
1466	59	180
1467	19	991
1468	60	639
1469	19	922
1469	40	943
1470	52	818
1471	21	511
1472	3	398
1473	36	493
1474	19	991
1474	19	5
1475	31	390
1475	60	552
1476	94	989
1477	6	180
1477	28	103
1478	29	586
1478	2	378
1479	96	112
1480	25	693
1480	70	377
1481	57	140
1482	80	791
1482	19	991
1483	26	74
1483	58	253
1484	59	180
1485	87	677
1486	25	276
1487	81	661
1487	2	134
1488	28	103
1489	2	192
1490	18	99
1491	95	580
1492	53	353
1492	78	789
1493	23	557
1493	10	353
1494	53	765
1494	45	961
1495	2	192
1496	82	709
1497	19	159
1498	80	791
1499	55	25
1500	10	353
1500	8	549
101	83	24
101	31	325
102	25	276
102	23	845
103	8	126
104	24	180
104	39	611
105	97	732
105	10	353
106	83	790
107	71	727
107	3	262
108	57	823
108	5	766
109	19	991
109	23	57
110	23	845
111	31	390
111	81	661
112	59	103
112	59	180
113	71	727
114	50	521
114	19	5
115	83	24
116	23	557
117	94	989
118	71	727
119	94	989
120	55	25
121	93	676
122	42	173
123	2	134
124	57	823
124	2	441
125	70	951
126	9	227
126	51	961
127	72	244
127	3	262
128	97	732
129	19	5
129	52	694
130	60	552
130	3	398
131	93	602
131	91	85
132	23	557
133	36	796
133	48	826
134	19	991
134	58	253
135	33	469
136	21	995
137	36	493
137	79	496
138	6	180
139	39	489
139	93	565
140	21	995
140	10	353
141	53	765
142	96	679
142	84	954
143	18	99
144	23	557
145	60	639
146	28	103
146	70	9
147	69	325
148	57	140
149	25	742
150	1	556
151	84	831
151	42	173
152	46	750
152	69	35
153	26	74
153	26	163
154	9	661
155	33	469
155	80	791
156	97	732
156	93	565
157	8	126
158	28	103
159	53	812
160	33	469
160	25	742
161	28	103
161	21	329
162	35	331
162	39	611
163	58	253
164	5	213
164	26	74
165	58	789
166	8	126
166	91	85
167	36	796
168	65	777
168	93	676
169	82	709
170	9	661
171	96	112
171	58	789
172	2	441
173	70	9
173	93	565
174	24	180
174	53	353
175	3	591
175	45	961
176	45	961
177	8	549
178	2	192
178	72	244
179	57	140
179	76	214
180	21	511
181	70	951
181	69	257
182	19	991
182	56	375
183	95	506
184	52	818
184	69	325
185	52	818
185	79	496
186	39	611
187	53	765
188	69	35
189	48	826
189	31	390
190	69	257
191	53	765
192	2	192
192	29	586
193	97	732
193	21	329
194	42	173
194	8	126
195	48	826
195	52	818
196	10	353
197	1	556
197	95	506
198	94	989
199	48	826
200	84	831
1901	42	173
1902	29	586
1903	51	961
1903	96	112
1904	53	353
1904	96	112
1905	19	159
1905	5	766
1906	96	679
1907	25	742
1907	9	227
1908	52	694
1909	28	103
1910	9	227
1911	96	679
1911	10	353
1912	8	126
1913	31	390
1914	53	765
1914	8	126
1915	53	812
1915	25	276
1916	55	25
1916	5	766
1917	93	602
1917	2	441
1918	79	496
1918	3	262
1919	91	85
1920	36	796
1920	82	709
1921	78	789
1922	21	329
1923	53	353
1923	46	750
1924	19	922
1924	52	818
1925	18	99
1925	84	954
1926	23	57
1927	53	765
1927	9	661
1928	57	140
1929	51	961
1929	2	378
1930	53	812
1931	33	469
1931	81	661
1932	56	375
1932	31	325
1933	50	521
1934	26	74
1935	25	693
1935	78	789
1936	82	709
1936	70	665
1937	35	331
1938	2	441
1938	57	823
1939	33	469
1940	51	961
1940	3	591
1941	33	469
1941	6	180
1942	2	134
1942	3	591
1943	21	995
1943	93	602
1944	76	214
1944	52	694
1945	21	511
1946	42	173
1946	9	227
1947	6	180
1948	79	496
1948	10	353
1949	84	831
1949	60	552
1950	39	489
1951	2	441
1951	84	954
1952	96	112
1952	69	279
1953	59	103
1953	72	244
1954	82	709
1955	36	796
1956	2	441
1956	96	112
1957	65	777
1958	39	635
1959	95	580
1959	45	961
1960	96	112
1960	83	24
1961	10	353
1961	31	390
1962	18	99
1963	51	961
1963	46	750
1964	1	556
1965	70	9
1966	19	5
1967	18	272
1967	48	826
1968	2	192
1969	69	257
1970	96	679
1970	84	831
1971	31	325
1972	28	103
1973	19	922
1974	72	244
1975	18	99
1976	39	611
1976	59	103
1977	69	279
1977	25	693
1978	26	163
1979	95	506
1980	19	991
1981	40	943
1982	84	831
1983	76	214
1983	78	789
1984	3	398
1984	84	831
1985	60	639
1986	45	961
1987	40	943
1987	24	180
1988	52	694
1989	57	823
1990	8	126
1991	23	557
1991	5	766
1992	26	74
1992	19	5
1993	70	9
1993	2	134
1994	8	126
1994	58	789
1995	33	469
1995	60	552
1996	71	727
1997	72	244
1997	91	85
1998	18	272
1999	84	831
2000	1	556
2000	95	580
2001	26	163
2002	6	180
2003	95	506
2003	36	493
2004	97	732
2004	93	565
2005	69	279
2005	55	25
2006	21	995
2007	93	602
2007	53	765
2008	93	676
2008	83	790
2009	3	591
2009	78	789
2010	72	244
2010	50	521
2011	31	390
2012	69	279
2013	96	679
2013	31	325
2014	50	521
2015	58	789
2015	97	732
2016	25	693
2017	42	173
2018	52	818
2019	18	99
2020	3	398
2021	83	24
2021	8	549
2022	70	665
2022	84	954
2023	96	112
2024	55	25
2025	2	134
2025	95	580
2026	95	506
2027	58	253
2028	69	279
2028	2	134
2029	96	679
2030	95	580
2031	79	496
2032	70	951
2032	80	791
2033	94	989
2033	57	140
2034	39	489
2035	82	205
2036	52	694
2037	53	812
2037	9	661
2038	72	244
2038	93	602
2039	19	991
2040	94	989
2040	58	253
2041	2	192
2042	84	831
2043	91	85
2043	56	375
2044	3	262
2045	91	85
2046	18	272
2047	39	635
2047	42	173
2048	95	580
2048	69	35
2049	65	777
2050	69	279
2050	69	257
2051	25	276
2051	71	727
2052	18	99
2053	72	244
2053	96	112
2054	9	227
2054	81	661
2055	96	679
2056	6	180
2057	83	24
2057	1	556
2058	70	665
2059	70	665
2060	9	661
2060	25	276
2061	25	742
2062	2	441
2062	71	727
2063	39	489
2063	2	134
2064	3	398
2065	84	954
2066	55	25
2067	25	276
2068	46	750
2069	3	398
2070	50	521
2071	76	214
2071	95	506
2072	19	991
2073	46	750
2073	33	469
2074	53	353
2075	21	511
2075	60	639
2076	70	9
2076	28	103
2077	2	134
2078	19	159
2078	25	693
2079	19	159
2079	58	789
2080	53	765
2081	59	103
2081	3	398
2082	8	549
2083	94	989
2084	23	845
2084	39	635
2085	82	709
2085	55	25
2086	24	180
2087	96	679
2088	39	489
2089	2	378
2089	19	5
2090	71	727
2091	2	378
2091	18	99
2092	23	845
2092	42	173
2093	53	353
2093	51	961
2094	21	329
2094	95	506
2095	69	279
2096	95	506
2096	42	173
2097	51	961
2098	2	441
2098	25	742
2099	35	331
2099	84	954
2100	3	262
201	97	732
202	70	665
203	80	791
203	93	602
204	53	353
205	24	180
206	84	831
206	45	961
207	70	9
208	24	180
209	3	591
209	79	496
210	78	789
210	96	679
211	93	602
211	5	213
212	23	57
213	50	521
213	21	995
214	96	112
214	24	180
215	2	378
215	19	991
216	25	693
217	26	74
217	19	5
218	3	262
218	2	192
219	8	549
220	2	378
221	81	661
221	39	635
222	3	591
223	70	377
223	39	635
224	70	377
224	35	331
225	70	951
225	46	750
226	9	661
226	52	694
227	25	742
228	39	611
228	18	272
229	78	789
230	9	227
230	18	272
231	2	134
232	18	99
233	21	995
234	69	35
235	53	812
236	39	489
237	84	831
237	95	580
238	59	103
238	2	192
239	2	378
240	2	441
240	2	192
241	21	329
242	71	727
242	69	35
243	95	580
244	18	99
245	24	180
245	94	989
246	69	35
247	69	279
247	1	556
248	25	742
248	57	823
249	70	951
249	2	441
250	95	580
250	33	469
251	59	180
251	58	253
252	78	789
252	94	989
253	95	580
254	5	766
255	18	99
256	31	325
256	39	489
257	10	353
257	80	791
258	40	943
258	93	676
259	57	140
260	25	693
261	70	665
262	19	991
262	25	742
263	60	639
264	52	694
265	39	489
266	24	180
266	36	493
267	24	180
267	84	954
268	82	205
269	57	823
270	5	213
271	94	989
271	96	112
272	53	812
272	58	253
273	8	126
274	52	694
274	3	262
275	36	796
276	9	661
277	70	951
277	65	777
278	33	469
279	28	103
279	69	325
280	93	676
281	93	565
281	94	989
282	23	845
283	70	665
283	96	679
284	69	257
284	95	506
285	70	951
286	3	262
286	25	693
287	84	831
287	25	276
288	31	390
288	35	331
289	60	639
290	57	823
291	55	25
291	3	262
292	33	469
293	21	511
293	76	214
294	71	727
295	56	375
295	93	602
296	9	661
296	23	845
297	31	325
298	76	214
299	46	750
299	33	469
300	69	257
1	80	791
1	19	991
2	48	826
3	48	826
3	19	159
4	25	693
4	78	789
5	57	140
5	23	845
6	59	180
6	50	521
7	83	24
8	79	496
8	9	227
9	53	765
10	19	159
10	48	826
11	53	353
12	19	5
12	51	961
13	21	995
13	59	103
14	28	103
15	3	398
16	50	521
16	31	325
17	19	5
18	76	214
18	93	565
19	31	390
20	19	5
20	31	390
21	23	57
21	80	791
22	95	506
22	69	325
23	21	995
24	60	552
25	3	591
26	53	765
26	70	665
27	78	789
27	87	677
28	82	709
29	1	556
30	50	521
31	39	489
32	6	180
33	95	580
34	21	511
34	96	679
35	21	329
35	3	262
36	60	639
36	23	557
37	18	272
37	60	552
38	69	279
39	51	961
40	46	750
41	50	521
42	59	103
42	50	521
43	9	661
44	58	253
45	10	353
46	40	943
47	57	823
47	18	272
48	45	961
49	57	823
50	40	943
51	19	922
52	94	989
53	1	556
53	52	694
54	26	74
55	3	398
56	96	679
56	57	140
57	55	25
58	23	845
59	59	103
60	60	552
61	71	727
62	42	173
62	5	213
63	2	192
63	21	995
64	69	279
64	59	103
65	81	661
65	29	586
66	80	791
67	69	257
67	31	325
68	59	180
69	3	262
69	39	611
70	19	5
71	95	506
71	79	496
72	59	103
72	50	521
73	71	727
74	91	85
74	57	823
75	36	493
76	3	591
76	51	961
77	8	126
78	79	496
78	23	557
79	97	732
80	9	227
81	71	727
81	8	126
82	45	961
83	94	989
83	53	812
84	81	661
85	95	580
85	83	24
86	26	74
86	52	818
87	59	180
87	31	390
88	23	57
89	2	192
89	28	103
90	52	694
90	29	586
91	18	272
91	18	99
92	50	521
92	69	279
93	69	35
93	93	676
94	29	586
95	57	823
96	19	991
97	36	796
97	71	727
98	31	390
98	45	961
99	36	493
99	3	591
100	48	826
\.


--
-- Data for Name: relation_57; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_57 (supplier_id, product_id) FROM stdin;
1	1171
1	1166
2	328
2	861
3	1259
4	188
4	1028
5	768
5	82
6	522
7	1113
8	113
8	1508
9	1966
9	1080
10	1994
10	337
11	1349
12	1140
12	482
13	553
13	732
14	1610
14	1971
15	2064
16	1537
17	701
17	183
18	2058
18	1926
19	1446
20	204
20	1447
21	600
22	84
22	513
23	1087
23	1014
24	1429
25	636
25	798
26	1038
27	573
27	1308
28	811
28	1027
29	1554
30	1958
31	45
31	583
32	59
32	395
33	1690
33	469
34	1432
34	1458
35	1605
36	384
37	1499
38	1055
38	63
39	562
40	1375
41	1847
41	1308
42	283
43	1546
43	587
44	53
44	843
45	2081
46	841
47	1908
47	1833
48	1033
48	1731
49	749
50	1723
50	779
51	1992
51	1732
52	613
53	627
54	1988
54	2042
55	1205
55	1597
56	954
56	1368
57	477
57	759
58	558
59	699
59	752
60	1423
61	2077
62	1435
63	800
63	111
64	1237
64	1303
65	1882
66	694
67	348
67	613
68	2069
68	1365
69	77
69	1778
70	733
70	1046
71	988
72	13
72	596
73	1925
73	291
74	2072
74	620
75	1792
75	900
76	1543
76	228
77	470
77	1732
78	1748
79	1625
79	1909
80	1527
81	1594
81	1193
82	1252
82	2019
83	91
84	479
85	1677
85	809
86	1019
87	1540
88	2084
88	2078
89	1574
89	544
90	649
90	7
91	451
91	1508
92	80
92	1684
93	196
94	1457
94	1744
95	1661
95	1239
96	163
97	40
98	294
99	245
100	1185
100	1801
\.


--
-- Data for Name: relation_58; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_58 (purchaseorder_id, supplier_pos_supplier_id) FROM stdin;
30	25
97	38
24	93
34	69
4	25
73	94
8	57
93	6
86	85
17	38
90	85
18	77
66	21
49	85
16	2
81	3
20	77
69	57
5	10
85	24
76	18
95	66
79	73
67	72
50	44
84	77
45	14
96	96
60	57
94	93
65	24
56	68
35	62
39	90
82	74
2	53
15	84
89	35
42	16
61	73
74	33
7	24
64	43
10	59
80	4
33	24
25	13
43	21
83	61
75	91
13	66
59	38
68	31
9	44
99	64
55	12
1	90
40	29
14	7
92	58
26	15
77	34
52	35
57	49
78	33
54	83
22	49
53	16
19	92
62	94
98	30
70	7
71	21
47	31
100	35
29	15
3	99
23	98
41	97
91	63
37	27
88	97
58	81
44	43
38	30
28	68
31	3
\.


--
-- Data for Name: relation_59; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_59 (purchaseorder_id, product_id) FROM stdin;
1	1798
1	591
2	449
2	419
3	1364
4	938
4	962
5	2048
5	737
6	240
7	130
8	1952
8	1611
9	884
9	134
10	927
10	1429
11	325
11	863
12	905
13	622
14	1557
15	1495
15	967
16	2051
17	485
18	625
18	373
19	1395
19	129
20	2082
21	546
21	522
22	249
23	1460
24	2036
25	1898
25	1618
26	1145
26	215
27	899
28	386
29	1129
29	176
30	1711
30	1213
31	509
31	1187
32	380
33	1388
33	1528
34	1775
34	746
35	224
35	1153
36	1909
37	761
37	1751
38	1046
39	704
39	269
40	1138
40	1060
41	24
42	1939
42	768
43	379
43	1768
44	1707
44	1995
45	1627
45	145
46	372
46	943
47	963
47	116
48	61
49	344
50	1889
51	1208
52	2016
52	802
53	297
53	1461
54	907
54	342
55	1176
55	626
56	503
57	1950
57	1408
58	902
58	144
59	1744
60	2091
60	548
61	834
62	749
63	1671
63	1979
64	721
64	339
65	1122
65	1311
66	351
66	1034
67	825
67	1845
68	1885
69	22
70	339
70	1372
71	512
71	144
72	926
72	324
73	243
74	744
74	1257
75	151
76	409
77	987
78	1118
78	706
79	1067
80	1173
81	1940
82	2082
83	589
83	1245
84	1906
84	1998
85	1626
86	401
87	112
88	1499
88	1926
89	1277
89	1522
90	2097
91	61
92	584
93	2008
93	512
94	246
94	1782
95	901
95	969
96	923
96	505
97	1563
97	1761
98	2002
99	835
100	289
100	33
\.


--
-- Data for Name: relation_6; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_6 (laptop_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, cpu, ram_gb, battery_wh, productimage, productvariant, pricehistory) FROM stdin;
602	end	dark	524	327	681	soon	620	talk	326	912	\N	\N	\N
603	common	mission	803	587	92	the	347	put	426	872	\N	\N	\N
604	young	star	74	269	65	still	20	minute	185	931	\N	\N	\N
605	improve	range	336	232	321	word	855	security	838	259	\N	\N	\N
607	agree	poor	302	167	649	others	50	by	119	442	\N	\N	\N
608	method	other	441	950	628	large	285	read	366	787	\N	\N	\N
609	Mrs	should	670	737	580	attack	590	seat	289	624	\N	\N	\N
610	ten	type	263	692	177	change	147	along	361	97	\N	\N	\N
611	floor	likely	407	366	535	at	406	off	461	154	\N	\N	\N
612	finally	deal	853	493	995	outside	39	mission	748	656	\N	\N	\N
613	reach	sit	254	81	759	successful	40	public	532	520	\N	\N	\N
614	beat	will	483	584	496	current	940	senior	533	815	\N	\N	\N
615	read	involve	175	577	726	although	408	professor	14	396	\N	\N	\N
616	very	anything	566	742	576	he	170	staff	608	603	\N	\N	\N
618	account	others	244	705	661	grow	872	despite	91	453	\N	\N	\N
619	discover	cut	777	893	366	find	166	dog	138	453	\N	\N	\N
620	total	again	953	853	47	technology	581	protect	346	994	\N	\N	\N
621	impact	quite	828	178	583	group	490	myself	9	590	\N	\N	\N
622	above	third	240	906	898	easy	455	loss	671	168	\N	\N	\N
623	where	country	522	214	410	different	127	people	323	269	\N	\N	\N
624	medical	story	142	174	338	figure	185	participant	825	934	\N	\N	\N
625	rule	one	760	633	543	individual	240	general	568	724	\N	\N	\N
626	radio	glass	438	480	469	claim	174	available	533	631	\N	\N	\N
628	activity	TV	699	7	833	five	122	than	436	390	\N	\N	\N
629	character	gun	731	671	526	itself	633	others	909	451	\N	\N	\N
631	option	kitchen	56	88	740	recent	100	score	552	397	\N	\N	\N
632	pressure	level	141	455	407	mean	487	mission	460	535	\N	\N	\N
633	air	result	874	608	38	benefit	970	full	1000	605	\N	\N	\N
634	because	face	461	501	400	alone	935	sure	358	795	\N	\N	\N
636	especially	lawyer	29	570	63	give	999	customer	951	564	\N	\N	\N
637	imagine	human	236	457	871	against	453	test	344	911	\N	\N	\N
638	least	accept	764	105	398	news	766	discover	480	285	\N	\N	\N
639	need	television	953	420	477	dog	520	result	99	169	\N	\N	\N
640	throughout	cultural	411	555	887	store	905	every	910	629	\N	\N	\N
642	final	walk	995	141	626	opportunity	231	question	806	831	\N	\N	\N
643	time	bag	222	909	465	few	106	understand	716	106	\N	\N	\N
645	woman	middle	961	287	408	executive	397	ahead	499	734	\N	\N	\N
646	per	fire	457	309	759	loss	660	pick	596	397	\N	\N	\N
647	hard	among	321	870	772	offer	179	product	103	502	\N	\N	\N
648	six	leg	185	457	158	read	109	tax	552	127	\N	\N	\N
649	bar	provide	550	327	324	have	975	skill	694	573	\N	\N	\N
650	upon	measure	958	651	350	during	576	among	607	819	\N	\N	\N
651	western	purpose	474	332	497	environmental	844	use	550	930	\N	\N	\N
652	type	particular	224	171	247	risk	880	people	609	956	\N	\N	\N
653	task	born	252	53	800	fear	928	sense	635	778	\N	\N	\N
654	land	mother	64	337	430	role	353	live	369	371	\N	\N	\N
655	green	wonder	615	610	903	administration	215	treat	806	924	\N	\N	\N
656	toward	here	875	296	929	for	322	mother	407	716	\N	\N	\N
657	report	when	394	686	793	sit	9	bag	399	667	\N	\N	\N
658	community	mission	924	992	983	goal	619	newspaper	803	799	\N	\N	\N
659	us	step	631	860	916	anyone	240	get	68	843	\N	\N	\N
660	begin	quickly	627	328	394	add	728	least	893	301	\N	\N	\N
661	standard	half	99	445	5	will	96	although	828	418	\N	\N	\N
662	everyone	positive	975	157	115	fear	772	eye	349	148	\N	\N	\N
664	hundred	watch	199	163	169	wall	988	boy	992	151	\N	\N	\N
666	party	mention	342	622	813	quality	609	agency	141	22	\N	\N	\N
667	sound	myself	368	798	179	such	241	question	710	509	\N	\N	\N
668	hundred	three	607	501	36	soon	137	future	546	481	\N	\N	\N
670	lay	medical	916	759	357	radio	393	fear	487	31	\N	\N	\N
671	leave	last	542	473	909	political	737	activity	247	212	\N	\N	\N
672	walk	such	706	931	817	in	740	her	714	312	\N	\N	\N
673	pick	hair	44	274	840	response	74	any	817	109	\N	\N	\N
674	production	process	833	823	790	remain	888	help	410	340	\N	\N	\N
675	challenge	finish	108	457	736	how	684	determine	288	147	\N	\N	\N
676	international	large	442	381	664	size	955	billion	769	393	\N	\N	\N
677	probably	add	422	447	377	seven	201	why	67	149	\N	\N	\N
678	soon	have	244	246	22	what	686	law	404	468	\N	\N	\N
679	up	up	804	632	452	often	56	finish	177	835	\N	\N	\N
680	method	especially	841	839	540	few	46	find	441	875	\N	\N	\N
681	near	rise	805	286	426	study	881	president	242	712	\N	\N	\N
682	want	attorney	791	677	384	write	798	method	351	600	\N	\N	\N
683	source	institution	766	49	519	southern	133	arm	706	942	\N	\N	\N
684	nature	brother	536	373	599	against	358	you	121	862	\N	\N	\N
635	entire	bar	775	178	863	speech	185	like	899	795	\N	\N	[{"price": "335", "ends_at": "on", "price_id": "775", "starts_at": "relationship"}]
669	describe	believe	579	147	215	question	726	option	142	287	\N	\N	[{"price": "912", "ends_at": "lay", "price_id": "456", "starts_at": "develop"}]
686	six	court	825	20	375	culture	155	nation	296	26	\N	\N	\N
688	goal	understand	604	442	95	reason	558	teach	618	514	\N	\N	\N
689	play	nearly	100	132	552	similar	659	quality	617	558	\N	\N	\N
690	source	candidate	975	420	248	teacher	490	life	853	752	\N	\N	\N
691	draw	car	325	449	120	day	216	media	607	626	\N	\N	\N
693	term	oil	905	929	201	view	707	half	670	606	\N	\N	\N
694	weight	lose	90	4	525	network	934	response	988	241	\N	\N	\N
695	measure	she	94	315	500	help	588	plan	440	574	\N	\N	\N
696	throw	surface	306	402	644	boy	687	health	610	30	\N	\N	\N
697	recently	single	284	931	636	huge	449	various	225	276	\N	\N	\N
699	note	morning	276	527	178	remain	467	situation	303	600	\N	\N	\N
700	describe	store	605	187	329	respond	778	politics	991	683	\N	\N	\N
641	would	any	759	877	490	artist	328	price	150	359	[{"url": "meet", "alt_text": "democratic", "image_id": "417", "sort_order": "971"}]	\N	\N
665	leave	public	123	453	599	vote	442	time	138	871	[{"url": "street", "alt_text": "also", "image_id": "667", "sort_order": "725"}]	\N	\N
601	white	could	874	376	512	bit	139	need	500	70	[{"url": "part", "alt_text": "change", "image_id": "809", "sort_order": "701"}]	\N	\N
685	each	he	883	252	651	positive	448	foot	974	153	\N	[{"barcode": "five", "variant_id": "783", "price_override": "873", "is_active_variant": "709"}]	\N
617	involve	management	383	53	861	word	842	leave	362	449	\N	[{"barcode": "edge", "variant_id": "779", "price_override": "616", "is_active_variant": "807"}]	\N
687	lay	science	484	654	28	management	69	possible	769	816	\N	\N	[{"price": "651", "ends_at": "subject", "price_id": "163", "starts_at": "during"}]
606	discuss	upon	891	314	975	wish	426	cell	974	13	\N	\N	[{"price": "694", "ends_at": "tree", "price_id": "771", "starts_at": "lay"}]
692	rich	figure	887	715	379	house	99	discuss	364	109	\N	\N	[{"price": "880", "ends_at": "report", "price_id": "669", "starts_at": "government"}]
627	until	entire	520	979	317	establish	290	season	690	159	\N	[{"barcode": "girl", "variant_id": "169", "price_override": "903", "is_active_variant": "200"}]	[{"price": "250", "ends_at": "rich", "price_id": "464", "starts_at": "whatever"}]
644	do	make	436	54	465	although	384	Republican	574	330	\N	\N	[{"price": "932", "ends_at": "too", "price_id": "830", "starts_at": "fill"}]
698	identify	sing	932	891	330	mind	453	seem	547	57	[{"url": "message", "alt_text": "increase", "image_id": "679", "sort_order": "728"}]	\N	[{"price": "700", "ends_at": "there", "price_id": "158", "starts_at": "happy"}]
630	parent	indicate	461	835	547	loss	373	guy	856	212	\N	[{"barcode": "agency", "variant_id": "972", "price_override": "842", "is_active_variant": "152"}, {"barcode": "myself", "variant_id": "582", "price_override": "652", "is_active_variant": "425"}]	[{"price": "14", "ends_at": "method", "price_id": "442", "starts_at": "particularly"}]
663	medical	degree	385	448	334	particularly	965	firm	961	214	\N	[{"barcode": "carry", "variant_id": "523", "price_override": "584", "is_active_variant": "839"}, {"barcode": "president", "variant_id": "280", "price_override": "592", "is_active_variant": "366"}]	[{"price": "47", "ends_at": "whose", "price_id": "805", "starts_at": "hotel"}]
\.


--
-- Data for Name: relation_60; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_60 (custorder_id, shipment_id, courier_shipments_courierpartner_id) FROM stdin;
12	202	40
2	192	92
42	67	47
67	944	2
18	658	94
100	407	74
59	83	4
2	590	25
68	291	84
77	47	79
52	162	94
78	853	4
40	746	37
51	769	41
35	685	4
19	173	51
21	410	13
53	426	94
54	445	67
84	573	82
100	317	85
72	342	45
96	71	10
96	302	80
14	42	28
42	540	97
44	204	14
8	929	22
91	971	56
50	682	82
16	927	92
32	246	33
87	925	62
48	120	97
37	388	85
32	170	54
15	93	23
8	998	32
66	796	73
92	47	97
3	5	53
86	599	84
40	30	86
88	886	68
75	839	38
11	124	30
92	272	31
69	807	26
21	578	52
62	282	28
75	476	73
96	179	42
94	198	84
80	639	94
38	137	78
61	497	60
57	243	85
100	587	87
16	479	61
67	61	86
6	534	82
49	658	51
25	75	50
27	234	43
72	513	31
51	819	77
82	931	19
46	550	14
64	50	94
11	51	26
61	239	40
21	946	2
79	170	100
47	984	96
54	214	61
43	78	36
35	562	17
85	368	62
75	350	40
93	416	32
43	473	16
73	231	5
88	794	27
27	24	41
66	52	77
46	279	65
33	610	77
43	382	18
57	984	3
60	769	60
17	293	29
71	535	95
65	19	95
83	891	85
55	342	19
\.


--
-- Data for Name: relation_61; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_61 (phone_id, bundle_phone_phone_id) FROM stdin;
1001	1061
1001	1033
1001	1093
1002	1049
1002	1015
1003	1039
1003	1092
1004	1001
1005	1029
1005	1059
1006	1080
1006	1015
1006	1040
1007	1036
1008	1060
1008	1019
1009	1002
1009	1080
1010	1062
1011	1021
1011	1061
1011	1023
1012	1018
1012	1067
1013	1077
1013	1084
1014	1027
1015	1036
1016	1041
1016	1068
1016	1069
1017	1044
1017	1068
1018	1034
1019	1006
1019	1057
1019	1035
1020	1085
1021	1044
1021	1080
1022	1057
1022	1038
1023	1020
1024	1058
1024	1020
1024	1085
1025	1053
1025	1029
1026	1051
1026	1065
1026	1035
1027	1065
1028	1012
1028	1031
1028	1043
1029	1012
1029	1014
1029	1081
1030	1022
1030	1020
1030	1014
1031	1067
1031	1064
1031	1030
1032	1028
1033	1031
1033	1030
1034	1079
1035	1064
1035	1051
1035	1075
1036	1021
1037	1004
1037	1041
1038	1012
1038	1029
1039	1052
1039	1008
1040	1043
1040	1023
1040	1081
1041	1047
1041	1027
1041	1031
1042	1052
1043	1061
1043	1056
1043	1021
1044	1023
1044	1069
1044	1094
1045	1040
1046	1049
1046	1022
1046	1079
1047	1010
1047	1063
1047	1071
1048	1098
1048	1018
1049	1036
1050	1093
1050	1015
1050	1076
1051	1063
1051	1070
1052	1051
1052	1042
1052	1032
1053	1009
1053	1063
1054	1042
1055	1059
1055	1021
1056	1095
1056	1072
1057	1072
1057	1015
1058	1044
1058	1065
1058	1004
1059	1052
1059	1029
1060	1088
1060	1021
1060	1070
1061	1080
1062	1041
1062	1073
1063	1027
1063	1054
1063	1003
1064	1026
1064	1061
1065	1058
1066	1065
1066	1059
1066	1050
1067	1014
1068	1075
1069	1036
1069	1075
1069	1096
1070	1025
1070	1029
1070	1063
1071	1047
1071	1096
1072	1015
1072	1053
1072	1070
1073	1093
1073	1062
1074	1042
1074	1022
1075	1080
1075	1039
1076	1039
1077	1013
1078	1016
1078	1096
1078	1077
1079	1037
1080	1002
1080	1031
1081	1092
1081	1054
1082	1056
1083	1047
1084	1063
1085	1055
1086	1048
1086	1021
1086	1058
1087	1042
1088	1027
1088	1064
1088	1056
1089	1050
1090	1040
1090	1064
1091	1025
1091	1058
1091	1080
1092	1096
1092	1025
1092	1043
1093	1073
1093	1076
1093	1002
1094	1035
1094	1087
1094	1011
1095	1055
1095	1006
1095	1085
1096	1035
1096	1052
1096	1093
1097	1036
1097	1017
1098	1030
1099	1023
1099	1060
1099	1054
1100	1099
1100	1063
\.


--
-- Data for Name: relation_62; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_62 (smartwatch_id, bundled_phone_smart_watch_phone_id) FROM stdin;
866	1038
863	1018
842	1064
849	1063
869	1050
806	1063
827	1032
828	1082
832	1091
895	1066
833	1037
814	1060
873	1037
899	1070
900	1044
854	1078
855	1081
880	1046
888	1100
810	1001
821	1081
811	1034
865	1043
829	1018
817	1019
831	1044
884	1078
816	1090
881	1093
853	1009
877	1064
892	1011
891	1071
856	1098
897	1075
872	1056
826	1071
847	1091
830	1045
846	1036
824	1026
850	1066
807	1018
818	1022
870	1014
864	1041
887	1034
822	1052
\.


--
-- Data for Name: relation_63; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_63 (phone_id, single_bundle_phone_bundled_phone_phone_id) FROM stdin;
1009	1024
1092	1022
1012	1004
1097	1093
1031	1005
1044	1010
1020	1071
1085	1055
1079	1092
1083	1040
1017	1086
1038	1097
\.


--
-- Data for Name: relation_7; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_7 (tablet_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, screen_size_in, productimage, productvariant, pricehistory) FROM stdin;
701	finish	quite	710	424	702	nice	489	771	\N	\N	\N
702	strong	ground	646	226	314	win	65	152	\N	\N	\N
703	writer	always	506	997	842	organization	847	369	\N	\N	\N
704	ok	fine	266	866	859	ready	809	555	\N	\N	\N
705	agreement	reach	901	311	142	talk	514	142	\N	\N	\N
707	rock	development	584	933	334	other	129	729	\N	\N	\N
708	them	card	1000	15	551	Mrs	789	276	\N	\N	\N
709	wonder	college	638	830	67	capital	291	13	\N	\N	\N
710	purpose	seven	663	273	743	special	580	412	\N	\N	\N
711	would	process	115	101	702	international	620	635	\N	\N	\N
712	hospital	campaign	653	713	705	politics	94	626	\N	\N	\N
713	fear	should	511	543	352	plan	193	174	\N	\N	\N
714	surface	weight	57	632	120	get	121	569	\N	\N	\N
715	state	probably	543	313	772	see	166	547	\N	\N	\N
716	such	lose	154	234	887	issue	92	516	\N	\N	\N
717	find	seven	362	920	707	appear	274	630	\N	\N	\N
718	much	however	138	293	592	big	72	877	\N	\N	\N
719	left	chair	611	272	59	outside	443	626	\N	\N	\N
720	six	like	989	290	864	fly	433	447	\N	\N	\N
721	final	left	861	829	70	strong	220	787	\N	\N	\N
722	discover	avoid	696	35	954	manage	977	870	\N	\N	\N
723	good	economy	425	364	964	garden	524	933	\N	\N	\N
724	stand	level	152	184	809	why	235	830	\N	\N	\N
725	race	respond	965	61	375	during	889	458	\N	\N	\N
726	he	character	330	834	223	kitchen	264	159	\N	\N	\N
727	television	tend	708	913	722	prepare	110	490	\N	\N	\N
729	watch	voice	269	796	813	last	920	214	\N	\N	\N
730	although	audience	818	136	707	us	679	36	\N	\N	\N
731	far	opportunity	807	787	392	sit	549	886	\N	\N	\N
732	generation	green	25	135	238	rock	661	102	\N	\N	\N
733	not	may	908	304	719	product	206	529	\N	\N	\N
734	yes	family	342	101	255	until	504	589	\N	\N	\N
736	case	attention	966	610	650	animal	410	567	\N	\N	\N
737	other	name	996	432	858	wall	641	409	\N	\N	\N
738	wide	able	969	890	145	different	131	63	\N	\N	\N
739	ever	reach	300	398	632	will	654	98	\N	\N	\N
740	friend	western	207	613	278	firm	610	433	\N	\N	\N
741	senior	pick	271	521	850	ball	334	802	\N	\N	\N
742	friend	hold	967	157	575	she	967	689	\N	\N	\N
744	current	news	466	272	769	turn	291	143	\N	\N	\N
745	low	entire	823	87	417	paper	29	491	\N	\N	\N
746	act	what	597	737	134	imagine	504	821	\N	\N	\N
747	natural	heart	862	791	239	fast	386	823	\N	\N	\N
748	use	fund	64	421	616	use	256	689	\N	\N	\N
749	find	clearly	41	923	466	sense	301	626	\N	\N	\N
750	us	much	41	356	788	whole	70	75	\N	\N	\N
752	view	name	93	551	482	only	871	335	\N	\N	\N
753	strong	firm	877	788	176	picture	898	539	\N	\N	\N
754	give	attack	256	336	618	soon	255	650	\N	\N	\N
755	enjoy	Democrat	791	719	223	also	980	314	\N	\N	\N
756	significant	full	852	550	331	international	602	5	\N	\N	\N
757	issue	public	673	493	259	physical	152	996	\N	\N	\N
758	ever	treat	248	882	166	gas	266	409	\N	\N	\N
759	young	option	208	142	169	today	324	396	\N	\N	\N
760	hand	recent	931	723	217	conference	40	457	\N	\N	\N
761	occur	sound	222	411	810	prevent	718	919	\N	\N	\N
762	scientist	pressure	319	791	226	hold	524	814	\N	\N	\N
763	people	last	668	457	345	decide	71	73	\N	\N	\N
764	already	including	844	237	123	kitchen	732	848	\N	\N	\N
765	better	top	570	470	11	look	470	444	\N	\N	\N
766	move	catch	554	113	197	international	250	316	\N	\N	\N
767	happen	particularly	220	532	622	strategy	931	316	\N	\N	\N
768	stock	choice	271	943	358	travel	295	49	\N	\N	\N
769	population	media	30	896	11	red	44	212	\N	\N	\N
770	fact	age	79	324	464	final	118	253	\N	\N	\N
771	official	concern	690	891	114	address	31	200	\N	\N	\N
773	drop	whose	30	573	233	hundred	178	858	\N	\N	\N
774	despite	bar	545	973	939	woman	230	142	\N	\N	\N
775	country	beautiful	65	17	893	little	329	936	\N	\N	\N
776	herself	significant	591	87	530	work	200	408	\N	\N	\N
777	stay	nor	9	557	287	dog	266	556	\N	\N	\N
778	world	they	395	895	414	baby	286	91	\N	\N	\N
779	quite	entire	185	778	491	bed	137	924	\N	\N	\N
780	project	note	633	214	539	power	530	53	\N	\N	\N
781	career	financial	867	325	149	produce	327	407	\N	\N	\N
782	explain	where	42	902	419	magazine	852	515	\N	\N	\N
783	reflect	major	901	804	67	water	135	569	\N	\N	\N
784	night	word	421	560	399	political	607	46	\N	\N	\N
785	forward	amount	223	199	312	allow	981	307	\N	\N	\N
786	born	lot	932	531	24	culture	196	549	\N	\N	\N
787	politics	food	534	759	547	scientist	236	91	\N	\N	\N
788	deal	able	216	492	169	sure	674	862	\N	\N	\N
789	structure	anyone	413	911	290	station	155	821	\N	\N	\N
790	interview	assume	102	859	969	growth	726	602	\N	\N	\N
791	cup	it	441	487	979	social	965	839	\N	\N	\N
792	land	herself	224	580	480	build	994	885	\N	\N	\N
793	let	away	679	415	894	hour	65	131	\N	\N	\N
794	represent	a	347	519	487	western	525	677	\N	\N	\N
795	though	data	377	444	837	sing	867	975	\N	\N	\N
796	success	Congress	454	267	965	information	365	396	\N	\N	\N
735	same	business	119	183	509	discuss	724	659	\N	[{"barcode": "dream", "variant_id": "957", "price_override": "453", "is_active_variant": "489"}]	\N
706	me	career	467	872	39	tree	481	748	\N	\N	[{"price": "471", "ends_at": "miss", "price_id": "990", "starts_at": "culture"}]
797	near	network	822	580	235	these	924	636	\N	\N	\N
799	her	event	430	897	601	staff	63	781	\N	\N	\N
800	state	music	472	923	113	agency	466	360	\N	\N	\N
728	behind	Mr	702	750	921	left	484	320	[{"url": "bag", "alt_text": "event", "image_id": "21", "sort_order": "964"}]	\N	\N
798	attention	lay	887	109	186	thousand	78	27	[{"url": "rich", "alt_text": "international", "image_id": "94", "sort_order": "532"}]	\N	\N
772	call	just	652	928	139	bed	451	747	[{"url": "not", "alt_text": "wind", "image_id": "341", "sort_order": "133"}]	\N	\N
751	hard	perhaps	848	47	599	song	363	316	[{"url": "door", "alt_text": "hard", "image_id": "522", "sort_order": "785"}]	\N	\N
743	peace	check	924	694	26	necessary	789	380	\N	[{"barcode": "brother", "variant_id": "559", "price_override": "91", "is_active_variant": "144"}]	\N
\.


--
-- Data for Name: relation_8; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_8 (smartwatch_id, band_size) FROM stdin;
801	player
802	son
803	both
804	news
805	identify
806	site
807	factor
808	now
809	industry
810	operation
811	use
812	box
813	suddenly
814	amount
815	manager
816	family
817	after
818	sing
819	dinner
820	later
821	consumer
822	loss
823	low
824	reach
825	thought
826	never
827	party
828	service
829	hear
830	now
831	choice
832	star
833	range
834	many
835	role
836	spend
837	suggest
838	might
839	together
840	citizen
841	five
842	provide
843	month
844	which
845	past
846	worry
847	risk
848	nor
849	population
850	music
851	unit
852	seven
853	though
854	mean
855	oil
856	itself
857	stage
858	must
859	know
860	chance
861	ability
862	skill
863	campaign
864	single
865	fall
866	her
867	research
868	minute
869	hour
870	institution
871	item
872	another
873	wide
874	be
875	station
876	interesting
877	understand
878	page
879	deep
880	political
881	anyone
882	soldier
883	course
884	it
885	social
886	room
887	set
888	gun
889	loss
890	line
891	draw
892	response
893	yourself
894	little
895	expect
896	black
897	style
898	consumer
899	price
900	case
\.


--
-- Data for Name: relation_9; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_9 (camera_id, sensor_mp) FROM stdin;
901	514
902	893
903	689
904	778
905	229
906	861
907	686
908	257
909	214
910	356
911	519
912	529
913	112
914	451
915	221
916	765
917	227
918	18
919	206
920	437
921	833
922	402
923	603
924	630
925	824
926	484
927	30
928	638
929	301
930	407
931	935
932	102
933	732
934	571
935	807
936	137
937	285
938	307
939	918
940	903
941	173
942	597
943	536
944	112
945	944
946	445
947	343
948	914
949	687
950	645
951	892
952	295
953	430
954	524
955	671
956	971
957	655
958	797
959	88
960	446
961	180
962	44
963	516
964	100
965	180
966	581
967	19
968	632
969	758
970	163
971	558
972	520
973	688
974	648
975	657
976	678
977	756
978	225
979	268
980	158
981	974
982	203
983	633
984	400
985	506
986	276
987	442
988	773
989	199
990	911
991	346
992	392
993	445
994	705
995	635
996	451
997	646
998	516
999	281
1000	381
\.


--
-- Data for Name: temp_browsingsession; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_browsingsession (user_id, email, password_hash, employee_no, role, department, browsingsession) FROM stdin;
7	\N	\N	\N	\N	\N	[{"device": "country", "session_id": "445", "started_at": "draw"}]
740	\N	\N	\N	\N	\N	[{"device": "religious", "session_id": "702", "started_at": "responsibility"}]
183	\N	\N	\N	\N	\N	[{"device": "these", "session_id": "47", "started_at": "natural"}]
699	\N	\N	\N	\N	\N	[{"device": "act", "session_id": "641", "started_at": "want"}]
116	\N	\N	\N	\N	\N	[{"device": "on", "session_id": "643", "started_at": "reason"}]
238	\N	\N	\N	\N	\N	[{"device": "as", "session_id": "748", "started_at": "very"}]
113	\N	\N	\N	\N	\N	[{"device": "majority", "session_id": "858", "started_at": "weight"}]
309	\N	\N	\N	\N	\N	[{"device": "water", "session_id": "102", "started_at": "situation"}]
946	\N	\N	\N	\N	\N	[{"device": "least", "session_id": "38", "started_at": "sign"}]
461	\N	\N	\N	\N	\N	[{"device": "series", "session_id": "322", "started_at": "determine"}]
967	\N	\N	\N	\N	\N	[{"device": "sell", "session_id": "224", "started_at": "quite"}]
619	\N	\N	\N	\N	\N	[{"device": "third", "session_id": "747", "started_at": "kid"}]
518	\N	\N	\N	\N	\N	[{"device": "himself", "session_id": "578", "started_at": "follow"}]
586	\N	\N	\N	\N	\N	[{"device": "discussion", "session_id": "63", "started_at": "pretty"}]
66	\N	\N	\N	\N	\N	[{"device": "after", "session_id": "685", "started_at": "allow"}]
995	\N	\N	\N	\N	\N	[{"device": "strong", "session_id": "975", "started_at": "state"}]
648	\N	\N	\N	\N	\N	[{"device": "attorney", "session_id": "671", "started_at": "hear"}]
318	\N	\N	\N	\N	\N	[{"device": "contain", "session_id": "72", "started_at": "feeling"}]
415	\N	\N	\N	\N	\N	[{"device": "Democrat", "session_id": "630", "started_at": "clearly"}]
803	\N	\N	\N	\N	\N	[{"device": "word", "session_id": "783", "started_at": "success"}]
208	\N	\N	\N	\N	\N	[{"device": "read", "session_id": "813", "started_at": "really"}]
77	\N	\N	\N	\N	\N	[{"device": "item", "session_id": "899", "started_at": "participant"}]
909	\N	\N	\N	\N	\N	[{"device": "training", "session_id": "377", "started_at": "avoid"}]
772	\N	\N	\N	\N	\N	[{"device": "she", "session_id": "361", "started_at": "leave"}]
898	\N	\N	\N	\N	\N	[{"device": "easy", "session_id": "778", "started_at": "billion"}]
467	\N	\N	\N	\N	\N	[{"device": "general", "session_id": "40", "started_at": "whose"}]
329	\N	\N	\N	\N	\N	[{"device": "crime", "session_id": "443", "started_at": "risk"}]
382	\N	\N	\N	\N	\N	[{"device": "sometimes", "session_id": "748", "started_at": "when"}, {"device": "issue", "session_id": "657", "started_at": "ready"}]
315	\N	\N	\N	\N	\N	[{"device": "bed", "session_id": "281", "started_at": "describe"}]
993	\N	\N	\N	\N	\N	[{"device": "necessary", "session_id": "979", "started_at": "city"}]
921	\N	\N	\N	\N	\N	[{"device": "follow", "session_id": "421", "started_at": "politics"}, {"device": "degree", "session_id": "316", "started_at": "believe"}]
357	\N	\N	\N	\N	\N	[{"device": "front", "session_id": "1", "started_at": "five"}]
102	\N	\N	\N	\N	\N	[{"device": "scientist", "session_id": "577", "started_at": "full"}]
21	\N	\N	\N	\N	\N	[{"device": "over", "session_id": "430", "started_at": "body"}]
537	\N	\N	\N	\N	\N	[{"device": "price", "session_id": "314", "started_at": "floor"}]
977	\N	\N	\N	\N	\N	[{"device": "animal", "session_id": "863", "started_at": "source"}]
637	\N	\N	\N	\N	\N	[{"device": "security", "session_id": "447", "started_at": "investment"}]
361	\N	\N	\N	\N	\N	[{"device": "option", "session_id": "792", "started_at": "remember"}]
754	\N	\N	\N	\N	\N	[{"device": "great", "session_id": "709", "started_at": "structure"}]
169	\N	\N	\N	\N	\N	[{"device": "use", "session_id": "717", "started_at": "blood"}]
837	\N	\N	\N	\N	\N	[{"device": "serve", "session_id": "128", "started_at": "nature"}]
346	\N	\N	\N	\N	\N	[{"device": "stock", "session_id": "49", "started_at": "degree"}]
246	\N	\N	\N	\N	\N	[{"device": "enough", "session_id": "457", "started_at": "seat"}]
266	\N	\N	\N	\N	\N	[{"device": "true", "session_id": "713", "started_at": "manage"}]
730	\N	\N	\N	\N	\N	[{"device": "film", "session_id": "848", "started_at": "ahead"}]
774	\N	\N	\N	\N	\N	[{"device": "party", "session_id": "872", "started_at": "better"}]
492	\N	\N	\N	\N	\N	[{"device": "scientist", "session_id": "268", "started_at": "last"}]
197	\N	\N	\N	\N	\N	[{"device": "fine", "session_id": "636", "started_at": "purpose"}]
910	\N	\N	\N	\N	\N	[{"device": "grow", "session_id": "571", "started_at": "blue"}]
384	\N	\N	\N	\N	\N	[{"device": "class", "session_id": "489", "started_at": "fight"}]
148	\N	\N	\N	\N	\N	[{"device": "project", "session_id": "931", "started_at": "artist"}]
375	\N	\N	\N	\N	\N	[{"device": "half", "session_id": "1", "started_at": "help"}]
753	\N	\N	\N	\N	\N	[{"device": "position", "session_id": "264", "started_at": "network"}]
314	\N	\N	\N	\N	\N	[{"device": "culture", "session_id": "62", "started_at": "cover"}]
784	\N	\N	\N	\N	\N	[{"device": "phone", "session_id": "748", "started_at": "development"}]
385	\N	\N	\N	\N	\N	[{"device": "certainly", "session_id": "541", "started_at": "occur"}]
222	\N	\N	\N	\N	\N	[{"device": "listen", "session_id": "366", "started_at": "beat"}]
413	\N	\N	\N	\N	\N	[{"device": "shoulder", "session_id": "672", "started_at": "at"}]
751	\N	\N	\N	\N	\N	[{"device": "two", "session_id": "65", "started_at": "country"}]
815	\N	\N	\N	\N	\N	[{"device": "beyond", "session_id": "640", "started_at": "few"}, {"device": "level", "session_id": "294", "started_at": "police"}]
801	\N	\N	\N	\N	\N	[{"device": "federal", "session_id": "607", "started_at": "pass"}]
836	\N	\N	\N	\N	\N	[{"device": "believe", "session_id": "7", "started_at": "early"}]
458	\N	\N	\N	\N	\N	[{"device": "PM", "session_id": "367", "started_at": "relate"}]
734	\N	\N	\N	\N	\N	[{"device": "them", "session_id": "152", "started_at": "each"}]
724	\N	\N	\N	\N	\N	[{"device": "why", "session_id": "28", "started_at": "three"}]
729	\N	\N	\N	\N	\N	[{"device": "start", "session_id": "889", "started_at": "tend"}]
362	\N	\N	\N	\N	\N	[{"device": "these", "session_id": "437", "started_at": "person"}]
690	\N	\N	\N	\N	\N	[{"device": "newspaper", "session_id": "792", "started_at": "special"}]
579	\N	\N	\N	\N	\N	[{"device": "job", "session_id": "10", "started_at": "attention"}]
11	\N	\N	\N	\N	\N	[{"device": "rate", "session_id": "421", "started_at": "west"}]
718	\N	\N	\N	\N	\N	[{"device": "also", "session_id": "82", "started_at": "but"}]
294	\N	\N	\N	\N	\N	[{"device": "court", "session_id": "12", "started_at": "property"}]
390	\N	\N	\N	\N	\N	[{"device": "mind", "session_id": "843", "started_at": "sometimes"}]
424	\N	\N	\N	\N	\N	[{"device": "relate", "session_id": "838", "started_at": "score"}]
636	\N	\N	\N	\N	\N	[{"device": "them", "session_id": "528", "started_at": "drop"}]
695	\N	\N	\N	\N	\N	[{"device": "campaign", "session_id": "301", "started_at": "since"}]
2	\N	\N	\N	\N	\N	[{"device": "successful", "session_id": "169", "started_at": "we"}]
929	\N	\N	\N	\N	\N	[{"device": "truth", "session_id": "254", "started_at": "stuff"}]
202	\N	\N	\N	\N	\N	[{"device": "off", "session_id": "463", "started_at": "continue"}]
215	\N	\N	\N	\N	\N	[{"device": "decision", "session_id": "649", "started_at": "decade"}, {"device": "test", "session_id": "571", "started_at": "why"}]
465	\N	\N	\N	\N	\N	[{"device": "Congress", "session_id": "840", "started_at": "institution"}]
398	\N	\N	\N	\N	\N	[{"device": "his", "session_id": "789", "started_at": "brother"}]
132	\N	\N	\N	\N	\N	[{"device": "let", "session_id": "516", "started_at": "federal"}]
899	\N	\N	\N	\N	\N	[{"device": "keep", "session_id": "157", "started_at": "mind"}]
808	\N	\N	\N	\N	\N	[{"device": "eye", "session_id": "893", "started_at": "stuff"}]
240	\N	\N	\N	\N	\N	[{"device": "item", "session_id": "87", "started_at": "set"}]
114	\N	\N	\N	\N	\N	[{"device": "brother", "session_id": "66", "started_at": "and"}]
613	\N	\N	\N	\N	\N	[{"device": "option", "session_id": "103", "started_at": "poor"}]
447	\N	\N	\N	\N	\N	[{"device": "possible", "session_id": "326", "started_at": "serious"}]
701	\N	\N	\N	\N	\N	[{"device": "region", "session_id": "1000", "started_at": "store"}]
265	\N	\N	\N	\N	\N	[{"device": "at", "session_id": "35", "started_at": "decade"}]
822	\N	\N	\N	\N	\N	[{"device": "realize", "session_id": "905", "started_at": "hand"}]
408	\N	\N	\N	\N	\N	[{"device": "authority", "session_id": "444", "started_at": "level"}]
466	\N	\N	\N	\N	\N	[{"device": "significant", "session_id": "11", "started_at": "performance"}]
358	\N	\N	\N	\N	\N	[{"device": "ahead", "session_id": "557", "started_at": "base"}]
761	\N	\N	\N	\N	\N	[{"device": "decide", "session_id": "891", "started_at": "turn"}]
\.


--
-- Data for Name: temp_pricehistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_pricehistory (product_id, sku, product_name, base_price, is_active, quantity, dimensions, role, size_system, productimage, productvariant, pricehistory) FROM stdin;
338	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "484", "ends_at": "each", "price_id": "690", "starts_at": "bill"}]
1292	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "164", "ends_at": "real", "price_id": "660", "starts_at": "trade"}]
56	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "197", "ends_at": "term", "price_id": "760", "starts_at": "sign"}]
1632	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "399", "ends_at": "across", "price_id": "382", "starts_at": "popular"}]
568	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "799", "ends_at": "trouble", "price_id": "826", "starts_at": "charge"}]
1439	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "74", "ends_at": "entire", "price_id": "785", "starts_at": "significant"}]
1977	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "2", "ends_at": "side", "price_id": "303", "starts_at": "line"}]
1726	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "995", "ends_at": "produce", "price_id": "122", "starts_at": "defense"}]
303	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "127", "ends_at": "degree", "price_id": "485", "starts_at": "father"}]
1871	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "228", "ends_at": "determine", "price_id": "666", "starts_at": "cause"}]
1073	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "9", "ends_at": "gas", "price_id": "626", "starts_at": "point"}]
1477	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "592", "ends_at": "order", "price_id": "386", "starts_at": "allow"}]
687	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "651", "ends_at": "subject", "price_id": "163", "starts_at": "during"}]
1030	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "260", "ends_at": "approach", "price_id": "648", "starts_at": "up"}]
267	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "978", "ends_at": "training", "price_id": "620", "starts_at": "kid"}]
113	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "102", "ends_at": "matter", "price_id": "140", "starts_at": "reach"}]
1875	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "458", "ends_at": "hard", "price_id": "767", "starts_at": "room"}]
1206	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "620", "ends_at": "option", "price_id": "288", "starts_at": "term"}]
1161	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "460", "ends_at": "real", "price_id": "172", "starts_at": "cost"}]
2024	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "998", "ends_at": "garden", "price_id": "200", "starts_at": "despite"}]
117	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "72", "ends_at": "wonder", "price_id": "656", "starts_at": "executive"}]
1188	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "904", "ends_at": "seem", "price_id": "720", "starts_at": "sometimes"}]
1960	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "449", "ends_at": "impact", "price_id": "191", "starts_at": "accept"}]
411	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "50", "ends_at": "great", "price_id": "77", "starts_at": "seek"}]
1032	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "858", "ends_at": "state", "price_id": "918", "starts_at": "can"}]
985	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "195", "ends_at": "join", "price_id": "444", "starts_at": "choose"}]
102	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "102", "ends_at": "realize", "price_id": "540", "starts_at": "street"}]
1513	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "938", "ends_at": "site", "price_id": "447", "starts_at": "I"}]
1475	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "705", "ends_at": "all", "price_id": "291", "starts_at": "once"}]
1177	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "45", "ends_at": "stock", "price_id": "431", "starts_at": "tree"}]
635	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "335", "ends_at": "on", "price_id": "775", "starts_at": "relationship"}]
1229	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "509", "ends_at": "war", "price_id": "387", "starts_at": "trial"}]
1703	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "333", "ends_at": "subject", "price_id": "89", "starts_at": "foreign"}]
980	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "86", "ends_at": "prepare", "price_id": "55", "starts_at": "magazine"}]
436	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "841", "ends_at": "place", "price_id": "188", "starts_at": "positive"}]
13	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "434", "ends_at": "human", "price_id": "347", "starts_at": "bed"}]
669	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "912", "ends_at": "lay", "price_id": "456", "starts_at": "develop"}]
897	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "750", "ends_at": "special", "price_id": "921", "starts_at": "hundred"}]
294	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "208", "ends_at": "design", "price_id": "261", "starts_at": "about"}]
1445	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "441", "ends_at": "discussion", "price_id": "172", "starts_at": "late"}]
1314	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "881", "ends_at": "wall", "price_id": "757", "starts_at": "open"}]
1402	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "777", "ends_at": "result", "price_id": "398", "starts_at": "behind"}]
804	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "482", "ends_at": "that", "price_id": "716", "starts_at": "current"}]
141	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "810", "ends_at": "use", "price_id": "335", "starts_at": "guess"}, {"price": "403", "ends_at": "business", "price_id": "571", "starts_at": "who"}]
1340	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "80", "ends_at": "base", "price_id": "57", "starts_at": "study"}]
1288	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "59", "ends_at": "event", "price_id": "756", "starts_at": "interest"}]
374	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "220", "ends_at": "identify", "price_id": "444", "starts_at": "film"}]
301	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "38", "ends_at": "property", "price_id": "988", "starts_at": "address"}]
470	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "658", "ends_at": "art", "price_id": "316", "starts_at": "test"}]
477	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "4", "ends_at": "throw", "price_id": "638", "starts_at": "page"}]
606	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "694", "ends_at": "tree", "price_id": "771", "starts_at": "lay"}]
995	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "162", "ends_at": "feeling", "price_id": "462", "starts_at": "can"}]
403	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "896", "ends_at": "teach", "price_id": "655", "starts_at": "practice"}]
692	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "880", "ends_at": "report", "price_id": "669", "starts_at": "government"}]
1381	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "202", "ends_at": "hotel", "price_id": "230", "starts_at": "agent"}]
627	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "250", "ends_at": "rich", "price_id": "464", "starts_at": "whatever"}]
1939	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "664", "ends_at": "sell", "price_id": "235", "starts_at": "hospital"}]
996	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "59", "ends_at": "other", "price_id": "376", "starts_at": "rule"}]
1857	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "993", "ends_at": "candidate", "price_id": "446", "starts_at": "tonight"}]
644	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "932", "ends_at": "too", "price_id": "830", "starts_at": "fill"}]
1869	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "9", "ends_at": "radio", "price_id": "765", "starts_at": "work"}]
1304	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "585", "ends_at": "century", "price_id": "491", "starts_at": "send"}]
149	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "221", "ends_at": "walk", "price_id": "997", "starts_at": "direction"}]
228	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "174", "ends_at": "if", "price_id": "288", "starts_at": "water"}]
1411	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "299", "ends_at": "something", "price_id": "667", "starts_at": "test"}]
839	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "811", "ends_at": "operation", "price_id": "7", "starts_at": "young"}]
856	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "738", "ends_at": "strong", "price_id": "134", "starts_at": "style"}]
1069	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "651", "ends_at": "often", "price_id": "285", "starts_at": "always"}]
1876	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "794", "ends_at": "attack", "price_id": "47", "starts_at": "majority"}]
1661	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "394", "ends_at": "become", "price_id": "199", "starts_at": "reflect"}]
706	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "471", "ends_at": "miss", "price_id": "990", "starts_at": "culture"}]
698	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "700", "ends_at": "there", "price_id": "158", "starts_at": "happy"}]
408	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "160", "ends_at": "three", "price_id": "994", "starts_at": "its"}]
975	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "964", "ends_at": "nice", "price_id": "465", "starts_at": "where"}]
1106	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "886", "ends_at": "prove", "price_id": "929", "starts_at": "new"}]
1012	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "884", "ends_at": "goal", "price_id": "976", "starts_at": "there"}]
1105	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "144", "ends_at": "language", "price_id": "581", "starts_at": "right"}]
1787	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "242", "ends_at": "fire", "price_id": "590", "starts_at": "head"}]
910	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "259", "ends_at": "name", "price_id": "371", "starts_at": "whatever"}]
854	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "181", "ends_at": "none", "price_id": "50", "starts_at": "adult"}]
891	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "635", "ends_at": "recent", "price_id": "56", "starts_at": "house"}]
1378	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "308", "ends_at": "future", "price_id": "49", "starts_at": "same"}]
978	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "7", "ends_at": "cultural", "price_id": "560", "starts_at": "my"}]
1114	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "469", "ends_at": "woman", "price_id": "956", "starts_at": "popular"}]
630	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "14", "ends_at": "method", "price_id": "442", "starts_at": "particularly"}]
904	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "82", "ends_at": "coach", "price_id": "185", "starts_at": "finally"}]
663	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "47", "ends_at": "whose", "price_id": "805", "starts_at": "hotel"}]
1577	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "852", "ends_at": "sign", "price_id": "490", "starts_at": "probably"}]
2044	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "278", "ends_at": "best", "price_id": "802", "starts_at": "interest"}]
276	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "865", "ends_at": "turn", "price_id": "569", "starts_at": "one"}]
816	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "521", "ends_at": "woman", "price_id": "924", "starts_at": "mind"}]
1217	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "319", "ends_at": "series", "price_id": "229", "starts_at": "good"}]
196	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "24", "ends_at": "property", "price_id": "492", "starts_at": "would"}]
1716	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "592", "ends_at": "responsibility", "price_id": "795", "starts_at": "education"}]
273	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "207", "ends_at": "remain", "price_id": "449", "starts_at": "assume"}]
111	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "152", "ends_at": "force", "price_id": "839", "starts_at": "you"}]
1128	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "180", "ends_at": "option", "price_id": "828", "starts_at": "company"}]
472	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "848", "ends_at": "voice", "price_id": "326", "starts_at": "since"}]
393	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "711", "ends_at": "war", "price_id": "512", "starts_at": "edge"}]
\.


--
-- Data for Name: temp_productimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_productimage (product_id, sku, product_name, base_price, is_active, quantity, dimensions, role, size_system, productimage, productvariant, pricehistory) FROM stdin;
1839	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "anyone", "alt_text": "information", "image_id": "406", "sort_order": "489"}]	[]	[]
295	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "apply", "alt_text": "military", "image_id": "941", "sort_order": "955"}]	[]	[]
344	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "politics", "alt_text": "fast", "image_id": "659", "sort_order": "221"}]	[]	[]
978	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "region", "alt_text": "training", "image_id": "827", "sort_order": "212"}, {"url": "degree", "alt_text": "candidate", "image_id": "831", "sort_order": "676"}]	[]	[]
875	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "yeah", "alt_text": "medical", "image_id": "754", "sort_order": "843"}]	[]	[]
557	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "house", "alt_text": "land", "image_id": "588", "sort_order": "868"}]	[]	[]
1155	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "board", "alt_text": "gun", "image_id": "499", "sort_order": "925"}]	[]	[]
1808	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "Mrs", "alt_text": "collection", "image_id": "258", "sort_order": "900"}]	[]	[]
1774	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "energy", "alt_text": "evidence", "image_id": "92", "sort_order": "843"}]	[]	[]
361	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "relate", "alt_text": "smile", "image_id": "796", "sort_order": "714"}]	[]	[]
1236	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "hand", "alt_text": "game", "image_id": "993", "sort_order": "729"}]	[]	[]
1377	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "newspaper", "alt_text": "democratic", "image_id": "99", "sort_order": "583"}]	[]	[]
1725	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "sense", "alt_text": "them", "image_id": "985", "sort_order": "536"}]	[]	[]
1906	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "responsibility", "alt_text": "every", "image_id": "330", "sort_order": "867"}]	[]	[]
1861	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "act", "alt_text": "any", "image_id": "159", "sort_order": "537"}]	[]	[]
2081	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "exist", "alt_text": "something", "image_id": "518", "sort_order": "234"}]	[]	[]
1782	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "group", "alt_text": "improve", "image_id": "213", "sort_order": "568"}]	[]	[]
1547	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "glass", "alt_text": "office", "image_id": "132", "sort_order": "928"}]	[]	[]
964	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "energy", "alt_text": "quality", "image_id": "405", "sort_order": "997"}]	[]	[]
1655	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "western", "alt_text": "indeed", "image_id": "38", "sort_order": "31"}]	[]	[]
641	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "meet", "alt_text": "democratic", "image_id": "417", "sort_order": "971"}]	[]	[]
1404	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "often", "alt_text": "yard", "image_id": "872", "sort_order": "44"}]	[]	[]
55	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "everyone", "alt_text": "garden", "image_id": "473", "sort_order": "593"}]	[]	[]
2067	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "question", "alt_text": "third", "image_id": "652", "sort_order": "517"}]	[]	[]
1713	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "concern", "alt_text": "site", "image_id": "557", "sort_order": "409"}]	[]	[]
156	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "lead", "alt_text": "against", "image_id": "694", "sort_order": "769"}]	[]	[]
1554	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "education", "alt_text": "rate", "image_id": "260", "sort_order": "499"}]	[]	[]
728	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "bag", "alt_text": "event", "image_id": "21", "sort_order": "964"}]	[]	[]
1013	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "around", "alt_text": "else", "image_id": "324", "sort_order": "67"}]	[]	[]
1875	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "actually", "alt_text": "it", "image_id": "56", "sort_order": "63"}]	[]	[]
1471	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "act", "alt_text": "behind", "image_id": "330", "sort_order": "892"}]	[]	[]
385	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "official", "alt_text": "thought", "image_id": "143", "sort_order": "439"}]	[]	[]
1358	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "interesting", "alt_text": "wonder", "image_id": "892", "sort_order": "291"}]	[]	[]
1596	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "father", "alt_text": "trip", "image_id": "5", "sort_order": "231"}]	[]	[]
372	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "away", "alt_text": "relate", "image_id": "272", "sort_order": "415"}]	[]	[]
1732	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "administration", "alt_text": "meeting", "image_id": "482", "sort_order": "416"}]	[]	[]
298	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "until", "alt_text": "character", "image_id": "798", "sort_order": "609"}]	[]	[]
210	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "father", "alt_text": "tend", "image_id": "793", "sort_order": "271"}]	[]	[]
570	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "very", "alt_text": "focus", "image_id": "478", "sort_order": "460"}]	[]	[]
2064	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "put", "alt_text": "whole", "image_id": "949", "sort_order": "541"}]	[]	[]
1945	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "goal", "alt_text": "make", "image_id": "768", "sort_order": "815"}]	[]	[]
393	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "order", "alt_text": "though", "image_id": "611", "sort_order": "375"}]	[]	[]
1992	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "so", "alt_text": "vote", "image_id": "175", "sort_order": "973"}]	[]	[]
1115	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "surface", "alt_text": "heart", "image_id": "673", "sort_order": "580"}]	[]	[]
2073	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "he", "alt_text": "set", "image_id": "566", "sort_order": "363"}]	[]	[]
595	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "western", "alt_text": "positive", "image_id": "903", "sort_order": "221"}, {"url": "movement", "alt_text": "message", "image_id": "578", "sort_order": "194"}]	[]	[]
855	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "third", "alt_text": "rich", "image_id": "383", "sort_order": "745"}]	[]	[]
665	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "street", "alt_text": "also", "image_id": "667", "sort_order": "725"}]	[]	[]
2038	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "beat", "alt_text": "large", "image_id": "67", "sort_order": "334"}]	[]	[]
798	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "rich", "alt_text": "international", "image_id": "94", "sort_order": "532"}]	[]	[]
1897	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "ok", "alt_text": "job", "image_id": "235", "sort_order": "719"}]	[]	[]
772	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "not", "alt_text": "wind", "image_id": "341", "sort_order": "133"}]	[]	[]
1397	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "not", "alt_text": "gas", "image_id": "360", "sort_order": "241"}]	[]	[]
1296	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "out", "alt_text": "score", "image_id": "252", "sort_order": "522"}]	[]	[]
101	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "million", "alt_text": "happen", "image_id": "595", "sort_order": "38"}]	[]	[]
560	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "or", "alt_text": "several", "image_id": "267", "sort_order": "782"}]	[]	[]
1648	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "simply", "alt_text": "street", "image_id": "511", "sort_order": "120"}]	[]	[]
293	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "cold", "alt_text": "night", "image_id": "688", "sort_order": "422"}]	[]	[]
1647	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "its", "alt_text": "number", "image_id": "100", "sort_order": "859"}]	[]	[]
453	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "store", "alt_text": "than", "image_id": "936", "sort_order": "353"}]	[]	[]
299	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "plant", "alt_text": "evidence", "image_id": "377", "sort_order": "550"}]	[]	[]
1283	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "although", "alt_text": "discuss", "image_id": "206", "sort_order": "439"}]	[]	[]
1468	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "evidence", "alt_text": "indeed", "image_id": "174", "sort_order": "581"}]	[]	[]
1411	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "yes", "alt_text": "drug", "image_id": "72", "sort_order": "576"}]	[]	[]
2024	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "feeling", "alt_text": "office", "image_id": "289", "sort_order": "482"}, {"url": "up", "alt_text": "success", "image_id": "371", "sort_order": "257"}]	[]	[]
1409	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "she", "alt_text": "mention", "image_id": "207", "sort_order": "338"}]	[]	[]
1476	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "memory", "alt_text": "without", "image_id": "848", "sort_order": "792"}]	[]	[]
1412	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "meeting", "alt_text": "cultural", "image_id": "175", "sort_order": "906"}]	[]	[]
924	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "lose", "alt_text": "kitchen", "image_id": "227", "sort_order": "762"}]	[]	[]
1054	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "write", "alt_text": "protect", "image_id": "341", "sort_order": "681"}]	[]	[]
510	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "Mr", "alt_text": "they", "image_id": "128", "sort_order": "143"}]	[]	[]
324	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "million", "alt_text": "specific", "image_id": "135", "sort_order": "573"}]	[]	[]
75	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "popular", "alt_text": "style", "image_id": "52", "sort_order": "392"}]	[]	[]
976	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "decision", "alt_text": "that", "image_id": "133", "sort_order": "348"}]	[]	[]
236	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "week", "alt_text": "writer", "image_id": "476", "sort_order": "99"}]	[]	[]
565	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "paper", "alt_text": "catch", "image_id": "399", "sort_order": "150"}]	[]	[]
1453	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "argue", "alt_text": "newspaper", "image_id": "89", "sort_order": "765"}]	[]	[]
947	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "carry", "alt_text": "discuss", "image_id": "88", "sort_order": "522"}]	[]	[]
1266	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "may", "alt_text": "decide", "image_id": "304", "sort_order": "155"}]	[]	[]
1568	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "owner", "alt_text": "fight", "image_id": "998", "sort_order": "910"}]	[]	[]
812	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "billion", "alt_text": "board", "image_id": "593", "sort_order": "454"}]	[]	[]
751	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "door", "alt_text": "hard", "image_id": "522", "sort_order": "785"}]	[]	[]
551	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "guy", "alt_text": "person", "image_id": "935", "sort_order": "970"}]	[]	[]
1192	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "want", "alt_text": "by", "image_id": "538", "sort_order": "791"}]	[]	[]
1874	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "responsibility", "alt_text": "more", "image_id": "961", "sort_order": "709"}]	[]	[]
2000	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "star", "alt_text": "scene", "image_id": "118", "sort_order": "995"}]	[]	[]
1174	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "bill", "alt_text": "voice", "image_id": "18", "sort_order": "601"}]	[]	[]
601	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "part", "alt_text": "change", "image_id": "809", "sort_order": "701"}]	[]	[]
828	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "feel", "alt_text": "television", "image_id": "313", "sort_order": "647"}]	[]	[]
588	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "behavior", "alt_text": "reveal", "image_id": "427", "sort_order": "945"}]	[]	[]
1107	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "upon", "alt_text": "a", "image_id": "837", "sort_order": "554"}]	[]	[]
1272	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "four", "alt_text": "stock", "image_id": "737", "sort_order": "938"}]	[]	[]
1121	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "professional", "alt_text": "manage", "image_id": "840", "sort_order": "48"}]	[]	[]
1171	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "increase", "alt_text": "nothing", "image_id": "178", "sort_order": "748"}]	[]	[]
896	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "technology", "alt_text": "help", "image_id": "652", "sort_order": "369"}]	[]	[]
698	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "message", "alt_text": "increase", "image_id": "679", "sort_order": "728"}]	[]	[]
1765	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "truth", "alt_text": "teach", "image_id": "114", "sort_order": "612"}]	[]	[]
\.


--
-- Data for Name: temp_productvariant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_productvariant (product_id, sku, product_name, base_price, is_active, quantity, dimensions, role, size_system, productimage, productvariant, pricehistory) FROM stdin;
1086	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "grow", "variant_id": "222", "price_override": "1", "is_active_variant": "52"}]	[]
1357	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "boy", "variant_id": "176", "price_override": "432", "is_active_variant": "585"}]	[]
1359	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "claim", "variant_id": "998", "price_override": "145", "is_active_variant": "961"}]	[]
521	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "find", "variant_id": "524", "price_override": "479", "is_active_variant": "504"}]	[]
630	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "agency", "variant_id": "972", "price_override": "842", "is_active_variant": "152"}, {"barcode": "myself", "variant_id": "582", "price_override": "652", "is_active_variant": "425"}]	[]
42	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "success", "variant_id": "910", "price_override": "262", "is_active_variant": "476"}]	[]
1858	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "appear", "variant_id": "602", "price_override": "347", "is_active_variant": "622"}]	[]
2098	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "provide", "variant_id": "427", "price_override": "242", "is_active_variant": "850"}]	[]
1429	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "table", "variant_id": "478", "price_override": "491", "is_active_variant": "507"}]	[]
527	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "money", "variant_id": "193", "price_override": "341", "is_active_variant": "197"}]	[]
810	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "moment", "variant_id": "869", "price_override": "343", "is_active_variant": "478"}]	[]
685	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "five", "variant_id": "783", "price_override": "873", "is_active_variant": "709"}]	[]
1165	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "happen", "variant_id": "268", "price_override": "697", "is_active_variant": "561"}]	[]
1396	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "either", "variant_id": "459", "price_override": "736", "is_active_variant": "443"}, {"barcode": "whether", "variant_id": "614", "price_override": "630", "is_active_variant": "86"}]	[]
925	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "involve", "variant_id": "796", "price_override": "177", "is_active_variant": "606"}]	[]
663	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "carry", "variant_id": "523", "price_override": "584", "is_active_variant": "839"}, {"barcode": "president", "variant_id": "280", "price_override": "592", "is_active_variant": "366"}]	[]
1782	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "act", "variant_id": "834", "price_override": "495", "is_active_variant": "759"}]	[]
1721	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "economy", "variant_id": "566", "price_override": "261", "is_active_variant": "927"}]	[]
1637	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "forget", "variant_id": "542", "price_override": "513", "is_active_variant": "386"}]	[]
1203	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "research", "variant_id": "535", "price_override": "863", "is_active_variant": "230"}]	[]
1807	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "easy", "variant_id": "876", "price_override": "316", "is_active_variant": "284"}]	[]
1506	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "avoid", "variant_id": "591", "price_override": "390", "is_active_variant": "268"}]	[]
32	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "director", "variant_id": "170", "price_override": "968", "is_active_variant": "843"}]	[]
1427	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "war", "variant_id": "564", "price_override": "688", "is_active_variant": "590"}]	[]
1053	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "spring", "variant_id": "554", "price_override": "896", "is_active_variant": "613"}]	[]
735	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "dream", "variant_id": "957", "price_override": "453", "is_active_variant": "489"}]	[]
1892	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "mean", "variant_id": "326", "price_override": "77", "is_active_variant": "840"}]	[]
386	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "agency", "variant_id": "228", "price_override": "682", "is_active_variant": "934"}]	[]
1000	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "nation", "variant_id": "364", "price_override": "352", "is_active_variant": "554"}]	[]
97	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "leader", "variant_id": "559", "price_override": "176", "is_active_variant": "921"}]	[]
1080	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "black", "variant_id": "651", "price_override": "899", "is_active_variant": "780"}]	[]
1185	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "listen", "variant_id": "601", "price_override": "210", "is_active_variant": "212"}]	[]
1171	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "ready", "variant_id": "994", "price_override": "471", "is_active_variant": "421"}]	[]
1556	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "rock", "variant_id": "697", "price_override": "863", "is_active_variant": "30"}]	[]
1794	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "keep", "variant_id": "840", "price_override": "184", "is_active_variant": "130"}]	[]
1348	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "wide", "variant_id": "917", "price_override": "429", "is_active_variant": "568"}]	[]
295	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "consumer", "variant_id": "178", "price_override": "522", "is_active_variant": "122"}]	[]
911	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "worker", "variant_id": "844", "price_override": "598", "is_active_variant": "101"}]	[]
566	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "whom", "variant_id": "635", "price_override": "478", "is_active_variant": "183"}]	[]
743	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "brother", "variant_id": "559", "price_override": "91", "is_active_variant": "144"}]	[]
553	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "special", "variant_id": "418", "price_override": "825", "is_active_variant": "833"}]	[]
1639	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "teacher", "variant_id": "196", "price_override": "354", "is_active_variant": "862"}]	[]
1997	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "chance", "variant_id": "924", "price_override": "652", "is_active_variant": "790"}]	[]
3	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "goal", "variant_id": "805", "price_override": "475", "is_active_variant": "616"}]	[]
23	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "visit", "variant_id": "479", "price_override": "647", "is_active_variant": "864"}]	[]
1272	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "music", "variant_id": "105", "price_override": "345", "is_active_variant": "349"}]	[]
461	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "fact", "variant_id": "468", "price_override": "581", "is_active_variant": "700"}]	[]
1489	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "gas", "variant_id": "288", "price_override": "404", "is_active_variant": "340"}]	[]
479	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "relate", "variant_id": "310", "price_override": "141", "is_active_variant": "266"}]	[]
582	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "money", "variant_id": "151", "price_override": "185", "is_active_variant": "192"}]	[]
1467	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "ground", "variant_id": "882", "price_override": "128", "is_active_variant": "946"}]	[]
1214	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "action", "variant_id": "414", "price_override": "175", "is_active_variant": "732"}]	[]
1696	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "step", "variant_id": "355", "price_override": "636", "is_active_variant": "542"}]	[]
926	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "open", "variant_id": "408", "price_override": "931", "is_active_variant": "118"}]	[]
1458	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "option", "variant_id": "372", "price_override": "234", "is_active_variant": "14"}]	[]
818	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "age", "variant_id": "218", "price_override": "705", "is_active_variant": "776"}]	[]
1463	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "television", "variant_id": "81", "price_override": "30", "is_active_variant": "584"}]	[]
1404	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "animal", "variant_id": "363", "price_override": "396", "is_active_variant": "120"}]	[]
968	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "trial", "variant_id": "629", "price_override": "769", "is_active_variant": "170"}]	[]
389	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "owner", "variant_id": "215", "price_override": "477", "is_active_variant": "966"}]	[]
1302	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "sea", "variant_id": "543", "price_override": "186", "is_active_variant": "473"}]	[]
1255	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "shoulder", "variant_id": "496", "price_override": "231", "is_active_variant": "401"}]	[]
578	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "deal", "variant_id": "13", "price_override": "127", "is_active_variant": "178"}]	[]
407	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "radio", "variant_id": "240", "price_override": "327", "is_active_variant": "324"}]	[]
838	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "sing", "variant_id": "428", "price_override": "484", "is_active_variant": "143"}]	[]
360	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "bed", "variant_id": "554", "price_override": "352", "is_active_variant": "508"}]	[]
961	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "film", "variant_id": "290", "price_override": "737", "is_active_variant": "298"}]	[]
592	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "market", "variant_id": "373", "price_override": "883", "is_active_variant": "507"}]	[]
617	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "edge", "variant_id": "779", "price_override": "616", "is_active_variant": "807"}]	[]
1352	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "career", "variant_id": "238", "price_override": "52", "is_active_variant": "573"}]	[]
1706	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "election", "variant_id": "185", "price_override": "835", "is_active_variant": "497"}, {"barcode": "deal", "variant_id": "563", "price_override": "71", "is_active_variant": "197"}]	[]
906	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "prevent", "variant_id": "190", "price_override": "910", "is_active_variant": "582"}]	[]
523	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "risk", "variant_id": "329", "price_override": "136", "is_active_variant": "518"}]	[]
1007	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "whatever", "variant_id": "763", "price_override": "53", "is_active_variant": "201"}]	[]
1089	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "material", "variant_id": "862", "price_override": "230", "is_active_variant": "844"}]	[]
1017	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "leader", "variant_id": "894", "price_override": "674", "is_active_variant": "230"}]	[]
1393	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "far", "variant_id": "256", "price_override": "736", "is_active_variant": "760"}]	[]
1675	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "challenge", "variant_id": "932", "price_override": "530", "is_active_variant": "631"}]	[]
1936	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "popular", "variant_id": "240", "price_override": "863", "is_active_variant": "738"}]	[]
1012	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "trial", "variant_id": "388", "price_override": "601", "is_active_variant": "681"}]	[]
916	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "food", "variant_id": "946", "price_override": "678", "is_active_variant": "180"}]	[]
1483	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "rather", "variant_id": "394", "price_override": "516", "is_active_variant": "160"}]	[]
873	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "including", "variant_id": "583", "price_override": "542", "is_active_variant": "131"}]	[]
1189	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "peace", "variant_id": "680", "price_override": "906", "is_active_variant": "171"}]	[]
284	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "film", "variant_id": "237", "price_override": "481", "is_active_variant": "68"}]	[]
1526	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "current", "variant_id": "920", "price_override": "61", "is_active_variant": "509"}]	[]
913	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "science", "variant_id": "457", "price_override": "148", "is_active_variant": "518"}]	[]
127	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "rather", "variant_id": "856", "price_override": "402", "is_active_variant": "115"}]	[]
627	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "girl", "variant_id": "169", "price_override": "903", "is_active_variant": "200"}]	[]
1217	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "address", "variant_id": "274", "price_override": "640", "is_active_variant": "390"}]	[]
1643	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "happen", "variant_id": "44", "price_override": "38", "is_active_variant": "493"}]	[]
2025	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "little", "variant_id": "991", "price_override": "657", "is_active_variant": "83"}]	[]
1970	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "drive", "variant_id": "907", "price_override": "136", "is_active_variant": "886"}]	[]
1983	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "theory", "variant_id": "218", "price_override": "866", "is_active_variant": "636"}]	[]
575	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "message", "variant_id": "2", "price_override": "275", "is_active_variant": "767"}]	[]
593	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "ok", "variant_id": "243", "price_override": "156", "is_active_variant": "735"}]	[]
\.


--
-- Name: erdb_objects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.erdb_objects_id_seq', 4, true);


--
-- Name: erdb_objects erdb_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.erdb_objects
    ADD CONSTRAINT erdb_objects_pkey PRIMARY KEY (id);


--
-- Name: relation_0 relation_0_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_0
    ADD CONSTRAINT relation_0_pkey PRIMARY KEY (category_id);


--
-- Name: relation_10 relation_10_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_10
    ADD CONSTRAINT relation_10_pkey PRIMARY KEY (phone_id);


--
-- Name: relation_11 relation_11_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_11
    ADD CONSTRAINT relation_11_pkey PRIMARY KEY (appliance_id);


--
-- Name: relation_12 relation_12_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_12
    ADD CONSTRAINT relation_12_pkey PRIMARY KEY (kitchenappliance_id);


--
-- Name: relation_13 relation_13_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_13
    ADD CONSTRAINT relation_13_pkey PRIMARY KEY (clothing_id);


--
-- Name: relation_14 relation_14_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_14
    ADD CONSTRAINT relation_14_pkey PRIMARY KEY (menclothing_id);


--
-- Name: relation_15 relation_15_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_15
    ADD CONSTRAINT relation_15_pkey PRIMARY KEY (womenclothing_id);


--
-- Name: relation_16 relation_16_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_16
    ADD CONSTRAINT relation_16_pkey PRIMARY KEY (footwear_id);


--
-- Name: relation_17 relation_17_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_17
    ADD CONSTRAINT relation_17_pkey PRIMARY KEY (software_id);


--
-- Name: relation_18 relation_18_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_18
    ADD CONSTRAINT relation_18_pkey PRIMARY KEY (user_id);


--
-- Name: relation_19 relation_19_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_19
    ADD CONSTRAINT relation_19_pkey PRIMARY KEY (user_id, mv_user);


--
-- Name: relation_1 relation_1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_1
    ADD CONSTRAINT relation_1_pkey PRIMARY KEY (product_id);


--
-- Name: relation_20 relation_20_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_20
    ADD CONSTRAINT relation_20_pkey PRIMARY KEY (customer_id);


--
-- Name: relation_21 relation_21_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_21
    ADD CONSTRAINT relation_21_pkey PRIMARY KEY (customer_id, contact_no);


--
-- Name: relation_22 relation_22_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_22
    ADD CONSTRAINT relation_22_pkey PRIMARY KEY (primecustomer_id);


--
-- Name: relation_23 relation_23_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_23
    ADD CONSTRAINT relation_23_pkey PRIMARY KEY (primecustomer_id, subscription_addons);


--
-- Name: relation_24 relation_24_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_24
    ADD CONSTRAINT relation_24_pkey PRIMARY KEY (businesscustomer_id);


--
-- Name: relation_25 relation_25_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_25
    ADD CONSTRAINT relation_25_pkey PRIMARY KEY (corporateemployee_id);


--
-- Name: relation_26 relation_26_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_26
    ADD CONSTRAINT relation_26_pkey PRIMARY KEY (engineer_id);


--
-- Name: relation_27 relation_27_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_27
    ADD CONSTRAINT relation_27_pkey PRIMARY KEY (supportagent_id);


--
-- Name: relation_28 relation_28_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_28
    ADD CONSTRAINT relation_28_pkey PRIMARY KEY (fulfillmentassociate_id);


--
-- Name: relation_29 relation_29_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_29
    ADD CONSTRAINT relation_29_pkey PRIMARY KEY (tag_id);


--
-- Name: relation_2 relation_2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_2
    ADD CONSTRAINT relation_2_pkey PRIMARY KEY (product_id, mv_attributes);


--
-- Name: relation_30 relation_30_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_30
    ADD CONSTRAINT relation_30_pkey PRIMARY KEY (customer_id, address_id);


--
-- Name: relation_31 relation_31_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_31
    ADD CONSTRAINT relation_31_pkey PRIMARY KEY (customer_id, payment_method_id);


--
-- Name: relation_32 relation_32_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_32
    ADD CONSTRAINT relation_32_pkey PRIMARY KEY (customer_id);


--
-- Name: relation_33 relation_33_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_33
    ADD CONSTRAINT relation_33_pkey PRIMARY KEY (customer_id, wishlist_id);


--
-- Name: relation_34 relation_34_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_34
    ADD CONSTRAINT relation_34_pkey PRIMARY KEY (customer_id, review_id);


--
-- Name: relation_35 relation_35_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_35
    ADD CONSTRAINT relation_35_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_36 relation_36_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_36
    ADD CONSTRAINT relation_36_pkey PRIMARY KEY (custorder_id, shipment_id);


--
-- Name: relation_37 relation_37_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_37
    ADD CONSTRAINT relation_37_pkey PRIMARY KEY (promotion_id);


--
-- Name: relation_38 relation_38_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_38
    ADD CONSTRAINT relation_38_pkey PRIMARY KEY (promotion_id, coupon_code);


--
-- Name: relation_39 relation_39_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_39
    ADD CONSTRAINT relation_39_pkey PRIMARY KEY (warehouse_id);


--
-- Name: relation_3 relation_3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_3
    ADD CONSTRAINT relation_3_pkey PRIMARY KEY (digitalproduct_id);


--
-- Name: relation_40 relation_40_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_40
    ADD CONSTRAINT relation_40_pkey PRIMARY KEY (warehouse_id, bin_id);


--
-- Name: relation_41 relation_41_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_41
    ADD CONSTRAINT relation_41_pkey PRIMARY KEY (supplier_id);


--
-- Name: relation_42 relation_42_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_42
    ADD CONSTRAINT relation_42_pkey PRIMARY KEY (supplier_id, contact_id);


--
-- Name: relation_43 relation_43_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_43
    ADD CONSTRAINT relation_43_pkey PRIMARY KEY (purchaseorder_id);


--
-- Name: relation_44 relation_44_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_44
    ADD CONSTRAINT relation_44_pkey PRIMARY KEY (courierpartner_id);


--
-- Name: relation_45 relation_45_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_45
    ADD CONSTRAINT relation_45_pkey PRIMARY KEY (product_id);


--
-- Name: relation_46 relation_46_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_46
    ADD CONSTRAINT relation_46_pkey PRIMARY KEY (product_id, tag_id);


--
-- Name: relation_47 relation_47_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_47
    ADD CONSTRAINT relation_47_pkey PRIMARY KEY (product_id, bought_together_product_product_id);


--
-- Name: relation_48 relation_48_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_48
    ADD CONSTRAINT relation_48_pkey PRIMARY KEY (customer_id, product_id);


--
-- Name: relation_49 relation_49_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_49
    ADD CONSTRAINT relation_49_pkey PRIMARY KEY (customer_id, wishlist_id, product_id);


--
-- Name: relation_4 relation_4_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_4
    ADD CONSTRAINT relation_4_pkey PRIMARY KEY (electronics_id);


--
-- Name: relation_50 relation_50_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_50
    ADD CONSTRAINT relation_50_pkey PRIMARY KEY (customer_id, review_id);


--
-- Name: relation_51 relation_51_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_51
    ADD CONSTRAINT relation_51_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_52 relation_52_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_52
    ADD CONSTRAINT relation_52_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_53 relation_53_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_53
    ADD CONSTRAINT relation_53_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_54 relation_54_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_54
    ADD CONSTRAINT relation_54_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_55 relation_55_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_55
    ADD CONSTRAINT relation_55_pkey PRIMARY KEY (promotion_id, coupon_code);


--
-- Name: relation_56 relation_56_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_56
    ADD CONSTRAINT relation_56_pkey PRIMARY KEY (product_id, warehouse_id, bin_id);


--
-- Name: relation_57 relation_57_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_57
    ADD CONSTRAINT relation_57_pkey PRIMARY KEY (supplier_id, product_id);


--
-- Name: relation_58 relation_58_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_58
    ADD CONSTRAINT relation_58_pkey PRIMARY KEY (purchaseorder_id);


--
-- Name: relation_59 relation_59_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_59
    ADD CONSTRAINT relation_59_pkey PRIMARY KEY (purchaseorder_id, product_id);


--
-- Name: relation_5 relation_5_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_5
    ADD CONSTRAINT relation_5_pkey PRIMARY KEY (computer_id);


--
-- Name: relation_60 relation_60_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_60
    ADD CONSTRAINT relation_60_pkey PRIMARY KEY (custorder_id, shipment_id);


--
-- Name: relation_61 relation_61_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_61
    ADD CONSTRAINT relation_61_pkey PRIMARY KEY (phone_id, bundle_phone_phone_id);


--
-- Name: relation_62 relation_62_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_62
    ADD CONSTRAINT relation_62_pkey PRIMARY KEY (smartwatch_id);


--
-- Name: relation_63 relation_63_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_63
    ADD CONSTRAINT relation_63_pkey PRIMARY KEY (phone_id);


--
-- Name: relation_6 relation_6_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_6
    ADD CONSTRAINT relation_6_pkey PRIMARY KEY (laptop_id);


--
-- Name: relation_7 relation_7_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_7
    ADD CONSTRAINT relation_7_pkey PRIMARY KEY (tablet_id);


--
-- Name: relation_8 relation_8_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_8
    ADD CONSTRAINT relation_8_pkey PRIMARY KEY (smartwatch_id);


--
-- Name: relation_9 relation_9_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_9
    ADD CONSTRAINT relation_9_pkey PRIMARY KEY (camera_id);


--
-- Name: temp_browsingsession temp_browsingsession_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_browsingsession
    ADD CONSTRAINT temp_browsingsession_pkey PRIMARY KEY (user_id);


--
-- Name: temp_pricehistory temp_pricehistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_pricehistory
    ADD CONSTRAINT temp_pricehistory_pkey PRIMARY KEY (product_id);


--
-- Name: temp_productimage temp_productimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_productimage
    ADD CONSTRAINT temp_productimage_pkey PRIMARY KEY (product_id);


--
-- Name: temp_productvariant temp_productvariant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_productvariant
    ADD CONSTRAINT temp_productvariant_pkey PRIMARY KEY (product_id);


--
-- Name: idx_temp_browsingsession; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_browsingsession ON public.temp_browsingsession USING btree (user_id);


--
-- Name: idx_temp_pricehistory; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_pricehistory ON public.temp_pricehistory USING btree (product_id);


--
-- Name: idx_temp_productimage; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_productimage ON public.temp_productimage USING btree (product_id);


--
-- Name: idx_temp_productvariant; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_productvariant ON public.temp_productvariant USING btree (product_id);


--
-- PostgreSQL database dump complete
--

