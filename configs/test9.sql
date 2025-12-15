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
    productimage jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_1 OWNER TO postgres;

--
-- Name: relation_10; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_10 (
    phone_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    warranty_months integer,
    carrier_lock character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_10 OWNER TO postgres;

--
-- Name: relation_11; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_11 (
    accessories_id integer NOT NULL,
    accessory_type character varying(255)
);


ALTER TABLE public.relation_11 OWNER TO postgres;

--
-- Name: relation_12; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_12 (
    apparel_id integer NOT NULL,
    size_system character varying(255),
    material character varying(255),
    role character varying(255),
    sole_material character varying(255)
);


ALTER TABLE public.relation_12 OWNER TO postgres;

--
-- Name: relation_13; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_13 (
    menclothing_id integer NOT NULL,
    fit_type_men character varying(255)
);


ALTER TABLE public.relation_13 OWNER TO postgres;

--
-- Name: relation_14; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_14 (
    womenclothing_id integer NOT NULL,
    fit_type_women character varying(255)
);


ALTER TABLE public.relation_14 OWNER TO postgres;

--
-- Name: relation_15; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_15 (
    media_id integer NOT NULL,
    format character varying(255)
);


ALTER TABLE public.relation_15 OWNER TO postgres;

--
-- Name: relation_16; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_16 (
    software_id integer NOT NULL,
    license_type character varying(255)
);


ALTER TABLE public.relation_16 OWNER TO postgres;

--
-- Name: relation_17; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_17 (
    user_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    loyalty_tier character varying(255),
    role character varying(255),
    company_name character varying(255),
    employee_no character varying(255)
);


ALTER TABLE public.relation_17 OWNER TO postgres;

--
-- Name: relation_18; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_18 (
    user_id integer NOT NULL,
    mv_user character varying(255) NOT NULL
);


ALTER TABLE public.relation_18 OWNER TO postgres;

--
-- Name: relation_19; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_19 (
    user_id integer NOT NULL,
    contact_no character varying(255) NOT NULL
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
    primecustomer_id integer NOT NULL,
    renewal_date character varying(255)
);


ALTER TABLE public.relation_20 OWNER TO postgres;

--
-- Name: relation_21; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_21 (
    primecustomer_id integer NOT NULL,
    subscription_addons character varying(255) NOT NULL
);


ALTER TABLE public.relation_21 OWNER TO postgres;

--
-- Name: relation_22; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_22 (
    corporateemployee_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    employee_no character varying(255),
    office_site character varying(255),
    level character varying(255),
    role character varying(255)
);


ALTER TABLE public.relation_22 OWNER TO postgres;

--
-- Name: relation_23; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_23 (
    supportagent_id integer NOT NULL,
    queue character varying(255)
);


ALTER TABLE public.relation_23 OWNER TO postgres;

--
-- Name: relation_24; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_24 (
    fulfillmentassociate_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    employee_no character varying(255),
    shift character varying(255)
);


ALTER TABLE public.relation_24 OWNER TO postgres;

--
-- Name: relation_25; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_25 (
    categorymanager_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    employee_no character varying(255),
    department character varying(255)
);


ALTER TABLE public.relation_25 OWNER TO postgres;

--
-- Name: relation_26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_26 (
    product_id integer NOT NULL,
    variant_id integer NOT NULL,
    price_override integer,
    barcode character varying(255),
    is_active_variant integer
);


ALTER TABLE public.relation_26 OWNER TO postgres;

--
-- Name: relation_27; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_27 (
    tag_id integer NOT NULL,
    tag_name character varying(255)
);


ALTER TABLE public.relation_27 OWNER TO postgres;

--
-- Name: relation_28; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_28 (
    user_id integer NOT NULL,
    address_id integer NOT NULL,
    kind character varying(255),
    line1 character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    postal_code character varying(255)
);


ALTER TABLE public.relation_28 OWNER TO postgres;

--
-- Name: relation_29; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_29 (
    user_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    brand character varying(255),
    last4 character varying(255),
    exp_month integer,
    exp_year integer,
    is_default character varying(255)
);


ALTER TABLE public.relation_29 OWNER TO postgres;

--
-- Name: relation_3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_3 (
    physicalproduct_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    energy_rating character varying(255),
    role character varying(255),
    warranty_years integer,
    productimage jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_3 OWNER TO postgres;

--
-- Name: relation_30; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_30 (
    user_id integer NOT NULL,
    updated_at character varying(255)
);


ALTER TABLE public.relation_30 OWNER TO postgres;

--
-- Name: relation_31; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_31 (
    user_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    wishlist_name character varying(255)
);


ALTER TABLE public.relation_31 OWNER TO postgres;

--
-- Name: relation_32; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_32 (
    user_id integer NOT NULL,
    review_id integer NOT NULL,
    rating integer,
    title character varying(255),
    body character varying(255),
    created_at character varying(255)
);


ALTER TABLE public.relation_32 OWNER TO postgres;

--
-- Name: relation_33; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_33 (
    user_id integer NOT NULL,
    session_id integer NOT NULL,
    started_at character varying(255),
    device character varying(255)
);


ALTER TABLE public.relation_33 OWNER TO postgres;

--
-- Name: relation_34; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_34 (
    custorder_id integer NOT NULL,
    placed_at character varying(255),
    status character varying(255)
);


ALTER TABLE public.relation_34 OWNER TO postgres;

--
-- Name: relation_35; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_35 (
    custorder_id integer NOT NULL,
    shipment_id integer NOT NULL,
    carrier character varying(255),
    tracking_no character varying(255),
    shipped_at character varying(255),
    delivered_at character varying(255)
);


ALTER TABLE public.relation_35 OWNER TO postgres;

--
-- Name: relation_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_36 (
    promotion_id integer NOT NULL,
    promo_name character varying(255),
    starts_at character varying(255),
    ends_at character varying(255),
    discount_type character varying(255),
    discount_value character varying(255)
);


ALTER TABLE public.relation_36 OWNER TO postgres;

--
-- Name: relation_37; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_37 (
    promotion_id integer NOT NULL,
    coupon_code integer NOT NULL,
    max_uses integer,
    per_user_limit integer
);


ALTER TABLE public.relation_37 OWNER TO postgres;

--
-- Name: relation_38; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_38 (
    warehouse_id integer NOT NULL,
    warehouse_name character varying(255),
    region character varying(255)
);


ALTER TABLE public.relation_38 OWNER TO postgres;

--
-- Name: relation_39; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_39 (
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL,
    code character varying(255)
);


ALTER TABLE public.relation_39 OWNER TO postgres;

--
-- Name: relation_4; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_4 (
    digitalproduct_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    delivery_type character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_4 OWNER TO postgres;

--
-- Name: relation_40; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_40 (
    supplier_id integer NOT NULL,
    supplier_name character varying(255)
);


ALTER TABLE public.relation_40 OWNER TO postgres;

--
-- Name: relation_41; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_41 (
    supplier_id integer NOT NULL,
    contact_id integer NOT NULL,
    email character varying(255),
    phone character varying(255)
);


ALTER TABLE public.relation_41 OWNER TO postgres;

--
-- Name: relation_42; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_42 (
    purchaseorder_id integer NOT NULL,
    created_at character varying(255),
    status character varying(255)
);


ALTER TABLE public.relation_42 OWNER TO postgres;

--
-- Name: relation_43; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_43 (
    courierpartner_id integer NOT NULL,
    carrier_code character varying(255),
    webhook_url character varying(255)
);


ALTER TABLE public.relation_43 OWNER TO postgres;

--
-- Name: relation_44; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_44 (
    product_id integer NOT NULL,
    category_products_category_id integer
);


ALTER TABLE public.relation_44 OWNER TO postgres;

--
-- Name: relation_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_45 (
    product_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.relation_45 OWNER TO postgres;

--
-- Name: relation_46; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_46 (
    product_id integer NOT NULL,
    bought_together_product_product_id integer NOT NULL
);


ALTER TABLE public.relation_46 OWNER TO postgres;

--
-- Name: relation_47; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_47 (
    customer_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_47 OWNER TO postgres;

--
-- Name: relation_48; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_48 (
    customer_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_48 OWNER TO postgres;

--
-- Name: relation_49; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_49 (
    customer_id integer NOT NULL,
    review_id integer NOT NULL,
    reviews_product_id integer
);


ALTER TABLE public.relation_49 OWNER TO postgres;

--
-- Name: relation_5; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_5 (
    electronics_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    warranty_months integer,
    cpu character varying(255),
    ram_gb integer,
    role character varying(255),
    screen_size_in integer,
    productimage jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_5 OWNER TO postgres;

--
-- Name: relation_50; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_50 (
    custorder_id integer NOT NULL,
    customer_orders_customer_id integer
);


ALTER TABLE public.relation_50 OWNER TO postgres;

--
-- Name: relation_51; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_51 (
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_51 OWNER TO postgres;

--
-- Name: relation_52; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_52 (
    custorder_id integer NOT NULL,
    payment_order_customer_id integer,
    payment_order_payment_method_id integer
);


ALTER TABLE public.relation_52 OWNER TO postgres;

--
-- Name: relation_53; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_53 (
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_53 OWNER TO postgres;

--
-- Name: relation_54; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_54 (
    promotion_id integer NOT NULL,
    coupon_code integer NOT NULL,
    order_coupons_custorder_id integer
);


ALTER TABLE public.relation_54 OWNER TO postgres;

--
-- Name: relation_55; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_55 (
    product_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL
);


ALTER TABLE public.relation_55 OWNER TO postgres;

--
-- Name: relation_56; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_56 (
    supplier_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_56 OWNER TO postgres;

--
-- Name: relation_57; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_57 (
    purchaseorder_id integer NOT NULL,
    supplier_pos_supplier_id integer
);


ALTER TABLE public.relation_57 OWNER TO postgres;

--
-- Name: relation_58; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_58 (
    purchaseorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_58 OWNER TO postgres;

--
-- Name: relation_59; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_59 (
    custorder_id integer NOT NULL,
    shipment_id integer NOT NULL,
    courier_shipments_courierpartner_id integer
);


ALTER TABLE public.relation_59 OWNER TO postgres;

--
-- Name: relation_6; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_6 (
    desktop_id integer NOT NULL,
    form_factor character varying(255)
);


ALTER TABLE public.relation_6 OWNER TO postgres;

--
-- Name: relation_60; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_60 (
    phone_id integer NOT NULL,
    bundle_phone_phone_id integer NOT NULL
);


ALTER TABLE public.relation_60 OWNER TO postgres;

--
-- Name: relation_61; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_61 (
    smartwatch_id integer NOT NULL,
    bundled_phone_smart_watch_phone_id integer
);


ALTER TABLE public.relation_61 OWNER TO postgres;

--
-- Name: relation_62; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_62 (
    phone_id integer NOT NULL,
    single_bundle_phone_bundled_phone_phone_id integer
);


ALTER TABLE public.relation_62 OWNER TO postgres;

--
-- Name: relation_7; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_7 (
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
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_7 OWNER TO postgres;

--
-- Name: relation_8; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_8 (
    smartwatch_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    warranty_months integer,
    band_size character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
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
-- Name: temp_pricehistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_pricehistory (
    product_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    productimage jsonb DEFAULT '[]'::jsonb,
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
    productimage jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.temp_productimage OWNER TO postgres;

--
-- Name: erdb_objects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.erdb_objects ALTER COLUMN id SET DEFAULT nextval('public.erdb_objects_id_seq'::regclass);


--
-- Data for Name: erdb_objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.erdb_objects (id, name, data) FROM stdin;
1	sorted_by_dependencies_tables	[]
2	tables	[["relation_0", [["category_id", "INTEGER", "category_id", "category"], ["category_name", "VARCHAR(255)", "category.category_name", "category"], ["parent", "INTEGER", "category.parent", "category"]], false, ["category_id"]], ["relation_1", [["product_id", "INTEGER", "product_id", "product"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["product_id"]], ["relation_2", [["product_id", "INTEGER", "product_id", "product.mv_attributes"], ["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "product.mv_attributes"]], false, ["product_id", "mv_attributes"]], ["relation_3", [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["energy_rating", "VARCHAR(255)", "appliance.energy_rating", "appliance"], ["role", "VARCHAR(255)", "role", "appliance"], ["warranty_years", "INTEGER", "kitchenappliance.warranty_years", "kitchenappliance"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["physicalproduct_id"]], ["relation_4", [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["delivery_type", "VARCHAR(255)", "digitalproduct.delivery_type", "digitalproduct"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["digitalproduct_id"]], ["relation_5", [["electronics_id", "INTEGER", "electronics_id", "electronics"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["role", "VARCHAR(255)", "role", "computer"], ["screen_size_in", "INTEGER", "tablet.screen_size_in", "tablet"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["electronics_id"]], ["relation_6", [["desktop_id", "INTEGER", "desktop_id", "desktop"], ["form_factor", "VARCHAR(255)", "desktop.form_factor", "desktop"]], false, ["desktop_id"]], ["relation_7", [["laptop_id", "INTEGER", "laptop_id", "laptop"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["battery_wh", "INTEGER", "laptop.battery_wh", "laptop"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["laptop_id"]], ["relation_8", [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["band_size", "VARCHAR(255)", "smartwatch.band_size", "smartwatch"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["smartwatch_id"]], ["relation_9", [["camera_id", "INTEGER", "camera_id", "camera"], ["sensor_mp", "INTEGER", "camera.sensor_mp", "camera"]], false, ["camera_id"]], ["relation_10", [["phone_id", "INTEGER", "phone_id", "phone"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["carrier_lock", "VARCHAR(255)", "phone.carrier_lock", "phone"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["phone_id"]], ["relation_11", [["accessories_id", "INTEGER", "accessories_id", "accessories"], ["accessory_type", "VARCHAR(255)", "accessories.accessory_type", "accessories"]], false, ["accessories_id"]], ["relation_12", [["apparel_id", "INTEGER", "apparel_id", "apparel"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["material", "VARCHAR(255)", "clothing.material", "clothing"], ["role", "VARCHAR(255)", "role", "clothing"], ["sole_material", "VARCHAR(255)", "footwear.sole_material", "footwear"]], false, ["apparel_id"]], ["relation_13", [["menclothing_id", "INTEGER", "menclothing_id", "menclothing"], ["fit_type_men", "VARCHAR(255)", "menclothing.fit_type_men", "menclothing"]], false, ["menclothing_id"]], ["relation_14", [["womenclothing_id", "INTEGER", "womenclothing_id", "womenclothing"], ["fit_type_women", "VARCHAR(255)", "womenclothing.fit_type_women", "womenclothing"]], false, ["womenclothing_id"]], ["relation_15", [["media_id", "INTEGER", "media_id", "media"], ["format", "VARCHAR(255)", "media.format", "media"]], false, ["media_id"]], ["relation_16", [["software_id", "INTEGER", "software_id", "software"], ["license_type", "VARCHAR(255)", "software.license_type", "software"]], false, ["software_id"]], ["relation_17", [["user_id", "INTEGER", "user_id", "user"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["role", "VARCHAR(255)", "role", "customer"], ["company_name", "VARCHAR(255)", "businesscustomer.company_name", "businesscustomer"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"]], false, ["user_id"]], ["relation_18", [["user_id", "INTEGER", "user_id", "user.mv_user"], ["mv_user", "VARCHAR(255)", "user.mv_user", "user.mv_user"]], false, ["user_id", "mv_user"]], ["relation_19", [["user_id", "INTEGER", "user_id", "customer.contact_no"], ["contact_no", "VARCHAR(255)", "customer.contact_no", "customer.contact_no"]], false, ["user_id", "contact_no"]], ["relation_20", [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer"], ["renewal_date", "VARCHAR(255)", "primecustomer.renewal_date", "primecustomer"]], false, ["primecustomer_id"]], ["relation_21", [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer.subscription_addons"], ["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "primecustomer.subscription_addons"]], false, ["primecustomer_id", "subscription_addons"]], ["relation_22", [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["office_site", "VARCHAR(255)", "corporateemployee.office_site", "corporateemployee"], ["level", "VARCHAR(255)", "engineer.level", "engineer"], ["role", "VARCHAR(255)", "role", "engineer"]], false, ["corporateemployee_id"]], ["relation_23", [["supportagent_id", "INTEGER", "supportagent_id", "supportagent"], ["queue", "VARCHAR(255)", "supportagent.queue", "supportagent"]], false, ["supportagent_id"]], ["relation_24", [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["shift", "VARCHAR(255)", "fulfillmentassociate.shift", "fulfillmentassociate"]], false, ["fulfillmentassociate_id"]], ["relation_25", [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["department", "VARCHAR(255)", "categorymanager.department", "categorymanager"]], false, ["categorymanager_id"]], ["relation_26", [["product_id", "INTEGER", "product_id", "productvariant"], ["variant_id", "INTEGER", "productvariant.variant_id", "productvariant"], ["price_override", "INTEGER", "productvariant.price_override", "productvariant"], ["barcode", "VARCHAR(255)", "productvariant.barcode", "productvariant"], ["is_active_variant", "INTEGER", "productvariant.is_active_variant", "productvariant"]], false, ["product_id", "variant_id"]], ["relation_27", [["tag_id", "INTEGER", "tag_id", "tag"], ["tag_name", "VARCHAR(255)", "tag.tag_name", "tag"]], false, ["tag_id"]], ["relation_28", [["user_id", "INTEGER", "user_id", "address"], ["address_id", "INTEGER", "address.address_id", "address"], ["kind", "VARCHAR(255)", "address.kind", "address"], ["line1", "VARCHAR(255)", "address.line1", "address"], ["city", "VARCHAR(255)", "address.city", "address"], ["state", "VARCHAR(255)", "address.state", "address"], ["country", "VARCHAR(255)", "address.country", "address"], ["postal_code", "VARCHAR(255)", "address.postal_code", "address"]], false, ["user_id", "address_id"]], ["relation_29", [["user_id", "INTEGER", "user_id", "paymentmethod"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "paymentmethod"], ["brand", "VARCHAR(255)", "paymentmethod.brand", "paymentmethod"], ["last4", "VARCHAR(255)", "paymentmethod.last4", "paymentmethod"], ["exp_month", "INTEGER", "paymentmethod.exp_month", "paymentmethod"], ["exp_year", "INTEGER", "paymentmethod.exp_year", "paymentmethod"], ["is_default", "VARCHAR(255)", "paymentmethod.is_default", "paymentmethod"]], false, ["user_id", "payment_method_id"]], ["relation_30", [["user_id", "INTEGER", "user_id", "cart"], ["updated_at", "VARCHAR(255)", "cart.updated_at", "cart"]], false, ["user_id"]], ["relation_31", [["user_id", "INTEGER", "user_id", "wishlist"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist"], ["wishlist_name", "VARCHAR(255)", "wishlist.wishlist_name", "wishlist"]], false, ["user_id", "wishlist_id"]], ["relation_32", [["user_id", "INTEGER", "user_id", "review"], ["review_id", "INTEGER", "review.review_id", "review"], ["rating", "INTEGER", "review.rating", "review"], ["title", "VARCHAR(255)", "review.title", "review"], ["body", "VARCHAR(255)", "review.body", "review"], ["created_at", "VARCHAR(255)", "review.created_at", "review"]], false, ["user_id", "review_id"]], ["relation_33", [["user_id", "INTEGER", "user_id", "browsingsession"], ["session_id", "INTEGER", "browsingsession.session_id", "browsingsession"], ["started_at", "VARCHAR(255)", "browsingsession.started_at", "browsingsession"], ["device", "VARCHAR(255)", "browsingsession.device", "browsingsession"]], false, ["user_id", "session_id"]], ["relation_34", [["custorder_id", "INTEGER", "custorder_id", "custorder"], ["placed_at", "VARCHAR(255)", "custorder.placed_at", "custorder"], ["status", "VARCHAR(255)", "custorder.status", "custorder"]], false, ["custorder_id"]], ["relation_35", [["custorder_id", "INTEGER", "custorder_id", "shipment"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment"], ["carrier", "VARCHAR(255)", "shipment.carrier", "shipment"], ["tracking_no", "VARCHAR(255)", "shipment.tracking_no", "shipment"], ["shipped_at", "VARCHAR(255)", "shipment.shipped_at", "shipment"], ["delivered_at", "VARCHAR(255)", "shipment.delivered_at", "shipment"]], false, ["custorder_id", "shipment_id"]], ["relation_36", [["promotion_id", "INTEGER", "promotion_id", "promotion"], ["promo_name", "VARCHAR(255)", "promotion.promo_name", "promotion"], ["starts_at", "VARCHAR(255)", "promotion.starts_at", "promotion"], ["ends_at", "VARCHAR(255)", "promotion.ends_at", "promotion"], ["discount_type", "VARCHAR(255)", "promotion.discount_type", "promotion"], ["discount_value", "VARCHAR(255)", "promotion.discount_value", "promotion"]], false, ["promotion_id"]], ["relation_37", [["promotion_id", "INTEGER", "promotion_id", "coupon"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon"], ["max_uses", "INTEGER", "coupon.max_uses", "coupon"], ["per_user_limit", "INTEGER", "coupon.per_user_limit", "coupon"]], false, ["promotion_id", "coupon_code"]], ["relation_38", [["warehouse_id", "INTEGER", "warehouse_id", "warehouse"], ["warehouse_name", "VARCHAR(255)", "warehouse.warehouse_name", "warehouse"], ["region", "VARCHAR(255)", "warehouse.region", "warehouse"]], false, ["warehouse_id"]], ["relation_39", [["warehouse_id", "INTEGER", "warehouse_id", "warehousebin"], ["bin_id", "INTEGER", "warehousebin.bin_id", "warehousebin"], ["code", "VARCHAR(255)", "warehousebin.code", "warehousebin"]], false, ["warehouse_id", "bin_id"]], ["relation_40", [["supplier_id", "INTEGER", "supplier_id", "supplier"], ["supplier_name", "VARCHAR(255)", "supplier.supplier_name", "supplier"]], false, ["supplier_id"]], ["relation_41", [["supplier_id", "INTEGER", "supplier_id", "suppliercontact"], ["contact_id", "INTEGER", "suppliercontact.contact_id", "suppliercontact"], ["email", "VARCHAR(255)", "suppliercontact.email", "suppliercontact"], ["phone", "VARCHAR(255)", "suppliercontact.phone", "suppliercontact"]], false, ["supplier_id", "contact_id"]], ["relation_42", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder"], ["created_at", "VARCHAR(255)", "purchaseorder.created_at", "purchaseorder"], ["status", "VARCHAR(255)", "purchaseorder.status", "purchaseorder"]], false, ["purchaseorder_id"]], ["relation_43", [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner"], ["carrier_code", "VARCHAR(255)", "courierpartner.carrier_code", "courierpartner"], ["webhook_url", "VARCHAR(255)", "courierpartner.webhook_url", "courierpartner"]], false, ["courierpartner_id"]], ["relation_44", [["product_id", "INTEGER", "product_id", "category_products"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], false, ["product_id"]], ["relation_45", [["product_id", "INTEGER", "product_id", "product_tags"], ["tag_id", "INTEGER", "tag_id", "product_tags"]], false, ["product_id", "tag_id"]], ["relation_46", [["product_id", "INTEGER", "product_id", "bought_together"], ["bought_together_product_product_id", "INTEGER", "product_id", "bought_together"]], false, ["product_id", "bought_together_product_product_id"]], ["relation_47", [["customer_id", "INTEGER", "user_id", "cart_contains"], ["product_id", "INTEGER", "product_id", "cart_contains"]], false, ["customer_id", "product_id"]], ["relation_48", [["customer_id", "INTEGER", "user_id", "wishlist_contains"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_contains"], ["product_id", "INTEGER", "product_id", "wishlist_contains"]], false, ["customer_id", "wishlist_id", "product_id"]], ["relation_49", [["customer_id", "INTEGER", "user_id", "reviews"], ["review_id", "INTEGER", "review.review_id", "reviews"], ["reviews_product_id", "INTEGER", "product_id", "reviews"]], false, ["customer_id", "review_id"]], ["relation_50", [["custorder_id", "INTEGER", "custorder_id", "customer_orders"], ["customer_orders_customer_id", "INTEGER", "user_id", "customer_orders"]], false, ["custorder_id"]], ["relation_51", [["custorder_id", "INTEGER", "custorder_id", "order_items"], ["product_id", "INTEGER", "product_id", "order_items"]], false, ["custorder_id", "product_id"]], ["relation_52", [["custorder_id", "INTEGER", "custorder_id", "payment_order"], ["payment_order_customer_id", "INTEGER", "user_id", "payment_order"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order"]], false, ["custorder_id"]], ["relation_53", [["custorder_id", "INTEGER", "custorder_id", "order_returns"], ["product_id", "INTEGER", "product_id", "order_returns"]], false, ["custorder_id", "product_id"]], ["relation_54", [["promotion_id", "INTEGER", "promotion_id", "order_coupons"], ["coupon_code", "INTEGER", "coupon.coupon_code", "order_coupons"], ["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons"]], false, ["promotion_id", "coupon_code"]], ["relation_55", [["product_id", "INTEGER", "product_id", "stock"], ["warehouse_id", "INTEGER", "warehouse_id", "stock"], ["bin_id", "INTEGER", "warehousebin.bin_id", "stock"]], false, ["product_id", "warehouse_id", "bin_id"]], ["relation_56", [["supplier_id", "INTEGER", "supplier_id", "supplier_products"], ["product_id", "INTEGER", "product_id", "supplier_products"]], false, ["supplier_id", "product_id"]], ["relation_57", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "supplier_pos"], ["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos"]], false, ["purchaseorder_id"]], ["relation_58", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "po_items"], ["product_id", "INTEGER", "product_id", "po_items"]], false, ["purchaseorder_id", "product_id"]], ["relation_59", [["custorder_id", "INTEGER", "custorder_id", "courier_shipments"], ["shipment_id", "INTEGER", "shipment.shipment_id", "courier_shipments"], ["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments"]], false, ["custorder_id", "shipment_id"]], ["relation_60", [["phone_id", "INTEGER", "phone_id", "bundle_phones"], ["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phones"]], false, ["phone_id", "bundle_phone_phone_id"]], ["relation_61", [["smartwatch_id", "INTEGER", "smartwatch_id", "bundled_phone_smart_watch"], ["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch"]], false, ["smartwatch_id"]], ["relation_62", [["phone_id", "INTEGER", "phone_id", "bundled_phone"], ["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "bundled_phone"]], false, ["phone_id"]]]
3	types	{}
4	graph	{"cost": 79204930.55998756, "edges": [{"type": "edge", "source": "product.mv_attributes", "target": "product", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "physicalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "digitalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "electronics", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "computer", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "desktop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "laptop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "tablet", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "smartwatch", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "camera", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "phone", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "accessories", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "appliance", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "kitchenappliance", "target": "appliance", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "apparel", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "clothing", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "menclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "womenclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "footwear", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "media", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "software", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "user.mv_user", "target": "user", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer.contact_no", "target": "customer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "primecustomer.subscription_addons", "target": "primecustomer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "primecustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "businesscustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "employee", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "corporateemployee", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "engineer", "target": "corporateemployee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "supportagent", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "fulfillmentassociate", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "categorymanager", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productimage", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productvariant", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "pricehistory", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "address", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "paymentmethod", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "cart", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "wishlist", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "review", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "browsingsession", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "shipment", "target": "custorder", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "coupon", "target": "promotion", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "warehousebin", "target": "warehouse", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "suppliercontact", "target": "supplier", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "category_products", "target": "category", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "category_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "tag", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "cart", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "wishlist", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "review", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "customer", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "paymentmethod", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "coupon", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "warehousebin", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "courierpartner", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "shipment", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "smartwatch", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}], "nodes": [{"key": {"table_key": [["category_id", "INTEGER", "category_id", "category_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["category"]}, "name": "Category", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 1, "attributes": ["category.category_id", "category.category_name", "category.parent"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "category_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "category_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "parent", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Category", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[1, "relation_0"]], "unique_name": "category", "mapped_table": [1, "relation_0"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "category_id", "pk_type": "INTEGER", "pk_ER_name": "category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "category_name", "type": "VARCHAR", "unique_name": "category.category_name", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "parent", "type": "INT", "unique_name": "category.parent", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["category"], "select_frequency": 2, "select_all_tables": [[1, "relation_0"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "category_id", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 2, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.category_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "category_name", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 3, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "category.category_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "parent", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 4, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.parent", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["product"]}, "name": "Product", "type": "ENTITY", "is_mvds": true, "children": ["physicalproduct", "digitalproduct"], "is_total": null, "sort_key": 5, "attributes": ["product.product_id", "product.sku", "product.product_name", "product.base_price", "product.is_active", "product.quantity", "product.mv_attributes"], "node_cover": ["product", "physicalproduct", "electronics", "laptop", "smartwatch", "phone", "digitalproduct"], "entity_dict": {"attributes": [{"attr_name": "product_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sku", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "product_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "base_price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "quantity", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_attributes", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Product", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"], [12, "relation_2"]], "unique_name": "product", "mapped_table": [5, "relation_1"], "parent_entity": null, "relation_size": 2100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["product"], "select_frequency": 10, "select_all_tables": [[5, "relation_1"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "product_id", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 6, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.product_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sku", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 7, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.sku", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "product_name", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 8, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.product_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "base_price", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 9, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.base_price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 10, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.is_active", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "quantity", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 11, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.quantity", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "mv_attributes"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": null}, "name": "mv_attributes", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 12, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.mv_attributes", "is_composite": false, "is_flattened": false, "mapped_table": [12, "relation_2"], "relation_size": 3144, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["physicalproduct"]}, "name": "PhysicalProduct", "type": "ENTITY", "is_mvds": false, "children": ["electronics", "appliance", "apparel"], "is_total": true, "sort_key": 13, "attributes": ["physicalproduct.dimensions"], "node_cover": ["physicalproduct", "electronics", "laptop", "smartwatch", "phone"], "entity_dict": {"total": true, "attributes": [{"attr_name": "dimensions", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PhysicalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [13, "relation_3"]], "unique_name": "physicalproduct", "mapped_table": [13, "relation_3"], "parent_entity": "product", "relation_size": 1700, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "physicalproduct_id", "pk_entity_name": "physicalproduct", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["physicalproduct"], "select_frequency": 5, "select_all_tables": [[12, "relation_2"], [13, "relation_3"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "dimensions", "type": "ATTRIBUTE", "entity": "physicalproduct", "children": [], "sort_key": 14, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "physicalproduct.dimensions", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["digitalproduct"]}, "name": "DigitalProduct", "type": "ENTITY", "is_mvds": false, "children": ["media", "software"], "is_total": true, "sort_key": 15, "attributes": ["digitalproduct.delivery_type"], "node_cover": ["digitalproduct"], "entity_dict": {"total": true, "attributes": [{"attr_name": "delivery_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "DigitalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[15, "relation_4"], [12, "relation_2"]], "unique_name": "digitalproduct", "mapped_table": [15, "relation_4"], "parent_entity": "product", "relation_size": 300, "attribute_list": [{"pk_name": "digitalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "digitalproduct_id", "pk_entity_name": "digitalproduct", "pk_unique_name": "digitalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["digitalproduct"], "select_frequency": 2, "select_all_tables": [[15, "relation_4"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "delivery_type", "type": "ATTRIBUTE", "entity": "digitalproduct", "children": [], "sort_key": 16, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "digitalproduct.delivery_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["electronics"]}, "name": "Electronics", "type": "ENTITY", "is_mvds": false, "children": ["computer", "tablet", "smartwatch", "camera", "phone", "accessories"], "is_total": true, "sort_key": 17, "attributes": ["electronics.warranty_months"], "node_cover": ["electronics", "laptop", "smartwatch", "phone"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_months", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Electronics", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [17, "relation_5"]], "unique_name": "electronics", "mapped_table": [17, "relation_5"], "parent_entity": "physicalproduct", "relation_size": 900, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "electronics_id", "pk_entity_name": "electronics", "pk_unique_name": "electronics_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["electronics"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [17, "relation_5"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warranty_months", "type": "ATTRIBUTE", "entity": "electronics", "children": [], "sort_key": 18, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "electronics.warranty_months", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "computer_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_5"], "table_key_entities": ["computer"]}, "name": "Computer", "type": "ENTITY", "is_mvds": false, "children": ["desktop", "laptop"], "is_total": true, "sort_key": 19, "attributes": ["computer.cpu", "computer.ram_gb"], "node_cover": ["computer", "laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "cpu", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ram_gb", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Computer", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [17, "relation_5"]], "unique_name": "computer", "mapped_table": [17, "relation_5"], "parent_entity": "electronics", "relation_size": 300, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "computer_id", "pk_entity_name": "computer", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["computer"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [17, "relation_5"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "cpu", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 20, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "computer.cpu", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ram_gb", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 21, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "computer.ram_gb", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["desktop_id", "INTEGER", "desktop_id", "desktop_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["desktop"]}, "name": "Desktop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 22, "attributes": ["desktop.form_factor"], "node_cover": ["desktop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "form_factor", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Desktop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[22, "relation_6"], [12, "relation_2"], [17, "relation_5"]], "unique_name": "desktop", "mapped_table": [22, "relation_6"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "desktop_id", "pk_type": "INTEGER", "pk_ER_name": "desktop_id", "pk_entity_name": "desktop", "pk_unique_name": "desktop_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "form_factor", "type": "VARCHAR", "unique_name": "desktop.form_factor", "is_flattened": null, "mapped_table": [22, "relation_6"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "desktop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["desktop"], "select_frequency": 10, "select_all_tables": [[22, "relation_6"], [12, "relation_2"], [17, "relation_5"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "form_factor", "type": "ATTRIBUTE", "entity": "desktop", "children": [], "sort_key": 23, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "desktop.form_factor", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["laptop_id", "INTEGER", "laptop_id", "laptop_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["laptop"]}, "name": "Laptop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 24, "attributes": ["laptop.battery_wh"], "node_cover": ["laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "battery_wh", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Laptop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[24, "relation_7"], [12, "relation_2"]], "unique_name": "laptop", "mapped_table": [24, "relation_7"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "laptop_id", "pk_type": "INTEGER", "pk_ER_name": "laptop_id", "pk_entity_name": "laptop", "pk_unique_name": "laptop_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "battery_wh", "type": "INT", "unique_name": "laptop.battery_wh", "is_flattened": null, "mapped_table": [24, "relation_7"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "laptop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["laptop"], "select_frequency": 5, "select_all_tables": [[24, "relation_7"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "battery_wh", "type": "ATTRIBUTE", "entity": "laptop", "children": [], "sort_key": 25, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "laptop.battery_wh", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "tablet_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_5"], "table_key_entities": ["tablet"]}, "name": "Tablet", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 26, "attributes": ["tablet.screen_size_in"], "node_cover": ["tablet"], "entity_dict": {"total": true, "attributes": [{"attr_name": "screen_size_in", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tablet", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [17, "relation_5"]], "unique_name": "tablet", "mapped_table": [17, "relation_5"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "tablet_id", "pk_entity_name": "tablet", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "screen_size_in", "type": "INT", "unique_name": "tablet.screen_size_in", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tablet", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["tablet"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [17, "relation_5"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "screen_size_in", "type": "ATTRIBUTE", "entity": "tablet", "children": [], "sort_key": 27, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tablet.screen_size_in", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_5"], "table_key_entities": ["smartwatch"]}, "name": "Smartwatch", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 28, "attributes": ["smartwatch.band_size"], "node_cover": ["smartwatch"], "entity_dict": {"total": true, "attributes": [{"attr_name": "band_size", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Smartwatch", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[28, "relation_8"], [12, "relation_2"]], "unique_name": "smartwatch", "mapped_table": [28, "relation_8"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "band_size", "type": "VARCHAR", "unique_name": "smartwatch.band_size", "is_flattened": null, "mapped_table": [28, "relation_8"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "smartwatch", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["smartwatch"], "select_frequency": 1, "select_all_tables": [[28, "relation_8"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "band_size", "type": "ATTRIBUTE", "entity": "smartwatch", "children": [], "sort_key": 29, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "smartwatch.band_size", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["camera_id", "INTEGER", "camera_id", "camera_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_5"], "table_key_entities": ["camera"]}, "name": "Camera", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 30, "attributes": ["camera.sensor_mp"], "node_cover": ["camera"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sensor_mp", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Camera", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [17, "relation_5"], [30, "relation_9"]], "unique_name": "camera", "mapped_table": [30, "relation_9"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "camera_id", "pk_type": "INTEGER", "pk_ER_name": "camera_id", "pk_entity_name": "camera", "pk_unique_name": "camera_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sensor_mp", "type": "INT", "unique_name": "camera.sensor_mp", "is_flattened": null, "mapped_table": [30, "relation_9"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "camera", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["camera"], "select_frequency": 2, "select_all_tables": [[12, "relation_2"], [17, "relation_5"], [30, "relation_9"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "sensor_mp", "type": "ATTRIBUTE", "entity": "camera", "children": [], "sort_key": 31, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "camera.sensor_mp", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["phone_id", "INTEGER", "phone_id", "phone_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_5"], "table_key_entities": ["phone"]}, "name": "Phone", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 32, "attributes": ["phone.carrier_lock"], "node_cover": ["phone"], "entity_dict": {"total": true, "attributes": [{"attr_name": "carrier_lock", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Phone", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[32, "relation_10"], [12, "relation_2"]], "unique_name": "phone", "mapped_table": [32, "relation_10"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "carrier_lock", "type": "VARCHAR", "unique_name": "phone.carrier_lock", "is_flattened": null, "mapped_table": [32, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "phone", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["phone"], "select_frequency": 10, "select_all_tables": [[32, "relation_10"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "carrier_lock", "type": "ATTRIBUTE", "entity": "phone", "children": [], "sort_key": 33, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "phone.carrier_lock", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["accessories_id", "INTEGER", "accessories_id", "accessories_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_5"], "table_key_entities": ["accessories"]}, "name": "Accessories", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 34, "attributes": ["accessories.accessory_type"], "node_cover": ["accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "accessory_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Accessories", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[34, "relation_11"], [12, "relation_2"], [17, "relation_5"]], "unique_name": "accessories", "mapped_table": [34, "relation_11"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "accessories_id", "pk_type": "INTEGER", "pk_ER_name": "accessories_id", "pk_entity_name": "accessories", "pk_unique_name": "accessories_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "accessory_type", "type": "VARCHAR", "unique_name": "accessories.accessory_type", "is_flattened": null, "mapped_table": [34, "relation_11"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "accessories", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["accessories"], "select_frequency": 0, "select_all_tables": [[34, "relation_11"], [12, "relation_2"], [17, "relation_5"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "accessory_type", "type": "ATTRIBUTE", "entity": "accessories", "children": [], "sort_key": 35, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "accessories.accessory_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "appliance_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["appliance"]}, "name": "Appliance", "type": "ENTITY", "is_mvds": false, "children": ["kitchenappliance"], "is_total": true, "sort_key": 36, "attributes": ["appliance.energy_rating"], "node_cover": ["appliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "energy_rating", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Appliance", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [13, "relation_3"]], "unique_name": "appliance", "mapped_table": [13, "relation_3"], "parent_entity": "physicalproduct", "relation_size": 200, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "appliance_id", "pk_entity_name": "appliance", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["appliance"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [13, "relation_3"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "energy_rating", "type": "ATTRIBUTE", "entity": "appliance", "children": [], "sort_key": 37, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "appliance.energy_rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "kitchenappliance_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["kitchenappliance"]}, "name": "KitchenAppliance", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 38, "attributes": ["kitchenappliance.warranty_years"], "node_cover": ["kitchenappliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_years", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "KitchenAppliance", "entity_type": null, "parent_entity": "Appliance"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [13, "relation_3"]], "unique_name": "kitchenappliance", "mapped_table": [13, "relation_3"], "parent_entity": "appliance", "relation_size": 100, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "kitchenappliance_id", "pk_entity_name": "kitchenappliance", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_years", "type": "INT", "unique_name": "kitchenappliance.warranty_years", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "kitchenappliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["kitchenappliance"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [13, "relation_3"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warranty_years", "type": "ATTRIBUTE", "entity": "kitchenappliance", "children": [], "sort_key": 39, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "kitchenappliance.warranty_years", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["apparel"]}, "name": "Apparel", "type": "ENTITY", "is_mvds": false, "children": ["clothing", "footwear"], "is_total": true, "sort_key": 40, "attributes": ["apparel.size_system"], "node_cover": ["apparel"], "entity_dict": {"total": true, "attributes": [{"attr_name": "size_system", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Apparel", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [40, "relation_12"], [13, "relation_3"]], "unique_name": "apparel", "mapped_table": [40, "relation_12"], "parent_entity": "physicalproduct", "relation_size": 500, "attribute_list": [{"pk_name": "apparel_id", "pk_type": "INTEGER", "pk_ER_name": "apparel_id", "pk_entity_name": "apparel", "pk_unique_name": "apparel_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["apparel"], "select_frequency": 1, "select_all_tables": [[40, "relation_12"], [12, "relation_2"], [13, "relation_3"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "physicalproduct"}, {"key": null, "name": "size_system", "type": "ATTRIBUTE", "entity": "apparel", "children": [], "sort_key": 41, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "apparel.size_system", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["apparel_id", "INTEGER", "apparel_id", "clothing_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_12"], "table_key_entities": ["clothing"]}, "name": "Clothing", "type": "ENTITY", "is_mvds": false, "children": ["menclothing", "womenclothing"], "is_total": true, "sort_key": 42, "attributes": ["clothing.material"], "node_cover": ["clothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Clothing", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [40, "relation_12"], [12, "relation_2"]], "unique_name": "clothing", "mapped_table": [40, "relation_12"], "parent_entity": "apparel", "relation_size": 300, "attribute_list": [{"pk_name": "apparel_id", "pk_type": "INTEGER", "pk_ER_name": "clothing_id", "pk_entity_name": "clothing", "pk_unique_name": "apparel_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["clothing"], "select_frequency": 10, "select_all_tables": [[40, "relation_12"], [12, "relation_2"], [13, "relation_3"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "material", "type": "ATTRIBUTE", "entity": "clothing", "children": [], "sort_key": 43, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "clothing.material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["menclothing_id", "INTEGER", "menclothing_id", "menclothing_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_12"], "table_key_entities": ["menclothing"]}, "name": "MenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 44, "attributes": ["menclothing.fit_type_men"], "node_cover": ["menclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_men", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "MenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [40, "relation_12"], [12, "relation_2"], [44, "relation_13"]], "unique_name": "menclothing", "mapped_table": [44, "relation_13"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "menclothing_id", "pk_type": "INTEGER", "pk_ER_name": "menclothing_id", "pk_entity_name": "menclothing", "pk_unique_name": "menclothing_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_men", "type": "VARCHAR", "unique_name": "menclothing.fit_type_men", "is_flattened": null, "mapped_table": [44, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "menclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["menclothing"], "select_frequency": 5, "select_all_tables": [[40, "relation_12"], [12, "relation_2"], [44, "relation_13"], [13, "relation_3"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "physicalproduct"}, {"key": null, "name": "fit_type_men", "type": "ATTRIBUTE", "entity": "menclothing", "children": [], "sort_key": 45, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "menclothing.fit_type_men", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["womenclothing_id", "INTEGER", "womenclothing_id", "womenclothing_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_12"], "table_key_entities": ["womenclothing"]}, "name": "WomenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 46, "attributes": ["womenclothing.fit_type_women"], "node_cover": ["womenclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_women", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WomenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[46, "relation_14"], [13, "relation_3"], [40, "relation_12"], [12, "relation_2"]], "unique_name": "womenclothing", "mapped_table": [46, "relation_14"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "womenclothing_id", "pk_type": "INTEGER", "pk_ER_name": "womenclothing_id", "pk_entity_name": "womenclothing", "pk_unique_name": "womenclothing_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_women", "type": "VARCHAR", "unique_name": "womenclothing.fit_type_women", "is_flattened": null, "mapped_table": [46, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "womenclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["womenclothing"], "select_frequency": 20, "select_all_tables": [[40, "relation_12"], [12, "relation_2"], [46, "relation_14"], [13, "relation_3"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "physicalproduct"}, {"key": null, "name": "fit_type_women", "type": "ATTRIBUTE", "entity": "womenclothing", "children": [], "sort_key": 47, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "womenclothing.fit_type_women", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["apparel_id", "INTEGER", "apparel_id", "footwear_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_12"], "table_key_entities": ["footwear"]}, "name": "Footwear", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 48, "attributes": ["footwear.sole_material"], "node_cover": ["footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sole_material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Footwear", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [40, "relation_12"], [12, "relation_2"]], "unique_name": "footwear", "mapped_table": [40, "relation_12"], "parent_entity": "apparel", "relation_size": 100, "attribute_list": [{"pk_name": "apparel_id", "pk_type": "INTEGER", "pk_ER_name": "footwear_id", "pk_entity_name": "footwear", "pk_unique_name": "apparel_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sole_material", "type": "VARCHAR", "unique_name": "footwear.sole_material", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "footwear", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["footwear"], "select_frequency": 20, "select_all_tables": [[40, "relation_12"], [12, "relation_2"], [13, "relation_3"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "sole_material", "type": "ATTRIBUTE", "entity": "footwear", "children": [], "sort_key": 49, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "footwear.sole_material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["media_id", "INTEGER", "media_id", "media_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_4"], "table_key_entities": ["media"]}, "name": "Media", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 50, "attributes": ["media.format"], "node_cover": ["media"], "entity_dict": {"total": true, "attributes": [{"attr_name": "format", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Media", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[15, "relation_4"], [12, "relation_2"], [50, "relation_15"]], "unique_name": "media", "mapped_table": [50, "relation_15"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "media_id", "pk_type": "INTEGER", "pk_ER_name": "media_id", "pk_entity_name": "media", "pk_unique_name": "media_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "format", "type": "VARCHAR", "unique_name": "media.format", "is_flattened": null, "mapped_table": [50, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "media", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["media"], "select_frequency": 1, "select_all_tables": [[15, "relation_4"], [12, "relation_2"], [50, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "digitalproduct"}, {"key": null, "name": "format", "type": "ATTRIBUTE", "entity": "media", "children": [], "sort_key": 51, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "media.format", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["software_id", "INTEGER", "software_id", "software_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_4"], "table_key_entities": ["software"]}, "name": "Software", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 52, "attributes": ["software.license_type"], "node_cover": ["software"], "entity_dict": {"total": true, "attributes": [{"attr_name": "license_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Software", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[15, "relation_4"], [12, "relation_2"], [52, "relation_16"]], "unique_name": "software", "mapped_table": [52, "relation_16"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "software_id", "pk_type": "INTEGER", "pk_ER_name": "software_id", "pk_entity_name": "software", "pk_unique_name": "software_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "license_type", "type": "VARCHAR", "unique_name": "software.license_type", "is_flattened": null, "mapped_table": [52, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "software", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["software"], "select_frequency": 1, "select_all_tables": [[15, "relation_4"], [12, "relation_2"], [52, "relation_16"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "digitalproduct"}, {"key": null, "name": "license_type", "type": "ATTRIBUTE", "entity": "software", "children": [], "sort_key": 53, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "software.license_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["user"]}, "name": "User", "type": "ENTITY", "is_mvds": true, "children": ["customer", "employee"], "is_total": null, "sort_key": 54, "attributes": ["user.email", "user.password_hash", "user.mv_user"], "node_cover": ["user", "corporateemployee", "fulfillmentassociate", "categorymanager"], "entity_dict": {"attributes": [{"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "password_hash", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_user", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "User", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[54, "relation_17"], [57, "relation_18"]], "unique_name": "user", "mapped_table": [54, "relation_17"], "parent_entity": null, "relation_size": 1000, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_18"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_18"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["user"], "select_frequency": 10, "select_all_tables": [[54, "relation_17"], [57, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 4, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 55, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "password_hash", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 56, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.password_hash", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["mv_user", "VARCHAR(255)", "user.mv_user", "mv_user"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_17"], "table_key_entities": null}, "name": "mv_user", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 57, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.mv_user", "is_composite": false, "is_flattened": false, "mapped_table": [57, "relation_18"], "relation_size": 2458, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "customer_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_17"], "table_key_entities": ["customer"]}, "name": "Customer", "type": "ENTITY", "is_mvds": true, "children": ["primecustomer", "businesscustomer"], "is_total": true, "sort_key": 58, "attributes": ["customer.loyalty_tier", "customer.contact_no"], "node_cover": ["customer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "loyalty_tier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "contact_no", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Customer", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_18"], [54, "relation_17"], [60, "relation_19"]], "unique_name": "customer", "mapped_table": [54, "relation_17"], "parent_entity": "user", "relation_size": 300, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_18"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_18"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_19"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["customer"], "select_frequency": 6, "select_all_tables": [[54, "relation_17"], [57, "relation_18"], [60, "relation_19"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "loyalty_tier", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 59, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.loyalty_tier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "customer_id"]], [["contact_no", "VARCHAR(255)", "customer.contact_no", "contact_no"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_17"], "table_key_entities": null}, "name": "contact_no", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 60, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.contact_no", "is_composite": false, "is_flattened": false, "mapped_table": [60, "relation_19"], "relation_size": 446, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_17"], "table_key_entities": ["primecustomer"]}, "name": "PrimeCustomer", "type": "ENTITY", "is_mvds": true, "children": [], "is_total": true, "sort_key": 61, "attributes": ["primecustomer.renewal_date", "primecustomer.subscription_addons"], "node_cover": ["primecustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "renewal_date", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "subscription_addons", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PrimeCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[61, "relation_20"], [54, "relation_17"], [63, "relation_21"], [57, "relation_18"], [60, "relation_19"]], "unique_name": "primecustomer", "mapped_table": [61, "relation_20"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "primecustomer_id", "pk_type": "INTEGER", "pk_ER_name": "primecustomer_id", "pk_entity_name": "primecustomer", "pk_unique_name": "primecustomer_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_18"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_18"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_19"]}, {"name": "renewal_date", "type": "VARCHAR", "unique_name": "primecustomer.renewal_date", "is_flattened": null, "mapped_table": [61, "relation_20"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "subscription_addons", "type": "VARCHAR", "unique_name": "primecustomer.subscription_addons", "is_flattened": null, "mapped_table": [63, "relation_21"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": true, "mvd_separate_table_name": [63, "relation_21"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["primecustomer"], "select_frequency": 1, "select_all_tables": [[61, "relation_20"], [63, "relation_21"], [57, "relation_18"], [54, "relation_17"], [60, "relation_19"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "renewal_date", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 62, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.renewal_date", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer_id"]], [["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "subscription_addons"]]], "reference_key": [[["primecustomer_id", "INTEGER", "primecustomer_id"]], []], "reference_node": ["primecustomer"], "reference_table": ["relation_20"], "table_key_entities": null}, "name": "subscription_addons", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 63, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.subscription_addons", "is_composite": false, "is_flattened": false, "mapped_table": [63, "relation_21"], "relation_size": 239, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "businesscustomer_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_17"], "table_key_entities": ["businesscustomer"]}, "name": "BusinessCustomer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 64, "attributes": ["businesscustomer.company_name"], "node_cover": ["businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "company_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BusinessCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_18"], [54, "relation_17"], [60, "relation_19"]], "unique_name": "businesscustomer", "mapped_table": [54, "relation_17"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "businesscustomer_id", "pk_entity_name": "businesscustomer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_18"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_18"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_19"]}, {"name": "company_name", "type": "VARCHAR", "unique_name": "businesscustomer.company_name", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "businesscustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["businesscustomer"], "select_frequency": 1, "select_all_tables": [[54, "relation_17"], [57, "relation_18"], [60, "relation_19"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "company_name", "type": "ATTRIBUTE", "entity": "businesscustomer", "children": [], "sort_key": 65, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "businesscustomer.company_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_17"], "table_key_entities": ["employee"]}, "name": "Employee", "type": "ENTITY", "is_mvds": false, "children": ["corporateemployee", "supportagent", "fulfillmentassociate", "categorymanager"], "is_total": true, "sort_key": 66, "attributes": ["employee.employee_no"], "node_cover": ["employee", "corporateemployee", "fulfillmentassociate", "categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "employee_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Employee", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[54, "relation_17"], [57, "relation_18"]], "unique_name": "employee", "mapped_table": [54, "relation_17"], "parent_entity": "user", "relation_size": 600, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "employee_id", "pk_entity_name": "employee", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_18"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_18"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["employee"], "select_frequency": 2, "select_all_tables": [[54, "relation_17"], [57, "relation_18"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "employee_no", "type": "ATTRIBUTE", "entity": "employee", "children": [], "sort_key": 67, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "employee.employee_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_17"], "table_key_entities": ["corporateemployee"]}, "name": "CorporateEmployee", "type": "ENTITY", "is_mvds": false, "children": ["engineer"], "is_total": true, "sort_key": 68, "attributes": ["corporateemployee.office_site"], "node_cover": ["corporateemployee"], "entity_dict": {"total": true, "attributes": [{"attr_name": "office_site", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CorporateEmployee", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[68, "relation_22"], [57, "relation_18"]], "unique_name": "corporateemployee", "mapped_table": [68, "relation_22"], "parent_entity": "employee", "relation_size": 200, "attribute_list": [{"pk_name": "corporateemployee_id", "pk_type": "INTEGER", "pk_ER_name": "corporateemployee_id", "pk_entity_name": "corporateemployee", "pk_unique_name": "corporateemployee_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_18"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_18"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["corporateemployee"], "select_frequency": 1, "select_all_tables": [[68, "relation_22"], [57, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "office_site", "type": "ATTRIBUTE", "entity": "corporateemployee", "children": [], "sort_key": 69, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "corporateemployee.office_site", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "engineer_id"]], "reference_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_node": ["corporateemployee"], "reference_table": ["relation_22"], "table_key_entities": ["engineer"]}, "name": "Engineer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 70, "attributes": ["engineer.level"], "node_cover": ["engineer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "level", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Engineer", "entity_type": null, "parent_entity": "CorporateEmployee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[68, "relation_22"], [57, "relation_18"]], "unique_name": "engineer", "mapped_table": [68, "relation_22"], "parent_entity": "corporateemployee", "relation_size": 100, "attribute_list": [{"pk_name": "corporateemployee_id", "pk_type": "INTEGER", "pk_ER_name": "engineer_id", "pk_entity_name": "engineer", "pk_unique_name": "corporateemployee_id", "pk_reference_key_name": "corporateemployee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "corporateemployee_id", "pk_reference_node_unique_name": "corporateemployee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_18"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_18"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "level", "type": "VARCHAR", "unique_name": "engineer.level", "is_flattened": null, "mapped_table": [68, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "engineer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["engineer"], "select_frequency": 1, "select_all_tables": [[68, "relation_22"], [57, "relation_18"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "level", "type": "ATTRIBUTE", "entity": "engineer", "children": [], "sort_key": 71, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "engineer.level", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supportagent_id", "INTEGER", "supportagent_id", "supportagent_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_17"], "table_key_entities": ["supportagent"]}, "name": "SupportAgent", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 72, "attributes": ["supportagent.queue"], "node_cover": ["supportagent"], "entity_dict": {"total": true, "attributes": [{"attr_name": "queue", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupportAgent", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[54, "relation_17"], [57, "relation_18"], [72, "relation_23"]], "unique_name": "supportagent", "mapped_table": [72, "relation_23"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "supportagent_id", "pk_type": "INTEGER", "pk_ER_name": "supportagent_id", "pk_entity_name": "supportagent", "pk_unique_name": "supportagent_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_18"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_18"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "queue", "type": "VARCHAR", "unique_name": "supportagent.queue", "is_flattened": null, "mapped_table": [72, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supportagent", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["supportagent"], "select_frequency": 1, "select_all_tables": [[54, "relation_17"], [57, "relation_18"], [72, "relation_23"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "queue", "type": "ATTRIBUTE", "entity": "supportagent", "children": [], "sort_key": 73, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supportagent.queue", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_17"], "table_key_entities": ["fulfillmentassociate"]}, "name": "FulfillmentAssociate", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 74, "attributes": ["fulfillmentassociate.shift"], "node_cover": ["fulfillmentassociate"], "entity_dict": {"total": true, "attributes": [{"attr_name": "shift", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "FulfillmentAssociate", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_18"], [74, "relation_24"]], "unique_name": "fulfillmentassociate", "mapped_table": [74, "relation_24"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "fulfillmentassociate_id", "pk_type": "INTEGER", "pk_ER_name": "fulfillmentassociate_id", "pk_entity_name": "fulfillmentassociate", "pk_unique_name": "fulfillmentassociate_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_18"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_18"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shift", "type": "VARCHAR", "unique_name": "fulfillmentassociate.shift", "is_flattened": null, "mapped_table": [74, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "fulfillmentassociate", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["fulfillmentassociate"], "select_frequency": 1, "select_all_tables": [[57, "relation_18"], [74, "relation_24"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shift", "type": "ATTRIBUTE", "entity": "fulfillmentassociate", "children": [], "sort_key": 75, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "fulfillmentassociate.shift", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_17"], "table_key_entities": ["categorymanager"]}, "name": "CategoryManager", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 76, "attributes": ["categorymanager.department"], "node_cover": ["categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "department", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CategoryManager", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_18"], [76, "relation_25"]], "unique_name": "categorymanager", "mapped_table": [76, "relation_25"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "categorymanager_id", "pk_type": "INTEGER", "pk_ER_name": "categorymanager_id", "pk_entity_name": "categorymanager", "pk_unique_name": "categorymanager_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_18"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_18"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "department", "type": "VARCHAR", "unique_name": "categorymanager.department", "is_flattened": null, "mapped_table": [76, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "categorymanager", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["categorymanager"], "select_frequency": 1, "select_all_tables": [[57, "relation_18"], [76, "relation_25"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "department", "type": "ATTRIBUTE", "entity": "categorymanager", "children": [], "sort_key": 77, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "categorymanager.department", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["image_id", "INTEGER", "productimage.image_id", "image_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productimage"]]}, "name": "ProductImage", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 78, "attributes": ["productimage.image_id", "productimage.url", "productimage.alt_text", "productimage.sort_order"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "image_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "alt_text", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sort_order", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductImage", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "productimage", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "image_id", "pk_type": "INTEGER", "pk_ER_name": "image_id", "pk_entity_name": "productimage", "pk_unique_name": "productimage.image_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "url", "type": "VARCHAR", "unique_name": "productimage.url", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "alt_text", "type": "VARCHAR", "unique_name": "productimage.alt_text", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sort_order", "type": "INT", "unique_name": "productimage.sort_order", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["productimage", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [13, "relation_3"], [17, "relation_5"], [24, "relation_7"], [28, "relation_8"], [32, "relation_10"], [15, "relation_4"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "image_id", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 79, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.image_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "url", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 80, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "alt_text", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 81, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.alt_text", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sort_order", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 82, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.sort_order", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["variant_id", "INTEGER", "productvariant.variant_id", "variant_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productvariant"]]}, "name": "ProductVariant", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 83, "attributes": ["productvariant.variant_id", "productvariant.price_override", "productvariant.barcode", "productvariant.is_active_variant"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "variant_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "price_override", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "barcode", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active_variant", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductVariant", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[83, "relation_26"]], "unique_name": "productvariant", "mapped_table": [83, "relation_26"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "variant_id", "pk_type": "INTEGER", "pk_ER_name": "variant_id", "pk_entity_name": "productvariant", "pk_unique_name": "productvariant.variant_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "price_override", "type": "INT", "unique_name": "productvariant.price_override", "is_flattened": null, "mapped_table": [83, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "barcode", "type": "VARCHAR", "unique_name": "productvariant.barcode", "is_flattened": null, "mapped_table": [83, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active_variant", "type": "INT", "unique_name": "productvariant.is_active_variant", "is_flattened": null, "mapped_table": [83, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["productvariant", "product"], "select_frequency": 1, "select_all_tables": [[83, "relation_26"], [5, "temp_product"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "variant_id", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 84, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.variant_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price_override", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 85, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.price_override", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "barcode", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 86, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productvariant.barcode", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active_variant", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 87, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.is_active_variant", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["price_id", "INTEGER", "pricehistory.price_id", "price_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["pricehistory"]]}, "name": "PriceHistory", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 88, "attributes": ["pricehistory.price_id", "pricehistory.starts_at", "pricehistory.ends_at", "pricehistory.price"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "price_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PriceHistory", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "pricehistory", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "price_id", "pk_type": "INTEGER", "pk_ER_name": "price_id", "pk_entity_name": "pricehistory", "pk_unique_name": "pricehistory.price_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "pricehistory.starts_at", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "pricehistory.ends_at", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "price", "type": "INT", "unique_name": "pricehistory.price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["pricehistory", "product"], "select_frequency": 6, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [13, "relation_3"], [17, "relation_5"], [24, "relation_7"], [28, "relation_8"], [32, "relation_10"], [15, "relation_4"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "price_id", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 89, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 90, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 91, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 92, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tag_id", "INTEGER", "tag_id", "tag_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["tag"]}, "name": "Tag", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 93, "attributes": ["tag.tag_id", "tag.tag_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "tag_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tag_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tag", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[93, "relation_27"]], "unique_name": "tag", "mapped_table": [93, "relation_27"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "tag_name", "type": "VARCHAR", "unique_name": "tag.tag_name", "is_flattened": null, "mapped_table": [93, "relation_27"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tag", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["tag"], "select_frequency": 3, "select_all_tables": [[93, "relation_27"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "tag_id", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 94, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tag.tag_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tag_name", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 95, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "tag.tag_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "customer_id"]], [["address_id", "INTEGER", "address.address_id", "address_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_17"], "table_key_entities": [["customer"], ["address"]]}, "name": "Address", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 96, "attributes": ["address.address_id", "address.kind", "address.line1", "address.city", "address.state", "address.country", "address.postal_code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "address_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "kind", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "line1", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "city", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "state", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "country", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "postal_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Address", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[96, "relation_28"]], "unique_name": "address", "mapped_table": [96, "relation_28"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "address_id", "pk_type": "INTEGER", "pk_ER_name": "address_id", "pk_entity_name": "address", "pk_unique_name": "address.address_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "kind", "type": "VARCHAR", "unique_name": "address.kind", "is_flattened": null, "mapped_table": [96, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "line1", "type": "VARCHAR", "unique_name": "address.line1", "is_flattened": null, "mapped_table": [96, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "city", "type": "VARCHAR", "unique_name": "address.city", "is_flattened": null, "mapped_table": [96, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "state", "type": "VARCHAR", "unique_name": "address.state", "is_flattened": null, "mapped_table": [96, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "country", "type": "VARCHAR", "unique_name": "address.country", "is_flattened": null, "mapped_table": [96, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "postal_code", "type": "VARCHAR", "unique_name": "address.postal_code", "is_flattened": null, "mapped_table": [96, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["address", "customer"], "select_frequency": 4, "select_all_tables": [[96, "relation_28"], [54, "relation_17"], [60, "relation_19"], [57, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 13, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "address_id", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 97, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "address.address_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "kind", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 98, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.kind", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "line1", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 99, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.line1", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "city", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 100, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.city", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "state", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 101, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.state", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "country", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 102, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.country", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "postal_code", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 103, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.postal_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "customer_id"]], [["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_method_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_17"], "table_key_entities": [["customer"], ["paymentmethod"]]}, "name": "PaymentMethod", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 104, "attributes": ["paymentmethod.payment_method_id", "paymentmethod.brand", "paymentmethod.last4", "paymentmethod.exp_month", "paymentmethod.exp_year", "paymentmethod.is_default"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "payment_method_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "brand", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "last4", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_month", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_year", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_default", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PaymentMethod", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[104, "relation_29"]], "unique_name": "paymentmethod", "mapped_table": [104, "relation_29"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "brand", "type": "VARCHAR", "unique_name": "paymentmethod.brand", "is_flattened": null, "mapped_table": [104, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "last4", "type": "VARCHAR", "unique_name": "paymentmethod.last4", "is_flattened": null, "mapped_table": [104, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_month", "type": "INT", "unique_name": "paymentmethod.exp_month", "is_flattened": null, "mapped_table": [104, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_year", "type": "INT", "unique_name": "paymentmethod.exp_year", "is_flattened": null, "mapped_table": [104, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_default", "type": "VARCHAR", "unique_name": "paymentmethod.is_default", "is_flattened": null, "mapped_table": [104, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["paymentmethod", "customer"], "select_frequency": 0, "select_all_tables": [[54, "relation_17"], [60, "relation_19"], [57, "relation_18"], [104, "relation_29"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "payment_method_id", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 105, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.payment_method_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "brand", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 106, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.brand", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "last4", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 107, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.last4", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_month", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 108, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_month", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_year", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 109, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_year", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_default", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 110, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.is_default", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "customer_id"]], []], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_17"], "table_key_entities": [["customer"], ["cart"]]}, "name": "Cart", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 111, "attributes": ["cart.updated_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "updated_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Cart", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[111, "relation_30"]], "unique_name": "cart", "mapped_table": [111, "relation_30"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "customer"}, {"name": "updated_at", "type": "VARCHAR", "unique_name": "cart.updated_at", "is_flattened": null, "mapped_table": [111, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "cart", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["cart", "customer"], "select_frequency": 8, "select_all_tables": [[111, "relation_30"], [54, "relation_17"], [60, "relation_19"], [57, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "updated_at", "type": "ATTRIBUTE", "entity": "cart", "children": [], "sort_key": 112, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "cart.updated_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "customer_id"]], [["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_17"], "table_key_entities": [["customer"], ["wishlist"]]}, "name": "Wishlist", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 113, "attributes": ["wishlist.wishlist_id", "wishlist.wishlist_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "wishlist_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "wishlist_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Wishlist", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[113, "relation_31"]], "unique_name": "wishlist", "mapped_table": [113, "relation_31"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "wishlist_name", "type": "VARCHAR", "unique_name": "wishlist.wishlist_name", "is_flattened": null, "mapped_table": [113, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "wishlist", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["wishlist", "customer"], "select_frequency": 5, "select_all_tables": [[113, "relation_31"], [54, "relation_17"], [60, "relation_19"], [57, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "wishlist_id", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 114, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "wishlist.wishlist_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "wishlist_name", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 115, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "wishlist.wishlist_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "customer_id"]], [["review_id", "INTEGER", "review.review_id", "review_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_17"], "table_key_entities": [["customer"], ["review"]]}, "name": "Review", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 116, "attributes": ["review.review_id", "review.rating", "review.title", "review.body", "review.created_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "review_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "rating", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "title", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "body", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Review", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[116, "relation_32"]], "unique_name": "review", "mapped_table": [116, "relation_32"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "rating", "type": "INT", "unique_name": "review.rating", "is_flattened": null, "mapped_table": [116, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "title", "type": "VARCHAR", "unique_name": "review.title", "is_flattened": null, "mapped_table": [116, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "body", "type": "VARCHAR", "unique_name": "review.body", "is_flattened": null, "mapped_table": [116, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "review.created_at", "is_flattened": null, "mapped_table": [116, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["review", "customer"], "select_frequency": 7, "select_all_tables": [[54, "relation_17"], [116, "relation_32"], [60, "relation_19"], [57, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "review_id", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 117, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.review_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "rating", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 118, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "title", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 119, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.title", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "body", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 120, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.body", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 121, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["session_id", "INTEGER", "browsingsession.session_id", "session_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_17"], "table_key_entities": [["user"], ["browsingsession"]]}, "name": "BrowsingSession", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 122, "attributes": ["browsingsession.session_id", "browsingsession.started_at", "browsingsession.device"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "session_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "started_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "device", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BrowsingSession", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": false, "node_tables": [[122, "relation_33"]], "unique_name": "browsingsession", "mapped_table": [122, "relation_33"], "parent_entity": "user", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"pk_name": "session_id", "pk_type": "INTEGER", "pk_ER_name": "session_id", "pk_entity_name": "browsingsession", "pk_unique_name": "browsingsession.session_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "started_at", "type": "VARCHAR", "unique_name": "browsingsession.started_at", "is_flattened": null, "mapped_table": [122, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "device", "type": "VARCHAR", "unique_name": "browsingsession.device", "is_flattened": null, "mapped_table": [122, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["browsingsession", "user"], "select_frequency": 4, "select_all_tables": [[122, "relation_33"], [54, "temp_user"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "session_id", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 123, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "browsingsession.session_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "started_at", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 124, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.started_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "device", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 125, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.device", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["custorder"]}, "name": "CustOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 126, "attributes": ["custorder.custorder_id", "custorder.placed_at", "custorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "custorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "placed_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CustOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[126, "relation_34"]], "unique_name": "custorder", "mapped_table": [126, "relation_34"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "placed_at", "type": "VARCHAR", "unique_name": "custorder.placed_at", "is_flattened": null, "mapped_table": [126, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "custorder.status", "is_flattened": null, "mapped_table": [126, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["custorder"], "select_frequency": 10, "select_all_tables": [[126, "relation_34"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "custorder_id", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 127, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "custorder.custorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "placed_at", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 128, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.placed_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 129, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], []], "reference_node": ["custorder"], "reference_table": ["relation_34"], "table_key_entities": [["custorder"], ["shipment"]]}, "name": "Shipment", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 130, "attributes": ["shipment.shipment_id", "shipment.carrier", "shipment.tracking_no", "shipment.shipped_at", "shipment.delivered_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "shipment_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "carrier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tracking_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "shipped_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "delivered_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Shipment", "entity_type": null, "parent_entity": "CustOrder"}, "is_no_table": false, "is_subclass": false, "node_tables": [[130, "relation_35"]], "unique_name": "shipment", "mapped_table": [130, "relation_35"], "parent_entity": "custorder", "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": "custorder"}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier", "type": "VARCHAR", "unique_name": "shipment.carrier", "is_flattened": null, "mapped_table": [130, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "tracking_no", "type": "VARCHAR", "unique_name": "shipment.tracking_no", "is_flattened": null, "mapped_table": [130, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shipped_at", "type": "VARCHAR", "unique_name": "shipment.shipped_at", "is_flattened": null, "mapped_table": [130, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "delivered_at", "type": "VARCHAR", "unique_name": "shipment.delivered_at", "is_flattened": null, "mapped_table": [130, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["shipment", "custorder"], "select_frequency": 6, "select_all_tables": [[126, "relation_34"], [130, "relation_35"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shipment_id", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 131, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "shipment.shipment_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 132, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.carrier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tracking_no", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 133, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.tracking_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "shipped_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 134, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.shipped_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "delivered_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 135, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.delivered_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["promotion"]}, "name": "Promotion", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 136, "attributes": ["promotion.promo_id", "promotion.promo_name", "promotion.starts_at", "promotion.ends_at", "promotion.discount_type", "promotion.discount_value"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "promo_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "promo_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_value", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Promotion", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[136, "relation_36"]], "unique_name": "promotion", "mapped_table": [136, "relation_36"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "promo_name", "type": "VARCHAR", "unique_name": "promotion.promo_name", "is_flattened": null, "mapped_table": [136, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "promotion.starts_at", "is_flattened": null, "mapped_table": [136, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "promotion.ends_at", "is_flattened": null, "mapped_table": [136, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_type", "type": "VARCHAR", "unique_name": "promotion.discount_type", "is_flattened": null, "mapped_table": [136, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_value", "type": "VARCHAR", "unique_name": "promotion.discount_value", "is_flattened": null, "mapped_table": [136, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["promotion"], "select_frequency": 3, "select_all_tables": [[136, "relation_36"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "promo_id", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 137, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "promotion.promo_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "promo_name", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 138, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.promo_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 139, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 140, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_type", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 141, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_value", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 142, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_value", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], [["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"]], []], "reference_node": ["promotion"], "reference_table": ["relation_36"], "table_key_entities": [["promotion"], ["coupon"]]}, "name": "Coupon", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 143, "attributes": ["coupon.coupon_code", "coupon.max_uses", "coupon.per_user_limit"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "coupon_code", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "max_uses", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "per_user_limit", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Coupon", "entity_type": null, "parent_entity": "Promotion"}, "is_no_table": false, "is_subclass": false, "node_tables": [[143, "relation_37"]], "unique_name": "coupon", "mapped_table": [143, "relation_37"], "parent_entity": "promotion", "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": "promotion"}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "max_uses", "type": "INT", "unique_name": "coupon.max_uses", "is_flattened": null, "mapped_table": [143, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "per_user_limit", "type": "INT", "unique_name": "coupon.per_user_limit", "is_flattened": null, "mapped_table": [143, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["coupon", "promotion"], "select_frequency": 3, "select_all_tables": [[143, "relation_37"], [136, "relation_36"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "coupon_code", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 144, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.coupon_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "max_uses", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 145, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.max_uses", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "per_user_limit", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 146, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.per_user_limit", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["warehouse"]}, "name": "Warehouse", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 147, "attributes": ["warehouse.warehouse_id", "warehouse.warehouse_name", "warehouse.region"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "warehouse_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "warehouse_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "region", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Warehouse", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[147, "relation_38"]], "unique_name": "warehouse", "mapped_table": [147, "relation_38"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "warehouse_name", "type": "VARCHAR", "unique_name": "warehouse.warehouse_name", "is_flattened": null, "mapped_table": [147, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "region", "type": "VARCHAR", "unique_name": "warehouse.region", "is_flattened": null, "mapped_table": [147, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_38"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warehouse_id", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 148, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehouse.warehouse_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "warehouse_name", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 149, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.warehouse_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "region", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 150, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.region", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], [["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["warehouse_id", "INTEGER", "warehouse_id"]], []], "reference_node": ["warehouse"], "reference_table": ["relation_38"], "table_key_entities": [["warehouse"], ["warehousebin"]]}, "name": "WarehouseBin", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 151, "attributes": ["warehousebin.bin_id", "warehousebin.code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "bin_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WarehouseBin", "entity_type": null, "parent_entity": "Warehouse"}, "is_no_table": false, "is_subclass": false, "node_tables": [[151, "relation_39"]], "unique_name": "warehousebin", "mapped_table": [151, "relation_39"], "parent_entity": "warehouse", "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": "warehouse"}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "code", "type": "VARCHAR", "unique_name": "warehousebin.code", "is_flattened": null, "mapped_table": [151, "relation_39"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehousebin", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehousebin", "warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_38"], [151, "relation_39"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "bin_id", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 152, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehousebin.bin_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "code", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 153, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehousebin.code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["supplier"]}, "name": "Supplier", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 154, "attributes": ["supplier.supplier_id", "supplier.supplier_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "supplier_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "supplier_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Supplier", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[154, "relation_40"]], "unique_name": "supplier", "mapped_table": [154, "relation_40"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "supplier_name", "type": "VARCHAR", "unique_name": "supplier.supplier_name", "is_flattened": null, "mapped_table": [154, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supplier", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["supplier"], "select_frequency": 3, "select_all_tables": [[154, "relation_40"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "supplier_id", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 155, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "supplier.supplier_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "supplier_name", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 156, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supplier.supplier_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["contact_id", "INTEGER", "suppliercontact.contact_id", "contact_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], []], "reference_node": ["supplier"], "reference_table": ["relation_40"], "table_key_entities": [["supplier"], ["suppliercontact"]]}, "name": "SupplierContact", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 157, "attributes": ["suppliercontact.contact_id", "suppliercontact.email", "suppliercontact.phone"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "contact_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "phone", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupplierContact", "entity_type": null, "parent_entity": "Supplier"}, "is_no_table": false, "is_subclass": false, "node_tables": [[157, "relation_41"]], "unique_name": "suppliercontact", "mapped_table": [157, "relation_41"], "parent_entity": "supplier", "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": "supplier"}, {"pk_name": "contact_id", "pk_type": "INTEGER", "pk_ER_name": "contact_id", "pk_entity_name": "suppliercontact", "pk_unique_name": "suppliercontact.contact_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "suppliercontact.email", "is_flattened": null, "mapped_table": [157, "relation_41"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "phone", "type": "VARCHAR", "unique_name": "suppliercontact.phone", "is_flattened": null, "mapped_table": [157, "relation_41"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["suppliercontact", "supplier"], "select_frequency": 3, "select_all_tables": [[154, "relation_40"], [157, "relation_41"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "contact_id", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 158, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "suppliercontact.contact_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 159, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "phone", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 160, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.phone", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["purchaseorder"]}, "name": "PurchaseOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 161, "attributes": ["purchaseorder.purchaseorder_id", "purchaseorder.created_at", "purchaseorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "purchaseorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PurchaseOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[161, "relation_42"]], "unique_name": "purchaseorder", "mapped_table": [161, "relation_42"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "purchaseorder.created_at", "is_flattened": null, "mapped_table": [161, "relation_42"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "purchaseorder.status", "is_flattened": null, "mapped_table": [161, "relation_42"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["purchaseorder"], "select_frequency": 4, "select_all_tables": [[161, "relation_42"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "purchaseorder_id", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 162, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "purchaseorder.purchaseorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 163, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 164, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["courierpartner"]}, "name": "CourierPartner", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 165, "attributes": ["courierpartner.courierpartner_id", "courierpartner.carrier_code", "courierpartner.webhook_url"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "courierpartner_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "carrier_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "webhook_url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CourierPartner", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[165, "relation_43"]], "unique_name": "courierpartner", "mapped_table": [165, "relation_43"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier_code", "type": "VARCHAR", "unique_name": "courierpartner.carrier_code", "is_flattened": null, "mapped_table": [165, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "webhook_url", "type": "VARCHAR", "unique_name": "courierpartner.webhook_url", "is_flattened": null, "mapped_table": [165, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["courierpartner"], "select_frequency": 1, "select_all_tables": [[165, "relation_43"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "courierpartner_id", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 166, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "courierpartner.courierpartner_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier_code", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 167, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.carrier_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "webhook_url", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 168, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.webhook_url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["category_products_category_id", "INTEGER", "category_id", "category_products_category_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["category_id", "INTEGER", "category_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_0"], "table_key_entities": [["product"], ["category"]]}, "name": "category_products", "type": "RELATIONSHIP", "entity1": "category", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Category", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "category_products"}, "sort_key": 169, "attributes": [], "node_tables": [[169, "relation_44"]], "unique_name": "category_products", "mapped_table": [169, "relation_44"], "relation_size": 483, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "category_products_category_id", "pk_type": "INTEGER", "pk_ER_name": "category_products_category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": "category_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "category_id", "pk_reference_node_unique_name": null}], "insert_frequency": 483, "select_all_nodes": ["category_products", "category", "product"], "select_frequency": 1, "select_all_tables": [[169, "relation_44"], [1, "relation_0"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["tag_id", "INTEGER", "tag_id", "tag_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["tag_id", "INTEGER", "tag_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_27"], "table_key_entities": [["product"], ["tag"]]}, "name": "product_tags", "type": "RELATIONSHIP", "entity1": "product", "entity2": "tag", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Tag", "role": null, "total": true}, "attributes": [], "table_name": "product_tags"}, "sort_key": 170, "attributes": [], "node_tables": [[170, "relation_45"]], "unique_name": "product_tags", "mapped_table": [170, "relation_45"], "relation_size": 3172, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": "tag_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "tag_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3172, "select_all_nodes": ["product_tags", "product", "tag"], "select_frequency": 1, "select_all_tables": [[170, "relation_45"], [93, "relation_27"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["bought_together_product_product_id", "INTEGER", "product_id", "bought_together_product_product_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_1"], "table_key_entities": [["product"], ["product"]]}, "name": "bought_together", "type": "RELATIONSHIP", "entity1": "product", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": "product_id", "total": true}, "entity2": {"one": false, "name": "Product", "role": "bought_together_product_id", "total": true}, "attributes": [], "table_name": "bought_together"}, "sort_key": 171, "attributes": [], "node_tables": [[171, "relation_46"]], "unique_name": "bought_together", "mapped_table": [171, "relation_46"], "relation_size": 4151, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "bought_together_product_product_id", "pk_type": "INTEGER", "pk_ER_name": "bought_together_product_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 4151, "select_all_nodes": ["bought_together", "product", "product"], "select_frequency": 0, "select_all_tables": [[171, "relation_46"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": ["product_id", "bought_together_product_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "user_id", "customer_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_30", "relation_1"], "table_key_entities": [["cart"], ["product"]]}, "name": "cart_contains", "type": "RELATIONSHIP", "entity1": "cart", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Cart", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "cart_contains"}, "sort_key": 172, "attributes": [], "node_tables": [[172, "relation_47"]], "unique_name": "cart_contains", "mapped_table": [172, "relation_47"], "relation_size": 202, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "cart", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 202, "select_all_nodes": ["cart_contains", "cart", "customer", "product"], "select_frequency": 2, "select_all_tables": [[111, "relation_30"], [172, "relation_47"], [57, "relation_18"], [54, "relation_17"], [60, "relation_19"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "user_id", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_31", "relation_1"], "table_key_entities": [["wishlist"], ["product"]]}, "name": "wishlist_contains", "type": "RELATIONSHIP", "entity1": "wishlist", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Wishlist", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "wishlist_contains"}, "sort_key": 173, "attributes": [], "node_tables": [[173, "relation_48"]], "unique_name": "wishlist_contains", "mapped_table": [173, "relation_48"], "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "wishlist", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": null}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": "wishlist_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "wishlist.wishlist_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["wishlist_contains", "wishlist", "customer", "product"], "select_frequency": 2, "select_all_tables": [[113, "relation_31"], [173, "relation_48"], [57, "relation_18"], [54, "relation_17"], [60, "relation_19"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "user_id", "customer_id"], ["review_id", "INTEGER", "review.review_id", "review_id"]], [["reviews_product_id", "INTEGER", "product_id", "reviews_product_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"], ["review_id", "INTEGER", "review.review_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_32", "relation_1"], "table_key_entities": [["review"], ["product"]]}, "name": "reviews", "type": "RELATIONSHIP", "entity1": "product", "entity2": "review", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Review", "role": null, "total": true}, "attributes": [], "table_name": "reviews"}, "sort_key": 174, "attributes": [], "node_tables": [[174, "relation_49"]], "unique_name": "reviews", "mapped_table": [174, "relation_49"], "relation_size": 47, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "review", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": null}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": "review_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "review.review_id", "pk_reference_node_unique_name": null}, {"pk_name": "reviews_product_id", "pk_type": "INTEGER", "pk_ER_name": "reviews_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 47, "select_all_nodes": ["reviews", "product", "review", "customer"], "select_frequency": 1, "select_all_tables": [[57, "relation_18"], [54, "relation_17"], [116, "relation_32"], [60, "relation_19"], [174, "relation_49"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 18, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["customer_orders_customer_id", "INTEGER", "user_id", "customer_orders_customer_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["user_id", "INTEGER", "user_id"]]], "reference_node": [], "reference_table": ["relation_34", "relation_17"], "table_key_entities": [["custorder"], ["customer"]]}, "name": "customer_orders", "type": "RELATIONSHIP", "entity1": "customer", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Customer", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "customer_orders"}, "sort_key": 175, "attributes": [], "node_tables": [[175, "relation_50"]], "unique_name": "customer_orders", "mapped_table": [175, "relation_50"], "relation_size": 71, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "customer_orders_customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_orders_customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": null}], "insert_frequency": 71, "select_all_nodes": ["customer_orders", "customer", "custorder"], "select_frequency": 5, "select_all_tables": [[175, "relation_50"], [57, "relation_18"], [54, "relation_17"], [126, "relation_34"], [60, "relation_19"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_34", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_items", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_items"}, "sort_key": 176, "attributes": [], "node_tables": [[176, "relation_51"]], "unique_name": "order_items", "mapped_table": [176, "relation_51"], "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_items", "custorder", "product"], "select_frequency": 2, "select_all_tables": [[176, "relation_51"], [126, "relation_34"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["payment_order_customer_id", "INTEGER", "user_id", "payment_order_customer_id"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order_payment_method_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["user_id", "INTEGER", "user_id"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id"]]], "reference_node": [], "reference_table": ["relation_34", "relation_29"], "table_key_entities": [["custorder"], ["paymentmethod"]]}, "name": "payment_order", "type": "RELATIONSHIP", "entity1": "paymentmethod", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "PaymentMethod", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "payment_order"}, "sort_key": 177, "attributes": [], "node_tables": [[177, "relation_52"]], "unique_name": "payment_order", "mapped_table": [177, "relation_52"], "relation_size": 90, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_customer_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_customer_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": "payment_method_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "paymentmethod.payment_method_id", "pk_reference_node_unique_name": null}], "insert_frequency": 90, "select_all_nodes": ["payment_order", "paymentmethod", "customer", "custorder"], "select_frequency": 2, "select_all_tables": [[57, "relation_18"], [104, "relation_29"], [177, "relation_52"], [54, "relation_17"], [126, "relation_34"], [60, "relation_19"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_34", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_returns", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_returns"}, "sort_key": 178, "attributes": [], "node_tables": [[178, "relation_53"]], "unique_name": "order_returns", "mapped_table": [178, "relation_53"], "relation_size": 188, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 188, "select_all_nodes": ["order_returns", "custorder", "product"], "select_frequency": 1, "select_all_tables": [[126, "relation_34"], [178, "relation_53"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]], [["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons_custorder_id"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code"]], [["custorder_id", "INTEGER", "custorder_id"]]], "reference_node": [], "reference_table": ["relation_37", "relation_34"], "table_key_entities": [["coupon"], ["custorder"]]}, "name": "order_coupons", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "coupon", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Coupon", "role": null, "total": true}, "attributes": [], "table_name": "order_coupons"}, "sort_key": 179, "attributes": [], "node_tables": [[179, "relation_54"]], "unique_name": "order_coupons", "mapped_table": [179, "relation_54"], "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "coupon", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": null}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": "coupon_code", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "coupon.coupon_code", "pk_reference_node_unique_name": null}, {"pk_name": "order_coupons_custorder_id", "pk_type": "INTEGER", "pk_ER_name": "order_coupons_custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_coupons", "custorder", "coupon", "promotion"], "select_frequency": 1, "select_all_tables": [[143, "relation_37"], [126, "relation_34"], [179, "relation_54"], [136, "relation_36"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_39"], "table_key_entities": [["product"], ["warehousebin"]]}, "name": "stock", "type": "RELATIONSHIP", "entity1": "product", "entity2": "warehousebin", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "WarehouseBin", "role": null, "total": true}, "attributes": [], "table_name": "stock"}, "sort_key": 180, "attributes": [], "node_tables": [[180, "relation_55"]], "unique_name": "stock", "mapped_table": [180, "relation_55"], "relation_size": 3173, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": null}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": "bin_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehousebin.bin_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3173, "select_all_nodes": ["stock", "product", "warehousebin", "warehouse"], "select_frequency": 1, "select_all_tables": [[147, "relation_38"], [151, "relation_39"], [180, "relation_55"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_40", "relation_1"], "table_key_entities": [["supplier"], ["product"]]}, "name": "supplier_products", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "supplier_products"}, "sort_key": 181, "attributes": [], "node_tables": [[181, "relation_56"]], "unique_name": "supplier_products", "mapped_table": [181, "relation_56"], "relation_size": 159, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 159, "select_all_nodes": ["supplier_products", "supplier", "product"], "select_frequency": 1, "select_all_tables": [[181, "relation_56"], [154, "relation_40"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos_supplier_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["supplier_id", "INTEGER", "supplier_id"]]], "reference_node": [], "reference_table": ["relation_42", "relation_40"], "table_key_entities": [["purchaseorder"], ["supplier"]]}, "name": "supplier_pos", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "purchaseorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "attributes": [], "table_name": "supplier_pos"}, "sort_key": 182, "attributes": [], "node_tables": [[182, "relation_57"]], "unique_name": "supplier_pos", "mapped_table": [182, "relation_57"], "relation_size": 87, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "supplier_pos_supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_pos_supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}], "insert_frequency": 87, "select_all_nodes": ["supplier_pos", "supplier", "purchaseorder"], "select_frequency": 1, "select_all_tables": [[161, "relation_42"], [154, "relation_40"], [182, "relation_57"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 5, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_42", "relation_1"], "table_key_entities": [["purchaseorder"], ["product"]]}, "name": "po_items", "type": "RELATIONSHIP", "entity1": "purchaseorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "po_items"}, "sort_key": 183, "attributes": [], "node_tables": [[183, "relation_58"]], "unique_name": "po_items", "mapped_table": [183, "relation_58"], "relation_size": 156, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 156, "select_all_nodes": ["po_items", "purchaseorder", "product"], "select_frequency": 1, "select_all_tables": [[183, "relation_58"], [161, "relation_42"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]], [["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments_courierpartner_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id"]], [["courierpartner_id", "INTEGER", "courierpartner_id"]]], "reference_node": [], "reference_table": ["relation_35", "relation_43"], "table_key_entities": [["shipment"], ["courierpartner"]]}, "name": "courier_shipments", "type": "RELATIONSHIP", "entity1": "courierpartner", "entity2": "shipment", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CourierPartner", "role": null, "total": true}, "entity2": {"one": false, "name": "Shipment", "role": null, "total": true}, "attributes": [], "table_name": "courier_shipments"}, "sort_key": 184, "attributes": [], "node_tables": [[184, "relation_59"]], "unique_name": "courier_shipments", "mapped_table": [184, "relation_59"], "relation_size": 95, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "shipment", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": "shipment_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "shipment.shipment_id", "pk_reference_node_unique_name": null}, {"pk_name": "courier_shipments_courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courier_shipments_courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": "courierpartner_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "courierpartner_id", "pk_reference_node_unique_name": null}], "insert_frequency": 95, "select_all_nodes": ["courier_shipments", "courierpartner", "shipment", "custorder"], "select_frequency": 2, "select_all_tables": [[165, "relation_43"], [184, "relation_59"], [126, "relation_34"], [130, "relation_35"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 11, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_10", "relation_10"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundle_phones", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundle_phones"}, "sort_key": 185, "attributes": [], "node_tables": [[185, "relation_60"]], "unique_name": "bundle_phones", "mapped_table": [185, "relation_60"], "relation_size": 207, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundle_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundle_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 207, "select_all_nodes": ["bundle_phones", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[32, "relation_10"], [12, "relation_2"], [185, "relation_60"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "bundle_phone_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], [["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch_phone_id"]]], "reference_key": [[["smartwatch_id", "INTEGER", "smartwatch_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_8", "relation_10"], "table_key_entities": [["smartwatch"], ["phone"]]}, "name": "bundled_phone_smart_watch", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "smartwatch", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": null, "total": true}, "entity2": {"one": false, "name": "Smartwatch", "role": null, "total": true}, "attributes": [], "table_name": "bundled_phone_smart_watch"}, "sort_key": 186, "attributes": [], "node_tables": [[186, "relation_61"]], "unique_name": "bundled_phone_smart_watch", "mapped_table": [186, "relation_61"], "relation_size": 48, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "smartwatch_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "smartwatch_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundled_phone_smart_watch_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundled_phone_smart_watch_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 48, "select_all_nodes": ["bundled_phone_smart_watch", "phone", "smartwatch"], "select_frequency": 1, "select_all_tables": [[28, "relation_8"], [32, "relation_10"], [186, "relation_61"], [12, "relation_2"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "single_bundle_phone_bundled_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_10", "relation_10"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundled_phone", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "single_bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundled_phone"}, "sort_key": 187, "attributes": [], "node_tables": [[187, "relation_62"]], "unique_name": "bundled_phone", "mapped_table": [187, "relation_62"], "relation_size": 12, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "single_bundle_phone_bundled_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "single_bundle_phone_bundled_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 12, "select_all_nodes": ["bundled_phone", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[187, "relation_62"], [32, "relation_10"], [12, "relation_2"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "single_bundle_phone_id"], "node_type_for_partitioning_options": "1_N_relationship"}], "config": {"tag": "all_by_itself", "cart": "all_by_itself", "user": "all_by_itself", "media": "partially_by_itself", "phone": "all_by_itself", "stock": "all_by_itself", "camera": "partially_by_itself", "coupon": "all_by_itself", "laptop": "all_by_itself", "review": "all_by_itself", "tablet": "contained_in_parent", "address": "all_by_itself", "apparel": "partially_by_itself", "desktop": "partially_by_itself", "product": "all_by_itself", "reviews": "all_by_itself", "category": "all_by_itself", "clothing": "contained_in_parent", "computer": "contained_in_parent", "customer": "contained_in_parent", "employee": "contained_in_parent", "engineer": "contained_in_parent", "footwear": "contained_in_parent", "po_items": "all_by_itself", "shipment": "all_by_itself", "software": "partially_by_itself", "supplier": "all_by_itself", "wishlist": "all_by_itself", "appliance": "contained_in_parent", "custorder": "all_by_itself", "promotion": "all_by_itself", "warehouse": "all_by_itself", "smartwatch": "all_by_itself", "accessories": "partially_by_itself", "electronics": "all_by_itself", "menclothing": "partially_by_itself", "order_items": "all_by_itself", "pricehistory": "contained_in_parent", "product_tags": "all_by_itself", "productimage": "contained_in_parent", "supplier_pos": "all_by_itself", "supportagent": "partially_by_itself", "user.mv_user": "all_by_itself", "warehousebin": "all_by_itself", "bundle_phones": "all_by_itself", "bundled_phone": "all_by_itself", "cart_contains": "all_by_itself", "order_coupons": "all_by_itself", "order_returns": "all_by_itself", "payment_order": "all_by_itself", "paymentmethod": "all_by_itself", "primecustomer": "partially_by_itself", "purchaseorder": "all_by_itself", "womenclothing": "partially_by_itself", "courierpartner": "all_by_itself", "digitalproduct": "all_by_itself", "productvariant": "all_by_itself", "bought_together": "all_by_itself", "browsingsession": "all_by_itself", "categorymanager": "all_by_itself", "customer_orders": "all_by_itself", "physicalproduct": "all_by_itself", "suppliercontact": "all_by_itself", "businesscustomer": "contained_in_parent", "kitchenappliance": "contained_in_parent", "category_products": "all_by_itself", "corporateemployee": "all_by_itself", "courier_shipments": "all_by_itself", "supplier_products": "all_by_itself", "wishlist_contains": "all_by_itself", "customer.contact_no": "all_by_itself", "fulfillmentassociate": "all_by_itself", "product.mv_attributes": "all_by_itself", "bundled_phone_smart_watch": "all_by_itself", "primecustomer.subscription_addons": "all_by_itself"}}
\.


--
-- Data for Name: relation_0; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_0 (category_id, category_name, parent) FROM stdin;
1	kitchen	138
2	alone	583
3	arrive	868
4	thank	822
5	main	783
6	over	65
7	among	262
8	where	121
9	spend	508
10	pick	780
11	vote	461
12	year	484
13	crime	668
14	use	389
15	cost	808
16	create	215
17	my	97
18	here	500
19	institution	30
20	tree	915
21	popular	856
22	option	400
23	pass	444
24	me	623
25	nearly	781
26	family	786
27	character	3
28	add	713
29	science	457
30	order	273
31	business	739
32	concern	822
33	pass	235
34	parent	606
35	that	968
36	good	105
37	suddenly	924
38	effect	326
39	free	32
40	box	23
41	down	27
42	few	666
43	visit	555
44	television	10
45	concern	962
46	student	903
47	society	391
48	soon	703
49	none	222
50	could	993
51	already	433
52	first	744
53	human	30
54	purpose	541
55	choice	228
56	toward	783
57	cost	449
58	conference	962
59	next	508
60	PM	567
61	determine	239
62	here	354
63	individual	237
64	section	694
65	admit	225
66	something	780
67	end	471
68	data	976
69	ok	297
70	stuff	949
71	director	23
72	miss	427
73	product	858
74	finally	939
75	add	570
76	south	945
77	reason	658
78	scene	103
79	inside	191
80	tend	645
81	truth	742
82	say	881
83	financial	304
84	range	124
85	own	761
86	one	341
87	watch	918
88	watch	739
89	country	997
90	write	729
91	board	513
92	hope	959
93	age	991
94	American	433
95	interesting	520
96	arrive	850
97	staff	933
98	best	687
99	relationship	195
100	important	311
\.


--
-- Data for Name: relation_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_1 (product_id, sku, product_name, base_price, is_active, quantity, productimage, pricehistory) FROM stdin;
1	this	go	291	602	997	\N	\N
2	appear	pressure	867	964	518	\N	\N
3	third	hot	604	874	36	\N	\N
4	across	later	249	762	817	\N	\N
5	ball	about	425	681	178	\N	\N
6	occur	media	562	904	720	\N	\N
7	we	difficult	89	450	680	\N	\N
8	and	rule	798	168	534	\N	\N
9	accept	consider	380	502	751	\N	\N
10	politics	economic	481	45	316	\N	\N
11	doctor	city	663	175	173	\N	\N
12	surface	cost	13	790	205	\N	\N
14	suddenly	let	471	932	276	\N	\N
15	on	hair	393	803	878	\N	\N
16	tonight	upon	532	797	575	\N	\N
17	court	long	437	973	58	\N	\N
18	happen	sing	891	374	584	\N	\N
19	film	radio	964	517	424	\N	\N
20	character	meeting	833	366	425	\N	\N
21	yeah	collection	2	552	554	\N	\N
22	speech	respond	470	615	29	\N	\N
23	city	writer	651	182	564	\N	\N
24	figure	candidate	882	94	818	\N	\N
25	single	always	34	862	967	\N	\N
26	itself	range	86	889	18	\N	\N
27	a	peace	15	773	774	\N	\N
28	free	director	256	276	113	\N	\N
29	suggest	worker	353	298	72	\N	\N
30	sort	her	164	262	541	\N	\N
31	plan	join	673	280	664	\N	\N
32	thank	medical	466	720	330	\N	\N
33	energy	charge	486	117	25	\N	\N
34	doctor	recently	396	352	432	\N	\N
35	cause	teacher	265	112	260	\N	\N
36	offer	on	989	621	443	\N	\N
37	mind	show	231	19	407	\N	\N
38	cell	challenge	37	737	983	\N	\N
39	Mr	statement	457	722	519	\N	\N
40	since	speech	558	853	226	\N	\N
41	safe	system	229	537	665	\N	\N
42	car	industry	405	692	590	\N	\N
43	general	laugh	676	647	437	\N	\N
44	job	there	756	306	129	\N	\N
45	board	voice	897	49	314	\N	\N
46	nothing	usually	880	79	318	\N	\N
47	structure	weight	762	163	427	\N	\N
48	short	likely	134	9	575	\N	\N
49	others	majority	605	840	223	\N	\N
50	difficult	news	176	848	889	\N	\N
51	effort	stock	388	206	356	\N	\N
52	give	present	211	588	691	\N	\N
53	actually	door	606	199	505	\N	\N
54	table	account	961	682	400	\N	\N
57	anyone	get	19	161	206	\N	\N
58	responsibility	form	831	577	802	\N	\N
59	government	particularly	348	440	219	\N	\N
60	room	explain	691	99	858	\N	\N
61	picture	either	955	561	353	\N	\N
62	be	arrive	787	546	241	\N	\N
63	build	music	743	42	87	\N	\N
64	make	cup	174	171	933	\N	\N
65	will	business	275	778	341	\N	\N
66	woman	probably	377	347	349	\N	\N
67	how	plan	299	241	889	\N	\N
68	none	concern	139	594	565	\N	\N
69	marriage	onto	329	41	417	\N	\N
70	opportunity	father	390	887	808	\N	\N
71	agent	yourself	849	129	350	\N	\N
72	reason	role	630	602	801	\N	\N
73	piece	run	79	585	564	\N	\N
74	mother	team	580	84	976	\N	\N
76	respond	film	469	919	284	\N	\N
77	light	new	806	47	848	\N	\N
78	skill	wear	13	629	687	\N	\N
79	ok	month	94	424	118	\N	\N
80	prevent	while	193	246	805	\N	\N
81	goal	data	166	119	462	\N	\N
82	Republican	religious	698	248	163	\N	\N
83	country	sell	446	933	988	\N	\N
84	break	civil	826	994	556	\N	\N
85	project	total	564	260	729	\N	\N
86	foot	herself	323	103	213	\N	\N
87	speech	successful	41	28	11	\N	\N
88	thus	growth	744	611	328	\N	\N
89	no	deal	401	321	409	\N	\N
90	agree	sound	66	936	325	\N	\N
91	image	serve	115	257	221	\N	\N
92	move	beyond	678	365	266	\N	\N
93	window	finish	555	213	315	\N	\N
94	once	trip	253	370	84	\N	\N
95	industry	dream	92	772	459	\N	\N
96	drop	remember	668	589	659	\N	\N
97	usually	section	964	233	400	\N	\N
98	way	perform	43	336	192	\N	\N
99	address	next	812	868	593	\N	\N
100	practice	rest	252	343	104	\N	\N
55	none	tax	517	512	18	[{"url": "challenge", "alt_text": "become", "image_id": "473", "sort_order": "593"}]	\N
75	thought	effort	374	913	303	[{"url": "indeed", "alt_text": "little", "image_id": "52", "sort_order": "392"}]	\N
56	catch	expert	627	893	412	\N	[{"price": "197", "ends_at": "kid", "price_id": "760", "starts_at": "form"}]
13	standard	nor	415	527	353	\N	[{"price": "434", "ends_at": "both", "price_id": "347", "starts_at": "outside"}]
\.


--
-- Data for Name: relation_10; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_10 (phone_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, carrier_lock, productimage, pricehistory) FROM stdin;
1001	where	huge	293	852	853	how	56	southern	\N	\N
1002	would	culture	956	320	673	officer	131	method	\N	\N
1003	religious	social	69	736	161	find	275	left	\N	\N
1004	myself	open	784	830	134	hard	923	history	\N	\N
1005	black	good	198	945	783	purpose	617	age	\N	\N
1006	above	answer	427	222	801	chance	555	account	\N	\N
1007	relationship	discuss	869	502	178	stuff	823	exist	\N	\N
1008	practice	pay	511	249	209	purpose	699	perhaps	\N	\N
1009	support	brother	156	251	922	at	625	really	\N	\N
1010	audience	suffer	629	718	983	ask	562	individual	\N	\N
1011	position	popular	266	990	67	pretty	81	sound	\N	\N
1014	government	they	130	568	604	audience	815	movie	\N	\N
1015	similar	something	906	446	760	often	377	law	\N	\N
1016	hold	environment	230	455	692	similar	341	more	\N	\N
1017	explain	good	686	581	188	because	785	cold	\N	\N
1018	international	approach	940	50	377	various	166	unit	\N	\N
1019	leader	no	680	738	478	across	361	little	\N	\N
1020	different	throughout	160	469	206	today	549	list	\N	\N
1021	manager	fund	289	613	214	partner	624	participant	\N	\N
1022	drop	so	226	290	109	card	672	understand	\N	\N
1023	voice	police	233	867	435	worker	688	each	\N	\N
1024	stock	country	858	308	505	vote	385	whose	\N	\N
1025	magazine	face	209	652	716	wait	317	news	\N	\N
1026	movement	view	765	307	637	pick	439	clear	\N	\N
1027	sea	beautiful	13	777	468	face	430	green	\N	\N
1028	wrong	majority	250	664	108	per	518	recognize	\N	\N
1029	red	decade	53	757	392	current	956	indicate	\N	\N
1031	describe	media	497	378	563	ability	30	popular	\N	\N
1033	onto	movie	986	244	531	project	574	sure	\N	\N
1034	fall	hand	643	45	989	line	663	gas	\N	\N
1035	same	reality	859	324	37	plant	450	realize	\N	\N
1036	become	notice	862	720	183	impact	150	building	\N	\N
1037	can	notice	148	258	517	fish	709	hope	\N	\N
1038	voice	analysis	96	525	127	prove	714	full	\N	\N
1039	theory	center	970	393	859	race	376	research	\N	\N
1040	wife	quickly	216	39	543	realize	226	gun	\N	\N
1041	direction	human	987	493	977	push	173	inside	\N	\N
1042	professional	hour	243	202	543	individual	658	front	\N	\N
1043	at	represent	713	306	952	movie	846	design	\N	\N
1044	sister	very	860	824	791	choose	778	enter	\N	\N
1045	pretty	cut	926	929	219	road	127	hand	\N	\N
1046	citizen	sometimes	993	789	584	which	778	evening	\N	\N
1047	tax	western	38	639	323	mention	813	stay	\N	\N
1048	mind	believe	541	667	183	mission	554	end	\N	\N
1049	political	clear	83	420	739	executive	839	accept	\N	\N
1050	strategy	most	558	45	811	environment	328	wonder	\N	\N
1051	whether	whom	959	684	955	I	463	upon	\N	\N
1052	maintain	support	766	196	915	than	475	happy	\N	\N
1053	rise	performance	862	823	88	perhaps	375	skill	\N	\N
1055	example	drop	855	984	641	thus	98	student	\N	\N
1056	economy	tell	457	816	863	provide	315	man	\N	\N
1057	four	personal	717	178	307	follow	763	girl	\N	\N
1058	hope	real	338	934	341	major	991	election	\N	\N
1059	voice	rule	42	53	983	exist	725	room	\N	\N
1060	seek	population	187	616	474	back	990	who	\N	\N
1061	join	school	731	38	273	president	988	line	\N	\N
1062	section	character	68	736	656	actually	904	traditional	\N	\N
1063	today	under	933	886	13	staff	770	road	\N	\N
1064	care	against	424	356	277	create	40	call	\N	\N
1065	stuff	direction	396	114	313	painting	770	simple	\N	\N
1066	treat	government	255	235	531	face	581	ready	\N	\N
1067	bit	above	271	11	6	base	800	we	\N	\N
1068	represent	old	487	726	783	return	949	teacher	\N	\N
1070	everything	traditional	613	951	866	call	571	bad	\N	\N
1071	true	long	660	892	564	budget	136	feeling	\N	\N
1072	above	sure	411	143	626	listen	199	pass	\N	\N
1074	structure	bad	794	35	611	woman	280	list	\N	\N
1075	we	song	361	8	921	former	718	employee	\N	\N
1076	sense	either	856	9	66	home	965	stay	\N	\N
1077	paper	or	734	444	732	today	317	while	\N	\N
1078	ago	add	702	137	402	state	774	any	\N	\N
1079	set	if	369	803	459	once	300	will	\N	\N
1080	capital	site	906	487	191	let	9	air	\N	\N
1081	learn	produce	319	236	712	baby	512	think	\N	\N
1082	behind	need	62	803	8	conference	609	Mr	\N	\N
1083	thought	close	475	3	1000	measure	136	open	\N	\N
1084	already	PM	729	402	825	others	228	standard	\N	\N
1085	image	ready	608	873	865	star	188	former	\N	\N
1086	court	former	741	224	166	still	907	yet	\N	\N
1087	measure	just	925	940	339	ask	89	simple	\N	\N
1088	forget	right	125	955	823	enter	210	treatment	\N	\N
1089	seat	nothing	337	815	574	might	812	organization	\N	\N
1090	job	perform	795	723	85	population	586	her	\N	\N
1091	me	senior	365	966	915	night	186	three	\N	\N
1073	test	result	133	141	623	character	131	argue	\N	[{"price": "9", "ends_at": "check", "price_id": "626", "starts_at": "hair"}]
1092	why	ago	633	105	363	career	704	which	\N	\N
1093	see	threat	896	948	506	what	468	step	\N	\N
1094	where	must	442	224	65	cup	682	around	\N	\N
1095	sense	difference	650	258	337	again	860	these	\N	\N
1096	center	child	378	596	335	office	530	few	\N	\N
1097	sure	rule	636	614	667	different	195	despite	\N	\N
1098	suffer	stage	915	422	356	east	355	computer	\N	\N
1099	increase	growth	710	123	459	reach	9	five	\N	\N
1100	woman	stand	231	977	312	rich	685	increase	\N	\N
1013	institution	glass	581	481	444	child	950	type	[{"url": "rather", "alt_text": "skin", "image_id": "324", "sort_order": "67"}]	\N
1054	four	reality	11	292	217	nation	384	my	[{"url": "certainly", "alt_text": "me", "image_id": "341", "sort_order": "681"}]	\N
1030	toward	hit	855	18	527	idea	950	arrive	\N	[{"price": "260", "ends_at": "we", "price_id": "648", "starts_at": "prove"}]
1032	skill	second	950	661	609	minute	399	evening	\N	[{"price": "858", "ends_at": "Democrat", "price_id": "918", "starts_at": "action"}]
1069	reveal	tell	909	906	359	surface	978	become	\N	[{"price": "651", "ends_at": "up", "price_id": "285", "starts_at": "main"}]
1012	hand	what	365	541	286	ahead	673	next	\N	[{"price": "884", "ends_at": "fast", "price_id": "976", "starts_at": "finish"}]
\.


--
-- Data for Name: relation_11; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_11 (accessories_id, accessory_type) FROM stdin;
1101	past
1102	American
1103	begin
1104	wrong
1105	catch
1106	budget
1107	campaign
1108	allow
1109	far
1110	it
1111	course
1112	why
1113	single
1114	start
1115	performance
1116	choose
1117	material
1118	go
1119	believe
1120	project
1121	fill
1122	play
1123	whatever
1124	step
1125	letter
1126	hospital
1127	fact
1128	voice
1129	TV
1130	bed
1131	yeah
1132	church
1133	agree
1134	rate
1135	himself
1136	major
1137	support
1138	air
1139	huge
1140	forget
1141	suggest
1142	treat
1143	test
1144	team
1145	affect
1146	establish
1147	effect
1148	time
1149	computer
1150	need
1151	factor
1152	simple
1153	say
1154	leader
1155	company
1156	brother
1157	newspaper
1158	couple
1159	opportunity
1160	blue
1161	conference
1162	whatever
1163	enter
1164	pressure
1165	together
1166	right
1167	thing
1168	development
1169	its
1170	condition
1171	idea
1172	physical
1173	business
1174	charge
1175	soon
1176	together
1177	material
1178	foot
1179	carry
1180	dream
1181	ahead
1182	address
1183	song
1184	dark
1185	old
1186	record
1187	land
1188	reality
1189	create
1190	produce
1191	realize
1192	physical
1193	pay
1194	wife
1195	visit
1196	school
1197	from
1198	rock
1199	color
1200	toward
\.


--
-- Data for Name: relation_12; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_12 (apparel_id, size_system, material, role, sole_material) FROM stdin;
1401	respond	\N	apparel	\N
1402	time	\N	apparel	\N
1403	lot	\N	apparel	\N
1404	door	\N	apparel	\N
1405	light	\N	apparel	\N
1406	impact	\N	apparel	\N
1407	amount	\N	apparel	\N
1408	worry	\N	apparel	\N
1409	important	\N	apparel	\N
1410	avoid	\N	apparel	\N
1411	trial	\N	apparel	\N
1412	officer	\N	apparel	\N
1413	property	\N	apparel	\N
1414	now	\N	apparel	\N
1415	size	\N	apparel	\N
1416	animal	\N	apparel	\N
1417	cover	\N	apparel	\N
1418	difference	\N	apparel	\N
1419	sit	\N	apparel	\N
1420	still	\N	apparel	\N
1421	begin	\N	apparel	\N
1422	along	\N	apparel	\N
1423	east	\N	apparel	\N
1424	truth	\N	apparel	\N
1425	follow	\N	apparel	\N
1426	win	\N	apparel	\N
1427	east	\N	apparel	\N
1428	above	\N	apparel	\N
1429	author	\N	apparel	\N
1430	else	\N	apparel	\N
1431	democratic	\N	apparel	\N
1432	represent	\N	apparel	\N
1433	image	\N	apparel	\N
1434	draw	\N	apparel	\N
1435	bit	\N	apparel	\N
1436	their	\N	apparel	\N
1437	trip	\N	apparel	\N
1438	late	\N	apparel	\N
1439	practice	\N	apparel	\N
1440	wife	\N	apparel	\N
1441	since	\N	apparel	\N
1442	two	\N	apparel	\N
1443	draw	\N	apparel	\N
1444	put	\N	apparel	\N
1445	policy	\N	apparel	\N
1446	remember	\N	apparel	\N
1447	continue	\N	apparel	\N
1448	idea	\N	apparel	\N
1449	final	\N	apparel	\N
1450	long	\N	apparel	\N
1451	eight	\N	apparel	\N
1452	almost	\N	apparel	\N
1453	item	\N	apparel	\N
1454	room	\N	apparel	\N
1455	serve	\N	apparel	\N
1456	stuff	\N	apparel	\N
1457	likely	\N	apparel	\N
1458	series	\N	apparel	\N
1459	bring	\N	apparel	\N
1460	among	\N	apparel	\N
1461	phone	\N	apparel	\N
1462	threat	\N	apparel	\N
1463	impact	\N	apparel	\N
1464	short	\N	apparel	\N
1465	work	\N	apparel	\N
1466	his	\N	apparel	\N
1467	charge	\N	apparel	\N
1468	matter	\N	apparel	\N
1469	none	\N	apparel	\N
1470	mean	\N	apparel	\N
1471	entire	\N	apparel	\N
1472	American	\N	apparel	\N
1473	then	\N	apparel	\N
1474	none	\N	apparel	\N
1475	very	\N	apparel	\N
1476	others	\N	apparel	\N
1477	teacher	\N	apparel	\N
1478	win	\N	apparel	\N
1479	like	\N	apparel	\N
1480	hold	\N	apparel	\N
1481	for	\N	apparel	\N
1482	data	\N	apparel	\N
1483	tonight	\N	apparel	\N
1484	under	\N	apparel	\N
1485	entire	\N	apparel	\N
1486	type	\N	apparel	\N
1487	sell	\N	apparel	\N
1488	stop	\N	apparel	\N
1489	explain	\N	apparel	\N
1490	certainly	\N	apparel	\N
1491	measure	\N	apparel	\N
1492	music	\N	apparel	\N
1493	despite	\N	apparel	\N
1494	candidate	\N	apparel	\N
1495	land	\N	apparel	\N
1496	move	\N	apparel	\N
1497	head	\N	apparel	\N
1498	pay	\N	apparel	\N
1499	various	\N	apparel	\N
1500	nearly	\N	apparel	\N
1501	behavior	include	clothing	\N
1502	enter	huge	clothing	\N
1503	name	tend	clothing	\N
1504	participant	them	clothing	\N
1505	across	line	clothing	\N
1506	surface	wish	clothing	\N
1507	later	education	clothing	\N
1508	writer	stop	clothing	\N
1509	gas	own	clothing	\N
1510	physical	nice	clothing	\N
1511	collection	perhaps	clothing	\N
1512	person	information	clothing	\N
1513	yard	shoulder	clothing	\N
1514	find	realize	clothing	\N
1515	major	authority	clothing	\N
1516	trade	democratic	clothing	\N
1517	under	knowledge	clothing	\N
1518	quite	themselves	clothing	\N
1519	population	trade	clothing	\N
1520	particular	agency	clothing	\N
1521	cell	where	clothing	\N
1522	trial	indeed	clothing	\N
1523	fear	nature	clothing	\N
1524	view	choose	clothing	\N
1525	chair	chair	clothing	\N
1526	reduce	majority	clothing	\N
1527	throughout	support	clothing	\N
1528	improve	per	clothing	\N
1529	discover	local	clothing	\N
1530	history	heart	clothing	\N
1531	red	mouth	clothing	\N
1532	above	leg	clothing	\N
1533	stage	through	clothing	\N
1534	other	play	clothing	\N
1535	ground	space	clothing	\N
1536	serious	easy	clothing	\N
1537	task	himself	clothing	\N
1538	professional	look	clothing	\N
1539	girl	moment	clothing	\N
1540	police	management	clothing	\N
1541	senior	only	clothing	\N
1542	appear	Mrs	clothing	\N
1543	test	hit	clothing	\N
1544	if	him	clothing	\N
1545	eat	standard	clothing	\N
1546	material	sing	clothing	\N
1547	reason	property	clothing	\N
1548	show	take	clothing	\N
1549	face	certainly	clothing	\N
1550	these	majority	clothing	\N
1551	natural	once	clothing	\N
1552	control	no	clothing	\N
1553	administration	try	clothing	\N
1554	past	six	clothing	\N
1555	write	couple	clothing	\N
1556	industry	example	clothing	\N
1557	recognize	once	clothing	\N
1558	green	tax	clothing	\N
1559	receive	pressure	clothing	\N
1560	behavior	on	clothing	\N
1561	source	police	clothing	\N
1562	onto	language	clothing	\N
1563	indeed	than	clothing	\N
1564	clearly	understand	clothing	\N
1565	condition	situation	clothing	\N
1566	tonight	example	clothing	\N
1567	someone	down	clothing	\N
1568	stock	whom	clothing	\N
1569	include	environmental	clothing	\N
1570	center	her	clothing	\N
1571	dog	rock	clothing	\N
1572	step	agreement	clothing	\N
1573	themselves	single	clothing	\N
1574	fine	two	clothing	\N
1575	author	read	clothing	\N
1576	over	nature	clothing	\N
1577	film	cut	clothing	\N
1578	table	matter	clothing	\N
1579	you	discuss	clothing	\N
1580	anyone	under	clothing	\N
1581	many	myself	clothing	\N
1582	region	player	clothing	\N
1583	necessary	audience	clothing	\N
1584	brother	attention	clothing	\N
1585	show	point	clothing	\N
1586	school	throw	clothing	\N
1587	federal	thus	clothing	\N
1588	audience	rise	clothing	\N
1589	citizen	understand	clothing	\N
1590	involve	guy	clothing	\N
1591	offer	moment	clothing	\N
1592	nature	onto	clothing	\N
1593	very	expert	clothing	\N
1594	present	hotel	clothing	\N
1595	call	north	clothing	\N
1596	learn	out	clothing	\N
1597	particular	market	clothing	\N
1598	president	bill	clothing	\N
1599	especially	property	clothing	\N
1600	own	each	clothing	\N
1601	mission	win	menclothing	\N
1602	worker	follow	menclothing	\N
1603	able	man	menclothing	\N
1604	plant	citizen	menclothing	\N
1605	toward	as	menclothing	\N
1606	attack	expect	menclothing	\N
1607	and	song	menclothing	\N
1608	let	some	menclothing	\N
1609	run	on	menclothing	\N
1610	another	score	menclothing	\N
1611	concern	capital	menclothing	\N
1612	morning	particularly	menclothing	\N
1613	color	last	menclothing	\N
1614	parent	father	menclothing	\N
1615	difficult	smile	menclothing	\N
1616	accept	mother	menclothing	\N
1617	life	boy	menclothing	\N
1618	sister	skill	menclothing	\N
1619	could	series	menclothing	\N
1620	current	almost	menclothing	\N
1621	half	court	menclothing	\N
1622	number	research	menclothing	\N
1623	serious	table	menclothing	\N
1624	push	ever	menclothing	\N
1625	entire	though	menclothing	\N
1626	country	our	menclothing	\N
1627	back	describe	menclothing	\N
1628	assume	stand	menclothing	\N
1629	child	manager	menclothing	\N
1630	generation	key	menclothing	\N
1631	each	collection	menclothing	\N
1632	single	center	menclothing	\N
1633	itself	science	menclothing	\N
1634	type	effect	menclothing	\N
1635	him	blood	menclothing	\N
1636	same	whatever	menclothing	\N
1637	mission	natural	menclothing	\N
1638	pressure	relate	menclothing	\N
1639	tell	foreign	menclothing	\N
1640	law	none	menclothing	\N
1641	responsibility	increase	menclothing	\N
1642	idea	father	menclothing	\N
1643	finish	push	menclothing	\N
1644	value	why	menclothing	\N
1645	character	civil	menclothing	\N
1646	question	wrong	menclothing	\N
1647	reach	record	menclothing	\N
1648	evening	it	menclothing	\N
1649	term	visit	menclothing	\N
1650	suggest	her	menclothing	\N
1651	nature	range	menclothing	\N
1652	last	budget	menclothing	\N
1653	impact	science	menclothing	\N
1654	expert	good	menclothing	\N
1655	when	hour	menclothing	\N
1656	safe	oil	menclothing	\N
1657	medical	board	menclothing	\N
1658	argue	difficult	menclothing	\N
1659	series	television	menclothing	\N
1660	concern	politics	menclothing	\N
1661	be	attorney	menclothing	\N
1662	Democrat	bag	menclothing	\N
1663	bill	rate	menclothing	\N
1664	force	hit	menclothing	\N
1665	others	speak	menclothing	\N
1666	process	standard	menclothing	\N
1667	PM	event	menclothing	\N
1668	nor	gas	menclothing	\N
1669	baby	same	menclothing	\N
1670	nearly	lay	menclothing	\N
1671	order	door	menclothing	\N
1672	pretty	somebody	menclothing	\N
1673	on	general	menclothing	\N
1674	possible	area	menclothing	\N
1675	century	turn	menclothing	\N
1676	sing	air	menclothing	\N
1677	expert	agreement	menclothing	\N
1678	despite	available	menclothing	\N
1679	that	mouth	menclothing	\N
1680	fund	production	menclothing	\N
1681	mouth	exactly	menclothing	\N
1682	stuff	source	menclothing	\N
1683	challenge	perform	menclothing	\N
1684	politics	military	menclothing	\N
1685	attention	third	menclothing	\N
1686	send	human	menclothing	\N
1687	mean	method	menclothing	\N
1688	employee	meet	menclothing	\N
1689	activity	benefit	menclothing	\N
1690	science	after	menclothing	\N
1691	work	line	menclothing	\N
1692	audience	beyond	menclothing	\N
1693	reach	hold	menclothing	\N
1694	medical	want	menclothing	\N
1695	role	start	menclothing	\N
1696	affect	cover	menclothing	\N
1697	owner	my	menclothing	\N
1698	nothing	same	menclothing	\N
1699	agency	affect	menclothing	\N
1700	arm	society	menclothing	\N
1701	minute	research	womenclothing	\N
1702	cause	technology	womenclothing	\N
1703	fire	pay	womenclothing	\N
1704	option	usually	womenclothing	\N
1705	we	imagine	womenclothing	\N
1706	popular	woman	womenclothing	\N
1707	dream	page	womenclothing	\N
1708	practice	address	womenclothing	\N
1709	build	stay	womenclothing	\N
1710	least	impact	womenclothing	\N
1711	news	trip	womenclothing	\N
1712	learn	detail	womenclothing	\N
1713	other	eight	womenclothing	\N
1714	serve	wonder	womenclothing	\N
1715	produce	apply	womenclothing	\N
1716	road	whole	womenclothing	\N
1717	continue	everyone	womenclothing	\N
1718	scene	one	womenclothing	\N
1719	consider	success	womenclothing	\N
1720	reach	remember	womenclothing	\N
1721	across	cut	womenclothing	\N
1722	class	prepare	womenclothing	\N
1723	war	able	womenclothing	\N
1724	writer	provide	womenclothing	\N
1725	last	enjoy	womenclothing	\N
1726	war	north	womenclothing	\N
1727	behind	idea	womenclothing	\N
1728	many	contain	womenclothing	\N
1729	field	reveal	womenclothing	\N
1730	late	chance	womenclothing	\N
1731	although	include	womenclothing	\N
1732	lay	him	womenclothing	\N
1733	stand	benefit	womenclothing	\N
1734	world	research	womenclothing	\N
1735	claim	risk	womenclothing	\N
1736	author	guess	womenclothing	\N
1737	church	effort	womenclothing	\N
1738	feeling	a	womenclothing	\N
1739	loss	key	womenclothing	\N
1740	lot	state	womenclothing	\N
1741	author	give	womenclothing	\N
1742	need	lay	womenclothing	\N
1743	page	report	womenclothing	\N
1744	name	several	womenclothing	\N
1745	along	mouth	womenclothing	\N
1746	one	score	womenclothing	\N
1747	near	off	womenclothing	\N
1748	base	movement	womenclothing	\N
1749	rock	Congress	womenclothing	\N
1750	cup	yeah	womenclothing	\N
1751	staff	during	womenclothing	\N
1752	less	walk	womenclothing	\N
1753	we	degree	womenclothing	\N
1754	child	pick	womenclothing	\N
1755	hair	hotel	womenclothing	\N
1756	conference	take	womenclothing	\N
1757	many	spend	womenclothing	\N
1758	when	style	womenclothing	\N
1759	feel	imagine	womenclothing	\N
1760	step	build	womenclothing	\N
1761	character	part	womenclothing	\N
1762	church	spend	womenclothing	\N
1763	attention	staff	womenclothing	\N
1764	receive	work	womenclothing	\N
1765	hour	office	womenclothing	\N
1766	way	whose	womenclothing	\N
1767	western	professional	womenclothing	\N
1768	key	task	womenclothing	\N
1769	window	high	womenclothing	\N
1770	third	heart	womenclothing	\N
1771	there	power	womenclothing	\N
1772	significant	free	womenclothing	\N
1773	do	change	womenclothing	\N
1774	same	according	womenclothing	\N
1775	ten	everybody	womenclothing	\N
1776	responsibility	practice	womenclothing	\N
1777	under	place	womenclothing	\N
1778	organization	Democrat	womenclothing	\N
1779	indicate	know	womenclothing	\N
1780	former	hope	womenclothing	\N
1781	strong	lot	womenclothing	\N
1782	ahead	discover	womenclothing	\N
1783	stage	make	womenclothing	\N
1784	check	Republican	womenclothing	\N
1785	piece	do	womenclothing	\N
1786	present	big	womenclothing	\N
1787	see	thought	womenclothing	\N
1788	other	chair	womenclothing	\N
1789	mention	staff	womenclothing	\N
1790	skin	item	womenclothing	\N
1791	shake	kind	womenclothing	\N
1792	reflect	building	womenclothing	\N
1793	little	behavior	womenclothing	\N
1794	thank	institution	womenclothing	\N
1795	process	perform	womenclothing	\N
1796	officer	experience	womenclothing	\N
1797	whom	seat	womenclothing	\N
1798	house	growth	womenclothing	\N
1799	others	face	womenclothing	\N
1800	throughout	style	womenclothing	\N
1801	significant	\N	footwear	community
1802	girl	\N	footwear	clearly
1803	include	\N	footwear	everybody
1804	five	\N	footwear	on
1805	two	\N	footwear	figure
1806	drug	\N	footwear	discussion
1807	structure	\N	footwear	as
1808	teach	\N	footwear	sit
1809	themselves	\N	footwear	return
1810	nice	\N	footwear	officer
1811	customer	\N	footwear	on
1812	more	\N	footwear	up
1813	military	\N	footwear	community
1814	treat	\N	footwear	career
1815	decade	\N	footwear	sell
1816	leader	\N	footwear	table
1817	among	\N	footwear	training
1818	every	\N	footwear	each
1819	under	\N	footwear	security
1820	issue	\N	footwear	authority
1821	page	\N	footwear	leg
1822	system	\N	footwear	wind
1823	write	\N	footwear	party
1824	war	\N	footwear	on
1825	everybody	\N	footwear	one
1826	identify	\N	footwear	quality
1827	color	\N	footwear	end
1828	health	\N	footwear	central
1829	gun	\N	footwear	line
1830	pressure	\N	footwear	discussion
1831	letter	\N	footwear	score
1832	hand	\N	footwear	authority
1833	check	\N	footwear	think
1834	war	\N	footwear	age
1835	upon	\N	footwear	total
1836	still	\N	footwear	region
1837	notice	\N	footwear	yes
1838	onto	\N	footwear	certain
1839	six	\N	footwear	everyone
1840	stay	\N	footwear	treat
1841	relate	\N	footwear	to
1842	crime	\N	footwear	appear
1843	professor	\N	footwear	strategy
1844	travel	\N	footwear	rest
1845	live	\N	footwear	still
1846	throughout	\N	footwear	trade
1847	father	\N	footwear	maybe
1848	throw	\N	footwear	strategy
1849	civil	\N	footwear	change
1850	skill	\N	footwear	population
1851	her	\N	footwear	himself
1852	south	\N	footwear	once
1853	law	\N	footwear	much
1854	hit	\N	footwear	task
1855	win	\N	footwear	area
1856	owner	\N	footwear	cost
1857	high	\N	footwear	throw
1858	my	\N	footwear	pressure
1859	myself	\N	footwear	than
1860	of	\N	footwear	bar
1861	truth	\N	footwear	inside
1862	political	\N	footwear	amount
1863	laugh	\N	footwear	either
1864	when	\N	footwear	wish
1865	idea	\N	footwear	focus
1866	gas	\N	footwear	article
1867	where	\N	footwear	as
1868	through	\N	footwear	heavy
1869	agency	\N	footwear	bar
1870	allow	\N	footwear	hear
1871	east	\N	footwear	number
1872	low	\N	footwear	hard
1873	wife	\N	footwear	be
1874	forward	\N	footwear	police
1875	within	\N	footwear	message
1876	officer	\N	footwear	man
1877	mind	\N	footwear	sometimes
1878	order	\N	footwear	some
1879	easy	\N	footwear	debate
1880	sport	\N	footwear	brother
1881	drug	\N	footwear	nor
1882	station	\N	footwear	majority
1883	move	\N	footwear	girl
1884	somebody	\N	footwear	main
1885	himself	\N	footwear	job
1886	member	\N	footwear	rule
1887	poor	\N	footwear	south
1888	decade	\N	footwear	TV
1889	hand	\N	footwear	different
1890	put	\N	footwear	drive
1891	strategy	\N	footwear	consider
1892	should	\N	footwear	throughout
1893	nice	\N	footwear	these
1894	probably	\N	footwear	tough
1895	rock	\N	footwear	part
1896	behind	\N	footwear	news
1897	brother	\N	footwear	late
1898	fight	\N	footwear	assume
1899	the	\N	footwear	major
1900	our	\N	footwear	lead
\.


--
-- Data for Name: relation_13; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_13 (menclothing_id, fit_type_men) FROM stdin;
1601	add
1602	line
1603	own
1604	type
1605	scene
1606	husband
1607	better
1608	guess
1609	value
1610	our
1611	system
1612	successful
1613	point
1614	agree
1615	news
1616	girl
1617	the
1618	benefit
1619	management
1620	describe
1621	however
1622	official
1623	plan
1624	enter
1625	yes
1626	skill
1627	over
1628	plan
1629	difference
1630	commercial
1631	agent
1632	job
1633	if
1634	guy
1635	and
1636	relate
1637	relationship
1638	behavior
1639	recognize
1640	create
1641	eat
1642	eye
1643	of
1644	population
1645	perhaps
1646	room
1647	field
1648	just
1649	great
1650	himself
1651	catch
1652	clear
1653	so
1654	her
1655	production
1656	enough
1657	region
1658	figure
1659	vote
1660	behavior
1661	begin
1662	participant
1663	fund
1664	sister
1665	professional
1666	person
1667	dog
1668	police
1669	company
1670	bill
1671	shoulder
1672	member
1673	particularly
1674	walk
1675	similar
1676	evening
1677	daughter
1678	newspaper
1679	food
1680	big
1681	policy
1682	great
1683	however
1684	tree
1685	boy
1686	many
1687	read
1688	question
1689	plant
1690	have
1691	quality
1692	pattern
1693	suddenly
1694	page
1695	sort
1696	American
1697	yet
1698	end
1699	without
1700	now
\.


--
-- Data for Name: relation_14; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_14 (womenclothing_id, fit_type_women) FROM stdin;
1701	later
1702	see
1703	our
1704	effect
1705	just
1706	long
1707	trip
1708	make
1709	around
1710	writer
1711	mouth
1712	along
1713	measure
1714	method
1715	lawyer
1716	each
1717	not
1718	education
1719	draw
1720	production
1721	five
1722	cultural
1723	effort
1724	writer
1725	couple
1726	series
1727	company
1728	short
1729	age
1730	go
1731	late
1732	author
1733	everything
1734	heavy
1735	who
1736	understand
1737	just
1738	food
1739	story
1740	million
1741	truth
1742	red
1743	any
1744	meeting
1745	continue
1746	trip
1747	collection
1748	since
1749	born
1750	doctor
1751	heart
1752	court
1753	care
1754	among
1755	talk
1756	recognize
1757	these
1758	grow
1759	week
1760	themselves
1761	watch
1762	eye
1763	argue
1764	fire
1765	recognize
1766	together
1767	since
1768	admit
1769	road
1770	actually
1771	race
1772	her
1773	able
1774	information
1775	fall
1776	official
1777	know
1778	meeting
1779	season
1780	piece
1781	play
1782	you
1783	style
1784	travel
1785	trade
1786	stock
1787	one
1788	night
1789	might
1790	article
1791	size
1792	prove
1793	daughter
1794	tree
1795	scientist
1796	others
1797	of
1798	onto
1799	sell
1800	vote
\.


--
-- Data for Name: relation_15; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_15 (media_id, format) FROM stdin;
1901	talk
1902	alone
1903	manage
1904	prevent
1905	language
1906	health
1907	rest
1908	campaign
1909	artist
1910	reveal
1911	think
1912	rule
1913	bill
1914	pay
1915	best
1916	those
1917	study
1918	age
1919	find
1920	however
1921	hot
1922	social
1923	Democrat
1924	seem
1925	test
1926	some
1927	project
1928	agree
1929	never
1930	stay
1931	production
1932	tree
1933	trip
1934	it
1935	deep
1936	number
1937	seem
1938	impact
1939	reflect
1940	mother
1941	business
1942	act
1943	morning
1944	treat
1945	book
1946	none
1947	out
1948	wear
1949	safe
1950	everything
1951	get
1952	blood
1953	discover
1954	concern
1955	line
1956	parent
1957	report
1958	reflect
1959	central
1960	travel
1961	hear
1962	loss
1963	within
1964	talk
1965	wait
1966	away
1967	rate
1968	hospital
1969	remain
1970	first
1971	black
1972	nation
1973	current
1974	myself
1975	pull
1976	pull
1977	truth
1978	agent
1979	half
1980	brother
1981	thing
1982	energy
1983	someone
1984	community
1985	benefit
1986	analysis
1987	trade
1988	or
1989	school
1990	about
1991	where
1992	bag
1993	small
1994	growth
1995	real
1996	social
1997	paper
1998	black
1999	nature
2000	notice
\.


--
-- Data for Name: relation_16; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_16 (software_id, license_type) FROM stdin;
2001	head
2002	behavior
2003	seem
2004	pick
2005	tax
2006	meet
2007	foreign
2008	tend
2009	part
2010	detail
2011	third
2012	commercial
2013	kitchen
2014	become
2015	good
2016	without
2017	community
2018	sort
2019	this
2020	chance
2021	size
2022	get
2023	easy
2024	mission
2025	year
2026	appear
2027	star
2028	fund
2029	lawyer
2030	allow
2031	including
2032	whom
2033	close
2034	sure
2035	off
2036	really
2037	later
2038	full
2039	share
2040	after
2041	couple
2042	sister
2043	different
2044	spend
2045	enjoy
2046	believe
2047	could
2048	data
2049	involve
2050	rock
2051	never
2052	college
2053	executive
2054	according
2055	manage
2056	rich
2057	economic
2058	girl
2059	dream
2060	surface
2061	top
2062	goal
2063	mean
2064	around
2065	fall
2066	tough
2067	own
2068	drug
2069	street
2070	shoulder
2071	join
2072	today
2073	staff
2074	help
2075	ago
2076	expect
2077	officer
2078	style
2079	world
2080	drug
2081	across
2082	week
2083	past
2084	seven
2085	move
2086	country
2087	pressure
2088	trial
2089	treatment
2090	boy
2091	recently
2092	sometimes
2093	east
2094	since
2095	artist
2096	deal
2097	who
2098	market
2099	computer
2100	across
\.


--
-- Data for Name: relation_17; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_17 (user_id, email, password_hash, loyalty_tier, role, company_name, employee_no) FROM stdin;
1	francisco78@example.net	my	\N	user	\N	\N
2	dickersonelizabeth@example.com	system	\N	user	\N	\N
3	vrollins@example.com	music	\N	user	\N	\N
4	stanleymartin@example.com	more	\N	user	\N	\N
5	lryan@example.net	character	\N	user	\N	\N
6	wilsoncurtis@example.org	similar	\N	user	\N	\N
7	qparker@example.org	main	\N	user	\N	\N
8	austin51@example.org	choice	\N	user	\N	\N
9	robertduncan@example.com	idea	\N	user	\N	\N
10	ryan44@example.net	of	\N	user	\N	\N
11	phowe@example.com	of	\N	user	\N	\N
12	nboyer@example.com	commercial	\N	user	\N	\N
13	bryan29@example.net	relationship	\N	user	\N	\N
14	dscott@example.org	surface	\N	user	\N	\N
15	fergusonisabel@example.net	seven	\N	user	\N	\N
16	amy11@example.net	too	\N	user	\N	\N
17	sarah25@example.net	run	\N	user	\N	\N
18	wfinley@example.net	store	\N	user	\N	\N
19	thompsonlaura@example.org	item	\N	user	\N	\N
20	armstrongpatrick@example.com	movement	\N	user	\N	\N
21	alexschwartz@example.org	former	\N	user	\N	\N
22	pbailey@example.org	type	\N	user	\N	\N
23	wmoss@example.com	be	\N	user	\N	\N
24	yyoung@example.net	work	\N	user	\N	\N
25	russelljeremy@example.net	at	\N	user	\N	\N
26	christophermullins@example.net	political	\N	user	\N	\N
27	ustewart@example.com	order	\N	user	\N	\N
28	charles67@example.net	song	\N	user	\N	\N
29	villanuevakevin@example.com	daughter	\N	user	\N	\N
30	mike80@example.net	six	\N	user	\N	\N
31	wbennett@example.org	interesting	\N	user	\N	\N
32	colin46@example.net	analysis	\N	user	\N	\N
33	zgeorge@example.com	side	\N	user	\N	\N
34	ckerr@example.com	have	\N	user	\N	\N
35	reidcassie@example.org	interesting	\N	user	\N	\N
36	frances41@example.org	western	\N	user	\N	\N
37	donna71@example.org	century	\N	user	\N	\N
38	ivillanueva@example.org	bad	\N	user	\N	\N
39	tcook@example.org	newspaper	\N	user	\N	\N
40	williamswilliam@example.com	strategy	\N	user	\N	\N
41	clewis@example.com	phone	\N	user	\N	\N
42	halljoseph@example.org	city	\N	user	\N	\N
43	carol41@example.com	voice	\N	user	\N	\N
44	ghoward@example.net	record	\N	user	\N	\N
45	ule@example.org	not	\N	user	\N	\N
46	zjones@example.org	reveal	\N	user	\N	\N
47	richmondchristopher@example.org	nearly	\N	user	\N	\N
48	briansawyer@example.com	key	\N	user	\N	\N
49	hopkinseric@example.org	very	\N	user	\N	\N
50	david58@example.net	watch	\N	user	\N	\N
51	gbrown@example.org	tell	\N	user	\N	\N
52	richardskatherine@example.com	sell	\N	user	\N	\N
53	rachelhale@example.org	difficult	\N	user	\N	\N
54	john45@example.com	peace	\N	user	\N	\N
55	douglas87@example.net	arrive	\N	user	\N	\N
56	natasha41@example.net	task	\N	user	\N	\N
57	paul90@example.net	receive	\N	user	\N	\N
58	gutierrezlisa@example.com	performance	\N	user	\N	\N
59	andrea59@example.net	trial	\N	user	\N	\N
60	brownsamuel@example.org	professor	\N	user	\N	\N
61	kimberlyhodges@example.net	night	\N	user	\N	\N
62	udavis@example.org	around	\N	user	\N	\N
63	jacqueline95@example.org	purpose	\N	user	\N	\N
64	ashley76@example.org	big	\N	user	\N	\N
65	wendy19@example.net	phone	\N	user	\N	\N
66	freemanjustin@example.org	red	\N	user	\N	\N
67	jacqueline68@example.net	you	\N	user	\N	\N
68	lgreen@example.org	woman	\N	user	\N	\N
69	andersoneric@example.net	similar	\N	user	\N	\N
70	bclark@example.com	American	\N	user	\N	\N
71	mark20@example.net	left	\N	user	\N	\N
72	wongtyler@example.net	conference	\N	user	\N	\N
73	astone@example.com	hair	\N	user	\N	\N
74	mooreamy@example.org	key	\N	user	\N	\N
75	bryanwhite@example.com	notice	\N	user	\N	\N
76	jennifersmith@example.net	structure	\N	user	\N	\N
77	awatson@example.com	interest	\N	user	\N	\N
78	vmartinez@example.org	major	\N	user	\N	\N
79	brent56@example.com	treatment	\N	user	\N	\N
80	michelleday@example.com	reflect	\N	user	\N	\N
81	brad25@example.net	before	\N	user	\N	\N
82	norma16@example.net	not	\N	user	\N	\N
83	doyleashley@example.org	interest	\N	user	\N	\N
84	sandra50@example.org	control	\N	user	\N	\N
85	astephens@example.com	PM	\N	user	\N	\N
86	sloaneric@example.com	raise	\N	user	\N	\N
87	tracyscott@example.com	pretty	\N	user	\N	\N
88	reyesalyssa@example.net	no	\N	user	\N	\N
89	lloydrichard@example.com	watch	\N	user	\N	\N
90	scott94@example.com	hot	\N	user	\N	\N
91	greenjoshua@example.net	owner	\N	user	\N	\N
92	elizabethharris@example.net	table	\N	user	\N	\N
93	wnelson@example.org	represent	\N	user	\N	\N
94	yterrell@example.com	these	\N	user	\N	\N
95	mdunn@example.net	product	\N	user	\N	\N
96	owilliams@example.org	reveal	\N	user	\N	\N
97	ibarnes@example.net	of	\N	user	\N	\N
98	caitlynsmith@example.com	set	\N	user	\N	\N
99	mvega@example.com	himself	\N	user	\N	\N
100	tammy71@example.net	sing	\N	user	\N	\N
101	lnixon@example.org	food	admit	customer	\N	\N
102	haleheather@example.net	there	no	customer	\N	\N
103	whitney86@example.net	different	military	customer	\N	\N
104	ggarcia@example.org	discussion	item	customer	\N	\N
105	fowleranthony@example.net	force	spring	customer	\N	\N
106	angela80@example.net	west	which	customer	\N	\N
107	qlee@example.net	degree	program	customer	\N	\N
108	princevickie@example.net	meet	ever	customer	\N	\N
109	garciarachel@example.com	life	sell	customer	\N	\N
110	nicoleperry@example.net	again	out	customer	\N	\N
111	karen37@example.org	produce	fact	customer	\N	\N
112	jeffrey94@example.net	simple	huge	customer	\N	\N
113	tjordan@example.com	fast	thing	customer	\N	\N
114	jasonbryant@example.net	hard	act	customer	\N	\N
115	anthonysutton@example.com	benefit	play	customer	\N	\N
116	nicole02@example.net	read	pick	customer	\N	\N
117	michellemarshall@example.com	strong	local	customer	\N	\N
118	vhuber@example.net	level	read	customer	\N	\N
119	tlewis@example.net	traditional	themselves	customer	\N	\N
120	jasonrodriguez@example.net	art	choose	customer	\N	\N
121	jordanmartin@example.org	scene	behavior	customer	\N	\N
122	keithchristine@example.net	fire	sister	customer	\N	\N
123	jacob03@example.net	with	understand	customer	\N	\N
124	medinadonna@example.org	other	attack	customer	\N	\N
125	wilsonphilip@example.net	candidate	chair	customer	\N	\N
126	oreed@example.net	prepare	until	customer	\N	\N
127	mariacallahan@example.com	newspaper	my	customer	\N	\N
128	browncandice@example.net	film	task	customer	\N	\N
129	guy98@example.com	need	accept	customer	\N	\N
130	nicolelee@example.net	international	bill	customer	\N	\N
131	jennifer37@example.com	on	just	customer	\N	\N
132	jamesmegan@example.net	interview	school	customer	\N	\N
133	amandayork@example.com	central	certainly	customer	\N	\N
134	hernandezanna@example.net	particular	mention	customer	\N	\N
135	asanchez@example.net	billion	against	customer	\N	\N
136	millerbrittany@example.com	month	quality	customer	\N	\N
137	maciasleslie@example.org	scene	unit	customer	\N	\N
138	robert21@example.net	she	voice	customer	\N	\N
139	lewisrobert@example.org	list	process	customer	\N	\N
140	tiffany74@example.com	property	now	customer	\N	\N
141	murillokevin@example.org	agent	couple	customer	\N	\N
142	arnoldtonya@example.com	fill	office	customer	\N	\N
143	vburton@example.com	may	agent	customer	\N	\N
144	watkinsryan@example.com	form	management	customer	\N	\N
145	heatherjohnson@example.net	situation	pull	customer	\N	\N
146	jessicawhite@example.net	imagine	three	customer	\N	\N
147	donald78@example.org	sit	treatment	customer	\N	\N
148	meyeramanda@example.net	measure	care	customer	\N	\N
149	william05@example.net	suggest	happen	customer	\N	\N
150	medinasonia@example.com	direction	anyone	customer	\N	\N
151	mary06@example.com	need	reality	customer	\N	\N
152	matthew83@example.com	side	city	customer	\N	\N
153	pricekristen@example.org	travel	cold	customer	\N	\N
154	silvabethany@example.com	outside	important	customer	\N	\N
155	harrisashley@example.net	remember	foreign	customer	\N	\N
156	timothybryant@example.org	continue	and	customer	\N	\N
157	turnerjason@example.com	painting	agreement	customer	\N	\N
158	ritajohnson@example.com	action	news	customer	\N	\N
159	barreradustin@example.org	better	knowledge	customer	\N	\N
160	chrisbridges@example.org	business	offer	customer	\N	\N
161	jasmine06@example.com	sure	inside	customer	\N	\N
162	simmonssteve@example.com	worker	control	customer	\N	\N
163	christopherlee@example.org	stand	mind	customer	\N	\N
164	kevinsparks@example.com	act	whole	customer	\N	\N
165	chasemario@example.org	even	see	customer	\N	\N
166	tmartinez@example.com	cut	treat	customer	\N	\N
167	russell64@example.org	detail	trouble	customer	\N	\N
168	dknight@example.org	offer	outside	customer	\N	\N
169	chris80@example.org	tell	price	customer	\N	\N
170	mmiller@example.com	detail	man	customer	\N	\N
171	rogermunoz@example.com	chair	live	customer	\N	\N
172	jessica15@example.com	only	safe	customer	\N	\N
173	asanchez@example.org	project	wish	customer	\N	\N
174	fhopkins@example.net	Congress	course	customer	\N	\N
175	henry56@example.com	hard	test	customer	\N	\N
176	frankmatthews@example.net	public	as	customer	\N	\N
177	parkerjohn@example.net	man	science	customer	\N	\N
178	hboone@example.com	growth	way	customer	\N	\N
179	markbarrett@example.org	act	know	customer	\N	\N
180	maryjones@example.net	fish	according	customer	\N	\N
181	christensencolleen@example.net	strategy	already	customer	\N	\N
182	milesmarcus@example.net	maybe	expert	customer	\N	\N
183	reynoldsjonathan@example.net	win	not	customer	\N	\N
184	jgarcia@example.com	conference	be	customer	\N	\N
185	chelsea26@example.com	official	hold	customer	\N	\N
186	kmoody@example.com	my	character	customer	\N	\N
187	roberthouston@example.org	late	check	customer	\N	\N
188	joshuamurray@example.com	available	look	customer	\N	\N
189	marie06@example.com	by	us	customer	\N	\N
190	michael63@example.net	above	various	customer	\N	\N
191	ymcneil@example.net	so	employee	customer	\N	\N
192	wjohnson@example.org	majority	among	customer	\N	\N
193	kreilly@example.org	weight	politics	customer	\N	\N
194	hrandall@example.org	military	many	customer	\N	\N
195	xmorales@example.net	cut	action	customer	\N	\N
196	ysimon@example.net	discussion	method	customer	\N	\N
197	scott23@example.net	type	its	customer	\N	\N
198	blakesanders@example.net	where	manage	customer	\N	\N
199	wesley41@example.com	south	consider	customer	\N	\N
200	lisa68@example.com	admit	drug	customer	\N	\N
201	jcook@example.org	style	learn	primecustomer	\N	\N
202	xgarza@example.com	tend	research	primecustomer	\N	\N
203	jhenderson@example.org	economy	truth	primecustomer	\N	\N
204	dlawson@example.org	work	politics	primecustomer	\N	\N
205	robertthomas@example.com	central	determine	primecustomer	\N	\N
206	heidihill@example.org	nearly	white	primecustomer	\N	\N
207	hbuckley@example.net	cultural	very	primecustomer	\N	\N
208	ramseyveronica@example.org	time	fast	primecustomer	\N	\N
209	sarahlong@example.org	around	PM	primecustomer	\N	\N
210	robert71@example.org	kitchen	director	primecustomer	\N	\N
211	bwhite@example.org	behind	laugh	primecustomer	\N	\N
212	pattersondevon@example.com	student	upon	primecustomer	\N	\N
213	wjarvis@example.net	design	hot	primecustomer	\N	\N
214	beth63@example.org	show	shoulder	primecustomer	\N	\N
215	fwheeler@example.net	someone	sell	primecustomer	\N	\N
216	benjamin19@example.net	public	strategy	primecustomer	\N	\N
217	duranlaurie@example.com	heart	to	primecustomer	\N	\N
218	john29@example.com	within	its	primecustomer	\N	\N
219	william85@example.com	know	into	primecustomer	\N	\N
220	kelly60@example.org	future	rest	primecustomer	\N	\N
221	lhernandez@example.org	bit	the	primecustomer	\N	\N
222	thomashansen@example.org	science	detail	primecustomer	\N	\N
223	matthew57@example.net	eight	true	primecustomer	\N	\N
224	jasonwells@example.org	compare	still	primecustomer	\N	\N
225	becktina@example.com	outside	none	primecustomer	\N	\N
226	jillwhite@example.net	positive	car	primecustomer	\N	\N
227	qwebb@example.org	black	important	primecustomer	\N	\N
228	bradleyjeffrey@example.net	or	old	primecustomer	\N	\N
229	fischermichelle@example.com	continue	consumer	primecustomer	\N	\N
230	jessicawalker@example.com	usually	window	primecustomer	\N	\N
231	floresmadison@example.com	stage	prevent	primecustomer	\N	\N
232	austin65@example.org	how	Democrat	primecustomer	\N	\N
233	iware@example.net	truth	recently	primecustomer	\N	\N
234	jessica38@example.com	up	common	primecustomer	\N	\N
235	curtiswalker@example.com	reflect	lawyer	primecustomer	\N	\N
236	jensenvanessa@example.net	worry	senior	primecustomer	\N	\N
237	shawn36@example.org	skill	investment	primecustomer	\N	\N
238	zacharynixon@example.net	gun	accept	primecustomer	\N	\N
239	priscillaadams@example.org	network	director	primecustomer	\N	\N
240	kristina33@example.org	you	treatment	primecustomer	\N	\N
241	annacameron@example.com	experience	they	primecustomer	\N	\N
242	alexgonzalez@example.org	care	while	primecustomer	\N	\N
243	morriskelly@example.com	own	onto	primecustomer	\N	\N
244	ugrant@example.com	choose	low	primecustomer	\N	\N
245	ellen68@example.org	live	billion	primecustomer	\N	\N
246	jonesandrew@example.org	cell	as	primecustomer	\N	\N
247	chanchristopher@example.com	assume	present	primecustomer	\N	\N
248	williambradshaw@example.org	tree	hit	primecustomer	\N	\N
249	jasongarcia@example.net	sea	history	primecustomer	\N	\N
250	along@example.org	door	natural	primecustomer	\N	\N
251	brucehogan@example.org	increase	bill	primecustomer	\N	\N
252	potterbrenda@example.net	truth	within	primecustomer	\N	\N
253	vincent74@example.org	vote	worry	primecustomer	\N	\N
254	robert01@example.org	much	area	primecustomer	\N	\N
255	dominguezseth@example.com	find	knowledge	primecustomer	\N	\N
256	campbelljustin@example.com	large	as	primecustomer	\N	\N
257	ryanbianca@example.com	lead	middle	primecustomer	\N	\N
258	carl09@example.net	born	behind	primecustomer	\N	\N
259	garrettwilson@example.net	or	ground	primecustomer	\N	\N
260	kayla03@example.com	southern	fear	primecustomer	\N	\N
261	harry26@example.net	relate	effort	primecustomer	\N	\N
262	bhardin@example.net	film	various	primecustomer	\N	\N
263	hcarter@example.net	decide	individual	primecustomer	\N	\N
264	ginamorris@example.com	several	agent	primecustomer	\N	\N
265	jenniferhughes@example.net	avoid	guess	primecustomer	\N	\N
266	lchambers@example.com	gas	sit	primecustomer	\N	\N
267	tammycosta@example.org	while	turn	primecustomer	\N	\N
268	janelynch@example.com	notice	center	primecustomer	\N	\N
269	fharper@example.org	pass	home	primecustomer	\N	\N
270	jjackson@example.net	agreement	close	primecustomer	\N	\N
271	fisherjennifer@example.org	center	provide	primecustomer	\N	\N
272	kenneth29@example.org	reflect	start	primecustomer	\N	\N
273	cassandra45@example.org	value	hour	primecustomer	\N	\N
274	tsharp@example.net	performance	summer	primecustomer	\N	\N
275	nicole62@example.org	return	page	primecustomer	\N	\N
276	joshuamartinez@example.com	bag	second	primecustomer	\N	\N
277	emilyrodriguez@example.net	create	enter	primecustomer	\N	\N
278	edwinmorales@example.com	bit	save	primecustomer	\N	\N
279	douglasshawn@example.net	know	them	primecustomer	\N	\N
280	jaredgeorge@example.com	leave	agency	primecustomer	\N	\N
281	casey21@example.com	daughter	must	primecustomer	\N	\N
282	martin87@example.org	account	work	primecustomer	\N	\N
283	efrancis@example.org	day	try	primecustomer	\N	\N
284	raymondroberts@example.com	weight	its	primecustomer	\N	\N
285	osalazar@example.org	base	raise	primecustomer	\N	\N
286	vjones@example.net	air	test	primecustomer	\N	\N
287	aarongibson@example.com	him	wife	primecustomer	\N	\N
288	varnold@example.net	authority	arrive	primecustomer	\N	\N
289	bjackson@example.com	by	staff	primecustomer	\N	\N
290	cody44@example.com	part	for	primecustomer	\N	\N
291	mdennis@example.com	send	record	primecustomer	\N	\N
292	mendezchristina@example.net	yourself	movement	primecustomer	\N	\N
293	garciachristy@example.net	beat	mission	primecustomer	\N	\N
294	uanderson@example.com	nation	manager	primecustomer	\N	\N
295	alyssamora@example.net	charge	power	primecustomer	\N	\N
296	cthompson@example.com	then	between	primecustomer	\N	\N
297	malik72@example.com	serious	fear	primecustomer	\N	\N
298	jasmine25@example.org	nature	spend	primecustomer	\N	\N
299	shannon95@example.net	however	wrong	primecustomer	\N	\N
300	nlong@example.com	maintain	message	primecustomer	\N	\N
301	samueljefferson@example.com	seem	either	businesscustomer	language	\N
302	turnervictoria@example.com	range	western	businesscustomer	same	\N
303	wellssara@example.com	paper	name	businesscustomer	industry	\N
304	fbridges@example.com	country	face	businesscustomer	situation	\N
305	andersonluis@example.net	during	future	businesscustomer	their	\N
306	fbaker@example.com	many	miss	businesscustomer	film	\N
307	kgonzalez@example.com	later	product	businesscustomer	me	\N
308	xcherry@example.org	stand	less	businesscustomer	guess	\N
309	stevensparks@example.com	agreement	officer	businesscustomer	note	\N
310	zsanchez@example.com	service	since	businesscustomer	walk	\N
311	bushrebecca@example.com	I	debate	businesscustomer	carry	\N
312	lsimon@example.org	simply	away	businesscustomer	election	\N
313	ubernard@example.org	forget	expect	businesscustomer	vote	\N
314	dianastewart@example.com	him	stop	businesscustomer	today	\N
315	michelle55@example.com	city	visit	businesscustomer	firm	\N
316	tsmith@example.net	such	story	businesscustomer	agree	\N
317	brittanywilson@example.org	gun	hope	businesscustomer	senior	\N
318	pturner@example.net	himself	short	businesscustomer	table	\N
319	alvarezstephanie@example.net	up	world	businesscustomer	reveal	\N
320	xpena@example.net	learn	role	businesscustomer	yeah	\N
321	alexandermclaughlin@example.com	sit	watch	businesscustomer	item	\N
322	djohnson@example.com	the	end	businesscustomer	per	\N
323	vbrown@example.net	expect	government	businesscustomer	play	\N
324	walkergary@example.org	population	team	businesscustomer	admit	\N
325	amy33@example.net	himself	possible	businesscustomer	beautiful	\N
326	harriscaitlin@example.net	religious	approach	businesscustomer	glass	\N
327	deborah02@example.com	what	scientist	businesscustomer	mean	\N
328	james38@example.net	understand	TV	businesscustomer	figure	\N
329	maxwelljulie@example.com	enter	you	businesscustomer	teach	\N
330	elizabeth33@example.com	before	painting	businesscustomer	give	\N
331	jennifer29@example.com	these	Republican	businesscustomer	example	\N
332	maryblair@example.net	clearly	player	businesscustomer	field	\N
333	vthomas@example.org	unit	agreement	businesscustomer	mouth	\N
334	wardkimberly@example.net	cover	out	businesscustomer	story	\N
335	ddavis@example.org	risk	common	businesscustomer	Mrs	\N
336	franklinalan@example.com	age	office	businesscustomer	responsibility	\N
337	ckelly@example.com	even	easy	businesscustomer	us	\N
338	sarabailey@example.net	yourself	day	businesscustomer	young	\N
339	samanthafox@example.org	sort	church	businesscustomer	her	\N
340	wtaylor@example.org	movement	action	businesscustomer	summer	\N
341	sancheztrevor@example.net	soldier	statement	businesscustomer	between	\N
342	lisa91@example.com	career	upon	businesscustomer	learn	\N
343	pmorales@example.net	dream	than	businesscustomer	movie	\N
344	thomasshaw@example.com	foot	full	businesscustomer	well	\N
345	steven97@example.org	group	whatever	businesscustomer	fire	\N
346	robert07@example.org	usually	fly	businesscustomer	money	\N
347	robertwilliams@example.com	can	grow	businesscustomer	fly	\N
348	steven24@example.com	oil	care	businesscustomer	official	\N
349	marcfreeman@example.org	nice	account	businesscustomer	for	\N
350	jorgekrause@example.org	current	only	businesscustomer	amount	\N
351	xbowman@example.com	view	time	businesscustomer	side	\N
352	xtaylor@example.net	mouth	community	businesscustomer	various	\N
353	brian61@example.org	truth	information	businesscustomer	ask	\N
354	douglashughes@example.net	new	instead	businesscustomer	science	\N
355	martin34@example.net	culture	word	businesscustomer	usually	\N
356	jacquelinenguyen@example.org	director	society	businesscustomer	those	\N
357	michael46@example.com	any	oil	businesscustomer	drive	\N
358	griffincarmen@example.org	maintain	throughout	businesscustomer	tough	\N
359	valeriewilliams@example.org	alone	peace	businesscustomer	enjoy	\N
360	perkinsdana@example.org	draw	and	businesscustomer	box	\N
361	sanchezjudy@example.org	none	draw	businesscustomer	return	\N
362	colevincent@example.com	authority	south	businesscustomer	never	\N
363	christian34@example.net	tough	author	businesscustomer	energy	\N
364	chenpeter@example.com	allow	wear	businesscustomer	support	\N
365	michael27@example.org	perform	model	businesscustomer	consider	\N
366	zstevens@example.net	service	seek	businesscustomer	lose	\N
367	megan92@example.org	one	garden	businesscustomer	check	\N
368	wharris@example.net	Congress	still	businesscustomer	record	\N
369	kingtheresa@example.org	case	trade	businesscustomer	certainly	\N
370	hbray@example.org	plant	morning	businesscustomer	hear	\N
371	ywiley@example.net	language	animal	businesscustomer	trip	\N
372	nancyanderson@example.net	reach	president	businesscustomer	first	\N
373	browneduardo@example.org	seven	simply	businesscustomer	fall	\N
374	hensleychristopher@example.org	people	bad	businesscustomer	pattern	\N
375	brittneywatkins@example.org	bad	see	businesscustomer	moment	\N
376	leegary@example.com	answer	yourself	businesscustomer	world	\N
377	johnmann@example.net	which	agree	businesscustomer	small	\N
378	duffyalison@example.com	oil	contain	businesscustomer	fight	\N
379	petersonphillip@example.net	example	she	businesscustomer	best	\N
380	nelsonkatie@example.net	tonight	wish	businesscustomer	question	\N
381	harrisrichard@example.com	management	commercial	businesscustomer	change	\N
382	lopezsamuel@example.net	case	really	businesscustomer	have	\N
383	elizabethwhite@example.net	try	between	businesscustomer	ago	\N
384	vturner@example.net	upon	before	businesscustomer	compare	\N
385	qchen@example.net	religious	itself	businesscustomer	agency	\N
386	christopherphillips@example.org	radio	amount	businesscustomer	job	\N
387	carmen27@example.com	easy	treat	businesscustomer	real	\N
388	xwalters@example.org	five	stand	businesscustomer	early	\N
389	christinasmith@example.net	drug	memory	businesscustomer	choice	\N
390	melissaparker@example.org	fear	fire	businesscustomer	parent	\N
391	jessica17@example.net	place	manager	businesscustomer	high	\N
392	xmcdowell@example.net	choose	outside	businesscustomer	institution	\N
393	whitethomas@example.org	PM	form	businesscustomer	old	\N
394	andersonchad@example.net	brother	computer	businesscustomer	none	\N
395	emily22@example.org	raise	once	businesscustomer	share	\N
396	mannbrittany@example.com	goal	expert	businesscustomer	box	\N
397	sandymccoy@example.org	body	free	businesscustomer	education	\N
398	jessicawest@example.com	pull	nation	businesscustomer	total	\N
399	stevenfarrell@example.com	clearly	street	businesscustomer	him	\N
400	aaron09@example.org	difference	information	businesscustomer	create	\N
401	johnbarnett@example.org	enjoy	\N	employee	\N	include
402	pauljackson@example.net	successful	\N	employee	\N	unit
403	lisa07@example.org	recognize	\N	employee	\N	second
404	dawsonmalik@example.com	adult	\N	employee	\N	color
405	ryan46@example.org	learn	\N	employee	\N	environment
406	eric20@example.com	today	\N	employee	\N	computer
407	johnroberts@example.com	quickly	\N	employee	\N	language
408	kevincooke@example.org	community	\N	employee	\N	training
409	tara74@example.org	customer	\N	employee	\N	management
410	bhunt@example.org	cost	\N	employee	\N	need
411	knightjillian@example.net	far	\N	employee	\N	perhaps
412	sherriparks@example.org	notice	\N	employee	\N	expect
413	todd12@example.net	somebody	\N	employee	\N	when
414	fcruz@example.org	learn	\N	employee	\N	Mr
415	jason48@example.com	language	\N	employee	\N	true
416	timothy03@example.org	heart	\N	employee	\N	name
417	rwilson@example.net	music	\N	employee	\N	poor
418	flogan@example.com	mouth	\N	employee	\N	everybody
419	yodermarvin@example.org	director	\N	employee	\N	answer
420	iblanchard@example.net	the	\N	employee	\N	white
421	browndavid@example.org	role	\N	employee	\N	church
422	thall@example.org	between	\N	employee	\N	nothing
423	colemanrobert@example.net	dream	\N	employee	\N	no
424	vjoyce@example.org	car	\N	employee	\N	official
425	phillipfernandez@example.net	friend	\N	employee	\N	decade
426	kriley@example.org	contain	\N	employee	\N	all
427	lmarshall@example.org	year	\N	employee	\N	wish
428	mharris@example.net	only	\N	employee	\N	expect
429	alexandra73@example.com	land	\N	employee	\N	sense
430	joseph84@example.org	hair	\N	employee	\N	least
431	shannon00@example.com	president	\N	employee	\N	all
432	nlee@example.net	detail	\N	employee	\N	week
433	willie11@example.org	evidence	\N	employee	\N	station
434	nicolefreeman@example.net	audience	\N	employee	\N	value
435	gomezbrad@example.org	world	\N	employee	\N	owner
436	joseph12@example.net	sure	\N	employee	\N	kind
437	albertbrown@example.org	agreement	\N	employee	\N	enter
438	perezrachel@example.net	student	\N	employee	\N	trade
439	jnolan@example.org	just	\N	employee	\N	into
440	maddoxwilliam@example.org	grow	\N	employee	\N	could
441	cmueller@example.org	age	\N	employee	\N	tree
442	andrea08@example.net	market	\N	employee	\N	eight
443	isabella91@example.org	collection	\N	employee	\N	think
444	ortizmiguel@example.net	report	\N	employee	\N	describe
445	velazquezmatthew@example.org	eight	\N	employee	\N	source
446	stephanieterry@example.org	behind	\N	employee	\N	movement
447	caleb34@example.org	apply	\N	employee	\N	success
448	garciarobert@example.net	option	\N	employee	\N	name
449	marissacasey@example.net	edge	\N	employee	\N	hospital
450	alyssamitchell@example.com	eye	\N	employee	\N	because
451	john56@example.net	black	\N	employee	\N	probably
452	amanda45@example.net	science	\N	employee	\N	person
453	madisonnovak@example.com	soon	\N	employee	\N	name
454	penajustin@example.net	stock	\N	employee	\N	short
455	bridgesalyssa@example.com	without	\N	employee	\N	mother
456	sbenson@example.org	radio	\N	employee	\N	imagine
457	nathanstephens@example.org	perform	\N	employee	\N	citizen
458	lisa24@example.com	past	\N	employee	\N	care
459	austin75@example.org	number	\N	employee	\N	moment
460	lowerychristopher@example.net	I	\N	employee	\N	left
461	kaylawilson@example.com	bit	\N	employee	\N	option
462	kennethjohnson@example.net	agent	\N	employee	\N	concern
463	dawn35@example.org	so	\N	employee	\N	mean
464	megan91@example.com	quality	\N	employee	\N	myself
465	freemancharles@example.org	wife	\N	employee	\N	spend
466	qdavis@example.net	could	\N	employee	\N	eye
467	snowjoseph@example.net	treatment	\N	employee	\N	state
468	james60@example.com	their	\N	employee	\N	ahead
469	kellilopez@example.net	significant	\N	employee	\N	look
470	paula11@example.com	discuss	\N	employee	\N	daughter
471	bellkristina@example.com	interview	\N	employee	\N	set
472	brownnicholas@example.com	computer	\N	employee	\N	air
473	crystal68@example.com	theory	\N	employee	\N	treat
474	aarongarza@example.net	require	\N	employee	\N	fast
475	michael49@example.net	affect	\N	employee	\N	well
476	lori76@example.com	administration	\N	employee	\N	miss
477	banksterri@example.net	admit	\N	employee	\N	make
478	moralesmatthew@example.com	significant	\N	employee	\N	environmental
479	jamieshort@example.com	morning	\N	employee	\N	true
480	bcurry@example.org	billion	\N	employee	\N	worry
481	ggarcia@example.org	bag	\N	employee	\N	key
482	heathermay@example.com	miss	\N	employee	\N	seven
483	tbowers@example.org	wife	\N	employee	\N	share
484	jennifer75@example.org	lead	\N	employee	\N	fund
485	walterharding@example.net	indeed	\N	employee	\N	hour
486	kevin01@example.com	like	\N	employee	\N	simple
487	turnerkathryn@example.net	house	\N	employee	\N	report
488	emilymartinez@example.org	cultural	\N	employee	\N	article
489	xgalvan@example.com	difficult	\N	employee	\N	health
490	ilin@example.net	fear	\N	employee	\N	local
491	vchoi@example.com	ahead	\N	employee	\N	edge
492	davidallen@example.net	arrive	\N	employee	\N	try
493	christopherferrell@example.com	other	\N	employee	\N	start
494	hilllauren@example.org	wife	\N	employee	\N	standard
495	nchapman@example.com	movement	\N	employee	\N	box
496	jacksondouglas@example.org	offer	\N	employee	\N	herself
497	bdorsey@example.com	range	\N	employee	\N	heart
498	meganharrison@example.net	face	\N	employee	\N	everything
499	williamslisa@example.net	none	\N	employee	\N	management
500	mistysolomon@example.com	too	\N	employee	\N	wish
701	nthornton@example.net	court	\N	supportagent	\N	watch
702	glennle@example.org	its	\N	supportagent	\N	with
703	scott64@example.org	occur	\N	supportagent	\N	couple
704	gonzalezalyssa@example.net	to	\N	supportagent	\N	eat
705	james07@example.com	remain	\N	supportagent	\N	range
706	austin72@example.com	before	\N	supportagent	\N	computer
707	valerie73@example.com	hold	\N	supportagent	\N	economy
708	chughes@example.org	information	\N	supportagent	\N	concern
709	tstephens@example.org	ball	\N	supportagent	\N	health
710	jonathan42@example.net	until	\N	supportagent	\N	possible
711	bradshawkaren@example.com	them	\N	supportagent	\N	herself
712	xruiz@example.org	drive	\N	supportagent	\N	pay
713	marcbanks@example.org	training	\N	supportagent	\N	couple
714	davidcain@example.net	firm	\N	supportagent	\N	we
715	nnovak@example.net	capital	\N	supportagent	\N	themselves
716	angelaturner@example.net	fly	\N	supportagent	\N	defense
717	uwiley@example.org	consider	\N	supportagent	\N	just
718	qhood@example.net	most	\N	supportagent	\N	you
719	marqueztina@example.com	author	\N	supportagent	\N	nature
720	floresguy@example.net	may	\N	supportagent	\N	follow
721	reginaldnavarro@example.org	television	\N	supportagent	\N	event
722	matthew49@example.com	himself	\N	supportagent	\N	poor
723	amanda34@example.com	price	\N	supportagent	\N	building
724	qhebert@example.com	situation	\N	supportagent	\N	question
725	kempanthony@example.net	get	\N	supportagent	\N	a
726	garcianichole@example.net	step	\N	supportagent	\N	send
727	jasonsolis@example.org	American	\N	supportagent	\N	understand
728	bmitchell@example.com	a	\N	supportagent	\N	great
729	taylorsutton@example.com	continue	\N	supportagent	\N	remain
730	astewart@example.net	challenge	\N	supportagent	\N	drive
731	shelby21@example.net	adult	\N	supportagent	\N	end
732	jillbennett@example.net	manage	\N	supportagent	\N	to
733	rsmith@example.org	food	\N	supportagent	\N	community
734	khanedward@example.com	fire	\N	supportagent	\N	positive
735	hperkins@example.net	our	\N	supportagent	\N	evening
736	juan95@example.net	trade	\N	supportagent	\N	claim
737	travishall@example.org	new	\N	supportagent	\N	rich
738	hermanmichelle@example.net	five	\N	supportagent	\N	account
739	ericgarcia@example.org	mean	\N	supportagent	\N	affect
740	vangcrystal@example.com	class	\N	supportagent	\N	around
741	cheyenne65@example.com	me	\N	supportagent	\N	change
742	mosstimothy@example.org	add	\N	supportagent	\N	suddenly
743	gjames@example.com	all	\N	supportagent	\N	game
744	zbaker@example.net	evidence	\N	supportagent	\N	room
745	mbullock@example.com	avoid	\N	supportagent	\N	explain
746	kevinwoodward@example.com	available	\N	supportagent	\N	officer
747	nicole27@example.org	what	\N	supportagent	\N	lose
748	anthony74@example.net	where	\N	supportagent	\N	score
749	john52@example.org	company	\N	supportagent	\N	road
750	lisa16@example.org	various	\N	supportagent	\N	situation
751	gcolon@example.com	PM	\N	supportagent	\N	career
752	lwilliams@example.net	media	\N	supportagent	\N	common
753	hannah51@example.org	list	\N	supportagent	\N	up
754	martinrobert@example.org	story	\N	supportagent	\N	lay
755	sfitzpatrick@example.com	both	\N	supportagent	\N	interesting
756	armstrongdonald@example.com	send	\N	supportagent	\N	campaign
757	tammy62@example.org	process	\N	supportagent	\N	imagine
758	garciatony@example.net	along	\N	supportagent	\N	fish
759	jacquelinehernandez@example.org	popular	\N	supportagent	\N	we
760	egreen@example.com	sea	\N	supportagent	\N	plant
761	mitchellmark@example.org	everyone	\N	supportagent	\N	own
762	ryanyoung@example.net	situation	\N	supportagent	\N	conference
763	pjensen@example.com	phone	\N	supportagent	\N	listen
764	catherinebell@example.net	mind	\N	supportagent	\N	Republican
765	tuckerdylan@example.org	music	\N	supportagent	\N	not
766	ylee@example.com	husband	\N	supportagent	\N	type
767	madisonchavez@example.org	service	\N	supportagent	\N	after
768	xscott@example.net	now	\N	supportagent	\N	put
769	vicki86@example.com	budget	\N	supportagent	\N	many
770	andrew43@example.com	history	\N	supportagent	\N	buy
771	ashleykennedy@example.org	discuss	\N	supportagent	\N	game
772	cynthia40@example.com	suddenly	\N	supportagent	\N	have
773	marcuspearson@example.com	claim	\N	supportagent	\N	know
774	jenniferrichard@example.com	public	\N	supportagent	\N	family
775	lori68@example.com	defense	\N	supportagent	\N	home
776	dianecollier@example.org	spring	\N	supportagent	\N	every
777	megan86@example.org	consider	\N	supportagent	\N	machine
778	amanda97@example.net	break	\N	supportagent	\N	star
779	zjohnson@example.org	record	\N	supportagent	\N	newspaper
780	walterwhite@example.com	price	\N	supportagent	\N	office
781	molinastephen@example.net	anything	\N	supportagent	\N	meet
782	vthomas@example.net	continue	\N	supportagent	\N	behind
783	gardnerzachary@example.com	environment	\N	supportagent	\N	right
784	keithmueller@example.net	mission	\N	supportagent	\N	fill
785	bryanwood@example.com	history	\N	supportagent	\N	physical
786	laura66@example.net	their	\N	supportagent	\N	safe
787	stricklandbryce@example.net	fall	\N	supportagent	\N	weight
788	jacqueline72@example.org	score	\N	supportagent	\N	management
789	ncarter@example.net	five	\N	supportagent	\N	of
790	david91@example.net	claim	\N	supportagent	\N	effect
791	joysmith@example.net	material	\N	supportagent	\N	you
792	benjaminturner@example.net	break	\N	supportagent	\N	skin
793	rickmendez@example.com	put	\N	supportagent	\N	market
794	cooktimothy@example.org	safe	\N	supportagent	\N	north
795	davidsmith@example.net	occur	\N	supportagent	\N	member
796	kathleenjones@example.org	thousand	\N	supportagent	\N	thank
797	hvazquez@example.org	rock	\N	supportagent	\N	be
798	ingramsandra@example.net	guess	\N	supportagent	\N	treat
799	vhanson@example.net	decision	\N	supportagent	\N	guy
800	belinda85@example.com	three	\N	supportagent	\N	company
\.


--
-- Data for Name: relation_18; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_18 (user_id, mv_user) FROM stdin;
1	chance
1	although
2	child
2	enjoy
2	very
2	option
3	evidence
3	Mr
3	eight
4	scientist
4	push
5	develop
5	cut
5	structure
6	road
7	be
8	senior
9	debate
9	meet
10	wide
10	east
10	art
10	enter
11	himself
11	class
11	from
11	key
12	party
13	side
13	pretty
13	teach
13	eight
14	structure
15	interest
15	sea
16	various
17	safe
17	system
17	knowledge
18	energy
19	dream
19	bag
19	control
19	capital
20	general
20	perform
21	single
21	get
22	short
22	compare
23	everyone
23	debate
24	able
24	tonight
24	administration
24	the
25	expert
25	arrive
26	growth
26	case
27	international
27	affect
28	key
28	west
28	large
29	say
30	us
30	four
30	tell
31	probably
32	information
32	physical
32	within
32	difficult
33	time
33	daughter
33	individual
33	industry
34	treatment
35	arrive
36	every
36	interest
36	summer
36	for
37	watch
37	change
38	between
38	girl
38	deal
38	whatever
39	thing
39	case
39	prevent
40	daughter
41	operation
42	time
43	dinner
43	alone
44	similar
44	his
45	decide
45	attention
45	car
46	simply
47	appear
47	scene
47	collection
48	might
48	general
49	glass
50	soldier
51	himself
51	less
51	plan
51	hotel
52	light
52	house
53	million
53	me
53	quickly
54	pay
55	staff
56	fish
56	front
56	help
57	join
57	scientist
58	defense
58	million
59	claim
59	get
60	point
60	provide
60	have
61	still
61	voice
61	site
61	democratic
62	politics
62	accept
62	group
63	good
64	else
65	professional
65	situation
65	build
66	walk
66	here
67	identify
68	door
68	point
68	old
69	marriage
69	us
69	can
70	also
70	position
71	traditional
72	exist
72	sit
72	free
72	after
73	anyone
73	improve
74	summer
74	none
74	like
75	two
75	put
75	term
76	from
76	ball
76	travel
76	role
77	bed
77	people
77	until
77	he
78	opportunity
78	control
78	color
78	mouth
79	those
79	drive
79	prepare
80	hold
80	do
80	left
80	first
81	amount
82	day
83	performance
84	security
84	you
85	continue
85	during
85	property
86	performance
86	back
87	approach
88	economic
89	full
89	none
89	show
90	imagine
90	people
91	approach
91	shake
91	yourself
91	itself
92	because
92	scientist
92	a
92	recent
93	nor
94	item
95	attention
95	scene
95	if
95	stand
96	hair
96	hand
96	myself
97	share
97	two
97	draw
98	blue
99	whom
100	show
100	yard
100	argue
101	anyone
101	throughout
102	institution
102	result
102	nice
102	public
103	hit
103	daughter
104	whom
104	standard
104	son
104	hope
105	ground
105	fish
106	family
106	over
107	level
107	beyond
108	possible
109	class
109	edge
110	physical
110	election
110	land
111	idea
111	several
111	customer
111	identify
112	over
112	camera
112	cost
112	buy
113	tax
113	church
113	late
113	a
114	foreign
115	true
115	her
116	area
117	past
117	moment
117	seem
117	respond
118	usually
118	production
118	oil
118	dark
119	yourself
119	think
120	rule
120	change
120	themselves
120	spend
121	remain
121	two
121	think
121	federal
122	note
122	get
122	mean
123	that
123	region
123	point
123	easy
124	rate
124	clearly
125	include
125	executive
125	hundred
126	ball
127	within
127	draw
128	long
128	campaign
128	sure
129	manage
129	half
129	technology
129	organization
130	memory
131	what
131	customer
132	create
133	meeting
133	condition
133	cut
134	impact
135	word
136	term
136	stop
137	animal
137	address
137	little
138	could
138	what
138	lead
139	hospital
139	friend
139	degree
139	leave
140	inside
140	house
141	if
142	whose
142	tough
143	floor
143	accept
143	so
144	side
144	consider
144	control
144	away
145	inside
145	response
145	total
145	mother
146	discuss
146	per
146	state
146	than
147	civil
147	than
147	ten
148	bit
148	company
149	else
149	usually
149	name
150	sport
150	heart
150	almost
150	alone
151	purpose
151	indeed
151	senior
151	cause
152	occur
153	official
153	figure
153	example
153	move
154	check
154	month
154	also
154	eat
155	else
155	owner
156	myself
157	color
157	space
158	development
158	most
158	catch
159	box
159	gun
160	shake
160	card
160	under
161	personal
161	simply
161	up
162	society
162	time
162	ten
163	watch
163	meet
163	painting
164	letter
164	city
165	show
166	feeling
167	play
168	guy
168	list
168	smile
168	energy
169	seven
169	film
169	into
169	beat
170	effort
170	usually
170	bag
170	material
171	away
172	treat
172	media
173	than
173	century
173	never
174	hit
175	accept
175	girl
176	benefit
176	memory
177	because
177	item
178	community
178	property
178	sister
178	tell
179	far
179	cut
179	enter
179	direction
180	realize
180	top
180	chair
181	talk
181	begin
182	safe
182	Republican
182	country
183	responsibility
184	pick
184	cover
184	late
184	should
185	future
186	stage
187	job
188	go
188	detail
188	leader
188	father
189	final
190	lead
190	past
190	such
190	candidate
191	try
191	many
191	where
191	we
192	strong
193	majority
193	century
193	positive
194	measure
195	else
195	issue
195	PM
196	audience
197	almost
197	event
198	hour
199	position
199	owner
199	free
199	clear
200	baby
200	necessary
200	Congress
200	black
201	describe
202	debate
203	where
203	unit
204	effect
205	standard
206	word
206	PM
206	save
207	weight
207	form
208	environmental
208	trouble
209	deal
210	last
211	wonder
211	receive
211	important
212	word
212	foot
213	activity
214	give
215	rule
216	able
216	get
217	increase
217	debate
217	staff
218	friend
218	plant
218	case
219	play
219	participant
219	six
220	new
221	movement
221	necessary
221	should
222	finally
222	before
222	evening
223	both
223	movement
224	much
224	scene
225	none
225	treatment
225	record
226	organization
227	collection
227	agency
227	bad
227	summer
228	get
228	else
228	allow
229	senior
229	let
229	since
230	within
230	result
231	deal
231	stand
231	training
231	eye
232	grow
232	rest
232	food
233	thousand
233	late
234	six
234	box
234	none
234	large
235	apply
235	number
236	could
236	risk
236	standard
236	record
237	share
237	catch
238	manage
239	interesting
239	issue
240	wish
240	player
240	position
241	hot
241	accept
242	when
242	two
243	trip
243	citizen
244	employee
244	huge
245	couple
245	require
246	suddenly
246	behind
246	knowledge
247	field
247	thousand
248	town
249	religious
249	yes
250	when
250	dream
251	couple
252	matter
252	throughout
252	Congress
253	strategy
253	participant
254	money
254	subject
254	need
254	despite
255	table
256	season
257	risk
257	conference
257	art
258	should
259	word
259	rich
259	business
260	interest
260	stay
261	administration
261	impact
262	along
262	the
262	party
263	source
263	apply
263	issue
263	big
264	pull
265	investment
265	of
265	moment
266	for
266	rule
266	much
266	tonight
267	bill
268	big
268	reality
269	later
270	take
270	not
271	meet
271	make
271	concern
272	drive
272	sing
272	do
272	group
273	seek
274	use
275	read
275	situation
275	today
275	artist
276	really
277	stage
277	market
277	character
277	take
278	once
279	term
279	now
280	ahead
280	yes
281	choose
282	chance
283	house
283	entire
284	like
284	agent
284	know
285	measure
286	test
286	itself
287	consumer
287	sign
288	sell
288	explain
288	left
289	level
289	system
290	sister
290	statement
291	show
291	benefit
291	through
291	also
292	best
292	doctor
292	yard
293	agent
293	around
294	base
295	according
295	material
295	security
296	power
296	particularly
296	individual
296	television
297	detail
297	drive
297	federal
297	Congress
298	ready
298	room
298	travel
298	food
299	maybe
299	office
299	reach
299	good
300	issue
300	reach
300	win
300	easy
301	what
302	hair
302	ten
302	race
302	make
303	house
304	claim
304	actually
304	bed
304	standard
305	red
306	box
307	contain
307	fund
308	class
308	early
308	seat
309	nature
310	eat
310	cup
310	smile
310	nice
311	south
311	seven
311	member
311	end
312	be
312	knowledge
312	report
312	current
313	attention
314	determine
314	wide
314	wind
314	whatever
315	half
315	yard
315	agent
316	purpose
316	two
316	floor
316	while
317	four
317	process
317	spend
318	seek
318	go
319	certainly
320	check
321	participant
321	mother
321	purpose
322	quite
322	teach
323	chance
323	two
323	human
324	statement
324	station
324	responsibility
325	reason
325	argue
325	play
326	benefit
326	whom
327	spend
327	outside
328	language
329	ground
330	success
330	direction
330	over
330	sit
331	despite
331	peace
332	large
332	why
332	today
332	believe
333	toward
333	always
334	able
334	top
334	car
335	evidence
335	hand
335	charge
336	writer
336	how
337	scene
337	opportunity
338	consider
338	week
338	debate
338	work
339	training
339	front
339	everything
340	hard
340	effect
341	big
341	man
341	bank
342	blood
342	our
342	media
342	prevent
343	green
343	perhaps
344	section
344	conference
345	may
345	need
346	owner
346	see
347	early
348	piece
349	whole
349	lose
349	cultural
349	former
350	recognize
351	series
351	find
351	economic
352	well
352	price
352	sure
353	represent
353	executive
353	interest
353	walk
354	want
355	economy
355	after
355	remember
355	foreign
356	particular
356	what
357	investment
357	food
358	spring
358	black
358	agency
359	pretty
360	sport
360	girl
360	tough
361	article
361	program
362	husband
362	science
362	international
363	night
364	owner
364	we
365	thus
365	dream
366	learn
367	lead
367	a
367	involve
367	newspaper
368	daughter
368	billion
368	head
369	provide
369	fill
369	kind
369	until
370	expert
370	side
370	take
371	Mrs
371	gun
371	technology
372	politics
373	time
373	player
374	piece
375	minute
375	teach
376	describe
376	five
376	challenge
377	store
378	find
379	word
380	sister
380	dream
381	both
381	bad
382	indeed
382	situation
383	chair
383	alone
383	from
384	indeed
384	director
384	road
385	me
385	national
385	dog
385	leader
386	military
387	professional
387	industry
388	eat
388	to
388	western
388	show
389	involve
389	education
389	perhaps
390	its
390	provide
391	hope
391	in
391	interview
391	traditional
392	ball
393	instead
393	north
393	coach
394	voice
394	well
394	indeed
395	simple
395	bring
395	sometimes
395	instead
396	despite
396	here
396	over
396	citizen
397	last
397	best
397	have
398	upon
398	glass
398	particularly
398	control
399	analysis
400	will
400	result
401	step
401	black
402	dog
402	plan
402	side
403	carry
403	partner
404	carry
404	tend
404	every
405	box
405	natural
405	material
405	store
406	need
407	stuff
407	affect
408	floor
408	back
408	think
408	partner
409	assume
410	main
410	officer
410	likely
411	home
411	field
411	enjoy
412	record
412	system
412	walk
413	least
414	ready
414	good
414	help
414	hospital
415	art
416	too
417	foreign
417	glass
418	attention
418	degree
418	ground
418	opportunity
419	chance
419	radio
420	perform
420	have
420	weight
420	Mr
421	how
421	action
421	operation
422	effect
422	attack
422	thousand
423	goal
423	effect
423	behavior
423	person
424	century
424	today
424	voice
425	rise
425	difficult
425	technology
426	purpose
426	see
427	student
427	begin
427	fast
427	sure
428	prepare
428	want
428	environment
428	list
429	describe
429	her
429	drive
429	PM
430	next
430	then
431	choice
431	according
432	send
432	senior
432	season
432	director
433	enough
433	score
433	happen
433	court
434	hundred
435	role
435	probably
435	build
435	clearly
436	job
437	what
438	road
438	spend
439	real
439	question
439	final
440	fast
440	door
441	knowledge
442	phone
443	garden
443	animal
443	mean
443	be
444	possible
444	very
445	boy
446	thing
446	big
447	newspaper
447	very
447	dark
448	real
449	gas
449	time
449	kid
450	century
450	home
451	deep
451	near
452	natural
452	nature
452	go
452	shake
453	consider
454	discover
454	owner
455	before
455	pay
455	step
456	politics
457	thing
457	so
458	approach
459	tree
460	star
460	support
461	thousand
461	us
462	yet
462	story
462	ability
463	power
463	employee
464	thought
464	can
465	garden
465	office
465	wonder
465	style
466	and
467	police
468	experience
468	later
468	adult
469	when
470	anyone
470	ground
471	bad
472	senior
472	whom
472	people
472	this
473	later
473	picture
473	bit
473	area
474	material
475	while
929	eye
475	music
476	research
476	place
476	number
477	choose
478	impact
478	avoid
478	set
478	bring
479	peace
479	young
479	away
480	east
480	need
481	seven
481	very
482	think
482	real
482	thus
483	increase
484	production
484	call
484	anything
485	tax
485	wide
485	item
486	billion
486	relationship
487	international
488	party
489	industry
489	over
489	generation
490	itself
490	important
491	open
491	trade
492	science
492	serious
493	surface
493	world
494	car
494	play
494	size
494	season
495	read
495	practice
495	fish
496	key
496	fish
496	back
496	surface
497	history
497	none
497	others
497	serve
498	begin
499	our
499	really
499	season
500	hit
501	she
501	building
501	those
501	interest
502	partner
502	spring
502	difficult
503	tonight
503	natural
503	trade
503	third
504	tonight
505	movie
506	hand
506	newspaper
506	Mrs
507	husband
507	TV
507	senior
507	on
508	partner
509	finally
509	allow
510	yourself
510	feeling
511	husband
512	help
512	must
512	director
512	painting
513	water
514	number
514	well
515	camera
516	TV
516	design
516	across
517	simply
517	sign
517	read
518	indeed
519	together
520	happy
520	you
520	local
521	look
521	learn
521	many
522	wait
522	term
523	religious
523	raise
524	week
524	past
525	myself
525	offer
525	away
525	final
526	order
527	old
527	style
527	second
527	like
528	lawyer
528	my
528	size
528	source
529	rock
530	heart
531	human
531	behavior
531	show
532	work
532	role
532	instead
532	or
533	exactly
533	hotel
533	pattern
534	check
534	low
534	not
534	bed
535	his
536	professor
536	unit
536	every
536	evening
537	home
537	view
537	happy
538	stand
538	poor
538	human
538	including
539	visit
540	happy
540	compare
541	personal
541	peace
541	control
542	challenge
542	poor
542	husband
543	attention
543	and
544	free
545	adult
545	decade
546	election
546	laugh
546	quickly
547	late
547	market
547	wait
547	crime
548	week
548	anyone
548	off
549	finish
549	watch
549	light
550	machine
550	three
550	audience
551	structure
551	it
551	top
551	agency
552	maybe
552	fast
553	however
553	source
554	dinner
554	those
554	same
554	special
555	choose
555	work
556	source
557	Democrat
558	each
558	its
559	green
560	marriage
561	performance
562	conference
562	hear
562	single
562	report
563	morning
564	painting
564	feel
565	eye
565	whether
565	who
566	land
566	bag
567	keep
567	American
568	maybe
568	million
568	analysis
568	describe
569	already
570	voice
570	member
570	wear
570	discuss
571	story
572	firm
573	option
573	poor
573	ok
573	draw
574	maintain
574	ask
574	exactly
575	high
575	later
575	month
575	drug
576	industry
576	sometimes
577	door
577	administration
577	late
578	them
578	suggest
579	best
579	high
580	low
580	life
580	would
580	skin
581	where
581	soldier
581	not
582	serious
582	prepare
583	public
584	economy
584	range
584	worker
585	great
585	from
585	control
585	possible
586	main
586	current
587	watch
587	hundred
587	ball
587	lose
588	light
588	contain
589	provide
589	now
589	environment
590	certain
591	series
591	plan
592	policy
592	south
593	marriage
593	above
593	half
593	strategy
594	get
594	sell
595	thank
596	myself
596	writer
596	enjoy
596	skin
597	action
597	economic
597	send
598	discover
598	toward
598	push
598	rather
599	certain
599	ahead
599	sort
599	admit
600	thank
600	expert
601	final
601	treatment
602	significant
603	dog
604	feeling
604	myself
605	similar
605	song
605	once
605	sure
606	part
606	ten
607	officer
607	carry
607	wife
607	scientist
608	moment
608	lose
608	reach
609	administration
609	respond
609	personal
609	very
610	team
611	stop
612	image
613	send
613	item
613	song
614	every
614	fill
615	both
615	company
616	always
616	town
616	able
616	hit
617	stand
617	develop
617	lose
618	cell
618	test
618	set
618	past
619	wall
619	source
619	parent
620	standard
620	before
621	baby
621	gun
621	son
621	course
622	since
622	movement
622	citizen
622	decade
623	there
624	health
625	stand
625	dark
626	boy
626	few
626	central
627	evening
627	still
627	cell
627	nothing
628	these
628	although
628	positive
629	indeed
629	office
629	professor
629	interview
630	sound
630	recognize
630	become
631	clear
631	consumer
631	agent
631	say
632	you
632	instead
632	recently
632	right
633	rule
633	matter
634	night
634	nearly
635	billion
635	our
635	difficult
635	camera
636	walk
636	reduce
636	term
637	nothing
637	less
637	skin
638	hard
638	question
638	author
639	whatever
639	morning
639	life
639	reflect
640	analysis
641	be
641	about
641	positive
642	agency
643	woman
643	to
643	foot
644	drug
645	young
645	several
646	imagine
646	she
646	prove
647	Democrat
647	size
648	mention
648	huge
648	actually
649	protect
649	speak
649	nearly
649	over
650	my
650	strategy
651	good
651	to
651	staff
651	after
652	financial
652	sound
652	close
653	air
653	over
653	recently
654	threat
655	assume
655	hope
656	return
656	order
657	get
657	his
657	under
658	within
658	also
658	physical
658	under
659	ask
659	economic
659	exist
659	many
660	usually
660	next
661	international
662	make
662	issue
662	set
663	identify
664	chance
664	too
664	alone
664	down
665	government
665	would
666	type
666	on
666	system
666	central
667	research
667	four
667	during
668	learn
668	small
668	both
668	help
669	career
669	raise
669	now
670	walk
671	soon
671	chance
672	somebody
672	among
672	article
672	different
673	sure
674	draw
675	team
676	leave
676	relate
677	north
677	together
678	operation
679	believe
679	and
679	future
679	ball
680	home
680	late
680	maintain
681	none
681	local
682	poor
682	baby
683	land
684	speech
685	along
685	federal
685	high
686	explain
686	always
686	recently
687	power
688	else
688	support
689	election
689	rate
689	where
690	explain
690	us
690	region
690	degree
691	almost
691	will
691	help
691	rest
692	safe
692	until
692	couple
693	discuss
694	him
694	action
694	growth
695	mind
696	even
696	including
696	same
696	successful
697	keep
697	anyone
698	blue
698	worry
699	particular
699	water
700	charge
700	page
700	thus
701	gas
701	ability
701	economic
701	author
702	whole
702	board
702	because
703	score
703	hard
703	success
704	stock
705	dream
705	course
705	wait
706	want
706	million
707	increase
707	law
708	western
708	no
709	discussion
709	ball
709	it
709	civil
710	six
710	our
710	different
711	maintain
711	be
711	just
711	letter
712	world
712	research
712	collection
712	community
713	painting
713	test
714	left
714	while
715	physical
715	forward
715	continue
715	special
716	us
716	speak
717	nor
717	with
717	human
718	minute
718	avoid
719	minute
719	image
720	current
720	him
721	practice
721	gas
721	parent
722	term
723	let
724	like
724	fact
725	southern
726	dog
726	response
726	as
727	draw
728	only
728	political
729	property
729	blue
729	card
729	exist
730	decade
730	fear
730	give
730	while
731	guy
732	partner
733	final
734	happen
734	lawyer
735	computer
735	far
735	radio
735	will
736	oil
736	within
736	learn
736	some
737	sit
737	place
737	tend
738	themselves
738	ask
739	possible
739	another
740	evening
740	figure
740	door
740	adult
741	realize
741	instead
742	region
742	might
743	discuss
743	prevent
743	movement
744	identify
744	president
744	purpose
744	never
745	take
745	administration
745	none
745	rise
746	would
746	kitchen
746	reflect
747	various
747	their
748	rise
748	manager
749	production
750	career
750	against
751	per
751	simple
752	situation
753	be
753	experience
753	interview
754	data
754	remain
755	road
756	however
756	thank
756	fact
757	within
757	become
757	tell
757	all
758	manager
758	clear
759	woman
759	after
760	support
760	open
760	available
761	last
761	factor
762	continue
762	growth
763	research
763	officer
764	trade
764	can
764	such
764	score
765	structure
765	debate
766	significant
766	moment
767	child
767	show
768	hair
769	response
769	story
769	day
770	its
770	later
771	third
771	they
771	action
771	night
772	almost
772	either
772	still
772	civil
773	event
773	wall
773	medical
774	magazine
774	though
775	whole
776	show
777	reduce
778	teach
779	believe
779	play
779	stop
780	begin
780	group
780	low
780	score
781	gun
782	degree
783	blue
783	half
783	executive
784	top
784	half
784	mouth
785	production
785	event
785	thought
786	democratic
786	year
787	democratic
787	value
788	evening
788	lose
788	year
789	direction
789	seek
790	able
790	care
791	least
791	dinner
791	guess
792	man
792	because
792	just
793	direction
793	energy
793	manager
794	general
794	onto
794	mean
795	trade
796	young
797	allow
797	few
798	brother
798	trouble
799	TV
799	meeting
799	particular
799	start
800	the
800	early
800	article
800	behavior
801	many
801	we
802	actually
803	how
803	assume
803	major
803	deal
804	listen
804	care
804	baby
804	everyone
805	still
805	third
805	hit
805	not
806	these
806	Mrs
806	ability
807	simple
807	receive
807	seem
808	action
808	support
808	significant
808	truth
809	across
810	card
810	drug
810	project
811	necessary
812	page
813	live
813	of
813	follow
813	indicate
814	land
814	foot
814	natural
814	state
815	ever
815	hold
815	similar
816	might
816	force
816	interview
816	drug
817	recognize
817	lead
818	skin
818	alone
818	themselves
819	true
819	source
820	thought
821	commercial
821	add
821	station
822	add
823	course
823	right
823	whose
823	discuss
824	reason
825	return
825	right
825	state
825	such
826	nice
827	for
827	ago
827	entire
827	magazine
828	party
828	born
829	page
829	common
829	effort
829	kid
830	religious
830	other
830	executive
831	value
832	hot
832	after
833	sure
833	let
834	study
834	want
835	plant
835	wrong
835	measure
836	natural
836	war
837	professional
837	girl
837	mission
838	appear
838	yard
838	military
839	accept
840	yard
840	hit
840	citizen
840	fight
841	collection
841	bag
841	industry
842	Republican
843	red
843	value
843	trade
843	position
844	college
845	baby
845	training
845	sea
845	although
846	word
847	behind
848	man
848	around
849	color
849	large
850	sea
851	subject
851	member
851	fly
851	different
852	decade
852	play
852	wide
852	region
853	begin
853	late
854	meet
855	action
855	bit
856	body
856	performance
857	physical
857	security
857	idea
857	right
858	child
858	travel
858	cell
859	crime
859	notice
859	low
860	tough
861	remember
861	water
862	quality
862	traditional
863	school
864	as
864	chair
865	environment
865	chance
865	effect
866	relate
866	start
866	budget
867	book
867	our
867	never
868	agent
868	executive
868	near
868	me
869	law
869	minute
869	the
870	employee
870	control
870	late
870	box
871	shake
871	hit
871	go
872	view
872	hospital
873	one
874	speech
874	reality
874	later
874	us
875	road
875	grow
876	probably
876	fear
876	plan
877	pattern
878	pressure
878	man
878	year
879	food
879	bring
880	pattern
880	dream
880	story
881	born
881	also
881	there
882	full
882	human
882	attorney
883	actually
883	somebody
884	hit
884	though
884	professor
885	grow
885	simple
885	fish
886	bag
886	music
886	want
887	than
887	shake
887	least
887	possible
888	great
889	test
889	drive
889	film
889	future
890	share
890	back
891	easy
891	lot
891	attention
891	pattern
892	character
892	full
893	themselves
893	population
894	program
894	gun
894	someone
895	usually
895	by
895	material
895	nearly
896	white
896	goal
896	candidate
896	reality
897	let
898	strong
899	need
899	throw
899	carry
900	customer
900	thank
901	eye
901	city
901	have
901	interest
902	bad
903	computer
903	arm
903	social
904	region
904	end
905	continue
905	within
905	oil
906	help
906	herself
906	animal
907	sea
907	paper
907	person
907	nor
908	while
908	result
908	interesting
908	trouble
909	include
909	financial
910	include
910	rise
910	use
911	hope
911	hand
912	nearly
912	north
913	hard
913	not
913	between
913	skin
914	human
914	choice
914	pattern
915	strong
916	loss
916	suggest
916	improve
917	according
917	bring
917	behavior
917	kind
918	make
918	program
918	change
919	free
920	ever
920	friend
921	seek
921	treat
921	city
921	night
922	better
922	main
922	similar
922	future
923	great
924	audience
925	could
925	whole
925	heavy
925	perform
926	avoid
926	commercial
926	class
926	certain
927	bit
928	economic
928	though
929	information
929	street
929	job
930	evening
930	wish
930	southern
931	while
931	happy
931	follow
931	upon
932	fly
932	name
932	become
932	bill
933	activity
933	fill
933	scene
933	truth
934	movie
934	surface
934	try
934	west
935	more
936	total
936	others
936	blood
936	about
937	enough
937	report
938	especially
938	have
939	business
939	store
940	next
941	quality
941	letter
941	decide
941	sign
942	role
942	food
942	save
943	everybody
943	across
944	no
944	let
945	fast
945	whole
945	production
945	public
946	so
946	red
946	office
947	leave
947	hand
947	trouble
948	ever
948	prepare
949	suggest
949	lose
950	into
950	difference
951	boy
951	ready
951	positive
952	example
952	hand
953	behind
954	second
955	take
955	adult
956	such
956	more
956	suddenly
956	first
957	story
957	wall
957	kitchen
957	point
958	public
959	someone
959	continue
959	magazine
960	will
960	much
961	the
962	realize
962	bit
962	space
962	cultural
963	base
964	discover
964	bed
964	night
965	bank
965	would
966	night
966	media
966	its
966	theory
967	right
967	animal
968	best
968	hour
968	staff
969	in
969	man
970	population
970	rule
970	property
971	into
971	agent
972	research
972	enter
972	officer
972	focus
973	in
974	man
975	now
976	standard
976	measure
976	meeting
977	edge
977	happy
977	return
978	marriage
979	financial
979	during
979	pressure
980	share
980	data
981	ball
981	large
981	example
981	woman
982	toward
982	social
983	born
984	its
984	worker
984	left
984	act
985	another
986	bed
986	those
986	race
987	hear
987	onto
987	office
987	not
988	contain
988	health
988	until
988	require
989	open
989	wonder
989	and
989	book
990	every
990	point
991	society
991	myself
991	conference
991	her
992	evidence
992	player
992	media
993	power
993	him
993	radio
993	look
994	partner
995	road
995	pick
995	space
995	value
996	admit
996	politics
996	affect
996	nice
997	opportunity
998	great
999	focus
999	because
999	board
1000	idea
1000	even
1000	listen
\.


--
-- Data for Name: relation_19; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_19 (user_id, contact_no) FROM stdin;
101	budget
101	improve
102	you
102	carry
103	against
104	community
104	mean
105	go
106	couple
107	party
108	end
109	do
109	weight
110	actually
111	research
111	part
112	reality
113	couple
114	quality
115	score
116	author
117	ahead
117	time
118	party
118	trip
119	improve
120	space
121	garden
121	find
122	enough
123	hold
124	raise
124	article
125	hot
125	risk
126	prevent
127	identify
127	political
128	station
128	nearly
129	western
129	word
130	attack
131	performance
131	tax
132	mother
132	now
133	protect
134	mean
134	hand
135	trade
135	threat
136	job
136	them
137	her
138	field
139	college
139	natural
140	past
141	especially
142	kitchen
143	space
144	perform
144	station
145	yeah
145	station
146	bed
146	partner
147	least
147	yeah
148	one
149	institution
150	interesting
150	though
151	within
152	year
153	affect
154	low
155	front
156	hot
156	into
157	position
157	home
158	without
158	class
159	man
159	around
160	series
161	want
162	study
162	politics
163	career
164	lot
164	purpose
165	appear
165	training
166	somebody
167	participant
168	general
169	once
169	remain
170	peace
171	organization
171	author
172	like
173	to
173	either
174	heavy
175	tonight
176	dark
177	edge
178	thought
179	available
179	discuss
180	kind
180	site
181	fall
181	Mr
182	scientist
182	almost
183	behind
183	leader
184	huge
185	despite
186	economic
186	keep
187	our
188	outside
188	from
189	appear
189	institution
190	us
191	value
192	teach
193	instead
193	right
194	parent
194	president
195	page
195	oil
196	traditional
196	Democrat
197	same
198	free
199	behind
200	foreign
201	affect
202	seat
203	management
204	pattern
205	court
205	edge
206	produce
207	respond
208	lead
208	speech
209	account
210	top
210	car
211	commercial
212	better
213	sport
213	do
214	nothing
215	performance
215	money
216	pick
217	wide
217	foot
218	ahead
218	cell
219	cultural
219	senior
220	must
221	wish
221	agree
222	security
222	community
223	I
223	crime
224	drop
224	develop
225	and
225	open
226	build
227	pressure
228	fund
228	space
229	quickly
229	film
230	not
230	major
231	stage
231	memory
232	discover
233	investment
233	admit
234	performance
234	impact
235	region
236	decide
236	catch
237	clear
237	between
238	possible
239	religious
239	plant
240	even
241	much
241	people
242	individual
243	reflect
243	future
244	also
244	financial
245	risk
246	training
247	ever
248	father
248	quite
249	account
249	edge
250	three
250	before
251	court
251	response
252	movie
253	rise
253	over
254	mission
254	personal
255	power
256	second
257	environment
258	ready
259	history
260	summer
261	well
262	show
263	church
264	certainly
265	meet
265	nature
266	season
267	brother
267	visit
268	claim
269	less
269	forward
270	born
270	real
271	ground
272	sign
273	someone
273	around
274	live
275	candidate
276	later
277	reduce
277	increase
278	enter
279	why
279	address
280	news
280	light
281	share
281	keep
282	Mrs
282	back
283	rather
284	wait
285	garden
285	image
286	price
286	data
287	stage
287	security
288	letter
288	same
289	each
289	reach
290	seven
291	first
292	near
293	year
294	line
294	measure
295	employee
296	statement
297	mouth
297	purpose
298	development
298	popular
299	situation
299	from
300	success
300	crime
301	stock
302	friend
302	least
303	agree
304	design
304	development
305	be
306	challenge
306	during
307	plant
307	real
308	watch
308	between
309	it
310	network
310	class
311	take
311	decade
312	past
313	trade
314	age
315	test
316	once
317	must
318	author
318	scientist
319	whole
319	minute
320	describe
321	rule
321	reveal
322	on
322	stuff
323	black
323	above
324	technology
324	responsibility
325	although
326	price
327	value
327	listen
328	western
329	room
330	which
331	single
332	today
332	official
333	ahead
334	understand
335	image
336	reality
336	many
337	opportunity
338	follow
339	father
340	there
340	list
341	decade
341	race
342	without
343	sign
344	bed
344	point
345	produce
345	newspaper
346	federal
347	your
348	responsibility
349	reality
349	radio
350	rise
350	heavy
351	ahead
351	detail
352	bad
352	TV
353	stop
354	something
354	according
355	no
355	player
356	such
357	risk
358	week
359	off
359	doctor
360	else
361	open
361	group
362	institution
363	theory
364	after
364	blood
365	must
366	sure
366	artist
367	bag
368	tree
369	as
369	development
370	career
370	hold
371	energy
372	key
373	professional
374	know
375	live
375	in
376	bring
377	research
377	walk
378	research
379	visit
380	certain
380	individual
381	change
381	analysis
382	reach
382	per
383	run
383	challenge
384	ready
385	capital
386	claim
386	could
387	poor
387	bag
388	western
389	next
389	see
390	sit
390	cell
391	wait
391	piece
392	mind
392	statement
393	ok
393	last
394	interest
395	exist
395	call
396	bed
396	tell
397	protect
398	feel
399	Mrs
399	phone
400	upon
400	agree
\.


--
-- Data for Name: relation_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_2 (product_id, mv_attributes) FROM stdin;
1	better
1	officer
2	interesting
2	address
3	home
3	executive
4	against
4	much
5	trip
5	truth
6	including
6	moment
7	on
8	list
8	beyond
9	learn
10	standard
10	door
11	well
12	mind
13	mention
13	ok
14	across
15	site
16	return
17	art
17	three
18	stand
19	agency
19	paper
20	house
20	difficult
21	field
21	community
22	sometimes
23	our
24	from
24	song
25	car
26	contain
26	statement
27	bar
27	too
28	painting
29	magazine
30	tell
31	lead
31	through
32	small
32	nature
33	whose
33	view
34	team
35	indicate
36	big
37	fight
38	same
39	smile
39	picture
40	behind
40	cover
41	energy
42	mind
42	over
43	skill
44	employee
45	cup
46	mouth
46	she
47	soon
47	speak
48	bring
49	rate
49	family
50	here
51	young
52	forward
52	program
53	vote
54	million
54	also
55	window
55	situation
56	whether
56	dog
57	add
57	control
58	eye
59	occur
59	parent
60	deep
60	herself
61	after
61	skin
62	line
63	use
64	beautiful
65	catch
65	evidence
66	head
67	along
67	morning
68	with
69	machine
70	dream
71	the
72	window
72	they
73	law
74	we
74	ten
75	design
76	stop
77	within
77	both
78	run
79	enter
80	traditional
80	laugh
81	land
82	official
83	skill
83	true
84	lawyer
84	sing
85	I
85	eat
86	news
86	leave
87	until
87	open
88	growth
88	account
89	series
90	candidate
90	together
91	other
91	face
92	interesting
93	born
94	ago
94	run
95	home
96	suddenly
96	chance
97	art
97	understand
98	chance
98	yet
99	then
99	fill
100	election
101	heart
102	action
103	bed
104	watch
104	truth
105	simply
106	agency
106	far
107	treat
108	always
109	team
109	protect
110	would
110	condition
111	prevent
112	particular
113	successful
114	read
115	expect
116	program
116	these
117	energy
117	much
118	audience
118	consider
119	worker
119	consider
120	action
121	war
121	month
122	grow
123	wonder
124	wide
124	address
125	station
125	inside
126	civil
127	step
127	agree
128	section
128	director
129	official
130	loss
130	newspaper
131	kitchen
131	eat
132	player
132	radio
133	area
134	such
134	today
135	appear
136	education
136	do
137	west
138	may
138	push
139	business
140	out
140	quality
141	around
141	focus
142	crime
143	activity
143	president
144	keep
145	general
146	cell
147	concern
148	owner
149	daughter
150	play
150	happen
151	institution
151	firm
152	accept
152	large
153	step
153	through
154	want
155	off
156	it
157	ball
157	street
158	leave
159	against
160	democratic
161	bad
161	message
162	choice
163	tough
163	mouth
164	claim
165	similar
166	general
167	return
168	add
169	which
169	blue
170	unit
170	loss
171	eat
172	if
172	miss
173	country
173	mission
174	next
174	example
175	trouble
175	always
176	majority
177	page
178	fill
178	fear
179	sound
179	treatment
180	summer
181	detail
181	meeting
182	speech
182	pay
183	thing
184	purpose
184	serious
185	cut
186	have
186	how
187	teach
188	answer
189	great
189	mention
190	join
190	others
191	reality
191	central
192	authority
193	house
193	prevent
194	history
194	right
195	recent
196	him
196	yeah
197	bed
198	between
198	animal
199	think
199	choose
200	bank
201	sea
201	defense
202	simply
203	tonight
204	enter
204	radio
205	contain
206	hotel
206	sometimes
207	protect
208	idea
209	prepare
209	rich
210	imagine
211	health
211	born
212	road
213	establish
213	later
214	short
215	station
215	score
216	life
216	model
217	rest
218	quality
219	who
220	mean
220	wish
221	sometimes
221	send
222	sit
223	relationship
224	time
225	example
225	program
226	somebody
226	peace
227	who
227	artist
228	learn
229	research
230	court
230	guy
231	society
231	field
232	north
233	explain
234	task
235	yard
236	have
237	message
237	paper
238	million
239	traditional
240	include
241	hear
242	understand
242	allow
243	dog
244	her
244	parent
245	home
245	reason
246	girl
247	well
248	together
249	young
249	all
250	daughter
250	government
251	similar
251	child
252	it
253	worry
254	understand
255	law
256	impact
256	grow
257	available
257	car
258	chair
259	friend
259	hundred
260	address
260	go
261	success
261	turn
262	identify
262	memory
263	store
263	far
264	ahead
264	spring
265	arm
265	property
266	camera
266	smile
267	democratic
268	will
268	heavy
269	house
269	challenge
270	moment
270	unit
271	baby
271	share
272	lead
273	call
274	future
274	author
275	whole
276	information
276	into
277	impact
277	reveal
278	author
278	leave
279	catch
280	necessary
280	animal
281	school
281	girl
282	stock
282	list
283	manage
283	difficult
284	respond
284	usually
285	style
286	better
287	food
287	technology
288	as
289	federal
289	guess
290	research
290	probably
291	she
291	bar
292	prove
293	couple
294	agency
295	if
296	happy
296	walk
297	front
297	pressure
298	bar
299	we
300	image
300	live
301	dream
301	down
302	reflect
303	admit
304	get
305	Mr
305	across
306	ready
306	time
307	drop
307	sort
308	structure
308	store
309	management
310	keep
311	evening
311	nor
312	small
312	security
313	throw
313	far
314	country
314	final
315	also
316	meeting
316	rule
317	blue
318	science
319	respond
320	shake
320	quite
321	few
321	ago
322	reduce
322	picture
323	court
324	should
325	create
325	voice
326	enough
326	first
327	various
327	political
328	age
328	pay
329	guy
330	prepare
331	either
332	natural
333	stop
334	first
334	play
335	miss
336	customer
337	hand
337	large
338	pick
339	conference
340	foreign
340	unit
341	fish
341	turn
342	accept
343	someone
344	science
344	term
345	itself
346	word
346	lot
347	store
347	truth
348	wear
348	himself
349	range
349	model
350	relate
351	Mrs
352	charge
353	perform
354	indeed
355	body
355	huge
356	court
357	half
358	south
359	necessary
359	sort
360	blue
360	the
361	town
362	very
362	include
363	indicate
363	ten
364	peace
365	meeting
366	ahead
366	worry
367	him
368	trip
369	certain
369	hospital
370	why
370	value
371	up
372	year
373	dark
374	none
374	this
375	water
375	like
376	white
376	expect
377	enjoy
378	stand
379	capital
380	set
381	always
381	win
382	start
382	travel
383	activity
383	skill
384	such
384	whatever
385	difficult
386	southern
386	debate
387	anyone
387	western
388	draw
389	imagine
389	quality
390	talk
391	interview
392	program
393	teacher
393	eight
394	answer
394	maybe
395	detail
396	step
396	add
397	bill
397	system
398	gas
399	seat
400	arrive
401	student
401	pressure
402	determine
402	value
403	able
404	clear
405	arrive
405	interview
406	site
406	public
407	son
408	power
409	space
409	white
410	sound
411	industry
411	I
412	hand
413	its
413	investment
414	hot
414	yes
415	long
416	soon
417	happen
417	boy
418	great
418	course
419	town
420	growth
420	possible
421	card
422	along
423	myself
423	final
424	individual
425	always
426	picture
427	set
427	read
428	want
429	arrive
430	people
431	its
432	design
433	call
433	left
434	enough
435	them
435	resource
436	least
436	hundred
437	kid
437	international
438	realize
438	federal
439	eight
439	unit
440	seek
441	key
441	information
442	enjoy
442	office
443	offer
444	live
445	people
446	president
447	paper
448	generation
449	news
450	nation
451	short
451	long
452	show
453	total
453	some
454	whom
454	eat
455	reveal
456	around
457	project
458	last
459	season
460	bad
461	bit
462	firm
463	child
463	thousand
464	exactly
464	window
465	past
466	series
466	research
467	Democrat
468	wall
469	somebody
469	standard
470	letter
471	grow
472	learn
472	hour
473	condition
474	might
475	both
475	direction
476	eat
476	federal
477	test
477	partner
478	range
479	option
480	language
481	Congress
482	its
482	unit
483	worry
484	family
484	foreign
485	structure
486	budget
487	talk
488	a
489	light
490	general
490	give
491	it
492	also
492	doctor
493	audience
494	pick
494	able
495	beat
495	think
496	movie
496	specific
497	from
498	contain
498	especially
499	different
500	create
501	fear
502	about
502	or
503	father
504	music
505	others
506	main
506	energy
507	specific
508	front
509	we
510	president
510	office
511	agree
511	trip
512	clear
513	others
513	trial
514	staff
515	drive
515	fire
516	century
517	join
517	church
518	all
518	property
519	director
519	system
520	health
520	need
521	upon
521	operation
522	executive
523	many
524	network
524	institution
525	start
525	sound
526	American
527	life
527	agreement
528	identify
529	clear
530	vote
530	government
531	up
532	even
532	sure
533	customer
533	determine
534	surface
535	focus
536	or
536	hour
537	experience
537	themselves
538	area
538	increase
539	something
539	entire
540	option
540	structure
541	family
541	administration
542	rich
543	art
543	yes
544	unit
544	third
545	girl
546	event
547	enjoy
548	where
549	become
549	sort
550	discuss
551	son
551	pretty
552	possible
553	gun
554	people
555	stage
556	policy
557	my
558	view
559	our
560	trial
561	process
562	sort
563	firm
563	drop
564	anyone
564	special
565	much
565	floor
566	father
566	accept
567	yes
568	morning
569	southern
569	energy
570	body
570	game
571	trip
571	discover
572	have
573	camera
574	Mr
575	owner
576	send
576	Congress
577	far
577	manager
578	bill
578	shoulder
579	issue
580	game
580	summer
581	threat
582	defense
582	federal
583	specific
583	remember
584	environment
584	lawyer
585	room
586	mind
586	onto
587	meeting
588	seat
589	success
589	professor
590	guess
591	continue
591	law
592	particular
592	sell
593	sound
593	public
594	reduce
595	speak
595	which
596	right
597	anything
598	magazine
598	beautiful
599	still
600	daughter
601	professor
601	option
602	tree
602	all
603	its
603	program
604	student
604	natural
605	available
605	change
606	manage
606	through
607	clear
607	animal
608	case
609	happy
609	product
610	could
610	nature
611	individual
612	total
613	on
614	cell
614	some
615	leader
615	spend
616	dark
616	material
617	trade
617	hard
618	share
618	challenge
619	both
620	doctor
620	that
621	successful
621	economic
622	want
623	board
623	per
624	we
625	just
625	full
626	until
626	former
627	material
628	my
628	study
629	us
630	activity
630	reason
631	leave
632	sister
633	some
634	chance
634	stop
635	why
635	general
636	call
637	purpose
637	professor
638	although
639	case
639	great
640	back
640	affect
641	toward
642	ball
643	present
644	deep
645	as
646	often
646	few
647	including
647	administration
648	PM
648	follow
649	half
649	whether
650	nothing
650	center
651	yourself
651	discussion
652	product
653	old
653	plan
654	experience
655	head
655	cause
656	away
657	set
658	there
658	each
659	matter
660	add
661	Democrat
661	father
662	heart
663	break
663	ago
664	mind
665	else
666	like
666	natural
667	fly
668	inside
669	although
669	perhaps
670	blue
671	wait
672	she
673	environmental
674	say
675	about
675	show
676	man
676	word
677	strategy
678	huge
679	soon
680	send
681	national
682	will
682	year
683	letter
683	spend
684	five
685	event
686	notice
687	three
687	network
688	me
688	tend
689	official
689	such
690	think
690	dinner
691	fill
692	phone
693	six
694	could
694	rich
695	international
696	material
697	growth
697	news
698	than
698	material
699	manager
699	decade
700	pressure
700	allow
701	doctor
701	several
702	kid
703	degree
704	race
704	American
705	into
706	page
706	them
707	democratic
707	leader
708	occur
709	choose
709	never
710	likely
711	beat
711	away
712	a
712	all
713	attack
714	policy
715	have
716	determine
717	probably
717	simply
718	ever
719	different
720	represent
720	chance
721	clear
722	not
722	all
723	success
723	force
724	step
725	throw
726	wonder
727	wait
727	senior
728	either
729	program
729	record
730	Republican
730	level
731	arrive
731	mention
732	use
732	own
733	space
733	clear
734	difference
735	college
735	choice
736	manage
736	sort
737	officer
738	attorney
738	he
739	everyone
739	teacher
740	senior
740	position
741	sport
742	financial
742	bank
743	fight
744	property
745	business
745	future
746	those
746	pay
747	himself
748	put
749	line
750	growth
751	make
751	middle
752	necessary
752	draw
753	dog
753	end
754	address
755	south
755	team
756	few
756	instead
757	look
758	expert
759	decade
760	study
761	million
762	president
762	police
763	card
764	role
764	ever
1014	big
765	back
766	woman
767	quite
767	station
768	event
768	person
769	soldier
769	natural
770	despite
770	effort
771	part
772	service
773	force
773	character
774	thousand
775	instead
776	police
776	board
777	member
777	fill
778	participant
778	thousand
779	give
779	family
780	few
781	save
782	quickly
782	quality
783	start
784	discover
784	main
785	nothing
785	image
786	voice
786	sometimes
787	occur
788	per
789	hot
790	week
791	yard
792	range
793	night
794	everyone
794	after
795	indeed
796	place
796	expert
797	big
797	thousand
798	themselves
798	image
799	enjoy
799	game
800	glass
801	miss
801	attention
802	chance
802	fund
803	again
803	party
804	alone
804	unit
805	air
805	rest
806	include
807	plant
808	democratic
809	why
809	consider
810	us
811	music
812	quality
812	with
813	doctor
813	seek
814	maintain
815	fund
816	high
816	fire
817	bring
817	school
818	size
818	thought
819	section
820	school
820	speech
821	once
821	so
822	relationship
822	skin
823	technology
823	catch
824	agency
825	build
825	property
826	learn
827	professor
827	success
828	front
828	bit
829	herself
829	record
830	land
831	officer
832	letter
833	parent
833	report
834	ask
834	charge
835	party
835	child
836	pay
836	worker
837	memory
838	without
838	billion
839	piece
839	fire
840	note
840	central
841	style
841	foreign
842	soldier
842	eight
843	see
843	also
844	improve
845	suddenly
845	catch
846	change
846	look
847	keep
848	his
849	team
850	street
851	compare
852	decide
852	pressure
853	bit
854	goal
855	reveal
855	Mrs
856	chance
856	believe
857	imagine
858	water
858	letter
859	speak
860	partner
860	daughter
861	general
861	successful
862	federal
862	brother
863	community
863	certainly
864	low
864	wait
865	statement
865	keep
866	similar
867	speak
868	left
868	window
869	could
870	south
871	television
872	evening
872	enter
873	value
873	positive
874	indicate
874	game
875	mind
876	firm
876	painting
877	push
878	these
878	our
879	short
879	good
880	place
881	myself
881	develop
882	forget
883	traditional
884	take
884	of
885	return
886	firm
887	open
888	no
889	series
890	player
890	go
891	reflect
892	huge
892	establish
893	have
894	reduce
895	political
896	much
897	morning
897	computer
898	current
899	however
899	along
900	field
901	west
902	mother
903	material
903	professional
904	stop
904	ability
905	minute
906	green
907	bank
908	southern
908	accept
909	language
909	music
910	become
911	clear
911	detail
912	situation
912	account
913	soldier
914	big
915	bed
916	to
916	start
917	doctor
918	clear
919	north
920	single
921	perhaps
921	expert
922	get
923	organization
923	environmental
924	attack
924	when
925	send
926	exactly
927	image
927	oil
928	authority
929	lay
929	television
930	national
931	go
932	condition
932	want
933	throughout
934	avoid
934	structure
935	customer
935	clearly
936	half
936	high
937	toward
937	environmental
938	would
938	during
939	executive
939	win
940	bag
940	her
941	goal
941	day
942	picture
943	lead
943	because
944	data
944	southern
945	camera
945	main
946	matter
946	create
947	ground
948	defense
949	really
949	information
950	tree
950	me
951	mother
951	experience
952	process
953	other
954	forget
955	ok
955	forward
956	account
957	paper
958	yes
959	assume
959	try
960	stop
960	Republican
961	approach
962	significant
963	kid
964	spend
964	history
965	doctor
966	whose
966	build
967	woman
967	position
968	prepare
968	Mr
969	international
970	catch
970	job
971	memory
971	bar
972	spring
972	sense
973	thus
973	protect
974	one
975	throw
975	decade
976	itself
977	edge
977	goal
978	open
979	bad
980	reflect
981	marriage
981	stay
982	test
982	there
983	year
983	focus
984	though
984	effect
985	successful
986	pass
986	often
987	anything
987	car
988	task
988	concern
989	almost
989	magazine
990	no
990	perform
991	west
992	change
992	total
993	everyone
993	in
994	wide
995	usually
996	yes
996	than
997	former
998	special
999	crime
1000	service
1001	model
1002	establish
1003	work
1003	recently
1004	name
1005	development
1006	hold
1006	however
1007	near
1008	east
1009	feel
1010	movie
1011	range
1011	ground
1012	produce
1013	pass
1015	ever
1015	material
1016	almost
1016	central
1017	subject
1018	role
1018	front
1019	parent
1019	especially
1020	sea
1020	thank
1021	head
1022	challenge
1023	traditional
1024	choice
1025	approach
1026	account
1027	computer
1027	into
1028	especially
1029	mind
1030	reality
1030	never
1031	technology
1031	tax
1032	far
1032	skill
1033	movie
1034	election
1035	newspaper
1036	red
1036	example
1037	require
1037	rise
1038	value
1039	answer
1039	lead
1040	participant
1040	show
1041	bring
1042	official
1042	design
1043	after
1043	past
1044	authority
1045	stand
1045	you
1046	art
1047	general
1048	civil
1048	together
1049	southern
1050	computer
1051	entire
1051	middle
1052	time
1052	over
1053	film
1053	rule
1054	network
1054	item
1055	which
1056	decade
1056	agency
1057	factor
1058	rest
1059	teach
1060	direction
1060	tell
1061	involve
1061	mother
1062	card
1063	also
1064	police
1064	community
1065	carry
1065	short
1066	source
1066	they
1067	hair
1068	smile
1069	stock
1070	hope
1071	garden
1072	customer
1072	laugh
1073	action
1074	beyond
1074	manager
1075	group
1076	kid
1076	stock
1077	behavior
1077	tell
1078	energy
1078	treatment
1079	size
1079	never
1080	knowledge
1080	drug
1081	mission
1082	perform
1083	cost
1084	consider
1084	interest
1085	know
1085	fire
1086	worker
1087	author
1087	task
1088	theory
1089	door
1089	natural
1090	actually
1090	second
1091	process
1092	customer
1093	common
1094	exactly
1095	carry
1095	spring
1096	now
1096	laugh
1097	record
1098	peace
1098	foreign
1099	put
1099	particular
1100	beat
1100	administration
1101	ground
1102	manager
1103	will
1104	rock
1105	agent
1105	would
1106	stuff
1106	today
1107	city
1107	chance
1108	walk
1109	end
1110	also
1110	office
1111	skill
1112	particularly
1113	produce
1113	spring
1114	environment
1115	early
1116	item
1117	it
1117	power
1118	live
1119	question
1119	skin
1120	heart
1121	herself
1121	ball
1122	audience
1122	party
1123	item
1123	series
1124	measure
1125	culture
1126	read
1126	many
1127	eight
1127	science
1128	stuff
1128	improve
1129	war
1130	treat
1131	attack
1131	statement
1132	news
1132	bed
1133	expert
1133	shake
1134	buy
1134	sound
1135	guy
1136	admit
1136	sign
1137	I
1138	control
1139	window
1140	fly
1140	imagine
1141	into
1142	worker
1143	or
1143	phone
1144	international
1144	real
1145	inside
1145	Republican
1146	behavior
1146	star
1147	agreement
1147	kitchen
1148	charge
1148	leader
1149	simply
1149	lawyer
1150	worry
1151	threat
1151	product
1152	here
1153	program
1154	you
1155	program
1155	raise
1156	exist
1157	second
1157	performance
1158	strategy
1158	effect
1159	approach
1159	successful
1160	guess
1160	change
1161	note
1161	return
1162	shoulder
1163	clearly
1163	analysis
1164	window
1165	level
1166	talk
1166	evidence
1167	prove
1167	hope
1168	peace
1168	new
1169	such
1170	mean
1171	market
1171	itself
1172	degree
1172	month
1173	kind
1174	defense
1175	whatever
1175	run
1176	next
1177	bill
1178	political
1178	share
1179	third
1180	response
1180	well
1181	light
1181	serve
1182	degree
1183	hit
1184	car
1185	step
1185	whether
1186	win
1187	how
1188	land
1188	back
1189	defense
1189	several
1190	guy
1190	floor
1191	tend
1191	sit
1192	require
1193	north
1194	special
1195	capital
1196	send
1196	leave
1197	reduce
1197	still
1198	role
1198	side
1199	moment
1200	behind
1200	determine
1201	western
1202	scene
1202	beyond
1203	trouble
1203	head
1204	growth
1205	kid
1205	tough
1206	it
1207	fast
1207	several
1208	bag
1209	commercial
1210	heart
1211	close
1211	section
1212	which
1212	summer
1213	new
1213	anyone
1214	dinner
1215	couple
1216	whatever
1216	ago
1217	grow
1218	away
1219	important
1220	between
1221	agent
1222	region
1222	any
1223	political
1224	seat
1224	skill
1225	notice
1225	activity
1226	foot
1226	high
1227	fall
1227	moment
1228	what
1229	budget
1230	bed
1231	president
1232	word
1233	less
1234	degree
1235	authority
1236	bar
1236	bill
1237	until
1237	surface
1238	character
1239	professor
1240	late
1241	claim
1241	cell
1242	notice
1243	some
1243	report
1244	account
1245	technology
1246	police
1247	always
1248	begin
1249	fire
1250	offer
1251	newspaper
1251	night
1252	up
1252	eat
1253	buy
1253	eight
1254	direction
1254	reason
1255	hand
1256	believe
1256	property
1257	go
1258	change
1259	of
1259	news
1260	seven
1260	wait
1261	for
1262	case
1263	window
1264	serve
1265	book
1266	director
1266	him
1267	same
1268	should
1268	travel
1269	material
1270	cover
1270	people
1271	hair
1272	traditional
1272	strategy
1273	model
1273	your
1274	official
1274	own
1275	money
1276	information
1276	for
1277	recent
1278	make
1278	may
1279	society
1279	top
1280	tonight
1280	possible
1281	boy
1282	occur
1282	grow
1283	may
1284	director
1285	tough
1285	keep
1286	thank
1287	assume
1287	law
1288	but
1288	hot
1289	rise
1290	participant
1291	even
1291	relationship
1292	more
1293	claim
1293	particular
1294	anyone
1294	wall
1295	bed
1296	protect
1297	read
1298	anyone
1299	represent
1300	response
1301	against
1301	black
1302	computer
1302	how
1303	ask
1304	top
1304	forget
1305	ball
1306	likely
1307	future
1307	hear
1308	great
1309	voice
1310	mean
1310	other
1311	political
1311	must
1312	sort
1312	organization
1313	involve
1313	figure
1314	a
1314	sister
1315	mouth
1315	likely
1316	read
1317	operation
1317	medical
1318	pattern
1318	bag
1319	tell
1320	provide
1320	name
1321	scientist
1321	blood
1322	test
1323	hit
1324	similar
1324	check
1325	worry
1325	possible
1326	traditional
1327	half
1328	police
1329	simply
1329	around
1330	prepare
1330	suffer
1331	actually
1332	yeah
1332	marriage
1333	during
1334	treat
1334	produce
1335	sit
1335	record
1336	daughter
1336	admit
1337	campaign
1337	protect
1338	into
1338	let
1339	job
1339	claim
1340	college
1340	good
1341	believe
1341	strategy
1342	note
1342	itself
1343	behind
1343	respond
1344	behavior
1344	expert
1345	religious
1346	activity
1346	current
1347	available
1348	investment
1348	community
1349	focus
1349	society
1350	base
1350	resource
1351	budget
1351	fund
1352	result
1352	resource
1353	because
1353	trouble
1354	movie
1354	charge
1355	continue
1355	machine
1356	indeed
1356	through
1357	he
1358	out
1359	through
1360	majority
1361	suffer
1362	apply
1363	center
1363	moment
1364	way
1364	blue
1365	technology
1365	shoulder
1366	rule
1366	indeed
1367	few
1367	health
1368	best
1369	change
1370	beautiful
1371	field
1372	I
1372	fine
1373	child
1373	today
1374	single
1374	list
1375	author
1376	back
1376	rest
1377	trial
1378	expect
1379	condition
1380	support
1381	perhaps
1381	herself
1382	forward
1382	yeah
1383	role
1384	receive
1384	father
1385	soon
1385	describe
1386	doctor
1387	point
1387	teacher
1388	suggest
1388	bit
1389	recent
1895	she
1390	good
1390	worry
1391	enough
1391	weight
1392	until
1393	account
1394	kitchen
1395	young
1396	card
1397	writer
1397	least
1398	serve
1398	board
1399	suffer
1399	relate
1400	catch
1400	campaign
1401	than
1401	seem
1402	control
1403	walk
1403	any
1404	military
1404	do
1405	turn
1406	color
1406	describe
1407	husband
1408	western
1409	its
1409	say
1410	mouth
1410	impact
1411	policy
1412	nation
1412	authority
1413	suggest
1414	toward
1415	explain
1416	road
1417	rise
1418	area
1419	impact
1420	stand
1420	issue
1421	democratic
1421	sense
1422	buy
1423	subject
1424	decision
1424	case
1425	rate
1426	single
1427	air
1427	in
1428	claim
1429	role
1430	red
1431	clear
1432	possible
1432	believe
1433	continue
1433	growth
1434	agreement
1435	wide
1436	think
1436	around
1437	when
1437	born
1438	food
1439	staff
1440	financial
1440	size
1441	oil
1441	player
1442	miss
1442	then
1443	least
1443	know
1444	reflect
1445	purpose
1445	modern
1446	politics
1447	level
1448	guy
1449	customer
1449	summer
1450	ok
1451	memory
1451	ready
1452	sell
1452	scene
1453	store
1453	face
1454	truth
1454	expert
1455	under
1456	person
1456	financial
1457	player
1458	ok
1458	require
1459	church
1460	life
1461	true
1462	professor
1462	we
1463	market
1464	enter
1464	generation
1465	positive
1466	news
1466	financial
1467	price
1468	day
1468	pull
1469	difficult
1469	including
1470	receive
1471	probably
1472	operation
1472	religious
1473	serve
1473	east
1474	check
1475	say
1475	career
1476	statement
1476	first
1477	thus
1477	forward
1478	want
1478	window
1479	create
1479	find
1480	ball
1481	perhaps
1481	war
1482	focus
1482	popular
1483	miss
1483	court
1484	like
1485	for
1486	service
1487	own
1488	important
1488	specific
1489	draw
1489	hold
1490	enjoy
1490	change
1491	may
1491	add
1492	attorney
1492	authority
1493	anyone
1493	while
1494	including
1494	improve
1495	before
1495	against
1496	present
1497	direction
1498	those
1499	fall
1499	firm
1500	stuff
1500	television
1501	realize
1501	once
1502	ball
1503	international
1504	school
1505	doctor
1506	star
1506	participant
1507	explain
1508	degree
1508	century
1509	should
1509	theory
1510	without
1510	pay
1511	painting
1511	step
1512	must
1513	why
1514	under
1514	successful
1515	itself
1515	stay
1516	say
1517	piece
1518	adult
1518	only
1519	wide
1520	office
1521	keep
1522	song
1523	run
1524	word
1525	leave
1525	at
1526	whether
1527	administration
1528	look
1528	machine
1529	where
1530	enjoy
1530	to
1531	she
1531	course
1532	moment
1533	house
1533	pay
1534	can
1534	trip
1535	lot
1535	even
1536	help
1537	east
1538	degree
1539	ball
1540	they
1540	poor
1541	environmental
1541	message
1542	network
1543	wall
1543	weight
1544	mean
1545	quite
1546	something
1546	ago
1547	imagine
1547	owner
1548	wish
1548	large
1549	television
1549	fast
1550	worker
1551	draw
1552	also
1552	computer
1553	one
1554	him
1555	air
1556	official
1557	system
1558	agree
1558	two
1559	woman
1559	marriage
1560	rate
1560	least
1561	increase
1562	affect
1563	soon
1564	forget
1565	audience
1566	experience
1567	manager
1568	site
1569	heavy
1570	our
1570	reality
1571	war
1572	teacher
1573	doctor
1574	experience
1574	home
1575	war
1576	continue
1577	they
1577	rock
1578	teach
1578	prove
1579	anyone
1579	nearly
1580	music
1580	what
1581	nearly
1581	the
1582	Congress
1583	character
1583	case
1584	hard
1585	whether
1586	answer
1586	enough
1587	believe
1587	describe
1588	message
1589	real
1590	base
1590	seek
1591	bring
1592	ago
1592	must
1593	level
1593	here
1594	mean
1594	third
1595	attorney
1596	unit
1597	drive
1597	ago
1598	yard
1598	loss
1599	garden
1599	too
1600	run
1600	report
1601	whether
1601	theory
1602	whom
1603	agree
1603	model
1604	consider
1604	walk
1605	piece
1605	have
1606	cultural
1607	chair
1607	true
1608	purpose
1609	partner
1610	own
1611	apply
1611	make
1612	as
1613	increase
1614	food
1614	while
1615	provide
1616	about
1617	character
1617	item
1618	audience
1619	stop
1620	food
1620	several
1621	call
1621	actually
1622	camera
1622	choice
1623	alone
1624	field
1625	idea
1626	short
1626	certainly
1627	vote
1628	table
1628	particularly
1629	threat
1630	idea
1631	edge
1631	issue
1632	fish
1632	provide
1633	according
1634	threat
1635	read
1635	Mr
1636	notice
1636	keep
1637	teach
1637	baby
1638	ability
1639	law
1640	quality
1640	provide
1641	later
1642	my
1643	someone
1644	far
1644	pressure
1645	ok
1645	property
1646	year
1647	police
1648	measure
1649	big
1649	employee
1650	contain
1650	wrong
1651	reduce
1652	agency
1652	explain
1653	usually
1654	line
1654	up
1655	wind
1655	economy
1656	weight
1657	job
1657	quite
1658	once
1658	near
1659	least
1659	put
1660	production
1660	director
1661	day
1662	old
1662	specific
1663	just
1663	a
1664	short
1665	paper
1665	sense
1666	occur
1666	drive
1667	gas
1667	section
1668	see
1669	occur
1669	nothing
1670	beat
1670	together
1671	cut
1671	sell
1672	beyond
1672	from
1673	ready
1674	real
1675	out
1675	at
1676	administration
1676	how
1677	one
1678	so
1679	political
1679	hand
1680	outside
1681	wall
1681	her
1682	left
1683	yes
1683	activity
1684	add
1684	answer
1685	read
1685	life
1686	tax
1687	event
1687	room
1688	specific
1688	single
1689	explain
1690	prove
1690	specific
1691	discussion
1691	set
1692	fish
1693	natural
1694	message
1694	stage
1695	woman
1696	indicate
1697	two
1697	according
1698	process
1699	or
1699	table
1700	dream
1701	television
1702	run
1702	only
1703	Democrat
1703	candidate
1704	decision
1705	above
1706	authority
1706	important
1707	land
1708	maybe
1709	herself
1710	heart
1711	half
1711	baby
1712	room
1712	that
1713	not
1713	three
1714	probably
1715	war
1716	stop
1717	report
1717	physical
1718	sort
1719	cut
1719	score
1720	country
1720	thought
1721	industry
1722	most
1722	idea
1723	role
1724	yard
1724	someone
1725	chance
1726	bank
1726	car
1727	agent
1728	site
1729	sure
1730	country
1730	herself
1731	move
1732	end
1732	knowledge
1733	former
1733	part
1734	such
1735	difficult
1735	style
1736	against
1737	lay
1737	many
1738	poor
1738	miss
1739	employee
1740	what
1740	difference
1741	none
1742	nature
1743	most
1744	simple
1744	others
1745	local
1746	serve
1746	idea
1747	high
1747	risk
1748	fine
1748	owner
1749	thank
1749	nice
1750	police
1750	mind
1751	American
1752	between
1753	everyone
1754	theory
1755	animal
1755	training
1756	among
1757	administration
1758	ten
1759	trip
1760	capital
1760	day
1761	major
1762	later
1763	budget
1763	large
1764	office
1765	prepare
1766	interesting
1767	blue
1767	use
1768	evening
1768	amount
1769	call
1769	article
1770	wish
1770	late
1771	former
1771	trade
1772	respond
1772	Mrs
1773	government
1773	church
1774	three
1774	issue
1775	culture
1776	probably
1777	shake
1778	thousand
1778	together
1779	have
1780	case
1780	drive
1781	just
1782	tend
1782	with
1783	thought
1783	suffer
1784	really
1785	friend
1785	single
1786	third
1787	group
1787	fine
1788	however
1789	training
1789	car
1790	report
1791	she
1792	explain
1793	anyone
1793	lose
1794	right
1794	carry
1795	candidate
1795	address
1796	power
1797	point
1798	already
1798	hand
1799	future
1800	pay
1800	better
1801	conference
1801	likely
1802	interesting
1803	art
1804	expect
1804	dream
1805	security
1805	hold
1806	radio
1806	project
1807	apply
1807	support
1808	remember
1808	society
1809	main
1810	he
1810	school
1811	we
1811	seem
1812	must
1813	guy
1813	near
1814	possible
1814	world
1815	strong
1816	tend
1816	international
1817	run
1817	standard
1818	my
1819	trip
1819	bed
1820	candidate
1820	charge
1821	build
1821	region
1822	player
1822	pull
1823	break
1823	last
1824	everyone
1825	order
1825	couple
1826	language
1827	air
1828	purpose
1829	campaign
1829	skin
1830	require
1830	mouth
1831	article
1832	third
1832	degree
1833	call
1833	set
1834	international
1835	she
1836	often
1837	figure
1838	television
1839	question
1839	likely
1840	culture
1840	per
1841	suffer
1842	near
1843	next
1844	small
1844	health
1845	high
1846	resource
1847	skin
1847	main
1848	impact
1848	arrive
1849	book
1850	sense
1850	imagine
1851	here
1851	plan
1852	assume
1852	quite
1853	meet
1854	might
1855	large
1856	drop
1857	my
1857	guy
1858	suggest
1859	pick
1859	think
1860	executive
1860	direction
1861	southern
1861	dark
1862	understand
1862	will
1863	occur
1863	free
1864	grow
1864	end
1865	almost
1865	support
1866	role
1866	step
1867	owner
1867	seat
1868	could
1868	fast
1869	I
1870	sense
1871	really
1872	help
1872	build
1873	heart
1873	maybe
1874	thank
1875	attack
1875	travel
1876	best
1877	star
1878	much
1879	its
1879	watch
1880	on
1881	forward
1882	responsibility
1883	rest
1883	them
1884	sister
1884	administration
1885	take
1885	senior
1886	table
1887	one
1888	stay
1888	pull
1889	one
1890	various
1891	quickly
1892	new
1893	rule
1894	performance
1894	capital
1896	can
1897	the
1897	night
1898	day
1899	idea
1900	night
1901	glass
1902	arm
1903	international
1903	difference
1904	police
1905	gun
1905	experience
1906	usually
1907	experience
1908	wrong
1909	nothing
1909	such
1910	store
1910	nation
1911	war
1912	response
1913	store
1914	effort
1914	these
1915	travel
1915	reflect
1916	need
1916	security
1917	fine
1918	type
1919	story
1919	no
1920	daughter
1921	child
1922	rich
1922	everybody
1923	real
1924	quality
1924	door
1925	wall
1926	debate
1927	interesting
1927	certain
1928	ground
1928	themselves
1929	account
1929	human
1930	everything
1930	standard
1931	table
1932	cost
1932	pull
1933	court
1934	response
1934	it
1935	growth
1935	talk
1936	physical
1936	personal
1937	party
1938	production
1938	claim
1939	leg
1939	civil
1940	behavior
1941	choose
1941	per
1942	police
1942	they
1943	magazine
1944	base
1945	idea
1945	interesting
1946	wonder
1946	each
1947	sound
1947	attention
1948	person
1949	still
1950	keep
1951	beautiful
1951	instead
1952	can
1952	someone
1953	behind
1953	look
1954	happen
1954	stop
1955	area
1956	so
1956	leave
1957	always
1958	buy
1958	thing
1959	trial
1960	book
1960	lay
1961	key
1961	garden
1962	home
1963	view
1964	result
1965	tend
1966	green
1967	response
1968	half
1968	mission
1969	assume
1970	protect
1971	full
1971	effect
1972	again
1973	respond
1974	create
1975	civil
1976	place
1977	operation
1978	strategy
1978	poor
1979	call
1979	relationship
1980	discuss
1980	from
1981	box
1981	receive
1982	young
1983	by
1983	bill
1984	guy
1985	natural
1986	believe
1986	save
1987	suggest
1988	cause
1989	American
1990	end
1990	movement
1991	station
1991	offer
1992	deep
1993	word
1993	purpose
1994	think
1994	write
1995	real
1996	hot
1996	great
1997	security
1997	unit
1998	reach
1998	represent
1999	music
2000	including
2001	contain
2002	total
2003	eight
2003	situation
2004	or
2005	near
2005	behind
2006	we
2007	until
2007	commercial
2008	natural
2008	street
2009	remember
2010	sit
2011	up
2011	down
2012	scene
2013	cup
2014	war
2014	point
2015	third
2015	know
2016	area
2017	religious
2018	simply
2019	thought
2020	manager
2020	begin
2021	responsibility
2021	century
2022	energy
2022	over
2023	threat
2024	three
2024	or
2025	fast
2025	law
2026	if
2027	series
2027	should
2028	son
2029	sort
2030	yeah
2031	back
2031	over
2032	look
2033	left
2033	magazine
2034	his
2035	put
2036	at
2037	near
2038	attention
2039	probably
2040	anyone
2040	east
2041	energy
2041	note
2042	state
2042	prevent
2043	participant
2043	rock
2044	challenge
2044	table
2045	future
2046	resource
2046	challenge
2047	success
2047	allow
2048	account
2049	risk
2049	population
2050	campaign
2050	data
2051	rock
2051	election
2052	consumer
2053	media
2054	food
2054	health
2055	prevent
2056	skill
2056	ask
2057	decide
2058	set
2058	avoid
2059	style
2060	garden
2061	effect
2061	push
2062	some
2062	parent
2063	performance
2064	school
2064	test
2065	direction
2066	check
2066	always
2067	relate
2068	dinner
2069	young
2070	along
2071	decision
2071	issue
2072	author
2073	everybody
2074	court
2075	eat
2076	experience
2076	road
2077	peace
2077	white
2078	figure
2079	or
2079	doctor
2080	alone
2081	month
2081	me
2082	role
2082	clearly
2083	gas
2083	bag
2084	parent
2085	recent
2085	despite
2086	control
2087	growth
2087	life
2088	fly
2088	close
2089	hair
2090	only
2091	thousand
2091	medical
2092	experience
2092	woman
2093	morning
2093	necessary
2094	prevent
2094	commercial
2095	space
2095	hear
2096	start
2097	always
2098	home
2099	write
2099	general
2100	family
\.


--
-- Data for Name: relation_20; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_20 (primecustomer_id, renewal_date) FROM stdin;
201	how
202	west
203	community
204	own
205	matter
206	perhaps
207	charge
208	attack
209	travel
210	he
211	station
212	this
213	race
214	particularly
215	reduce
216	six
217	strong
218	behavior
219	position
220	big
221	study
222	rule
223	name
224	expect
225	one
226	property
227	go
228	might
229	everything
230	nice
231	money
232	world
233	game
234	clear
235	return
236	answer
237	the
238	may
239	bed
240	organization
241	forget
242	read
243	shoulder
244	official
245	positive
246	mother
247	avoid
248	magazine
249	whom
250	artist
251	reach
252	recognize
253	security
254	network
255	about
256	mean
257	play
258	go
259	during
260	woman
261	administration
262	our
263	assume
264	significant
265	change
266	until
267	front
268	history
269	cultural
270	natural
271	price
272	lay
273	man
274	clear
275	attention
276	media
277	project
278	issue
279	than
280	memory
281	red
282	yes
283	voice
284	lot
285	body
286	dinner
287	garden
288	so
289	identify
290	east
291	police
292	successful
293	since
294	woman
295	center
296	head
297	sign
298	action
299	just
300	case
\.


--
-- Data for Name: relation_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_21 (primecustomer_id, subscription_addons) FROM stdin;
201	oil
201	property
201	run
201	realize
202	southern
203	fine
204	step
204	key
204	recent
204	person
205	specific
205	cell
205	major
206	development
206	wait
207	happy
207	cup
208	effort
209	evening
209	oil
210	instead
210	knowledge
210	make
211	toward
211	affect
212	green
212	listen
212	event
212	receive
213	need
213	project
214	house
214	chair
214	something
215	source
215	song
215	either
215	affect
216	development
216	bad
216	various
217	we
217	everyone
218	population
218	movie
218	fact
218	degree
219	against
220	morning
221	wide
221	buy
221	room
221	place
222	practice
223	piece
223	kitchen
223	according
223	receive
224	treatment
224	before
224	continue
224	reach
225	data
225	culture
226	above
227	phone
227	only
227	challenge
227	say
228	school
229	security
230	soon
231	significant
232	what
233	although
233	back
234	protect
235	campaign
236	realize
236	success
236	door
237	time
237	late
238	debate
239	ten
239	lose
239	teacher
239	our
240	place
240	our
241	foreign
241	wall
242	me
242	how
242	contain
242	thus
243	million
243	significant
243	run
244	owner
244	local
244	perhaps
245	rise
245	represent
246	authority
246	to
247	various
247	those
247	trip
247	none
248	land
248	somebody
248	name
248	network
249	there
249	whole
250	trouble
250	cultural
251	seek
251	less
251	like
252	easy
252	together
252	heavy
253	miss
254	song
255	name
256	history
256	knowledge
257	everyone
257	mission
257	voice
257	local
258	few
258	design
259	magazine
259	risk
260	near
260	fight
260	reflect
261	lawyer
262	run
262	drop
262	writer
262	top
263	science
263	really
263	power
263	education
264	late
264	gun
264	charge
264	father
265	air
265	total
265	camera
266	already
267	art
267	girl
267	two
268	agent
268	see
268	describe
268	Mr
269	oil
270	decide
270	itself
270	former
271	employee
271	business
271	visit
271	media
272	town
272	project
273	them
273	season
273	plan
273	science
274	surface
275	recent
275	technology
275	attack
276	ground
276	house
277	account
277	where
277	data
278	report
278	size
278	dinner
278	final
279	position
280	evidence
281	religious
282	question
282	more
282	body
282	these
283	which
283	natural
283	star
283	shoulder
284	green
285	media
286	perhaps
286	life
286	expect
286	here
287	quality
287	relate
287	better
288	among
288	receive
288	less
288	event
289	quality
290	pull
291	term
292	manager
292	training
292	bad
293	rest
293	commercial
293	head
294	go
295	more
295	central
295	garden
295	way
296	thousand
297	third
297	various
297	itself
298	policy
298	suddenly
298	poor
298	use
299	involve
300	few
\.


--
-- Data for Name: relation_22; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_22 (corporateemployee_id, email, password_hash, employee_no, office_site, level, role) FROM stdin;
501	joshuabrooks@example.net	manage	other	happen	\N	corporateemployee
502	collierpatrick@example.com	thousand	stay	soon	\N	corporateemployee
503	jillianconway@example.com	media	upon	drive	\N	corporateemployee
504	smithjeffrey@example.net	management	part	again	\N	corporateemployee
505	vwood@example.com	consider	treatment	over	\N	corporateemployee
506	suttoncharles@example.com	section	over	task	\N	corporateemployee
507	rhayes@example.com	feel	support	memory	\N	corporateemployee
508	karentaylor@example.org	consider	structure	style	\N	corporateemployee
509	ballnicole@example.com	feeling	author	daughter	\N	corporateemployee
510	ruth29@example.net	cold	west	at	\N	corporateemployee
511	jonesbarbara@example.net	goal	difference	source	\N	corporateemployee
512	christopher68@example.com	character	draw	cell	\N	corporateemployee
513	amanda41@example.net	Republican	particularly	quickly	\N	corporateemployee
514	lbates@example.com	garden	true	tree	\N	corporateemployee
515	msmith@example.net	break	culture	interest	\N	corporateemployee
516	khaneric@example.com	treatment	risk	push	\N	corporateemployee
517	ryancochran@example.com	bank	simple	in	\N	corporateemployee
518	zachary28@example.com	any	least	own	\N	corporateemployee
519	morganjonathan@example.com	teach	idea	give	\N	corporateemployee
520	alejandrogonzales@example.com	measure	hard	likely	\N	corporateemployee
521	michael38@example.com	lose	rather	garden	\N	corporateemployee
522	judithbush@example.org	stop	several	middle	\N	corporateemployee
523	david08@example.net	school	yet	build	\N	corporateemployee
524	ashleydavis@example.org	expect	ask	perform	\N	corporateemployee
525	lori81@example.com	test	tell	artist	\N	corporateemployee
526	burnsjustin@example.net	almost	crime	admit	\N	corporateemployee
527	elizabeth15@example.net	scene	dark	adult	\N	corporateemployee
528	emilydelgado@example.org	free	reduce	conference	\N	corporateemployee
529	matthewguerrero@example.org	system	position	catch	\N	corporateemployee
530	gomezjacob@example.org	almost	hour	community	\N	corporateemployee
531	fbaker@example.net	security	challenge	mean	\N	corporateemployee
532	richardhenderson@example.net	each	friend	position	\N	corporateemployee
533	william85@example.net	second	per	sometimes	\N	corporateemployee
534	zachary97@example.net	think	common	along	\N	corporateemployee
535	michaelestrada@example.net	mean	team	probably	\N	corporateemployee
536	karen23@example.com	laugh	shoulder	group	\N	corporateemployee
537	stephenaguilar@example.org	own	reality	whole	\N	corporateemployee
538	lorithompson@example.net	nature	feeling	bill	\N	corporateemployee
539	hneal@example.org	remember	wide	get	\N	corporateemployee
540	grace09@example.net	allow	total	price	\N	corporateemployee
541	hancockjason@example.com	PM	shake	short	\N	corporateemployee
542	karla57@example.net	scientist	police	firm	\N	corporateemployee
543	ashleygilbert@example.com	at	instead	or	\N	corporateemployee
544	pcunningham@example.org	test	religious	fast	\N	corporateemployee
545	elizabeth81@example.org	unit	available	sign	\N	corporateemployee
546	wcallahan@example.com	authority	blue	production	\N	corporateemployee
547	ohardy@example.com	different	thank	dark	\N	corporateemployee
548	fernandeznathan@example.net	left	act	field	\N	corporateemployee
549	andrewibarra@example.com	eight	environmental	conference	\N	corporateemployee
550	michaelbrooks@example.com	answer	city	add	\N	corporateemployee
551	gordonbrown@example.net	accept	building	religious	\N	corporateemployee
552	ryanrichardson@example.org	face	season	safe	\N	corporateemployee
553	stephenbradley@example.org	third	off	suffer	\N	corporateemployee
554	iperez@example.com	day	technology	development	\N	corporateemployee
555	vcampbell@example.org	worker	light	win	\N	corporateemployee
556	tracy70@example.net	at	group	soldier	\N	corporateemployee
557	christopher30@example.net	include	keep	compare	\N	corporateemployee
558	rubiotabitha@example.net	next	your	new	\N	corporateemployee
559	sarahtrevino@example.net	hit	entire	role	\N	corporateemployee
560	rachel35@example.net	deal	recently	dream	\N	corporateemployee
561	stephanie19@example.com	old	look	wind	\N	corporateemployee
562	nwilson@example.net	style	scene	idea	\N	corporateemployee
563	kathleengarrison@example.com	tough	possible	employee	\N	corporateemployee
564	edwardguerra@example.org	maintain	soldier	quickly	\N	corporateemployee
565	imiller@example.net	happy	kind	year	\N	corporateemployee
566	aliciafitzgerald@example.net	your	TV	put	\N	corporateemployee
567	woodwardlouis@example.com	everything	poor	laugh	\N	corporateemployee
568	matthewvaldez@example.net	either	admit	simply	\N	corporateemployee
569	meaganromero@example.org	form	identify	wind	\N	corporateemployee
570	christinawhite@example.org	media	region	final	\N	corporateemployee
571	amandacraig@example.org	last	prove	learn	\N	corporateemployee
572	timothybender@example.org	nor	two	throw	\N	corporateemployee
573	ryancrawford@example.net	development	no	really	\N	corporateemployee
574	nwilliams@example.net	board	scientist	expert	\N	corporateemployee
575	elliottjames@example.com	street	front	sure	\N	corporateemployee
576	salazarkayla@example.org	theory	news	store	\N	corporateemployee
577	benjamin52@example.net	within	skin	art	\N	corporateemployee
578	pgonzalez@example.net	clearly	audience	range	\N	corporateemployee
579	sandrawilliams@example.com	development	idea	positive	\N	corporateemployee
580	angelablair@example.net	player	pull	eye	\N	corporateemployee
581	christopher61@example.org	maybe	try	second	\N	corporateemployee
582	awilliams@example.com	can	life	into	\N	corporateemployee
583	martinezkeith@example.org	guess	clear	while	\N	corporateemployee
584	nevans@example.org	question	hospital	office	\N	corporateemployee
585	jennifer04@example.org	recent	than	number	\N	corporateemployee
586	daniellebooth@example.net	forward	husband	else	\N	corporateemployee
587	morgan42@example.org	very	capital	culture	\N	corporateemployee
588	andradejessica@example.org	with	there	what	\N	corporateemployee
589	christopher46@example.com	forward	raise	now	\N	corporateemployee
590	millermaria@example.org	reality	enter	food	\N	corporateemployee
591	mjordan@example.net	line	cultural	letter	\N	corporateemployee
592	jacksongina@example.net	happen	too	doctor	\N	corporateemployee
593	anita86@example.org	teach	later	score	\N	corporateemployee
594	heather32@example.net	style	serious	western	\N	corporateemployee
595	michael14@example.org	seek	particularly	expert	\N	corporateemployee
596	kevinarnold@example.com	firm	safe	without	\N	corporateemployee
597	heidi81@example.net	resource	return	trip	\N	corporateemployee
598	tammy76@example.net	never	baby	control	\N	corporateemployee
599	stevenowens@example.com	some	six	lot	\N	corporateemployee
600	rebeccabarnes@example.org	others	thing	personal	\N	corporateemployee
601	brian16@example.org	foot	learn	alone	policy	engineer
602	hannah24@example.net	best	subject	avoid	rest	engineer
603	meganjohnson@example.com	beyond	democratic	fact	new	engineer
604	mitchellmichelle@example.com	collection	machine	short	section	engineer
605	amyromero@example.com	skill	environment	why	specific	engineer
606	rreynolds@example.org	laugh	service	hot	pattern	engineer
607	mitchell67@example.com	yeah	but	hear	any	engineer
608	schase@example.org	visit	not	traditional	person	engineer
609	zmartinez@example.net	program	evidence	provide	figure	engineer
610	xpearson@example.org	on	maybe	yard	treat	engineer
611	kenneth97@example.org	into	responsibility	scientist	money	engineer
612	christina20@example.net	against	coach	talk	lot	engineer
613	batesjeffery@example.org	degree	do	former	also	engineer
614	tiffany98@example.net	sea	sit	quite	miss	engineer
615	sandersjacqueline@example.com	another	force	my	mother	engineer
616	zwilliams@example.com	yourself	state	right	though	engineer
617	xgeorge@example.com	phone	tend	seven	yourself	engineer
618	johncole@example.com	television	whether	point	help	engineer
619	paulakline@example.com	plant	street	measure	region	engineer
620	jonathan31@example.com	one	land	chance	detail	engineer
621	nathan69@example.com	president	Mr	lawyer	star	engineer
622	brandon95@example.com	grow	change	plan	line	engineer
623	stephanie67@example.net	beautiful	teacher	seek	according	engineer
624	jamie97@example.org	summer	between	concern	worry	engineer
625	nathaniel43@example.com	theory	keep	television	about	engineer
626	jlong@example.com	human	space	little	most	engineer
627	joanna87@example.net	nothing	room	subject	window	engineer
628	matthewroberts@example.net	civil	live	edge	beyond	engineer
629	tiffanydonaldson@example.net	help	true	about	boy	engineer
630	james83@example.org	hear	former	everybody	beautiful	engineer
631	corymartin@example.org	fall	part	century	north	engineer
632	rmcclure@example.net	side	total	effect	might	engineer
633	amber21@example.org	cultural	election	believe	Mr	engineer
634	mwhite@example.net	spend	mention	boy	evidence	engineer
635	henryleah@example.net	process	within	state	toward	engineer
636	meghan01@example.com	crime	better	on	single	engineer
637	glee@example.net	fill	good	step	sing	engineer
638	chrisbrown@example.org	organization	white	somebody	plant	engineer
639	adamcordova@example.org	successful	me	whether	suggest	engineer
640	lopeznicole@example.org	across	morning	open	example	engineer
641	twilliams@example.org	opportunity	difficult	require	suddenly	engineer
642	valerie71@example.net	education	western	red	small	engineer
643	elizabethroy@example.net	difficult	model	subject	couple	engineer
644	mitchelljacqueline@example.net	behind	just	clear	light	engineer
645	davidwright@example.net	chance	wonder	join	lot	engineer
646	tranangela@example.net	every	house	goal	consider	engineer
647	hansenmichael@example.org	discover	mouth	article	no	engineer
648	mooredavid@example.com	high	partner	deal	situation	engineer
649	kholland@example.com	page	woman	girl	indeed	engineer
650	popematthew@example.com	anything	well	describe	special	engineer
651	lewisjonathan@example.org	nation	sit	keep	together	engineer
652	zthompson@example.org	buy	head	thought	these	engineer
653	amberfernandez@example.net	dark	poor	leave	art	engineer
654	cooksandra@example.com	with	fly	instead	of	engineer
655	nthompson@example.com	certain	hear	full	talk	engineer
656	venglish@example.com	investment	traditional	both	fish	engineer
657	michaeltaylor@example.org	next	give	argue	card	engineer
658	ybrown@example.com	study	former	road	operation	engineer
659	heidi61@example.net	become	cup	finally	forget	engineer
660	fchapman@example.org	since	difficult	recent	interesting	engineer
661	raymond34@example.net	support	rather	young	according	engineer
662	ecampbell@example.net	house	collection	value	wrong	engineer
663	evansmelanie@example.org	expect	eight	lay	first	engineer
664	jnolan@example.net	term	white	interest	well	engineer
665	nicole38@example.net	her	end	tax	blue	engineer
666	dsmith@example.net	stop	manager	possible	beat	engineer
667	hicksmatthew@example.org	computer	question	push	by	engineer
668	bairdjesse@example.org	adult	investment	program	last	engineer
669	pamela12@example.org	relate	both	artist	skill	engineer
670	fthompson@example.net	film	word	walk	decade	engineer
671	peter02@example.com	clearly	couple	herself	song	engineer
672	cford@example.org	modern	something	now	natural	engineer
673	rebeccaortiz@example.org	provide	present	bill	total	engineer
674	caseymeagan@example.com	color	test	argue	environment	engineer
675	marydavis@example.net	outside	exactly	large	probably	engineer
676	jadebaker@example.com	under	recognize	hospital	sing	engineer
677	sosabrandi@example.org	administration	walk	spring	others	engineer
678	kjordan@example.net	may	deal	resource	song	engineer
679	evelyn06@example.com	and	those	use	Congress	engineer
680	russellshannon@example.net	around	defense	job	sea	engineer
681	molly09@example.com	surface	event	thank	manage	engineer
682	andrewshaw@example.org	party	ahead	behind	any	engineer
683	evelyn37@example.org	treatment	west	interest	most	engineer
684	margaret88@example.com	we	push	and	position	engineer
685	moorechristopher@example.org	keep	real	treat	because	engineer
686	qsimpson@example.com	site	stuff	fall	study	engineer
687	nicholasbutler@example.org	nation	two	work	go	engineer
688	garyjohnson@example.com	painting	write	baby	clearly	engineer
689	kingram@example.org	cold	home	show	dog	engineer
690	jessica09@example.net	away	nor	hand	prevent	engineer
691	nicholas96@example.org	yourself	floor	western	opportunity	engineer
692	johnstonkara@example.com	shake	method	back	garden	engineer
693	fryelinda@example.org	race	another	music	economic	engineer
694	kennethrosales@example.com	skill	pattern	question	you	engineer
695	carlsonmatthew@example.com	there	beautiful	perform	main	engineer
696	michael98@example.net	affect	speech	watch	thus	engineer
697	hfranklin@example.net	parent	always	phone	hand	engineer
698	mgould@example.net	recently	out	whose	candidate	engineer
699	andre01@example.net	information	take	toward	glass	engineer
700	dorothyjordan@example.net	upon	choice	too	wait	engineer
\.


--
-- Data for Name: relation_23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_23 (supportagent_id, queue) FROM stdin;
701	soldier
702	indeed
703	media
704	else
705	eat
706	management
707	note
708	change
709	allow
710	military
711	feel
712	read
713	toward
714	nothing
715	fill
716	southern
717	small
718	maintain
719	purpose
720	even
721	old
722	event
723	plan
724	care
725	good
726	how
727	watch
728	key
729	accept
730	head
731	baby
732	center
733	drive
734	kind
735	dog
736	buy
737	entire
738	hospital
739	music
740	true
741	yet
742	success
743	statement
744	soon
745	say
746	you
747	season
748	girl
749	something
750	single
751	me
752	could
753	listen
754	east
755	today
756	popular
757	husband
758	course
759	call
760	position
761	whose
762	picture
763	bed
764	design
765	center
766	well
767	campaign
768	thus
769	our
770	site
771	between
772	Congress
773	boy
774	local
775	culture
776	only
777	him
778	end
779	owner
780	be
781	who
782	watch
783	fear
784	generation
785	theory
786	anyone
787	east
788	hit
789	radio
790	mean
791	small
792	structure
793	after
794	summer
795	suddenly
796	crime
797	into
798	sign
799	figure
800	rule
\.


--
-- Data for Name: relation_24; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_24 (fulfillmentassociate_id, email, password_hash, employee_no, shift) FROM stdin;
801	katherine40@example.net	piece	agency	write
802	wbender@example.com	most	along	yet
803	sean46@example.com	wear	feel	with
804	edgarsmith@example.com	fall	item	past
805	tiffany89@example.net	green	manager	remember
806	tiffanymorse@example.org	while	until	condition
807	georgenguyen@example.org	structure	process	answer
808	andersonkelly@example.org	dinner	nice	day
809	bherrera@example.net	various	woman	everyone
810	gholland@example.net	dog	collection	tax
811	carmenosborne@example.org	remember	standard	idea
812	murphyamber@example.net	attorney	day	particularly
813	cgreen@example.com	purpose	again	school
814	lisamurray@example.net	current	certain	trouble
815	cynthiacole@example.org	determine	whole	money
816	warnerpatrick@example.org	keep	turn	phone
817	ybryant@example.net	off	value	draw
818	qortiz@example.org	chance	herself	actually
819	ewilson@example.net	indicate	me	require
820	russell37@example.net	almost	money	season
821	rodgersmichael@example.com	certainly	sometimes	either
822	hstephenson@example.org	throw	great	spend
823	epowers@example.com	reveal	relationship	expert
824	vincent11@example.net	article	baby	yeah
825	diazdanielle@example.org	size	choice	page
826	amberbush@example.net	table	by	anything
827	brian60@example.org	part	fine	game
828	meganconley@example.org	officer	production	message
829	jeffersoncindy@example.org	left	scene	probably
830	branchgary@example.org	black	moment	traditional
831	raymondgross@example.org	development	order	by
832	mark92@example.net	effort	good	available
833	moonveronica@example.net	technology	Mrs	event
834	elizabeth58@example.com	half	popular	still
835	jaclynmorris@example.org	investment	stop	word
836	iellis@example.com	student	coach	in
837	kyle22@example.net	option	spring	society
838	aaroncisneros@example.net	technology	several	source
839	michelle61@example.com	kitchen	floor	wall
840	morrisonjulie@example.net	everyone	since	nation
841	wintersedward@example.com	white	visit	leader
842	mcintoshcynthia@example.org	very	executive	back
843	davissandra@example.net	today	former	thing
844	phillipspaul@example.org	common	professor	give
845	john86@example.org	hospital	prove	first
846	georgeashley@example.com	cover	blood	something
847	mbrown@example.com	ground	indicate	system
848	mitchellparker@example.org	recently	choose	deep
849	kbrooks@example.org	of	party	safe
850	sosarita@example.net	international	board	employee
851	cindyschaefer@example.net	story	government	forward
852	fostergregory@example.org	adult	point	term
853	swilliams@example.org	seven	back	nothing
854	shelley58@example.com	station	American	then
855	bobbynorman@example.net	song	month	long
856	jonesmelanie@example.org	choice	simple	family
857	harrisonlindsey@example.org	physical	whom	owner
858	burnskimberly@example.net	particularly	test	travel
859	amanda86@example.com	never	red	require
860	annkelly@example.net	thank	would	attack
861	kevinmullins@example.com	they	boy	million
862	jasmine93@example.com	meet	how	safe
863	jenniferfoley@example.com	bank	evidence	through
864	taylorsara@example.net	respond	visit	then
865	imoore@example.net	tell	bad	oil
866	elizabethturner@example.com	tree	set	operation
867	ulawrence@example.org	return	air	seek
868	christina76@example.net	less	body	effect
869	rebeccayoung@example.org	happy	need	set
870	thomastanya@example.net	the	nothing	rate
871	morganhernandez@example.org	before	seem	TV
872	yoderpaige@example.com	coach	brother	mother
873	thompsonryan@example.com	something	science	door
874	vgrant@example.net	sea	figure	design
875	ashley75@example.com	work	office	building
876	qedwards@example.net	room	attorney	me
877	ycamacho@example.com	teach	opportunity	officer
878	jimenezjohn@example.net	peace	food	stage
879	weaverandrew@example.com	here	read	herself
880	aliciajackson@example.org	science	black	energy
881	ramirezjean@example.net	quickly	address	data
882	jonathankaufman@example.com	opportunity	school	do
883	jensenerika@example.com	form	these	million
884	emily30@example.org	scene	argue	cell
885	aaron07@example.net	play	more	image
886	coxvalerie@example.org	read	education	base
887	blakecarrie@example.org	must	experience	seat
888	spierce@example.com	science	mind	fear
889	don79@example.com	have	fight	ask
890	wilkinscesar@example.com	begin	career	change
891	codyschwartz@example.org	together	month	relationship
892	ghuerta@example.org	purpose	month	tell
893	crystal66@example.com	age	herself	cold
894	michaelpetty@example.com	entire	back	on
895	gwebb@example.net	try	cultural	national
896	robert23@example.net	water	environmental	institution
897	michaelwright@example.com	nation	scene	who
898	adam60@example.net	push	put	thousand
899	qjimenez@example.org	wall	nation	red
900	brenda12@example.com	much	parent	protect
\.


--
-- Data for Name: relation_25; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_25 (categorymanager_id, email, password_hash, employee_no, department) FROM stdin;
901	melaniefrancis@example.net	ground	participant	card
902	cmiller@example.com	spring	operation	build
903	andradediana@example.org	scene	get	attack
904	shawnalexander@example.net	send	also	sort
905	smithjordan@example.org	seat	city	war
906	qcortez@example.com	baby	think	how
907	deborahgonzalez@example.net	or	throw	subject
908	jallen@example.com	design	right	natural
909	pgray@example.com	individual	entire	local
910	jessica08@example.net	still	draw	tend
911	anthonyaaron@example.com	American	reality	executive
912	iguerrero@example.org	represent	protect	represent
913	silvajustin@example.com	analysis	black	raise
914	ronald68@example.org	carry	plan	determine
915	miranda07@example.net	stand	quite	peace
916	dawnmathis@example.org	upon	political	seek
917	hollyrodriguez@example.org	end	power	fine
918	bushtaylor@example.com	ask	economy	else
919	jasmine32@example.org	get	hand	out
920	gjohnson@example.net	cultural	understand	husband
921	gregoryhall@example.com	something	wide	red
922	jodykirby@example.org	it	speech	sister
923	mary45@example.net	television	friend	end
924	jennifermiranda@example.net	account	any	maintain
925	cristian20@example.com	recent	reach	hear
926	anakeller@example.com	responsibility	painting	situation
927	aharris@example.net	realize	if	either
928	collinssteven@example.net	surface	million	rather
929	velazqueznichole@example.net	property	computer	serious
930	alexisalvarez@example.org	check	another	positive
931	swilson@example.net	part	hair	type
932	sethcrawford@example.org	garden	collection	during
933	christy48@example.net	system	population	compare
934	zterrell@example.com	cut	local	argue
935	luke14@example.org	doctor	push	information
936	parkermaria@example.org	meeting	model	to
937	yesenia34@example.net	but	question	boy
938	farrelljessica@example.net	personal	outside	design
939	adamsjodi@example.net	practice	leave	worry
940	peter10@example.net	either	community	situation
941	wgarcia@example.org	customer	thank	large
942	rebeccawatson@example.net	movie	rise	different
943	mary95@example.com	region	current	audience
944	vspencer@example.net	weight	so	from
945	hopkinsbrian@example.com	strategy	star	three
946	amanda38@example.com	finish	return	little
947	ericksonwillie@example.com	hundred	set	so
948	cscott@example.org	that	chance	key
949	cruzgreg@example.org	seek	need	yeah
950	jenkinschad@example.org	position	begin	pick
951	lisajacobs@example.net	blue	land	fear
952	jgalloway@example.org	never	shoulder	statement
953	silvajennifer@example.net	care	thought	middle
954	myersgrace@example.org	light	partner	successful
955	hoffmanpatrick@example.org	also	oil	probably
956	nelsonvalerie@example.com	feel	do	successful
957	ericcooper@example.net	could	argue	bag
958	darryl40@example.org	until	successful	message
959	estradanicole@example.com	billion	series	candidate
960	vmcfarland@example.net	significant	wish	agency
961	wagnerlisa@example.org	speak	price	one
962	michael59@example.org	down	leave	star
963	williamsrachel@example.com	contain	return	cell
964	frichards@example.org	value	responsibility	all
965	benjaminschmidt@example.org	law	citizen	station
966	brianbean@example.net	miss	really	down
967	pmeadows@example.org	keep	fire	style
968	kimberlyjames@example.net	six	market	save
969	buchananrobert@example.net	feeling	officer	treatment
970	ilong@example.org	kind	bad	really
971	pattersonaudrey@example.net	we	center	bed
972	barbaraadams@example.com	clearly	end	ok
973	mwalters@example.org	responsibility	base	cost
974	denise44@example.net	medical	attorney	assume
975	lmartin@example.org	arm	amount	collection
976	lorijohnson@example.net	certainly	wear	against
977	stephaniebell@example.com	theory	majority	table
978	sherri23@example.net	them	drive	across
979	vherman@example.org	young	design	list
980	youngcarlos@example.com	need	week	require
981	waltersryan@example.com	back	huge	itself
982	donna48@example.com	else	voice	information
983	smithsandra@example.net	around	under	class
984	pricebenjamin@example.com	physical	wall	increase
985	katiesingh@example.com	white	risk	stop
986	qford@example.com	knowledge	term	compare
987	klee@example.com	future	anyone	wide
988	smithkaitlyn@example.com	democratic	war	first
989	chad85@example.net	section	certain	race
990	michellehenry@example.org	environmental	week	three
991	christiecaldwell@example.com	these	start	each
992	peterwilliams@example.com	issue	senior	interview
993	roachcarlos@example.org	group	cold	central
994	mary94@example.org	newspaper	mother	no
995	vwagner@example.com	man	present	board
996	briana32@example.org	yet	improve	we
997	emilyherrera@example.com	prevent	continue	authority
998	jacob22@example.net	Republican	we	spring
999	rebecca22@example.net	office	artist	trial
1000	jason04@example.net	finally	amount	condition
\.


--
-- Data for Name: relation_26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_26 (product_id, variant_id, price_override, barcode, is_active_variant) FROM stdin;
1086	222	1	shake	52
1357	176	432	morning	585
1359	998	145	price	961
521	524	479	receive	504
630	972	842	discussion	152
42	910	262	health	476
1858	602	347	necessary	622
2098	427	242	nothing	850
1429	478	491	on	507
527	193	341	out	197
810	869	343	product	478
685	783	873	sure	709
1165	268	697	hair	561
1396	459	736	man	443
925	796	177	audience	606
663	523	584	outside	839
1782	834	495	else	759
1721	566	261	tree	927
1637	542	513	color	386
1203	535	863	dinner	230
1807	876	316	pay	284
1506	591	390	media	268
1396	614	630	Mrs	86
32	170	968	teacher	843
1427	564	688	dog	590
1053	554	896	bill	613
735	957	453	everyone	489
1892	326	77	traditional	840
386	228	682	industry	934
1000	364	352	note	554
97	559	176	appear	921
1080	651	899	almost	780
1185	601	210	result	212
630	582	652	public	425
1171	994	471	sing	421
1556	697	863	century	30
1794	840	184	organization	130
1348	917	429	each	568
295	178	522	table	122
911	844	598	future	101
566	635	478	drive	183
743	559	91	catch	144
553	418	825	treat	833
1639	196	354	some	862
1997	924	652	loss	790
3	805	475	fill	616
23	479	647	fast	864
1272	105	345	nothing	349
461	468	581	interesting	700
1489	288	404	give	340
479	310	141	note	266
582	151	185	goal	192
1467	882	128	wrong	946
1214	414	175	total	732
1696	355	636	scientist	542
926	408	931	husband	118
1458	372	234	up	14
818	218	705	movie	776
1463	81	30	six	584
1404	363	396	skin	120
968	629	769	interesting	170
389	215	477	science	966
1302	543	186	until	473
1255	496	231	bank	401
578	13	127	life	178
407	240	327	age	324
838	428	484	head	143
663	280	592	among	366
360	554	352	doctor	508
961	290	737	if	298
592	373	883	before	507
617	779	616	letter	807
1352	238	52	common	573
1706	185	835	experience	497
1706	563	71	issue	197
906	190	910	gun	582
523	329	136	author	518
1007	763	53	receive	201
1089	862	230	which	844
1017	894	674	enjoy	230
1393	256	736	big	760
1675	932	530	heart	631
1936	240	863	side	738
1012	388	601	even	681
916	946	678	bag	180
1483	394	516	purpose	160
873	583	542	wonder	131
1189	680	906	spring	171
284	237	481	matter	68
1526	920	61	thought	509
913	457	148	against	518
127	856	402	must	115
627	169	903	our	200
1217	274	640	down	390
1643	44	38	moment	493
2025	991	657	law	83
1970	907	136	however	886
1983	218	866	large	636
575	2	275	story	767
593	243	156	occur	735
\.


--
-- Data for Name: relation_27; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_27 (tag_id, tag_name) FROM stdin;
1	no
2	Democrat
3	big
4	social
5	claim
6	leave
7	example
8	exist
9	exactly
10	lose
11	test
12	address
13	million
14	culture
15	large
16	participant
17	year
18	administration
19	into
20	increase
21	partner
22	not
23	dinner
24	floor
25	mention
26	much
27	particularly
28	day
29	program
30	seem
31	simple
32	nice
33	lay
34	order
35	describe
36	today
37	probably
38	voice
39	pay
40	himself
41	other
42	clear
43	may
44	region
45	democratic
46	into
47	source
48	foot
49	PM
50	system
51	wind
52	loss
53	conference
54	major
55	similar
56	sure
57	coach
58	bar
59	hope
60	whether
61	great
62	try
63	between
64	green
65	boy
66	minute
67	trade
68	week
69	attention
70	agent
71	pass
72	myself
73	your
74	risk
75	their
76	key
77	anyone
78	head
79	include
80	light
81	president
82	owner
83	cup
84	change
85	church
86	myself
87	home
88	ever
89	key
90	issue
91	know
92	policy
93	miss
94	door
95	your
96	walk
97	radio
98	ask
99	seek
100	soldier
\.


--
-- Data for Name: relation_28; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_28 (user_id, address_id, kind, line1, city, state, country, postal_code) FROM stdin;
203	101	general	such	Port Andrea	within	figure	focus
376	758	Mrs	eat	New Latoya	moment	despite	scene
216	906	traditional	usually	Lake Ashleychester	listen	arrive	provide
164	325	chair	there	New Sarah	site	cup	story
328	812	people	president	Greenview	film	believe	finish
267	206	smile	since	East Craigshire	on	property	sound
170	357	board	at	East Larryview	possible	understand	resource
308	749	if	draw	Sanchezmouth	bed	support	really
372	164	away	who	Singhborough	quickly	food	student
113	857	traditional	into	West Natasha	contain	long	page
127	712	common	lot	West Wanda	maybe	spring	whatever
287	403	until	sure	Angelahaven	blue	record	heavy
386	383	resource	nice	East Bethfurt	task	matter	such
356	272	move	goal	Sandersburgh	type	he	another
300	991	financial	everybody	Mcdonaldshire	tough	condition	guy
382	120	home	fall	Williamfort	care	challenge	government
382	629	from	performance	Timothyhaven	throw	represent	exactly
285	753	meeting	structure	Lake Tyler	agree	or	model
196	152	he	forward	New Leslie	science	result	image
342	836	total	region	Lake Jesus	rather	receive	American
290	965	bad	choose	Jordanton	life	face	as
171	539	something	executive	Port Paul	various	although	happy
335	581	accept	choice	South Williamburgh	drop	director	lot
326	230	everything	agent	North Donna	material	probably	type
139	212	send	white	Glenntown	gun	space	police
329	696	would	now	Jessicachester	could	view	weight
339	670	decide	student	West Megan	whose	pull	usually
152	323	approach	against	Barrport	factor	five	represent
288	378	always	clearly	Phillipshaven	third	thank	no
359	5	base	hear	Robertport	friend	environmental	themselves
207	544	region	stock	Emilyberg	everyone	grow	beautiful
396	774	every	available	North Robin	data	evidence	once
110	291	we	guy	Benjaminmouth	especially	understand	value
382	149	garden	outside	Ortizhaven	defense	wall	specific
266	698	present	perform	North Carolineborough	couple	system	address
193	120	one	exist	Port Eduardo	back	others	different
244	589	physical	any	Knighttown	garden	adult	successful
195	637	law	turn	South Mariahland	quality	show	spend
246	782	spend	southern	West Phillipborough	good	kitchen	outside
254	836	situation	growth	Nathanside	glass	degree	simply
293	230	analysis	discuss	South Nicole	two	possible	approach
385	861	establish	exactly	Port William	true	course	heavy
229	226	more	detail	Gillland	newspaper	most	guess
390	422	boy	expert	Nicholaschester	bring	meeting	local
113	800	six	care	Marybury	away	concern	he
181	260	or	history	Christopherborough	smile	mother	development
125	400	those	night	Aliciaton	record	scientist	miss
207	938	stand	finish	New Regina	movement	second	build
173	948	run	sense	Lake Jessicafurt	act	price	believe
377	772	public	road	East Cassandra	now	food	role
136	725	specific	quickly	Anthonyport	across	will	new
194	396	national	present	South Kevinport	audience	you	stuff
237	367	discover	use	Lake Michaelfurt	management	down	foreign
198	917	standard	reduce	Bennettview	TV	themselves	truth
255	359	star	either	Jodiport	eat	under	use
129	290	method	democratic	Jamesbury	term	couple	wind
260	433	song	its	West Elizabeth	those	product	executive
348	806	lay	others	Port Gloria	employee	record	consider
147	444	single	simple	North Nicolemouth	again	everything	industry
136	148	remain	card	North Amychester	why	politics	well
297	810	I	market	East Cynthiaside	house	land	ago
392	611	fine	scientist	East Sandra	race	edge	computer
297	410	thank	join	Austinbury	assume	imagine	contain
272	531	four	continue	Pachecofurt	day	usually	allow
364	33	want	Mr	Jordanland	country	charge	community
287	539	thus	opportunity	East Adam	oil	police	few
255	79	will	point	Lake Natalieside	finish	job	gun
308	15	sit	while	West Elijah	raise	within	east
149	807	happen	respond	Fieldsfurt	natural	fly	cut
361	482	guy	never	West Julieland	including	perhaps	consider
116	177	role	pay	Lydiaberg	social	easy	direction
370	744	agree	list	Port Michael	successful	meet	challenge
325	864	call	cause	Wallstown	democratic	yard	above
217	794	view	cold	West Victoria	into	once	believe
351	862	too	study	Jesseview	hundred	lose	piece
244	26	cause	only	Lindseyland	little	pull	behavior
218	6	why	social	Port John	conference	already	assume
129	226	accept	staff	Olsonbury	range	apply	list
364	323	get	hold	New Marcusstad	yes	attack	against
365	99	through	computer	Stephanieview	front	break	if
268	296	tree	public	Sampsonfort	social	toward	bank
336	977	positive	onto	Stephaniestad	look	sort	everything
186	80	single	whom	Allisonchester	major	rate	debate
106	889	support	event	Davidbury	question	article	almost
363	482	dinner	staff	South Lukeville	brother	career	bad
365	180	safe	also	West Matthewfurt	source	personal	consumer
191	319	focus	job	New Jessicaburgh	professional	sit	school
222	289	subject	quality	Port Georgeburgh	appear	water	or
117	18	listen	perform	South Curtis	produce	player	number
177	568	any	per	Smithchester	believe	break	office
309	142	beyond	improve	Lake Rebecca	know	through	majority
250	744	your	know	East Georgeborough	travel	ok	sign
175	596	share	no	Sandyville	carry	sister	it
133	780	total	wind	Grayberg	professor	system	also
335	952	view	carry	South Christina	foot	medical	reveal
372	102	mention	president	Petersonbury	person	road	strategy
254	366	across	result	Cesarmouth	history	close	place
116	747	position	together	Gilbertfurt	dog	relationship	about
128	444	red	why	East Brittanyland	follow	politics	carry
398	38	particularly	not	Higginsside	like	major	hair
\.


--
-- Data for Name: relation_29; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_29 (user_id, payment_method_id, brand, last4, exp_month, exp_year, is_default) FROM stdin;
177	348	scene	cut	8	980	expert
259	195	manage	voice	398	242	power
351	490	over	event	445	698	work
385	405	decide	her	452	467	only
124	992	check	despite	88	810	issue
352	493	argue	teach	299	498	pretty
234	159	government	plan	690	96	learn
253	999	himself	way	696	670	your
172	408	whether	organization	781	183	seat
391	795	talk	successful	963	188	mean
236	877	leg	build	956	973	another
120	535	camera	explain	942	18	Mrs
317	809	base	tax	790	446	adult
191	187	recognize	evening	533	833	everybody
247	841	catch	hour	470	51	smile
311	880	could	throw	377	337	past
257	146	despite	give	239	648	actually
206	496	newspaper	summer	170	504	claim
345	208	sound	his	584	268	first
189	266	since	claim	465	48	final
354	336	section	performance	77	494	list
128	496	nice	push	50	374	style
139	500	forget	arm	371	19	suddenly
377	940	government	person	202	708	president
279	74	scientist	home	931	79	close
360	872	husband	his	417	421	fund
361	271	end	particularly	702	695	if
165	683	only	crime	277	127	just
398	231	audience	rise	912	756	base
243	486	try	identify	808	142	draw
292	575	family	eight	896	528	interest
178	362	list	exist	245	290	back
248	774	service	such	778	166	strong
126	377	onto	card	778	821	pick
127	222	national	state	406	49	the
349	266	different	else	3	342	general
295	770	place	sound	291	800	sell
395	297	claim	generation	209	306	back
383	970	simply	traditional	710	888	data
152	924	full	image	291	905	inside
332	749	new	machine	455	975	unit
311	794	store	hand	218	210	group
354	392	face	see	39	818	by
202	571	lay	break	656	115	cost
392	397	marriage	election	355	787	seat
316	688	station	people	69	754	science
218	235	glass	attack	649	538	keep
185	745	rest	view	383	801	another
112	718	note	seek	328	999	option
370	850	nothing	minute	559	305	player
230	777	lay	about	285	263	source
133	672	when	recently	386	610	may
190	399	agency	important	791	36	job
186	886	weight	away	626	996	think
343	903	fear	away	40	540	size
321	262	education	card	899	61	save
395	697	song	agree	223	348	kitchen
133	286	coach	firm	985	771	college
396	306	course	similar	99	945	nearly
179	966	most	from	533	699	recently
297	809	know	cell	169	959	everybody
166	455	majority	yard	267	17	process
118	573	clear	short	33	344	despite
284	327	dog	may	55	193	event
114	486	feel	every	235	489	accept
187	675	range	reduce	909	669	consider
243	793	shoulder	light	358	731	I
122	174	memory	budget	734	603	walk
178	691	born	budget	908	359	easy
256	878	you	class	339	71	environmental
309	52	trade	western	125	137	might
261	210	candidate	center	571	337	shoulder
272	478	keep	animal	388	319	herself
206	800	stock	deal	791	468	simply
275	382	form	ever	488	561	word
140	642	office	fear	490	687	baby
128	979	change	course	858	413	employee
242	40	degree	begin	572	563	raise
382	664	billion	occur	134	335	draw
150	852	series	bed	423	3	site
379	126	might	so	63	978	day
380	256	view	social	210	699	exactly
227	758	sit	treat	658	392	ten
350	754	cold	quality	540	756	family
107	668	coach	day	972	700	agree
222	139	involve	describe	48	891	tree
308	876	mission	play	935	733	very
316	608	perform	yourself	911	396	meeting
365	356	attorney	offer	997	461	such
389	39	power	fast	829	42	know
263	86	guess	inside	890	763	prepare
236	155	different	arm	56	983	wrong
214	809	establish	watch	101	11	fund
110	790	thank	heart	914	325	analysis
325	562	enjoy	team	538	936	network
321	203	model	since	475	463	case
125	409	leader	address	14	56	ahead
354	210	summer	line	296	707	no
326	883	store	small	280	327	well
330	599	stock	election	871	577	happen
\.


--
-- Data for Name: relation_3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_3 (physicalproduct_id, sku, product_name, base_price, is_active, quantity, dimensions, energy_rating, role, warranty_years, productimage, pricehistory) FROM stdin;
103	reach	argue	747	77	23	exactly	\N	physicalproduct	\N	\N	\N
104	including	ahead	298	769	812	learn	\N	physicalproduct	\N	\N	\N
105	when	bank	506	481	884	understand	\N	physicalproduct	\N	\N	\N
106	term	later	104	514	797	history	\N	physicalproduct	\N	\N	\N
107	TV	why	79	522	973	source	\N	physicalproduct	\N	\N	\N
108	choose	hand	184	795	154	marriage	\N	physicalproduct	\N	\N	\N
109	general	position	842	887	328	wall	\N	physicalproduct	\N	\N	\N
110	thought	foot	110	727	527	quite	\N	physicalproduct	\N	\N	\N
112	picture	movie	559	933	740	actually	\N	physicalproduct	\N	\N	\N
114	window	level	183	307	444	media	\N	physicalproduct	\N	\N	\N
115	east	never	50	732	883	voice	\N	physicalproduct	\N	\N	\N
116	big	treat	259	797	66	responsibility	\N	physicalproduct	\N	\N	\N
118	charge	voice	555	450	872	sing	\N	physicalproduct	\N	\N	\N
119	rate	mention	12	406	857	administration	\N	physicalproduct	\N	\N	\N
120	pull	ok	176	265	498	smile	\N	physicalproduct	\N	\N	\N
121	certainly	behind	813	662	956	point	\N	physicalproduct	\N	\N	\N
122	almost	positive	1000	585	20	along	\N	physicalproduct	\N	\N	\N
123	dinner	fish	709	364	594	glass	\N	physicalproduct	\N	\N	\N
124	task	occur	608	129	142	go	\N	physicalproduct	\N	\N	\N
125	war	among	849	284	408	though	\N	physicalproduct	\N	\N	\N
126	reality	guy	177	628	92	energy	\N	physicalproduct	\N	\N	\N
127	news	west	498	8	182	unit	\N	physicalproduct	\N	\N	\N
128	idea	light	513	915	665	away	\N	physicalproduct	\N	\N	\N
129	so	can	953	703	655	knowledge	\N	physicalproduct	\N	\N	\N
130	customer	region	245	321	507	large	\N	physicalproduct	\N	\N	\N
131	poor	ability	980	231	730	sense	\N	physicalproduct	\N	\N	\N
132	else	figure	346	574	626	mouth	\N	physicalproduct	\N	\N	\N
133	give	understand	996	662	225	want	\N	physicalproduct	\N	\N	\N
134	since	call	944	74	782	yet	\N	physicalproduct	\N	\N	\N
135	risk	year	164	524	785	political	\N	physicalproduct	\N	\N	\N
136	easy	probably	320	306	710	task	\N	physicalproduct	\N	\N	\N
137	act	fall	870	566	381	financial	\N	physicalproduct	\N	\N	\N
138	among	behavior	719	719	755	alone	\N	physicalproduct	\N	\N	\N
139	determine	situation	609	88	877	remain	\N	physicalproduct	\N	\N	\N
140	boy	moment	919	621	984	wife	\N	physicalproduct	\N	\N	\N
142	section	hard	223	965	584	prevent	\N	physicalproduct	\N	\N	\N
143	coach	sister	507	698	404	small	\N	physicalproduct	\N	\N	\N
144	heart	everything	394	528	866	marriage	\N	physicalproduct	\N	\N	\N
145	writer	husband	558	748	42	hour	\N	physicalproduct	\N	\N	\N
146	physical	determine	828	262	644	into	\N	physicalproduct	\N	\N	\N
147	smile	lose	274	755	935	soon	\N	physicalproduct	\N	\N	\N
148	small	add	983	999	143	good	\N	physicalproduct	\N	\N	\N
150	officer	community	995	872	392	long	\N	physicalproduct	\N	\N	\N
151	catch	civil	407	169	932	collection	\N	physicalproduct	\N	\N	\N
152	woman	a	449	130	638	nice	\N	physicalproduct	\N	\N	\N
153	herself	effect	983	218	123	close	\N	physicalproduct	\N	\N	\N
154	candidate	care	616	547	419	per	\N	physicalproduct	\N	\N	\N
155	accept	education	677	303	285	place	\N	physicalproduct	\N	\N	\N
157	truth	become	983	195	542	that	\N	physicalproduct	\N	\N	\N
158	some	record	593	22	32	them	\N	physicalproduct	\N	\N	\N
159	involve	back	856	267	212	hard	\N	physicalproduct	\N	\N	\N
160	take	Congress	292	152	556	meet	\N	physicalproduct	\N	\N	\N
161	we	responsibility	280	319	600	seem	\N	physicalproduct	\N	\N	\N
162	lawyer	thousand	853	700	458	environmental	\N	physicalproduct	\N	\N	\N
163	style	season	559	366	503	somebody	\N	physicalproduct	\N	\N	\N
164	what	take	877	125	788	real	\N	physicalproduct	\N	\N	\N
165	wind	why	585	901	393	head	\N	physicalproduct	\N	\N	\N
166	themselves	natural	291	831	111	need	\N	physicalproduct	\N	\N	\N
167	traditional	officer	121	583	766	speak	\N	physicalproduct	\N	\N	\N
168	green	partner	559	304	989	physical	\N	physicalproduct	\N	\N	\N
169	industry	mission	77	513	383	them	\N	physicalproduct	\N	\N	\N
170	camera	toward	448	516	694	glass	\N	physicalproduct	\N	\N	\N
171	produce	source	777	542	332	less	\N	physicalproduct	\N	\N	\N
172	amount	thought	127	453	736	special	\N	physicalproduct	\N	\N	\N
173	develop	financial	359	313	553	every	\N	physicalproduct	\N	\N	\N
174	short	I	348	802	749	sometimes	\N	physicalproduct	\N	\N	\N
175	knowledge	way	116	664	940	space	\N	physicalproduct	\N	\N	\N
176	fear	two	392	209	571	available	\N	physicalproduct	\N	\N	\N
177	should	official	285	651	613	culture	\N	physicalproduct	\N	\N	\N
178	effort	although	946	473	616	present	\N	physicalproduct	\N	\N	\N
179	indicate	popular	960	763	730	form	\N	physicalproduct	\N	\N	\N
180	find	weight	720	175	461	pay	\N	physicalproduct	\N	\N	\N
181	spend	consider	369	539	4	rich	\N	physicalproduct	\N	\N	\N
182	great	recognize	594	437	994	cover	\N	physicalproduct	\N	\N	\N
183	hard	country	345	882	637	trade	\N	physicalproduct	\N	\N	\N
184	improve	section	505	764	254	message	\N	physicalproduct	\N	\N	\N
185	heart	speech	645	22	417	well	\N	physicalproduct	\N	\N	\N
186	discussion	song	649	798	960	well	\N	physicalproduct	\N	\N	\N
187	huge	water	802	277	867	play	\N	physicalproduct	\N	\N	\N
113	institution	art	799	324	841	health	\N	physicalproduct	\N	\N	[{"price": "102", "ends_at": "enter", "price_id": "140", "starts_at": "could"}]
188	national	two	786	76	835	change	\N	physicalproduct	\N	\N	\N
189	expect	people	358	935	271	right	\N	physicalproduct	\N	\N	\N
190	serve	or	895	702	558	black	\N	physicalproduct	\N	\N	\N
191	staff	smile	156	474	853	operation	\N	physicalproduct	\N	\N	\N
192	develop	respond	497	174	479	different	\N	physicalproduct	\N	\N	\N
193	offer	born	278	523	101	name	\N	physicalproduct	\N	\N	\N
194	billion	great	72	364	69	sea	\N	physicalproduct	\N	\N	\N
195	interest	seem	21	169	520	but	\N	physicalproduct	\N	\N	\N
197	course	realize	620	312	214	factor	\N	physicalproduct	\N	\N	\N
198	someone	seat	243	908	342	represent	\N	physicalproduct	\N	\N	\N
199	wife	its	71	77	716	quite	\N	physicalproduct	\N	\N	\N
200	international	significant	480	524	572	me	\N	physicalproduct	\N	\N	\N
1201	who	election	802	144	451	support	senior	appliance	\N	\N	\N
1202	yeah	foreign	159	924	400	space	suffer	appliance	\N	\N	\N
1203	ahead	nation	643	690	64	point	nature	appliance	\N	\N	\N
1204	themselves	in	726	232	683	common	the	appliance	\N	\N	\N
1205	agree	field	293	607	794	society	cultural	appliance	\N	\N	\N
1207	forward	successful	677	844	633	world	read	appliance	\N	\N	\N
1208	book	huge	925	687	861	wonder	list	appliance	\N	\N	\N
1209	another	traditional	76	1	877	put	and	appliance	\N	\N	\N
1210	crime	specific	683	77	837	small	apply	appliance	\N	\N	\N
1211	main	media	899	882	135	rise	by	appliance	\N	\N	\N
1212	nothing	idea	63	214	879	room	land	appliance	\N	\N	\N
1213	police	reduce	346	699	286	region	little	appliance	\N	\N	\N
1214	night	modern	206	846	703	standard	season	appliance	\N	\N	\N
1215	friend	where	420	83	363	water	church	appliance	\N	\N	\N
1216	particularly	democratic	433	462	852	eye	food	appliance	\N	\N	\N
1218	short	blue	927	677	58	nation	news	appliance	\N	\N	\N
1219	high	up	418	786	929	deal	hard	appliance	\N	\N	\N
1220	lay	responsibility	207	70	889	life	else	appliance	\N	\N	\N
1221	quality	dream	467	910	527	direction	action	appliance	\N	\N	\N
1222	idea	almost	335	717	824	example	total	appliance	\N	\N	\N
1223	doctor	research	675	318	808	laugh	finish	appliance	\N	\N	\N
1224	staff	end	464	54	45	hear	election	appliance	\N	\N	\N
1225	how	public	164	783	25	everyone	east	appliance	\N	\N	\N
1226	or	senior	25	865	152	attorney	bit	appliance	\N	\N	\N
1227	interview	factor	110	240	263	war	meet	appliance	\N	\N	\N
1228	can	year	512	197	945	thus	shoulder	appliance	\N	\N	\N
1230	thank	training	659	864	242	north	marriage	appliance	\N	\N	\N
1231	factor	surface	787	696	180	between	this	appliance	\N	\N	\N
1232	field	reveal	607	632	472	red	card	appliance	\N	\N	\N
1233	ground	top	4	960	836	include	argue	appliance	\N	\N	\N
1234	young	administration	582	375	668	protect	provide	appliance	\N	\N	\N
1235	day	value	277	836	98	so	fight	appliance	\N	\N	\N
1237	catch	plan	559	139	945	others	not	appliance	\N	\N	\N
1238	staff	plan	143	305	847	election	loss	appliance	\N	\N	\N
1239	against	north	307	536	103	hair	kid	appliance	\N	\N	\N
1240	economic	quality	451	410	656	people	allow	appliance	\N	\N	\N
1241	method	my	32	988	832	stay	cause	appliance	\N	\N	\N
1242	throughout	clear	489	989	658	difficult	student	appliance	\N	\N	\N
1243	man	behind	898	301	711	mouth	federal	appliance	\N	\N	\N
1244	network	picture	481	378	185	fish	local	appliance	\N	\N	\N
1245	buy	necessary	489	893	562	sound	floor	appliance	\N	\N	\N
1246	clearly	front	532	756	806	religious	such	appliance	\N	\N	\N
1247	candidate	realize	142	444	716	picture	PM	appliance	\N	\N	\N
1248	provide	vote	735	374	504	sort	nor	appliance	\N	\N	\N
1249	personal	positive	50	252	851	big	town	appliance	\N	\N	\N
1250	stop	various	992	372	69	thought	admit	appliance	\N	\N	\N
1251	material	physical	218	443	340	total	cover	appliance	\N	\N	\N
1252	protect	according	461	453	838	may	resource	appliance	\N	\N	\N
1253	suggest	minute	902	673	610	carry	hair	appliance	\N	\N	\N
1254	you	toward	381	41	209	another	event	appliance	\N	\N	\N
1255	arm	true	134	847	954	accept	city	appliance	\N	\N	\N
1256	tell	safe	807	779	905	think	ten	appliance	\N	\N	\N
1257	before	upon	859	205	336	television	you	appliance	\N	\N	\N
1258	simple	south	855	6	891	officer	education	appliance	\N	\N	\N
1259	season	minute	204	964	736	agent	month	appliance	\N	\N	\N
1260	free	space	200	311	835	common	help	appliance	\N	\N	\N
1261	goal	sea	676	798	384	hospital	affect	appliance	\N	\N	\N
1262	woman	address	29	695	913	into	its	appliance	\N	\N	\N
1263	center	case	611	285	313	range	worry	appliance	\N	\N	\N
1264	site	support	818	682	718	continue	film	appliance	\N	\N	\N
1265	appear	story	903	16	357	trade	work	appliance	\N	\N	\N
1267	run	ability	863	503	467	yes	leg	appliance	\N	\N	\N
1268	rate	in	995	232	614	enjoy	do	appliance	\N	\N	\N
1269	campaign	officer	64	85	248	tree	low	appliance	\N	\N	\N
1270	nice	pull	203	438	144	their	seven	appliance	\N	\N	\N
1271	kitchen	particular	411	602	361	network	start	appliance	\N	\N	\N
1273	hard	condition	821	871	848	reach	yeah	appliance	\N	\N	\N
1274	special	table	295	720	382	hundred	six	appliance	\N	\N	\N
1206	she	large	959	339	157	weight	two	appliance	\N	\N	[{"price": "620", "ends_at": "market", "price_id": "288", "starts_at": "born"}]
1275	six	good	995	947	384	American	upon	appliance	\N	\N	\N
1276	discuss	area	955	876	118	allow	day	appliance	\N	\N	\N
1277	process	office	309	981	280	American	firm	appliance	\N	\N	\N
1278	strong	nothing	686	864	780	hundred	the	appliance	\N	\N	\N
1279	sometimes	once	284	54	504	nice	government	appliance	\N	\N	\N
1280	friend	beautiful	855	722	439	about	sign	appliance	\N	\N	\N
1281	together	box	596	906	576	general	break	appliance	\N	\N	\N
1282	hard	new	175	524	43	media	population	appliance	\N	\N	\N
1284	against	then	759	115	628	concern	owner	appliance	\N	\N	\N
1285	herself	full	431	432	580	environment	people	appliance	\N	\N	\N
1286	care	president	622	743	133	but	must	appliance	\N	\N	\N
1287	such	teach	265	246	720	hold	eye	appliance	\N	\N	\N
1289	voice	herself	841	436	18	across	provide	appliance	\N	\N	\N
1290	stock	age	313	523	142	week	suddenly	appliance	\N	\N	\N
1291	now	instead	422	38	479	project	citizen	appliance	\N	\N	\N
1293	big	I	397	109	706	whole	politics	appliance	\N	\N	\N
1294	pressure	statement	424	475	111	message	pick	appliance	\N	\N	\N
1295	pretty	perform	832	888	421	imagine	toward	appliance	\N	\N	\N
1297	level	eye	299	266	334	opportunity	executive	appliance	\N	\N	\N
1298	war	far	144	557	57	high	conference	appliance	\N	\N	\N
1299	per	amount	324	760	100	far	address	appliance	\N	\N	\N
1300	many	house	310	762	423	save	power	appliance	\N	\N	\N
1301	century	friend	82	999	537	air	two	kitchenappliance	933	\N	\N
1302	also	including	997	534	65	stay	agency	kitchenappliance	375	\N	\N
1303	run	shake	946	644	849	through	money	kitchenappliance	801	\N	\N
1305	provide	their	289	511	998	lay	course	kitchenappliance	543	\N	\N
1306	both	any	139	19	648	generation	cold	kitchenappliance	905	\N	\N
1307	than	media	991	211	624	likely	again	kitchenappliance	492	\N	\N
1308	stage	seem	528	152	788	cup	describe	kitchenappliance	929	\N	\N
1309	industry	ask	720	136	435	many	discover	kitchenappliance	77	\N	\N
1310	adult	Mrs	365	654	759	scientist	court	kitchenappliance	702	\N	\N
1311	instead	lot	258	741	370	central	ask	kitchenappliance	955	\N	\N
1312	series	cup	318	417	409	evening	early	kitchenappliance	449	\N	\N
1313	consumer	institution	378	334	907	far	before	kitchenappliance	156	\N	\N
1315	why	manage	653	921	711	add	main	kitchenappliance	438	\N	\N
1316	live	daughter	984	592	483	sell	feel	kitchenappliance	302	\N	\N
1317	matter	open	544	825	506	industry	read	kitchenappliance	507	\N	\N
1318	speak	provide	135	458	149	too	end	kitchenappliance	978	\N	\N
1319	window	local	866	155	898	discussion	like	kitchenappliance	342	\N	\N
1320	deal	gun	799	72	700	organization	board	kitchenappliance	175	\N	\N
1321	can	share	812	431	641	discuss	success	kitchenappliance	312	\N	\N
1322	blue	ever	277	227	632	book	find	kitchenappliance	877	\N	\N
1323	they	mean	672	492	367	bag	include	kitchenappliance	852	\N	\N
1324	be	pretty	270	498	737	community	sea	kitchenappliance	471	\N	\N
1325	case	other	838	47	438	loss	state	kitchenappliance	500	\N	\N
1326	factor	beat	543	154	330	too	serve	kitchenappliance	211	\N	\N
1327	eat	option	754	391	125	year	a	kitchenappliance	804	\N	\N
1328	ok	thousand	909	915	330	where	agent	kitchenappliance	481	\N	\N
1329	yeah	interview	644	534	819	south	focus	kitchenappliance	887	\N	\N
1330	by	least	944	539	159	country	member	kitchenappliance	863	\N	\N
1331	positive	material	160	872	63	take	ahead	kitchenappliance	722	\N	\N
1332	article	everyone	409	343	660	office	war	kitchenappliance	500	\N	\N
1333	campaign	ago	297	38	447	guy	themselves	kitchenappliance	220	\N	\N
1334	design	probably	28	972	590	pressure	available	kitchenappliance	415	\N	\N
1335	simple	seat	832	299	253	follow	anything	kitchenappliance	847	\N	\N
1336	focus	become	443	359	886	business	police	kitchenappliance	913	\N	\N
1337	fear	worker	333	844	698	guess	wish	kitchenappliance	124	\N	\N
1338	out	sense	692	381	35	though	yourself	kitchenappliance	209	\N	\N
1339	number	hard	743	602	112	everything	job	kitchenappliance	18	\N	\N
1341	away	middle	409	922	472	sister	population	kitchenappliance	560	\N	\N
1342	create	her	287	382	148	study	three	kitchenappliance	60	\N	\N
1343	issue	indeed	107	388	910	let	let	kitchenappliance	942	\N	\N
1344	against	church	321	912	8	still	lose	kitchenappliance	645	\N	\N
1345	great	big	241	140	322	staff	order	kitchenappliance	209	\N	\N
1346	different	various	497	887	176	will	kitchen	kitchenappliance	353	\N	\N
1347	grow	focus	225	664	788	put	quickly	kitchenappliance	630	\N	\N
1348	mission	agency	971	63	619	quality	occur	kitchenappliance	813	\N	\N
1349	save	until	283	688	694	drive	animal	kitchenappliance	473	\N	\N
1350	discussion	forward	482	374	438	manager	name	kitchenappliance	70	\N	\N
1351	concern	less	997	965	231	card	over	kitchenappliance	964	\N	\N
1352	serve	suggest	57	333	107	radio	investment	kitchenappliance	559	\N	\N
1353	song	want	733	711	512	thing	instead	kitchenappliance	146	\N	\N
1354	doctor	cultural	928	208	71	what	later	kitchenappliance	509	\N	\N
1355	safe	education	906	499	480	late	herself	kitchenappliance	477	\N	\N
1292	although	join	875	921	531	population	believe	appliance	\N	\N	[{"price": "164", "ends_at": "pull", "price_id": "660", "starts_at": "five"}]
1356	play	character	557	83	505	memory	east	kitchenappliance	746	\N	\N
1357	group	hand	560	859	661	sure	candidate	kitchenappliance	725	\N	\N
1359	consumer	style	427	96	761	former	trial	kitchenappliance	936	\N	\N
1360	executive	sense	928	835	392	energy	true	kitchenappliance	434	\N	\N
1361	movie	artist	942	751	571	inside	yeah	kitchenappliance	970	\N	\N
1362	opportunity	speak	151	4	574	wish	audience	kitchenappliance	958	\N	\N
1363	everything	answer	850	104	84	about	case	kitchenappliance	128	\N	\N
1364	rich	public	694	597	573	hope	bank	kitchenappliance	427	\N	\N
1365	painting	off	700	405	77	be	create	kitchenappliance	880	\N	\N
1366	heavy	next	843	869	871	including	prevent	kitchenappliance	308	\N	\N
1367	bad	manager	762	798	447	well	part	kitchenappliance	408	\N	\N
1368	voice	senior	638	558	623	piece	position	kitchenappliance	469	\N	\N
1369	seat	public	619	490	397	concern	live	kitchenappliance	341	\N	\N
1370	whole	rate	285	642	851	outside	finish	kitchenappliance	272	\N	\N
1371	likely	chair	675	45	97	score	method	kitchenappliance	750	\N	\N
1372	quite	fast	675	37	5	term	experience	kitchenappliance	347	\N	\N
1373	value	eat	43	166	432	model	she	kitchenappliance	634	\N	\N
1374	foot	police	18	442	563	size	training	kitchenappliance	126	\N	\N
1375	star	realize	894	696	405	series	after	kitchenappliance	29	\N	\N
1376	work	when	140	246	990	history	employee	kitchenappliance	665	\N	\N
1379	say	guess	145	778	150	financial	decade	kitchenappliance	744	\N	\N
1380	save	get	916	875	204	stop	speech	kitchenappliance	853	\N	\N
1382	these	glass	373	481	649	quality	head	kitchenappliance	544	\N	\N
1383	hotel	manager	1	431	917	director	down	kitchenappliance	728	\N	\N
1384	everything	first	389	849	879	development	program	kitchenappliance	634	\N	\N
1385	third	fill	959	965	28	song	senior	kitchenappliance	112	\N	\N
1386	outside	top	827	526	879	its	response	kitchenappliance	439	\N	\N
1387	drop	recent	264	133	905	go	have	kitchenappliance	582	\N	\N
1388	service	conference	888	781	561	job	lay	kitchenappliance	258	\N	\N
1389	how	such	919	125	898	group	either	kitchenappliance	729	\N	\N
1390	contain	clearly	359	415	453	major	because	kitchenappliance	432	\N	\N
1391	friend	security	940	693	519	hundred	American	kitchenappliance	512	\N	\N
1392	officer	test	386	550	29	Mrs	peace	kitchenappliance	848	\N	\N
1393	western	run	500	870	331	moment	clearly	kitchenappliance	106	\N	\N
1394	garden	return	21	359	79	themselves	large	kitchenappliance	710	\N	\N
1395	fly	big	487	126	237	computer	whose	kitchenappliance	471	\N	\N
1396	start	mission	914	759	78	security	official	kitchenappliance	644	\N	\N
1398	arrive	seven	239	45	300	go	successful	kitchenappliance	557	\N	\N
1399	actually	easy	568	928	465	full	wonder	kitchenappliance	842	\N	\N
1400	west	upon	252	12	312	cell	present	kitchenappliance	153	\N	\N
1401	admit	approach	204	202	186	behavior	\N	apparel	\N	\N	\N
1403	power	interesting	402	643	817	industry	\N	apparel	\N	\N	\N
1405	drug	improve	912	958	408	industry	\N	apparel	\N	\N	\N
1406	believe	able	920	833	977	call	\N	apparel	\N	\N	\N
1407	black	affect	619	366	237	interesting	\N	apparel	\N	\N	\N
1408	teach	not	810	853	554	also	\N	apparel	\N	\N	\N
1410	officer	film	948	396	153	tell	\N	apparel	\N	\N	\N
1413	senior	middle	219	642	7	read	\N	apparel	\N	\N	\N
1414	much	ago	952	1000	664	whole	\N	apparel	\N	\N	\N
1415	goal	people	879	471	292	rest	\N	apparel	\N	\N	\N
1416	green	also	537	772	936	necessary	\N	apparel	\N	\N	\N
1417	high	arrive	767	80	619	form	\N	apparel	\N	\N	\N
1418	prove	management	874	208	969	out	\N	apparel	\N	\N	\N
1419	campaign	research	910	32	447	instead	\N	apparel	\N	\N	\N
1420	particularly	heavy	176	451	975	time	\N	apparel	\N	\N	\N
1421	sort	have	54	458	634	deep	\N	apparel	\N	\N	\N
1422	candidate	toward	725	294	593	where	\N	apparel	\N	\N	\N
1423	interview	lose	995	557	968	daughter	\N	apparel	\N	\N	\N
1424	million	write	250	117	464	still	\N	apparel	\N	\N	\N
1425	official	reality	236	527	325	me	\N	apparel	\N	\N	\N
1426	citizen	firm	687	314	959	institution	\N	apparel	\N	\N	\N
1427	green	top	273	656	430	enter	\N	apparel	\N	\N	\N
1428	break	audience	118	19	979	wrong	\N	apparel	\N	\N	\N
1429	soon	may	937	380	514	do	\N	apparel	\N	\N	\N
1430	role	five	59	336	163	large	\N	apparel	\N	\N	\N
1431	short	music	36	31	268	road	\N	apparel	\N	\N	\N
1432	civil	serve	32	743	299	his	\N	apparel	\N	\N	\N
1433	never	stage	738	740	613	project	\N	apparel	\N	\N	\N
1434	turn	nice	346	602	92	unit	\N	apparel	\N	\N	\N
1435	nor	million	180	360	736	ahead	\N	apparel	\N	\N	\N
1436	much	less	805	379	148	join	\N	apparel	\N	\N	\N
1437	me	down	199	937	473	energy	\N	apparel	\N	\N	\N
1438	still	join	459	356	630	better	\N	apparel	\N	\N	\N
1440	close	report	91	749	320	conference	\N	apparel	\N	\N	\N
1439	improve	onto	253	239	98	trial	\N	apparel	\N	\N	[{"price": "74", "ends_at": "social", "price_id": "785", "starts_at": "according"}]
1402	development	often	74	263	969	lawyer	\N	apparel	\N	\N	[{"price": "777", "ends_at": "political", "price_id": "398", "starts_at": "charge"}]
1381	expert	possible	973	218	502	organization	environment	kitchenappliance	807	\N	[{"price": "202", "ends_at": "let", "price_id": "230", "starts_at": "ready"}]
1441	we	them	84	125	602	certainly	\N	apparel	\N	\N	\N
1442	science	leave	946	256	570	wife	\N	apparel	\N	\N	\N
1443	it	even	793	905	936	industry	\N	apparel	\N	\N	\N
1444	million	talk	829	932	128	southern	\N	apparel	\N	\N	\N
1446	act	summer	969	140	794	capital	\N	apparel	\N	\N	\N
1447	voice	final	856	82	445	language	\N	apparel	\N	\N	\N
1448	concern	start	391	158	585	always	\N	apparel	\N	\N	\N
1449	detail	response	948	309	263	although	\N	apparel	\N	\N	\N
1450	risk	direction	880	396	121	fish	\N	apparel	\N	\N	\N
1451	color	onto	912	676	369	rest	\N	apparel	\N	\N	\N
1452	air	particular	494	675	920	control	\N	apparel	\N	\N	\N
1454	matter	president	154	643	275	total	\N	apparel	\N	\N	\N
1455	part	strategy	976	653	201	American	\N	apparel	\N	\N	\N
1456	stock	meeting	949	677	413	family	\N	apparel	\N	\N	\N
1457	decision	dream	330	828	111	economy	\N	apparel	\N	\N	\N
1458	contain	across	209	951	383	bed	\N	apparel	\N	\N	\N
1459	owner	several	647	333	578	more	\N	apparel	\N	\N	\N
1460	for	democratic	57	727	470	daughter	\N	apparel	\N	\N	\N
1461	near	dark	466	511	522	enjoy	\N	apparel	\N	\N	\N
1462	board	assume	822	880	285	here	\N	apparel	\N	\N	\N
1463	up	person	631	160	291	become	\N	apparel	\N	\N	\N
1464	difficult	know	996	326	229	nothing	\N	apparel	\N	\N	\N
1465	authority	hand	321	202	778	although	\N	apparel	\N	\N	\N
1466	to	city	875	426	217	return	\N	apparel	\N	\N	\N
1467	black	end	799	137	525	poor	\N	apparel	\N	\N	\N
1469	name	bar	143	404	355	close	\N	apparel	\N	\N	\N
1470	late	growth	617	150	750	side	\N	apparel	\N	\N	\N
1472	factor	become	773	988	205	interest	\N	apparel	\N	\N	\N
1473	color	identify	485	388	791	ball	\N	apparel	\N	\N	\N
1474	think	outside	259	571	993	claim	\N	apparel	\N	\N	\N
1478	six	remain	102	417	117	group	\N	apparel	\N	\N	\N
1479	table	worry	414	936	55	turn	\N	apparel	\N	\N	\N
1480	what	color	84	962	578	be	\N	apparel	\N	\N	\N
1481	its	important	228	925	346	nation	\N	apparel	\N	\N	\N
1482	this	especially	626	696	676	establish	\N	apparel	\N	\N	\N
1483	that	line	856	365	731	official	\N	apparel	\N	\N	\N
1484	least	market	248	420	141	against	\N	apparel	\N	\N	\N
1485	industry	century	700	942	411	site	\N	apparel	\N	\N	\N
1486	fine	write	253	193	582	contain	\N	apparel	\N	\N	\N
1487	wonder	just	581	348	192	half	\N	apparel	\N	\N	\N
1488	easy	dark	925	790	214	training	\N	apparel	\N	\N	\N
1489	of	chance	54	952	526	event	\N	apparel	\N	\N	\N
1490	image	community	884	550	775	similar	\N	apparel	\N	\N	\N
1491	natural	include	358	676	725	official	\N	apparel	\N	\N	\N
1492	whom	red	939	234	359	reason	\N	apparel	\N	\N	\N
1493	religious	save	74	231	930	kitchen	\N	apparel	\N	\N	\N
1494	time	market	132	366	642	mean	\N	apparel	\N	\N	\N
1495	begin	direction	95	475	528	partner	\N	apparel	\N	\N	\N
1496	interest	school	387	797	270	true	\N	apparel	\N	\N	\N
1497	PM	environmental	469	479	681	impact	\N	apparel	\N	\N	\N
1498	want	beyond	270	721	967	place	\N	apparel	\N	\N	\N
1499	bag	safe	804	964	541	crime	\N	apparel	\N	\N	\N
1500	form	clearly	434	948	243	lawyer	\N	apparel	\N	\N	\N
1501	fall	he	721	477	824	send	\N	clothing	\N	\N	\N
1502	change	need	452	533	771	hold	\N	clothing	\N	\N	\N
1503	standard	several	149	826	736	carry	\N	clothing	\N	\N	\N
1504	serve	crime	806	709	102	better	\N	clothing	\N	\N	\N
1505	our	agency	280	374	230	break	\N	clothing	\N	\N	\N
1506	purpose	dream	986	456	367	lose	\N	clothing	\N	\N	\N
1507	theory	material	855	716	40	time	\N	clothing	\N	\N	\N
1508	avoid	trouble	399	545	362	car	\N	clothing	\N	\N	\N
1509	if	camera	678	835	865	network	\N	clothing	\N	\N	\N
1510	husband	wife	310	522	267	budget	\N	clothing	\N	\N	\N
1511	another	century	85	55	107	science	\N	clothing	\N	\N	\N
1512	change	expert	761	318	942	agency	\N	clothing	\N	\N	\N
1514	bad	parent	252	286	95	phone	\N	clothing	\N	\N	\N
1515	fight	short	402	697	519	dark	\N	clothing	\N	\N	\N
1516	gun	manager	300	620	498	shoulder	\N	clothing	\N	\N	\N
1517	ball	check	423	230	718	east	\N	clothing	\N	\N	\N
1518	adult	baby	494	125	528	discussion	\N	clothing	\N	\N	\N
1519	white	scene	867	583	769	marriage	\N	clothing	\N	\N	\N
1520	cultural	artist	33	84	331	central	\N	clothing	\N	\N	\N
1521	group	either	881	454	93	talk	\N	clothing	\N	\N	\N
1522	whose	everything	906	34	452	economy	\N	clothing	\N	\N	\N
1523	allow	leg	88	703	483	thought	\N	clothing	\N	\N	\N
1524	return	environment	813	905	52	find	\N	clothing	\N	\N	\N
1525	pull	media	507	129	707	example	\N	clothing	\N	\N	\N
1526	together	sell	447	491	302	nice	\N	clothing	\N	\N	\N
1527	threat	success	622	257	558	feeling	\N	clothing	\N	\N	\N
1528	few	big	612	915	94	score	\N	clothing	\N	\N	\N
1529	size	we	35	239	965	room	\N	clothing	\N	\N	\N
1530	risk	himself	877	23	770	at	\N	clothing	\N	\N	\N
1531	allow	surface	43	136	342	care	\N	clothing	\N	\N	\N
1532	people	hundred	569	824	846	energy	\N	clothing	\N	\N	\N
1533	pull	woman	617	798	462	ask	\N	clothing	\N	\N	\N
1534	beyond	teach	336	212	438	claim	\N	clothing	\N	\N	\N
1535	sport	begin	66	390	931	down	\N	clothing	\N	\N	\N
1477	rock	analysis	149	175	626	huge	\N	apparel	\N	\N	[{"price": "592", "ends_at": "site", "price_id": "386", "starts_at": "happy"}]
1513	do	start	438	571	600	one	\N	clothing	\N	\N	[{"price": "938", "ends_at": "similar", "price_id": "447", "starts_at": "camera"}]
1536	imagine	coach	856	803	5	imagine	\N	clothing	\N	\N	\N
1537	Democrat	community	310	749	837	education	\N	clothing	\N	\N	\N
1538	buy	toward	581	592	388	attorney	\N	clothing	\N	\N	\N
1539	save	stop	996	401	78	another	\N	clothing	\N	\N	\N
1540	key	summer	864	250	65	forward	\N	clothing	\N	\N	\N
1541	speech	media	881	871	540	black	\N	clothing	\N	\N	\N
1542	bag	again	567	873	319	decade	\N	clothing	\N	\N	\N
1543	use	option	148	506	497	enjoy	\N	clothing	\N	\N	\N
1544	college	science	154	561	120	study	\N	clothing	\N	\N	\N
1545	skin	remember	275	556	804	within	\N	clothing	\N	\N	\N
1546	pretty	after	509	641	679	same	\N	clothing	\N	\N	\N
1548	bank	read	453	280	855	fire	\N	clothing	\N	\N	\N
1549	next	current	607	979	804	dinner	\N	clothing	\N	\N	\N
1550	executive	citizen	723	926	407	cut	\N	clothing	\N	\N	\N
1551	test	rule	23	221	563	tree	\N	clothing	\N	\N	\N
1552	financial	civil	253	625	689	onto	\N	clothing	\N	\N	\N
1553	rate	view	992	444	571	law	\N	clothing	\N	\N	\N
1555	miss	on	878	662	340	yourself	\N	clothing	\N	\N	\N
1556	TV	final	744	951	206	ready	\N	clothing	\N	\N	\N
1557	couple	form	563	87	523	daughter	\N	clothing	\N	\N	\N
1558	theory	approach	63	308	653	most	\N	clothing	\N	\N	\N
1559	kind	wall	601	909	727	inside	\N	clothing	\N	\N	\N
1560	the	feeling	888	910	357	real	\N	clothing	\N	\N	\N
1561	professor	worry	381	788	211	seven	\N	clothing	\N	\N	\N
1562	letter	its	628	596	512	coach	\N	clothing	\N	\N	\N
1563	sit	brother	183	391	3	eat	\N	clothing	\N	\N	\N
1564	and	four	18	272	375	reach	\N	clothing	\N	\N	\N
1565	begin	artist	417	675	194	reason	\N	clothing	\N	\N	\N
1566	system	win	429	914	678	wall	\N	clothing	\N	\N	\N
1567	read	floor	426	585	389	blood	\N	clothing	\N	\N	\N
1569	government	parent	837	643	213	future	\N	clothing	\N	\N	\N
1570	nation	on	59	299	151	generation	\N	clothing	\N	\N	\N
1571	prepare	determine	625	369	189	record	\N	clothing	\N	\N	\N
1572	teacher	position	168	915	525	physical	\N	clothing	\N	\N	\N
1573	police	senior	512	879	661	shoulder	\N	clothing	\N	\N	\N
1574	service	see	929	459	188	open	\N	clothing	\N	\N	\N
1575	ten	economy	274	359	454	smile	\N	clothing	\N	\N	\N
1576	process	recent	587	722	45	interesting	\N	clothing	\N	\N	\N
1578	own	full	246	832	767	scientist	\N	clothing	\N	\N	\N
1579	eight	number	849	964	897	couple	\N	clothing	\N	\N	\N
1580	summer	test	734	934	241	explain	\N	clothing	\N	\N	\N
1581	tree	bring	864	802	910	wait	\N	clothing	\N	\N	\N
1582	study	tough	901	421	826	person	\N	clothing	\N	\N	\N
1583	build	real	470	526	693	eye	\N	clothing	\N	\N	\N
1584	consumer	which	48	239	228	wide	\N	clothing	\N	\N	\N
1585	watch	audience	434	127	558	to	\N	clothing	\N	\N	\N
1586	include	identify	780	427	953	green	\N	clothing	\N	\N	\N
1587	sure	ground	525	391	616	general	\N	clothing	\N	\N	\N
1588	spend	term	97	816	208	necessary	\N	clothing	\N	\N	\N
1589	stand	remember	401	214	559	short	\N	clothing	\N	\N	\N
1590	pretty	walk	443	539	860	day	\N	clothing	\N	\N	\N
1591	music	value	771	384	656	drop	\N	clothing	\N	\N	\N
1592	arm	resource	386	652	961	necessary	\N	clothing	\N	\N	\N
1593	need	wife	521	815	976	tough	\N	clothing	\N	\N	\N
1594	difference	we	321	877	181	little	\N	clothing	\N	\N	\N
1595	approach	baby	680	815	556	during	\N	clothing	\N	\N	\N
1597	young	hair	88	261	699	responsibility	\N	clothing	\N	\N	\N
1598	parent	machine	759	229	505	outside	\N	clothing	\N	\N	\N
1599	explain	be	882	35	959	rule	\N	clothing	\N	\N	\N
1600	quickly	after	353	412	945	trial	\N	clothing	\N	\N	\N
1601	represent	investment	427	210	56	effort	\N	menclothing	\N	\N	\N
1602	word	religious	940	238	155	some	\N	menclothing	\N	\N	\N
1603	yourself	interest	958	345	675	town	\N	menclothing	\N	\N	\N
1604	mean	beyond	626	993	596	hit	\N	menclothing	\N	\N	\N
1605	read	catch	436	691	309	of	\N	menclothing	\N	\N	\N
1606	stock	authority	753	321	266	ok	\N	menclothing	\N	\N	\N
1607	audience	so	465	404	984	his	\N	menclothing	\N	\N	\N
1608	affect	last	40	593	797	into	\N	menclothing	\N	\N	\N
1609	itself	start	819	796	698	call	\N	menclothing	\N	\N	\N
1610	available	item	676	641	140	huge	\N	menclothing	\N	\N	\N
1611	doctor	similar	361	902	148	argue	\N	menclothing	\N	\N	\N
1612	change	far	773	409	257	old	\N	menclothing	\N	\N	\N
1613	own	trip	427	324	887	Republican	\N	menclothing	\N	\N	\N
1614	possible	democratic	327	71	212	certainly	\N	menclothing	\N	\N	\N
1615	benefit	southern	216	410	630	project	\N	menclothing	\N	\N	\N
1616	foreign	smile	694	653	480	drop	\N	menclothing	\N	\N	\N
1617	assume	project	116	142	832	accept	\N	menclothing	\N	\N	\N
1618	analysis	idea	940	115	396	appear	\N	menclothing	\N	\N	\N
1619	thing	often	479	791	495	simple	\N	menclothing	\N	\N	\N
1620	price	good	166	773	6	will	\N	menclothing	\N	\N	\N
1621	cover	start	977	58	971	trade	\N	menclothing	\N	\N	\N
1622	list	cold	140	774	512	reach	\N	menclothing	\N	\N	\N
1623	base	beyond	207	871	745	operation	\N	menclothing	\N	\N	\N
1624	community	forward	618	63	349	follow	\N	menclothing	\N	\N	\N
1625	of	beat	491	288	764	partner	\N	menclothing	\N	\N	\N
1626	industry	our	562	510	518	something	\N	menclothing	\N	\N	\N
1627	town	though	938	50	159	election	\N	menclothing	\N	\N	\N
1628	there	program	11	859	315	chair	\N	menclothing	\N	\N	\N
1629	soon	admit	711	74	189	political	\N	menclothing	\N	\N	\N
1577	treatment	little	667	223	876	the	\N	clothing	\N	\N	[{"price": "852", "ends_at": "special", "price_id": "490", "starts_at": "film"}]
1630	garden	rich	386	297	523	collection	\N	menclothing	\N	\N	\N
1631	couple	chair	293	142	175	light	\N	menclothing	\N	\N	\N
1633	college	who	887	830	460	sense	\N	menclothing	\N	\N	\N
1634	beautiful	police	521	200	719	pretty	\N	menclothing	\N	\N	\N
1635	move	election	211	621	386	particularly	\N	menclothing	\N	\N	\N
1636	treat	technology	994	365	676	yeah	\N	menclothing	\N	\N	\N
1637	every	husband	788	46	689	when	\N	menclothing	\N	\N	\N
1638	suggest	report	91	162	506	activity	\N	menclothing	\N	\N	\N
1639	author	administration	361	918	317	big	\N	menclothing	\N	\N	\N
1640	TV	ten	42	710	494	ever	\N	menclothing	\N	\N	\N
1641	easy	hope	365	354	356	successful	\N	menclothing	\N	\N	\N
1642	hit	she	797	557	137	company	\N	menclothing	\N	\N	\N
1643	month	after	425	820	685	hour	\N	menclothing	\N	\N	\N
1644	quickly	develop	971	246	264	popular	\N	menclothing	\N	\N	\N
1645	road	career	548	923	475	best	\N	menclothing	\N	\N	\N
1646	perform	kind	645	454	997	medical	\N	menclothing	\N	\N	\N
1649	site	finish	293	575	706	character	\N	menclothing	\N	\N	\N
1650	camera	painting	196	895	606	charge	\N	menclothing	\N	\N	\N
1651	remain	so	823	759	715	two	\N	menclothing	\N	\N	\N
1652	dream	arrive	250	659	496	toward	\N	menclothing	\N	\N	\N
1653	hand	light	372	456	317	policy	\N	menclothing	\N	\N	\N
1654	own	specific	977	881	60	indeed	\N	menclothing	\N	\N	\N
1656	peace	base	484	248	875	recognize	\N	menclothing	\N	\N	\N
1657	heavy	manager	846	36	15	senior	\N	menclothing	\N	\N	\N
1658	sense	year	917	470	838	PM	\N	menclothing	\N	\N	\N
1659	service	begin	788	440	249	protect	\N	menclothing	\N	\N	\N
1660	anything	cold	181	107	249	respond	\N	menclothing	\N	\N	\N
1662	number	certain	211	440	944	style	\N	menclothing	\N	\N	\N
1663	space	allow	928	508	773	staff	\N	menclothing	\N	\N	\N
1664	story	company	816	966	314	surface	\N	menclothing	\N	\N	\N
1665	billion	single	647	478	143	rich	\N	menclothing	\N	\N	\N
1666	until	tree	321	807	319	find	\N	menclothing	\N	\N	\N
1667	family	against	37	305	202	property	\N	menclothing	\N	\N	\N
1668	Democrat	gas	476	515	741	wonder	\N	menclothing	\N	\N	\N
1669	end	only	773	4	321	that	\N	menclothing	\N	\N	\N
1670	seat	method	114	67	437	back	\N	menclothing	\N	\N	\N
1671	purpose	friend	259	44	144	best	\N	menclothing	\N	\N	\N
1672	worker	yes	384	801	352	mission	\N	menclothing	\N	\N	\N
1673	weight	Congress	929	184	886	investment	\N	menclothing	\N	\N	\N
1674	another	focus	480	861	335	amount	\N	menclothing	\N	\N	\N
1675	good	time	616	235	835	realize	\N	menclothing	\N	\N	\N
1676	name	leader	167	637	437	town	\N	menclothing	\N	\N	\N
1677	mean	anything	113	320	924	from	\N	menclothing	\N	\N	\N
1678	outside	mean	628	471	997	relate	\N	menclothing	\N	\N	\N
1679	exactly	must	604	966	446	certain	\N	menclothing	\N	\N	\N
1680	knowledge	coach	655	144	760	economy	\N	menclothing	\N	\N	\N
1681	save	Mr	32	572	717	however	\N	menclothing	\N	\N	\N
1682	man	whose	585	615	552	own	\N	menclothing	\N	\N	\N
1683	poor	shake	245	46	921	result	\N	menclothing	\N	\N	\N
1684	son	recent	424	827	701	base	\N	menclothing	\N	\N	\N
1685	different	candidate	264	584	358	phone	\N	menclothing	\N	\N	\N
1686	major	democratic	529	375	581	box	\N	menclothing	\N	\N	\N
1687	wish	stay	185	438	228	six	\N	menclothing	\N	\N	\N
1688	center	include	836	997	647	really	\N	menclothing	\N	\N	\N
1689	you	even	674	260	744	worry	\N	menclothing	\N	\N	\N
1690	kitchen	good	68	632	266	answer	\N	menclothing	\N	\N	\N
1691	laugh	newspaper	526	792	35	adult	\N	menclothing	\N	\N	\N
1692	medical	claim	490	946	494	arm	\N	menclothing	\N	\N	\N
1693	blood	rule	868	95	690	win	\N	menclothing	\N	\N	\N
1694	keep	customer	52	586	596	require	\N	menclothing	\N	\N	\N
1695	indicate	bad	293	68	569	usually	\N	menclothing	\N	\N	\N
1696	service	forget	607	672	174	measure	\N	menclothing	\N	\N	\N
1697	rule	health	698	737	444	debate	\N	menclothing	\N	\N	\N
1698	couple	again	649	965	727	will	\N	menclothing	\N	\N	\N
1699	investment	cup	621	961	797	husband	\N	menclothing	\N	\N	\N
1700	appear	every	683	943	989	exist	\N	menclothing	\N	\N	\N
1701	another	surface	906	1	783	word	\N	womenclothing	\N	\N	\N
1702	clearly	direction	52	18	79	fall	\N	womenclothing	\N	\N	\N
1704	draw	war	193	938	860	several	\N	womenclothing	\N	\N	\N
1705	though	family	6	838	437	economic	\N	womenclothing	\N	\N	\N
1706	safe	Democrat	252	64	927	read	\N	womenclothing	\N	\N	\N
1707	general	morning	116	379	384	police	\N	womenclothing	\N	\N	\N
1708	yourself	town	876	390	536	chance	\N	womenclothing	\N	\N	\N
1709	wrong	become	763	326	502	partner	\N	womenclothing	\N	\N	\N
1710	suggest	seat	479	241	414	floor	\N	womenclothing	\N	\N	\N
1711	fill	action	444	869	616	stuff	\N	womenclothing	\N	\N	\N
1712	board	yes	20	353	528	likely	\N	womenclothing	\N	\N	\N
1714	improve	rule	379	52	863	our	\N	womenclothing	\N	\N	\N
1715	do	kitchen	418	621	439	area	\N	womenclothing	\N	\N	\N
1717	notice	case	145	504	936	manager	\N	womenclothing	\N	\N	\N
1718	second	over	322	773	791	south	\N	womenclothing	\N	\N	\N
1719	brother	authority	907	375	382	image	\N	womenclothing	\N	\N	\N
1632	little	after	955	521	240	middle	\N	menclothing	\N	\N	[{"price": "399", "ends_at": "structure", "price_id": "382", "starts_at": "officer"}]
1703	pattern	view	804	371	922	operation	\N	womenclothing	\N	\N	[{"price": "333", "ends_at": "rest", "price_id": "89", "starts_at": "across"}]
1720	author	song	748	83	803	herself	\N	womenclothing	\N	\N	\N
1721	father	politics	135	733	661	mention	\N	womenclothing	\N	\N	\N
1722	spend	middle	895	145	51	make	\N	womenclothing	\N	\N	\N
1723	wind	animal	271	341	42	contain	\N	womenclothing	\N	\N	\N
1724	base	sea	131	141	246	culture	\N	womenclothing	\N	\N	\N
1727	arrive	give	135	319	804	system	\N	womenclothing	\N	\N	\N
1728	cost	operation	472	26	588	want	\N	womenclothing	\N	\N	\N
1729	wife	else	752	970	642	the	\N	womenclothing	\N	\N	\N
1730	send	process	33	765	145	imagine	\N	womenclothing	\N	\N	\N
1731	worker	mean	676	299	526	rich	\N	womenclothing	\N	\N	\N
1733	yes	audience	750	275	710	himself	\N	womenclothing	\N	\N	\N
1734	view	continue	573	452	477	thus	\N	womenclothing	\N	\N	\N
1735	color	wind	579	352	109	perform	\N	womenclothing	\N	\N	\N
1736	number	gas	235	799	46	south	\N	womenclothing	\N	\N	\N
1737	social	tree	119	211	184	cup	\N	womenclothing	\N	\N	\N
1738	choice	wide	772	840	912	hair	\N	womenclothing	\N	\N	\N
1739	or	these	649	132	847	for	\N	womenclothing	\N	\N	\N
1740	skill	home	576	658	212	inside	\N	womenclothing	\N	\N	\N
1741	watch	into	896	707	602	military	\N	womenclothing	\N	\N	\N
1742	everybody	seek	703	990	759	rule	\N	womenclothing	\N	\N	\N
1743	role	single	393	456	368	draw	\N	womenclothing	\N	\N	\N
1744	clearly	skin	980	617	825	measure	\N	womenclothing	\N	\N	\N
1745	interview	nature	653	500	790	then	\N	womenclothing	\N	\N	\N
1746	window	population	256	625	920	process	\N	womenclothing	\N	\N	\N
1747	security	leg	178	519	624	such	\N	womenclothing	\N	\N	\N
1748	organization	toward	70	768	880	behavior	\N	womenclothing	\N	\N	\N
1749	mean	officer	89	984	852	election	\N	womenclothing	\N	\N	\N
1750	issue	identify	714	832	533	look	\N	womenclothing	\N	\N	\N
1751	so	resource	870	691	133	herself	\N	womenclothing	\N	\N	\N
1752	economy	treatment	323	82	151	drive	\N	womenclothing	\N	\N	\N
1753	play	decide	177	682	794	simply	\N	womenclothing	\N	\N	\N
1754	near	culture	631	548	1	change	\N	womenclothing	\N	\N	\N
1755	make	that	71	774	553	these	\N	womenclothing	\N	\N	\N
1756	art	western	944	489	50	fast	\N	womenclothing	\N	\N	\N
1757	cut	people	471	466	581	director	\N	womenclothing	\N	\N	\N
1758	yourself	start	283	365	460	up	\N	womenclothing	\N	\N	\N
1759	beat	improve	356	66	180	miss	\N	womenclothing	\N	\N	\N
1760	far	big	776	588	5	test	\N	womenclothing	\N	\N	\N
1761	treat	Republican	199	583	686	he	\N	womenclothing	\N	\N	\N
1762	poor	still	967	159	499	central	\N	womenclothing	\N	\N	\N
1763	wall	ago	357	537	879	indicate	\N	womenclothing	\N	\N	\N
1764	cost	above	611	106	737	if	\N	womenclothing	\N	\N	\N
1766	their	significant	993	308	91	nation	\N	womenclothing	\N	\N	\N
1767	generation	ok	586	330	551	class	\N	womenclothing	\N	\N	\N
1768	within	race	590	758	595	sort	\N	womenclothing	\N	\N	\N
1769	reach	local	451	296	776	similar	\N	womenclothing	\N	\N	\N
1770	nor	require	805	805	933	drop	\N	womenclothing	\N	\N	\N
1771	discover	ask	604	154	312	end	\N	womenclothing	\N	\N	\N
1772	executive	company	937	859	80	change	\N	womenclothing	\N	\N	\N
1773	exist	but	35	582	891	whether	\N	womenclothing	\N	\N	\N
1775	popular	cost	683	269	979	thank	\N	womenclothing	\N	\N	\N
1776	law	miss	592	297	447	federal	\N	womenclothing	\N	\N	\N
1777	have	eye	250	400	554	security	\N	womenclothing	\N	\N	\N
1778	figure	measure	412	691	130	easy	\N	womenclothing	\N	\N	\N
1779	response	peace	44	699	260	which	\N	womenclothing	\N	\N	\N
1780	with	concern	348	83	940	early	\N	womenclothing	\N	\N	\N
1781	choice	memory	391	107	135	despite	\N	womenclothing	\N	\N	\N
1783	yet	present	417	795	84	authority	\N	womenclothing	\N	\N	\N
1784	network	base	999	37	445	central	\N	womenclothing	\N	\N	\N
1785	adult	sound	404	580	585	turn	\N	womenclothing	\N	\N	\N
1786	decade	third	632	633	776	will	\N	womenclothing	\N	\N	\N
1788	include	size	57	19	985	rate	\N	womenclothing	\N	\N	\N
1789	strong	bring	452	4	355	relate	\N	womenclothing	\N	\N	\N
1790	between	reality	335	997	823	he	\N	womenclothing	\N	\N	\N
1791	she	civil	716	682	984	write	\N	womenclothing	\N	\N	\N
1792	push	single	744	452	638	save	\N	womenclothing	\N	\N	\N
1793	focus	fill	678	205	942	pay	\N	womenclothing	\N	\N	\N
1794	teacher	choose	340	793	969	situation	\N	womenclothing	\N	\N	\N
1795	audience	response	286	281	166	forget	\N	womenclothing	\N	\N	\N
1796	explain	avoid	687	90	785	adult	\N	womenclothing	\N	\N	\N
1797	anything	truth	542	634	492	test	\N	womenclothing	\N	\N	\N
1798	position	by	98	512	123	understand	\N	womenclothing	\N	\N	\N
1799	list	pressure	518	559	171	last	\N	womenclothing	\N	\N	\N
1800	house	space	714	994	661	include	\N	womenclothing	\N	\N	\N
1801	whose	argue	535	732	801	dog	\N	footwear	\N	\N	\N
1802	factor	property	596	230	534	message	\N	footwear	\N	\N	\N
1803	look	news	804	462	235	sport	\N	footwear	\N	\N	\N
1804	start	relate	864	784	90	research	\N	footwear	\N	\N	\N
1805	evening	both	258	591	527	method	\N	footwear	\N	\N	\N
1806	media	listen	841	21	342	step	\N	footwear	\N	\N	\N
1807	I	sell	250	442	157	prepare	\N	footwear	\N	\N	\N
1809	data	per	420	757	858	seat	\N	footwear	\N	\N	\N
1726	service	last	455	204	419	end	\N	womenclothing	\N	\N	[{"price": "995", "ends_at": "democratic", "price_id": "122", "starts_at": "check"}]
1787	identify	here	137	879	868	book	\N	womenclothing	\N	\N	[{"price": "242", "ends_at": "cultural", "price_id": "590", "starts_at": "nothing"}]
1810	billion	international	722	126	930	police	\N	footwear	\N	\N	\N
1811	city	them	957	122	859	approach	\N	footwear	\N	\N	\N
1812	finally	prepare	388	873	33	shoulder	\N	footwear	\N	\N	\N
1813	his	dark	558	353	77	actually	\N	footwear	\N	\N	\N
1814	find	leg	1000	692	482	develop	\N	footwear	\N	\N	\N
1815	impact	various	765	687	661	clear	\N	footwear	\N	\N	\N
1816	song	common	410	44	268	election	\N	footwear	\N	\N	\N
1817	another	box	692	402	395	west	\N	footwear	\N	\N	\N
1818	social	age	16	731	693	play	\N	footwear	\N	\N	\N
1819	structure	eight	551	134	76	back	\N	footwear	\N	\N	\N
1820	lot	name	414	215	110	throw	\N	footwear	\N	\N	\N
1821	south	decide	202	414	651	whose	\N	footwear	\N	\N	\N
1822	would	major	446	27	820	evidence	\N	footwear	\N	\N	\N
1823	church	nearly	23	795	45	address	\N	footwear	\N	\N	\N
1824	receive	serious	759	429	134	for	\N	footwear	\N	\N	\N
1825	rule	identify	762	194	517	help	\N	footwear	\N	\N	\N
1826	country	bad	846	291	903	miss	\N	footwear	\N	\N	\N
1827	heavy	us	561	44	424	stay	\N	footwear	\N	\N	\N
1828	per	final	479	163	305	health	\N	footwear	\N	\N	\N
1829	history	decade	666	308	600	late	\N	footwear	\N	\N	\N
1830	reason	suffer	33	630	537	American	\N	footwear	\N	\N	\N
1831	rate	every	301	33	500	lay	\N	footwear	\N	\N	\N
1832	gas	like	960	168	759	together	\N	footwear	\N	\N	\N
1833	clear	create	954	720	646	station	\N	footwear	\N	\N	\N
1834	street	where	271	835	460	plan	\N	footwear	\N	\N	\N
1835	might	usually	431	36	303	question	\N	footwear	\N	\N	\N
1836	maintain	wrong	356	205	351	lose	\N	footwear	\N	\N	\N
1837	know	style	251	142	967	day	\N	footwear	\N	\N	\N
1838	tend	seek	857	42	97	way	\N	footwear	\N	\N	\N
1840	share	drop	22	395	592	walk	\N	footwear	\N	\N	\N
1841	concern	imagine	241	754	539	style	\N	footwear	\N	\N	\N
1842	probably	describe	564	788	939	term	\N	footwear	\N	\N	\N
1843	enough	represent	428	567	396	meet	\N	footwear	\N	\N	\N
1844	economic	everyone	983	571	9	business	\N	footwear	\N	\N	\N
1845	bar	take	420	813	398	many	\N	footwear	\N	\N	\N
1846	ok	reflect	136	448	839	song	\N	footwear	\N	\N	\N
1847	heart	still	113	582	116	determine	\N	footwear	\N	\N	\N
1848	cause	exactly	180	917	361	life	\N	footwear	\N	\N	\N
1849	chair	life	510	788	894	subject	\N	footwear	\N	\N	\N
1850	truth	never	905	603	882	case	\N	footwear	\N	\N	\N
1851	home	possible	656	718	246	hospital	\N	footwear	\N	\N	\N
1852	nothing	trip	73	734	878	computer	\N	footwear	\N	\N	\N
1853	represent	impact	251	672	814	many	\N	footwear	\N	\N	\N
1854	theory	cold	270	793	932	receive	\N	footwear	\N	\N	\N
1855	sign	process	653	843	135	this	\N	footwear	\N	\N	\N
1856	assume	near	474	366	133	model	\N	footwear	\N	\N	\N
1858	team	level	458	505	892	air	\N	footwear	\N	\N	\N
1859	claim	message	178	977	574	development	\N	footwear	\N	\N	\N
1860	raise	market	829	684	697	how	\N	footwear	\N	\N	\N
1862	foot	way	285	163	367	chance	\N	footwear	\N	\N	\N
1863	skill	tend	841	95	776	pick	\N	footwear	\N	\N	\N
1864	necessary	according	833	249	976	security	\N	footwear	\N	\N	\N
1865	finish	teach	97	960	926	reduce	\N	footwear	\N	\N	\N
1866	form	news	249	731	68	too	\N	footwear	\N	\N	\N
1867	marriage	make	973	693	548	interest	\N	footwear	\N	\N	\N
1868	leader	partner	45	922	584	number	\N	footwear	\N	\N	\N
1870	similar	their	395	676	99	each	\N	footwear	\N	\N	\N
1872	life	lead	474	112	222	quality	\N	footwear	\N	\N	\N
1873	hand	investment	69	525	142	husband	\N	footwear	\N	\N	\N
1877	care	model	124	664	137	machine	\N	footwear	\N	\N	\N
1878	heavy	mouth	655	960	406	peace	\N	footwear	\N	\N	\N
1879	citizen	crime	187	230	818	her	\N	footwear	\N	\N	\N
1880	friend	size	835	874	878	out	\N	footwear	\N	\N	\N
1881	reality	table	51	957	617	purpose	\N	footwear	\N	\N	\N
1882	national	tend	7	610	713	sell	\N	footwear	\N	\N	\N
1883	image	report	13	832	935	position	\N	footwear	\N	\N	\N
1884	exist	another	711	197	630	choose	\N	footwear	\N	\N	\N
1885	food	professor	305	153	870	others	\N	footwear	\N	\N	\N
1886	this	back	381	633	388	total	\N	footwear	\N	\N	\N
1887	prevent	it	906	832	626	so	\N	footwear	\N	\N	\N
1888	miss	quite	348	9	433	determine	\N	footwear	\N	\N	\N
1889	especially	how	740	198	170	hour	\N	footwear	\N	\N	\N
1890	TV	break	514	270	480	get	\N	footwear	\N	\N	\N
1891	expert	charge	903	817	85	my	\N	footwear	\N	\N	\N
1892	daughter	generation	221	953	616	about	\N	footwear	\N	\N	\N
1893	magazine	thing	941	255	809	bit	\N	footwear	\N	\N	\N
1894	foreign	firm	733	880	559	age	\N	footwear	\N	\N	\N
1895	decision	actually	534	535	20	as	\N	footwear	\N	\N	\N
1896	dog	health	461	33	882	site	\N	footwear	\N	\N	\N
1898	many	anything	518	937	236	group	\N	footwear	\N	\N	\N
1899	fact	lose	58	381	174	machine	\N	footwear	\N	\N	\N
1900	modern	chance	442	838	552	these	\N	footwear	\N	\N	\N
1839	mouth	either	315	324	505	final	\N	footwear	\N	[{"url": "represent", "alt_text": "see", "image_id": "406", "sort_order": "489"}]	\N
1808	call	wait	70	488	906	keep	\N	footwear	\N	[{"url": "black", "alt_text": "dream", "image_id": "258", "sort_order": "900"}]	\N
1871	must	while	846	3	588	toward	\N	footwear	\N	\N	[{"price": "228", "ends_at": "describe", "price_id": "666", "starts_at": "office"}]
1857	job	garden	312	754	43	here	\N	footwear	\N	\N	[{"price": "993", "ends_at": "lead", "price_id": "446", "starts_at": "art"}]
1774	sure	natural	734	134	502	particular	\N	womenclothing	\N	[{"url": "cup", "alt_text": "student", "image_id": "92", "sort_order": "843"}]	\N
1236	choose	continue	308	238	386	son	marriage	appliance	\N	[{"url": "south", "alt_text": "cell", "image_id": "993", "sort_order": "729"}]	\N
1377	room	beyond	400	967	322	travel	experience	kitchenappliance	296	[{"url": "data", "alt_text": "they", "image_id": "99", "sort_order": "583"}]	\N
1725	with	nation	987	216	773	rate	\N	womenclothing	\N	[{"url": "level", "alt_text": "mother", "image_id": "985", "sort_order": "536"}]	\N
1861	item	instead	670	741	321	begin	\N	footwear	\N	[{"url": "sign", "alt_text": "art", "image_id": "159", "sort_order": "537"}]	\N
1782	local	reach	995	498	332	individual	\N	womenclothing	\N	[{"url": "professional", "alt_text": "nearly", "image_id": "213", "sort_order": "568"}]	\N
1547	president	attorney	148	152	324	industry	\N	clothing	\N	[{"url": "still", "alt_text": "become", "image_id": "132", "sort_order": "928"}]	\N
1655	number	statement	162	140	55	provide	\N	menclothing	\N	[{"url": "arrive", "alt_text": "view", "image_id": "38", "sort_order": "31"}]	\N
1404	stand	difficult	764	787	186	where	\N	apparel	\N	[{"url": "sort", "alt_text": "out", "image_id": "872", "sort_order": "44"}]	\N
1713	something	staff	238	408	509	away	\N	womenclothing	\N	[{"url": "majority", "alt_text": "impact", "image_id": "557", "sort_order": "409"}]	\N
156	them	could	388	768	573	full	\N	physicalproduct	\N	[{"url": "practice", "alt_text": "why", "image_id": "694", "sort_order": "769"}]	\N
1554	worker	let	85	30	797	company	\N	clothing	\N	[{"url": "try", "alt_text": "rest", "image_id": "260", "sort_order": "499"}]	\N
1471	success	pretty	783	989	703	idea	\N	apparel	\N	[{"url": "despite", "alt_text": "month", "image_id": "330", "sort_order": "892"}]	\N
1358	fast	agent	586	828	836	brother	energy	kitchenappliance	914	[{"url": "mouth", "alt_text": "simply", "image_id": "892", "sort_order": "291"}]	\N
1596	laugh	so	979	195	77	specific	\N	clothing	\N	[{"url": "still", "alt_text": "student", "image_id": "5", "sort_order": "231"}]	\N
1732	himself	upon	59	920	73	hard	\N	womenclothing	\N	[{"url": "term", "alt_text": "but", "image_id": "482", "sort_order": "416"}]	\N
1897	board	possible	179	421	132	view	\N	footwear	\N	[{"url": "store", "alt_text": "course", "image_id": "235", "sort_order": "719"}]	\N
1397	want	blood	286	775	485	lead	successful	kitchenappliance	192	[{"url": "what", "alt_text": "standard", "image_id": "360", "sort_order": "241"}]	\N
1296	happen	increase	881	269	616	when	on	appliance	\N	[{"url": "moment", "alt_text": "lawyer", "image_id": "252", "sort_order": "522"}]	\N
101	analysis	authority	251	226	21	drive	\N	physicalproduct	\N	[{"url": "family", "alt_text": "face", "image_id": "595", "sort_order": "38"}]	\N
1648	individual	attention	28	436	397	goal	\N	menclothing	\N	[{"url": "school", "alt_text": "PM", "image_id": "511", "sort_order": "120"}]	\N
1647	commercial	focus	504	721	500	response	\N	menclothing	\N	[{"url": "hospital", "alt_text": "fine", "image_id": "100", "sort_order": "859"}]	\N
1283	concern	grow	263	197	323	blood	appear	appliance	\N	[{"url": "board", "alt_text": "race", "image_id": "206", "sort_order": "439"}]	\N
1468	agreement	single	904	398	30	business	\N	apparel	\N	[{"url": "suggest", "alt_text": "voice", "image_id": "174", "sort_order": "581"}]	\N
1409	summer	matter	466	638	129	offer	\N	apparel	\N	[{"url": "smile", "alt_text": "white", "image_id": "207", "sort_order": "338"}]	\N
1476	leave	finish	25	998	391	room	\N	apparel	\N	[{"url": "music", "alt_text": "office", "image_id": "848", "sort_order": "792"}]	\N
1412	increase	smile	897	147	193	career	\N	apparel	\N	[{"url": "break", "alt_text": "admit", "image_id": "175", "sort_order": "906"}]	\N
1453	unit	activity	909	218	601	shake	\N	apparel	\N	[{"url": "important", "alt_text": "national", "image_id": "89", "sort_order": "765"}]	\N
1266	language	work	712	580	769	project	family	appliance	\N	[{"url": "give", "alt_text": "owner", "image_id": "304", "sort_order": "155"}]	\N
1568	poor	customer	176	599	855	among	\N	clothing	\N	[{"url": "firm", "alt_text": "dog", "image_id": "998", "sort_order": "910"}]	\N
1874	allow	trip	189	449	870	back	\N	footwear	\N	[{"url": "watch", "alt_text": "carry", "image_id": "961", "sort_order": "709"}]	\N
1272	cold	player	39	981	874	news	fish	appliance	\N	[{"url": "adult", "alt_text": "recently", "image_id": "737", "sort_order": "938"}]	\N
1765	position	visit	513	936	317	manage	\N	womenclothing	\N	[{"url": "I", "alt_text": "use", "image_id": "114", "sort_order": "612"}]	\N
1875	I	matter	528	938	279	important	\N	footwear	\N	[{"url": "forget", "alt_text": "born", "image_id": "56", "sort_order": "63"}]	[{"price": "458", "ends_at": "surface", "price_id": "767", "starts_at": "hear"}]
117	side	civil	828	441	563	poor	\N	physicalproduct	\N	\N	[{"price": "72", "ends_at": "half", "price_id": "656", "starts_at": "question"}]
102	the	senior	412	75	275	memory	\N	physicalproduct	\N	\N	[{"price": "102", "ends_at": "analysis", "price_id": "540", "starts_at": "remain"}]
1475	player	firm	542	773	537	available	\N	apparel	\N	\N	[{"price": "705", "ends_at": "relate", "price_id": "291", "starts_at": "audience"}]
1229	factor	perform	135	293	921	wait	feel	appliance	\N	\N	[{"price": "509", "ends_at": "forward", "price_id": "387", "starts_at": "perhaps"}]
1445	cold	worry	733	417	217	attorney	\N	apparel	\N	\N	[{"price": "441", "ends_at": "company", "price_id": "172", "starts_at": "newspaper"}]
1314	late	ready	819	136	718	author	financial	kitchenappliance	257	\N	[{"price": "881", "ends_at": "ago", "price_id": "757", "starts_at": "left"}]
141	answer	once	181	160	257	company	\N	physicalproduct	\N	\N	[{"price": "810", "ends_at": "conference", "price_id": "335", "starts_at": "my"}, {"price": "403", "ends_at": "every", "price_id": "571", "starts_at": "task"}]
1340	hour	society	265	982	988	visit	effect	kitchenappliance	114	\N	[{"price": "80", "ends_at": "choice", "price_id": "57", "starts_at": "past"}]
1288	information	player	585	896	189	crime	which	appliance	\N	\N	[{"price": "59", "ends_at": "prove", "price_id": "756", "starts_at": "newspaper"}]
1869	can	certainly	945	910	531	issue	\N	footwear	\N	\N	[{"price": "9", "ends_at": "rich", "price_id": "765", "starts_at": "offer"}]
1304	area	hour	472	416	627	high	personal	kitchenappliance	698	\N	[{"price": "585", "ends_at": "community", "price_id": "491", "starts_at": "evening"}]
149	serve	education	456	872	947	who	\N	physicalproduct	\N	\N	[{"price": "221", "ends_at": "simple", "price_id": "997", "starts_at": "peace"}]
1411	impact	have	352	257	855	bit	\N	apparel	\N	[{"url": "old", "alt_text": "member", "image_id": "72", "sort_order": "576"}]	[{"price": "299", "ends_at": "fear", "price_id": "667", "starts_at": "theory"}]
1876	away	wear	826	187	384	nation	\N	footwear	\N	\N	[{"price": "794", "ends_at": "civil", "price_id": "47", "starts_at": "organization"}]
1661	tend	large	312	236	26	appear	\N	menclothing	\N	\N	[{"price": "394", "ends_at": "specific", "price_id": "199", "starts_at": "gas"}]
1378	company	over	627	143	583	both	young	kitchenappliance	568	\N	[{"price": "308", "ends_at": "man", "price_id": "49", "starts_at": "until"}]
1217	together	hospital	515	945	105	standard	once	appliance	\N	\N	[{"price": "319", "ends_at": "at", "price_id": "229", "starts_at": "public"}]
196	meeting	choose	708	96	412	also	\N	physicalproduct	\N	\N	[{"price": "24", "ends_at": "director", "price_id": "492", "starts_at": "admit"}]
1716	popular	nice	708	149	339	fast	\N	womenclothing	\N	\N	[{"price": "592", "ends_at": "successful", "price_id": "795", "starts_at": "mind"}]
111	heart	current	130	916	212	without	\N	physicalproduct	\N	\N	[{"price": "152", "ends_at": "kid", "price_id": "839", "starts_at": "fire"}]
\.


--
-- Data for Name: relation_30; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_30 (user_id, updated_at) FROM stdin;
378	growth
238	feel
335	certain
176	author
303	put
113	wide
282	challenge
198	trade
121	southern
275	arm
190	glass
314	street
400	any
206	something
367	strategy
395	performance
235	certain
123	event
197	learn
261	person
163	remain
155	none
322	data
146	baby
234	without
290	throughout
360	fine
191	despite
192	go
361	want
377	matter
317	study
186	almost
397	win
258	right
345	catch
332	their
106	choose
180	mind
139	evening
343	them
185	street
299	reflect
306	process
291	specific
177	turn
300	which
321	who
359	window
239	purpose
319	stop
308	us
388	interest
302	than
278	others
279	individual
134	action
233	edge
170	after
144	blue
136	take
273	north
375	hundred
229	mean
221	interest
307	best
160	physical
277	phone
268	east
135	imagine
223	impact
200	take
362	involve
245	knowledge
341	newspaper
247	effort
212	early
382	draw
166	mention
283	skin
368	soon
358	think
143	manager
141	recognize
333	wind
254	moment
137	father
353	technology
385	any
171	street
311	college
248	pull
349	future
110	maintain
344	arrive
257	vote
342	bill
120	result
380	light
205	remember
\.


--
-- Data for Name: relation_31; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_31 (user_id, wishlist_id, wishlist_name) FROM stdin;
202	658	worry
145	327	movie
263	947	ask
391	729	manager
321	567	view
239	99	class
256	35	idea
112	929	great
358	53	relate
191	954	type
227	363	vote
294	342	require
129	334	style
205	660	image
134	38	executive
167	520	out
229	414	meet
256	818	father
117	669	agree
164	817	western
251	678	education
379	393	site
121	886	rate
253	149	free
354	393	west
315	877	role
395	463	child
395	756	light
180	487	once
112	943	tonight
285	127	to
227	225	account
263	63	family
145	377	agreement
287	752	this
317	603	commercial
149	989	chair
229	777	and
114	803	hard
140	381	couple
197	739	challenge
191	922	agree
343	728	instead
290	216	of
155	932	act
314	475	real
376	879	above
309	128	what
292	902	few
290	55	prove
249	736	indicate
124	528	stand
255	680	floor
298	791	example
107	227	this
108	80	far
124	382	training
125	458	figure
181	929	per
116	621	girl
254	822	different
127	12	who
179	673	market
122	38	sure
231	413	eight
229	870	safe
132	434	cause
375	60	doctor
128	512	as
335	941	professor
120	673	player
150	714	and
287	982	peace
193	600	learn
247	131	degree
365	960	war
242	962	blue
104	246	company
226	255	state
375	632	floor
355	677	lot
309	904	move
390	453	city
298	517	lose
307	127	wonder
257	280	senior
117	642	purpose
115	647	ok
356	947	sea
328	129	next
344	275	realize
321	935	choice
208	121	model
224	795	either
372	533	catch
270	98	part
134	610	white
365	595	thousand
333	65	rock
316	894	vote
\.


--
-- Data for Name: relation_32; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_32 (user_id, review_id, rating, title, body, created_at) FROM stdin;
353	675	419	line	hot	yet
355	171	859	join	his	really
296	872	668	happen	garden	may
349	256	177	garden	me	throughout
273	979	230	Congress	system	store
140	929	685	from	far	cup
145	936	380	series	popular	model
206	591	349	common	guess	less
103	49	379	realize	weight	actually
323	322	783	difficult	center	center
144	25	508	yourself	along	here
386	532	79	back	respond	model
234	883	960	Congress	participant	second
274	888	55	candidate	garden	increase
126	952	93	wall	return	organization
391	714	804	democratic	call	how
335	248	160	might	need	buy
331	529	750	realize	former	heart
386	408	503	window	side	someone
292	511	809	particular	else	indeed
370	551	833	call	receive	party
113	204	284	discuss	wear	two
105	452	573	even	kitchen	body
245	7	220	red	rest	both
385	624	86	such	medical	ever
217	188	618	end	major	world
151	619	507	interesting	six	trade
400	660	235	quite	audience	pass
117	507	371	foreign	former	score
127	244	23	you	season	along
165	773	180	never	hospital	program
289	477	191	success	have	moment
193	235	953	bag	model	under
264	49	413	TV	tree	information
165	42	720	difficult	house	great
309	328	136	eat	compare	senior
199	723	205	notice	off	red
273	582	400	environmental	probably	those
239	772	152	manage	little	approach
127	699	977	behind	century	wall
334	906	742	mention	build	ready
148	383	554	them	forward	place
186	255	734	structure	part	myself
221	186	814	yeah	particular	whatever
381	270	564	person	affect	important
265	523	959	those	bill	central
365	990	72	need	reach	such
167	508	149	say	exist	quickly
325	241	221	stock	tend	method
381	236	615	half	management	blood
369	128	725	resource	ever	theory
366	740	617	office	daughter	son
269	533	278	media	indicate	hand
274	449	358	recognize	civil	student
339	938	411	during	according	place
223	471	761	poor	behind	system
161	269	446	agreement	agent	pass
365	36	686	certain	any	others
385	308	954	determine	name	dream
316	755	50	reflect	discussion	well
225	529	685	poor	very	report
301	662	956	within	wish	first
336	214	926	anything	perhaps	range
254	370	499	religious	night	quality
196	798	99	speak	inside	nature
187	17	208	wonder	behavior	visit
298	834	359	himself	purpose	police
108	128	218	information	economic	pull
322	870	626	no	home	debate
294	815	98	science	environmental	sell
136	255	239	though	work	special
202	356	30	knowledge	save	citizen
392	42	177	image	goal	effect
244	484	806	never	allow	school
298	550	300	decide	have	between
219	259	677	second	look	allow
139	22	611	place	box	manage
317	897	785	also	size	doctor
286	946	525	leg	your	provide
272	424	949	protect	baby	rise
377	587	191	tree	could	century
150	460	339	early	deal	smile
244	780	971	goal	lay	somebody
256	613	789	special	kind	deep
195	629	393	feeling	government	state
227	359	97	suffer	with	my
311	1000	462	great	art	official
116	443	676	control	shoulder	man
297	701	62	officer	one	discover
199	405	148	top	against	let
319	366	861	produce	phone	official
230	759	374	usually	sing	director
369	887	314	would	energy	born
310	951	34	art	cup	base
373	449	197	letter	use	hospital
353	881	867	trip	cold	much
204	496	56	other	that	hit
120	57	379	human	ok	five
188	873	953	represent	radio	life
345	433	290	structure	hand	long
\.


--
-- Data for Name: relation_33; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_33 (user_id, session_id, started_at, device) FROM stdin;
7	445	whom	though
740	702	professor	suffer
183	47	important	rule
699	641	peace	feeling
116	643	likely	PM
238	748	later	part
113	858	action	realize
309	102	president	above
946	38	face	produce
461	322	discover	four
967	224	responsibility	strong
619	747	image	eye
518	578	most	enough
586	63	include	step
66	685	Republican	event
995	975	bill	always
648	671	mind	sell
318	72	near	project
415	630	interesting	week
803	783	prevent	forget
208	813	attack	realize
77	899	their	situation
909	377	consumer	role
772	361	never	place
898	778	arm	if
467	40	into	deal
329	443	TV	how
382	748	after	tree
315	281	including	type
993	979	product	want
921	421	economic	poor
357	1	recently	attorney
102	577	others	animal
21	430	join	religious
537	314	everything	commercial
977	863	carry	will
637	447	defense	heart
361	792	no	hold
754	709	run	lot
169	717	mention	son
837	128	hit	before
346	49	able	charge
246	457	per	plant
266	713	ok	top
730	848	into	part
774	872	lose	happy
492	268	strong	think
197	636	add	mother
910	571	scientist	cut
384	489	what	film
148	931	film	control
375	1	continue	above
921	316	activity	never
753	264	people	mind
314	62	necessary	when
784	748	consider	painting
385	541	price	there
222	366	head	because
413	672	through	administration
751	65	able	boy
815	640	imagine	body
801	607	politics	pattern
836	7	last	indeed
458	367	perhaps	him
734	152	officer	walk
724	28	city	purpose
729	889	build	behind
362	437	Mr	themselves
690	792	off	form
579	10	force	according
11	421	second	make
718	82	building	story
294	12	teacher	red
390	843	seven	recent
424	838	discussion	second
636	528	forget	visit
695	301	my	computer
2	169	reveal	figure
929	254	consumer	radio
202	463	issue	story
215	649	film	thing
465	840	teach	draw
398	789	charge	nearly
132	516	lay	peace
899	157	collection	drug
808	893	technology	good
240	87	of	chair
815	294	his	common
114	66	act	certain
613	103	science	training
447	326	total	night
701	1000	believe	everyone
265	35	figure	executive
822	905	bad	happen
215	571	class	sound
408	444	stay	he
466	11	head	shoulder
382	657	game	low
358	557	should	agent
761	891	store	least
\.


--
-- Data for Name: relation_34; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_34 (custorder_id, placed_at, status) FROM stdin;
1	early	sense
2	break	friend
3	various	issue
4	establish	game
5	someone	material
6	season	determine
7	partner	right
8	grow	history
9	change	clear
10	team	indicate
11	early	few
12	American	least
13	remember	field
14	remember	however
15	both	recent
16	green	whether
17	maybe	business
18	federal	surface
19	understand	box
20	perform	itself
21	front	situation
22	carry	morning
23	lose	class
24	difference	financial
25	spring	people
26	mention	impact
27	good	view
28	forget	late
29	certain	market
30	law	sort
31	possible	anything
32	audience	image
33	onto	successful
34	wonder	finish
35	eight	say
36	message	may
37	camera	part
38	common	arrive
39	by	include
40	grow	energy
41	per	exactly
42	herself	use
43	sense	produce
44	service	various
45	quite	address
46	difficult	commercial
47	front	simple
48	factor	everything
49	first	become
50	rest	smile
51	during	player
52	individual	theory
53	hard	crime
54	author	treatment
55	and	simple
56	loss	under
57	plan	relate
58	medical	man
59	fine	crime
60	dog	development
61	save	half
62	chair	west
63	pull	former
64	note	wrong
65	movie	possible
66	choice	act
67	tell	fine
68	performance	capital
69	trip	air
70	film	material
71	better	event
72	area	meet
73	sometimes	film
74	deep	avoid
75	nothing	call
76	green	turn
77	person	around
78	near	employee
79	admit	product
80	less	watch
81	difficult	Mr
82	during	almost
83	effort	tonight
84	during	note
85	do	machine
86	agent	capital
87	card	worry
88	front	forward
89	analysis	really
90	policy	book
91	option	manager
92	number	Mrs
93	on	radio
94	return	character
95	spend	art
96	common	local
97	leader	piece
98	town	be
99	gas	they
100	rock	want
\.


--
-- Data for Name: relation_35; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_35 (custorder_id, shipment_id, carrier, tracking_no, shipped_at, delivered_at) FROM stdin;
16	927	check	car	success	bad
37	388	including	television	including	look
19	173	bed	according	end	laugh
40	746	sport	investment	source	science
52	162	building	whose	return	edge
17	293	what	president	day	though
42	540	there	best	employee	question
88	794	just	would	want	woman
51	769	room	maintain	world	ever
80	639	student	blood	figure	box
62	282	including	peace	general	data
68	291	including	public	heavy	cause
83	891	career	seven	both	seven
60	769	window	media	child	magazine
100	317	house	scientist	then	site
3	5	Republican	difference	include	tough
46	279	put	leader	once	author
21	410	boy	name	believe	single
53	418	anything	good	cost	fast
61	497	environmental	contain	range	region
66	52	million	president	region	maintain
69	807	nation	happy	likely	lawyer
32	246	yourself	interest	specific	hit
57	243	fine	peace	hour	peace
8	998	listen	believe	everyone	government
16	479	indeed	country	road	six
75	839	check	century	picture	wall
54	445	ready	person	including	majority
71	664	husband	system	all	small
85	368	ball	feel	issue	situation
35	685	until	son	she	speech
8	929	mother	what	course	would
46	550	lead	entire	stage	hard
55	342	main	performance	institution	easy
49	658	total	single	seek	player
100	407	red	dinner	business	possible
2	590	learn	seem	college	prevent
64	50	production	blood	determine	your
18	658	fast	possible	force	half
75	350	learn	now	our	can
40	30	trade	interview	himself	order
91	971	property	style	impact	ground
51	819	environment	yard	kitchen	describe
11	424	smile	some	outside	house
84	807	feeling	note	tough	enjoy
67	944	material	water	full	nice
50	682	add	film	president	party
96	71	produce	material	avoid	up
94	198	southern	hundred	prepare	brother
43	78	world	could	window	glass
11	51	share	him	always	baby
71	535	anything	later	whose	option
92	47	fill	world	task	oil
96	302	huge	deep	really	mind
42	67	want	writer	some	camera
88	886	message	bed	mention	key
92	272	human	opportunity	vote	between
11	124	ever	plan	necessary	final
82	931	animal	various	back	and
2	192	peace	entire	trade	language
35	562	wide	western	economic	accept
78	853	woman	stay	president	with
6	534	such	weight	beat	investment
67	61	dark	give	plant	race
72	342	your	some	single	attention
21	578	dream	bit	will	although
27	24	important	through	certain	he
33	610	study	cold	physical	section
53	426	wrong	could	then	three
93	416	five	discover	painting	institution
54	214	close	in	cultural	oil
79	170	before	expert	worry	central
64	183	receive	detail	ready	view
12	202	condition	more	nice	magazine
73	231	still	century	skill	result
65	19	financial	ok	better	commercial
84	573	leg	man	determine	happy
27	234	receive	give	single	the
57	984	condition	sit	old	hospital
86	599	pattern	age	resource	four
66	796	stage	must	provide	particular
21	946	watch	real	floor	economy
61	239	approach	able	change	mind
72	513	fine	at	goal	mention
59	83	become	oil	agree	at
96	179	stop	civil	business	use
47	984	actually	board	wish	Mr
43	473	position	whose	western	clearly
25	75	whose	but	control	method
75	476	necessary	simple	former	child
14	42	nothing	drive	shoulder	music
87	925	practice	air	into	wrong
77	47	simply	politics	second	resource
100	587	animal	goal	ready	range
48	120	new	fly	yard	interest
38	137	court	bag	study	share
43	382	price	always	expert	act
32	170	around	between	early	whether
15	93	bill	rate	themselves	executive
44	204	way	game	must	business
\.


--
-- Data for Name: relation_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_36 (promotion_id, promo_name, starts_at, ends_at, discount_type, discount_value) FROM stdin;
1	thus	administration	effort	value	food
2	game	little	program	summer	it
3	year	item	four	above	marriage
4	seek	force	edge	husband	say
5	ask	grow	month	whose	ago
6	or	language	could	result	charge
7	fine	father	mouth	defense	sound
8	bit	could	support	various	degree
9	executive	kid	late	suggest	office
10	three	over	weight	center	near
11	past	myself	bring	baby	television
12	personal	full	every	game	increase
13	mission	director	law	clear	whom
14	future	source	give	song	side
15	likely	worker	wind	member	space
16	south	case	tend	painting	food
17	song	while	discover	point	improve
18	despite	talk	bed	investment	must
19	will	get	democratic	fish	pretty
20	season	open	south	man	knowledge
21	standard	series	concern	however	much
22	the	either	term	beyond	among
23	order	item	most	item	serve
24	nice	color	serious	consider	wall
25	tell	focus	natural	unit	imagine
26	source	doctor	past	seek	process
27	politics	never	else	wrong	administration
28	nation	almost	begin	claim	while
29	agency	doctor	west	reveal	management
30	with	education	let	opportunity	continue
31	tax	election	tax	space	next
32	senior	movement	produce	system	allow
33	Republican	performance	nature	possible	leave
34	people	level	thank	food	around
35	run	couple	sport	the	opportunity
36	section	job	every	can	mouth
37	TV	simply	walk	gun	PM
38	size	grow	yes	trouble	same
39	clear	land	ago	out	crime
40	because	condition	tree	be	read
41	happy	music	price	avoid	draw
42	doctor	far	enter	woman	arm
43	who	trouble	than	hope	require
44	bit	past	others	often	particular
45	forward	second	share	along	bit
46	animal	Mr	happy	form	coach
47	environment	we	tree	budget	significant
48	direction	blue	ready	detail	activity
49	me	cold	color	attention	line
50	argue	performance	expert	leg	everything
51	show	popular	number	simply	how
52	nature	edge	color	recognize	into
53	avoid	current	later	member	reflect
54	even	more	free	within	small
55	than	security	market	garden	because
56	director	every	window	everyone	lay
57	rest	maintain	future	near	another
58	that	record	minute	focus	their
59	amount	second	though	box	television
60	certain	green	people	nothing	conference
61	page	whether	reality	use	from
62	way	avoid	activity	coach	fear
63	understand	animal	gun	whole	do
64	population	indeed	his	simply	her
65	politics	line	development	more	care
66	language	audience	friend	stay	if
67	reach	reveal	successful	television	individual
68	knowledge	sound	throw	phone	laugh
69	include	window	strong	road	area
70	sport	professional	treatment	effort	might
71	air	so	part	movie	culture
72	affect	read	building	pretty	push
73	weight	station	tough	ability	reality
74	believe	also	listen	company	whether
75	less	ask	thank	fast	data
76	control	myself	hot	article	cultural
77	paper	leg	how	kind	note
78	among	your	know	sure	three
79	perhaps	western	interesting	they	computer
80	hand	us	tax	program	major
81	economic	floor	begin	a	election
82	garden	step	mission	discover	kind
83	yourself	culture	serve	require	buy
84	data	myself	table	majority	low
85	describe	successful	story	mission	property
86	paper	site	standard	specific	maybe
87	first	still	soldier	Mr	however
88	responsibility	old	present	finally	lawyer
89	tonight	field	case	heart	account
90	fast	center	appear	table	camera
91	job	her	million	door	case
92	if	sometimes	bring	force	drug
93	far	security	kid	sound	wall
94	sea	air	decade	agree	present
95	least	outside	themselves	this	cause
96	reveal	and	save	son	operation
97	idea	baby	the	security	just
98	far	very	radio	sport	church
99	race	establish	adult	hold	site
100	notice	road	reflect	town	beat
\.


--
-- Data for Name: relation_37; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_37 (promotion_id, coupon_code, max_uses, per_user_limit) FROM stdin;
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
-- Data for Name: relation_38; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_38 (warehouse_id, warehouse_name, region) FROM stdin;
1	recent	whatever
2	environment	current
3	site	Mrs
4	various	drug
5	daughter	Republican
6	event	officer
7	listen	even
8	station	coach
9	deep	air
10	enter	your
11	time	catch
12	nothing	coach
13	recently	choose
14	professor	here
15	look	face
16	stand	step
17	down	least
18	mind	explain
19	heart	local
20	decade	vote
21	true	finally
22	when	stage
23	run	shake
24	machine	heavy
25	involve	enjoy
26	around	important
27	away	large
28	better	job
29	family	old
30	require	again
31	speech	seem
32	church	late
33	fast	eight
34	or	enough
35	quality	various
36	lose	purpose
37	specific	require
38	allow	affect
39	almost	traditional
40	already	among
41	sound	watch
42	son	front
43	offer	seven
44	sing	law
45	mission	ago
46	note	back
47	mission	stuff
48	whose	fine
49	ok	personal
50	born	drop
51	could	drop
52	management	method
53	piece	budget
54	bed	fight
55	majority	cup
56	reveal	fly
57	summer	discussion
58	sister	sound
59	opportunity	capital
60	maintain	movement
61	west	seem
62	public	door
63	give	approach
64	reflect	section
65	window	later
66	court	factor
67	ahead	still
68	add	medical
69	simple	throughout
70	chair	entire
71	cold	game
72	begin	wind
73	office	line
74	talk	identify
75	on	necessary
76	drug	area
77	his	throw
78	experience	a
79	state	human
80	past	goal
81	professional	market
82	another	prevent
83	agent	marriage
84	top	sense
85	sport	that
86	back	receive
87	edge	difference
88	believe	large
89	relate	data
90	young	where
91	help	majority
92	remember	eye
93	tonight	international
94	computer	media
95	same	both
96	work	image
97	wide	entire
98	although	poor
99	upon	position
100	hand	partner
\.


--
-- Data for Name: relation_39; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_39 (warehouse_id, bin_id, code) FROM stdin;
58	789	special
40	943	practice
72	244	line
65	777	bill
3	398	four
59	180	mean
57	823	go
94	989	station
69	35	official
2	134	often
39	489	positive
79	496	end
81	661	it
83	790	drug
71	727	industry
5	766	no
58	253	artist
26	74	produce
2	441	region
19	5	crime
8	549	hit
35	331	guy
9	227	station
1	556	among
18	99	recently
45	961	result
82	205	pass
36	493	kind
23	845	worker
96	679	side
60	639	name
19	991	crime
69	325	myself
21	995	catch
51	961	shoulder
76	214	shoulder
39	611	father
87	677	half
33	469	born
57	140	everyone
24	180	teacher
21	511	protect
53	765	read
42	173	rule
80	791	number
18	272	wait
70	665	nearly
93	676	reduce
83	24	decide
52	818	discuss
69	279	particular
84	954	all
23	557	choice
46	750	until
96	112	spend
69	257	happy
6	180	house
82	709	lawyer
55	25	enough
9	661	some
3	591	sort
70	9	although
60	552	worker
56	375	gun
78	789	wife
19	922	such
23	57	friend
2	378	before
93	602	attorney
84	831	well
91	85	wrong
8	126	modern
19	159	phone
3	262	through
29	586	computer
95	580	product
25	693	happy
10	353	husband
53	353	time
95	506	responsibility
50	521	staff
25	276	her
93	565	else
25	742	actually
53	812	relationship
31	390	box
28	103	fact
52	694	less
31	325	then
70	951	certainly
48	826	music
5	213	south
21	329	senior
39	635	account
59	103	will
2	192	travel
97	732	parent
70	377	threat
26	163	without
36	796	discussion
\.


--
-- Data for Name: relation_4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_4 (digitalproduct_id, sku, product_name, base_price, is_active, quantity, delivery_type, productimage, pricehistory) FROM stdin;
201	as	hospital	173	305	669	nice	\N	\N
202	hundred	include	365	625	758	magazine	\N	\N
203	indicate	agreement	402	575	410	risk	\N	\N
204	call	statement	496	809	266	sign	\N	\N
205	ever	film	734	228	265	play	\N	\N
206	sister	could	865	677	32	stage	\N	\N
207	worker	might	325	951	443	first	\N	\N
208	cultural	general	805	276	195	protect	\N	\N
209	contain	treat	641	750	170	meet	\N	\N
211	people	consumer	621	969	269	could	\N	\N
212	doctor	financial	540	167	142	road	\N	\N
213	oil	ground	916	733	452	teach	\N	\N
214	southern	write	318	770	411	process	\N	\N
215	ground	head	119	736	212	sense	\N	\N
216	deep	way	70	109	234	more	\N	\N
217	guy	almost	330	505	951	difficult	\N	\N
218	assume	perform	979	192	47	situation	\N	\N
219	help	truth	829	612	24	pay	\N	\N
220	provide	arrive	700	36	507	learn	\N	\N
221	return	hope	351	679	858	represent	\N	\N
222	traditional	ahead	121	628	710	mind	\N	\N
223	teacher	he	98	228	410	rest	\N	\N
224	foot	ball	507	461	387	authority	\N	\N
225	along	bill	997	238	242	population	\N	\N
226	move	what	474	561	594	get	\N	\N
227	act	thought	217	463	733	appear	\N	\N
229	serious	several	932	219	81	raise	\N	\N
230	animal	answer	16	817	6	his	\N	\N
231	wish	opportunity	328	911	393	success	\N	\N
232	coach	think	941	201	410	of	\N	\N
233	chance	call	902	845	777	control	\N	\N
234	participant	before	813	936	32	present	\N	\N
235	college	production	397	149	898	late	\N	\N
237	room	but	82	474	668	fall	\N	\N
238	station	event	928	15	37	black	\N	\N
239	president	compare	538	861	133	read	\N	\N
240	officer	enjoy	956	281	800	important	\N	\N
241	manager	force	443	94	195	remember	\N	\N
242	director	garden	512	653	134	daughter	\N	\N
243	beat	quickly	704	837	866	price	\N	\N
244	form	admit	679	459	400	many	\N	\N
245	green	staff	647	275	993	ready	\N	\N
246	require	senior	658	651	249	other	\N	\N
247	radio	then	62	603	958	at	\N	\N
248	lawyer	defense	359	439	620	police	\N	\N
249	young	talk	927	362	561	cup	\N	\N
250	audience	box	552	205	729	project	\N	\N
251	thousand	seem	942	679	72	learn	\N	\N
252	describe	become	762	626	739	Republican	\N	\N
253	deep	summer	258	182	1000	this	\N	\N
254	audience	fine	155	61	941	expect	\N	\N
255	travel	song	876	439	873	quite	\N	\N
256	capital	amount	55	653	94	physical	\N	\N
257	benefit	successful	514	380	102	every	\N	\N
258	decision	toward	42	130	545	speak	\N	\N
259	step	shoulder	454	681	132	admit	\N	\N
260	need	enter	782	725	921	dinner	\N	\N
261	seek	generation	26	755	538	road	\N	\N
262	top	respond	93	257	820	investment	\N	\N
263	material	sport	88	310	36	detail	\N	\N
264	statement	eye	60	751	268	skill	\N	\N
265	church	financial	753	134	267	international	\N	\N
266	major	institution	827	120	877	matter	\N	\N
268	Democrat	special	515	571	211	view	\N	\N
269	myself	include	946	347	522	carry	\N	\N
270	food	tell	980	918	599	training	\N	\N
271	deal	artist	108	133	669	benefit	\N	\N
272	site	popular	537	573	737	no	\N	\N
274	certain	hold	205	380	399	away	\N	\N
275	six	process	100	420	354	test	\N	\N
277	star	late	835	819	667	hot	\N	\N
278	level	add	428	306	327	position	\N	\N
279	clearly	face	280	334	767	try	\N	\N
280	husband	eye	539	125	153	consider	\N	\N
281	opportunity	expect	937	745	334	fact	\N	\N
282	cultural	southern	587	71	463	factor	\N	\N
283	week	book	492	466	935	effort	\N	\N
284	interview	Mrs	950	760	994	read	\N	\N
285	speech	school	836	911	948	treatment	\N	\N
286	full	tend	945	593	821	put	\N	\N
287	couple	later	138	50	537	meeting	\N	\N
288	international	light	590	874	258	kitchen	\N	\N
289	raise	thank	720	588	765	art	\N	\N
290	laugh	great	371	965	817	part	\N	\N
291	listen	performance	413	315	476	whether	\N	\N
292	thousand	community	545	520	172	feeling	\N	\N
296	affect	lawyer	832	102	559	outside	\N	\N
297	yet	herself	732	110	210	trial	\N	\N
300	hotel	quality	659	859	178	choice	\N	\N
1901	audience	bag	276	355	769	audience	\N	\N
1902	occur	those	303	608	243	choice	\N	\N
1903	eat	executive	559	43	338	yes	\N	\N
1904	appear	not	570	183	758	between	\N	\N
1905	street	human	424	326	559	shoulder	\N	\N
267	agreement	return	97	436	862	discussion	\N	[{"price": "978", "ends_at": "interview", "price_id": "620", "starts_at": "left"}]
294	site	raise	577	137	929	skill	\N	[{"price": "208", "ends_at": "reflect", "price_id": "261", "starts_at": "enough"}]
1907	provide	amount	797	662	547	though	\N	\N
1908	better	find	30	326	489	also	\N	\N
1909	do	cut	210	409	102	red	\N	\N
1910	hit	social	728	647	817	operation	\N	\N
1911	through	too	506	552	565	fish	\N	\N
1912	church	program	775	797	459	stand	\N	\N
1913	whatever	view	696	654	198	property	\N	\N
1914	east	her	651	264	620	up	\N	\N
1915	line	detail	8	69	832	person	\N	\N
1916	miss	major	19	825	196	visit	\N	\N
1917	behind	capital	281	653	580	paper	\N	\N
1918	notice	speech	787	490	573	official	\N	\N
1919	look	charge	464	43	390	nation	\N	\N
1920	year	owner	412	57	656	some	\N	\N
1921	public	American	297	363	240	factor	\N	\N
1922	sea	debate	471	572	482	reflect	\N	\N
1923	land	water	39	786	998	by	\N	\N
1924	rock	military	121	330	833	maintain	\N	\N
1925	hour	by	960	439	750	memory	\N	\N
1926	executive	home	862	719	759	get	\N	\N
1927	major	foreign	883	911	284	machine	\N	\N
1928	hold	likely	701	563	895	such	\N	\N
1929	daughter	majority	991	110	674	but	\N	\N
1930	sell	fall	436	519	435	character	\N	\N
1931	kid	address	837	491	229	sure	\N	\N
1932	even	similar	182	530	610	receive	\N	\N
1933	put	figure	636	938	479	billion	\N	\N
1934	financial	administration	105	87	411	house	\N	\N
1935	loss	because	772	273	196	ready	\N	\N
1936	in	wife	588	686	964	idea	\N	\N
1937	thus	far	995	610	385	current	\N	\N
1938	she	let	605	13	244	decision	\N	\N
1940	suggest	enough	88	167	404	would	\N	\N
1941	sing	range	803	53	218	trouble	\N	\N
1942	goal	travel	873	185	179	often	\N	\N
1943	mouth	ten	578	119	240	fall	\N	\N
1944	worker	rather	429	296	161	these	\N	\N
1946	discover	agree	562	195	126	woman	\N	\N
1947	expert	task	673	506	207	above	\N	\N
1948	chance	cost	640	717	815	central	\N	\N
1949	near	image	735	851	619	lawyer	\N	\N
1950	decide	local	181	339	674	building	\N	\N
1951	item	hair	197	979	665	natural	\N	\N
1952	coach	staff	114	335	597	still	\N	\N
1953	Democrat	loss	183	3	772	whatever	\N	\N
1954	down	ahead	392	553	396	if	\N	\N
1955	professional	account	66	325	345	lot	\N	\N
1956	avoid	certain	266	903	275	author	\N	\N
1957	today	budget	164	960	473	owner	\N	\N
1958	future	feel	393	481	96	capital	\N	\N
1959	produce	make	728	125	572	right	\N	\N
1961	mouth	itself	833	302	761	population	\N	\N
1962	skill	billion	205	366	666	school	\N	\N
1963	a	summer	687	876	863	indicate	\N	\N
1964	simple	add	553	895	659	design	\N	\N
1965	series	standard	843	816	442	party	\N	\N
1966	over	top	269	775	548	society	\N	\N
1967	quality	guy	136	681	911	work	\N	\N
1968	college	question	807	346	54	unit	\N	\N
1969	for	benefit	967	257	882	crime	\N	\N
1970	fish	hold	990	680	903	group	\N	\N
1971	serve	how	619	252	38	executive	\N	\N
1972	conference	couple	880	873	96	share	\N	\N
1973	gas	require	686	185	197	throw	\N	\N
1974	stand	piece	923	832	841	daughter	\N	\N
1975	blood	reflect	518	627	874	thousand	\N	\N
1976	various	part	696	419	506	not	\N	\N
1978	ask	various	678	111	836	growth	\N	\N
1979	mission	site	437	181	33	factor	\N	\N
1980	water	health	313	363	32	sometimes	\N	\N
1981	lot	boy	350	396	449	arrive	\N	\N
1982	choice	environment	485	364	742	eye	\N	\N
1983	candidate	west	448	63	693	cultural	\N	\N
1984	season	drive	266	583	50	investment	\N	\N
1985	purpose	huge	394	158	487	interview	\N	\N
1986	my	these	400	848	557	table	\N	\N
1987	rule	garden	183	232	527	phone	\N	\N
1988	five	own	856	630	867	bring	\N	\N
1989	citizen	mean	422	465	768	picture	\N	\N
1990	culture	off	203	48	581	expect	\N	\N
1991	home	film	76	968	723	statement	\N	\N
1993	apply	draw	705	872	841	beyond	\N	\N
1994	three	way	348	214	105	police	\N	\N
1995	nearly	choice	916	325	34	our	\N	\N
1996	away	major	207	359	972	maintain	\N	\N
1997	several	official	715	44	662	brother	\N	\N
1998	home	position	607	931	314	cut	\N	\N
1999	boy	appear	301	667	518	real	\N	\N
2001	whole	appear	674	842	707	shake	\N	\N
2002	wide	piece	584	1	447	capital	\N	\N
2003	hospital	team	813	228	984	middle	\N	\N
2004	role	buy	99	8	447	relationship	\N	\N
2005	own	child	563	295	529	animal	\N	\N
2006	wrong	street	971	757	858	power	\N	\N
2007	production	talk	826	635	587	however	\N	\N
2008	church	trade	197	823	821	almost	\N	\N
2009	pick	thought	325	118	971	fund	\N	\N
2010	campaign	represent	576	122	496	perhaps	\N	\N
2011	base	leader	808	569	394	ready	\N	\N
1977	let	brother	555	901	246	where	\N	[{"price": "2", "ends_at": "remain", "price_id": "303", "starts_at": "project"}]
2012	fight	you	574	917	57	scientist	\N	\N
2013	anything	it	476	917	274	dinner	\N	\N
2014	music	own	593	336	741	medical	\N	\N
2015	tell	where	129	842	319	accept	\N	\N
2016	news	stop	49	130	296	activity	\N	\N
2017	kind	toward	807	608	126	risk	\N	\N
2018	section	store	858	439	441	from	\N	\N
2019	oil	air	434	365	574	arrive	\N	\N
2020	worker	building	718	590	505	home	\N	\N
2021	material	free	735	665	722	heart	\N	\N
2022	middle	stand	950	301	770	our	\N	\N
2023	position	situation	479	248	214	term	\N	\N
2025	huge	red	753	15	784	shoulder	\N	\N
2026	within	ten	460	987	684	practice	\N	\N
2027	on	former	214	297	905	per	\N	\N
2028	can	both	149	88	937	book	\N	\N
2029	your	rule	544	93	676	trouble	\N	\N
2030	game	home	175	418	173	west	\N	\N
2031	task	simply	779	432	829	day	\N	\N
2032	a	unit	348	793	676	affect	\N	\N
2033	prepare	environmental	862	571	238	idea	\N	\N
2034	none	soldier	337	763	782	full	\N	\N
2035	reveal	behind	793	772	768	subject	\N	\N
2036	red	ball	175	648	300	a	\N	\N
2037	behavior	apply	115	232	640	develop	\N	\N
2039	career	medical	179	703	811	network	\N	\N
2040	town	road	822	551	451	without	\N	\N
2041	along	land	954	645	151	value	\N	\N
2042	long	human	411	876	231	try	\N	\N
2043	member	manager	855	735	927	ready	\N	\N
2045	answer	later	25	301	649	ago	\N	\N
2046	cut	significant	294	57	95	eight	\N	\N
2047	way	safe	365	118	685	fire	\N	\N
2048	sea	those	282	980	728	something	\N	\N
2049	western	course	57	566	280	star	\N	\N
2050	bad	security	978	358	252	pattern	\N	\N
2051	cultural	remember	1000	804	502	focus	\N	\N
2052	southern	enjoy	779	773	70	Mr	\N	\N
2053	fund	call	419	390	482	voice	\N	\N
2054	seem	become	848	629	423	ago	\N	\N
2055	very	husband	445	227	468	strategy	\N	\N
2056	south	work	754	520	405	four	\N	\N
2057	table	appear	194	206	909	imagine	\N	\N
2058	over	both	39	642	147	now	\N	\N
2059	measure	then	360	361	870	return	\N	\N
2060	ok	memory	260	875	990	office	\N	\N
2061	pretty	something	328	318	19	technology	\N	\N
2062	series	wrong	446	466	272	see	\N	\N
2063	air	threat	801	736	723	security	\N	\N
2065	issue	whole	956	436	716	scene	\N	\N
2066	affect	discuss	237	848	612	decade	\N	\N
2068	pay	daughter	242	559	728	help	\N	\N
2069	return	little	228	685	123	interesting	\N	\N
2070	popular	among	871	97	198	professional	\N	\N
2071	test	thank	44	424	903	which	\N	\N
2072	me	sit	148	740	691	during	\N	\N
2074	morning	lay	876	63	969	hospital	\N	\N
2075	seem	somebody	729	780	103	day	\N	\N
2076	hope	cup	193	362	65	main	\N	\N
2077	pressure	western	586	612	223	speech	\N	\N
2078	rather	despite	998	401	299	top	\N	\N
2079	trade	involve	609	300	317	high	\N	\N
2080	wide	show	597	903	372	later	\N	\N
2082	current	whole	146	369	953	majority	\N	\N
2083	order	off	361	612	540	man	\N	\N
2084	report	less	924	54	537	grow	\N	\N
2085	maybe	sell	93	880	445	power	\N	\N
2086	us	worry	847	539	366	send	\N	\N
2087	have	easy	1000	313	532	actually	\N	\N
2088	all	able	396	530	559	short	\N	\N
2089	piece	movie	171	153	550	from	\N	\N
2090	hard	song	926	677	626	conference	\N	\N
2091	political	age	674	228	716	former	\N	\N
2092	resource	lay	446	433	945	ask	\N	\N
2093	outside	short	516	644	892	specific	\N	\N
2094	opportunity	husband	952	317	454	catch	\N	\N
2095	official	everyone	58	466	574	concern	\N	\N
2096	community	audience	1	592	965	blue	\N	\N
2097	floor	decade	306	632	514	once	\N	\N
2098	seek	soldier	659	75	116	book	\N	\N
2099	almost	feeling	372	459	376	event	\N	\N
2100	scene	result	154	285	837	this	\N	\N
295	end	owner	190	785	421	go	[{"url": "myself", "alt_text": "evening", "image_id": "941", "sort_order": "955"}]	\N
1906	financial	teacher	614	843	932	wear	[{"url": "city", "alt_text": "line", "image_id": "330", "sort_order": "867"}]	\N
2081	research	throw	226	123	754	all	[{"url": "education", "alt_text": "just", "image_id": "518", "sort_order": "234"}]	\N
2067	material	special	834	634	395	during	[{"url": "call", "alt_text": "around", "image_id": "652", "sort_order": "517"}]	\N
298	myself	behavior	69	648	585	today	[{"url": "rule", "alt_text": "sit", "image_id": "798", "sort_order": "609"}]	\N
210	focus	pass	596	936	956	mission	[{"url": "million", "alt_text": "production", "image_id": "793", "sort_order": "271"}]	\N
2064	exactly	material	722	764	13	head	[{"url": "thus", "alt_text": "camera", "image_id": "949", "sort_order": "541"}]	\N
1945	customer	else	862	594	137	enjoy	[{"url": "example", "alt_text": "significant", "image_id": "768", "sort_order": "815"}]	\N
2044	produce	policy	125	515	767	will	\N	[{"price": "278", "ends_at": "prepare", "price_id": "802", "starts_at": "energy"}]
1992	short	group	6	913	145	window	[{"url": "increase", "alt_text": "night", "image_id": "175", "sort_order": "973"}]	\N
2073	general	so	478	649	851	name	[{"url": "hear", "alt_text": "day", "image_id": "566", "sort_order": "363"}]	\N
2038	already	student	437	605	5	heart	[{"url": "use", "alt_text": "north", "image_id": "67", "sort_order": "334"}]	\N
293	reduce	into	152	257	704	so	[{"url": "along", "alt_text": "read", "image_id": "688", "sort_order": "422"}]	\N
299	person	year	876	75	814	different	[{"url": "mind", "alt_text": "nation", "image_id": "377", "sort_order": "550"}]	\N
236	certainly	act	579	389	261	full	[{"url": "full", "alt_text": "reduce", "image_id": "476", "sort_order": "99"}]	\N
2000	son	design	768	173	811	name	[{"url": "house", "alt_text": "quickly", "image_id": "118", "sort_order": "995"}]	\N
2024	say	until	136	64	972	your	[{"url": "later", "alt_text": "individual", "image_id": "289", "sort_order": "482"}, {"url": "cost", "alt_text": "window", "image_id": "371", "sort_order": "257"}]	[{"price": "998", "ends_at": "animal", "price_id": "200", "starts_at": "sometimes"}]
1960	develop	financial	264	966	317	help	\N	[{"price": "449", "ends_at": "as", "price_id": "191", "starts_at": "answer"}]
1939	hundred	game	395	270	629	visit	\N	[{"price": "664", "ends_at": "since", "price_id": "235", "starts_at": "game"}]
228	box	mean	339	509	608	bed	\N	[{"price": "174", "ends_at": "red", "price_id": "288", "starts_at": "protect"}]
276	matter	candidate	589	67	45	item	\N	[{"price": "865", "ends_at": "issue", "price_id": "569", "starts_at": "security"}]
273	consumer	road	919	852	299	build	\N	[{"price": "207", "ends_at": "behavior", "price_id": "449", "starts_at": "job"}]
\.


--
-- Data for Name: relation_40; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_40 (supplier_id, supplier_name) FROM stdin;
1	mention
2	live
3	close
4	understand
5	same
6	church
7	safe
8	analysis
9	data
10	matter
11	political
12	force
13	wish
14	under
15	watch
16	conference
17	field
18	instead
19	talk
20	letter
21	stuff
22	two
23	marriage
24	dog
25	those
26	about
27	rate
28	wish
29	consumer
30	on
31	with
32	or
33	near
34	place
35	practice
36	recognize
37	prevent
38	character
39	hold
40	important
41	less
42	toward
43	sound
44	civil
45	happen
46	thank
47	girl
48	experience
49	city
50	item
51	close
52	themselves
53	develop
54	hot
55	activity
56	figure
57	machine
58	sea
59	truth
60	produce
61	board
62	century
63	voice
64	whatever
65	already
66	decision
67	require
68	art
69	free
70	old
71	now
72	kitchen
73	nature
74	candidate
75	however
76	ball
77	consumer
78	main
79	series
80	glass
81	specific
82	community
83	herself
84	push
85	question
86	fund
87	instead
88	since
89	president
90	general
91	event
92	data
93	strategy
94	election
95	type
96	less
97	PM
98	citizen
99	clearly
100	minute
\.


--
-- Data for Name: relation_41; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_41 (supplier_id, contact_id, email, phone) FROM stdin;
21	114	gregoryreynolds@example.net	six
25	386	bwilson@example.net	director
72	443	sheena33@example.com	answer
40	212	johnsondavid@example.net	yourself
9	290	clarkkim@example.net	keep
64	515	nicole66@example.com	political
60	233	johnsonpaula@example.com	drug
80	742	fuenteslisa@example.com	walk
7	892	vdonaldson@example.org	who
34	333	osnyder@example.org	culture
51	589	ryan19@example.com	local
95	865	tina14@example.net	floor
20	946	johnsonandrew@example.net	wall
84	346	rodriguezchristopher@example.org	play
43	463	chad37@example.net	federal
22	535	gthomas@example.org	keep
13	825	ithomas@example.com	do
59	130	paul50@example.net	make
20	962	wallacechristopher@example.org	play
1	393	allison12@example.com	always
22	135	tylerroberts@example.com	future
14	570	christian23@example.com	nation
82	212	mariahall@example.net	including
81	882	hansenarthur@example.org	by
15	927	reginacarter@example.net	different
8	797	traciswanson@example.com	establish
74	778	currydonna@example.com	age
63	229	antoniosaunders@example.org	with
70	408	mguzman@example.com	situation
92	357	laurasanchez@example.net	party
38	93	dustinwest@example.com	when
29	378	stacy47@example.com	success
96	25	nancy93@example.org	short
13	270	cynthia09@example.com	staff
36	297	anna29@example.org	thousand
71	318	tammyhenderson@example.com	return
24	442	elizabethmitchell@example.org	feel
89	502	robincastillo@example.com	something
42	883	angela74@example.net	table
49	288	itorres@example.net	hour
71	790	garnerjennifer@example.org	unit
52	928	edillon@example.com	rule
27	428	rgalvan@example.org	look
45	73	ricebrandon@example.org	cell
90	547	david90@example.com	science
58	312	jason18@example.org	subject
40	406	fjones@example.com	rise
45	725	jamesthomas@example.net	senior
85	30	xadkins@example.com	writer
37	133	vestrada@example.net	item
15	766	larry08@example.com	degree
42	243	martin09@example.org	author
86	910	burnettspencer@example.net	draw
32	529	marcbarnes@example.net	talk
76	704	travis25@example.com	office
44	144	williamsclinton@example.net	fast
77	999	kimberlybernard@example.org	identify
6	968	hesterdawn@example.net	seven
45	172	adamschristopher@example.net	after
75	258	elizabethmorales@example.com	drive
68	952	rebeccaayala@example.net	shake
83	880	samanthahunt@example.net	challenge
52	730	mooneyanthony@example.net	two
8	743	mary22@example.org	change
80	232	gary17@example.com	them
39	909	gabrielarellano@example.org	avoid
44	996	enelson@example.com	development
44	527	brownemma@example.net	spring
96	617	millerrobert@example.org	and
95	869	maryhansen@example.net	teacher
6	3	kathryn41@example.com	look
53	952	banksharry@example.net	receive
37	838	kennethbenson@example.net	site
1	102	normanjoseph@example.org	answer
18	599	mcgeerachel@example.net	Republican
37	112	howelltanya@example.org	movement
6	280	brittany06@example.net	agent
7	884	kcampbell@example.com	after
78	489	rbaker@example.net	notice
64	54	sheena27@example.com	wall
27	878	mbean@example.net	wonder
25	756	oneillwendy@example.org	laugh
7	865	amy72@example.net	against
45	288	robert54@example.org	family
48	526	aaron32@example.net	series
29	329	lmay@example.net	report
42	505	zachary21@example.org	next
5	606	joshua42@example.com	over
81	820	michael88@example.com	answer
18	132	lauraschmidt@example.org	art
73	194	donaldanderson@example.net	sign
84	241	davisjodi@example.net	just
92	56	briannaflynn@example.org	kid
12	36	ronaldmack@example.com	commercial
7	196	whitneyclark@example.org	scene
97	368	jamesmendez@example.org	event
53	803	emilyellison@example.org	create
93	162	wallsbrian@example.net	house
25	831	johnbrooks@example.org	allow
100	214	joseph55@example.org	believe
\.


--
-- Data for Name: relation_42; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_42 (purchaseorder_id, created_at, status) FROM stdin;
1	two	analysis
2	phone	day
3	while	social
4	store	power
5	story	piece
6	whatever	commercial
7	case	agree
8	room	most
9	customer	soldier
10	event	morning
11	health	arrive
12	administration	minute
13	food	two
14	from	create
15	class	Mrs
16	response	shake
17	set	discuss
18	decision	music
19	image	off
20	ten	total
21	people	investment
22	tough	majority
23	source	specific
24	leave	example
25	much	Congress
26	news	though
27	practice	star
28	around	list
29	son	free
30	gun	popular
31	budget	part
32	clearly	foot
33	think	cold
34	building	expect
35	about	build
36	morning	worker
37	each	behind
38	picture	describe
39	reason	yourself
40	bring	what
41	rock	environmental
42	especially	truth
43	writer	according
44	lot	service
45	next	like
46	its	rate
47	people	present
48	everyone	range
49	work	college
50	whose	action
51	half	address
52	recently	wonder
53	improve	happen
54	this	star
55	guess	opportunity
56	second	election
57	fight	financial
58	memory	likely
59	early	by
60	right	must
61	later	mention
62	trial	least
63	number	home
64	move	rate
65	TV	artist
66	enjoy	artist
67	have	lose
68	simply	difference
69	son	approach
70	wrong	contain
71	order	board
72	nor	affect
73	strategy	management
74	view	difference
75	partner	specific
76	agreement	management
77	test	perform
78	serious	concern
79	above	professor
80	see	word
81	protect	customer
82	defense	painting
83	right	top
84	toward	different
85	page	without
86	decade	seek
87	conference	claim
88	civil	system
89	nearly	ever
90	next	clear
91	forget	analysis
92	think	seat
93	use	argue
94	attorney	church
95	yourself	big
96	thousand	air
97	which	center
98	heart	hit
99	each	far
100	little	treat
\.


--
-- Data for Name: relation_43; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_43 (courierpartner_id, carrier_code, webhook_url) FROM stdin;
1	shoulder	he
2	situation	hot
3	within	allow
4	arrive	century
5	perform	leader
6	military	city
7	expert	compare
8	general	chance
9	affect	those
10	television	save
11	reason	ten
12	phone	able
13	part	born
14	answer	power
15	single	blue
16	edge	hold
17	mind	impact
18	difference	sense
19	office	try
20	budget	kitchen
21	option	weight
22	region	party
23	after	billion
24	prevent	hair
25	sure	air
26	its	soon
27	often	now
28	bad	change
29	production	look
30	have	miss
31	hospital	I
32	affect	leg
33	drop	accept
34	apply	rise
35	general	society
36	someone	night
37	city	bag
38	information	who
39	dinner	them
40	buy	money
41	data	attention
42	side	how
43	gas	fight
44	out	story
45	couple	experience
46	international	news
47	pick	heart
48	billion	either
49	arm	choose
50	hear	third
51	opportunity	full
52	prepare	throughout
53	past	whole
54	return	hand
55	reduce	huge
56	allow	different
57	account	on
58	night	back
59	still	themselves
60	none	system
61	indicate	management
62	show	billion
63	business	material
64	human	trade
65	Mr	recent
66	minute	either
67	exist	real
68	shoulder	according
69	network	whole
70	evidence	decision
71	memory	institution
72	center	amount
73	interview	bar
74	a	natural
75	beautiful	anything
76	call	discussion
77	pay	state
78	garden	through
79	strong	foreign
80	least	house
81	number	American
82	test	wear
83	defense	cover
84	about	maybe
85	about	region
86	daughter	note
87	white	seem
88	attorney	member
89	for	else
90	how	religious
91	east	free
92	step	usually
93	on	Mrs
94	team	between
95	dark	bed
96	again	significant
97	table	rich
98	now	mission
99	figure	agree
100	system	mind
\.


--
-- Data for Name: relation_44; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_44 (product_id, category_products_category_id) FROM stdin;
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
-- Data for Name: relation_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_45 (product_id, tag_id) FROM stdin;
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
-- Data for Name: relation_46; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_46 (product_id, bought_together_product_product_id) FROM stdin;
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
-- Data for Name: relation_47; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_47 (customer_id, product_id) FROM stdin;
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
-- Data for Name: relation_48; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_48 (customer_id, wishlist_id, product_id) FROM stdin;
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
-- Data for Name: relation_49; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_49 (customer_id, review_id, reviews_product_id) FROM stdin;
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
-- Data for Name: relation_5; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_5 (electronics_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, cpu, ram_gb, role, screen_size_in, productimage, pricehistory) FROM stdin;
302	southern	investment	827	291	226	dark	613	\N	\N	electronics	\N	\N	\N
304	owner	operation	464	692	376	read	818	\N	\N	electronics	\N	\N	\N
305	population	must	494	744	75	section	418	\N	\N	electronics	\N	\N	\N
306	decade	style	207	9	765	from	527	\N	\N	electronics	\N	\N	\N
307	final	wide	898	499	79	organization	631	\N	\N	electronics	\N	\N	\N
308	note	notice	904	523	816	arm	42	\N	\N	electronics	\N	\N	\N
309	hope	character	361	872	470	soon	195	\N	\N	electronics	\N	\N	\N
310	likely	beat	984	307	713	well	554	\N	\N	electronics	\N	\N	\N
311	reduce	daughter	123	842	310	fly	995	\N	\N	electronics	\N	\N	\N
312	note	knowledge	796	557	661	second	539	\N	\N	electronics	\N	\N	\N
313	short	walk	422	556	963	such	618	\N	\N	electronics	\N	\N	\N
314	board	around	646	596	316	member	310	\N	\N	electronics	\N	\N	\N
315	box	against	135	519	455	such	564	\N	\N	electronics	\N	\N	\N
316	difficult	us	792	998	167	speak	652	\N	\N	electronics	\N	\N	\N
317	improve	pick	10	435	754	option	378	\N	\N	electronics	\N	\N	\N
318	out	entire	431	412	289	house	921	\N	\N	electronics	\N	\N	\N
319	mention	dog	93	948	93	which	393	\N	\N	electronics	\N	\N	\N
320	operation	term	276	476	279	result	652	\N	\N	electronics	\N	\N	\N
321	top	south	768	873	493	garden	398	\N	\N	electronics	\N	\N	\N
322	him	pick	468	823	120	draw	364	\N	\N	electronics	\N	\N	\N
323	road	likely	149	426	152	while	177	\N	\N	electronics	\N	\N	\N
325	away	prove	806	295	973	put	265	\N	\N	electronics	\N	\N	\N
326	college	eight	962	527	295	table	708	\N	\N	electronics	\N	\N	\N
327	money	example	281	444	344	old	221	\N	\N	electronics	\N	\N	\N
328	north	citizen	733	850	504	expect	734	\N	\N	electronics	\N	\N	\N
329	even	civil	436	94	66	second	212	\N	\N	electronics	\N	\N	\N
330	word	gun	990	154	235	choice	106	\N	\N	electronics	\N	\N	\N
331	thousand	business	260	160	492	personal	409	\N	\N	electronics	\N	\N	\N
332	contain	man	666	741	192	family	92	\N	\N	electronics	\N	\N	\N
333	west	main	438	627	978	system	563	\N	\N	electronics	\N	\N	\N
334	decade	chance	224	548	433	teacher	49	\N	\N	electronics	\N	\N	\N
335	all	mind	969	668	993	specific	753	\N	\N	electronics	\N	\N	\N
336	land	use	567	696	430	prove	272	\N	\N	electronics	\N	\N	\N
337	add	media	701	286	184	space	825	\N	\N	electronics	\N	\N	\N
339	dream	put	220	694	660	social	888	\N	\N	electronics	\N	\N	\N
340	likely	those	400	127	685	budget	302	\N	\N	electronics	\N	\N	\N
341	coach	authority	699	521	510	writer	119	\N	\N	electronics	\N	\N	\N
342	area	quality	621	875	491	lay	153	\N	\N	electronics	\N	\N	\N
343	exactly	everything	396	629	928	time	172	\N	\N	electronics	\N	\N	\N
345	management	win	505	649	917	whom	808	\N	\N	electronics	\N	\N	\N
346	certainly	score	778	639	346	factor	106	\N	\N	electronics	\N	\N	\N
347	treat	fire	9	776	747	and	949	\N	\N	electronics	\N	\N	\N
348	likely	major	907	992	726	buy	58	\N	\N	electronics	\N	\N	\N
349	perform	state	554	641	451	when	779	\N	\N	electronics	\N	\N	\N
350	girl	reality	926	863	104	speak	521	\N	\N	electronics	\N	\N	\N
351	sort	nor	282	277	724	interesting	422	\N	\N	electronics	\N	\N	\N
352	beyond	purpose	152	134	263	parent	418	\N	\N	electronics	\N	\N	\N
353	field	instead	575	646	613	school	546	\N	\N	electronics	\N	\N	\N
354	until	yet	855	624	522	feel	969	\N	\N	electronics	\N	\N	\N
355	approach	key	424	277	287	trial	713	\N	\N	electronics	\N	\N	\N
356	organization	discussion	314	274	504	actually	511	\N	\N	electronics	\N	\N	\N
357	person	imagine	377	614	482	Congress	347	\N	\N	electronics	\N	\N	\N
358	nation	morning	181	621	778	make	757	\N	\N	electronics	\N	\N	\N
359	mean	voice	902	595	711	fight	548	\N	\N	electronics	\N	\N	\N
360	toward	clear	154	60	517	simple	542	\N	\N	electronics	\N	\N	\N
362	story	father	638	506	492	pattern	122	\N	\N	electronics	\N	\N	\N
363	you	way	131	909	144	wait	231	\N	\N	electronics	\N	\N	\N
364	threat	save	91	651	552	work	577	\N	\N	electronics	\N	\N	\N
365	join	way	177	702	119	party	577	\N	\N	electronics	\N	\N	\N
366	feel	loss	205	516	582	modern	433	\N	\N	electronics	\N	\N	\N
367	sort	different	336	5	793	treatment	842	\N	\N	electronics	\N	\N	\N
368	coach	quite	313	842	631	region	87	\N	\N	electronics	\N	\N	\N
369	sense	effect	761	230	287	leave	276	\N	\N	electronics	\N	\N	\N
370	learn	their	616	737	531	green	24	\N	\N	electronics	\N	\N	\N
371	east	anyone	125	338	356	institution	117	\N	\N	electronics	\N	\N	\N
373	sea	establish	588	43	356	on	95	\N	\N	electronics	\N	\N	\N
375	decide	everything	276	543	51	guess	32	\N	\N	electronics	\N	\N	\N
376	ever	build	81	143	948	movie	381	\N	\N	electronics	\N	\N	\N
377	minute	discuss	957	738	654	heart	97	\N	\N	electronics	\N	\N	\N
378	show	traditional	696	337	281	several	528	\N	\N	electronics	\N	\N	\N
379	personal	small	910	330	982	instead	361	\N	\N	electronics	\N	\N	\N
380	agent	throw	946	823	810	number	621	\N	\N	electronics	\N	\N	\N
381	return	fine	950	892	278	pattern	94	\N	\N	electronics	\N	\N	\N
382	agency	return	696	591	636	for	578	\N	\N	electronics	\N	\N	\N
383	poor	better	429	549	957	often	309	\N	\N	electronics	\N	\N	\N
384	floor	as	920	225	648	remain	563	\N	\N	electronics	\N	\N	\N
386	receive	play	247	221	919	hard	282	\N	\N	electronics	\N	\N	\N
387	might	require	560	21	257	card	968	\N	\N	electronics	\N	\N	\N
388	price	board	543	269	485	three	413	\N	\N	electronics	\N	\N	\N
338	event	purpose	813	722	879	their	806	\N	\N	electronics	\N	\N	[{"price": "484", "ends_at": "total", "price_id": "690", "starts_at": "force"}]
303	career	on	506	887	921	other	436	\N	\N	electronics	\N	\N	[{"price": "127", "ends_at": "crime", "price_id": "485", "starts_at": "back"}]
389	stop	lead	726	107	763	system	71	\N	\N	electronics	\N	\N	\N
390	at	body	671	558	372	claim	634	\N	\N	electronics	\N	\N	\N
391	break	why	316	457	699	service	160	\N	\N	electronics	\N	\N	\N
392	matter	available	77	936	594	special	693	\N	\N	electronics	\N	\N	\N
394	foreign	push	821	869	786	others	374	\N	\N	electronics	\N	\N	\N
395	bed	mention	910	300	164	over	870	\N	\N	electronics	\N	\N	\N
396	attack	growth	815	391	854	military	416	\N	\N	electronics	\N	\N	\N
397	idea	off	121	616	149	blood	303	\N	\N	electronics	\N	\N	\N
398	administration	they	683	704	819	minute	551	\N	\N	electronics	\N	\N	\N
399	billion	say	976	10	942	thank	389	\N	\N	electronics	\N	\N	\N
400	natural	thank	765	576	965	key	471	\N	\N	electronics	\N	\N	\N
401	car	do	32	798	443	design	283	compare	956	computer	\N	\N	\N
402	east	ground	380	419	416	per	55	animal	102	computer	\N	\N	\N
404	discuss	foot	852	114	602	federal	544	interesting	521	computer	\N	\N	\N
405	hand	store	782	365	565	reflect	802	ask	582	computer	\N	\N	\N
406	they	market	931	992	671	simple	822	hand	486	computer	\N	\N	\N
407	fast	style	840	715	252	exactly	109	want	576	computer	\N	\N	\N
409	concern	note	42	939	721	without	433	would	901	computer	\N	\N	\N
410	a	lot	745	355	260	improve	632	build	446	computer	\N	\N	\N
412	same	not	350	452	818	first	651	name	625	computer	\N	\N	\N
413	show	direction	532	148	58	them	690	effort	117	computer	\N	\N	\N
414	develop	few	913	526	177	discuss	916	trade	350	computer	\N	\N	\N
415	agency	especially	776	728	125	value	492	physical	919	computer	\N	\N	\N
416	office	third	215	393	647	spring	407	experience	734	computer	\N	\N	\N
417	both	instead	234	103	255	source	999	than	994	computer	\N	\N	\N
418	part	star	337	673	252	condition	761	middle	483	computer	\N	\N	\N
419	land	plant	379	505	668	especially	443	television	452	computer	\N	\N	\N
420	though	project	409	556	124	decision	950	north	273	computer	\N	\N	\N
421	street	society	860	129	154	in	386	bad	425	computer	\N	\N	\N
422	well	cover	112	819	27	analysis	964	cover	188	computer	\N	\N	\N
423	improve	would	470	785	387	brother	940	bank	160	computer	\N	\N	\N
424	everybody	sell	158	996	538	she	970	suggest	261	computer	\N	\N	\N
425	produce	imagine	20	476	407	family	551	side	713	computer	\N	\N	\N
426	kitchen	woman	401	6	558	hard	434	hold	930	computer	\N	\N	\N
427	name	body	163	679	184	shoulder	679	piece	245	computer	\N	\N	\N
428	child	concern	78	794	550	great	180	process	385	computer	\N	\N	\N
429	some	produce	600	23	526	heavy	438	feeling	242	computer	\N	\N	\N
430	artist	pay	814	42	959	design	718	work	517	computer	\N	\N	\N
431	billion	prove	708	627	670	money	254	store	408	computer	\N	\N	\N
432	guess	here	799	477	122	better	397	figure	92	computer	\N	\N	\N
433	very	wall	574	97	657	wall	47	player	531	computer	\N	\N	\N
434	per	watch	245	797	13	evening	979	method	880	computer	\N	\N	\N
435	stand	often	320	478	285	seat	171	yeah	610	computer	\N	\N	\N
437	go	doctor	652	460	514	including	568	great	172	computer	\N	\N	\N
438	allow	light	716	405	716	right	828	serious	206	computer	\N	\N	\N
439	perhaps	the	508	837	286	executive	951	recent	156	computer	\N	\N	\N
440	paper	important	266	581	287	shoulder	800	budget	739	computer	\N	\N	\N
441	all	church	637	86	749	least	345	there	951	computer	\N	\N	\N
442	moment	board	147	265	262	people	358	environmental	394	computer	\N	\N	\N
443	serious	product	286	580	479	pretty	153	involve	977	computer	\N	\N	\N
444	method	write	134	982	259	those	202	firm	73	computer	\N	\N	\N
445	law	second	821	594	551	quickly	557	particularly	440	computer	\N	\N	\N
446	produce	smile	734	893	246	east	568	article	472	computer	\N	\N	\N
447	take	stand	401	729	201	speak	641	wrong	958	computer	\N	\N	\N
448	national	seem	80	157	806	method	31	prepare	765	computer	\N	\N	\N
449	imagine	discussion	416	392	428	camera	606	ready	612	computer	\N	\N	\N
450	issue	sometimes	133	689	552	purpose	950	difference	248	computer	\N	\N	\N
451	from	suffer	871	391	143	his	208	keep	678	computer	\N	\N	\N
452	year	own	737	407	366	sell	231	thing	305	computer	\N	\N	\N
454	improve	bad	91	527	848	fund	214	few	723	computer	\N	\N	\N
455	future	recognize	475	23	298	face	630	serve	382	computer	\N	\N	\N
456	full	newspaper	773	455	262	kind	54	happy	849	computer	\N	\N	\N
457	within	physical	801	324	164	consumer	980	Republican	946	computer	\N	\N	\N
458	early	system	645	842	106	indicate	875	budget	446	computer	\N	\N	\N
459	close	tree	649	601	252	at	517	far	520	computer	\N	\N	\N
460	tell	might	407	125	935	training	839	stand	970	computer	\N	\N	\N
461	myself	marriage	394	677	946	account	834	clearly	734	computer	\N	\N	\N
462	upon	check	593	261	743	most	735	save	124	computer	\N	\N	\N
463	summer	present	829	207	782	social	679	firm	494	computer	\N	\N	\N
464	fill	candidate	559	629	237	office	39	fund	654	computer	\N	\N	\N
465	skill	deal	172	688	687	easy	876	without	421	computer	\N	\N	\N
466	machine	central	991	281	788	with	409	piece	279	computer	\N	\N	\N
467	trip	including	506	101	686	way	192	forget	573	computer	\N	\N	\N
411	class	sport	425	386	368	reason	773	generation	836	computer	\N	\N	[{"price": "50", "ends_at": "itself", "price_id": "77", "starts_at": "add"}]
468	off	state	17	465	772	group	501	close	220	computer	\N	\N	\N
469	state	offer	404	843	748	imagine	930	can	250	computer	\N	\N	\N
471	spend	push	854	453	194	lot	610	kitchen	515	computer	\N	\N	\N
473	figure	enough	202	239	369	simply	350	card	928	computer	\N	\N	\N
474	than	tend	54	470	46	later	913	could	152	computer	\N	\N	\N
475	state	population	875	929	962	minute	481	fear	45	computer	\N	\N	\N
476	within	ahead	598	514	67	until	95	for	410	computer	\N	\N	\N
478	wall	factor	928	361	482	we	566	beat	971	computer	\N	\N	\N
479	authority	century	932	893	489	city	438	very	312	computer	\N	\N	\N
480	these	certainly	603	767	325	tax	611	threat	604	computer	\N	\N	\N
481	provide	itself	570	872	285	left	886	benefit	622	computer	\N	\N	\N
482	party	just	807	810	795	clearly	426	never	401	computer	\N	\N	\N
483	face	operation	533	810	25	once	38	job	588	computer	\N	\N	\N
484	generation	last	543	15	104	picture	345	clear	956	computer	\N	\N	\N
485	medical	ahead	378	769	565	sea	653	spend	380	computer	\N	\N	\N
486	rise	receive	597	76	497	eat	868	prevent	553	computer	\N	\N	\N
487	with	understand	457	343	513	fall	945	situation	165	computer	\N	\N	\N
488	season	million	932	333	370	back	150	return	918	computer	\N	\N	\N
489	continue	phone	595	152	604	defense	414	cultural	325	computer	\N	\N	\N
490	true	bit	888	521	431	just	350	account	873	computer	\N	\N	\N
491	beautiful	successful	267	624	378	even	729	partner	65	computer	\N	\N	\N
492	difference	firm	786	646	253	tell	773	take	993	computer	\N	\N	\N
493	score	become	407	564	291	true	77	late	726	computer	\N	\N	\N
494	involve	dinner	175	927	959	about	424	benefit	86	computer	\N	\N	\N
495	quite	standard	130	290	565	study	241	control	216	computer	\N	\N	\N
496	enter	institution	102	284	740	however	49	grow	756	computer	\N	\N	\N
497	as	future	525	309	807	clearly	842	important	557	computer	\N	\N	\N
498	test	beat	77	564	324	size	949	loss	304	computer	\N	\N	\N
499	little	since	881	529	137	agent	453	above	834	computer	\N	\N	\N
500	already	degree	373	819	766	career	30	else	324	computer	\N	\N	\N
501	hotel	describe	428	768	168	woman	724	early	603	desktop	\N	\N	\N
502	eat	best	719	680	645	near	189	medical	997	desktop	\N	\N	\N
503	win	woman	925	203	239	our	602	lot	134	desktop	\N	\N	\N
504	two	girl	998	601	519	stop	739	world	273	desktop	\N	\N	\N
505	character	record	470	202	801	organization	370	court	986	desktop	\N	\N	\N
506	site	challenge	468	343	950	tend	226	agency	948	desktop	\N	\N	\N
507	wonder	week	955	651	10	its	501	scientist	34	desktop	\N	\N	\N
508	fall	event	169	260	921	PM	10	surface	236	desktop	\N	\N	\N
509	how	write	784	909	87	carry	36	TV	969	desktop	\N	\N	\N
511	trip	thought	503	519	381	many	402	bring	968	desktop	\N	\N	\N
512	they	purpose	670	76	200	interview	193	specific	701	desktop	\N	\N	\N
513	office	focus	639	305	979	ten	629	meet	486	desktop	\N	\N	\N
514	admit	oil	373	24	500	child	953	true	108	desktop	\N	\N	\N
515	skin	treat	675	641	592	shake	848	military	725	desktop	\N	\N	\N
516	coach	time	597	352	348	instead	663	of	431	desktop	\N	\N	\N
517	total	avoid	200	719	527	family	975	growth	863	desktop	\N	\N	\N
518	lead	couple	853	623	578	concern	615	yes	697	desktop	\N	\N	\N
519	show	reason	757	590	927	dog	619	foot	483	desktop	\N	\N	\N
520	learn	finally	170	853	275	war	577	seem	784	desktop	\N	\N	\N
521	place	college	826	406	622	western	262	also	318	desktop	\N	\N	\N
522	security	police	16	620	776	receive	801	help	469	desktop	\N	\N	\N
523	least	guy	469	914	365	like	521	argue	455	desktop	\N	\N	\N
524	development	if	215	717	488	there	713	former	641	desktop	\N	\N	\N
525	world	knowledge	149	394	884	national	56	meeting	658	desktop	\N	\N	\N
526	style	worker	114	365	893	account	262	travel	770	desktop	\N	\N	\N
527	ground	conference	555	760	56	community	388	join	16	desktop	\N	\N	\N
528	not	everyone	333	347	317	head	214	something	734	desktop	\N	\N	\N
529	model	company	84	337	123	leave	132	gas	800	desktop	\N	\N	\N
530	rich	glass	708	302	983	Mr	623	century	349	desktop	\N	\N	\N
531	approach	pretty	239	28	986	senior	774	process	785	desktop	\N	\N	\N
532	receive	herself	775	517	768	back	310	community	301	desktop	\N	\N	\N
533	by	traditional	388	431	950	president	831	star	888	desktop	\N	\N	\N
534	amount	shoulder	879	76	963	interview	418	thought	961	desktop	\N	\N	\N
535	determine	score	238	623	44	down	645	consumer	230	desktop	\N	\N	\N
536	after	wonder	250	731	405	certainly	216	choose	637	desktop	\N	\N	\N
537	success	actually	156	738	307	movie	2	many	730	desktop	\N	\N	\N
538	feeling	agency	722	704	315	name	510	be	175	desktop	\N	\N	\N
539	job	market	692	150	32	particularly	448	outside	568	desktop	\N	\N	\N
540	evening	Mr	351	896	821	fund	326	control	962	desktop	\N	\N	\N
541	high	direction	619	115	598	contain	830	reflect	562	desktop	\N	\N	\N
542	writer	next	679	283	440	off	863	can	319	desktop	\N	\N	\N
543	away	way	771	89	655	baby	118	what	514	desktop	\N	\N	\N
544	including	analysis	226	892	621	visit	448	often	382	desktop	\N	\N	\N
545	protect	reason	804	237	56	yeah	612	ground	528	desktop	\N	\N	\N
546	raise	pattern	527	524	167	source	300	leg	945	desktop	\N	\N	\N
547	fish	campaign	50	906	70	everyone	4	help	689	desktop	\N	\N	\N
548	various	big	64	434	750	late	68	maintain	57	desktop	\N	\N	\N
549	war	our	10	36	551	system	341	picture	804	desktop	\N	\N	\N
550	future	table	20	627	10	face	481	ten	205	desktop	\N	\N	\N
552	difference	loss	188	216	401	drop	245	understand	994	desktop	\N	\N	\N
553	smile	just	569	718	464	now	340	pressure	335	desktop	\N	\N	\N
554	moment	least	417	123	17	raise	518	none	656	desktop	\N	\N	\N
555	remember	marriage	96	780	190	program	231	nor	181	desktop	\N	\N	\N
556	car	expert	312	928	826	rest	61	high	814	desktop	\N	\N	\N
558	for	large	454	154	237	stuff	766	thing	294	desktop	\N	\N	\N
559	current	them	985	353	60	traditional	454	down	206	desktop	\N	\N	\N
561	newspaper	increase	208	56	765	design	90	yourself	976	desktop	\N	\N	\N
562	teach	best	806	832	761	too	961	nature	293	desktop	\N	\N	\N
563	owner	improve	732	259	540	whole	893	mind	255	desktop	\N	\N	\N
564	state	piece	740	34	742	concern	784	record	200	desktop	\N	\N	\N
566	behind	room	945	676	889	generation	886	individual	696	desktop	\N	\N	\N
567	process	just	396	92	437	them	852	quality	851	desktop	\N	\N	\N
569	consumer	way	117	246	75	body	907	clear	284	desktop	\N	\N	\N
571	method	able	380	420	468	cup	361	important	324	desktop	\N	\N	\N
572	officer	test	406	982	483	condition	380	smile	131	desktop	\N	\N	\N
573	half	local	310	173	310	yard	893	such	562	desktop	\N	\N	\N
574	decision	science	729	745	154	fly	469	case	661	desktop	\N	\N	\N
575	carry	would	643	156	139	ok	82	billion	833	desktop	\N	\N	\N
576	partner	find	627	260	242	central	661	performance	323	desktop	\N	\N	\N
577	arrive	smile	176	284	877	require	318	someone	80	desktop	\N	\N	\N
578	together	increase	439	158	564	woman	908	approach	461	desktop	\N	\N	\N
579	collection	party	939	111	866	support	701	boy	324	desktop	\N	\N	\N
580	memory	drug	71	702	192	them	548	black	36	desktop	\N	\N	\N
581	particularly	enjoy	48	744	978	happen	666	cost	365	desktop	\N	\N	\N
582	miss	product	754	986	375	data	879	rate	872	desktop	\N	\N	\N
583	fear	ever	801	516	643	surface	351	however	670	desktop	\N	\N	\N
584	project	program	124	190	972	modern	34	put	278	desktop	\N	\N	\N
585	investment	do	907	629	729	opportunity	64	describe	253	desktop	\N	\N	\N
586	low	yard	858	869	312	economy	577	bill	413	desktop	\N	\N	\N
587	special	social	251	369	791	far	238	amount	965	desktop	\N	\N	\N
589	fine	difference	1000	139	229	cup	519	success	912	desktop	\N	\N	\N
590	leave	give	273	145	167	red	78	family	319	desktop	\N	\N	\N
591	agreement	draw	588	523	522	theory	884	give	893	desktop	\N	\N	\N
592	very	art	450	595	525	job	188	across	525	desktop	\N	\N	\N
593	sea	gun	885	365	201	stuff	824	class	76	desktop	\N	\N	\N
594	compare	left	284	211	235	woman	137	owner	792	desktop	\N	\N	\N
596	when	various	51	803	369	million	625	lawyer	244	desktop	\N	\N	\N
597	must	consider	695	713	889	onto	90	research	452	desktop	\N	\N	\N
598	beautiful	so	660	672	202	raise	169	protect	589	desktop	\N	\N	\N
599	computer	feel	708	859	856	fly	223	write	324	desktop	\N	\N	\N
600	lose	free	912	492	566	around	923	side	54	desktop	\N	\N	\N
701	then	six	710	424	702	poor	489	\N	\N	tablet	771	\N	\N
702	series	people	646	226	314	mother	65	\N	\N	tablet	152	\N	\N
703	vote	bank	506	997	842	here	847	\N	\N	tablet	369	\N	\N
704	better	skill	266	866	859	young	809	\N	\N	tablet	555	\N	\N
705	program	your	901	311	142	late	514	\N	\N	tablet	142	\N	\N
707	property	realize	584	933	334	bar	129	\N	\N	tablet	729	\N	\N
708	forget	where	1000	15	551	chance	789	\N	\N	tablet	276	\N	\N
709	design	human	638	830	67	economy	291	\N	\N	tablet	13	\N	\N
710	memory	red	663	273	743	how	580	\N	\N	tablet	412	\N	\N
711	defense	guess	115	101	702	apply	620	\N	\N	tablet	635	\N	\N
712	recent	language	653	713	705	seem	94	\N	\N	tablet	626	\N	\N
713	family	often	511	543	352	hour	193	\N	\N	tablet	174	\N	\N
714	during	score	57	632	120	effect	121	\N	\N	tablet	569	\N	\N
715	result	maintain	543	313	772	result	166	\N	\N	tablet	547	\N	\N
716	industry	girl	154	234	887	true	92	\N	\N	tablet	516	\N	\N
717	accept	why	362	920	707	forward	274	\N	\N	tablet	630	\N	\N
718	between	third	138	293	592	already	72	\N	\N	tablet	877	\N	\N
719	show	plan	611	272	59	never	443	\N	\N	tablet	626	\N	\N
720	article	method	989	290	864	low	433	\N	\N	tablet	447	\N	\N
721	enough	option	861	829	70	key	220	\N	\N	tablet	787	\N	\N
722	use	final	696	35	954	energy	977	\N	\N	tablet	870	\N	\N
723	no	he	425	364	964	full	524	\N	\N	tablet	933	\N	\N
724	research	boy	152	184	809	break	235	\N	\N	tablet	830	\N	\N
725	certain	become	965	61	375	share	889	\N	\N	tablet	458	\N	\N
726	child	several	330	834	223	economy	264	\N	\N	tablet	159	\N	\N
727	student	piece	708	913	722	mean	110	\N	\N	tablet	490	\N	\N
729	body	different	269	796	813	benefit	920	\N	\N	tablet	214	\N	\N
568	nothing	protect	502	899	352	guy	620	spend	665	desktop	\N	\N	[{"price": "799", "ends_at": "writer", "price_id": "826", "starts_at": "party"}]
706	check	rather	467	872	39	cell	481	\N	\N	tablet	748	\N	[{"price": "471", "ends_at": "miss", "price_id": "990", "starts_at": "tree"}]
730	pay	boy	818	136	707	live	679	\N	\N	tablet	36	\N	\N
731	generation	cultural	807	787	392	building	549	\N	\N	tablet	886	\N	\N
732	able	hard	25	135	238	possible	661	\N	\N	tablet	102	\N	\N
733	no	talk	908	304	719	score	206	\N	\N	tablet	529	\N	\N
734	collection	explain	342	101	255	wish	504	\N	\N	tablet	589	\N	\N
735	area	night	119	183	509	skin	724	\N	\N	tablet	659	\N	\N
736	degree	move	966	610	650	kid	410	\N	\N	tablet	567	\N	\N
737	city	live	996	432	858	season	641	\N	\N	tablet	409	\N	\N
738	also	task	969	890	145	sport	131	\N	\N	tablet	63	\N	\N
739	could	small	300	398	632	else	654	\N	\N	tablet	98	\N	\N
740	should	term	207	613	278	anyone	610	\N	\N	tablet	433	\N	\N
741	impact	activity	271	521	850	approach	334	\N	\N	tablet	802	\N	\N
742	thus	of	967	157	575	teacher	967	\N	\N	tablet	689	\N	\N
743	daughter	executive	924	694	26	his	789	\N	\N	tablet	380	\N	\N
744	decade	hotel	466	272	769	quite	291	\N	\N	tablet	143	\N	\N
745	American	whose	823	87	417	summer	29	\N	\N	tablet	491	\N	\N
746	take	list	597	737	134	success	504	\N	\N	tablet	821	\N	\N
747	compare	as	862	791	239	establish	386	\N	\N	tablet	823	\N	\N
748	staff	discuss	64	421	616	place	256	\N	\N	tablet	689	\N	\N
749	field	less	41	923	466	economic	301	\N	\N	tablet	626	\N	\N
750	community	compare	41	356	788	population	70	\N	\N	tablet	75	\N	\N
752	happy	responsibility	93	551	482	understand	871	\N	\N	tablet	335	\N	\N
753	each	hold	877	788	176	sound	898	\N	\N	tablet	539	\N	\N
754	up	always	256	336	618	get	255	\N	\N	tablet	650	\N	\N
755	skill	detail	791	719	223	fire	980	\N	\N	tablet	314	\N	\N
756	some	break	852	550	331	perhaps	602	\N	\N	tablet	5	\N	\N
757	five	traditional	673	493	259	idea	152	\N	\N	tablet	996	\N	\N
758	difficult	attention	248	882	166	inside	266	\N	\N	tablet	409	\N	\N
759	approach	medical	208	142	169	sure	324	\N	\N	tablet	396	\N	\N
760	skill	look	931	723	217	past	40	\N	\N	tablet	457	\N	\N
761	only	single	222	411	810	thought	718	\N	\N	tablet	919	\N	\N
762	claim	listen	319	791	226	them	524	\N	\N	tablet	814	\N	\N
763	player	explain	668	457	345	but	71	\N	\N	tablet	73	\N	\N
764	during	teach	844	237	123	occur	732	\N	\N	tablet	848	\N	\N
765	history	some	570	470	11	century	470	\N	\N	tablet	444	\N	\N
766	likely	woman	554	113	197	effect	250	\N	\N	tablet	316	\N	\N
767	chair	little	220	532	622	project	931	\N	\N	tablet	316	\N	\N
768	movie	raise	271	943	358	tree	295	\N	\N	tablet	49	\N	\N
769	door	body	30	896	11	anything	44	\N	\N	tablet	212	\N	\N
770	rule	gas	79	324	464	myself	118	\N	\N	tablet	253	\N	\N
771	plant	project	690	891	114	out	31	\N	\N	tablet	200	\N	\N
773	learn	take	30	573	233	discussion	178	\N	\N	tablet	858	\N	\N
774	actually	tree	545	973	939	anything	230	\N	\N	tablet	142	\N	\N
775	the	tree	65	17	893	ahead	329	\N	\N	tablet	936	\N	\N
776	son	even	591	87	530	national	200	\N	\N	tablet	408	\N	\N
777	fly	between	9	557	287	series	266	\N	\N	tablet	556	\N	\N
778	team	help	395	895	414	listen	286	\N	\N	tablet	91	\N	\N
779	ever	behind	185	778	491	she	137	\N	\N	tablet	924	\N	\N
780	special	realize	633	214	539	choose	530	\N	\N	tablet	53	\N	\N
781	growth	explain	867	325	149	visit	327	\N	\N	tablet	407	\N	\N
782	crime	small	42	902	419	we	852	\N	\N	tablet	515	\N	\N
783	less	couple	901	804	67	event	135	\N	\N	tablet	569	\N	\N
784	director	edge	421	560	399	huge	607	\N	\N	tablet	46	\N	\N
785	unit	source	223	199	312	employee	981	\N	\N	tablet	307	\N	\N
786	dog	minute	932	531	24	dark	196	\N	\N	tablet	549	\N	\N
787	if	stand	534	759	547	politics	236	\N	\N	tablet	91	\N	\N
788	American	street	216	492	169	way	674	\N	\N	tablet	862	\N	\N
789	bit	drop	413	911	290	social	155	\N	\N	tablet	821	\N	\N
790	key	left	102	859	969	mean	726	\N	\N	tablet	602	\N	\N
791	green	admit	441	487	979	our	965	\N	\N	tablet	839	\N	\N
792	room	view	224	580	480	office	994	\N	\N	tablet	885	\N	\N
793	tell	million	679	415	894	just	65	\N	\N	tablet	131	\N	\N
794	return	officer	347	519	487	then	525	\N	\N	tablet	677	\N	\N
795	but	add	377	444	837	arm	867	\N	\N	tablet	975	\N	\N
796	key	back	454	267	965	far	365	\N	\N	tablet	396	\N	\N
797	avoid	catch	822	580	235	knowledge	924	\N	\N	tablet	636	\N	\N
799	phone	gun	430	897	601	past	63	\N	\N	tablet	781	\N	\N
800	have	threat	472	923	113	staff	466	\N	\N	tablet	360	\N	\N
901	report	consumer	657	682	798	he	522	\N	\N	camera	\N	\N	\N
902	city	economy	907	764	962	know	375	\N	\N	camera	\N	\N	\N
903	executive	certain	727	458	97	during	832	\N	\N	camera	\N	\N	\N
905	data	score	842	217	337	moment	572	\N	\N	camera	\N	\N	\N
906	week	above	963	630	8	son	725	\N	\N	camera	\N	\N	\N
907	crime	employee	495	368	657	know	419	\N	\N	camera	\N	\N	\N
908	strong	between	352	438	922	later	115	\N	\N	camera	\N	\N	\N
909	kid	new	55	541	303	thus	204	\N	\N	camera	\N	\N	\N
911	trade	prevent	263	893	2	staff	791	\N	\N	camera	\N	\N	\N
912	feel	option	144	438	784	someone	93	\N	\N	camera	\N	\N	\N
913	lawyer	get	819	853	283	player	225	\N	\N	camera	\N	\N	\N
914	fund	computer	437	415	146	people	683	\N	\N	camera	\N	\N	\N
915	speech	trial	843	531	683	item	166	\N	\N	camera	\N	\N	\N
916	figure	once	280	375	858	necessary	356	\N	\N	camera	\N	\N	\N
917	establish	management	258	581	773	perform	32	\N	\N	camera	\N	\N	\N
918	plan	hot	264	946	494	night	351	\N	\N	camera	\N	\N	\N
910	collection	industry	235	857	754	article	386	\N	\N	camera	\N	\N	[{"price": "259", "ends_at": "whole", "price_id": "371", "starts_at": "American"}]
919	feeling	save	932	961	858	fall	715	\N	\N	camera	\N	\N	\N
920	very	hope	266	659	931	west	75	\N	\N	camera	\N	\N	\N
921	with	particular	705	378	705	nice	771	\N	\N	camera	\N	\N	\N
922	identify	everybody	785	195	109	note	956	\N	\N	camera	\N	\N	\N
923	eat	available	348	587	338	bill	352	\N	\N	camera	\N	\N	\N
925	TV	wide	283	792	362	top	952	\N	\N	camera	\N	\N	\N
926	plant	forward	946	865	448	value	628	\N	\N	camera	\N	\N	\N
927	city	information	903	355	792	pressure	735	\N	\N	camera	\N	\N	\N
928	work	smile	109	609	544	answer	176	\N	\N	camera	\N	\N	\N
929	already	he	773	231	792	low	869	\N	\N	camera	\N	\N	\N
930	fine	practice	434	409	637	three	70	\N	\N	camera	\N	\N	\N
931	child	tend	157	749	602	event	863	\N	\N	camera	\N	\N	\N
932	state	use	486	687	956	civil	506	\N	\N	camera	\N	\N	\N
933	special	chance	420	940	803	political	923	\N	\N	camera	\N	\N	\N
934	general	explain	676	505	221	rock	992	\N	\N	camera	\N	\N	\N
935	time	rise	798	38	882	radio	301	\N	\N	camera	\N	\N	\N
936	east	trial	143	258	843	upon	488	\N	\N	camera	\N	\N	\N
937	answer	current	447	342	534	offer	216	\N	\N	camera	\N	\N	\N
938	drive	impact	41	319	515	action	510	\N	\N	camera	\N	\N	\N
939	particular	consumer	271	164	297	be	819	\N	\N	camera	\N	\N	\N
940	goal	work	343	998	153	soldier	397	\N	\N	camera	\N	\N	\N
941	respond	community	690	453	964	official	739	\N	\N	camera	\N	\N	\N
942	capital	fund	917	908	393	include	95	\N	\N	camera	\N	\N	\N
943	road	whom	211	995	953	instead	53	\N	\N	camera	\N	\N	\N
944	air	create	764	313	42	kid	815	\N	\N	camera	\N	\N	\N
945	long	believe	979	633	642	form	133	\N	\N	camera	\N	\N	\N
946	necessary	car	11	353	248	deep	532	\N	\N	camera	\N	\N	\N
948	by	base	20	669	455	figure	173	\N	\N	camera	\N	\N	\N
949	play	hand	828	902	764	final	824	\N	\N	camera	\N	\N	\N
950	now	red	632	850	215	hit	297	\N	\N	camera	\N	\N	\N
951	move	meet	169	45	40	institution	400	\N	\N	camera	\N	\N	\N
952	vote	decision	978	555	701	high	390	\N	\N	camera	\N	\N	\N
953	camera	ask	447	932	52	everything	342	\N	\N	camera	\N	\N	\N
954	leader	produce	602	590	499	exist	594	\N	\N	camera	\N	\N	\N
955	success	professor	691	92	345	half	887	\N	\N	camera	\N	\N	\N
956	time	sign	184	800	967	order	530	\N	\N	camera	\N	\N	\N
957	these	approach	855	973	497	ten	822	\N	\N	camera	\N	\N	\N
958	program	talk	430	695	405	become	262	\N	\N	camera	\N	\N	\N
959	report	today	2	289	34	range	800	\N	\N	camera	\N	\N	\N
960	know	test	185	634	259	gas	711	\N	\N	camera	\N	\N	\N
961	eye	current	313	103	305	mention	489	\N	\N	camera	\N	\N	\N
962	how	point	837	261	562	feeling	130	\N	\N	camera	\N	\N	\N
963	quality	big	690	409	565	finish	581	\N	\N	camera	\N	\N	\N
965	billion	hot	263	166	613	matter	75	\N	\N	camera	\N	\N	\N
966	light	thus	800	719	697	total	544	\N	\N	camera	\N	\N	\N
967	event	well	740	24	226	major	699	\N	\N	camera	\N	\N	\N
968	especially	spend	688	5	541	choose	783	\N	\N	camera	\N	\N	\N
969	water	inside	818	989	792	seek	55	\N	\N	camera	\N	\N	\N
970	coach	guy	940	799	406	successful	196	\N	\N	camera	\N	\N	\N
971	week	explain	228	94	627	into	553	\N	\N	camera	\N	\N	\N
972	bank	cost	343	873	682	month	197	\N	\N	camera	\N	\N	\N
973	option	agency	611	262	841	car	254	\N	\N	camera	\N	\N	\N
974	his	kitchen	300	635	264	relationship	730	\N	\N	camera	\N	\N	\N
977	model	computer	23	108	224	send	173	\N	\N	camera	\N	\N	\N
979	official	according	398	269	264	this	651	\N	\N	camera	\N	\N	\N
981	player	beautiful	737	509	962	small	309	\N	\N	camera	\N	\N	\N
982	enough	clearly	872	376	416	treatment	633	\N	\N	camera	\N	\N	\N
983	level	base	294	937	287	term	495	\N	\N	camera	\N	\N	\N
984	fact	relate	157	804	595	meet	145	\N	\N	camera	\N	\N	\N
986	weight	strategy	214	465	885	beat	42	\N	\N	camera	\N	\N	\N
987	establish	ten	346	864	5	garden	804	\N	\N	camera	\N	\N	\N
988	challenge	it	836	893	930	artist	434	\N	\N	camera	\N	\N	\N
989	respond	four	376	956	624	design	779	\N	\N	camera	\N	\N	\N
990	family	close	760	443	883	more	297	\N	\N	camera	\N	\N	\N
991	than	ok	99	83	980	operation	723	\N	\N	camera	\N	\N	\N
992	local	meeting	936	375	583	write	723	\N	\N	camera	\N	\N	\N
993	article	serve	127	860	895	policy	54	\N	\N	camera	\N	\N	\N
994	race	agreement	623	206	116	minute	880	\N	\N	camera	\N	\N	\N
997	full	film	830	789	888	simple	388	\N	\N	camera	\N	\N	\N
998	they	from	966	496	577	lot	39	\N	\N	camera	\N	\N	\N
999	could	visit	204	697	256	country	123	\N	\N	camera	\N	\N	\N
1000	prove	across	996	967	571	area	6	\N	\N	camera	\N	\N	\N
1101	too	line	975	695	144	professor	285	\N	\N	accessories	\N	\N	\N
1102	expect	learn	723	522	631	course	167	\N	\N	accessories	\N	\N	\N
1103	marriage	president	864	594	318	three	677	\N	\N	accessories	\N	\N	\N
1104	article	treat	114	273	654	story	961	\N	\N	accessories	\N	\N	\N
1108	much	describe	299	763	385	brother	580	\N	\N	accessories	\N	\N	\N
1109	there	safe	448	133	702	over	439	\N	\N	accessories	\N	\N	\N
985	life	leave	63	74	267	section	794	\N	\N	camera	\N	\N	[{"price": "195", "ends_at": "change", "price_id": "444", "starts_at": "song"}]
980	rate	positive	385	43	787	in	885	\N	\N	camera	\N	\N	[{"price": "86", "ends_at": "man", "price_id": "55", "starts_at": "interview"}]
995	whole	get	490	393	178	office	226	\N	\N	camera	\N	\N	[{"price": "162", "ends_at": "class", "price_id": "462", "starts_at": "score"}]
1110	true	visit	499	65	605	raise	545	\N	\N	accessories	\N	\N	\N
1111	management	serious	534	190	64	thus	195	\N	\N	accessories	\N	\N	\N
1112	economy	evidence	20	356	244	more	727	\N	\N	accessories	\N	\N	\N
1113	camera	book	540	540	666	experience	572	\N	\N	accessories	\N	\N	\N
1116	area	production	160	881	562	recognize	818	\N	\N	accessories	\N	\N	\N
1117	ahead	form	26	146	558	take	236	\N	\N	accessories	\N	\N	\N
1118	idea	but	370	341	749	movie	97	\N	\N	accessories	\N	\N	\N
1119	team	a	262	900	996	evening	365	\N	\N	accessories	\N	\N	\N
1120	might	window	609	891	44	here	875	\N	\N	accessories	\N	\N	\N
1122	reflect	population	952	308	692	suffer	315	\N	\N	accessories	\N	\N	\N
1123	nation	page	813	395	495	conference	689	\N	\N	accessories	\N	\N	\N
1124	money	woman	123	600	977	property	732	\N	\N	accessories	\N	\N	\N
1125	during	somebody	109	435	76	particularly	127	\N	\N	accessories	\N	\N	\N
1126	medical	note	646	10	252	media	936	\N	\N	accessories	\N	\N	\N
1127	very	gas	73	968	218	party	220	\N	\N	accessories	\N	\N	\N
1129	require	start	714	572	587	thus	713	\N	\N	accessories	\N	\N	\N
1130	animal	choose	474	386	86	treatment	76	\N	\N	accessories	\N	\N	\N
1131	above	third	992	309	740	born	210	\N	\N	accessories	\N	\N	\N
1132	my	care	738	303	835	teach	190	\N	\N	accessories	\N	\N	\N
1133	forward	have	658	622	946	woman	385	\N	\N	accessories	\N	\N	\N
1134	over	physical	865	873	746	evening	227	\N	\N	accessories	\N	\N	\N
1135	service	trade	253	944	506	realize	300	\N	\N	accessories	\N	\N	\N
1136	color	sense	275	486	506	pull	773	\N	\N	accessories	\N	\N	\N
1137	tough	summer	113	608	740	shoulder	220	\N	\N	accessories	\N	\N	\N
1138	most	ability	706	458	398	section	432	\N	\N	accessories	\N	\N	\N
1139	morning	low	64	964	747	win	780	\N	\N	accessories	\N	\N	\N
1140	hundred	career	719	700	396	tonight	383	\N	\N	accessories	\N	\N	\N
1141	race	night	539	146	820	number	917	\N	\N	accessories	\N	\N	\N
1142	line	human	525	730	164	drive	597	\N	\N	accessories	\N	\N	\N
1143	though	with	795	218	778	water	671	\N	\N	accessories	\N	\N	\N
1144	serve	point	947	318	309	response	138	\N	\N	accessories	\N	\N	\N
1145	involve	such	22	725	463	pick	685	\N	\N	accessories	\N	\N	\N
1146	get	our	691	593	354	guy	729	\N	\N	accessories	\N	\N	\N
1147	leave	store	373	877	224	today	209	\N	\N	accessories	\N	\N	\N
1148	collection	nearly	685	473	592	play	836	\N	\N	accessories	\N	\N	\N
1149	many	condition	278	704	639	walk	292	\N	\N	accessories	\N	\N	\N
1150	science	determine	284	889	455	modern	114	\N	\N	accessories	\N	\N	\N
1151	clearly	six	965	334	459	one	532	\N	\N	accessories	\N	\N	\N
1152	help	news	841	912	859	level	522	\N	\N	accessories	\N	\N	\N
1153	anything	once	926	934	328	color	159	\N	\N	accessories	\N	\N	\N
1154	difficult	night	161	261	726	marriage	422	\N	\N	accessories	\N	\N	\N
1156	agency	affect	231	140	74	from	170	\N	\N	accessories	\N	\N	\N
1157	question	tough	480	617	745	they	815	\N	\N	accessories	\N	\N	\N
1158	decade	man	816	945	226	often	619	\N	\N	accessories	\N	\N	\N
1159	personal	look	401	275	9	suffer	154	\N	\N	accessories	\N	\N	\N
1160	try	around	124	760	442	media	757	\N	\N	accessories	\N	\N	\N
1162	nature	record	63	679	764	next	100	\N	\N	accessories	\N	\N	\N
1163	public	say	918	792	170	remain	835	\N	\N	accessories	\N	\N	\N
1164	lose	find	444	114	949	wife	368	\N	\N	accessories	\N	\N	\N
1165	especially	at	663	326	315	lot	314	\N	\N	accessories	\N	\N	\N
1166	class	thousand	822	463	33	past	292	\N	\N	accessories	\N	\N	\N
1167	recognize	worker	573	643	218	when	984	\N	\N	accessories	\N	\N	\N
1168	significant	safe	768	281	173	meeting	524	\N	\N	accessories	\N	\N	\N
1169	next	medical	347	569	837	Republican	918	\N	\N	accessories	\N	\N	\N
1170	meeting	question	713	37	132	entire	393	\N	\N	accessories	\N	\N	\N
1172	now	wish	300	28	773	outside	19	\N	\N	accessories	\N	\N	\N
1173	factor	will	557	654	628	baby	431	\N	\N	accessories	\N	\N	\N
1175	role	necessary	633	522	880	professor	109	\N	\N	accessories	\N	\N	\N
1176	job	difficult	128	895	589	and	811	\N	\N	accessories	\N	\N	\N
1178	side	pay	600	34	848	record	484	\N	\N	accessories	\N	\N	\N
1179	alone	condition	889	556	327	perform	9	\N	\N	accessories	\N	\N	\N
1180	law	those	131	484	483	trouble	443	\N	\N	accessories	\N	\N	\N
1181	finally	ever	647	528	104	trip	464	\N	\N	accessories	\N	\N	\N
1182	around	garden	565	529	303	future	54	\N	\N	accessories	\N	\N	\N
1183	wall	will	921	911	434	adult	933	\N	\N	accessories	\N	\N	\N
1184	thus	record	941	360	832	defense	85	\N	\N	accessories	\N	\N	\N
1185	fish	why	468	371	114	base	820	\N	\N	accessories	\N	\N	\N
1186	personal	before	677	104	892	leg	617	\N	\N	accessories	\N	\N	\N
1187	statement	effort	326	163	893	culture	339	\N	\N	accessories	\N	\N	\N
1189	property	old	598	976	68	hour	579	\N	\N	accessories	\N	\N	\N
1190	reflect	series	473	834	513	represent	396	\N	\N	accessories	\N	\N	\N
1191	term	media	373	536	789	Congress	829	\N	\N	accessories	\N	\N	\N
1193	what	professional	180	316	182	wait	213	\N	\N	accessories	\N	\N	\N
1194	indicate	detail	880	794	138	society	942	\N	\N	accessories	\N	\N	\N
1195	more	relate	469	810	142	television	928	\N	\N	accessories	\N	\N	\N
1196	until	scientist	497	519	562	very	404	\N	\N	accessories	\N	\N	\N
1161	the	answer	687	309	706	rich	568	\N	\N	accessories	\N	\N	[{"price": "460", "ends_at": "great", "price_id": "172", "starts_at": "ever"}]
1188	rich	certain	790	84	214	plant	571	\N	\N	accessories	\N	\N	[{"price": "904", "ends_at": "light", "price_id": "720", "starts_at": "feeling"}]
1177	sister	car	393	92	512	billion	363	\N	\N	accessories	\N	\N	[{"price": "45", "ends_at": "heavy", "price_id": "431", "starts_at": "check"}]
1197	process	should	626	655	766	lead	558	\N	\N	accessories	\N	\N	\N
1198	positive	other	980	662	517	win	482	\N	\N	accessories	\N	\N	\N
1199	down	travel	287	489	129	morning	388	\N	\N	accessories	\N	\N	\N
1200	truth	home	37	977	956	seem	625	\N	\N	accessories	\N	\N	\N
344	enjoy	data	534	264	427	why	890	\N	\N	electronics	\N	[{"url": "amount", "alt_text": "them", "image_id": "659", "sort_order": "221"}]	\N
557	director	nation	322	900	744	difficult	65	according	853	desktop	\N	[{"url": "up", "alt_text": "participant", "image_id": "588", "sort_order": "868"}]	\N
1155	appear	father	864	31	691	she	408	\N	\N	accessories	\N	[{"url": "skin", "alt_text": "source", "image_id": "499", "sort_order": "925"}]	\N
361	break	box	707	139	661	continue	323	\N	\N	electronics	\N	[{"url": "water", "alt_text": "develop", "image_id": "796", "sort_order": "714"}]	\N
964	network	bring	305	3	745	policy	349	\N	\N	camera	\N	[{"url": "end", "alt_text": "tend", "image_id": "405", "sort_order": "997"}]	\N
728	change	could	702	750	921	bad	484	\N	\N	tablet	320	[{"url": "analysis", "alt_text": "factor", "image_id": "21", "sort_order": "964"}]	\N
385	but	talk	137	56	615	art	180	\N	\N	electronics	\N	[{"url": "establish", "alt_text": "including", "image_id": "143", "sort_order": "439"}]	\N
372	sound	role	257	921	789	nearly	698	\N	\N	electronics	\N	[{"url": "think", "alt_text": "result", "image_id": "272", "sort_order": "415"}]	\N
570	page	statement	546	312	943	bar	773	action	852	desktop	\N	[{"url": "visit", "alt_text": "suddenly", "image_id": "478", "sort_order": "460"}]	\N
1115	seek	maintain	225	967	523	can	672	\N	\N	accessories	\N	[{"url": "month", "alt_text": "sound", "image_id": "673", "sort_order": "580"}]	\N
595	different	coach	214	22	168	training	372	third	189	desktop	\N	[{"url": "raise", "alt_text": "age", "image_id": "903", "sort_order": "221"}, {"url": "process", "alt_text": "ball", "image_id": "578", "sort_order": "194"}]	\N
798	keep	security	887	109	186	number	78	\N	\N	tablet	27	[{"url": "it", "alt_text": "owner", "image_id": "94", "sort_order": "532"}]	\N
772	choice	key	652	928	139	serve	451	\N	\N	tablet	747	[{"url": "build", "alt_text": "clear", "image_id": "341", "sort_order": "133"}]	\N
560	cultural	black	813	234	681	measure	123	enjoy	59	desktop	\N	[{"url": "foreign", "alt_text": "have", "image_id": "267", "sort_order": "782"}]	\N
453	happen	single	727	148	357	always	549	bed	299	computer	\N	[{"url": "pull", "alt_text": "easy", "image_id": "936", "sort_order": "353"}]	\N
924	information	building	809	708	264	floor	773	\N	\N	camera	\N	[{"url": "political", "alt_text": "at", "image_id": "227", "sort_order": "762"}]	\N
510	coach	quickly	541	206	215	real	296	eye	249	desktop	\N	[{"url": "development", "alt_text": "through", "image_id": "128", "sort_order": "143"}]	\N
324	specific	policy	834	267	377	ground	604	\N	\N	electronics	\N	[{"url": "cultural", "alt_text": "responsibility", "image_id": "135", "sort_order": "573"}]	\N
976	statement	perhaps	225	792	881	side	550	\N	\N	camera	\N	[{"url": "price", "alt_text": "local", "image_id": "133", "sort_order": "348"}]	\N
565	occur	and	334	359	366	blue	783	run	896	desktop	\N	[{"url": "tonight", "alt_text": "second", "image_id": "399", "sort_order": "150"}]	\N
947	thought	foreign	961	730	247	front	34	\N	\N	camera	\N	[{"url": "room", "alt_text": "space", "image_id": "88", "sort_order": "522"}]	\N
751	where	fly	848	47	599	produce	363	\N	\N	tablet	316	[{"url": "good", "alt_text": "either", "image_id": "522", "sort_order": "785"}]	\N
551	probably	year	273	303	596	realize	911	find	240	desktop	\N	[{"url": "value", "alt_text": "like", "image_id": "935", "sort_order": "970"}]	\N
1192	analysis	own	179	858	696	street	1	\N	\N	accessories	\N	[{"url": "although", "alt_text": "worry", "image_id": "538", "sort_order": "791"}]	\N
1174	which	with	553	847	476	majority	827	\N	\N	accessories	\N	[{"url": "investment", "alt_text": "price", "image_id": "18", "sort_order": "601"}]	\N
588	on	style	298	715	583	paper	201	third	100	desktop	\N	[{"url": "measure", "alt_text": "federal", "image_id": "427", "sort_order": "945"}]	\N
1107	off	interest	56	145	505	body	516	\N	\N	accessories	\N	[{"url": "put", "alt_text": "standard", "image_id": "837", "sort_order": "554"}]	\N
1121	method	stage	690	470	39	big	319	\N	\N	accessories	\N	[{"url": "wear", "alt_text": "room", "image_id": "840", "sort_order": "48"}]	\N
1171	walk	activity	331	348	853	tonight	172	\N	\N	accessories	\N	[{"url": "gun", "alt_text": "believe", "image_id": "178", "sort_order": "748"}]	\N
436	international	up	137	576	725	few	790	room	548	computer	\N	\N	[{"price": "841", "ends_at": "along", "price_id": "188", "starts_at": "around"}]
374	hot	assume	743	106	308	meeting	255	\N	\N	electronics	\N	\N	[{"price": "220", "ends_at": "several", "price_id": "444", "starts_at": "help"}]
301	play	trial	23	605	377	truth	728	\N	\N	electronics	\N	\N	[{"price": "38", "ends_at": "term", "price_id": "988", "starts_at": "anything"}]
470	pay	trade	97	79	695	right	867	watch	433	computer	\N	\N	[{"price": "658", "ends_at": "dog", "price_id": "316", "starts_at": "enjoy"}]
477	impact	major	816	525	863	many	404	seat	275	computer	\N	\N	[{"price": "4", "ends_at": "main", "price_id": "638", "starts_at": "add"}]
403	bring	seven	483	798	39	leg	832	strong	44	computer	\N	\N	[{"price": "896", "ends_at": "clearly", "price_id": "655", "starts_at": "stay"}]
996	record	instead	99	710	356	office	518	\N	\N	camera	\N	\N	[{"price": "59", "ends_at": "daughter", "price_id": "376", "starts_at": "others"}]
408	become	worker	975	367	893	middle	120	left	796	computer	\N	\N	[{"price": "160", "ends_at": "owner", "price_id": "994", "starts_at": "trade"}]
975	expert	officer	273	371	593	technology	513	\N	\N	camera	\N	\N	[{"price": "964", "ends_at": "court", "price_id": "465", "starts_at": "reveal"}]
1106	of	their	931	254	954	certainly	442	\N	\N	accessories	\N	\N	[{"price": "886", "ends_at": "some", "price_id": "929", "starts_at": "seven"}]
1105	fall	discuss	185	724	656	friend	584	\N	\N	accessories	\N	\N	[{"price": "144", "ends_at": "back", "price_id": "581", "starts_at": "interest"}]
978	change	actually	330	225	167	team	624	\N	\N	camera	\N	[{"url": "act", "alt_text": "six", "image_id": "827", "sort_order": "212"}, {"url": "identify", "alt_text": "view", "image_id": "831", "sort_order": "676"}]	[{"price": "7", "ends_at": "expect", "price_id": "560", "starts_at": "woman"}]
1114	dinner	main	425	170	804	describe	1	\N	\N	accessories	\N	\N	[{"price": "469", "ends_at": "blue", "price_id": "956", "starts_at": "allow"}]
904	operation	career	160	282	117	forward	259	\N	\N	camera	\N	\N	[{"price": "82", "ends_at": "source", "price_id": "185", "starts_at": "woman"}]
1128	type	land	931	304	293	throw	477	\N	\N	accessories	\N	\N	[{"price": "180", "ends_at": "between", "price_id": "828", "starts_at": "experience"}]
472	little	manager	195	868	522	reduce	535	hard	370	computer	\N	\N	[{"price": "848", "ends_at": "prevent", "price_id": "326", "starts_at": "American"}]
393	could	different	901	847	222	discover	862	\N	\N	electronics	\N	[{"url": "avoid", "alt_text": "thing", "image_id": "611", "sort_order": "375"}]	[{"price": "711", "ends_at": "others", "price_id": "512", "starts_at": "shake"}]
\.


--
-- Data for Name: relation_50; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_50 (custorder_id, customer_orders_customer_id) FROM stdin;
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
-- Data for Name: relation_51; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_51 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_52; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_52 (custorder_id, payment_order_customer_id, payment_order_payment_method_id) FROM stdin;
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
-- Data for Name: relation_53; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_53 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_54; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_54 (promotion_id, coupon_code, order_coupons_custorder_id) FROM stdin;
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
-- Data for Name: relation_55; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_55 (product_id, warehouse_id, bin_id) FROM stdin;
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
-- Data for Name: relation_56; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_56 (supplier_id, product_id) FROM stdin;
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
-- Data for Name: relation_57; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_57 (purchaseorder_id, supplier_pos_supplier_id) FROM stdin;
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
-- Data for Name: relation_58; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_58 (purchaseorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_59; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_59 (custorder_id, shipment_id, courier_shipments_courierpartner_id) FROM stdin;
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
-- Data for Name: relation_6; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_6 (desktop_id, form_factor) FROM stdin;
501	himself
502	word
503	tonight
504	happen
505	talk
506	each
507	between
508	four
509	yard
510	son
511	enough
512	feeling
513	house
514	expect
515	item
516	authority
517	public
518	step
519	standard
520	American
521	a
522	trade
523	way
524	financial
525	painting
526	budget
527	cover
528	thousand
529	purpose
530	tell
531	individual
532	threat
533	same
534	only
535	who
536	necessary
537	where
538	drive
539	across
540	ahead
541	season
542	wall
543	machine
544	part
545	who
546	fact
547	then
548	miss
549	likely
550	herself
551	less
552	around
553	stage
554	parent
555	man
556	customer
557	artist
558	her
559	thought
560	force
561	system
562	and
563	collection
564	across
565	trade
566	morning
567	government
568	town
569	money
570	nearly
571	ten
572	range
573	water
574	wind
575	measure
576	effort
577	too
578	relate
579	anything
580	floor
581	enough
582	her
583	interest
584	wrong
585	idea
586	the
587	recently
588	bring
589	step
590	attention
591	old
592	name
593	edge
594	dream
595	modern
596	necessary
597	bring
598	executive
599	believe
600	feel
\.


--
-- Data for Name: relation_60; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_60 (phone_id, bundle_phone_phone_id) FROM stdin;
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
-- Data for Name: relation_61; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_61 (smartwatch_id, bundled_phone_smart_watch_phone_id) FROM stdin;
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
-- Data for Name: relation_62; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_62 (phone_id, single_bundle_phone_bundled_phone_phone_id) FROM stdin;
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

COPY public.relation_7 (laptop_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, cpu, ram_gb, battery_wh, productimage, pricehistory) FROM stdin;
602	suddenly	budget	524	327	681	soldier	620	assume	326	912	\N	\N
603	sing	eat	803	587	92	explain	347	different	426	872	\N	\N
604	newspaper	offer	74	269	65	away	20	thought	185	931	\N	\N
605	future	cultural	336	232	321	everybody	855	assume	838	259	\N	\N
607	hour	professor	302	167	649	possible	50	anything	119	442	\N	\N
608	bank	in	441	950	628	teacher	285	authority	366	787	\N	\N
609	think	generation	670	737	580	whom	590	manager	289	624	\N	\N
610	great	read	263	692	177	start	147	friend	361	97	\N	\N
611	ball	economic	407	366	535	market	406	throughout	461	154	\N	\N
612	factor	traditional	853	493	995	raise	39	expert	748	656	\N	\N
613	care	government	254	81	759	capital	40	these	532	520	\N	\N
614	probably	someone	483	584	496	gas	940	about	533	815	\N	\N
615	north	seek	175	577	726	late	408	report	14	396	\N	\N
616	you	me	566	742	576	shoulder	170	especially	608	603	\N	\N
617	teach	open	383	53	861	magazine	842	which	362	449	\N	\N
618	need	major	244	705	661	color	872	either	91	453	\N	\N
619	common	business	777	893	366	site	166	class	138	453	\N	\N
620	this	later	953	853	47	another	581	human	346	994	\N	\N
621	successful	election	828	178	583	figure	490	I	9	590	\N	\N
622	professional	special	240	906	898	style	455	because	671	168	\N	\N
623	data	thought	522	214	410	money	127	shoulder	323	269	\N	\N
624	suddenly	early	142	174	338	stage	185	determine	825	934	\N	\N
625	tell	everyone	760	633	543	discuss	240	remember	568	724	\N	\N
626	foot	nearly	438	480	469	win	174	sense	533	631	\N	\N
628	address	medical	699	7	833	worker	122	process	436	390	\N	\N
629	development	PM	731	671	526	experience	633	drug	909	451	\N	\N
631	both	necessary	56	88	740	president	100	hair	552	397	\N	\N
632	body	practice	141	455	407	avoid	487	beyond	460	535	\N	\N
633	yourself	evidence	874	608	38	item	970	all	1000	605	\N	\N
634	eye	firm	461	501	400	allow	935	democratic	358	795	\N	\N
636	sport	later	29	570	63	help	999	little	951	564	\N	\N
637	animal	personal	236	457	871	spring	453	tree	344	911	\N	\N
638	join	recently	764	105	398	shake	766	paper	480	285	\N	\N
639	defense	second	953	420	477	mention	520	yes	99	169	\N	\N
640	or	show	411	555	887	near	905	a	910	629	\N	\N
642	protect	score	995	141	626	measure	231	involve	806	831	\N	\N
643	bill	instead	222	909	465	fast	106	beyond	716	106	\N	\N
645	impact	art	961	287	408	travel	397	drug	499	734	\N	\N
646	plant	level	457	309	759	on	660	Mr	596	397	\N	\N
647	couple	none	321	870	772	forward	179	culture	103	502	\N	\N
648	act	authority	185	457	158	those	109	require	552	127	\N	\N
649	case	similar	550	327	324	team	975	paper	694	573	\N	\N
650	girl	production	958	651	350	and	576	action	607	819	\N	\N
651	try	staff	474	332	497	five	844	all	550	930	\N	\N
652	should	word	224	171	247	main	880	good	609	956	\N	\N
653	himself	feel	252	53	800	development	928	arm	635	778	\N	\N
654	enter	finally	64	337	430	form	353	lay	369	371	\N	\N
655	test	before	615	610	903	imagine	215	effort	806	924	\N	\N
656	reduce	level	875	296	929	this	322	here	407	716	\N	\N
657	ago	time	394	686	793	reach	9	mention	399	667	\N	\N
658	training	coach	924	992	983	medical	619	step	803	799	\N	\N
659	I	hit	631	860	916	here	240	food	68	843	\N	\N
660	hard	class	627	328	394	place	728	director	893	301	\N	\N
661	deep	year	99	445	5	organization	96	say	828	418	\N	\N
662	somebody	structure	975	157	115	under	772	science	349	148	\N	\N
664	game	challenge	199	163	169	threat	988	degree	992	151	\N	\N
666	thus	relationship	342	622	813	whom	609	recent	141	22	\N	\N
667	data	although	368	798	179	smile	241	answer	710	509	\N	\N
668	again	maybe	607	501	36	former	137	available	546	481	\N	\N
670	draw	identify	916	759	357	rate	393	best	487	31	\N	\N
671	car	night	542	473	909	marriage	737	yes	247	212	\N	\N
672	room	any	706	931	817	phone	740	feeling	714	312	\N	\N
673	fast	set	44	274	840	quality	74	without	817	109	\N	\N
674	what	move	833	823	790	fear	888	without	410	340	\N	\N
675	need	strong	108	457	736	individual	684	pass	288	147	\N	\N
676	level	move	442	381	664	light	955	attorney	769	393	\N	\N
677	herself	easy	422	447	377	remain	201	if	67	149	\N	\N
678	attention	factor	244	246	22	effect	686	play	404	468	\N	\N
679	total	bag	804	632	452	debate	56	indicate	177	835	\N	\N
680	land	responsibility	841	839	540	close	46	realize	441	875	\N	\N
681	none	smile	805	286	426	manager	881	who	242	712	\N	\N
682	voice	mother	791	677	384	push	798	gun	351	600	\N	\N
683	large	several	766	49	519	above	133	western	706	942	\N	\N
684	us	field	536	373	599	bit	358	analysis	121	862	\N	\N
635	unit	her	775	178	863	game	185	clear	899	795	\N	[{"price": "335", "ends_at": "say", "price_id": "775", "starts_at": "foot"}]
685	recognize	range	883	252	651	environmental	448	data	974	153	\N	\N
686	foot	report	825	20	375	religious	155	particularly	296	26	\N	\N
688	point	care	604	442	95	service	558	stuff	618	514	\N	\N
689	wish	issue	100	132	552	trade	659	create	617	558	\N	\N
690	drive	play	975	420	248	explain	490	would	853	752	\N	\N
691	computer	theory	325	449	120	white	216	particular	607	626	\N	\N
693	case	method	905	929	201	watch	707	main	670	606	\N	\N
694	college	yes	90	4	525	meeting	934	contain	988	241	\N	\N
695	eat	material	94	315	500	kid	588	control	440	574	\N	\N
696	call	deal	306	402	644	Mr	687	clearly	610	30	\N	\N
697	last	machine	284	931	636	point	449	PM	225	276	\N	\N
699	true	game	276	527	178	admit	467	in	303	600	\N	\N
700	where	into	605	187	329	popular	778	police	991	683	\N	\N
641	away	story	759	877	490	voice	328	he	150	359	[{"url": "start", "alt_text": "least", "image_id": "417", "sort_order": "971"}]	\N
665	guy	long	123	453	599	avoid	442	tax	138	871	[{"url": "concern", "alt_text": "picture", "image_id": "667", "sort_order": "725"}]	\N
601	book	threat	874	376	512	be	139	despite	500	70	[{"url": "approach", "alt_text": "song", "image_id": "809", "sort_order": "701"}]	\N
687	social	federal	484	654	28	bag	69	until	769	816	\N	[{"price": "651", "ends_at": "to", "price_id": "163", "starts_at": "effect"}]
669	listen	reveal	579	147	215	necessary	726	different	142	287	\N	[{"price": "912", "ends_at": "east", "price_id": "456", "starts_at": "trouble"}]
606	or	small	891	314	975	plant	426	yard	974	13	\N	[{"price": "694", "ends_at": "left", "price_id": "771", "starts_at": "offer"}]
692	trip	approach	887	715	379	later	99	several	364	109	\N	[{"price": "880", "ends_at": "wife", "price_id": "669", "starts_at": "so"}]
627	ahead	TV	520	979	317	most	290	environmental	690	159	\N	[{"price": "250", "ends_at": "blue", "price_id": "464", "starts_at": "coach"}]
644	drive	office	436	54	465	bank	384	likely	574	330	\N	[{"price": "932", "ends_at": "appear", "price_id": "830", "starts_at": "occur"}]
698	particular	hear	932	891	330	condition	453	military	547	57	[{"url": "idea", "alt_text": "talk", "image_id": "679", "sort_order": "728"}]	[{"price": "700", "ends_at": "big", "price_id": "158", "starts_at": "crime"}]
630	toward	prevent	461	835	547	rule	373	wrong	856	212	\N	[{"price": "14", "ends_at": "marriage", "price_id": "442", "starts_at": "structure"}]
663	stock	show	385	448	334	ground	965	character	961	214	\N	[{"price": "47", "ends_at": "major", "price_id": "805", "starts_at": "material"}]
\.


--
-- Data for Name: relation_8; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_8 (smartwatch_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, band_size, productimage, pricehistory) FROM stdin;
801	paper	citizen	525	94	910	move	694	ok	\N	\N
802	benefit	natural	38	284	863	Republican	133	college	\N	\N
803	new	guess	586	172	441	personal	734	answer	\N	\N
805	single	high	393	29	984	experience	124	company	\N	\N
806	media	ask	294	266	26	share	333	white	\N	\N
807	cell	hard	641	527	679	work	225	decide	\N	\N
808	hear	hair	301	758	83	development	467	employee	\N	\N
809	section	law	381	409	653	others	887	community	\N	\N
810	either	may	828	695	484	like	577	create	\N	\N
811	cover	program	501	577	86	full	61	act	\N	\N
813	stay	event	181	551	489	particular	18	left	\N	\N
814	include	mind	466	895	351	only	869	side	\N	\N
815	lot	again	991	232	355	religious	24	station	\N	\N
817	should	education	184	238	84	four	42	once	\N	\N
818	house	situation	179	328	5	from	552	but	\N	\N
819	gas	piece	836	635	540	always	40	sing	\N	\N
820	ready	pretty	858	433	228	end	690	sell	\N	\N
821	majority	our	532	995	982	must	194	fine	\N	\N
822	his	total	859	42	620	against	421	lay	\N	\N
823	official	model	409	524	437	speak	454	whom	\N	\N
824	list	none	346	579	948	heavy	81	maybe	\N	\N
825	several	soon	484	853	750	eight	166	share	\N	\N
826	why	represent	919	441	165	camera	274	source	\N	\N
827	suggest	local	423	767	493	senior	981	contain	\N	\N
829	thing	design	408	565	386	fund	246	at	\N	\N
830	one	reason	368	556	558	throw	272	nor	\N	\N
831	central	view	21	873	674	great	270	police	\N	\N
832	fish	special	727	898	400	six	271	relationship	\N	\N
833	out	admit	789	820	603	heavy	503	traditional	\N	\N
834	clear	situation	17	164	841	alone	114	along	\N	\N
835	range	range	225	156	116	professional	59	necessary	\N	\N
836	everything	west	177	70	98	role	563	difficult	\N	\N
837	job	foot	748	671	480	special	60	stand	\N	\N
838	your	security	278	53	542	consider	911	financial	\N	\N
840	in	apply	449	114	347	by	895	upon	\N	\N
841	let	relate	392	959	670	pattern	298	team	\N	\N
842	type	night	85	235	838	fund	575	detail	\N	\N
843	southern	design	358	438	442	pay	602	side	\N	\N
844	everyone	late	273	192	155	space	339	bad	\N	\N
845	nothing	less	986	361	991	any	69	whatever	\N	\N
846	today	fall	647	608	813	two	590	right	\N	\N
847	four	perhaps	925	994	182	director	783	best	\N	\N
848	process	production	737	937	862	create	545	also	\N	\N
849	movement	put	210	489	970	lot	368	culture	\N	\N
850	economic	reveal	632	541	934	good	792	less	\N	\N
851	strong	different	209	307	176	blue	663	world	\N	\N
852	himself	hundred	410	436	501	some	721	part	\N	\N
853	finally	hotel	799	35	545	act	25	cut	\N	\N
857	image	attorney	349	84	607	executive	796	professional	\N	\N
858	reason	line	143	940	869	through	971	feeling	\N	\N
859	decision	those	181	94	9	class	25	art	\N	\N
860	perhaps	try	188	286	199	major	412	before	\N	\N
861	ever	only	731	555	524	wish	715	per	\N	\N
862	once	pressure	997	881	943	military	571	dog	\N	\N
863	section	push	394	890	108	deep	475	picture	\N	\N
864	conference	then	248	73	745	large	138	people	\N	\N
865	democratic	herself	703	619	28	debate	653	occur	\N	\N
866	item	lawyer	58	298	354	rate	712	work	\N	\N
867	serious	participant	636	450	325	discussion	781	fast	\N	\N
868	laugh	class	546	324	942	describe	712	true	\N	\N
869	crime	side	968	778	750	part	598	own	\N	\N
870	myself	most	833	700	458	oil	434	under	\N	\N
871	the	let	416	754	127	term	12	couple	\N	\N
872	democratic	few	937	957	794	type	781	security	\N	\N
873	above	ok	996	357	180	site	753	for	\N	\N
874	message	price	42	147	951	huge	529	mother	\N	\N
876	it	step	584	481	741	authority	597	order	\N	\N
877	heart	film	831	610	263	note	798	learn	\N	\N
878	realize	start	904	401	553	director	936	instead	\N	\N
879	rise	fall	150	332	175	baby	403	thing	\N	\N
880	involve	born	592	949	937	wrong	516	region	\N	\N
881	hit	give	917	658	81	indicate	267	key	\N	\N
882	woman	argue	402	501	747	course	824	dream	\N	\N
883	region	class	642	758	298	shoulder	863	necessary	\N	\N
884	hundred	how	649	959	276	yet	281	too	\N	\N
885	already	carry	128	262	989	open	994	these	\N	\N
886	arrive	understand	123	854	688	culture	480	tell	\N	\N
887	news	teach	970	155	478	really	802	approach	\N	\N
888	consider	wish	244	43	231	thousand	111	nation	\N	\N
889	agent	attack	835	955	99	message	593	public	\N	\N
890	owner	follow	674	117	45	approach	425	item	\N	\N
892	through	share	863	818	932	deal	999	for	\N	\N
804	identify	area	454	748	250	cultural	768	moment	\N	[{"price": "482", "ends_at": "church", "price_id": "716", "starts_at": "involve"}]
893	bring	because	814	629	640	town	164	media	\N	\N
894	threat	star	550	588	502	point	361	your	\N	\N
895	difference	similar	849	620	408	choose	334	arrive	\N	\N
898	wide	note	462	90	1	agent	760	world	\N	\N
899	feeling	character	288	562	313	similar	470	three	\N	\N
900	break	wonder	393	121	832	hotel	314	read	\N	\N
875	start	employee	718	628	421	people	808	peace	[{"url": "fill", "alt_text": "officer", "image_id": "754", "sort_order": "843"}]	\N
855	eat	budget	406	455	523	follow	437	down	[{"url": "job", "alt_text": "discuss", "image_id": "383", "sort_order": "745"}]	\N
812	resource	seek	20	286	38	star	319	catch	[{"url": "blood", "alt_text": "clearly", "image_id": "593", "sort_order": "454"}]	\N
828	response	far	356	959	725	ten	892	whole	[{"url": "almost", "alt_text": "put", "image_id": "313", "sort_order": "647"}]	\N
896	carry	sometimes	543	877	73	page	980	true	[{"url": "five", "alt_text": "true", "image_id": "652", "sort_order": "369"}]	\N
897	boy	teach	16	828	590	south	102	us	\N	[{"price": "750", "ends_at": "drug", "price_id": "921", "starts_at": "good"}]
839	of	we	760	658	213	interview	610	middle	\N	[{"price": "811", "ends_at": "organization", "price_id": "7", "starts_at": "difficult"}]
856	he	piece	611	880	347	security	922	provide	\N	[{"price": "738", "ends_at": "case", "price_id": "134", "starts_at": "need"}]
854	show	star	377	255	160	level	932	hospital	\N	[{"price": "181", "ends_at": "heavy", "price_id": "50", "starts_at": "wide"}]
891	western	with	151	835	356	many	52	yourself	\N	[{"price": "635", "ends_at": "surface", "price_id": "56", "starts_at": "yard"}]
816	tell	management	452	525	203	how	157	we	\N	[{"price": "521", "ends_at": "important", "price_id": "924", "starts_at": "talk"}]
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
-- Data for Name: temp_pricehistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_pricehistory (product_id, sku, product_name, base_price, is_active, quantity, productimage, pricehistory) FROM stdin;
338	\N	\N	\N	\N	\N	[]	[{"price": "484", "ends_at": "total", "price_id": "690", "starts_at": "force"}]
1292	\N	\N	\N	\N	\N	[]	[{"price": "164", "ends_at": "pull", "price_id": "660", "starts_at": "five"}]
56	\N	\N	\N	\N	\N	[]	[{"price": "197", "ends_at": "kid", "price_id": "760", "starts_at": "form"}]
1632	\N	\N	\N	\N	\N	[]	[{"price": "399", "ends_at": "structure", "price_id": "382", "starts_at": "officer"}]
568	\N	\N	\N	\N	\N	[]	[{"price": "799", "ends_at": "writer", "price_id": "826", "starts_at": "party"}]
1439	\N	\N	\N	\N	\N	[]	[{"price": "74", "ends_at": "social", "price_id": "785", "starts_at": "according"}]
1977	\N	\N	\N	\N	\N	[]	[{"price": "2", "ends_at": "remain", "price_id": "303", "starts_at": "project"}]
1726	\N	\N	\N	\N	\N	[]	[{"price": "995", "ends_at": "democratic", "price_id": "122", "starts_at": "check"}]
303	\N	\N	\N	\N	\N	[]	[{"price": "127", "ends_at": "crime", "price_id": "485", "starts_at": "back"}]
1871	\N	\N	\N	\N	\N	[]	[{"price": "228", "ends_at": "describe", "price_id": "666", "starts_at": "office"}]
1073	\N	\N	\N	\N	\N	[]	[{"price": "9", "ends_at": "check", "price_id": "626", "starts_at": "hair"}]
1477	\N	\N	\N	\N	\N	[]	[{"price": "592", "ends_at": "site", "price_id": "386", "starts_at": "happy"}]
687	\N	\N	\N	\N	\N	[]	[{"price": "651", "ends_at": "to", "price_id": "163", "starts_at": "effect"}]
1030	\N	\N	\N	\N	\N	[]	[{"price": "260", "ends_at": "we", "price_id": "648", "starts_at": "prove"}]
267	\N	\N	\N	\N	\N	[]	[{"price": "978", "ends_at": "interview", "price_id": "620", "starts_at": "left"}]
113	\N	\N	\N	\N	\N	[]	[{"price": "102", "ends_at": "enter", "price_id": "140", "starts_at": "could"}]
1875	\N	\N	\N	\N	\N	[]	[{"price": "458", "ends_at": "surface", "price_id": "767", "starts_at": "hear"}]
1206	\N	\N	\N	\N	\N	[]	[{"price": "620", "ends_at": "market", "price_id": "288", "starts_at": "born"}]
1161	\N	\N	\N	\N	\N	[]	[{"price": "460", "ends_at": "great", "price_id": "172", "starts_at": "ever"}]
2024	\N	\N	\N	\N	\N	[]	[{"price": "998", "ends_at": "animal", "price_id": "200", "starts_at": "sometimes"}]
117	\N	\N	\N	\N	\N	[]	[{"price": "72", "ends_at": "half", "price_id": "656", "starts_at": "question"}]
1188	\N	\N	\N	\N	\N	[]	[{"price": "904", "ends_at": "light", "price_id": "720", "starts_at": "feeling"}]
1960	\N	\N	\N	\N	\N	[]	[{"price": "449", "ends_at": "as", "price_id": "191", "starts_at": "answer"}]
411	\N	\N	\N	\N	\N	[]	[{"price": "50", "ends_at": "itself", "price_id": "77", "starts_at": "add"}]
1032	\N	\N	\N	\N	\N	[]	[{"price": "858", "ends_at": "Democrat", "price_id": "918", "starts_at": "action"}]
985	\N	\N	\N	\N	\N	[]	[{"price": "195", "ends_at": "change", "price_id": "444", "starts_at": "song"}]
102	\N	\N	\N	\N	\N	[]	[{"price": "102", "ends_at": "analysis", "price_id": "540", "starts_at": "remain"}]
1513	\N	\N	\N	\N	\N	[]	[{"price": "938", "ends_at": "similar", "price_id": "447", "starts_at": "camera"}]
1475	\N	\N	\N	\N	\N	[]	[{"price": "705", "ends_at": "relate", "price_id": "291", "starts_at": "audience"}]
1177	\N	\N	\N	\N	\N	[]	[{"price": "45", "ends_at": "heavy", "price_id": "431", "starts_at": "check"}]
635	\N	\N	\N	\N	\N	[]	[{"price": "335", "ends_at": "say", "price_id": "775", "starts_at": "foot"}]
1229	\N	\N	\N	\N	\N	[]	[{"price": "509", "ends_at": "forward", "price_id": "387", "starts_at": "perhaps"}]
1703	\N	\N	\N	\N	\N	[]	[{"price": "333", "ends_at": "rest", "price_id": "89", "starts_at": "across"}]
980	\N	\N	\N	\N	\N	[]	[{"price": "86", "ends_at": "man", "price_id": "55", "starts_at": "interview"}]
436	\N	\N	\N	\N	\N	[]	[{"price": "841", "ends_at": "along", "price_id": "188", "starts_at": "around"}]
13	\N	\N	\N	\N	\N	[]	[{"price": "434", "ends_at": "both", "price_id": "347", "starts_at": "outside"}]
669	\N	\N	\N	\N	\N	[]	[{"price": "912", "ends_at": "east", "price_id": "456", "starts_at": "trouble"}]
897	\N	\N	\N	\N	\N	[]	[{"price": "750", "ends_at": "drug", "price_id": "921", "starts_at": "good"}]
294	\N	\N	\N	\N	\N	[]	[{"price": "208", "ends_at": "reflect", "price_id": "261", "starts_at": "enough"}]
1445	\N	\N	\N	\N	\N	[]	[{"price": "441", "ends_at": "company", "price_id": "172", "starts_at": "newspaper"}]
1314	\N	\N	\N	\N	\N	[]	[{"price": "881", "ends_at": "ago", "price_id": "757", "starts_at": "left"}]
1402	\N	\N	\N	\N	\N	[]	[{"price": "777", "ends_at": "political", "price_id": "398", "starts_at": "charge"}]
804	\N	\N	\N	\N	\N	[]	[{"price": "482", "ends_at": "church", "price_id": "716", "starts_at": "involve"}]
141	\N	\N	\N	\N	\N	[]	[{"price": "810", "ends_at": "conference", "price_id": "335", "starts_at": "my"}, {"price": "403", "ends_at": "every", "price_id": "571", "starts_at": "task"}]
1340	\N	\N	\N	\N	\N	[]	[{"price": "80", "ends_at": "choice", "price_id": "57", "starts_at": "past"}]
1288	\N	\N	\N	\N	\N	[]	[{"price": "59", "ends_at": "prove", "price_id": "756", "starts_at": "newspaper"}]
374	\N	\N	\N	\N	\N	[]	[{"price": "220", "ends_at": "several", "price_id": "444", "starts_at": "help"}]
301	\N	\N	\N	\N	\N	[]	[{"price": "38", "ends_at": "term", "price_id": "988", "starts_at": "anything"}]
470	\N	\N	\N	\N	\N	[]	[{"price": "658", "ends_at": "dog", "price_id": "316", "starts_at": "enjoy"}]
477	\N	\N	\N	\N	\N	[]	[{"price": "4", "ends_at": "main", "price_id": "638", "starts_at": "add"}]
606	\N	\N	\N	\N	\N	[]	[{"price": "694", "ends_at": "left", "price_id": "771", "starts_at": "offer"}]
995	\N	\N	\N	\N	\N	[]	[{"price": "162", "ends_at": "class", "price_id": "462", "starts_at": "score"}]
403	\N	\N	\N	\N	\N	[]	[{"price": "896", "ends_at": "clearly", "price_id": "655", "starts_at": "stay"}]
692	\N	\N	\N	\N	\N	[]	[{"price": "880", "ends_at": "wife", "price_id": "669", "starts_at": "so"}]
1381	\N	\N	\N	\N	\N	[]	[{"price": "202", "ends_at": "let", "price_id": "230", "starts_at": "ready"}]
627	\N	\N	\N	\N	\N	[]	[{"price": "250", "ends_at": "blue", "price_id": "464", "starts_at": "coach"}]
1939	\N	\N	\N	\N	\N	[]	[{"price": "664", "ends_at": "since", "price_id": "235", "starts_at": "game"}]
996	\N	\N	\N	\N	\N	[]	[{"price": "59", "ends_at": "daughter", "price_id": "376", "starts_at": "others"}]
1857	\N	\N	\N	\N	\N	[]	[{"price": "993", "ends_at": "lead", "price_id": "446", "starts_at": "art"}]
644	\N	\N	\N	\N	\N	[]	[{"price": "932", "ends_at": "appear", "price_id": "830", "starts_at": "occur"}]
1869	\N	\N	\N	\N	\N	[]	[{"price": "9", "ends_at": "rich", "price_id": "765", "starts_at": "offer"}]
1304	\N	\N	\N	\N	\N	[]	[{"price": "585", "ends_at": "community", "price_id": "491", "starts_at": "evening"}]
149	\N	\N	\N	\N	\N	[]	[{"price": "221", "ends_at": "simple", "price_id": "997", "starts_at": "peace"}]
228	\N	\N	\N	\N	\N	[]	[{"price": "174", "ends_at": "red", "price_id": "288", "starts_at": "protect"}]
1411	\N	\N	\N	\N	\N	[]	[{"price": "299", "ends_at": "fear", "price_id": "667", "starts_at": "theory"}]
839	\N	\N	\N	\N	\N	[]	[{"price": "811", "ends_at": "organization", "price_id": "7", "starts_at": "difficult"}]
856	\N	\N	\N	\N	\N	[]	[{"price": "738", "ends_at": "case", "price_id": "134", "starts_at": "need"}]
1069	\N	\N	\N	\N	\N	[]	[{"price": "651", "ends_at": "up", "price_id": "285", "starts_at": "main"}]
1876	\N	\N	\N	\N	\N	[]	[{"price": "794", "ends_at": "civil", "price_id": "47", "starts_at": "organization"}]
1661	\N	\N	\N	\N	\N	[]	[{"price": "394", "ends_at": "specific", "price_id": "199", "starts_at": "gas"}]
706	\N	\N	\N	\N	\N	[]	[{"price": "471", "ends_at": "miss", "price_id": "990", "starts_at": "tree"}]
698	\N	\N	\N	\N	\N	[]	[{"price": "700", "ends_at": "big", "price_id": "158", "starts_at": "crime"}]
408	\N	\N	\N	\N	\N	[]	[{"price": "160", "ends_at": "owner", "price_id": "994", "starts_at": "trade"}]
975	\N	\N	\N	\N	\N	[]	[{"price": "964", "ends_at": "court", "price_id": "465", "starts_at": "reveal"}]
1106	\N	\N	\N	\N	\N	[]	[{"price": "886", "ends_at": "some", "price_id": "929", "starts_at": "seven"}]
1012	\N	\N	\N	\N	\N	[]	[{"price": "884", "ends_at": "fast", "price_id": "976", "starts_at": "finish"}]
1105	\N	\N	\N	\N	\N	[]	[{"price": "144", "ends_at": "back", "price_id": "581", "starts_at": "interest"}]
1787	\N	\N	\N	\N	\N	[]	[{"price": "242", "ends_at": "cultural", "price_id": "590", "starts_at": "nothing"}]
910	\N	\N	\N	\N	\N	[]	[{"price": "259", "ends_at": "whole", "price_id": "371", "starts_at": "American"}]
854	\N	\N	\N	\N	\N	[]	[{"price": "181", "ends_at": "heavy", "price_id": "50", "starts_at": "wide"}]
891	\N	\N	\N	\N	\N	[]	[{"price": "635", "ends_at": "surface", "price_id": "56", "starts_at": "yard"}]
1378	\N	\N	\N	\N	\N	[]	[{"price": "308", "ends_at": "man", "price_id": "49", "starts_at": "until"}]
978	\N	\N	\N	\N	\N	[]	[{"price": "7", "ends_at": "expect", "price_id": "560", "starts_at": "woman"}]
1114	\N	\N	\N	\N	\N	[]	[{"price": "469", "ends_at": "blue", "price_id": "956", "starts_at": "allow"}]
630	\N	\N	\N	\N	\N	[]	[{"price": "14", "ends_at": "marriage", "price_id": "442", "starts_at": "structure"}]
904	\N	\N	\N	\N	\N	[]	[{"price": "82", "ends_at": "source", "price_id": "185", "starts_at": "woman"}]
663	\N	\N	\N	\N	\N	[]	[{"price": "47", "ends_at": "major", "price_id": "805", "starts_at": "material"}]
1577	\N	\N	\N	\N	\N	[]	[{"price": "852", "ends_at": "special", "price_id": "490", "starts_at": "film"}]
2044	\N	\N	\N	\N	\N	[]	[{"price": "278", "ends_at": "prepare", "price_id": "802", "starts_at": "energy"}]
276	\N	\N	\N	\N	\N	[]	[{"price": "865", "ends_at": "issue", "price_id": "569", "starts_at": "security"}]
816	\N	\N	\N	\N	\N	[]	[{"price": "521", "ends_at": "important", "price_id": "924", "starts_at": "talk"}]
1217	\N	\N	\N	\N	\N	[]	[{"price": "319", "ends_at": "at", "price_id": "229", "starts_at": "public"}]
196	\N	\N	\N	\N	\N	[]	[{"price": "24", "ends_at": "director", "price_id": "492", "starts_at": "admit"}]
1716	\N	\N	\N	\N	\N	[]	[{"price": "592", "ends_at": "successful", "price_id": "795", "starts_at": "mind"}]
273	\N	\N	\N	\N	\N	[]	[{"price": "207", "ends_at": "behavior", "price_id": "449", "starts_at": "job"}]
111	\N	\N	\N	\N	\N	[]	[{"price": "152", "ends_at": "kid", "price_id": "839", "starts_at": "fire"}]
1128	\N	\N	\N	\N	\N	[]	[{"price": "180", "ends_at": "between", "price_id": "828", "starts_at": "experience"}]
472	\N	\N	\N	\N	\N	[]	[{"price": "848", "ends_at": "prevent", "price_id": "326", "starts_at": "American"}]
393	\N	\N	\N	\N	\N	[]	[{"price": "711", "ends_at": "others", "price_id": "512", "starts_at": "shake"}]
\.


--
-- Data for Name: temp_productimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_productimage (product_id, sku, product_name, base_price, is_active, quantity, productimage, pricehistory) FROM stdin;
1839	\N	\N	\N	\N	\N	[{"url": "represent", "alt_text": "see", "image_id": "406", "sort_order": "489"}]	[]
295	\N	\N	\N	\N	\N	[{"url": "myself", "alt_text": "evening", "image_id": "941", "sort_order": "955"}]	[]
344	\N	\N	\N	\N	\N	[{"url": "amount", "alt_text": "them", "image_id": "659", "sort_order": "221"}]	[]
978	\N	\N	\N	\N	\N	[{"url": "act", "alt_text": "six", "image_id": "827", "sort_order": "212"}, {"url": "identify", "alt_text": "view", "image_id": "831", "sort_order": "676"}]	[]
875	\N	\N	\N	\N	\N	[{"url": "fill", "alt_text": "officer", "image_id": "754", "sort_order": "843"}]	[]
557	\N	\N	\N	\N	\N	[{"url": "up", "alt_text": "participant", "image_id": "588", "sort_order": "868"}]	[]
1155	\N	\N	\N	\N	\N	[{"url": "skin", "alt_text": "source", "image_id": "499", "sort_order": "925"}]	[]
1808	\N	\N	\N	\N	\N	[{"url": "black", "alt_text": "dream", "image_id": "258", "sort_order": "900"}]	[]
1774	\N	\N	\N	\N	\N	[{"url": "cup", "alt_text": "student", "image_id": "92", "sort_order": "843"}]	[]
361	\N	\N	\N	\N	\N	[{"url": "water", "alt_text": "develop", "image_id": "796", "sort_order": "714"}]	[]
1236	\N	\N	\N	\N	\N	[{"url": "south", "alt_text": "cell", "image_id": "993", "sort_order": "729"}]	[]
1377	\N	\N	\N	\N	\N	[{"url": "data", "alt_text": "they", "image_id": "99", "sort_order": "583"}]	[]
1725	\N	\N	\N	\N	\N	[{"url": "level", "alt_text": "mother", "image_id": "985", "sort_order": "536"}]	[]
1906	\N	\N	\N	\N	\N	[{"url": "city", "alt_text": "line", "image_id": "330", "sort_order": "867"}]	[]
1861	\N	\N	\N	\N	\N	[{"url": "sign", "alt_text": "art", "image_id": "159", "sort_order": "537"}]	[]
2081	\N	\N	\N	\N	\N	[{"url": "education", "alt_text": "just", "image_id": "518", "sort_order": "234"}]	[]
1782	\N	\N	\N	\N	\N	[{"url": "professional", "alt_text": "nearly", "image_id": "213", "sort_order": "568"}]	[]
1547	\N	\N	\N	\N	\N	[{"url": "still", "alt_text": "become", "image_id": "132", "sort_order": "928"}]	[]
964	\N	\N	\N	\N	\N	[{"url": "end", "alt_text": "tend", "image_id": "405", "sort_order": "997"}]	[]
1655	\N	\N	\N	\N	\N	[{"url": "arrive", "alt_text": "view", "image_id": "38", "sort_order": "31"}]	[]
641	\N	\N	\N	\N	\N	[{"url": "start", "alt_text": "least", "image_id": "417", "sort_order": "971"}]	[]
1404	\N	\N	\N	\N	\N	[{"url": "sort", "alt_text": "out", "image_id": "872", "sort_order": "44"}]	[]
55	\N	\N	\N	\N	\N	[{"url": "challenge", "alt_text": "become", "image_id": "473", "sort_order": "593"}]	[]
2067	\N	\N	\N	\N	\N	[{"url": "call", "alt_text": "around", "image_id": "652", "sort_order": "517"}]	[]
1713	\N	\N	\N	\N	\N	[{"url": "majority", "alt_text": "impact", "image_id": "557", "sort_order": "409"}]	[]
156	\N	\N	\N	\N	\N	[{"url": "practice", "alt_text": "why", "image_id": "694", "sort_order": "769"}]	[]
1554	\N	\N	\N	\N	\N	[{"url": "try", "alt_text": "rest", "image_id": "260", "sort_order": "499"}]	[]
728	\N	\N	\N	\N	\N	[{"url": "analysis", "alt_text": "factor", "image_id": "21", "sort_order": "964"}]	[]
1013	\N	\N	\N	\N	\N	[{"url": "rather", "alt_text": "skin", "image_id": "324", "sort_order": "67"}]	[]
1875	\N	\N	\N	\N	\N	[{"url": "forget", "alt_text": "born", "image_id": "56", "sort_order": "63"}]	[]
1471	\N	\N	\N	\N	\N	[{"url": "despite", "alt_text": "month", "image_id": "330", "sort_order": "892"}]	[]
385	\N	\N	\N	\N	\N	[{"url": "establish", "alt_text": "including", "image_id": "143", "sort_order": "439"}]	[]
1358	\N	\N	\N	\N	\N	[{"url": "mouth", "alt_text": "simply", "image_id": "892", "sort_order": "291"}]	[]
1596	\N	\N	\N	\N	\N	[{"url": "still", "alt_text": "student", "image_id": "5", "sort_order": "231"}]	[]
372	\N	\N	\N	\N	\N	[{"url": "think", "alt_text": "result", "image_id": "272", "sort_order": "415"}]	[]
1732	\N	\N	\N	\N	\N	[{"url": "term", "alt_text": "but", "image_id": "482", "sort_order": "416"}]	[]
298	\N	\N	\N	\N	\N	[{"url": "rule", "alt_text": "sit", "image_id": "798", "sort_order": "609"}]	[]
210	\N	\N	\N	\N	\N	[{"url": "million", "alt_text": "production", "image_id": "793", "sort_order": "271"}]	[]
570	\N	\N	\N	\N	\N	[{"url": "visit", "alt_text": "suddenly", "image_id": "478", "sort_order": "460"}]	[]
2064	\N	\N	\N	\N	\N	[{"url": "thus", "alt_text": "camera", "image_id": "949", "sort_order": "541"}]	[]
1945	\N	\N	\N	\N	\N	[{"url": "example", "alt_text": "significant", "image_id": "768", "sort_order": "815"}]	[]
393	\N	\N	\N	\N	\N	[{"url": "avoid", "alt_text": "thing", "image_id": "611", "sort_order": "375"}]	[]
1992	\N	\N	\N	\N	\N	[{"url": "increase", "alt_text": "night", "image_id": "175", "sort_order": "973"}]	[]
1115	\N	\N	\N	\N	\N	[{"url": "month", "alt_text": "sound", "image_id": "673", "sort_order": "580"}]	[]
2073	\N	\N	\N	\N	\N	[{"url": "hear", "alt_text": "day", "image_id": "566", "sort_order": "363"}]	[]
595	\N	\N	\N	\N	\N	[{"url": "raise", "alt_text": "age", "image_id": "903", "sort_order": "221"}, {"url": "process", "alt_text": "ball", "image_id": "578", "sort_order": "194"}]	[]
855	\N	\N	\N	\N	\N	[{"url": "job", "alt_text": "discuss", "image_id": "383", "sort_order": "745"}]	[]
665	\N	\N	\N	\N	\N	[{"url": "concern", "alt_text": "picture", "image_id": "667", "sort_order": "725"}]	[]
2038	\N	\N	\N	\N	\N	[{"url": "use", "alt_text": "north", "image_id": "67", "sort_order": "334"}]	[]
798	\N	\N	\N	\N	\N	[{"url": "it", "alt_text": "owner", "image_id": "94", "sort_order": "532"}]	[]
1897	\N	\N	\N	\N	\N	[{"url": "store", "alt_text": "course", "image_id": "235", "sort_order": "719"}]	[]
772	\N	\N	\N	\N	\N	[{"url": "build", "alt_text": "clear", "image_id": "341", "sort_order": "133"}]	[]
1397	\N	\N	\N	\N	\N	[{"url": "what", "alt_text": "standard", "image_id": "360", "sort_order": "241"}]	[]
1296	\N	\N	\N	\N	\N	[{"url": "moment", "alt_text": "lawyer", "image_id": "252", "sort_order": "522"}]	[]
101	\N	\N	\N	\N	\N	[{"url": "family", "alt_text": "face", "image_id": "595", "sort_order": "38"}]	[]
560	\N	\N	\N	\N	\N	[{"url": "foreign", "alt_text": "have", "image_id": "267", "sort_order": "782"}]	[]
1648	\N	\N	\N	\N	\N	[{"url": "school", "alt_text": "PM", "image_id": "511", "sort_order": "120"}]	[]
293	\N	\N	\N	\N	\N	[{"url": "along", "alt_text": "read", "image_id": "688", "sort_order": "422"}]	[]
1647	\N	\N	\N	\N	\N	[{"url": "hospital", "alt_text": "fine", "image_id": "100", "sort_order": "859"}]	[]
453	\N	\N	\N	\N	\N	[{"url": "pull", "alt_text": "easy", "image_id": "936", "sort_order": "353"}]	[]
299	\N	\N	\N	\N	\N	[{"url": "mind", "alt_text": "nation", "image_id": "377", "sort_order": "550"}]	[]
1283	\N	\N	\N	\N	\N	[{"url": "board", "alt_text": "race", "image_id": "206", "sort_order": "439"}]	[]
1468	\N	\N	\N	\N	\N	[{"url": "suggest", "alt_text": "voice", "image_id": "174", "sort_order": "581"}]	[]
1411	\N	\N	\N	\N	\N	[{"url": "old", "alt_text": "member", "image_id": "72", "sort_order": "576"}]	[]
2024	\N	\N	\N	\N	\N	[{"url": "later", "alt_text": "individual", "image_id": "289", "sort_order": "482"}, {"url": "cost", "alt_text": "window", "image_id": "371", "sort_order": "257"}]	[]
1409	\N	\N	\N	\N	\N	[{"url": "smile", "alt_text": "white", "image_id": "207", "sort_order": "338"}]	[]
1476	\N	\N	\N	\N	\N	[{"url": "music", "alt_text": "office", "image_id": "848", "sort_order": "792"}]	[]
1412	\N	\N	\N	\N	\N	[{"url": "break", "alt_text": "admit", "image_id": "175", "sort_order": "906"}]	[]
924	\N	\N	\N	\N	\N	[{"url": "political", "alt_text": "at", "image_id": "227", "sort_order": "762"}]	[]
1054	\N	\N	\N	\N	\N	[{"url": "certainly", "alt_text": "me", "image_id": "341", "sort_order": "681"}]	[]
510	\N	\N	\N	\N	\N	[{"url": "development", "alt_text": "through", "image_id": "128", "sort_order": "143"}]	[]
324	\N	\N	\N	\N	\N	[{"url": "cultural", "alt_text": "responsibility", "image_id": "135", "sort_order": "573"}]	[]
75	\N	\N	\N	\N	\N	[{"url": "indeed", "alt_text": "little", "image_id": "52", "sort_order": "392"}]	[]
976	\N	\N	\N	\N	\N	[{"url": "price", "alt_text": "local", "image_id": "133", "sort_order": "348"}]	[]
236	\N	\N	\N	\N	\N	[{"url": "full", "alt_text": "reduce", "image_id": "476", "sort_order": "99"}]	[]
565	\N	\N	\N	\N	\N	[{"url": "tonight", "alt_text": "second", "image_id": "399", "sort_order": "150"}]	[]
1453	\N	\N	\N	\N	\N	[{"url": "important", "alt_text": "national", "image_id": "89", "sort_order": "765"}]	[]
947	\N	\N	\N	\N	\N	[{"url": "room", "alt_text": "space", "image_id": "88", "sort_order": "522"}]	[]
1266	\N	\N	\N	\N	\N	[{"url": "give", "alt_text": "owner", "image_id": "304", "sort_order": "155"}]	[]
1568	\N	\N	\N	\N	\N	[{"url": "firm", "alt_text": "dog", "image_id": "998", "sort_order": "910"}]	[]
812	\N	\N	\N	\N	\N	[{"url": "blood", "alt_text": "clearly", "image_id": "593", "sort_order": "454"}]	[]
751	\N	\N	\N	\N	\N	[{"url": "good", "alt_text": "either", "image_id": "522", "sort_order": "785"}]	[]
551	\N	\N	\N	\N	\N	[{"url": "value", "alt_text": "like", "image_id": "935", "sort_order": "970"}]	[]
1192	\N	\N	\N	\N	\N	[{"url": "although", "alt_text": "worry", "image_id": "538", "sort_order": "791"}]	[]
1874	\N	\N	\N	\N	\N	[{"url": "watch", "alt_text": "carry", "image_id": "961", "sort_order": "709"}]	[]
2000	\N	\N	\N	\N	\N	[{"url": "house", "alt_text": "quickly", "image_id": "118", "sort_order": "995"}]	[]
1174	\N	\N	\N	\N	\N	[{"url": "investment", "alt_text": "price", "image_id": "18", "sort_order": "601"}]	[]
601	\N	\N	\N	\N	\N	[{"url": "approach", "alt_text": "song", "image_id": "809", "sort_order": "701"}]	[]
828	\N	\N	\N	\N	\N	[{"url": "almost", "alt_text": "put", "image_id": "313", "sort_order": "647"}]	[]
588	\N	\N	\N	\N	\N	[{"url": "measure", "alt_text": "federal", "image_id": "427", "sort_order": "945"}]	[]
1107	\N	\N	\N	\N	\N	[{"url": "put", "alt_text": "standard", "image_id": "837", "sort_order": "554"}]	[]
1272	\N	\N	\N	\N	\N	[{"url": "adult", "alt_text": "recently", "image_id": "737", "sort_order": "938"}]	[]
1121	\N	\N	\N	\N	\N	[{"url": "wear", "alt_text": "room", "image_id": "840", "sort_order": "48"}]	[]
1171	\N	\N	\N	\N	\N	[{"url": "gun", "alt_text": "believe", "image_id": "178", "sort_order": "748"}]	[]
896	\N	\N	\N	\N	\N	[{"url": "five", "alt_text": "true", "image_id": "652", "sort_order": "369"}]	[]
698	\N	\N	\N	\N	\N	[{"url": "idea", "alt_text": "talk", "image_id": "679", "sort_order": "728"}]	[]
1765	\N	\N	\N	\N	\N	[{"url": "I", "alt_text": "use", "image_id": "114", "sort_order": "612"}]	[]
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
    ADD CONSTRAINT relation_11_pkey PRIMARY KEY (accessories_id);


--
-- Name: relation_12 relation_12_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_12
    ADD CONSTRAINT relation_12_pkey PRIMARY KEY (apparel_id);


--
-- Name: relation_13 relation_13_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_13
    ADD CONSTRAINT relation_13_pkey PRIMARY KEY (menclothing_id);


--
-- Name: relation_14 relation_14_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_14
    ADD CONSTRAINT relation_14_pkey PRIMARY KEY (womenclothing_id);


--
-- Name: relation_15 relation_15_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_15
    ADD CONSTRAINT relation_15_pkey PRIMARY KEY (media_id);


--
-- Name: relation_16 relation_16_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_16
    ADD CONSTRAINT relation_16_pkey PRIMARY KEY (software_id);


--
-- Name: relation_17 relation_17_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_17
    ADD CONSTRAINT relation_17_pkey PRIMARY KEY (user_id);


--
-- Name: relation_18 relation_18_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_18
    ADD CONSTRAINT relation_18_pkey PRIMARY KEY (user_id, mv_user);


--
-- Name: relation_19 relation_19_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_19
    ADD CONSTRAINT relation_19_pkey PRIMARY KEY (user_id, contact_no);


--
-- Name: relation_1 relation_1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_1
    ADD CONSTRAINT relation_1_pkey PRIMARY KEY (product_id);


--
-- Name: relation_20 relation_20_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_20
    ADD CONSTRAINT relation_20_pkey PRIMARY KEY (primecustomer_id);


--
-- Name: relation_21 relation_21_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_21
    ADD CONSTRAINT relation_21_pkey PRIMARY KEY (primecustomer_id, subscription_addons);


--
-- Name: relation_22 relation_22_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_22
    ADD CONSTRAINT relation_22_pkey PRIMARY KEY (corporateemployee_id);


--
-- Name: relation_23 relation_23_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_23
    ADD CONSTRAINT relation_23_pkey PRIMARY KEY (supportagent_id);


--
-- Name: relation_24 relation_24_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_24
    ADD CONSTRAINT relation_24_pkey PRIMARY KEY (fulfillmentassociate_id);


--
-- Name: relation_25 relation_25_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_25
    ADD CONSTRAINT relation_25_pkey PRIMARY KEY (categorymanager_id);


--
-- Name: relation_26 relation_26_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_26
    ADD CONSTRAINT relation_26_pkey PRIMARY KEY (product_id, variant_id);


--
-- Name: relation_27 relation_27_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_27
    ADD CONSTRAINT relation_27_pkey PRIMARY KEY (tag_id);


--
-- Name: relation_28 relation_28_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_28
    ADD CONSTRAINT relation_28_pkey PRIMARY KEY (user_id, address_id);


--
-- Name: relation_29 relation_29_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_29
    ADD CONSTRAINT relation_29_pkey PRIMARY KEY (user_id, payment_method_id);


--
-- Name: relation_2 relation_2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_2
    ADD CONSTRAINT relation_2_pkey PRIMARY KEY (product_id, mv_attributes);


--
-- Name: relation_30 relation_30_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_30
    ADD CONSTRAINT relation_30_pkey PRIMARY KEY (user_id);


--
-- Name: relation_31 relation_31_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_31
    ADD CONSTRAINT relation_31_pkey PRIMARY KEY (user_id, wishlist_id);


--
-- Name: relation_32 relation_32_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_32
    ADD CONSTRAINT relation_32_pkey PRIMARY KEY (user_id, review_id);


--
-- Name: relation_33 relation_33_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_33
    ADD CONSTRAINT relation_33_pkey PRIMARY KEY (user_id, session_id);


--
-- Name: relation_34 relation_34_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_34
    ADD CONSTRAINT relation_34_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_35 relation_35_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_35
    ADD CONSTRAINT relation_35_pkey PRIMARY KEY (custorder_id, shipment_id);


--
-- Name: relation_36 relation_36_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_36
    ADD CONSTRAINT relation_36_pkey PRIMARY KEY (promotion_id);


--
-- Name: relation_37 relation_37_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_37
    ADD CONSTRAINT relation_37_pkey PRIMARY KEY (promotion_id, coupon_code);


--
-- Name: relation_38 relation_38_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_38
    ADD CONSTRAINT relation_38_pkey PRIMARY KEY (warehouse_id);


--
-- Name: relation_39 relation_39_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_39
    ADD CONSTRAINT relation_39_pkey PRIMARY KEY (warehouse_id, bin_id);


--
-- Name: relation_3 relation_3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_3
    ADD CONSTRAINT relation_3_pkey PRIMARY KEY (physicalproduct_id);


--
-- Name: relation_40 relation_40_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_40
    ADD CONSTRAINT relation_40_pkey PRIMARY KEY (supplier_id);


--
-- Name: relation_41 relation_41_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_41
    ADD CONSTRAINT relation_41_pkey PRIMARY KEY (supplier_id, contact_id);


--
-- Name: relation_42 relation_42_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_42
    ADD CONSTRAINT relation_42_pkey PRIMARY KEY (purchaseorder_id);


--
-- Name: relation_43 relation_43_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_43
    ADD CONSTRAINT relation_43_pkey PRIMARY KEY (courierpartner_id);


--
-- Name: relation_44 relation_44_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_44
    ADD CONSTRAINT relation_44_pkey PRIMARY KEY (product_id);


--
-- Name: relation_45 relation_45_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_45
    ADD CONSTRAINT relation_45_pkey PRIMARY KEY (product_id, tag_id);


--
-- Name: relation_46 relation_46_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_46
    ADD CONSTRAINT relation_46_pkey PRIMARY KEY (product_id, bought_together_product_product_id);


--
-- Name: relation_47 relation_47_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_47
    ADD CONSTRAINT relation_47_pkey PRIMARY KEY (customer_id, product_id);


--
-- Name: relation_48 relation_48_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_48
    ADD CONSTRAINT relation_48_pkey PRIMARY KEY (customer_id, wishlist_id, product_id);


--
-- Name: relation_49 relation_49_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_49
    ADD CONSTRAINT relation_49_pkey PRIMARY KEY (customer_id, review_id);


--
-- Name: relation_4 relation_4_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_4
    ADD CONSTRAINT relation_4_pkey PRIMARY KEY (digitalproduct_id);


--
-- Name: relation_50 relation_50_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_50
    ADD CONSTRAINT relation_50_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_51 relation_51_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_51
    ADD CONSTRAINT relation_51_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_52 relation_52_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_52
    ADD CONSTRAINT relation_52_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_53 relation_53_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_53
    ADD CONSTRAINT relation_53_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_54 relation_54_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_54
    ADD CONSTRAINT relation_54_pkey PRIMARY KEY (promotion_id, coupon_code);


--
-- Name: relation_55 relation_55_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_55
    ADD CONSTRAINT relation_55_pkey PRIMARY KEY (product_id, warehouse_id, bin_id);


--
-- Name: relation_56 relation_56_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_56
    ADD CONSTRAINT relation_56_pkey PRIMARY KEY (supplier_id, product_id);


--
-- Name: relation_57 relation_57_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_57
    ADD CONSTRAINT relation_57_pkey PRIMARY KEY (purchaseorder_id);


--
-- Name: relation_58 relation_58_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_58
    ADD CONSTRAINT relation_58_pkey PRIMARY KEY (purchaseorder_id, product_id);


--
-- Name: relation_59 relation_59_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_59
    ADD CONSTRAINT relation_59_pkey PRIMARY KEY (custorder_id, shipment_id);


--
-- Name: relation_5 relation_5_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_5
    ADD CONSTRAINT relation_5_pkey PRIMARY KEY (electronics_id);


--
-- Name: relation_60 relation_60_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_60
    ADD CONSTRAINT relation_60_pkey PRIMARY KEY (phone_id, bundle_phone_phone_id);


--
-- Name: relation_61 relation_61_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_61
    ADD CONSTRAINT relation_61_pkey PRIMARY KEY (smartwatch_id);


--
-- Name: relation_62 relation_62_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_62
    ADD CONSTRAINT relation_62_pkey PRIMARY KEY (phone_id);


--
-- Name: relation_6 relation_6_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_6
    ADD CONSTRAINT relation_6_pkey PRIMARY KEY (desktop_id);


--
-- Name: relation_7 relation_7_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_7
    ADD CONSTRAINT relation_7_pkey PRIMARY KEY (laptop_id);


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
-- Name: idx_temp_pricehistory; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_pricehistory ON public.temp_pricehistory USING btree (product_id);


--
-- Name: idx_temp_productimage; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_productimage ON public.temp_productimage USING btree (product_id);


--
-- PostgreSQL database dump complete
--

