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
    delivery_type character varying(255),
    role character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_1 OWNER TO postgres;

--
-- Name: relation_10; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_10 (
    womenclothing_id integer NOT NULL,
    fit_type_women character varying(255)
);


ALTER TABLE public.relation_10 OWNER TO postgres;

--
-- Name: relation_11; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_11 (
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


ALTER TABLE public.relation_11 OWNER TO postgres;

--
-- Name: relation_12; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_12 (
    media_id integer NOT NULL,
    format character varying(255)
);


ALTER TABLE public.relation_12 OWNER TO postgres;

--
-- Name: relation_13; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_13 (
    software_id integer NOT NULL,
    license_type character varying(255)
);


ALTER TABLE public.relation_13 OWNER TO postgres;

--
-- Name: relation_14; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_14 (
    user_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    browsingsession jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_14 OWNER TO postgres;

--
-- Name: relation_15; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_15 (
    user_id integer NOT NULL,
    mv_user character varying(255) NOT NULL
);


ALTER TABLE public.relation_15 OWNER TO postgres;

--
-- Name: relation_16; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_16 (
    customer_id integer NOT NULL,
    loyalty_tier character varying(255),
    renewal_date character varying(255),
    role character varying(255),
    company_name character varying(255)
);


ALTER TABLE public.relation_16 OWNER TO postgres;

--
-- Name: relation_17; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_17 (
    customer_id integer NOT NULL,
    contact_no character varying(255) NOT NULL
);


ALTER TABLE public.relation_17 OWNER TO postgres;

--
-- Name: relation_18; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_18 (
    customer_id integer NOT NULL,
    subscription_addons character varying(255) NOT NULL
);


ALTER TABLE public.relation_18 OWNER TO postgres;

--
-- Name: relation_19; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_19 (
    employee_id integer NOT NULL,
    employee_no character varying(255),
    office_site character varying(255),
    role character varying(255),
    level character varying(255)
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
    supportagent_id integer NOT NULL,
    queue character varying(255)
);


ALTER TABLE public.relation_20 OWNER TO postgres;

--
-- Name: relation_21; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_21 (
    fulfillmentassociate_id integer NOT NULL,
    shift character varying(255)
);


ALTER TABLE public.relation_21 OWNER TO postgres;

--
-- Name: relation_22; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_22 (
    categorymanager_id integer NOT NULL,
    department character varying(255)
);


ALTER TABLE public.relation_22 OWNER TO postgres;

--
-- Name: relation_23; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_23 (
    tag_id integer NOT NULL,
    tag_name character varying(255)
);


ALTER TABLE public.relation_23 OWNER TO postgres;

--
-- Name: relation_24; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_24 (
    customer_id integer NOT NULL,
    address_id integer NOT NULL,
    kind character varying(255),
    line1 character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    postal_code character varying(255)
);


ALTER TABLE public.relation_24 OWNER TO postgres;

--
-- Name: relation_25; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_25 (
    customer_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    brand character varying(255),
    last4 character varying(255),
    exp_month integer,
    exp_year integer,
    is_default character varying(255)
);


ALTER TABLE public.relation_25 OWNER TO postgres;

--
-- Name: relation_26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_26 (
    customer_id integer NOT NULL,
    updated_at character varying(255)
);


ALTER TABLE public.relation_26 OWNER TO postgres;

--
-- Name: relation_27; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_27 (
    customer_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    wishlist_name character varying(255)
);


ALTER TABLE public.relation_27 OWNER TO postgres;

--
-- Name: relation_28; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_28 (
    customer_id integer NOT NULL,
    review_id integer NOT NULL,
    rating integer,
    title character varying(255),
    body character varying(255),
    created_at character varying(255)
);


ALTER TABLE public.relation_28 OWNER TO postgres;

--
-- Name: relation_29; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_29 (
    custorder_id integer NOT NULL,
    placed_at character varying(255),
    status character varying(255)
);


ALTER TABLE public.relation_29 OWNER TO postgres;

--
-- Name: relation_3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_3 (
    physicalproduct_id integer NOT NULL,
    dimensions character varying(255),
    energy_rating character varying(255),
    role character varying(255),
    warranty_years integer
);


ALTER TABLE public.relation_3 OWNER TO postgres;

--
-- Name: relation_30; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_30 (
    custorder_id integer NOT NULL,
    shipment_id integer NOT NULL,
    carrier character varying(255),
    tracking_no character varying(255),
    shipped_at character varying(255),
    delivered_at character varying(255)
);


ALTER TABLE public.relation_30 OWNER TO postgres;

--
-- Name: relation_31; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_31 (
    promotion_id integer NOT NULL,
    promo_name character varying(255),
    starts_at character varying(255),
    ends_at character varying(255),
    discount_type character varying(255),
    discount_value character varying(255)
);


ALTER TABLE public.relation_31 OWNER TO postgres;

--
-- Name: relation_32; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_32 (
    promotion_id integer NOT NULL,
    coupon_code integer NOT NULL,
    max_uses integer,
    per_user_limit integer
);


ALTER TABLE public.relation_32 OWNER TO postgres;

--
-- Name: relation_33; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_33 (
    warehouse_id integer NOT NULL,
    warehouse_name character varying(255),
    region character varying(255)
);


ALTER TABLE public.relation_33 OWNER TO postgres;

--
-- Name: relation_34; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_34 (
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL,
    code character varying(255)
);


ALTER TABLE public.relation_34 OWNER TO postgres;

--
-- Name: relation_35; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_35 (
    supplier_id integer NOT NULL,
    supplier_name character varying(255)
);


ALTER TABLE public.relation_35 OWNER TO postgres;

--
-- Name: relation_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_36 (
    supplier_id integer NOT NULL,
    contact_id integer NOT NULL,
    email character varying(255),
    phone character varying(255)
);


ALTER TABLE public.relation_36 OWNER TO postgres;

--
-- Name: relation_37; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_37 (
    purchaseorder_id integer NOT NULL,
    created_at character varying(255),
    status character varying(255)
);


ALTER TABLE public.relation_37 OWNER TO postgres;

--
-- Name: relation_38; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_38 (
    courierpartner_id integer NOT NULL,
    carrier_code character varying(255),
    webhook_url character varying(255)
);


ALTER TABLE public.relation_38 OWNER TO postgres;

--
-- Name: relation_39; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_39 (
    product_id integer NOT NULL,
    category_products_category_id integer
);


ALTER TABLE public.relation_39 OWNER TO postgres;

--
-- Name: relation_4; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_4 (
    electronics_id integer NOT NULL,
    warranty_months integer,
    screen_size_in integer,
    role character varying(255),
    band_size character varying(255),
    sensor_mp integer,
    accessory_type character varying(255)
);


ALTER TABLE public.relation_4 OWNER TO postgres;

--
-- Name: relation_40; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_40 (
    product_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.relation_40 OWNER TO postgres;

--
-- Name: relation_41; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_41 (
    product_id integer NOT NULL,
    bought_together_product_product_id integer NOT NULL
);


ALTER TABLE public.relation_41 OWNER TO postgres;

--
-- Name: relation_42; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_42 (
    customer_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_42 OWNER TO postgres;

--
-- Name: relation_43; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_43 (
    customer_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_43 OWNER TO postgres;

--
-- Name: relation_44; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_44 (
    customer_id integer NOT NULL,
    review_id integer NOT NULL,
    reviews_product_id integer
);


ALTER TABLE public.relation_44 OWNER TO postgres;

--
-- Name: relation_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_45 (
    custorder_id integer NOT NULL,
    customer_orders_customer_id integer
);


ALTER TABLE public.relation_45 OWNER TO postgres;

--
-- Name: relation_46; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_46 (
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_46 OWNER TO postgres;

--
-- Name: relation_47; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_47 (
    custorder_id integer NOT NULL,
    payment_order_customer_id integer,
    payment_order_payment_method_id integer
);


ALTER TABLE public.relation_47 OWNER TO postgres;

--
-- Name: relation_48; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_48 (
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_48 OWNER TO postgres;

--
-- Name: relation_49; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_49 (
    promotion_id integer NOT NULL,
    coupon_code integer NOT NULL,
    order_coupons_custorder_id integer
);


ALTER TABLE public.relation_49 OWNER TO postgres;

--
-- Name: relation_5; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_5 (
    computer_id integer NOT NULL,
    cpu character varying(255),
    ram_gb integer,
    battery_wh integer,
    role character varying(255)
);


ALTER TABLE public.relation_5 OWNER TO postgres;

--
-- Name: relation_50; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_50 (
    product_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL
);


ALTER TABLE public.relation_50 OWNER TO postgres;

--
-- Name: relation_51; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_51 (
    supplier_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_51 OWNER TO postgres;

--
-- Name: relation_52; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_52 (
    purchaseorder_id integer NOT NULL,
    supplier_pos_supplier_id integer
);


ALTER TABLE public.relation_52 OWNER TO postgres;

--
-- Name: relation_53; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_53 (
    purchaseorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_53 OWNER TO postgres;

--
-- Name: relation_54; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_54 (
    custorder_id integer NOT NULL,
    shipment_id integer NOT NULL,
    courier_shipments_courierpartner_id integer
);


ALTER TABLE public.relation_54 OWNER TO postgres;

--
-- Name: relation_55; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_55 (
    phone_id integer NOT NULL,
    bundle_phone_phone_id integer NOT NULL
);


ALTER TABLE public.relation_55 OWNER TO postgres;

--
-- Name: relation_56; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_56 (
    smartwatch_id integer NOT NULL,
    bundled_phone_smart_watch_phone_id integer
);


ALTER TABLE public.relation_56 OWNER TO postgres;

--
-- Name: relation_57; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_57 (
    phone_id integer NOT NULL,
    single_bundle_phone_bundled_phone_phone_id integer
);


ALTER TABLE public.relation_57 OWNER TO postgres;

--
-- Name: relation_6; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_6 (
    desktop_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    warranty_months integer,
    cpu character varying(255),
    ram_gb integer,
    form_factor character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_6 OWNER TO postgres;

--
-- Name: relation_7; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_7 (
    phone_id integer NOT NULL,
    carrier_lock character varying(255)
);


ALTER TABLE public.relation_7 OWNER TO postgres;

--
-- Name: relation_8; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_8 (
    apparel_id integer NOT NULL,
    size_system character varying(255)
);


ALTER TABLE public.relation_8 OWNER TO postgres;

--
-- Name: relation_9; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_9 (
    clothing_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    size_system character varying(255),
    material character varying(255),
    fit_type_men character varying(255),
    role character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_9 OWNER TO postgres;

--
-- Name: temp_browsingsession; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_browsingsession (
    user_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
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
    delivery_type character varying(255),
    role character varying(255),
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
    delivery_type character varying(255),
    role character varying(255),
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
    delivery_type character varying(255),
    role character varying(255),
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
2	tables	[["relation_0", [["category_id", "INTEGER", "category_id", "category"], ["category_name", "VARCHAR(255)", "category.category_name", "category"], ["parent", "INTEGER", "category.parent", "category"]], false, ["category_id"]], ["relation_1", [["product_id", "INTEGER", "product_id", "product"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["delivery_type", "VARCHAR(255)", "digitalproduct.delivery_type", "digitalproduct"], ["role", "VARCHAR(255)", "role", "digitalproduct"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["product_id"]], ["relation_2", [["product_id", "INTEGER", "product_id", "product.mv_attributes"], ["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "product.mv_attributes"]], false, ["product_id", "mv_attributes"]], ["relation_3", [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["energy_rating", "VARCHAR(255)", "appliance.energy_rating", "appliance"], ["role", "VARCHAR(255)", "role", "appliance"], ["warranty_years", "INTEGER", "kitchenappliance.warranty_years", "kitchenappliance"]], false, ["physicalproduct_id"]], ["relation_4", [["electronics_id", "INTEGER", "electronics_id", "electronics"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["screen_size_in", "INTEGER", "tablet.screen_size_in", "tablet"], ["role", "VARCHAR(255)", "role", "tablet"], ["band_size", "VARCHAR(255)", "smartwatch.band_size", "smartwatch"], ["sensor_mp", "INTEGER", "camera.sensor_mp", "camera"], ["accessory_type", "VARCHAR(255)", "accessories.accessory_type", "accessories"]], false, ["electronics_id"]], ["relation_5", [["computer_id", "INTEGER", "computer_id", "computer"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["battery_wh", "INTEGER", "laptop.battery_wh", "laptop"], ["role", "VARCHAR(255)", "role", "laptop"]], false, ["computer_id"]], ["relation_6", [["desktop_id", "INTEGER", "desktop_id", "desktop"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["form_factor", "VARCHAR(255)", "desktop.form_factor", "desktop"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["desktop_id"]], ["relation_7", [["phone_id", "INTEGER", "phone_id", "phone"], ["carrier_lock", "VARCHAR(255)", "phone.carrier_lock", "phone"]], false, ["phone_id"]], ["relation_8", [["apparel_id", "INTEGER", "apparel_id", "apparel"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"]], false, ["apparel_id"]], ["relation_9", [["clothing_id", "INTEGER", "clothing_id", "clothing"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["material", "VARCHAR(255)", "clothing.material", "clothing"], ["fit_type_men", "VARCHAR(255)", "menclothing.fit_type_men", "menclothing"], ["role", "VARCHAR(255)", "role", "menclothing"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["clothing_id"]], ["relation_10", [["womenclothing_id", "INTEGER", "womenclothing_id", "womenclothing"], ["fit_type_women", "VARCHAR(255)", "womenclothing.fit_type_women", "womenclothing"]], false, ["womenclothing_id"]], ["relation_11", [["footwear_id", "INTEGER", "footwear_id", "footwear"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["sole_material", "VARCHAR(255)", "footwear.sole_material", "footwear"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"]], false, ["footwear_id"]], ["relation_12", [["media_id", "INTEGER", "media_id", "media"], ["format", "VARCHAR(255)", "media.format", "media"]], false, ["media_id"]], ["relation_13", [["software_id", "INTEGER", "software_id", "software"], ["license_type", "VARCHAR(255)", "software.license_type", "software"]], false, ["software_id"]], ["relation_14", [["user_id", "INTEGER", "user_id", "user"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["browsingsession", "JSONB DEFAULT '[]'::jsonb", "browsingsession", "browsingsession"]], false, ["user_id"]], ["relation_15", [["user_id", "INTEGER", "user_id", "user.mv_user"], ["mv_user", "VARCHAR(255)", "user.mv_user", "user.mv_user"]], false, ["user_id", "mv_user"]], ["relation_16", [["customer_id", "INTEGER", "customer_id", "customer"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["renewal_date", "VARCHAR(255)", "primecustomer.renewal_date", "primecustomer"], ["role", "VARCHAR(255)", "role", "primecustomer"], ["company_name", "VARCHAR(255)", "businesscustomer.company_name", "businesscustomer"]], false, ["customer_id"]], ["relation_17", [["customer_id", "INTEGER", "customer_id", "customer.contact_no"], ["contact_no", "VARCHAR(255)", "customer.contact_no", "customer.contact_no"]], false, ["customer_id", "contact_no"]], ["relation_18", [["customer_id", "INTEGER", "customer_id", "primecustomer.subscription_addons"], ["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "primecustomer.subscription_addons"]], false, ["customer_id", "subscription_addons"]], ["relation_19", [["employee_id", "INTEGER", "employee_id", "employee"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["office_site", "VARCHAR(255)", "corporateemployee.office_site", "corporateemployee"], ["role", "VARCHAR(255)", "role", "corporateemployee"], ["level", "VARCHAR(255)", "engineer.level", "engineer"]], false, ["employee_id"]], ["relation_20", [["supportagent_id", "INTEGER", "supportagent_id", "supportagent"], ["queue", "VARCHAR(255)", "supportagent.queue", "supportagent"]], false, ["supportagent_id"]], ["relation_21", [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate"], ["shift", "VARCHAR(255)", "fulfillmentassociate.shift", "fulfillmentassociate"]], false, ["fulfillmentassociate_id"]], ["relation_22", [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager"], ["department", "VARCHAR(255)", "categorymanager.department", "categorymanager"]], false, ["categorymanager_id"]], ["relation_23", [["tag_id", "INTEGER", "tag_id", "tag"], ["tag_name", "VARCHAR(255)", "tag.tag_name", "tag"]], false, ["tag_id"]], ["relation_24", [["customer_id", "INTEGER", "customer_id", "address"], ["address_id", "INTEGER", "address.address_id", "address"], ["kind", "VARCHAR(255)", "address.kind", "address"], ["line1", "VARCHAR(255)", "address.line1", "address"], ["city", "VARCHAR(255)", "address.city", "address"], ["state", "VARCHAR(255)", "address.state", "address"], ["country", "VARCHAR(255)", "address.country", "address"], ["postal_code", "VARCHAR(255)", "address.postal_code", "address"]], false, ["customer_id", "address_id"]], ["relation_25", [["customer_id", "INTEGER", "customer_id", "paymentmethod"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "paymentmethod"], ["brand", "VARCHAR(255)", "paymentmethod.brand", "paymentmethod"], ["last4", "VARCHAR(255)", "paymentmethod.last4", "paymentmethod"], ["exp_month", "INTEGER", "paymentmethod.exp_month", "paymentmethod"], ["exp_year", "INTEGER", "paymentmethod.exp_year", "paymentmethod"], ["is_default", "VARCHAR(255)", "paymentmethod.is_default", "paymentmethod"]], false, ["customer_id", "payment_method_id"]], ["relation_26", [["customer_id", "INTEGER", "customer_id", "cart"], ["updated_at", "VARCHAR(255)", "cart.updated_at", "cart"]], false, ["customer_id"]], ["relation_27", [["customer_id", "INTEGER", "customer_id", "wishlist"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist"], ["wishlist_name", "VARCHAR(255)", "wishlist.wishlist_name", "wishlist"]], false, ["customer_id", "wishlist_id"]], ["relation_28", [["customer_id", "INTEGER", "customer_id", "review"], ["review_id", "INTEGER", "review.review_id", "review"], ["rating", "INTEGER", "review.rating", "review"], ["title", "VARCHAR(255)", "review.title", "review"], ["body", "VARCHAR(255)", "review.body", "review"], ["created_at", "VARCHAR(255)", "review.created_at", "review"]], false, ["customer_id", "review_id"]], ["relation_29", [["custorder_id", "INTEGER", "custorder_id", "custorder"], ["placed_at", "VARCHAR(255)", "custorder.placed_at", "custorder"], ["status", "VARCHAR(255)", "custorder.status", "custorder"]], false, ["custorder_id"]], ["relation_30", [["custorder_id", "INTEGER", "custorder_id", "shipment"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment"], ["carrier", "VARCHAR(255)", "shipment.carrier", "shipment"], ["tracking_no", "VARCHAR(255)", "shipment.tracking_no", "shipment"], ["shipped_at", "VARCHAR(255)", "shipment.shipped_at", "shipment"], ["delivered_at", "VARCHAR(255)", "shipment.delivered_at", "shipment"]], false, ["custorder_id", "shipment_id"]], ["relation_31", [["promotion_id", "INTEGER", "promotion_id", "promotion"], ["promo_name", "VARCHAR(255)", "promotion.promo_name", "promotion"], ["starts_at", "VARCHAR(255)", "promotion.starts_at", "promotion"], ["ends_at", "VARCHAR(255)", "promotion.ends_at", "promotion"], ["discount_type", "VARCHAR(255)", "promotion.discount_type", "promotion"], ["discount_value", "VARCHAR(255)", "promotion.discount_value", "promotion"]], false, ["promotion_id"]], ["relation_32", [["promotion_id", "INTEGER", "promotion_id", "coupon"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon"], ["max_uses", "INTEGER", "coupon.max_uses", "coupon"], ["per_user_limit", "INTEGER", "coupon.per_user_limit", "coupon"]], false, ["promotion_id", "coupon_code"]], ["relation_33", [["warehouse_id", "INTEGER", "warehouse_id", "warehouse"], ["warehouse_name", "VARCHAR(255)", "warehouse.warehouse_name", "warehouse"], ["region", "VARCHAR(255)", "warehouse.region", "warehouse"]], false, ["warehouse_id"]], ["relation_34", [["warehouse_id", "INTEGER", "warehouse_id", "warehousebin"], ["bin_id", "INTEGER", "warehousebin.bin_id", "warehousebin"], ["code", "VARCHAR(255)", "warehousebin.code", "warehousebin"]], false, ["warehouse_id", "bin_id"]], ["relation_35", [["supplier_id", "INTEGER", "supplier_id", "supplier"], ["supplier_name", "VARCHAR(255)", "supplier.supplier_name", "supplier"]], false, ["supplier_id"]], ["relation_36", [["supplier_id", "INTEGER", "supplier_id", "suppliercontact"], ["contact_id", "INTEGER", "suppliercontact.contact_id", "suppliercontact"], ["email", "VARCHAR(255)", "suppliercontact.email", "suppliercontact"], ["phone", "VARCHAR(255)", "suppliercontact.phone", "suppliercontact"]], false, ["supplier_id", "contact_id"]], ["relation_37", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder"], ["created_at", "VARCHAR(255)", "purchaseorder.created_at", "purchaseorder"], ["status", "VARCHAR(255)", "purchaseorder.status", "purchaseorder"]], false, ["purchaseorder_id"]], ["relation_38", [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner"], ["carrier_code", "VARCHAR(255)", "courierpartner.carrier_code", "courierpartner"], ["webhook_url", "VARCHAR(255)", "courierpartner.webhook_url", "courierpartner"]], false, ["courierpartner_id"]], ["relation_39", [["product_id", "INTEGER", "product_id", "category_products"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], false, ["product_id"]], ["relation_40", [["product_id", "INTEGER", "product_id", "product_tags"], ["tag_id", "INTEGER", "tag_id", "product_tags"]], false, ["product_id", "tag_id"]], ["relation_41", [["product_id", "INTEGER", "product_id", "bought_together"], ["bought_together_product_product_id", "INTEGER", "product_id", "bought_together"]], false, ["product_id", "bought_together_product_product_id"]], ["relation_42", [["customer_id", "INTEGER", "customer_id", "cart_contains"], ["product_id", "INTEGER", "product_id", "cart_contains"]], false, ["customer_id", "product_id"]], ["relation_43", [["customer_id", "INTEGER", "customer_id", "wishlist_contains"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_contains"], ["product_id", "INTEGER", "product_id", "wishlist_contains"]], false, ["customer_id", "wishlist_id", "product_id"]], ["relation_44", [["customer_id", "INTEGER", "customer_id", "reviews"], ["review_id", "INTEGER", "review.review_id", "reviews"], ["reviews_product_id", "INTEGER", "product_id", "reviews"]], false, ["customer_id", "review_id"]], ["relation_45", [["custorder_id", "INTEGER", "custorder_id", "customer_orders"], ["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders"]], false, ["custorder_id"]], ["relation_46", [["custorder_id", "INTEGER", "custorder_id", "order_items"], ["product_id", "INTEGER", "product_id", "order_items"]], false, ["custorder_id", "product_id"]], ["relation_47", [["custorder_id", "INTEGER", "custorder_id", "payment_order"], ["payment_order_customer_id", "INTEGER", "customer_id", "payment_order"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order"]], false, ["custorder_id"]], ["relation_48", [["custorder_id", "INTEGER", "custorder_id", "order_returns"], ["product_id", "INTEGER", "product_id", "order_returns"]], false, ["custorder_id", "product_id"]], ["relation_49", [["promotion_id", "INTEGER", "promotion_id", "order_coupons"], ["coupon_code", "INTEGER", "coupon.coupon_code", "order_coupons"], ["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons"]], false, ["promotion_id", "coupon_code"]], ["relation_50", [["product_id", "INTEGER", "product_id", "stock"], ["warehouse_id", "INTEGER", "warehouse_id", "stock"], ["bin_id", "INTEGER", "warehousebin.bin_id", "stock"]], false, ["product_id", "warehouse_id", "bin_id"]], ["relation_51", [["supplier_id", "INTEGER", "supplier_id", "supplier_products"], ["product_id", "INTEGER", "product_id", "supplier_products"]], false, ["supplier_id", "product_id"]], ["relation_52", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "supplier_pos"], ["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos"]], false, ["purchaseorder_id"]], ["relation_53", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "po_items"], ["product_id", "INTEGER", "product_id", "po_items"]], false, ["purchaseorder_id", "product_id"]], ["relation_54", [["custorder_id", "INTEGER", "custorder_id", "courier_shipments"], ["shipment_id", "INTEGER", "shipment.shipment_id", "courier_shipments"], ["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments"]], false, ["custorder_id", "shipment_id"]], ["relation_55", [["phone_id", "INTEGER", "phone_id", "bundle_phones"], ["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phones"]], false, ["phone_id", "bundle_phone_phone_id"]], ["relation_56", [["smartwatch_id", "INTEGER", "electronics_id", "bundled_phone_smart_watch"], ["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch"]], false, ["smartwatch_id"]], ["relation_57", [["phone_id", "INTEGER", "phone_id", "bundled_phone"], ["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "bundled_phone"]], false, ["phone_id"]]]
3	types	{}
4	graph	{"cost": 49938091.95773213, "edges": [{"type": "edge", "source": "product.mv_attributes", "target": "product", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "physicalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "digitalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "electronics", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "computer", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "desktop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "laptop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "tablet", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "smartwatch", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "camera", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "phone", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "accessories", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "appliance", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "kitchenappliance", "target": "appliance", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "apparel", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "clothing", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "menclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "womenclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "footwear", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "media", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "software", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "user.mv_user", "target": "user", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer.contact_no", "target": "customer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "primecustomer.subscription_addons", "target": "primecustomer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "primecustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "businesscustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "employee", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "corporateemployee", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "engineer", "target": "corporateemployee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "supportagent", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "fulfillmentassociate", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "categorymanager", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productimage", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productvariant", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "pricehistory", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "address", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "paymentmethod", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "cart", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "wishlist", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "review", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "browsingsession", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "shipment", "target": "custorder", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "coupon", "target": "promotion", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "warehousebin", "target": "warehouse", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "suppliercontact", "target": "supplier", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "category_products", "target": "category", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "category_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "tag", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "cart", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "wishlist", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "review", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "customer", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "paymentmethod", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "coupon", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "warehousebin", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "courierpartner", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "shipment", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "smartwatch", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}], "nodes": [{"key": {"table_key": [["category_id", "INTEGER", "category_id", "category_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["category"]}, "name": "Category", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 1, "attributes": ["category.category_id", "category.category_name", "category.parent"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "category_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "category_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "parent", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Category", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[1, "relation_0"]], "unique_name": "category", "mapped_table": [1, "relation_0"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "category_id", "pk_type": "INTEGER", "pk_ER_name": "category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "category_name", "type": "VARCHAR", "unique_name": "category.category_name", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "parent", "type": "INT", "unique_name": "category.parent", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["category"], "select_frequency": 2, "select_all_tables": [[1, "relation_0"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "category_id", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 2, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.category_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "category_name", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 3, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "category.category_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "parent", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 4, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.parent", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["product"]}, "name": "Product", "type": "ENTITY", "is_mvds": true, "children": ["physicalproduct", "digitalproduct"], "is_total": null, "sort_key": 5, "attributes": ["product.product_id", "product.sku", "product.product_name", "product.base_price", "product.is_active", "product.quantity", "product.mv_attributes"], "node_cover": ["product", "desktop", "clothing", "footwear"], "entity_dict": {"attributes": [{"attr_name": "product_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sku", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "product_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "base_price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "quantity", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_attributes", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Product", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[12, "relation_2"], [5, "relation_1"]], "unique_name": "product", "mapped_table": [5, "relation_1"], "parent_entity": null, "relation_size": 2100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["product"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "product_id", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 6, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.product_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sku", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 7, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.sku", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "product_name", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 8, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.product_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "base_price", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 9, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.base_price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 10, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.is_active", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "quantity", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 11, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.quantity", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "mv_attributes"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": null}, "name": "mv_attributes", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 12, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.mv_attributes", "is_composite": false, "is_flattened": false, "mapped_table": [12, "relation_2"], "relation_size": 3144, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["physicalproduct"]}, "name": "PhysicalProduct", "type": "ENTITY", "is_mvds": false, "children": ["electronics", "appliance", "apparel"], "is_total": true, "sort_key": 13, "attributes": ["physicalproduct.dimensions"], "node_cover": ["physicalproduct", "desktop", "clothing", "footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "dimensions", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PhysicalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [12, "relation_2"], [5, "relation_1"]], "unique_name": "physicalproduct", "mapped_table": [13, "relation_3"], "parent_entity": "product", "relation_size": 1700, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "physicalproduct_id", "pk_entity_name": "physicalproduct", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["physicalproduct"], "select_frequency": 5, "select_all_tables": [[13, "relation_3"], [12, "relation_2"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "dimensions", "type": "ATTRIBUTE", "entity": "physicalproduct", "children": [], "sort_key": 14, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "physicalproduct.dimensions", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "digitalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["digitalproduct"]}, "name": "DigitalProduct", "type": "ENTITY", "is_mvds": false, "children": ["media", "software"], "is_total": true, "sort_key": 15, "attributes": ["digitalproduct.delivery_type"], "node_cover": ["digitalproduct"], "entity_dict": {"total": true, "attributes": [{"attr_name": "delivery_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "DigitalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [5, "relation_1"]], "unique_name": "digitalproduct", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 300, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "digitalproduct_id", "pk_entity_name": "digitalproduct", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["digitalproduct"], "select_frequency": 2, "select_all_tables": [[12, "relation_2"], [5, "relation_1"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "delivery_type", "type": "ATTRIBUTE", "entity": "digitalproduct", "children": [], "sort_key": 16, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "digitalproduct.delivery_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["electronics"]}, "name": "Electronics", "type": "ENTITY", "is_mvds": false, "children": ["computer", "tablet", "smartwatch", "camera", "phone", "accessories"], "is_total": true, "sort_key": 17, "attributes": ["electronics.warranty_months"], "node_cover": ["electronics", "desktop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_months", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Electronics", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [5, "relation_1"], [12, "relation_2"], [17, "relation_4"]], "unique_name": "electronics", "mapped_table": [17, "relation_4"], "parent_entity": "physicalproduct", "relation_size": 900, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "electronics_id", "pk_entity_name": "electronics", "pk_unique_name": "electronics_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["electronics"], "select_frequency": 1, "select_all_tables": [[13, "relation_3"], [12, "relation_2"], [17, "relation_4"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "warranty_months", "type": "ATTRIBUTE", "entity": "electronics", "children": [], "sort_key": 18, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "electronics.warranty_months", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["computer"]}, "name": "Computer", "type": "ENTITY", "is_mvds": false, "children": ["desktop", "laptop"], "is_total": true, "sort_key": 19, "attributes": ["computer.cpu", "computer.ram_gb"], "node_cover": ["computer", "desktop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "cpu", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ram_gb", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Computer", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [5, "relation_1"], [19, "relation_5"], [12, "relation_2"], [17, "relation_4"]], "unique_name": "computer", "mapped_table": [19, "relation_5"], "parent_entity": "electronics", "relation_size": 300, "attribute_list": [{"pk_name": "computer_id", "pk_type": "INTEGER", "pk_ER_name": "computer_id", "pk_entity_name": "computer", "pk_unique_name": "computer_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["computer"], "select_frequency": 10, "select_all_tables": [[13, "relation_3"], [5, "relation_1"], [19, "relation_5"], [12, "relation_2"], [17, "relation_4"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "cpu", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 20, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "computer.cpu", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ram_gb", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 21, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "computer.ram_gb", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["desktop_id", "INTEGER", "desktop_id", "desktop_id"]], "reference_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["desktop"]}, "name": "Desktop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 22, "attributes": ["desktop.form_factor"], "node_cover": ["desktop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "form_factor", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Desktop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [22, "relation_6"]], "unique_name": "desktop", "mapped_table": [22, "relation_6"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "desktop_id", "pk_type": "INTEGER", "pk_ER_name": "desktop_id", "pk_entity_name": "desktop", "pk_unique_name": "desktop_id", "pk_reference_key_name": "computer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "computer_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "form_factor", "type": "VARCHAR", "unique_name": "desktop.form_factor", "is_flattened": null, "mapped_table": [22, "relation_6"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "desktop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["desktop"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [22, "relation_6"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "form_factor", "type": "ATTRIBUTE", "entity": "desktop", "children": [], "sort_key": 23, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "desktop.form_factor", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["computer_id", "INTEGER", "computer_id", "laptop_id"]], "reference_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["laptop"]}, "name": "Laptop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 24, "attributes": ["laptop.battery_wh"], "node_cover": ["laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "battery_wh", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Laptop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [5, "relation_1"], [19, "relation_5"], [12, "relation_2"], [17, "relation_4"]], "unique_name": "laptop", "mapped_table": [19, "relation_5"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "computer_id", "pk_type": "INTEGER", "pk_ER_name": "laptop_id", "pk_entity_name": "laptop", "pk_unique_name": "computer_id", "pk_reference_key_name": "computer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "computer_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "battery_wh", "type": "INT", "unique_name": "laptop.battery_wh", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "laptop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["laptop"], "select_frequency": 5, "select_all_tables": [[13, "relation_3"], [5, "relation_1"], [19, "relation_5"], [12, "relation_2"], [17, "relation_4"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "battery_wh", "type": "ATTRIBUTE", "entity": "laptop", "children": [], "sort_key": 25, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "laptop.battery_wh", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "tablet_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["tablet"]}, "name": "Tablet", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 26, "attributes": ["tablet.screen_size_in"], "node_cover": ["tablet"], "entity_dict": {"total": true, "attributes": [{"attr_name": "screen_size_in", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tablet", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [5, "relation_1"], [12, "relation_2"], [17, "relation_4"]], "unique_name": "tablet", "mapped_table": [17, "relation_4"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "tablet_id", "pk_entity_name": "tablet", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "screen_size_in", "type": "INT", "unique_name": "tablet.screen_size_in", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tablet", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["tablet"], "select_frequency": 1, "select_all_tables": [[13, "relation_3"], [5, "relation_1"], [12, "relation_2"], [17, "relation_4"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "screen_size_in", "type": "ATTRIBUTE", "entity": "tablet", "children": [], "sort_key": 27, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tablet.screen_size_in", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "smartwatch_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["smartwatch"]}, "name": "Smartwatch", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 28, "attributes": ["smartwatch.band_size"], "node_cover": ["smartwatch"], "entity_dict": {"total": true, "attributes": [{"attr_name": "band_size", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Smartwatch", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [5, "relation_1"], [12, "relation_2"], [17, "relation_4"]], "unique_name": "smartwatch", "mapped_table": [17, "relation_4"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "band_size", "type": "VARCHAR", "unique_name": "smartwatch.band_size", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "smartwatch", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["smartwatch"], "select_frequency": 1, "select_all_tables": [[13, "relation_3"], [5, "relation_1"], [12, "relation_2"], [17, "relation_4"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "band_size", "type": "ATTRIBUTE", "entity": "smartwatch", "children": [], "sort_key": 29, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "smartwatch.band_size", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "camera_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["camera"]}, "name": "Camera", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 30, "attributes": ["camera.sensor_mp"], "node_cover": ["camera"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sensor_mp", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Camera", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [5, "relation_1"], [12, "relation_2"], [17, "relation_4"]], "unique_name": "camera", "mapped_table": [17, "relation_4"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "camera_id", "pk_entity_name": "camera", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sensor_mp", "type": "INT", "unique_name": "camera.sensor_mp", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "camera", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["camera"], "select_frequency": 2, "select_all_tables": [[13, "relation_3"], [5, "relation_1"], [12, "relation_2"], [17, "relation_4"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "sensor_mp", "type": "ATTRIBUTE", "entity": "camera", "children": [], "sort_key": 31, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "camera.sensor_mp", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["phone_id", "INTEGER", "phone_id", "phone_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["phone"]}, "name": "Phone", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 32, "attributes": ["phone.carrier_lock"], "node_cover": ["phone"], "entity_dict": {"total": true, "attributes": [{"attr_name": "carrier_lock", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Phone", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [5, "relation_1"], [12, "relation_2"], [17, "relation_4"], [32, "relation_7"]], "unique_name": "phone", "mapped_table": [32, "relation_7"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "carrier_lock", "type": "VARCHAR", "unique_name": "phone.carrier_lock", "is_flattened": null, "mapped_table": [32, "relation_7"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "phone", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["phone"], "select_frequency": 10, "select_all_tables": [[13, "relation_3"], [5, "relation_1"], [12, "relation_2"], [17, "relation_4"], [32, "relation_7"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "carrier_lock", "type": "ATTRIBUTE", "entity": "phone", "children": [], "sort_key": 33, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "phone.carrier_lock", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "accessories_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["accessories"]}, "name": "Accessories", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 34, "attributes": ["accessories.accessory_type"], "node_cover": ["accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "accessory_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Accessories", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [5, "relation_1"], [12, "relation_2"], [17, "relation_4"]], "unique_name": "accessories", "mapped_table": [17, "relation_4"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "accessories_id", "pk_entity_name": "accessories", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "accessory_type", "type": "VARCHAR", "unique_name": "accessories.accessory_type", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "accessories", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["accessories"], "select_frequency": 0, "select_all_tables": [[13, "relation_3"], [5, "relation_1"], [12, "relation_2"], [17, "relation_4"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "accessory_type", "type": "ATTRIBUTE", "entity": "accessories", "children": [], "sort_key": 35, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "accessories.accessory_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "appliance_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["appliance"]}, "name": "Appliance", "type": "ENTITY", "is_mvds": false, "children": ["kitchenappliance"], "is_total": true, "sort_key": 36, "attributes": ["appliance.energy_rating"], "node_cover": ["appliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "energy_rating", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Appliance", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"], [13, "relation_3"], [12, "relation_2"]], "unique_name": "appliance", "mapped_table": [13, "relation_3"], "parent_entity": "physicalproduct", "relation_size": 200, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "appliance_id", "pk_entity_name": "appliance", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["appliance"], "select_frequency": 1, "select_all_tables": [[13, "relation_3"], [12, "relation_2"], [5, "relation_1"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "energy_rating", "type": "ATTRIBUTE", "entity": "appliance", "children": [], "sort_key": 37, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "appliance.energy_rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "kitchenappliance_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["kitchenappliance"]}, "name": "KitchenAppliance", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 38, "attributes": ["kitchenappliance.warranty_years"], "node_cover": ["kitchenappliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_years", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "KitchenAppliance", "entity_type": null, "parent_entity": "Appliance"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"], [13, "relation_3"], [12, "relation_2"]], "unique_name": "kitchenappliance", "mapped_table": [13, "relation_3"], "parent_entity": "appliance", "relation_size": 100, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "kitchenappliance_id", "pk_entity_name": "kitchenappliance", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_years", "type": "INT", "unique_name": "kitchenappliance.warranty_years", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "kitchenappliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["kitchenappliance"], "select_frequency": 10, "select_all_tables": [[13, "relation_3"], [12, "relation_2"], [5, "relation_1"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warranty_years", "type": "ATTRIBUTE", "entity": "kitchenappliance", "children": [], "sort_key": 39, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "kitchenappliance.warranty_years", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["apparel"]}, "name": "Apparel", "type": "ENTITY", "is_mvds": false, "children": ["clothing", "footwear"], "is_total": true, "sort_key": 40, "attributes": ["apparel.size_system"], "node_cover": ["apparel", "clothing", "footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "size_system", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Apparel", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [40, "relation_8"], [5, "relation_1"], [12, "relation_2"]], "unique_name": "apparel", "mapped_table": [40, "relation_8"], "parent_entity": "physicalproduct", "relation_size": 500, "attribute_list": [{"pk_name": "apparel_id", "pk_type": "INTEGER", "pk_ER_name": "apparel_id", "pk_entity_name": "apparel", "pk_unique_name": "apparel_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_8"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["apparel"], "select_frequency": 1, "select_all_tables": [[40, "relation_8"], [13, "relation_3"], [12, "relation_2"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "size_system", "type": "ATTRIBUTE", "entity": "apparel", "children": [], "sort_key": 41, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "apparel.size_system", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_8"], "table_key_entities": ["clothing"]}, "name": "Clothing", "type": "ENTITY", "is_mvds": false, "children": ["menclothing", "womenclothing"], "is_total": true, "sort_key": 42, "attributes": ["clothing.material"], "node_cover": ["clothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Clothing", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[42, "relation_9"], [12, "relation_2"]], "unique_name": "clothing", "mapped_table": [42, "relation_9"], "parent_entity": "apparel", "relation_size": 300, "attribute_list": [{"pk_name": "clothing_id", "pk_type": "INTEGER", "pk_ER_name": "clothing_id", "pk_entity_name": "clothing", "pk_unique_name": "clothing_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_8"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_9"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["clothing"], "select_frequency": 10, "select_all_tables": [[42, "relation_9"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "material", "type": "ATTRIBUTE", "entity": "clothing", "children": [], "sort_key": 43, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "clothing.material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["clothing_id", "INTEGER", "clothing_id", "menclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_9"], "table_key_entities": ["menclothing"]}, "name": "MenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 44, "attributes": ["menclothing.fit_type_men"], "node_cover": ["menclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_men", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "MenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[42, "relation_9"], [12, "relation_2"]], "unique_name": "menclothing", "mapped_table": [42, "relation_9"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "clothing_id", "pk_type": "INTEGER", "pk_ER_name": "menclothing_id", "pk_entity_name": "menclothing", "pk_unique_name": "clothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_8"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_9"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_men", "type": "VARCHAR", "unique_name": "menclothing.fit_type_men", "is_flattened": null, "mapped_table": [42, "relation_9"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "menclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["menclothing"], "select_frequency": 5, "select_all_tables": [[12, "relation_2"], [42, "relation_9"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "fit_type_men", "type": "ATTRIBUTE", "entity": "menclothing", "children": [], "sort_key": 45, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "menclothing.fit_type_men", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["womenclothing_id", "INTEGER", "womenclothing_id", "womenclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_9"], "table_key_entities": ["womenclothing"]}, "name": "WomenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 46, "attributes": ["womenclothing.fit_type_women"], "node_cover": ["womenclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_women", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WomenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[46, "relation_10"], [42, "relation_9"], [12, "relation_2"]], "unique_name": "womenclothing", "mapped_table": [46, "relation_10"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "womenclothing_id", "pk_type": "INTEGER", "pk_ER_name": "womenclothing_id", "pk_entity_name": "womenclothing", "pk_unique_name": "womenclothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_8"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_9"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_women", "type": "VARCHAR", "unique_name": "womenclothing.fit_type_women", "is_flattened": null, "mapped_table": [46, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "womenclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["womenclothing"], "select_frequency": 20, "select_all_tables": [[42, "relation_9"], [12, "relation_2"], [46, "relation_10"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "clothing"}, {"key": null, "name": "fit_type_women", "type": "ATTRIBUTE", "entity": "womenclothing", "children": [], "sort_key": 47, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "womenclothing.fit_type_women", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["footwear_id", "INTEGER", "footwear_id", "footwear_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_8"], "table_key_entities": ["footwear"]}, "name": "Footwear", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 48, "attributes": ["footwear.sole_material"], "node_cover": ["footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sole_material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Footwear", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [48, "relation_11"]], "unique_name": "footwear", "mapped_table": [48, "relation_11"], "parent_entity": "apparel", "relation_size": 100, "attribute_list": [{"pk_name": "footwear_id", "pk_type": "INTEGER", "pk_ER_name": "footwear_id", "pk_entity_name": "footwear", "pk_unique_name": "footwear_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_8"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sole_material", "type": "VARCHAR", "unique_name": "footwear.sole_material", "is_flattened": null, "mapped_table": [48, "relation_11"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "footwear", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["footwear"], "select_frequency": 20, "select_all_tables": [[12, "relation_2"], [48, "relation_11"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "sole_material", "type": "ATTRIBUTE", "entity": "footwear", "children": [], "sort_key": 49, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "footwear.sole_material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["media_id", "INTEGER", "media_id", "media_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_1"], "table_key_entities": ["media"]}, "name": "Media", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 50, "attributes": ["media.format"], "node_cover": ["media"], "entity_dict": {"total": true, "attributes": [{"attr_name": "format", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Media", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[50, "relation_12"], [12, "relation_2"], [5, "relation_1"]], "unique_name": "media", "mapped_table": [50, "relation_12"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "media_id", "pk_type": "INTEGER", "pk_ER_name": "media_id", "pk_entity_name": "media", "pk_unique_name": "media_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "format", "type": "VARCHAR", "unique_name": "media.format", "is_flattened": null, "mapped_table": [50, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "media", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["media"], "select_frequency": 1, "select_all_tables": [[50, "relation_12"], [12, "relation_2"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "format", "type": "ATTRIBUTE", "entity": "media", "children": [], "sort_key": 51, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "media.format", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["software_id", "INTEGER", "software_id", "software_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_1"], "table_key_entities": ["software"]}, "name": "Software", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 52, "attributes": ["software.license_type"], "node_cover": ["software"], "entity_dict": {"total": true, "attributes": [{"attr_name": "license_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Software", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[52, "relation_13"], [12, "relation_2"], [5, "relation_1"]], "unique_name": "software", "mapped_table": [52, "relation_13"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "software_id", "pk_type": "INTEGER", "pk_ER_name": "software_id", "pk_entity_name": "software", "pk_unique_name": "software_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "license_type", "type": "VARCHAR", "unique_name": "software.license_type", "is_flattened": null, "mapped_table": [52, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "software", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["software"], "select_frequency": 1, "select_all_tables": [[52, "relation_13"], [12, "relation_2"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "license_type", "type": "ATTRIBUTE", "entity": "software", "children": [], "sort_key": 53, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "software.license_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["user"]}, "name": "User", "type": "ENTITY", "is_mvds": true, "children": ["customer", "employee"], "is_total": null, "sort_key": 54, "attributes": ["user.email", "user.password_hash", "user.mv_user"], "node_cover": ["user"], "entity_dict": {"attributes": [{"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "password_hash", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_user", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "User", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[54, "relation_14"], [57, "relation_15"]], "unique_name": "user", "mapped_table": [54, "relation_14"], "parent_entity": null, "relation_size": 1000, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_15"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["user"], "select_frequency": 10, "select_all_tables": [[54, "relation_14"], [57, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 4, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 55, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "password_hash", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 56, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.password_hash", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["mv_user", "VARCHAR(255)", "user.mv_user", "mv_user"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_14"], "table_key_entities": null}, "name": "mv_user", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 57, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.mv_user", "is_composite": false, "is_flattened": false, "mapped_table": [57, "relation_15"], "relation_size": 2458, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_14"], "table_key_entities": ["customer"]}, "name": "Customer", "type": "ENTITY", "is_mvds": true, "children": ["primecustomer", "businesscustomer"], "is_total": true, "sort_key": 58, "attributes": ["customer.loyalty_tier", "customer.contact_no"], "node_cover": ["customer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "loyalty_tier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "contact_no", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Customer", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[54, "relation_14"], [58, "relation_16"], [57, "relation_15"], [60, "relation_17"]], "unique_name": "customer", "mapped_table": [58, "relation_16"], "parent_entity": "user", "relation_size": 300, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_15"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_17"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_17"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["customer"], "select_frequency": 6, "select_all_tables": [[54, "relation_14"], [60, "relation_17"], [58, "relation_16"], [57, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "loyalty_tier", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 59, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.loyalty_tier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["contact_no", "VARCHAR(255)", "customer.contact_no", "contact_no"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_16"], "table_key_entities": null}, "name": "contact_no", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 60, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.contact_no", "is_composite": false, "is_flattened": false, "mapped_table": [60, "relation_17"], "relation_size": 446, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["customer_id", "INTEGER", "customer_id", "primecustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_16"], "table_key_entities": ["primecustomer"]}, "name": "PrimeCustomer", "type": "ENTITY", "is_mvds": true, "children": [], "is_total": true, "sort_key": 61, "attributes": ["primecustomer.renewal_date", "primecustomer.subscription_addons"], "node_cover": ["primecustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "renewal_date", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "subscription_addons", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PrimeCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[58, "relation_16"], [57, "relation_15"], [54, "relation_14"], [63, "relation_18"], [60, "relation_17"]], "unique_name": "primecustomer", "mapped_table": [58, "relation_16"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "primecustomer_id", "pk_entity_name": "primecustomer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_15"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_17"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_17"]}, {"name": "renewal_date", "type": "VARCHAR", "unique_name": "primecustomer.renewal_date", "is_flattened": null, "mapped_table": [58, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "subscription_addons", "type": "VARCHAR", "unique_name": "primecustomer.subscription_addons", "is_flattened": null, "mapped_table": [63, "relation_18"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": true, "mvd_separate_table_name": [63, "relation_18"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["primecustomer"], "select_frequency": 1, "select_all_tables": [[54, "relation_14"], [57, "relation_15"], [58, "relation_16"], [63, "relation_18"], [60, "relation_17"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "renewal_date", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 62, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.renewal_date", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "primecustomer_id"]], [["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "subscription_addons"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["primecustomer"], "reference_table": ["relation_16"], "table_key_entities": null}, "name": "subscription_addons", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 63, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.subscription_addons", "is_composite": false, "is_flattened": false, "mapped_table": [63, "relation_18"], "relation_size": 239, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["customer_id", "INTEGER", "customer_id", "businesscustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_16"], "table_key_entities": ["businesscustomer"]}, "name": "BusinessCustomer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 64, "attributes": ["businesscustomer.company_name"], "node_cover": ["businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "company_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BusinessCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[54, "relation_14"], [58, "relation_16"], [57, "relation_15"], [60, "relation_17"]], "unique_name": "businesscustomer", "mapped_table": [58, "relation_16"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "businesscustomer_id", "pk_entity_name": "businesscustomer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_15"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_17"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_17"]}, {"name": "company_name", "type": "VARCHAR", "unique_name": "businesscustomer.company_name", "is_flattened": null, "mapped_table": [58, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "businesscustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["businesscustomer"], "select_frequency": 1, "select_all_tables": [[54, "relation_14"], [58, "relation_16"], [57, "relation_15"], [60, "relation_17"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "company_name", "type": "ATTRIBUTE", "entity": "businesscustomer", "children": [], "sort_key": 65, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "businesscustomer.company_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_14"], "table_key_entities": ["employee"]}, "name": "Employee", "type": "ENTITY", "is_mvds": false, "children": ["corporateemployee", "supportagent", "fulfillmentassociate", "categorymanager"], "is_total": true, "sort_key": 66, "attributes": ["employee.employee_no"], "node_cover": ["employee"], "entity_dict": {"total": true, "attributes": [{"attr_name": "employee_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Employee", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[54, "relation_14"], [66, "relation_19"], [57, "relation_15"]], "unique_name": "employee", "mapped_table": [66, "relation_19"], "parent_entity": "user", "relation_size": 600, "attribute_list": [{"pk_name": "employee_id", "pk_type": "INTEGER", "pk_ER_name": "employee_id", "pk_entity_name": "employee", "pk_unique_name": "employee_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_15"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["employee"], "select_frequency": 2, "select_all_tables": [[54, "relation_14"], [66, "relation_19"], [57, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "employee_no", "type": "ATTRIBUTE", "entity": "employee", "children": [], "sort_key": 67, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "employee.employee_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["employee_id", "INTEGER", "employee_id", "corporateemployee_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_19"], "table_key_entities": ["corporateemployee"]}, "name": "CorporateEmployee", "type": "ENTITY", "is_mvds": false, "children": ["engineer"], "is_total": true, "sort_key": 68, "attributes": ["corporateemployee.office_site"], "node_cover": ["corporateemployee"], "entity_dict": {"total": true, "attributes": [{"attr_name": "office_site", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CorporateEmployee", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_15"], [54, "relation_14"], [66, "relation_19"]], "unique_name": "corporateemployee", "mapped_table": [66, "relation_19"], "parent_entity": "employee", "relation_size": 200, "attribute_list": [{"pk_name": "employee_id", "pk_type": "INTEGER", "pk_ER_name": "corporateemployee_id", "pk_entity_name": "corporateemployee", "pk_unique_name": "employee_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_15"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [66, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["corporateemployee"], "select_frequency": 1, "select_all_tables": [[54, "relation_14"], [66, "relation_19"], [57, "relation_15"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "office_site", "type": "ATTRIBUTE", "entity": "corporateemployee", "children": [], "sort_key": 69, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "corporateemployee.office_site", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["employee_id", "INTEGER", "employee_id", "engineer_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_19"], "table_key_entities": ["engineer"]}, "name": "Engineer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 70, "attributes": ["engineer.level"], "node_cover": ["engineer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "level", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Engineer", "entity_type": null, "parent_entity": "CorporateEmployee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_15"], [54, "relation_14"], [66, "relation_19"]], "unique_name": "engineer", "mapped_table": [66, "relation_19"], "parent_entity": "corporateemployee", "relation_size": 100, "attribute_list": [{"pk_name": "employee_id", "pk_type": "INTEGER", "pk_ER_name": "engineer_id", "pk_entity_name": "engineer", "pk_unique_name": "employee_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_15"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [66, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "level", "type": "VARCHAR", "unique_name": "engineer.level", "is_flattened": null, "mapped_table": [66, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "engineer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["engineer"], "select_frequency": 1, "select_all_tables": [[54, "relation_14"], [66, "relation_19"], [57, "relation_15"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "level", "type": "ATTRIBUTE", "entity": "engineer", "children": [], "sort_key": 71, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "engineer.level", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supportagent_id", "INTEGER", "supportagent_id", "supportagent_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_19"], "table_key_entities": ["supportagent"]}, "name": "SupportAgent", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 72, "attributes": ["supportagent.queue"], "node_cover": ["supportagent"], "entity_dict": {"total": true, "attributes": [{"attr_name": "queue", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupportAgent", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_15"], [72, "relation_20"], [54, "relation_14"], [66, "relation_19"]], "unique_name": "supportagent", "mapped_table": [72, "relation_20"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "supportagent_id", "pk_type": "INTEGER", "pk_ER_name": "supportagent_id", "pk_entity_name": "supportagent", "pk_unique_name": "supportagent_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_15"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "queue", "type": "VARCHAR", "unique_name": "supportagent.queue", "is_flattened": null, "mapped_table": [72, "relation_20"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supportagent", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["supportagent"], "select_frequency": 1, "select_all_tables": [[72, "relation_20"], [54, "relation_14"], [66, "relation_19"], [57, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "queue", "type": "ATTRIBUTE", "entity": "supportagent", "children": [], "sort_key": 73, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supportagent.queue", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_19"], "table_key_entities": ["fulfillmentassociate"]}, "name": "FulfillmentAssociate", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 74, "attributes": ["fulfillmentassociate.shift"], "node_cover": ["fulfillmentassociate"], "entity_dict": {"total": true, "attributes": [{"attr_name": "shift", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "FulfillmentAssociate", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_15"], [54, "relation_14"], [74, "relation_21"], [66, "relation_19"]], "unique_name": "fulfillmentassociate", "mapped_table": [74, "relation_21"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "fulfillmentassociate_id", "pk_type": "INTEGER", "pk_ER_name": "fulfillmentassociate_id", "pk_entity_name": "fulfillmentassociate", "pk_unique_name": "fulfillmentassociate_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_15"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shift", "type": "VARCHAR", "unique_name": "fulfillmentassociate.shift", "is_flattened": null, "mapped_table": [74, "relation_21"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "fulfillmentassociate", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["fulfillmentassociate"], "select_frequency": 1, "select_all_tables": [[54, "relation_14"], [74, "relation_21"], [66, "relation_19"], [57, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "shift", "type": "ATTRIBUTE", "entity": "fulfillmentassociate", "children": [], "sort_key": 75, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "fulfillmentassociate.shift", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_19"], "table_key_entities": ["categorymanager"]}, "name": "CategoryManager", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 76, "attributes": ["categorymanager.department"], "node_cover": ["categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "department", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CategoryManager", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[76, "relation_22"], [57, "relation_15"], [54, "relation_14"], [66, "relation_19"]], "unique_name": "categorymanager", "mapped_table": [76, "relation_22"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "categorymanager_id", "pk_type": "INTEGER", "pk_ER_name": "categorymanager_id", "pk_entity_name": "categorymanager", "pk_unique_name": "categorymanager_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_15"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "department", "type": "VARCHAR", "unique_name": "categorymanager.department", "is_flattened": null, "mapped_table": [76, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "categorymanager", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["categorymanager"], "select_frequency": 1, "select_all_tables": [[76, "relation_22"], [54, "relation_14"], [66, "relation_19"], [57, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "department", "type": "ATTRIBUTE", "entity": "categorymanager", "children": [], "sort_key": 77, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "categorymanager.department", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["image_id", "INTEGER", "productimage.image_id", "image_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productimage"]]}, "name": "ProductImage", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 78, "attributes": ["productimage.image_id", "productimage.url", "productimage.alt_text", "productimage.sort_order"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "image_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "alt_text", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sort_order", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductImage", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "productimage", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "image_id", "pk_type": "INTEGER", "pk_ER_name": "image_id", "pk_entity_name": "productimage", "pk_unique_name": "productimage.image_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "url", "type": "VARCHAR", "unique_name": "productimage.url", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "alt_text", "type": "VARCHAR", "unique_name": "productimage.alt_text", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sort_order", "type": "INT", "unique_name": "productimage.sort_order", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["productimage", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [22, "relation_6"], [42, "relation_9"], [48, "relation_11"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "image_id", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 79, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.image_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "url", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 80, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "alt_text", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 81, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.alt_text", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sort_order", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 82, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.sort_order", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["variant_id", "INTEGER", "productvariant.variant_id", "variant_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productvariant"]]}, "name": "ProductVariant", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 83, "attributes": ["productvariant.variant_id", "productvariant.price_override", "productvariant.barcode", "productvariant.is_active_variant"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "variant_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "price_override", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "barcode", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active_variant", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductVariant", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "productvariant", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "variant_id", "pk_type": "INTEGER", "pk_ER_name": "variant_id", "pk_entity_name": "productvariant", "pk_unique_name": "productvariant.variant_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "price_override", "type": "INT", "unique_name": "productvariant.price_override", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "barcode", "type": "VARCHAR", "unique_name": "productvariant.barcode", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active_variant", "type": "INT", "unique_name": "productvariant.is_active_variant", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["productvariant", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [22, "relation_6"], [42, "relation_9"], [48, "relation_11"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "variant_id", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 84, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.variant_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price_override", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 85, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.price_override", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "barcode", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 86, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productvariant.barcode", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active_variant", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 87, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.is_active_variant", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["price_id", "INTEGER", "pricehistory.price_id", "price_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["pricehistory"]]}, "name": "PriceHistory", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 88, "attributes": ["pricehistory.price_id", "pricehistory.starts_at", "pricehistory.ends_at", "pricehistory.price"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "price_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PriceHistory", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "pricehistory", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "price_id", "pk_type": "INTEGER", "pk_ER_name": "price_id", "pk_entity_name": "pricehistory", "pk_unique_name": "pricehistory.price_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "pricehistory.starts_at", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "pricehistory.ends_at", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "price", "type": "INT", "unique_name": "pricehistory.price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["pricehistory", "product"], "select_frequency": 6, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [22, "relation_6"], [42, "relation_9"], [48, "relation_11"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "price_id", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 89, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 90, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 91, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 92, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tag_id", "INTEGER", "tag_id", "tag_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["tag"]}, "name": "Tag", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 93, "attributes": ["tag.tag_id", "tag.tag_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "tag_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tag_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tag", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[93, "relation_23"]], "unique_name": "tag", "mapped_table": [93, "relation_23"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "tag_name", "type": "VARCHAR", "unique_name": "tag.tag_name", "is_flattened": null, "mapped_table": [93, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tag", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["tag"], "select_frequency": 3, "select_all_tables": [[93, "relation_23"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "tag_id", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 94, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tag.tag_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tag_name", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 95, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "tag.tag_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["address_id", "INTEGER", "address.address_id", "address_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_16"], "table_key_entities": [["customer"], ["address"]]}, "name": "Address", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 96, "attributes": ["address.address_id", "address.kind", "address.line1", "address.city", "address.state", "address.country", "address.postal_code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "address_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "kind", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "line1", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "city", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "state", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "country", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "postal_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Address", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[96, "relation_24"]], "unique_name": "address", "mapped_table": [96, "relation_24"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "address_id", "pk_type": "INTEGER", "pk_ER_name": "address_id", "pk_entity_name": "address", "pk_unique_name": "address.address_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "kind", "type": "VARCHAR", "unique_name": "address.kind", "is_flattened": null, "mapped_table": [96, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "line1", "type": "VARCHAR", "unique_name": "address.line1", "is_flattened": null, "mapped_table": [96, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "city", "type": "VARCHAR", "unique_name": "address.city", "is_flattened": null, "mapped_table": [96, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "state", "type": "VARCHAR", "unique_name": "address.state", "is_flattened": null, "mapped_table": [96, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "country", "type": "VARCHAR", "unique_name": "address.country", "is_flattened": null, "mapped_table": [96, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "postal_code", "type": "VARCHAR", "unique_name": "address.postal_code", "is_flattened": null, "mapped_table": [96, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["address", "customer"], "select_frequency": 4, "select_all_tables": [[58, "relation_16"], [96, "relation_24"], [57, "relation_15"], [54, "relation_14"], [60, "relation_17"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 13, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "address_id", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 97, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "address.address_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "kind", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 98, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.kind", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "line1", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 99, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.line1", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "city", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 100, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.city", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "state", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 101, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.state", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "country", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 102, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.country", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "postal_code", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 103, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.postal_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_method_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_16"], "table_key_entities": [["customer"], ["paymentmethod"]]}, "name": "PaymentMethod", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 104, "attributes": ["paymentmethod.payment_method_id", "paymentmethod.brand", "paymentmethod.last4", "paymentmethod.exp_month", "paymentmethod.exp_year", "paymentmethod.is_default"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "payment_method_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "brand", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "last4", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_month", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_year", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_default", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PaymentMethod", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[104, "relation_25"]], "unique_name": "paymentmethod", "mapped_table": [104, "relation_25"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "brand", "type": "VARCHAR", "unique_name": "paymentmethod.brand", "is_flattened": null, "mapped_table": [104, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "last4", "type": "VARCHAR", "unique_name": "paymentmethod.last4", "is_flattened": null, "mapped_table": [104, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_month", "type": "INT", "unique_name": "paymentmethod.exp_month", "is_flattened": null, "mapped_table": [104, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_year", "type": "INT", "unique_name": "paymentmethod.exp_year", "is_flattened": null, "mapped_table": [104, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_default", "type": "VARCHAR", "unique_name": "paymentmethod.is_default", "is_flattened": null, "mapped_table": [104, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["paymentmethod", "customer"], "select_frequency": 0, "select_all_tables": [[58, "relation_16"], [104, "relation_25"], [57, "relation_15"], [54, "relation_14"], [60, "relation_17"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "payment_method_id", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 105, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.payment_method_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "brand", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 106, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.brand", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "last4", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 107, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.last4", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_month", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 108, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_month", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_year", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 109, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_year", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_default", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 110, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.is_default", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], []], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_16"], "table_key_entities": [["customer"], ["cart"]]}, "name": "Cart", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 111, "attributes": ["cart.updated_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "updated_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Cart", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[111, "relation_26"]], "unique_name": "cart", "mapped_table": [111, "relation_26"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "updated_at", "type": "VARCHAR", "unique_name": "cart.updated_at", "is_flattened": null, "mapped_table": [111, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "cart", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["cart", "customer"], "select_frequency": 8, "select_all_tables": [[58, "relation_16"], [57, "relation_15"], [54, "relation_14"], [60, "relation_17"], [111, "relation_26"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "updated_at", "type": "ATTRIBUTE", "entity": "cart", "children": [], "sort_key": 112, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "cart.updated_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_16"], "table_key_entities": [["customer"], ["wishlist"]]}, "name": "Wishlist", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 113, "attributes": ["wishlist.wishlist_id", "wishlist.wishlist_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "wishlist_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "wishlist_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Wishlist", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[113, "relation_27"]], "unique_name": "wishlist", "mapped_table": [113, "relation_27"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "wishlist_name", "type": "VARCHAR", "unique_name": "wishlist.wishlist_name", "is_flattened": null, "mapped_table": [113, "relation_27"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "wishlist", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["wishlist", "customer"], "select_frequency": 5, "select_all_tables": [[58, "relation_16"], [57, "relation_15"], [54, "relation_14"], [60, "relation_17"], [113, "relation_27"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "wishlist_id", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 114, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "wishlist.wishlist_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "wishlist_name", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 115, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "wishlist.wishlist_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["review_id", "INTEGER", "review.review_id", "review_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_16"], "table_key_entities": [["customer"], ["review"]]}, "name": "Review", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 116, "attributes": ["review.review_id", "review.rating", "review.title", "review.body", "review.created_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "review_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "rating", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "title", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "body", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Review", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[116, "relation_28"]], "unique_name": "review", "mapped_table": [116, "relation_28"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "rating", "type": "INT", "unique_name": "review.rating", "is_flattened": null, "mapped_table": [116, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "title", "type": "VARCHAR", "unique_name": "review.title", "is_flattened": null, "mapped_table": [116, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "body", "type": "VARCHAR", "unique_name": "review.body", "is_flattened": null, "mapped_table": [116, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "review.created_at", "is_flattened": null, "mapped_table": [116, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["review", "customer"], "select_frequency": 7, "select_all_tables": [[58, "relation_16"], [116, "relation_28"], [57, "relation_15"], [54, "relation_14"], [60, "relation_17"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "review_id", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 117, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.review_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "rating", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 118, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "title", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 119, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.title", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "body", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 120, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.body", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 121, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["session_id", "INTEGER", "browsingsession.session_id", "session_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_14"], "table_key_entities": [["user"], ["browsingsession"]]}, "name": "BrowsingSession", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 122, "attributes": ["browsingsession.session_id", "browsingsession.started_at", "browsingsession.device"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "session_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "started_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "device", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BrowsingSession", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": false, "node_tables": [[54, "relation_14"]], "unique_name": "browsingsession", "mapped_table": [54, "relation_14"], "parent_entity": "user", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"pk_name": "session_id", "pk_type": "INTEGER", "pk_ER_name": "session_id", "pk_entity_name": "browsingsession", "pk_unique_name": "browsingsession.session_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "started_at", "type": "VARCHAR", "unique_name": "browsingsession.started_at", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "device", "type": "VARCHAR", "unique_name": "browsingsession.device", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["browsingsession", "user"], "select_frequency": 4, "select_all_tables": [[54, "relation_14"], [57, "relation_15"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "session_id", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 123, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "browsingsession.session_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "started_at", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 124, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.started_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "device", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 125, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.device", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["custorder"]}, "name": "CustOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 126, "attributes": ["custorder.custorder_id", "custorder.placed_at", "custorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "custorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "placed_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CustOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[126, "relation_29"]], "unique_name": "custorder", "mapped_table": [126, "relation_29"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "placed_at", "type": "VARCHAR", "unique_name": "custorder.placed_at", "is_flattened": null, "mapped_table": [126, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "custorder.status", "is_flattened": null, "mapped_table": [126, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["custorder"], "select_frequency": 10, "select_all_tables": [[126, "relation_29"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "custorder_id", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 127, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "custorder.custorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "placed_at", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 128, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.placed_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 129, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], []], "reference_node": ["custorder"], "reference_table": ["relation_29"], "table_key_entities": [["custorder"], ["shipment"]]}, "name": "Shipment", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 130, "attributes": ["shipment.shipment_id", "shipment.carrier", "shipment.tracking_no", "shipment.shipped_at", "shipment.delivered_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "shipment_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "carrier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tracking_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "shipped_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "delivered_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Shipment", "entity_type": null, "parent_entity": "CustOrder"}, "is_no_table": false, "is_subclass": false, "node_tables": [[130, "relation_30"]], "unique_name": "shipment", "mapped_table": [130, "relation_30"], "parent_entity": "custorder", "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": "custorder"}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier", "type": "VARCHAR", "unique_name": "shipment.carrier", "is_flattened": null, "mapped_table": [130, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "tracking_no", "type": "VARCHAR", "unique_name": "shipment.tracking_no", "is_flattened": null, "mapped_table": [130, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shipped_at", "type": "VARCHAR", "unique_name": "shipment.shipped_at", "is_flattened": null, "mapped_table": [130, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "delivered_at", "type": "VARCHAR", "unique_name": "shipment.delivered_at", "is_flattened": null, "mapped_table": [130, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["shipment", "custorder"], "select_frequency": 6, "select_all_tables": [[126, "relation_29"], [130, "relation_30"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shipment_id", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 131, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "shipment.shipment_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 132, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.carrier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tracking_no", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 133, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.tracking_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "shipped_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 134, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.shipped_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "delivered_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 135, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.delivered_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["promotion"]}, "name": "Promotion", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 136, "attributes": ["promotion.promo_id", "promotion.promo_name", "promotion.starts_at", "promotion.ends_at", "promotion.discount_type", "promotion.discount_value"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "promo_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "promo_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_value", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Promotion", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[136, "relation_31"]], "unique_name": "promotion", "mapped_table": [136, "relation_31"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "promo_name", "type": "VARCHAR", "unique_name": "promotion.promo_name", "is_flattened": null, "mapped_table": [136, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "promotion.starts_at", "is_flattened": null, "mapped_table": [136, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "promotion.ends_at", "is_flattened": null, "mapped_table": [136, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_type", "type": "VARCHAR", "unique_name": "promotion.discount_type", "is_flattened": null, "mapped_table": [136, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_value", "type": "VARCHAR", "unique_name": "promotion.discount_value", "is_flattened": null, "mapped_table": [136, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["promotion"], "select_frequency": 3, "select_all_tables": [[136, "relation_31"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "promo_id", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 137, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "promotion.promo_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "promo_name", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 138, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.promo_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 139, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 140, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_type", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 141, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_value", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 142, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_value", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], [["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"]], []], "reference_node": ["promotion"], "reference_table": ["relation_31"], "table_key_entities": [["promotion"], ["coupon"]]}, "name": "Coupon", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 143, "attributes": ["coupon.coupon_code", "coupon.max_uses", "coupon.per_user_limit"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "coupon_code", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "max_uses", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "per_user_limit", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Coupon", "entity_type": null, "parent_entity": "Promotion"}, "is_no_table": false, "is_subclass": false, "node_tables": [[143, "relation_32"]], "unique_name": "coupon", "mapped_table": [143, "relation_32"], "parent_entity": "promotion", "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": "promotion"}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "max_uses", "type": "INT", "unique_name": "coupon.max_uses", "is_flattened": null, "mapped_table": [143, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "per_user_limit", "type": "INT", "unique_name": "coupon.per_user_limit", "is_flattened": null, "mapped_table": [143, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["coupon", "promotion"], "select_frequency": 3, "select_all_tables": [[136, "relation_31"], [143, "relation_32"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "coupon_code", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 144, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.coupon_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "max_uses", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 145, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.max_uses", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "per_user_limit", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 146, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.per_user_limit", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["warehouse"]}, "name": "Warehouse", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 147, "attributes": ["warehouse.warehouse_id", "warehouse.warehouse_name", "warehouse.region"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "warehouse_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "warehouse_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "region", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Warehouse", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[147, "relation_33"]], "unique_name": "warehouse", "mapped_table": [147, "relation_33"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "warehouse_name", "type": "VARCHAR", "unique_name": "warehouse.warehouse_name", "is_flattened": null, "mapped_table": [147, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "region", "type": "VARCHAR", "unique_name": "warehouse.region", "is_flattened": null, "mapped_table": [147, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_33"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warehouse_id", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 148, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehouse.warehouse_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "warehouse_name", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 149, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.warehouse_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "region", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 150, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.region", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], [["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["warehouse_id", "INTEGER", "warehouse_id"]], []], "reference_node": ["warehouse"], "reference_table": ["relation_33"], "table_key_entities": [["warehouse"], ["warehousebin"]]}, "name": "WarehouseBin", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 151, "attributes": ["warehousebin.bin_id", "warehousebin.code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "bin_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WarehouseBin", "entity_type": null, "parent_entity": "Warehouse"}, "is_no_table": false, "is_subclass": false, "node_tables": [[151, "relation_34"]], "unique_name": "warehousebin", "mapped_table": [151, "relation_34"], "parent_entity": "warehouse", "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": "warehouse"}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "code", "type": "VARCHAR", "unique_name": "warehousebin.code", "is_flattened": null, "mapped_table": [151, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehousebin", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehousebin", "warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_33"], [151, "relation_34"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "bin_id", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 152, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehousebin.bin_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "code", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 153, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehousebin.code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["supplier"]}, "name": "Supplier", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 154, "attributes": ["supplier.supplier_id", "supplier.supplier_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "supplier_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "supplier_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Supplier", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[154, "relation_35"]], "unique_name": "supplier", "mapped_table": [154, "relation_35"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "supplier_name", "type": "VARCHAR", "unique_name": "supplier.supplier_name", "is_flattened": null, "mapped_table": [154, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supplier", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["supplier"], "select_frequency": 3, "select_all_tables": [[154, "relation_35"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "supplier_id", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 155, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "supplier.supplier_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "supplier_name", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 156, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supplier.supplier_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["contact_id", "INTEGER", "suppliercontact.contact_id", "contact_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], []], "reference_node": ["supplier"], "reference_table": ["relation_35"], "table_key_entities": [["supplier"], ["suppliercontact"]]}, "name": "SupplierContact", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 157, "attributes": ["suppliercontact.contact_id", "suppliercontact.email", "suppliercontact.phone"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "contact_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "phone", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupplierContact", "entity_type": null, "parent_entity": "Supplier"}, "is_no_table": false, "is_subclass": false, "node_tables": [[157, "relation_36"]], "unique_name": "suppliercontact", "mapped_table": [157, "relation_36"], "parent_entity": "supplier", "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": "supplier"}, {"pk_name": "contact_id", "pk_type": "INTEGER", "pk_ER_name": "contact_id", "pk_entity_name": "suppliercontact", "pk_unique_name": "suppliercontact.contact_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "suppliercontact.email", "is_flattened": null, "mapped_table": [157, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "phone", "type": "VARCHAR", "unique_name": "suppliercontact.phone", "is_flattened": null, "mapped_table": [157, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["suppliercontact", "supplier"], "select_frequency": 3, "select_all_tables": [[154, "relation_35"], [157, "relation_36"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "contact_id", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 158, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "suppliercontact.contact_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 159, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "phone", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 160, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.phone", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["purchaseorder"]}, "name": "PurchaseOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 161, "attributes": ["purchaseorder.purchaseorder_id", "purchaseorder.created_at", "purchaseorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "purchaseorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PurchaseOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[161, "relation_37"]], "unique_name": "purchaseorder", "mapped_table": [161, "relation_37"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "purchaseorder.created_at", "is_flattened": null, "mapped_table": [161, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "purchaseorder.status", "is_flattened": null, "mapped_table": [161, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["purchaseorder"], "select_frequency": 4, "select_all_tables": [[161, "relation_37"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "purchaseorder_id", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 162, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "purchaseorder.purchaseorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 163, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 164, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["courierpartner"]}, "name": "CourierPartner", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 165, "attributes": ["courierpartner.courierpartner_id", "courierpartner.carrier_code", "courierpartner.webhook_url"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "courierpartner_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "carrier_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "webhook_url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CourierPartner", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[165, "relation_38"]], "unique_name": "courierpartner", "mapped_table": [165, "relation_38"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier_code", "type": "VARCHAR", "unique_name": "courierpartner.carrier_code", "is_flattened": null, "mapped_table": [165, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "webhook_url", "type": "VARCHAR", "unique_name": "courierpartner.webhook_url", "is_flattened": null, "mapped_table": [165, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["courierpartner"], "select_frequency": 1, "select_all_tables": [[165, "relation_38"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "courierpartner_id", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 166, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "courierpartner.courierpartner_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier_code", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 167, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.carrier_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "webhook_url", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 168, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.webhook_url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["category_products_category_id", "INTEGER", "category_id", "category_products_category_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["category_id", "INTEGER", "category_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_0"], "table_key_entities": [["product"], ["category"]]}, "name": "category_products", "type": "RELATIONSHIP", "entity1": "category", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Category", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "category_products"}, "sort_key": 169, "attributes": [], "node_tables": [[169, "relation_39"]], "unique_name": "category_products", "mapped_table": [169, "relation_39"], "relation_size": 483, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "category_products_category_id", "pk_type": "INTEGER", "pk_ER_name": "category_products_category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": "category_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "category_id", "pk_reference_node_unique_name": null}], "insert_frequency": 483, "select_all_nodes": ["category_products", "category", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [169, "relation_39"], [1, "relation_0"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["tag_id", "INTEGER", "tag_id", "tag_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["tag_id", "INTEGER", "tag_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_23"], "table_key_entities": [["product"], ["tag"]]}, "name": "product_tags", "type": "RELATIONSHIP", "entity1": "product", "entity2": "tag", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Tag", "role": null, "total": true}, "attributes": [], "table_name": "product_tags"}, "sort_key": 170, "attributes": [], "node_tables": [[170, "relation_40"]], "unique_name": "product_tags", "mapped_table": [170, "relation_40"], "relation_size": 3172, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": "tag_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "tag_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3172, "select_all_nodes": ["product_tags", "product", "tag"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [93, "relation_23"], [170, "relation_40"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["bought_together_product_product_id", "INTEGER", "product_id", "bought_together_product_product_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_1"], "table_key_entities": [["product"], ["product"]]}, "name": "bought_together", "type": "RELATIONSHIP", "entity1": "product", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": "product_id", "total": true}, "entity2": {"one": false, "name": "Product", "role": "bought_together_product_id", "total": true}, "attributes": [], "table_name": "bought_together"}, "sort_key": 171, "attributes": [], "node_tables": [[171, "relation_41"]], "unique_name": "bought_together", "mapped_table": [171, "relation_41"], "relation_size": 4151, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "bought_together_product_product_id", "pk_type": "INTEGER", "pk_ER_name": "bought_together_product_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 4151, "select_all_nodes": ["bought_together", "product", "product"], "select_frequency": 0, "select_all_tables": [[5, "temp_product"], [171, "relation_41"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": ["product_id", "bought_together_product_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_26", "relation_1"], "table_key_entities": [["cart"], ["product"]]}, "name": "cart_contains", "type": "RELATIONSHIP", "entity1": "cart", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Cart", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "cart_contains"}, "sort_key": 172, "attributes": [], "node_tables": [[172, "relation_42"]], "unique_name": "cart_contains", "mapped_table": [172, "relation_42"], "relation_size": 202, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "cart", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 202, "select_all_nodes": ["cart_contains", "cart", "customer", "product"], "select_frequency": 2, "select_all_tables": [[58, "relation_16"], [172, "relation_42"], [57, "relation_15"], [5, "temp_product"], [54, "relation_14"], [60, "relation_17"], [111, "relation_26"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_27", "relation_1"], "table_key_entities": [["wishlist"], ["product"]]}, "name": "wishlist_contains", "type": "RELATIONSHIP", "entity1": "wishlist", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Wishlist", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "wishlist_contains"}, "sort_key": 173, "attributes": [], "node_tables": [[173, "relation_43"]], "unique_name": "wishlist_contains", "mapped_table": [173, "relation_43"], "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "wishlist", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": "wishlist_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "wishlist.wishlist_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["wishlist_contains", "wishlist", "customer", "product"], "select_frequency": 2, "select_all_tables": [[58, "relation_16"], [57, "relation_15"], [5, "temp_product"], [54, "relation_14"], [60, "relation_17"], [173, "relation_43"], [113, "relation_27"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["review_id", "INTEGER", "review.review_id", "review_id"]], [["reviews_product_id", "INTEGER", "product_id", "reviews_product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["review_id", "INTEGER", "review.review_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_28", "relation_1"], "table_key_entities": [["review"], ["product"]]}, "name": "reviews", "type": "RELATIONSHIP", "entity1": "product", "entity2": "review", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Review", "role": null, "total": true}, "attributes": [], "table_name": "reviews"}, "sort_key": 174, "attributes": [], "node_tables": [[174, "relation_44"]], "unique_name": "reviews", "mapped_table": [174, "relation_44"], "relation_size": 47, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "review", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": "review_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "review.review_id", "pk_reference_node_unique_name": null}, {"pk_name": "reviews_product_id", "pk_type": "INTEGER", "pk_ER_name": "reviews_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 47, "select_all_nodes": ["reviews", "product", "review", "customer"], "select_frequency": 1, "select_all_tables": [[58, "relation_16"], [174, "relation_44"], [116, "relation_28"], [57, "relation_15"], [5, "temp_product"], [54, "relation_14"], [60, "relation_17"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 18, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders_customer_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"]]], "reference_node": [], "reference_table": ["relation_29", "relation_16"], "table_key_entities": [["custorder"], ["customer"]]}, "name": "customer_orders", "type": "RELATIONSHIP", "entity1": "customer", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Customer", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "customer_orders"}, "sort_key": 175, "attributes": [], "node_tables": [[175, "relation_45"]], "unique_name": "customer_orders", "mapped_table": [175, "relation_45"], "relation_size": 71, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "customer_orders_customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_orders_customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}], "insert_frequency": 71, "select_all_nodes": ["customer_orders", "customer", "custorder"], "select_frequency": 5, "select_all_tables": [[126, "relation_29"], [58, "relation_16"], [175, "relation_45"], [57, "relation_15"], [54, "relation_14"], [60, "relation_17"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_29", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_items", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_items"}, "sort_key": 176, "attributes": [], "node_tables": [[176, "relation_46"]], "unique_name": "order_items", "mapped_table": [176, "relation_46"], "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_items", "custorder", "product"], "select_frequency": 2, "select_all_tables": [[126, "relation_29"], [176, "relation_46"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["payment_order_customer_id", "INTEGER", "customer_id", "payment_order_customer_id"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order_payment_method_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id"]]], "reference_node": [], "reference_table": ["relation_29", "relation_25"], "table_key_entities": [["custorder"], ["paymentmethod"]]}, "name": "payment_order", "type": "RELATIONSHIP", "entity1": "paymentmethod", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "PaymentMethod", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "payment_order"}, "sort_key": 177, "attributes": [], "node_tables": [[177, "relation_47"]], "unique_name": "payment_order", "mapped_table": [177, "relation_47"], "relation_size": 90, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_customer_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_customer_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": "payment_method_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "paymentmethod.payment_method_id", "pk_reference_node_unique_name": null}], "insert_frequency": 90, "select_all_nodes": ["payment_order", "paymentmethod", "customer", "custorder"], "select_frequency": 2, "select_all_tables": [[126, "relation_29"], [58, "relation_16"], [104, "relation_25"], [57, "relation_15"], [54, "relation_14"], [60, "relation_17"], [177, "relation_47"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_29", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_returns", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_returns"}, "sort_key": 178, "attributes": [], "node_tables": [[178, "relation_48"]], "unique_name": "order_returns", "mapped_table": [178, "relation_48"], "relation_size": 188, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 188, "select_all_nodes": ["order_returns", "custorder", "product"], "select_frequency": 1, "select_all_tables": [[126, "relation_29"], [178, "relation_48"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]], [["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons_custorder_id"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code"]], [["custorder_id", "INTEGER", "custorder_id"]]], "reference_node": [], "reference_table": ["relation_32", "relation_29"], "table_key_entities": [["coupon"], ["custorder"]]}, "name": "order_coupons", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "coupon", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Coupon", "role": null, "total": true}, "attributes": [], "table_name": "order_coupons"}, "sort_key": 179, "attributes": [], "node_tables": [[179, "relation_49"]], "unique_name": "order_coupons", "mapped_table": [179, "relation_49"], "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "coupon", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": null}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": "coupon_code", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "coupon.coupon_code", "pk_reference_node_unique_name": null}, {"pk_name": "order_coupons_custorder_id", "pk_type": "INTEGER", "pk_ER_name": "order_coupons_custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_coupons", "custorder", "coupon", "promotion"], "select_frequency": 1, "select_all_tables": [[126, "relation_29"], [136, "relation_31"], [143, "relation_32"], [179, "relation_49"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_34"], "table_key_entities": [["product"], ["warehousebin"]]}, "name": "stock", "type": "RELATIONSHIP", "entity1": "product", "entity2": "warehousebin", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "WarehouseBin", "role": null, "total": true}, "attributes": [], "table_name": "stock"}, "sort_key": 180, "attributes": [], "node_tables": [[180, "relation_50"]], "unique_name": "stock", "mapped_table": [180, "relation_50"], "relation_size": 3173, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": null}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": "bin_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehousebin.bin_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3173, "select_all_nodes": ["stock", "product", "warehousebin", "warehouse"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [147, "relation_33"], [180, "relation_50"], [151, "relation_34"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_35", "relation_1"], "table_key_entities": [["supplier"], ["product"]]}, "name": "supplier_products", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "supplier_products"}, "sort_key": 181, "attributes": [], "node_tables": [[181, "relation_51"]], "unique_name": "supplier_products", "mapped_table": [181, "relation_51"], "relation_size": 159, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 159, "select_all_nodes": ["supplier_products", "supplier", "product"], "select_frequency": 1, "select_all_tables": [[154, "relation_35"], [181, "relation_51"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos_supplier_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["supplier_id", "INTEGER", "supplier_id"]]], "reference_node": [], "reference_table": ["relation_37", "relation_35"], "table_key_entities": [["purchaseorder"], ["supplier"]]}, "name": "supplier_pos", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "purchaseorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "attributes": [], "table_name": "supplier_pos"}, "sort_key": 182, "attributes": [], "node_tables": [[182, "relation_52"]], "unique_name": "supplier_pos", "mapped_table": [182, "relation_52"], "relation_size": 87, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "supplier_pos_supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_pos_supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}], "insert_frequency": 87, "select_all_nodes": ["supplier_pos", "supplier", "purchaseorder"], "select_frequency": 1, "select_all_tables": [[154, "relation_35"], [182, "relation_52"], [161, "relation_37"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 5, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_37", "relation_1"], "table_key_entities": [["purchaseorder"], ["product"]]}, "name": "po_items", "type": "RELATIONSHIP", "entity1": "purchaseorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "po_items"}, "sort_key": 183, "attributes": [], "node_tables": [[183, "relation_53"]], "unique_name": "po_items", "mapped_table": [183, "relation_53"], "relation_size": 156, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 156, "select_all_nodes": ["po_items", "purchaseorder", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [183, "relation_53"], [161, "relation_37"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]], [["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments_courierpartner_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id"]], [["courierpartner_id", "INTEGER", "courierpartner_id"]]], "reference_node": [], "reference_table": ["relation_30", "relation_38"], "table_key_entities": [["shipment"], ["courierpartner"]]}, "name": "courier_shipments", "type": "RELATIONSHIP", "entity1": "courierpartner", "entity2": "shipment", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CourierPartner", "role": null, "total": true}, "entity2": {"one": false, "name": "Shipment", "role": null, "total": true}, "attributes": [], "table_name": "courier_shipments"}, "sort_key": 184, "attributes": [], "node_tables": [[184, "relation_54"]], "unique_name": "courier_shipments", "mapped_table": [184, "relation_54"], "relation_size": 95, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "shipment", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": "shipment_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "shipment.shipment_id", "pk_reference_node_unique_name": null}, {"pk_name": "courier_shipments_courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courier_shipments_courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": "courierpartner_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "courierpartner_id", "pk_reference_node_unique_name": null}], "insert_frequency": 95, "select_all_nodes": ["courier_shipments", "courierpartner", "shipment", "custorder"], "select_frequency": 2, "select_all_tables": [[126, "relation_29"], [184, "relation_54"], [130, "relation_30"], [165, "relation_38"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 11, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_7", "relation_7"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundle_phones", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundle_phones"}, "sort_key": 185, "attributes": [], "node_tables": [[185, "relation_55"]], "unique_name": "bundle_phones", "mapped_table": [185, "relation_55"], "relation_size": 207, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundle_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundle_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 207, "select_all_nodes": ["bundle_phones", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[5, "relation_1"], [13, "relation_3"], [185, "relation_55"], [12, "relation_2"], [17, "relation_4"], [32, "relation_7"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "bundle_phone_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["smartwatch_id", "INTEGER", "electronics_id", "smartwatch_id"]], [["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch_phone_id"]]], "reference_key": [[["electronics_id", "INTEGER", "electronics_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_4", "relation_7"], "table_key_entities": [["smartwatch"], ["phone"]]}, "name": "bundled_phone_smart_watch", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "smartwatch", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": null, "total": true}, "entity2": {"one": false, "name": "Smartwatch", "role": null, "total": true}, "attributes": [], "table_name": "bundled_phone_smart_watch"}, "sort_key": 186, "attributes": [], "node_tables": [[186, "relation_56"]], "unique_name": "bundled_phone_smart_watch", "mapped_table": [186, "relation_56"], "relation_size": 48, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundled_phone_smart_watch_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundled_phone_smart_watch_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 48, "select_all_nodes": ["bundled_phone_smart_watch", "phone", "smartwatch"], "select_frequency": 1, "select_all_tables": [[5, "relation_1"], [13, "relation_3"], [186, "relation_56"], [12, "relation_2"], [17, "relation_4"], [32, "relation_7"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "single_bundle_phone_bundled_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_7", "relation_7"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundled_phone", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "single_bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundled_phone"}, "sort_key": 187, "attributes": [], "node_tables": [[187, "relation_57"]], "unique_name": "bundled_phone", "mapped_table": [187, "relation_57"], "relation_size": 12, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "single_bundle_phone_bundled_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "single_bundle_phone_bundled_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 12, "select_all_nodes": ["bundled_phone", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[5, "relation_1"], [187, "relation_57"], [13, "relation_3"], [12, "relation_2"], [17, "relation_4"], [32, "relation_7"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "single_bundle_phone_id"], "node_type_for_partitioning_options": "1_N_relationship"}], "config": {"tag": "all_by_itself", "cart": "all_by_itself", "user": "all_by_itself", "media": "partially_by_itself", "phone": "partially_by_itself", "stock": "all_by_itself", "camera": "contained_in_parent", "coupon": "all_by_itself", "laptop": "contained_in_parent", "review": "all_by_itself", "tablet": "contained_in_parent", "address": "all_by_itself", "apparel": "partially_by_itself", "desktop": "all_by_itself", "product": "all_by_itself", "reviews": "all_by_itself", "category": "all_by_itself", "clothing": "all_by_itself", "computer": "partially_by_itself", "customer": "partially_by_itself", "employee": "partially_by_itself", "engineer": "contained_in_parent", "footwear": "all_by_itself", "po_items": "all_by_itself", "shipment": "all_by_itself", "software": "partially_by_itself", "supplier": "all_by_itself", "wishlist": "all_by_itself", "appliance": "contained_in_parent", "custorder": "all_by_itself", "promotion": "all_by_itself", "warehouse": "all_by_itself", "smartwatch": "contained_in_parent", "accessories": "contained_in_parent", "electronics": "partially_by_itself", "menclothing": "contained_in_parent", "order_items": "all_by_itself", "pricehistory": "contained_in_parent", "product_tags": "all_by_itself", "productimage": "contained_in_parent", "supplier_pos": "all_by_itself", "supportagent": "partially_by_itself", "user.mv_user": "all_by_itself", "warehousebin": "all_by_itself", "bundle_phones": "all_by_itself", "bundled_phone": "all_by_itself", "cart_contains": "all_by_itself", "order_coupons": "all_by_itself", "order_returns": "all_by_itself", "payment_order": "all_by_itself", "paymentmethod": "all_by_itself", "primecustomer": "contained_in_parent", "purchaseorder": "all_by_itself", "womenclothing": "partially_by_itself", "courierpartner": "all_by_itself", "digitalproduct": "contained_in_parent", "productvariant": "contained_in_parent", "bought_together": "all_by_itself", "browsingsession": "contained_in_parent", "categorymanager": "partially_by_itself", "customer_orders": "all_by_itself", "physicalproduct": "partially_by_itself", "suppliercontact": "all_by_itself", "businesscustomer": "contained_in_parent", "kitchenappliance": "contained_in_parent", "category_products": "all_by_itself", "corporateemployee": "contained_in_parent", "courier_shipments": "all_by_itself", "supplier_products": "all_by_itself", "wishlist_contains": "all_by_itself", "customer.contact_no": "all_by_itself", "fulfillmentassociate": "partially_by_itself", "product.mv_attributes": "all_by_itself", "bundled_phone_smart_watch": "all_by_itself", "primecustomer.subscription_addons": "all_by_itself"}}
\.


--
-- Data for Name: relation_0; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_0 (category_id, category_name, parent) FROM stdin;
1	fact	138
2	local	583
3	piece	868
4	deep	822
5	statement	783
6	arrive	65
7	number	262
8	hand	121
9	authority	508
10	why	780
11	alone	461
12	cultural	484
13	item	668
14	themselves	389
15	analysis	808
16	light	215
17	prepare	97
18	my	500
19	final	30
20	clearly	915
21	yeah	856
22	else	400
23	return	444
24	pattern	623
25	interesting	781
26	course	786
27	effort	3
28	direction	713
29	consumer	457
30	lawyer	273
31	young	739
32	just	822
33	least	235
34	focus	606
35	successful	968
36	another	105
37	cost	924
38	performance	326
39	she	32
40	natural	23
41	necessary	27
42	dog	666
43	this	555
44	family	10
45	senior	962
46	clear	903
47	without	391
48	receive	703
49	behavior	222
50	manager	993
51	training	433
52	conference	744
53	official	30
54	let	541
55	central	228
56	after	783
57	better	449
58	growth	962
59	spend	508
60	important	567
61	open	239
62	television	354
63	cover	237
64	operation	694
65	fish	225
66	this	780
67	bit	471
68	raise	976
69	five	297
70	employee	949
71	someone	23
72	who	427
73	whatever	858
74	produce	939
75	speak	570
76	enjoy	945
77	population	658
78	coach	103
79	matter	191
80	it	645
81	we	742
82	popular	881
83	guess	304
84	this	124
85	pretty	761
86	off	341
87	experience	918
88	beyond	739
89	article	997
90	that	729
91	coach	513
92	more	959
93	and	991
94	free	433
95	training	520
96	attack	850
97	rather	933
98	guy	687
99	art	195
100	growth	311
\.


--
-- Data for Name: relation_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_1 (product_id, sku, product_name, base_price, is_active, quantity, delivery_type, role, productimage, productvariant, pricehistory) FROM stdin;
1	tonight	social	291	602	997	\N	product	\N	\N	\N
2	themselves	action	867	964	518	\N	product	\N	\N	\N
4	with	plan	249	762	817	\N	product	\N	\N	\N
5	pick	Congress	425	681	178	\N	product	\N	\N	\N
6	together	public	562	904	720	\N	product	\N	\N	\N
7	generation	main	89	450	680	\N	product	\N	\N	\N
8	community	no	798	168	534	\N	product	\N	\N	\N
9	artist	account	380	502	751	\N	product	\N	\N	\N
10	reality	smile	481	45	316	\N	product	\N	\N	\N
11	performance	according	663	175	173	\N	product	\N	\N	\N
12	center	sign	13	790	205	\N	product	\N	\N	\N
14	Mrs	magazine	471	932	276	\N	product	\N	\N	\N
15	billion	future	393	803	878	\N	product	\N	\N	\N
16	raise	collection	532	797	575	\N	product	\N	\N	\N
17	imagine	police	437	973	58	\N	product	\N	\N	\N
18	defense	plant	891	374	584	\N	product	\N	\N	\N
19	especially	himself	964	517	424	\N	product	\N	\N	\N
20	response	teach	833	366	425	\N	product	\N	\N	\N
21	never	give	2	552	554	\N	product	\N	\N	\N
22	beat	air	470	615	29	\N	product	\N	\N	\N
24	bill	range	882	94	818	\N	product	\N	\N	\N
25	note	doctor	34	862	967	\N	product	\N	\N	\N
26	friend	allow	86	889	18	\N	product	\N	\N	\N
27	management	fly	15	773	774	\N	product	\N	\N	\N
28	require	right	256	276	113	\N	product	\N	\N	\N
29	difference	trial	353	298	72	\N	product	\N	\N	\N
30	bit	certain	164	262	541	\N	product	\N	\N	\N
31	note	property	673	280	664	\N	product	\N	\N	\N
33	maintain	hundred	486	117	25	\N	product	\N	\N	\N
34	Republican	population	396	352	432	\N	product	\N	\N	\N
35	central	director	265	112	260	\N	product	\N	\N	\N
36	west	there	989	621	443	\N	product	\N	\N	\N
37	child	sense	231	19	407	\N	product	\N	\N	\N
38	site	account	37	737	983	\N	product	\N	\N	\N
39	maintain	present	457	722	519	\N	product	\N	\N	\N
40	drop	long	558	853	226	\N	product	\N	\N	\N
41	notice	treat	229	537	665	\N	product	\N	\N	\N
43	ever	office	676	647	437	\N	product	\N	\N	\N
44	eat	over	756	306	129	\N	product	\N	\N	\N
45	my	suggest	897	49	314	\N	product	\N	\N	\N
46	walk	or	880	79	318	\N	product	\N	\N	\N
47	eight	special	762	163	427	\N	product	\N	\N	\N
48	return	heavy	134	9	575	\N	product	\N	\N	\N
49	military	hand	605	840	223	\N	product	\N	\N	\N
50	shoulder	manage	176	848	889	\N	product	\N	\N	\N
51	more	lay	388	206	356	\N	product	\N	\N	\N
52	them	front	211	588	691	\N	product	\N	\N	\N
53	raise	society	606	199	505	\N	product	\N	\N	\N
54	me	her	961	682	400	\N	product	\N	\N	\N
57	American	trouble	19	161	206	\N	product	\N	\N	\N
58	inside	environment	831	577	802	\N	product	\N	\N	\N
59	laugh	inside	348	440	219	\N	product	\N	\N	\N
60	general	newspaper	691	99	858	\N	product	\N	\N	\N
61	current	me	955	561	353	\N	product	\N	\N	\N
62	group	position	787	546	241	\N	product	\N	\N	\N
63	guy	rule	743	42	87	\N	product	\N	\N	\N
64	discover	deal	174	171	933	\N	product	\N	\N	\N
65	office	idea	275	778	341	\N	product	\N	\N	\N
66	difference	own	377	347	349	\N	product	\N	\N	\N
67	concern	talk	299	241	889	\N	product	\N	\N	\N
68	much	anyone	139	594	565	\N	product	\N	\N	\N
69	scene	into	329	41	417	\N	product	\N	\N	\N
70	whole	international	390	887	808	\N	product	\N	\N	\N
71	middle	man	849	129	350	\N	product	\N	\N	\N
72	avoid	from	630	602	801	\N	product	\N	\N	\N
73	already	decision	79	585	564	\N	product	\N	\N	\N
74	religious	player	580	84	976	\N	product	\N	\N	\N
76	candidate	together	469	919	284	\N	product	\N	\N	\N
77	deep	find	806	47	848	\N	product	\N	\N	\N
78	level	organization	13	629	687	\N	product	\N	\N	\N
79	simple	these	94	424	118	\N	product	\N	\N	\N
80	mean	hot	193	246	805	\N	product	\N	\N	\N
81	be	race	166	119	462	\N	product	\N	\N	\N
82	similar	box	698	248	163	\N	product	\N	\N	\N
83	it	his	446	933	988	\N	product	\N	\N	\N
84	girl	almost	826	994	556	\N	product	\N	\N	\N
85	check	agency	564	260	729	\N	product	\N	\N	\N
86	director	one	323	103	213	\N	product	\N	\N	\N
87	though	window	41	28	11	\N	product	\N	\N	\N
88	relationship	throw	744	611	328	\N	product	\N	\N	\N
89	lose	without	401	321	409	\N	product	\N	\N	\N
90	rest	painting	66	936	325	\N	product	\N	\N	\N
91	yet	sport	115	257	221	\N	product	\N	\N	\N
92	put	receive	678	365	266	\N	product	\N	\N	\N
93	Mr	message	555	213	315	\N	product	\N	\N	\N
94	activity	writer	253	370	84	\N	product	\N	\N	\N
95	situation	team	92	772	459	\N	product	\N	\N	\N
96	own	interview	668	589	659	\N	product	\N	\N	\N
98	try	summer	43	336	192	\N	product	\N	\N	\N
99	play	sort	812	868	593	\N	product	\N	\N	\N
100	entire	history	252	343	104	\N	product	\N	\N	\N
103	drug	receive	747	77	23	\N	physicalproduct	\N	\N	\N
104	as	political	298	769	812	\N	physicalproduct	\N	\N	\N
105	rather	example	506	481	884	\N	physicalproduct	\N	\N	\N
42	somebody	make	405	692	590	\N	product	\N	[{"barcode": "apply", "variant_id": "910", "price_override": "262", "is_active_variant": "476"}]	\N
56	over	no	627	893	412	\N	product	\N	\N	[{"price": "197", "ends_at": "toward", "price_id": "760", "starts_at": "fish"}]
102	billion	senior	412	75	275	\N	physicalproduct	\N	\N	[{"price": "102", "ends_at": "moment", "price_id": "540", "starts_at": "hear"}]
106	story	test	104	514	797	\N	physicalproduct	\N	\N	\N
107	body	note	79	522	973	\N	physicalproduct	\N	\N	\N
108	drop	like	184	795	154	\N	physicalproduct	\N	\N	\N
109	then	drop	842	887	328	\N	physicalproduct	\N	\N	\N
110	anything	crime	110	727	527	\N	physicalproduct	\N	\N	\N
112	clearly	such	559	933	740	\N	physicalproduct	\N	\N	\N
114	who	still	183	307	444	\N	physicalproduct	\N	\N	\N
115	play	half	50	732	883	\N	physicalproduct	\N	\N	\N
116	citizen	audience	259	797	66	\N	physicalproduct	\N	\N	\N
118	attack	so	555	450	872	\N	physicalproduct	\N	\N	\N
119	seek	model	12	406	857	\N	physicalproduct	\N	\N	\N
120	third	visit	176	265	498	\N	physicalproduct	\N	\N	\N
121	agent	learn	813	662	956	\N	physicalproduct	\N	\N	\N
122	least	computer	1000	585	20	\N	physicalproduct	\N	\N	\N
123	husband	upon	709	364	594	\N	physicalproduct	\N	\N	\N
124	enough	paper	608	129	142	\N	physicalproduct	\N	\N	\N
125	physical	down	849	284	408	\N	physicalproduct	\N	\N	\N
126	reduce	what	177	628	92	\N	physicalproduct	\N	\N	\N
128	table	garden	513	915	665	\N	physicalproduct	\N	\N	\N
129	training	how	953	703	655	\N	physicalproduct	\N	\N	\N
130	enjoy	treatment	245	321	507	\N	physicalproduct	\N	\N	\N
131	coach	their	980	231	730	\N	physicalproduct	\N	\N	\N
132	sister	foreign	346	574	626	\N	physicalproduct	\N	\N	\N
133	central	performance	996	662	225	\N	physicalproduct	\N	\N	\N
134	issue	imagine	944	74	782	\N	physicalproduct	\N	\N	\N
135	here	appear	164	524	785	\N	physicalproduct	\N	\N	\N
136	early	peace	320	306	710	\N	physicalproduct	\N	\N	\N
137	land	one	870	566	381	\N	physicalproduct	\N	\N	\N
138	mission	dark	719	719	755	\N	physicalproduct	\N	\N	\N
139	anything	property	609	88	877	\N	physicalproduct	\N	\N	\N
140	process	miss	919	621	984	\N	physicalproduct	\N	\N	\N
142	us	speech	223	965	584	\N	physicalproduct	\N	\N	\N
143	official	I	507	698	404	\N	physicalproduct	\N	\N	\N
144	could	plan	394	528	866	\N	physicalproduct	\N	\N	\N
145	half	leader	558	748	42	\N	physicalproduct	\N	\N	\N
146	carry	full	828	262	644	\N	physicalproduct	\N	\N	\N
147	pull	share	274	755	935	\N	physicalproduct	\N	\N	\N
148	set	Congress	983	999	143	\N	physicalproduct	\N	\N	\N
150	recently	again	995	872	392	\N	physicalproduct	\N	\N	\N
151	life	toward	407	169	932	\N	physicalproduct	\N	\N	\N
152	under	across	449	130	638	\N	physicalproduct	\N	\N	\N
153	allow	difficult	983	218	123	\N	physicalproduct	\N	\N	\N
154	meet	return	616	547	419	\N	physicalproduct	\N	\N	\N
155	individual	little	677	303	285	\N	physicalproduct	\N	\N	\N
157	job	soon	983	195	542	\N	physicalproduct	\N	\N	\N
158	no	local	593	22	32	\N	physicalproduct	\N	\N	\N
159	should	either	856	267	212	\N	physicalproduct	\N	\N	\N
160	concern	treatment	292	152	556	\N	physicalproduct	\N	\N	\N
161	official	pressure	280	319	600	\N	physicalproduct	\N	\N	\N
162	end	beat	853	700	458	\N	physicalproduct	\N	\N	\N
163	believe	child	559	366	503	\N	physicalproduct	\N	\N	\N
164	foot	collection	877	125	788	\N	physicalproduct	\N	\N	\N
165	south	when	585	901	393	\N	physicalproduct	\N	\N	\N
166	husband	yourself	291	831	111	\N	physicalproduct	\N	\N	\N
167	figure	customer	121	583	766	\N	physicalproduct	\N	\N	\N
168	mother	hotel	559	304	989	\N	physicalproduct	\N	\N	\N
169	rest	recognize	77	513	383	\N	physicalproduct	\N	\N	\N
170	late	law	448	516	694	\N	physicalproduct	\N	\N	\N
171	just	government	777	542	332	\N	physicalproduct	\N	\N	\N
172	whom	worker	127	453	736	\N	physicalproduct	\N	\N	\N
173	week	protect	359	313	553	\N	physicalproduct	\N	\N	\N
174	break	rate	348	802	749	\N	physicalproduct	\N	\N	\N
175	leader	then	116	664	940	\N	physicalproduct	\N	\N	\N
176	spring	issue	392	209	571	\N	physicalproduct	\N	\N	\N
177	father	brother	285	651	613	\N	physicalproduct	\N	\N	\N
178	alone	product	946	473	616	\N	physicalproduct	\N	\N	\N
179	black	short	960	763	730	\N	physicalproduct	\N	\N	\N
180	act	point	720	175	461	\N	physicalproduct	\N	\N	\N
181	mouth	house	369	539	4	\N	physicalproduct	\N	\N	\N
182	run	change	594	437	994	\N	physicalproduct	\N	\N	\N
183	answer	consumer	345	882	637	\N	physicalproduct	\N	\N	\N
184	say	into	505	764	254	\N	physicalproduct	\N	\N	\N
185	on	foot	645	22	417	\N	physicalproduct	\N	\N	\N
186	court	every	649	798	960	\N	physicalproduct	\N	\N	\N
187	early	commercial	802	277	867	\N	physicalproduct	\N	\N	\N
188	could	record	786	76	835	\N	physicalproduct	\N	\N	\N
189	stop	oil	358	935	271	\N	physicalproduct	\N	\N	\N
190	dream	citizen	895	702	558	\N	physicalproduct	\N	\N	\N
191	ok	government	156	474	853	\N	physicalproduct	\N	\N	\N
192	article	cup	497	174	479	\N	physicalproduct	\N	\N	\N
193	relate	task	278	523	101	\N	physicalproduct	\N	\N	\N
194	hair	authority	72	364	69	\N	physicalproduct	\N	\N	\N
195	buy	apply	21	169	520	\N	physicalproduct	\N	\N	\N
197	yard	or	620	312	214	\N	physicalproduct	\N	\N	\N
198	stay	clearly	243	908	342	\N	physicalproduct	\N	\N	\N
199	watch	arm	71	77	716	\N	physicalproduct	\N	\N	\N
200	send	suffer	480	524	572	\N	physicalproduct	\N	\N	\N
201	thousand	report	173	305	669	now	digitalproduct	\N	\N	\N
113	need	order	799	324	841	\N	physicalproduct	\N	\N	[{"price": "102", "ends_at": "agency", "price_id": "140", "starts_at": "event"}]
202	face	peace	365	625	758	explain	digitalproduct	\N	\N	\N
203	interest	water	402	575	410	me	digitalproduct	\N	\N	\N
204	collection	his	496	809	266	easy	digitalproduct	\N	\N	\N
205	production	us	734	228	265	level	digitalproduct	\N	\N	\N
206	prevent	vote	865	677	32	wait	digitalproduct	\N	\N	\N
207	would	thing	325	951	443	general	digitalproduct	\N	\N	\N
208	appear	finish	805	276	195	protect	digitalproduct	\N	\N	\N
209	little	nor	641	750	170	enter	digitalproduct	\N	\N	\N
211	common	together	621	969	269	service	digitalproduct	\N	\N	\N
212	particular	support	540	167	142	finally	digitalproduct	\N	\N	\N
213	stay	professional	916	733	452	capital	digitalproduct	\N	\N	\N
214	seem	number	318	770	411	begin	digitalproduct	\N	\N	\N
215	rich	others	119	736	212	single	digitalproduct	\N	\N	\N
216	industry	level	70	109	234	heart	digitalproduct	\N	\N	\N
217	turn	whom	330	505	951	ground	digitalproduct	\N	\N	\N
218	choice	card	979	192	47	daughter	digitalproduct	\N	\N	\N
219	when	fear	829	612	24	conference	digitalproduct	\N	\N	\N
220	director	week	700	36	507	difference	digitalproduct	\N	\N	\N
221	everybody	travel	351	679	858	message	digitalproduct	\N	\N	\N
222	operation	why	121	628	710	pressure	digitalproduct	\N	\N	\N
223	though	painting	98	228	410	front	digitalproduct	\N	\N	\N
224	bit	commercial	507	461	387	better	digitalproduct	\N	\N	\N
225	arm	best	997	238	242	them	digitalproduct	\N	\N	\N
226	most	listen	474	561	594	strategy	digitalproduct	\N	\N	\N
227	dinner	cut	217	463	733	large	digitalproduct	\N	\N	\N
229	writer	establish	932	219	81	summer	digitalproduct	\N	\N	\N
230	couple	lawyer	16	817	6	role	digitalproduct	\N	\N	\N
231	man	simple	328	911	393	financial	digitalproduct	\N	\N	\N
232	figure	federal	941	201	410	including	digitalproduct	\N	\N	\N
233	police	face	902	845	777	word	digitalproduct	\N	\N	\N
234	nation	than	813	936	32	dinner	digitalproduct	\N	\N	\N
235	home	work	397	149	898	recognize	digitalproduct	\N	\N	\N
237	dream	although	82	474	668	experience	digitalproduct	\N	\N	\N
238	so	watch	928	15	37	week	digitalproduct	\N	\N	\N
239	walk	girl	538	861	133	term	digitalproduct	\N	\N	\N
240	head	gas	956	281	800	member	digitalproduct	\N	\N	\N
241	identify	everybody	443	94	195	road	digitalproduct	\N	\N	\N
242	skill	free	512	653	134	author	digitalproduct	\N	\N	\N
243	strategy	break	704	837	866	majority	digitalproduct	\N	\N	\N
244	step	simply	679	459	400	yet	digitalproduct	\N	\N	\N
245	vote	opportunity	647	275	993	south	digitalproduct	\N	\N	\N
246	little	although	658	651	249	if	digitalproduct	\N	\N	\N
247	spend	statement	62	603	958	ask	digitalproduct	\N	\N	\N
248	travel	month	359	439	620	accept	digitalproduct	\N	\N	\N
249	hand	form	927	362	561	stand	digitalproduct	\N	\N	\N
250	soon	power	552	205	729	put	digitalproduct	\N	\N	\N
251	than	ability	942	679	72	ready	digitalproduct	\N	\N	\N
252	game	base	762	626	739	care	digitalproduct	\N	\N	\N
253	season	million	258	182	1000	action	digitalproduct	\N	\N	\N
254	new	maybe	155	61	941	wife	digitalproduct	\N	\N	\N
255	foot	agree	876	439	873	ten	digitalproduct	\N	\N	\N
256	loss	say	55	653	94	political	digitalproduct	\N	\N	\N
257	set	part	514	380	102	nothing	digitalproduct	\N	\N	\N
258	market	against	42	130	545	draw	digitalproduct	\N	\N	\N
259	process	growth	454	681	132	rate	digitalproduct	\N	\N	\N
260	occur	forget	782	725	921	city	digitalproduct	\N	\N	\N
261	reason	middle	26	755	538	section	digitalproduct	\N	\N	\N
262	chance	people	93	257	820	protect	digitalproduct	\N	\N	\N
263	message	day	88	310	36	take	digitalproduct	\N	\N	\N
264	certain	discuss	60	751	268	home	digitalproduct	\N	\N	\N
265	man	democratic	753	134	267	south	digitalproduct	\N	\N	\N
266	apply	project	827	120	877	star	digitalproduct	\N	\N	\N
268	speech	director	515	571	211	work	digitalproduct	\N	\N	\N
269	answer	provide	946	347	522	financial	digitalproduct	\N	\N	\N
270	fund	left	980	918	599	different	digitalproduct	\N	\N	\N
271	same	detail	108	133	669	nor	digitalproduct	\N	\N	\N
272	suggest	figure	537	573	737	step	digitalproduct	\N	\N	\N
274	go	financial	205	380	399	modern	digitalproduct	\N	\N	\N
275	surface	down	100	420	354	finish	digitalproduct	\N	\N	\N
277	possible	child	835	819	667	plant	digitalproduct	\N	\N	\N
278	wife	so	428	306	327	place	digitalproduct	\N	\N	\N
279	somebody	entire	280	334	767	think	digitalproduct	\N	\N	\N
280	down	remain	539	125	153	whole	digitalproduct	\N	\N	\N
281	heavy	remain	937	745	334	group	digitalproduct	\N	\N	\N
282	discussion	son	587	71	463	series	digitalproduct	\N	\N	\N
283	sense	catch	492	466	935	who	digitalproduct	\N	\N	\N
285	democratic	consumer	836	911	948	truth	digitalproduct	\N	\N	\N
286	cultural	fish	945	593	821	father	digitalproduct	\N	\N	\N
287	control	staff	138	50	537	strong	digitalproduct	\N	\N	\N
288	large	country	590	874	258	rate	digitalproduct	\N	\N	\N
289	inside	focus	720	588	765	head	digitalproduct	\N	\N	\N
284	be	defense	950	760	994	alone	digitalproduct	\N	[{"barcode": "home", "variant_id": "237", "price_override": "481", "is_active_variant": "68"}]	\N
290	ability	number	371	965	817	performance	digitalproduct	\N	\N	\N
291	sure	conference	413	315	476	thought	digitalproduct	\N	\N	\N
292	member	attorney	545	520	172	amount	digitalproduct	\N	\N	\N
296	through	study	832	102	559	traditional	digitalproduct	\N	\N	\N
297	who	simple	732	110	210	writer	digitalproduct	\N	\N	\N
300	type	customer	659	859	178	wait	digitalproduct	\N	\N	\N
302	program	nothing	827	291	226	\N	electronics	\N	\N	\N
304	trade	wish	464	692	376	\N	electronics	\N	\N	\N
305	wind	with	494	744	75	\N	electronics	\N	\N	\N
306	administration	contain	207	9	765	\N	electronics	\N	\N	\N
307	whether	health	898	499	79	\N	electronics	\N	\N	\N
308	everybody	after	904	523	816	\N	electronics	\N	\N	\N
309	make	hand	361	872	470	\N	electronics	\N	\N	\N
310	ok	you	984	307	713	\N	electronics	\N	\N	\N
311	bring	wrong	123	842	310	\N	electronics	\N	\N	\N
312	reduce	head	796	557	661	\N	electronics	\N	\N	\N
313	be	picture	422	556	963	\N	electronics	\N	\N	\N
314	today	score	646	596	316	\N	electronics	\N	\N	\N
315	family	south	135	519	455	\N	electronics	\N	\N	\N
316	research	in	792	998	167	\N	electronics	\N	\N	\N
317	service	all	10	435	754	\N	electronics	\N	\N	\N
318	organization	term	431	412	289	\N	electronics	\N	\N	\N
319	activity	near	93	948	93	\N	electronics	\N	\N	\N
320	lawyer	order	276	476	279	\N	electronics	\N	\N	\N
321	well	somebody	768	873	493	\N	electronics	\N	\N	\N
322	middle	computer	468	823	120	\N	electronics	\N	\N	\N
323	big	loss	149	426	152	\N	electronics	\N	\N	\N
325	design	good	806	295	973	\N	electronics	\N	\N	\N
326	certainly	after	962	527	295	\N	electronics	\N	\N	\N
327	process	vote	281	444	344	\N	electronics	\N	\N	\N
328	garden	door	733	850	504	\N	electronics	\N	\N	\N
329	fast	find	436	94	66	\N	electronics	\N	\N	\N
330	make	attorney	990	154	235	\N	electronics	\N	\N	\N
331	great	whom	260	160	492	\N	electronics	\N	\N	\N
332	raise	fast	666	741	192	\N	electronics	\N	\N	\N
333	the	find	438	627	978	\N	electronics	\N	\N	\N
334	per	sea	224	548	433	\N	electronics	\N	\N	\N
335	enjoy	run	969	668	993	\N	electronics	\N	\N	\N
336	adult	dark	567	696	430	\N	electronics	\N	\N	\N
337	name	sea	701	286	184	\N	electronics	\N	\N	\N
339	be	she	220	694	660	\N	electronics	\N	\N	\N
340	collection	maybe	400	127	685	\N	electronics	\N	\N	\N
341	less	loss	699	521	510	\N	electronics	\N	\N	\N
342	baby	wind	621	875	491	\N	electronics	\N	\N	\N
343	grow	piece	396	629	928	\N	electronics	\N	\N	\N
345	college	security	505	649	917	\N	electronics	\N	\N	\N
346	finally	experience	778	639	346	\N	electronics	\N	\N	\N
347	teach	community	9	776	747	\N	electronics	\N	\N	\N
348	color	best	907	992	726	\N	electronics	\N	\N	\N
349	say	want	554	641	451	\N	electronics	\N	\N	\N
350	learn	wall	926	863	104	\N	electronics	\N	\N	\N
351	successful	public	282	277	724	\N	electronics	\N	\N	\N
352	training	although	152	134	263	\N	electronics	\N	\N	\N
353	paper	letter	575	646	613	\N	electronics	\N	\N	\N
354	often	face	855	624	522	\N	electronics	\N	\N	\N
355	his	local	424	277	287	\N	electronics	\N	\N	\N
356	attention	course	314	274	504	\N	electronics	\N	\N	\N
357	note	into	377	614	482	\N	electronics	\N	\N	\N
358	it	everybody	181	621	778	\N	electronics	\N	\N	\N
359	have	between	902	595	711	\N	electronics	\N	\N	\N
362	born	chance	638	506	492	\N	electronics	\N	\N	\N
363	really	enjoy	131	909	144	\N	electronics	\N	\N	\N
364	us	commercial	91	651	552	\N	electronics	\N	\N	\N
365	challenge	identify	177	702	119	\N	electronics	\N	\N	\N
366	property	country	205	516	582	\N	electronics	\N	\N	\N
367	scene	job	336	5	793	\N	electronics	\N	\N	\N
368	create	nor	313	842	631	\N	electronics	\N	\N	\N
369	future	peace	761	230	287	\N	electronics	\N	\N	\N
370	magazine	evening	616	737	531	\N	electronics	\N	\N	\N
371	show	southern	125	338	356	\N	electronics	\N	\N	\N
373	because	analysis	588	43	356	\N	electronics	\N	\N	\N
375	traditional	consider	276	543	51	\N	electronics	\N	\N	\N
376	other	country	81	143	948	\N	electronics	\N	\N	\N
377	help	understand	957	738	654	\N	electronics	\N	\N	\N
378	couple	resource	696	337	281	\N	electronics	\N	\N	\N
379	particular	whatever	910	330	982	\N	electronics	\N	\N	\N
380	father	these	946	823	810	\N	electronics	\N	\N	\N
381	interest	pass	950	892	278	\N	electronics	\N	\N	\N
382	parent	fund	696	591	636	\N	electronics	\N	\N	\N
383	front	evening	429	549	957	\N	electronics	\N	\N	\N
384	section	the	920	225	648	\N	electronics	\N	\N	\N
387	collection	not	560	21	257	\N	electronics	\N	\N	\N
388	season	oil	543	269	485	\N	electronics	\N	\N	\N
386	first	scene	247	221	919	\N	electronics	\N	[{"barcode": "take", "variant_id": "228", "price_override": "682", "is_active_variant": "934"}]	\N
360	when	direction	154	60	517	\N	electronics	\N	[{"barcode": "behavior", "variant_id": "554", "price_override": "352", "is_active_variant": "508"}]	\N
338	like	still	813	722	879	\N	electronics	\N	\N	[{"price": "484", "ends_at": "from", "price_id": "690", "starts_at": "claim"}]
303	success	woman	506	887	921	\N	electronics	\N	\N	[{"price": "127", "ends_at": "generation", "price_id": "485", "starts_at": "note"}]
294	condition	receive	577	137	929	check	digitalproduct	\N	\N	[{"price": "208", "ends_at": "power", "price_id": "261", "starts_at": "house"}]
390	deep	remember	671	558	372	\N	electronics	\N	\N	\N
391	cause	structure	316	457	699	\N	electronics	\N	\N	\N
392	decision	forward	77	936	594	\N	electronics	\N	\N	\N
394	discussion	image	821	869	786	\N	electronics	\N	\N	\N
395	allow	sound	910	300	164	\N	electronics	\N	\N	\N
396	wife	can	815	391	854	\N	electronics	\N	\N	\N
397	decision	Republican	121	616	149	\N	electronics	\N	\N	\N
398	myself	defense	683	704	819	\N	electronics	\N	\N	\N
399	break	street	976	10	942	\N	electronics	\N	\N	\N
400	wall	sing	765	576	965	\N	electronics	\N	\N	\N
401	only	east	32	798	443	\N	computer	\N	\N	\N
402	send	PM	380	419	416	\N	computer	\N	\N	\N
404	subject	part	852	114	602	\N	computer	\N	\N	\N
405	market	move	782	365	565	\N	computer	\N	\N	\N
406	wall	sing	931	992	671	\N	computer	\N	\N	\N
409	from	run	42	939	721	\N	computer	\N	\N	\N
410	business	less	745	355	260	\N	computer	\N	\N	\N
412	edge	well	350	452	818	\N	computer	\N	\N	\N
413	bar	development	532	148	58	\N	computer	\N	\N	\N
414	stand	available	913	526	177	\N	computer	\N	\N	\N
415	senior	describe	776	728	125	\N	computer	\N	\N	\N
416	pressure	different	215	393	647	\N	computer	\N	\N	\N
417	seat	begin	234	103	255	\N	computer	\N	\N	\N
418	yourself	machine	337	673	252	\N	computer	\N	\N	\N
419	indicate	idea	379	505	668	\N	computer	\N	\N	\N
420	world	common	409	556	124	\N	computer	\N	\N	\N
421	still	put	860	129	154	\N	computer	\N	\N	\N
422	main	cause	112	819	27	\N	computer	\N	\N	\N
423	affect	marriage	470	785	387	\N	computer	\N	\N	\N
424	during	yeah	158	996	538	\N	computer	\N	\N	\N
425	mother	source	20	476	407	\N	computer	\N	\N	\N
426	determine	goal	401	6	558	\N	computer	\N	\N	\N
427	future	must	163	679	184	\N	computer	\N	\N	\N
428	vote	wait	78	794	550	\N	computer	\N	\N	\N
429	at	simply	600	23	526	\N	computer	\N	\N	\N
430	keep	local	814	42	959	\N	computer	\N	\N	\N
431	within	year	708	627	670	\N	computer	\N	\N	\N
432	those	shoulder	799	477	122	\N	computer	\N	\N	\N
433	federal	page	574	97	657	\N	computer	\N	\N	\N
434	reflect	nice	245	797	13	\N	computer	\N	\N	\N
435	town	program	320	478	285	\N	computer	\N	\N	\N
437	might	manager	652	460	514	\N	computer	\N	\N	\N
438	rise	really	716	405	716	\N	computer	\N	\N	\N
439	ready	teach	508	837	286	\N	computer	\N	\N	\N
440	really	thousand	266	581	287	\N	computer	\N	\N	\N
441	continue	direction	637	86	749	\N	computer	\N	\N	\N
442	happy	must	147	265	262	\N	computer	\N	\N	\N
443	join	learn	286	580	479	\N	computer	\N	\N	\N
444	write	owner	134	982	259	\N	computer	\N	\N	\N
445	all	president	821	594	551	\N	computer	\N	\N	\N
446	response	bill	734	893	246	\N	computer	\N	\N	\N
447	officer	receive	401	729	201	\N	computer	\N	\N	\N
448	executive	huge	80	157	806	\N	computer	\N	\N	\N
449	cut	stage	416	392	428	\N	computer	\N	\N	\N
450	development	range	133	689	552	\N	computer	\N	\N	\N
451	individual	better	871	391	143	\N	computer	\N	\N	\N
452	may	laugh	737	407	366	\N	computer	\N	\N	\N
454	best	oil	91	527	848	\N	computer	\N	\N	\N
455	amount	everyone	475	23	298	\N	computer	\N	\N	\N
456	name	plant	773	455	262	\N	computer	\N	\N	\N
457	after	oil	801	324	164	\N	computer	\N	\N	\N
458	physical	politics	645	842	106	\N	computer	\N	\N	\N
459	well	everything	649	601	252	\N	computer	\N	\N	\N
460	art	four	407	125	935	\N	computer	\N	\N	\N
462	author	your	593	261	743	\N	computer	\N	\N	\N
463	dog	scene	829	207	782	\N	computer	\N	\N	\N
464	attack	can	559	629	237	\N	computer	\N	\N	\N
465	just	miss	172	688	687	\N	computer	\N	\N	\N
466	where	soon	991	281	788	\N	computer	\N	\N	\N
467	score	both	506	101	686	\N	computer	\N	\N	\N
468	action	agree	17	465	772	\N	computer	\N	\N	\N
469	resource	police	404	843	748	\N	computer	\N	\N	\N
471	kind	magazine	854	453	194	\N	computer	\N	\N	\N
473	several	practice	202	239	369	\N	computer	\N	\N	\N
474	own	account	54	470	46	\N	computer	\N	\N	\N
475	ability	song	875	929	962	\N	computer	\N	\N	\N
476	voice	offer	598	514	67	\N	computer	\N	\N	\N
478	dream	cause	928	361	482	\N	computer	\N	\N	\N
480	majority	hard	603	767	325	\N	computer	\N	\N	\N
481	argue	science	570	872	285	\N	computer	\N	\N	\N
482	this	reality	807	810	795	\N	computer	\N	\N	\N
483	loss	would	533	810	25	\N	computer	\N	\N	\N
484	finish	full	543	15	104	\N	computer	\N	\N	\N
485	remember	fast	378	769	565	\N	computer	\N	\N	\N
486	father	society	597	76	497	\N	computer	\N	\N	\N
487	language	minute	457	343	513	\N	computer	\N	\N	\N
488	person	treatment	932	333	370	\N	computer	\N	\N	\N
489	heart	him	595	152	604	\N	computer	\N	\N	\N
461	with	beyond	394	677	946	\N	computer	\N	[{"barcode": "growth", "variant_id": "468", "price_override": "581", "is_active_variant": "700"}]	\N
411	person	ok	425	386	368	\N	computer	\N	\N	[{"price": "50", "ends_at": "worry", "price_id": "77", "starts_at": "power"}]
477	alone	life	816	525	863	\N	computer	\N	\N	[{"price": "4", "ends_at": "leave", "price_id": "638", "starts_at": "race"}]
490	yes	experience	888	521	431	\N	computer	\N	\N	\N
491	live	natural	267	624	378	\N	computer	\N	\N	\N
492	key	last	786	646	253	\N	computer	\N	\N	\N
493	president	be	407	564	291	\N	computer	\N	\N	\N
494	course	management	175	927	959	\N	computer	\N	\N	\N
495	remember	nation	130	290	565	\N	computer	\N	\N	\N
496	some	discuss	102	284	740	\N	computer	\N	\N	\N
497	our	dog	525	309	807	\N	computer	\N	\N	\N
498	answer	company	77	564	324	\N	computer	\N	\N	\N
499	actually	sure	881	529	137	\N	computer	\N	\N	\N
500	commercial	heart	373	819	766	\N	computer	\N	\N	\N
602	collection	pay	524	327	681	\N	laptop	\N	\N	\N
603	to	laugh	803	587	92	\N	laptop	\N	\N	\N
604	whose	such	74	269	65	\N	laptop	\N	\N	\N
605	author	although	336	232	321	\N	laptop	\N	\N	\N
607	step	traditional	302	167	649	\N	laptop	\N	\N	\N
608	country	dark	441	950	628	\N	laptop	\N	\N	\N
609	late	newspaper	670	737	580	\N	laptop	\N	\N	\N
610	bar	also	263	692	177	\N	laptop	\N	\N	\N
611	nothing	art	407	366	535	\N	laptop	\N	\N	\N
612	give	medical	853	493	995	\N	laptop	\N	\N	\N
613	trip	sell	254	81	759	\N	laptop	\N	\N	\N
614	travel	all	483	584	496	\N	laptop	\N	\N	\N
615	four	necessary	175	577	726	\N	laptop	\N	\N	\N
616	director	about	566	742	576	\N	laptop	\N	\N	\N
618	forget	somebody	244	705	661	\N	laptop	\N	\N	\N
619	gun	law	777	893	366	\N	laptop	\N	\N	\N
620	economic	back	953	853	47	\N	laptop	\N	\N	\N
621	performance	town	828	178	583	\N	laptop	\N	\N	\N
622	town	doctor	240	906	898	\N	laptop	\N	\N	\N
623	also	clear	522	214	410	\N	laptop	\N	\N	\N
624	especially	rest	142	174	338	\N	laptop	\N	\N	\N
625	international	population	760	633	543	\N	laptop	\N	\N	\N
626	detail	when	438	480	469	\N	laptop	\N	\N	\N
628	building	my	699	7	833	\N	laptop	\N	\N	\N
629	truth	man	731	671	526	\N	laptop	\N	\N	\N
631	particular	money	56	88	740	\N	laptop	\N	\N	\N
632	dog	recent	141	455	407	\N	laptop	\N	\N	\N
633	remain	by	874	608	38	\N	laptop	\N	\N	\N
634	rock	event	461	501	400	\N	laptop	\N	\N	\N
636	behind	door	29	570	63	\N	laptop	\N	\N	\N
637	character	popular	236	457	871	\N	laptop	\N	\N	\N
638	rock	child	764	105	398	\N	laptop	\N	\N	\N
639	nature	plan	953	420	477	\N	laptop	\N	\N	\N
640	issue	final	411	555	887	\N	laptop	\N	\N	\N
642	certain	lay	995	141	626	\N	laptop	\N	\N	\N
643	successful	want	222	909	465	\N	laptop	\N	\N	\N
645	culture	call	961	287	408	\N	laptop	\N	\N	\N
646	range	edge	457	309	759	\N	laptop	\N	\N	\N
647	heart	Republican	321	870	772	\N	laptop	\N	\N	\N
648	understand	scientist	185	457	158	\N	laptop	\N	\N	\N
649	prevent	clearly	550	327	324	\N	laptop	\N	\N	\N
650	standard	report	958	651	350	\N	laptop	\N	\N	\N
651	glass	believe	474	332	497	\N	laptop	\N	\N	\N
652	day	culture	224	171	247	\N	laptop	\N	\N	\N
653	carry	he	252	53	800	\N	laptop	\N	\N	\N
654	light	think	64	337	430	\N	laptop	\N	\N	\N
655	drop	player	615	610	903	\N	laptop	\N	\N	\N
656	lead	mean	875	296	929	\N	laptop	\N	\N	\N
657	real	four	394	686	793	\N	laptop	\N	\N	\N
658	decision	must	924	992	983	\N	laptop	\N	\N	\N
659	follow	herself	631	860	916	\N	laptop	\N	\N	\N
660	method	figure	627	328	394	\N	laptop	\N	\N	\N
661	agreement	test	99	445	5	\N	laptop	\N	\N	\N
662	above	according	975	157	115	\N	laptop	\N	\N	\N
664	cost	world	199	163	169	\N	laptop	\N	\N	\N
666	message	line	342	622	813	\N	laptop	\N	\N	\N
667	if	player	368	798	179	\N	laptop	\N	\N	\N
668	fact	chance	607	501	36	\N	laptop	\N	\N	\N
670	easy	give	916	759	357	\N	laptop	\N	\N	\N
671	down	guess	542	473	909	\N	laptop	\N	\N	\N
672	maybe	company	706	931	817	\N	laptop	\N	\N	\N
673	hour	condition	44	274	840	\N	laptop	\N	\N	\N
674	certain	ask	833	823	790	\N	laptop	\N	\N	\N
675	remember	determine	108	457	736	\N	laptop	\N	\N	\N
676	much	operation	442	381	664	\N	laptop	\N	\N	\N
677	significant	blue	422	447	377	\N	laptop	\N	\N	\N
678	network	rather	244	246	22	\N	laptop	\N	\N	\N
679	these	throw	804	632	452	\N	laptop	\N	\N	\N
680	edge	break	841	839	540	\N	laptop	\N	\N	\N
681	resource	onto	805	286	426	\N	laptop	\N	\N	\N
682	from	whose	791	677	384	\N	laptop	\N	\N	\N
683	election	reach	766	49	519	\N	laptop	\N	\N	\N
684	life	situation	536	373	599	\N	laptop	\N	\N	\N
686	than	finish	825	20	375	\N	laptop	\N	\N	\N
688	both	culture	604	442	95	\N	laptop	\N	\N	\N
689	majority	child	100	132	552	\N	laptop	\N	\N	\N
690	soon	five	975	420	248	\N	laptop	\N	\N	\N
691	policy	can	325	449	120	\N	laptop	\N	\N	\N
693	answer	entire	905	929	201	\N	laptop	\N	\N	\N
694	general	card	90	4	525	\N	laptop	\N	\N	\N
685	mind	product	883	252	651	\N	laptop	\N	[{"barcode": "goal", "variant_id": "783", "price_override": "873", "is_active_variant": "709"}]	\N
687	ten	nearly	484	654	28	\N	laptop	\N	\N	[{"price": "651", "ends_at": "degree", "price_id": "163", "starts_at": "heavy"}]
635	left	professor	775	178	863	\N	laptop	\N	\N	[{"price": "335", "ends_at": "wear", "price_id": "775", "starts_at": "another"}]
695	especially	feeling	94	315	500	\N	laptop	\N	\N	\N
696	take	child	306	402	644	\N	laptop	\N	\N	\N
697	human	reveal	284	931	636	\N	laptop	\N	\N	\N
699	land	floor	276	527	178	\N	laptop	\N	\N	\N
700	high	firm	605	187	329	\N	laptop	\N	\N	\N
701	nice	fast	710	424	702	\N	tablet	\N	\N	\N
702	specific	less	646	226	314	\N	tablet	\N	\N	\N
703	election	ahead	506	997	842	\N	tablet	\N	\N	\N
704	big	second	266	866	859	\N	tablet	\N	\N	\N
705	perhaps	wish	901	311	142	\N	tablet	\N	\N	\N
707	sit	him	584	933	334	\N	tablet	\N	\N	\N
708	street	ask	1000	15	551	\N	tablet	\N	\N	\N
709	figure	prove	638	830	67	\N	tablet	\N	\N	\N
710	group	project	663	273	743	\N	tablet	\N	\N	\N
711	dream	family	115	101	702	\N	tablet	\N	\N	\N
712	example	article	653	713	705	\N	tablet	\N	\N	\N
713	upon	nature	511	543	352	\N	tablet	\N	\N	\N
714	source	rich	57	632	120	\N	tablet	\N	\N	\N
715	company	pretty	543	313	772	\N	tablet	\N	\N	\N
716	drop	continue	154	234	887	\N	tablet	\N	\N	\N
717	analysis	hotel	362	920	707	\N	tablet	\N	\N	\N
718	let	consider	138	293	592	\N	tablet	\N	\N	\N
719	reason	student	611	272	59	\N	tablet	\N	\N	\N
720	about	both	989	290	864	\N	tablet	\N	\N	\N
721	this	reflect	861	829	70	\N	tablet	\N	\N	\N
722	many	sometimes	696	35	954	\N	tablet	\N	\N	\N
723	read	second	425	364	964	\N	tablet	\N	\N	\N
724	table	success	152	184	809	\N	tablet	\N	\N	\N
725	new	almost	965	61	375	\N	tablet	\N	\N	\N
726	reveal	play	330	834	223	\N	tablet	\N	\N	\N
727	best	commercial	708	913	722	\N	tablet	\N	\N	\N
729	treat	hair	269	796	813	\N	tablet	\N	\N	\N
730	set	home	818	136	707	\N	tablet	\N	\N	\N
731	catch	nor	807	787	392	\N	tablet	\N	\N	\N
732	administration	ready	25	135	238	\N	tablet	\N	\N	\N
733	strong	number	908	304	719	\N	tablet	\N	\N	\N
734	create	through	342	101	255	\N	tablet	\N	\N	\N
736	cover	opportunity	966	610	650	\N	tablet	\N	\N	\N
737	hospital	identify	996	432	858	\N	tablet	\N	\N	\N
738	that	language	969	890	145	\N	tablet	\N	\N	\N
739	past	course	300	398	632	\N	tablet	\N	\N	\N
740	produce	best	207	613	278	\N	tablet	\N	\N	\N
741	likely	place	271	521	850	\N	tablet	\N	\N	\N
742	subject	production	967	157	575	\N	tablet	\N	\N	\N
744	project	main	466	272	769	\N	tablet	\N	\N	\N
745	me	media	823	87	417	\N	tablet	\N	\N	\N
746	easy	rather	597	737	134	\N	tablet	\N	\N	\N
747	moment	smile	862	791	239	\N	tablet	\N	\N	\N
748	house	wife	64	421	616	\N	tablet	\N	\N	\N
749	environmental	production	41	923	466	\N	tablet	\N	\N	\N
750	quality	reflect	41	356	788	\N	tablet	\N	\N	\N
752	establish	consider	93	551	482	\N	tablet	\N	\N	\N
753	service	race	877	788	176	\N	tablet	\N	\N	\N
754	might	item	256	336	618	\N	tablet	\N	\N	\N
755	create	interest	791	719	223	\N	tablet	\N	\N	\N
756	open	might	852	550	331	\N	tablet	\N	\N	\N
757	marriage	knowledge	673	493	259	\N	tablet	\N	\N	\N
758	something	prepare	248	882	166	\N	tablet	\N	\N	\N
759	strong	society	208	142	169	\N	tablet	\N	\N	\N
760	particular	indicate	931	723	217	\N	tablet	\N	\N	\N
761	nature	image	222	411	810	\N	tablet	\N	\N	\N
762	pass	play	319	791	226	\N	tablet	\N	\N	\N
763	personal	establish	668	457	345	\N	tablet	\N	\N	\N
764	design	century	844	237	123	\N	tablet	\N	\N	\N
765	cover	seven	570	470	11	\N	tablet	\N	\N	\N
766	anyone	fly	554	113	197	\N	tablet	\N	\N	\N
767	Mr	region	220	532	622	\N	tablet	\N	\N	\N
768	prepare	win	271	943	358	\N	tablet	\N	\N	\N
769	stage	consumer	30	896	11	\N	tablet	\N	\N	\N
770	bed	end	79	324	464	\N	tablet	\N	\N	\N
771	sing	away	690	891	114	\N	tablet	\N	\N	\N
773	security	enter	30	573	233	\N	tablet	\N	\N	\N
774	total	not	545	973	939	\N	tablet	\N	\N	\N
775	easy	fill	65	17	893	\N	tablet	\N	\N	\N
776	pressure	answer	591	87	530	\N	tablet	\N	\N	\N
777	heavy	toward	9	557	287	\N	tablet	\N	\N	\N
778	around	team	395	895	414	\N	tablet	\N	\N	\N
779	color	better	185	778	491	\N	tablet	\N	\N	\N
780	image	decision	633	214	539	\N	tablet	\N	\N	\N
781	certain	measure	867	325	149	\N	tablet	\N	\N	\N
782	occur	support	42	902	419	\N	tablet	\N	\N	\N
783	trial	threat	901	804	67	\N	tablet	\N	\N	\N
784	measure	born	421	560	399	\N	tablet	\N	\N	\N
785	candidate	follow	223	199	312	\N	tablet	\N	\N	\N
786	building	sometimes	932	531	24	\N	tablet	\N	\N	\N
787	option	drop	534	759	547	\N	tablet	\N	\N	\N
788	partner	center	216	492	169	\N	tablet	\N	\N	\N
789	low	our	413	911	290	\N	tablet	\N	\N	\N
790	half	table	102	859	969	\N	tablet	\N	\N	\N
791	sea	school	441	487	979	\N	tablet	\N	\N	\N
792	garden	song	224	580	480	\N	tablet	\N	\N	\N
793	political	might	679	415	894	\N	tablet	\N	\N	\N
794	style	bed	347	519	487	\N	tablet	\N	\N	\N
795	also	thought	377	444	837	\N	tablet	\N	\N	\N
796	turn	want	454	267	965	\N	tablet	\N	\N	\N
797	simply	north	822	580	235	\N	tablet	\N	\N	\N
799	note	city	430	897	601	\N	tablet	\N	\N	\N
800	fish	protect	472	923	113	\N	tablet	\N	\N	\N
735	operation	market	119	183	509	\N	tablet	\N	[{"barcode": "myself", "variant_id": "957", "price_override": "453", "is_active_variant": "489"}]	\N
743	foreign	later	924	694	26	\N	tablet	\N	[{"barcode": "somebody", "variant_id": "559", "price_override": "91", "is_active_variant": "144"}]	\N
801	style	pressure	525	94	910	\N	smartwatch	\N	\N	\N
802	get	very	38	284	863	\N	smartwatch	\N	\N	\N
803	those	need	586	172	441	\N	smartwatch	\N	\N	\N
805	kid	religious	393	29	984	\N	smartwatch	\N	\N	\N
806	page	begin	294	266	26	\N	smartwatch	\N	\N	\N
807	on	against	641	527	679	\N	smartwatch	\N	\N	\N
808	bring	brother	301	758	83	\N	smartwatch	\N	\N	\N
809	painting	floor	381	409	653	\N	smartwatch	\N	\N	\N
811	police	choice	501	577	86	\N	smartwatch	\N	\N	\N
813	visit	lawyer	181	551	489	\N	smartwatch	\N	\N	\N
814	will	quality	466	895	351	\N	smartwatch	\N	\N	\N
815	memory	above	991	232	355	\N	smartwatch	\N	\N	\N
817	network	my	184	238	84	\N	smartwatch	\N	\N	\N
819	himself	wait	836	635	540	\N	smartwatch	\N	\N	\N
820	sport	tax	858	433	228	\N	smartwatch	\N	\N	\N
821	face	concern	532	995	982	\N	smartwatch	\N	\N	\N
822	education	church	859	42	620	\N	smartwatch	\N	\N	\N
823	us	before	409	524	437	\N	smartwatch	\N	\N	\N
824	through	glass	346	579	948	\N	smartwatch	\N	\N	\N
825	stuff	determine	484	853	750	\N	smartwatch	\N	\N	\N
826	make	responsibility	919	441	165	\N	smartwatch	\N	\N	\N
827	north	sister	423	767	493	\N	smartwatch	\N	\N	\N
829	probably	once	408	565	386	\N	smartwatch	\N	\N	\N
830	general	need	368	556	558	\N	smartwatch	\N	\N	\N
831	commercial	foot	21	873	674	\N	smartwatch	\N	\N	\N
832	since	entire	727	898	400	\N	smartwatch	\N	\N	\N
833	whom	enough	789	820	603	\N	smartwatch	\N	\N	\N
834	speech	none	17	164	841	\N	smartwatch	\N	\N	\N
835	white	network	225	156	116	\N	smartwatch	\N	\N	\N
836	medical	account	177	70	98	\N	smartwatch	\N	\N	\N
837	develop	also	748	671	480	\N	smartwatch	\N	\N	\N
840	write	purpose	449	114	347	\N	smartwatch	\N	\N	\N
841	gun	oil	392	959	670	\N	smartwatch	\N	\N	\N
842	might	fear	85	235	838	\N	smartwatch	\N	\N	\N
843	line	strategy	358	438	442	\N	smartwatch	\N	\N	\N
844	really	instead	273	192	155	\N	smartwatch	\N	\N	\N
845	bank	store	986	361	991	\N	smartwatch	\N	\N	\N
846	center	officer	647	608	813	\N	smartwatch	\N	\N	\N
847	picture	attention	925	994	182	\N	smartwatch	\N	\N	\N
848	window	else	737	937	862	\N	smartwatch	\N	\N	\N
849	reason	red	210	489	970	\N	smartwatch	\N	\N	\N
850	candidate	center	632	541	934	\N	smartwatch	\N	\N	\N
851	heavy	prove	209	307	176	\N	smartwatch	\N	\N	\N
852	difficult	effect	410	436	501	\N	smartwatch	\N	\N	\N
853	science	yourself	799	35	545	\N	smartwatch	\N	\N	\N
857	industry	list	349	84	607	\N	smartwatch	\N	\N	\N
858	movement	contain	143	940	869	\N	smartwatch	\N	\N	\N
859	population	write	181	94	9	\N	smartwatch	\N	\N	\N
860	member	must	188	286	199	\N	smartwatch	\N	\N	\N
861	edge	call	731	555	524	\N	smartwatch	\N	\N	\N
862	somebody	them	997	881	943	\N	smartwatch	\N	\N	\N
863	investment	difference	394	890	108	\N	smartwatch	\N	\N	\N
864	keep	example	248	73	745	\N	smartwatch	\N	\N	\N
865	official	cell	703	619	28	\N	smartwatch	\N	\N	\N
866	wonder	role	58	298	354	\N	smartwatch	\N	\N	\N
867	if	watch	636	450	325	\N	smartwatch	\N	\N	\N
868	speech	every	546	324	942	\N	smartwatch	\N	\N	\N
869	little	safe	968	778	750	\N	smartwatch	\N	\N	\N
870	stage	watch	833	700	458	\N	smartwatch	\N	\N	\N
871	along	manage	416	754	127	\N	smartwatch	\N	\N	\N
872	at	relationship	937	957	794	\N	smartwatch	\N	\N	\N
874	have	event	42	147	951	\N	smartwatch	\N	\N	\N
876	inside	indeed	584	481	741	\N	smartwatch	\N	\N	\N
877	control	none	831	610	263	\N	smartwatch	\N	\N	\N
878	interview	art	904	401	553	\N	smartwatch	\N	\N	\N
879	among	again	150	332	175	\N	smartwatch	\N	\N	\N
880	spend	benefit	592	949	937	\N	smartwatch	\N	\N	\N
881	market	whether	917	658	81	\N	smartwatch	\N	\N	\N
882	always	various	402	501	747	\N	smartwatch	\N	\N	\N
883	center	hot	642	758	298	\N	smartwatch	\N	\N	\N
884	middle	discussion	649	959	276	\N	smartwatch	\N	\N	\N
885	care	war	128	262	989	\N	smartwatch	\N	\N	\N
886	reflect	also	123	854	688	\N	smartwatch	\N	\N	\N
887	collection	everybody	970	155	478	\N	smartwatch	\N	\N	\N
888	not	old	244	43	231	\N	smartwatch	\N	\N	\N
889	skin	owner	835	955	99	\N	smartwatch	\N	\N	\N
890	special	quickly	674	117	45	\N	smartwatch	\N	\N	\N
892	mother	center	863	818	932	\N	smartwatch	\N	\N	\N
893	lawyer	respond	814	629	640	\N	smartwatch	\N	\N	\N
894	miss	have	550	588	502	\N	smartwatch	\N	\N	\N
895	four	part	849	620	408	\N	smartwatch	\N	\N	\N
898	community	option	462	90	1	\N	smartwatch	\N	\N	\N
899	appear	whose	288	562	313	\N	smartwatch	\N	\N	\N
900	strategy	sell	393	121	832	\N	smartwatch	\N	\N	\N
810	entire	my	828	695	484	\N	smartwatch	\N	[{"barcode": "become", "variant_id": "869", "price_override": "343", "is_active_variant": "478"}]	\N
818	page	strong	179	328	5	\N	smartwatch	\N	[{"barcode": "computer", "variant_id": "218", "price_override": "705", "is_active_variant": "776"}]	\N
897	would	true	16	828	590	\N	smartwatch	\N	\N	[{"price": "750", "ends_at": "like", "price_id": "921", "starts_at": "term"}]
804	as	create	454	748	250	\N	smartwatch	\N	\N	[{"price": "482", "ends_at": "medical", "price_id": "716", "starts_at": "option"}]
901	word	way	657	682	798	\N	camera	\N	\N	\N
902	population	sense	907	764	962	\N	camera	\N	\N	\N
903	movie	hit	727	458	97	\N	camera	\N	\N	\N
905	believe	certainly	842	217	337	\N	camera	\N	\N	\N
907	affect	sell	495	368	657	\N	camera	\N	\N	\N
908	across	join	352	438	922	\N	camera	\N	\N	\N
909	mission	understand	55	541	303	\N	camera	\N	\N	\N
912	during	talk	144	438	784	\N	camera	\N	\N	\N
914	never	professional	437	415	146	\N	camera	\N	\N	\N
915	heart	thousand	843	531	683	\N	camera	\N	\N	\N
917	game	accept	258	581	773	\N	camera	\N	\N	\N
918	safe	data	264	946	494	\N	camera	\N	\N	\N
919	market	visit	932	961	858	\N	camera	\N	\N	\N
920	standard	production	266	659	931	\N	camera	\N	\N	\N
921	agree	civil	705	378	705	\N	camera	\N	\N	\N
922	appear	civil	785	195	109	\N	camera	\N	\N	\N
923	open	often	348	587	338	\N	camera	\N	\N	\N
927	however	want	903	355	792	\N	camera	\N	\N	\N
928	network	coach	109	609	544	\N	camera	\N	\N	\N
929	power	gun	773	231	792	\N	camera	\N	\N	\N
930	all	perform	434	409	637	\N	camera	\N	\N	\N
931	notice	inside	157	749	602	\N	camera	\N	\N	\N
932	today	radio	486	687	956	\N	camera	\N	\N	\N
933	religious	century	420	940	803	\N	camera	\N	\N	\N
934	hundred	most	676	505	221	\N	camera	\N	\N	\N
935	bit	ten	798	38	882	\N	camera	\N	\N	\N
936	whatever	central	143	258	843	\N	camera	\N	\N	\N
937	role	each	447	342	534	\N	camera	\N	\N	\N
938	health	thing	41	319	515	\N	camera	\N	\N	\N
939	serve	couple	271	164	297	\N	camera	\N	\N	\N
940	recent	institution	343	998	153	\N	camera	\N	\N	\N
941	newspaper	four	690	453	964	\N	camera	\N	\N	\N
942	focus	wait	917	908	393	\N	camera	\N	\N	\N
943	us	rule	211	995	953	\N	camera	\N	\N	\N
944	report	land	764	313	42	\N	camera	\N	\N	\N
945	deal	dark	979	633	642	\N	camera	\N	\N	\N
946	material	second	11	353	248	\N	camera	\N	\N	\N
948	forward	discuss	20	669	455	\N	camera	\N	\N	\N
949	impact	black	828	902	764	\N	camera	\N	\N	\N
950	hair	explain	632	850	215	\N	camera	\N	\N	\N
951	operation	rest	169	45	40	\N	camera	\N	\N	\N
952	suddenly	human	978	555	701	\N	camera	\N	\N	\N
953	arrive	evidence	447	932	52	\N	camera	\N	\N	\N
954	receive	town	602	590	499	\N	camera	\N	\N	\N
955	yet	section	691	92	345	\N	camera	\N	\N	\N
956	wait	discussion	184	800	967	\N	camera	\N	\N	\N
957	lay	necessary	855	973	497	\N	camera	\N	\N	\N
958	today	make	430	695	405	\N	camera	\N	\N	\N
959	fire	feel	2	289	34	\N	camera	\N	\N	\N
960	executive	him	185	634	259	\N	camera	\N	\N	\N
962	husband	without	837	261	562	\N	camera	\N	\N	\N
963	partner	series	690	409	565	\N	camera	\N	\N	\N
965	including	thank	263	166	613	\N	camera	\N	\N	\N
966	not	candidate	800	719	697	\N	camera	\N	\N	\N
967	service	herself	740	24	226	\N	camera	\N	\N	\N
969	ahead	carry	818	989	792	\N	camera	\N	\N	\N
970	interest	design	940	799	406	\N	camera	\N	\N	\N
971	something	college	228	94	627	\N	camera	\N	\N	\N
972	about	catch	343	873	682	\N	camera	\N	\N	\N
973	career	agreement	611	262	841	\N	camera	\N	\N	\N
974	condition	fund	300	635	264	\N	camera	\N	\N	\N
977	consider	ahead	23	108	224	\N	camera	\N	\N	\N
979	send	common	398	269	264	\N	camera	\N	\N	\N
981	consumer	determine	737	509	962	\N	camera	\N	\N	\N
982	risk	performance	872	376	416	\N	camera	\N	\N	\N
983	special	gas	294	937	287	\N	camera	\N	\N	\N
984	cell	their	157	804	595	\N	camera	\N	\N	\N
986	build	seat	214	465	885	\N	camera	\N	\N	\N
987	film	maybe	346	864	5	\N	camera	\N	\N	\N
988	stop	fund	836	893	930	\N	camera	\N	\N	\N
989	accept	share	376	956	624	\N	camera	\N	\N	\N
990	language	truth	760	443	883	\N	camera	\N	\N	\N
991	thus	partner	99	83	980	\N	camera	\N	\N	\N
992	less	voice	936	375	583	\N	camera	\N	\N	\N
993	business	nor	127	860	895	\N	camera	\N	\N	\N
994	bar	face	623	206	116	\N	camera	\N	\N	\N
997	laugh	voice	830	789	888	\N	camera	\N	\N	\N
998	he	machine	966	496	577	\N	camera	\N	\N	\N
999	image	marriage	204	697	256	\N	camera	\N	\N	\N
1001	garden	say	293	852	853	\N	phone	\N	\N	\N
1002	her	surface	956	320	673	\N	phone	\N	\N	\N
1003	deal	rest	69	736	161	\N	phone	\N	\N	\N
1004	candidate	most	784	830	134	\N	phone	\N	\N	\N
1005	director	data	198	945	783	\N	phone	\N	\N	\N
1006	accept	tonight	427	222	801	\N	phone	\N	\N	\N
925	collection	drop	283	792	362	\N	camera	\N	[{"barcode": "off", "variant_id": "796", "price_override": "177", "is_active_variant": "606"}]	\N
1000	hot	across	996	967	571	\N	camera	\N	[{"barcode": "industry", "variant_id": "364", "price_override": "352", "is_active_variant": "554"}]	\N
985	agree	way	63	74	267	\N	camera	\N	\N	[{"price": "195", "ends_at": "charge", "price_id": "444", "starts_at": "person"}]
980	success	happy	385	43	787	\N	camera	\N	\N	[{"price": "86", "ends_at": "open", "price_id": "55", "starts_at": "morning"}]
995	because	point	490	393	178	\N	camera	\N	\N	[{"price": "162", "ends_at": "information", "price_id": "462", "starts_at": "skill"}]
996	lay	animal	99	710	356	\N	camera	\N	\N	[{"price": "59", "ends_at": "rich", "price_id": "376", "starts_at": "third"}]
1008	hundred	nice	511	249	209	\N	phone	\N	\N	\N
1009	feeling	easy	156	251	922	\N	phone	\N	\N	\N
1010	may	culture	629	718	983	\N	phone	\N	\N	\N
1011	major	always	266	990	67	\N	phone	\N	\N	\N
1014	car	kitchen	130	568	604	\N	phone	\N	\N	\N
1015	hour	on	906	446	760	\N	phone	\N	\N	\N
1016	material	degree	230	455	692	\N	phone	\N	\N	\N
1018	ten	term	940	50	377	\N	phone	\N	\N	\N
1019	radio	debate	680	738	478	\N	phone	\N	\N	\N
1020	before	strong	160	469	206	\N	phone	\N	\N	\N
1021	push	whom	289	613	214	\N	phone	\N	\N	\N
1022	American	car	226	290	109	\N	phone	\N	\N	\N
1023	because	but	233	867	435	\N	phone	\N	\N	\N
1024	him	clear	858	308	505	\N	phone	\N	\N	\N
1025	trouble	turn	209	652	716	\N	phone	\N	\N	\N
1026	people	country	765	307	637	\N	phone	\N	\N	\N
1027	animal	owner	13	777	468	\N	phone	\N	\N	\N
1028	leave	cup	250	664	108	\N	phone	\N	\N	\N
1029	per	move	53	757	392	\N	phone	\N	\N	\N
1031	use	image	497	378	563	\N	phone	\N	\N	\N
1033	receive	world	986	244	531	\N	phone	\N	\N	\N
1034	feel	space	643	45	989	\N	phone	\N	\N	\N
1035	though	line	859	324	37	\N	phone	\N	\N	\N
1036	general	million	862	720	183	\N	phone	\N	\N	\N
1037	wrong	character	148	258	517	\N	phone	\N	\N	\N
1038	management	box	96	525	127	\N	phone	\N	\N	\N
1039	history	play	970	393	859	\N	phone	\N	\N	\N
1040	environment	court	216	39	543	\N	phone	\N	\N	\N
1041	standard	foot	987	493	977	\N	phone	\N	\N	\N
1042	size	heart	243	202	543	\N	phone	\N	\N	\N
1043	their	yourself	713	306	952	\N	phone	\N	\N	\N
1044	firm	world	860	824	791	\N	phone	\N	\N	\N
1045	tonight	a	926	929	219	\N	phone	\N	\N	\N
1046	majority	anyone	993	789	584	\N	phone	\N	\N	\N
1047	security	lay	38	639	323	\N	phone	\N	\N	\N
1048	century	until	541	667	183	\N	phone	\N	\N	\N
1049	when	scene	83	420	739	\N	phone	\N	\N	\N
1050	chair	network	558	45	811	\N	phone	\N	\N	\N
1051	and	decision	959	684	955	\N	phone	\N	\N	\N
1052	make	quality	766	196	915	\N	phone	\N	\N	\N
1055	too	bad	855	984	641	\N	phone	\N	\N	\N
1056	push	cover	457	816	863	\N	phone	\N	\N	\N
1057	single	spend	717	178	307	\N	phone	\N	\N	\N
1058	would	operation	338	934	341	\N	phone	\N	\N	\N
1059	myself	care	42	53	983	\N	phone	\N	\N	\N
1060	feeling	growth	187	616	474	\N	phone	\N	\N	\N
1061	compare	factor	731	38	273	\N	phone	\N	\N	\N
1062	sell	left	68	736	656	\N	phone	\N	\N	\N
1063	information	type	933	886	13	\N	phone	\N	\N	\N
1064	under	agreement	424	356	277	\N	phone	\N	\N	\N
1065	price	form	396	114	313	\N	phone	\N	\N	\N
1066	gun	public	255	235	531	\N	phone	\N	\N	\N
1067	fish	election	271	11	6	\N	phone	\N	\N	\N
1068	above	light	487	726	783	\N	phone	\N	\N	\N
1070	true	moment	613	951	866	\N	phone	\N	\N	\N
1071	possible	particularly	660	892	564	\N	phone	\N	\N	\N
1072	I	know	411	143	626	\N	phone	\N	\N	\N
1074	thank	dog	794	35	611	\N	phone	\N	\N	\N
1075	machine	nothing	361	8	921	\N	phone	\N	\N	\N
1076	will	opportunity	856	9	66	\N	phone	\N	\N	\N
1077	air	nor	734	444	732	\N	phone	\N	\N	\N
1078	bad	feel	702	137	402	\N	phone	\N	\N	\N
1079	sit	television	369	803	459	\N	phone	\N	\N	\N
1081	I	inside	319	236	712	\N	phone	\N	\N	\N
1082	speech	national	62	803	8	\N	phone	\N	\N	\N
1083	hour	travel	475	3	1000	\N	phone	\N	\N	\N
1084	attorney	reflect	729	402	825	\N	phone	\N	\N	\N
1085	fact	half	608	873	865	\N	phone	\N	\N	\N
1087	opportunity	task	925	940	339	\N	phone	\N	\N	\N
1088	glass	travel	125	955	823	\N	phone	\N	\N	\N
1090	ten	rate	795	723	85	\N	phone	\N	\N	\N
1091	financial	speak	365	966	915	\N	phone	\N	\N	\N
1092	believe	play	633	105	363	\N	phone	\N	\N	\N
1093	kid	attorney	896	948	506	\N	phone	\N	\N	\N
1094	trip	leader	442	224	65	\N	phone	\N	\N	\N
1095	environment	family	650	258	337	\N	phone	\N	\N	\N
1096	general	describe	378	596	335	\N	phone	\N	\N	\N
1097	these	either	636	614	667	\N	phone	\N	\N	\N
1098	defense	behind	915	422	356	\N	phone	\N	\N	\N
1099	behavior	poor	710	123	459	\N	phone	\N	\N	\N
1100	agree	mission	231	977	312	\N	phone	\N	\N	\N
1101	operation	suggest	975	695	144	\N	accessories	\N	\N	\N
1102	song	worker	723	522	631	\N	accessories	\N	\N	\N
1103	finish	nothing	864	594	318	\N	accessories	\N	\N	\N
1104	owner	election	114	273	654	\N	accessories	\N	\N	\N
1108	eight	time	299	763	385	\N	accessories	\N	\N	\N
1109	fall	hear	448	133	702	\N	accessories	\N	\N	\N
1110	cultural	lose	499	65	605	\N	accessories	\N	\N	\N
1111	seem	defense	534	190	64	\N	accessories	\N	\N	\N
1112	field	region	20	356	244	\N	accessories	\N	\N	\N
1086	third	his	741	224	166	\N	phone	\N	[{"barcode": "lose", "variant_id": "222", "price_override": "1", "is_active_variant": "52"}]	\N
1073	grow	later	133	141	623	\N	phone	\N	\N	[{"price": "9", "ends_at": "like", "price_id": "626", "starts_at": "thought"}]
1030	including	kid	855	18	527	\N	phone	\N	\N	[{"price": "260", "ends_at": "into", "price_id": "648", "starts_at": "just"}]
1032	assume	interest	950	661	609	\N	phone	\N	\N	[{"price": "858", "ends_at": "south", "price_id": "918", "starts_at": "those"}]
1113	onto	require	540	540	666	\N	accessories	\N	\N	\N
1116	really	away	160	881	562	\N	accessories	\N	\N	\N
1117	area	almost	26	146	558	\N	accessories	\N	\N	\N
1118	protect	special	370	341	749	\N	accessories	\N	\N	\N
1119	while	factor	262	900	996	\N	accessories	\N	\N	\N
1120	commercial	remember	609	891	44	\N	accessories	\N	\N	\N
1122	up	explain	952	308	692	\N	accessories	\N	\N	\N
1123	when	maintain	813	395	495	\N	accessories	\N	\N	\N
1124	nice	section	123	600	977	\N	accessories	\N	\N	\N
1125	customer	Congress	109	435	76	\N	accessories	\N	\N	\N
1126	available	newspaper	646	10	252	\N	accessories	\N	\N	\N
1127	less	class	73	968	218	\N	accessories	\N	\N	\N
1129	model	believe	714	572	587	\N	accessories	\N	\N	\N
1130	least	bank	474	386	86	\N	accessories	\N	\N	\N
1131	address	Mrs	992	309	740	\N	accessories	\N	\N	\N
1132	manager	Republican	738	303	835	\N	accessories	\N	\N	\N
1133	report	shake	658	622	946	\N	accessories	\N	\N	\N
1134	leave	budget	865	873	746	\N	accessories	\N	\N	\N
1135	one	white	253	944	506	\N	accessories	\N	\N	\N
1136	information	know	275	486	506	\N	accessories	\N	\N	\N
1137	business	others	113	608	740	\N	accessories	\N	\N	\N
1138	herself	thought	706	458	398	\N	accessories	\N	\N	\N
1139	smile	those	64	964	747	\N	accessories	\N	\N	\N
1140	seat	term	719	700	396	\N	accessories	\N	\N	\N
1141	necessary	already	539	146	820	\N	accessories	\N	\N	\N
1142	whose	back	525	730	164	\N	accessories	\N	\N	\N
1143	art	business	795	218	778	\N	accessories	\N	\N	\N
1144	work	weight	947	318	309	\N	accessories	\N	\N	\N
1145	chair	risk	22	725	463	\N	accessories	\N	\N	\N
1146	run	administration	691	593	354	\N	accessories	\N	\N	\N
1147	measure	much	373	877	224	\N	accessories	\N	\N	\N
1148	give	three	685	473	592	\N	accessories	\N	\N	\N
1149	resource	worry	278	704	639	\N	accessories	\N	\N	\N
1150	note	fire	284	889	455	\N	accessories	\N	\N	\N
1151	open	forget	965	334	459	\N	accessories	\N	\N	\N
1152	mind	bad	841	912	859	\N	accessories	\N	\N	\N
1153	author	human	926	934	328	\N	accessories	\N	\N	\N
1154	describe	give	161	261	726	\N	accessories	\N	\N	\N
1156	back	court	231	140	74	\N	accessories	\N	\N	\N
1157	next	positive	480	617	745	\N	accessories	\N	\N	\N
1158	serve	campaign	816	945	226	\N	accessories	\N	\N	\N
1159	mean	forget	401	275	9	\N	accessories	\N	\N	\N
1160	admit	difficult	124	760	442	\N	accessories	\N	\N	\N
1162	talk	according	63	679	764	\N	accessories	\N	\N	\N
1163	food	market	918	792	170	\N	accessories	\N	\N	\N
1164	yes	which	444	114	949	\N	accessories	\N	\N	\N
1166	technology	question	822	463	33	\N	accessories	\N	\N	\N
1167	apply	girl	573	643	218	\N	accessories	\N	\N	\N
1168	customer	challenge	768	281	173	\N	accessories	\N	\N	\N
1169	collection	deep	347	569	837	\N	accessories	\N	\N	\N
1170	cultural	show	713	37	132	\N	accessories	\N	\N	\N
1172	morning	recently	300	28	773	\N	accessories	\N	\N	\N
1173	which	trouble	557	654	628	\N	accessories	\N	\N	\N
1175	world	collection	633	522	880	\N	accessories	\N	\N	\N
1176	turn	bag	128	895	589	\N	accessories	\N	\N	\N
1178	pretty	sea	600	34	848	\N	accessories	\N	\N	\N
1179	look	kitchen	889	556	327	\N	accessories	\N	\N	\N
1180	including	boy	131	484	483	\N	accessories	\N	\N	\N
1181	particular	whole	647	528	104	\N	accessories	\N	\N	\N
1182	new	law	565	529	303	\N	accessories	\N	\N	\N
1183	kind	reduce	921	911	434	\N	accessories	\N	\N	\N
1184	prove	surface	941	360	832	\N	accessories	\N	\N	\N
1186	pretty	expect	677	104	892	\N	accessories	\N	\N	\N
1187	include	option	326	163	893	\N	accessories	\N	\N	\N
1190	approach	public	473	834	513	\N	accessories	\N	\N	\N
1191	city	decade	373	536	789	\N	accessories	\N	\N	\N
1193	relationship	collection	180	316	182	\N	accessories	\N	\N	\N
1194	senior	military	880	794	138	\N	accessories	\N	\N	\N
1195	difficult	billion	469	810	142	\N	accessories	\N	\N	\N
1196	sometimes	administration	497	519	562	\N	accessories	\N	\N	\N
1197	then	follow	626	655	766	\N	accessories	\N	\N	\N
1198	opportunity	degree	980	662	517	\N	accessories	\N	\N	\N
1199	specific	tax	287	489	129	\N	accessories	\N	\N	\N
1200	go	week	37	977	956	\N	accessories	\N	\N	\N
1201	certain	student	802	144	451	\N	appliance	\N	\N	\N
1202	break	feeling	159	924	400	\N	appliance	\N	\N	\N
1204	fire	figure	726	232	683	\N	appliance	\N	\N	\N
1205	party	response	293	607	794	\N	appliance	\N	\N	\N
1207	live	hold	677	844	633	\N	appliance	\N	\N	\N
1208	lay	number	925	687	861	\N	appliance	\N	\N	\N
1209	follow	size	76	1	877	\N	appliance	\N	\N	\N
1210	myself	generation	683	77	837	\N	appliance	\N	\N	\N
1211	tough	let	899	882	135	\N	appliance	\N	\N	\N
1212	matter	player	63	214	879	\N	appliance	\N	\N	\N
1165	if	another	663	326	315	\N	accessories	\N	[{"barcode": "account", "variant_id": "268", "price_override": "697", "is_active_variant": "561"}]	\N
1203	force	sort	643	690	64	\N	appliance	\N	[{"barcode": "task", "variant_id": "535", "price_override": "863", "is_active_variant": "230"}]	\N
1206	three	effect	959	339	157	\N	appliance	\N	\N	[{"price": "620", "ends_at": "lawyer", "price_id": "288", "starts_at": "build"}]
1161	politics	realize	687	309	706	\N	accessories	\N	\N	[{"price": "460", "ends_at": "pick", "price_id": "172", "starts_at": "send"}]
1213	reality	charge	346	699	286	\N	appliance	\N	\N	\N
1215	value	than	420	83	363	\N	appliance	\N	\N	\N
1216	yes	attention	433	462	852	\N	appliance	\N	\N	\N
1218	draw	national	927	677	58	\N	appliance	\N	\N	\N
1219	think	near	418	786	929	\N	appliance	\N	\N	\N
1220	side	less	207	70	889	\N	appliance	\N	\N	\N
1221	civil	Republican	467	910	527	\N	appliance	\N	\N	\N
1222	agency	forget	335	717	824	\N	appliance	\N	\N	\N
1223	if	join	675	318	808	\N	appliance	\N	\N	\N
1224	ok	game	464	54	45	\N	appliance	\N	\N	\N
1225	particular	race	164	783	25	\N	appliance	\N	\N	\N
1226	they	who	25	865	152	\N	appliance	\N	\N	\N
1227	probably	magazine	110	240	263	\N	appliance	\N	\N	\N
1228	help	same	512	197	945	\N	appliance	\N	\N	\N
1230	there	politics	659	864	242	\N	appliance	\N	\N	\N
1231	others	science	787	696	180	\N	appliance	\N	\N	\N
1232	kid	network	607	632	472	\N	appliance	\N	\N	\N
1233	lot	bag	4	960	836	\N	appliance	\N	\N	\N
1234	front	today	582	375	668	\N	appliance	\N	\N	\N
1235	commercial	agent	277	836	98	\N	appliance	\N	\N	\N
1237	ago	window	559	139	945	\N	appliance	\N	\N	\N
1238	huge	will	143	305	847	\N	appliance	\N	\N	\N
1239	tonight	laugh	307	536	103	\N	appliance	\N	\N	\N
1240	source	structure	451	410	656	\N	appliance	\N	\N	\N
1241	indeed	buy	32	988	832	\N	appliance	\N	\N	\N
1242	ten	court	489	989	658	\N	appliance	\N	\N	\N
1243	whole	trip	898	301	711	\N	appliance	\N	\N	\N
1244	keep	response	481	378	185	\N	appliance	\N	\N	\N
1245	south	me	489	893	562	\N	appliance	\N	\N	\N
1246	charge	politics	532	756	806	\N	appliance	\N	\N	\N
1247	newspaper	write	142	444	716	\N	appliance	\N	\N	\N
1248	single	mission	735	374	504	\N	appliance	\N	\N	\N
1249	along	course	50	252	851	\N	appliance	\N	\N	\N
1250	move	late	992	372	69	\N	appliance	\N	\N	\N
1251	clearly	security	218	443	340	\N	appliance	\N	\N	\N
1252	into	take	461	453	838	\N	appliance	\N	\N	\N
1253	allow	against	902	673	610	\N	appliance	\N	\N	\N
1254	arm	learn	381	41	209	\N	appliance	\N	\N	\N
1256	worker	read	807	779	905	\N	appliance	\N	\N	\N
1257	president	character	859	205	336	\N	appliance	\N	\N	\N
1258	by	arrive	855	6	891	\N	appliance	\N	\N	\N
1259	material	consumer	204	964	736	\N	appliance	\N	\N	\N
1260	five	big	200	311	835	\N	appliance	\N	\N	\N
1261	card	total	676	798	384	\N	appliance	\N	\N	\N
1262	way	look	29	695	913	\N	appliance	\N	\N	\N
1263	firm	loss	611	285	313	\N	appliance	\N	\N	\N
1264	a	suggest	818	682	718	\N	appliance	\N	\N	\N
1265	factor	the	903	16	357	\N	appliance	\N	\N	\N
1267	simply	pass	863	503	467	\N	appliance	\N	\N	\N
1268	rather	research	995	232	614	\N	appliance	\N	\N	\N
1269	career	apply	64	85	248	\N	appliance	\N	\N	\N
1270	set	soldier	203	438	144	\N	appliance	\N	\N	\N
1271	year	rise	411	602	361	\N	appliance	\N	\N	\N
1273	most	nature	821	871	848	\N	appliance	\N	\N	\N
1274	list	listen	295	720	382	\N	appliance	\N	\N	\N
1275	any	start	995	947	384	\N	appliance	\N	\N	\N
1276	watch	issue	955	876	118	\N	appliance	\N	\N	\N
1277	position	continue	309	981	280	\N	appliance	\N	\N	\N
1278	one	hit	686	864	780	\N	appliance	\N	\N	\N
1279	training	meet	284	54	504	\N	appliance	\N	\N	\N
1280	wind	kind	855	722	439	\N	appliance	\N	\N	\N
1281	can	control	596	906	576	\N	appliance	\N	\N	\N
1282	animal	outside	175	524	43	\N	appliance	\N	\N	\N
1284	think	fire	759	115	628	\N	appliance	\N	\N	\N
1285	particular	number	431	432	580	\N	appliance	\N	\N	\N
1286	production	plan	622	743	133	\N	appliance	\N	\N	\N
1287	degree	defense	265	246	720	\N	appliance	\N	\N	\N
1289	relate	magazine	841	436	18	\N	appliance	\N	\N	\N
1290	future	property	313	523	142	\N	appliance	\N	\N	\N
1291	education	station	422	38	479	\N	appliance	\N	\N	\N
1293	part	bit	397	109	706	\N	appliance	\N	\N	\N
1294	how	similar	424	475	111	\N	appliance	\N	\N	\N
1295	son	cell	832	888	421	\N	appliance	\N	\N	\N
1297	within	data	299	266	334	\N	appliance	\N	\N	\N
1298	note	since	144	557	57	\N	appliance	\N	\N	\N
1299	choose	film	324	760	100	\N	appliance	\N	\N	\N
1300	its	agent	310	762	423	\N	appliance	\N	\N	\N
1301	write	people	82	999	537	\N	kitchenappliance	\N	\N	\N
1303	east	PM	946	644	849	\N	kitchenappliance	\N	\N	\N
1305	office	population	289	511	998	\N	kitchenappliance	\N	\N	\N
1306	until	if	139	19	648	\N	kitchenappliance	\N	\N	\N
1307	others	land	991	211	624	\N	kitchenappliance	\N	\N	\N
1308	deep	market	528	152	788	\N	kitchenappliance	\N	\N	\N
1309	draw	with	720	136	435	\N	kitchenappliance	\N	\N	\N
1310	billion	listen	365	654	759	\N	kitchenappliance	\N	\N	\N
1311	consider	market	258	741	370	\N	kitchenappliance	\N	\N	\N
1312	arm	final	318	417	409	\N	kitchenappliance	\N	\N	\N
1313	president	police	378	334	907	\N	kitchenappliance	\N	\N	\N
1214	several	drive	206	846	703	\N	appliance	\N	[{"barcode": "firm", "variant_id": "414", "price_override": "175", "is_active_variant": "732"}]	\N
1302	get	wife	997	534	65	\N	kitchenappliance	\N	[{"barcode": "theory", "variant_id": "543", "price_override": "186", "is_active_variant": "473"}]	\N
1292	six	once	875	921	531	\N	appliance	\N	\N	[{"price": "164", "ends_at": "kitchen", "price_id": "660", "starts_at": "address"}]
1229	quite	beyond	135	293	921	\N	appliance	\N	\N	[{"price": "509", "ends_at": "fish", "price_id": "387", "starts_at": "fly"}]
1315	recent	accept	653	921	711	\N	kitchenappliance	\N	\N	\N
1316	modern	such	984	592	483	\N	kitchenappliance	\N	\N	\N
1317	cover	less	544	825	506	\N	kitchenappliance	\N	\N	\N
1318	Democrat	important	135	458	149	\N	kitchenappliance	\N	\N	\N
1319	evening	ago	866	155	898	\N	kitchenappliance	\N	\N	\N
1320	Congress	office	799	72	700	\N	kitchenappliance	\N	\N	\N
1321	medical	field	812	431	641	\N	kitchenappliance	\N	\N	\N
1322	happen	happen	277	227	632	\N	kitchenappliance	\N	\N	\N
1323	cost	rich	672	492	367	\N	kitchenappliance	\N	\N	\N
1324	there	area	270	498	737	\N	kitchenappliance	\N	\N	\N
1325	dark	tonight	838	47	438	\N	kitchenappliance	\N	\N	\N
1326	mean	PM	543	154	330	\N	kitchenappliance	\N	\N	\N
1327	recently	people	754	391	125	\N	kitchenappliance	\N	\N	\N
1328	against	both	909	915	330	\N	kitchenappliance	\N	\N	\N
1329	whole	let	644	534	819	\N	kitchenappliance	\N	\N	\N
1330	executive	change	944	539	159	\N	kitchenappliance	\N	\N	\N
1331	might	agency	160	872	63	\N	kitchenappliance	\N	\N	\N
1332	fine	star	409	343	660	\N	kitchenappliance	\N	\N	\N
1333	future	item	297	38	447	\N	kitchenappliance	\N	\N	\N
1334	court	food	28	972	590	\N	kitchenappliance	\N	\N	\N
1335	nation	song	832	299	253	\N	kitchenappliance	\N	\N	\N
1336	campaign	for	443	359	886	\N	kitchenappliance	\N	\N	\N
1337	season	property	333	844	698	\N	kitchenappliance	\N	\N	\N
1338	nice	election	692	381	35	\N	kitchenappliance	\N	\N	\N
1339	everything	grow	743	602	112	\N	kitchenappliance	\N	\N	\N
1341	fall	kind	409	922	472	\N	kitchenappliance	\N	\N	\N
1342	successful	top	287	382	148	\N	kitchenappliance	\N	\N	\N
1343	increase	analysis	107	388	910	\N	kitchenappliance	\N	\N	\N
1344	wide	over	321	912	8	\N	kitchenappliance	\N	\N	\N
1345	big	claim	241	140	322	\N	kitchenappliance	\N	\N	\N
1346	decade	within	497	887	176	\N	kitchenappliance	\N	\N	\N
1347	some	cultural	225	664	788	\N	kitchenappliance	\N	\N	\N
1349	model	purpose	283	688	694	\N	kitchenappliance	\N	\N	\N
1350	marriage	employee	482	374	438	\N	kitchenappliance	\N	\N	\N
1351	daughter	inside	997	965	231	\N	kitchenappliance	\N	\N	\N
1353	point	daughter	733	711	512	\N	kitchenappliance	\N	\N	\N
1354	among	treatment	928	208	71	\N	kitchenappliance	\N	\N	\N
1355	military	center	906	499	480	\N	kitchenappliance	\N	\N	\N
1356	total	each	557	83	505	\N	kitchenappliance	\N	\N	\N
1360	house	check	928	835	392	\N	kitchenappliance	\N	\N	\N
1361	specific	performance	942	751	571	\N	kitchenappliance	\N	\N	\N
1362	already	wind	151	4	574	\N	kitchenappliance	\N	\N	\N
1363	away	line	850	104	84	\N	kitchenappliance	\N	\N	\N
1364	stop	information	694	597	573	\N	kitchenappliance	\N	\N	\N
1365	information	us	700	405	77	\N	kitchenappliance	\N	\N	\N
1366	hand	husband	843	869	871	\N	kitchenappliance	\N	\N	\N
1367	argue	man	762	798	447	\N	kitchenappliance	\N	\N	\N
1368	itself	fine	638	558	623	\N	kitchenappliance	\N	\N	\N
1369	only	practice	619	490	397	\N	kitchenappliance	\N	\N	\N
1370	close	far	285	642	851	\N	kitchenappliance	\N	\N	\N
1371	develop	his	675	45	97	\N	kitchenappliance	\N	\N	\N
1372	region	management	675	37	5	\N	kitchenappliance	\N	\N	\N
1373	arm	blood	43	166	432	\N	kitchenappliance	\N	\N	\N
1374	experience	national	18	442	563	\N	kitchenappliance	\N	\N	\N
1375	adult	card	894	696	405	\N	kitchenappliance	\N	\N	\N
1376	chair	walk	140	246	990	\N	kitchenappliance	\N	\N	\N
1379	dark	speech	145	778	150	\N	kitchenappliance	\N	\N	\N
1380	prepare	camera	916	875	204	\N	kitchenappliance	\N	\N	\N
1382	well	new	373	481	649	\N	kitchenappliance	\N	\N	\N
1383	me	more	1	431	917	\N	kitchenappliance	\N	\N	\N
1384	plant	do	389	849	879	\N	kitchenappliance	\N	\N	\N
1385	sea	in	959	965	28	\N	kitchenappliance	\N	\N	\N
1386	large	base	827	526	879	\N	kitchenappliance	\N	\N	\N
1387	skill	work	264	133	905	\N	kitchenappliance	\N	\N	\N
1388	stage	several	888	781	561	\N	kitchenappliance	\N	\N	\N
1389	particular	space	919	125	898	\N	kitchenappliance	\N	\N	\N
1390	back	material	359	415	453	\N	kitchenappliance	\N	\N	\N
1391	skin	present	940	693	519	\N	kitchenappliance	\N	\N	\N
1392	food	talk	386	550	29	\N	kitchenappliance	\N	\N	\N
1394	why	vote	21	359	79	\N	kitchenappliance	\N	\N	\N
1395	bit	central	487	126	237	\N	kitchenappliance	\N	\N	\N
1398	no	animal	239	45	300	\N	kitchenappliance	\N	\N	\N
1399	PM	company	568	928	465	\N	kitchenappliance	\N	\N	\N
1400	camera	nearly	252	12	312	\N	kitchenappliance	\N	\N	\N
1401	people	allow	204	202	186	\N	apparel	\N	\N	\N
1403	activity	stop	402	643	817	\N	apparel	\N	\N	\N
1405	foreign	improve	912	958	408	\N	apparel	\N	\N	\N
1406	moment	clearly	920	833	977	\N	apparel	\N	\N	\N
1357	box	within	560	859	661	\N	kitchenappliance	\N	[{"barcode": "since", "variant_id": "176", "price_override": "432", "is_active_variant": "585"}]	\N
1314	movie	recognize	819	136	718	\N	kitchenappliance	\N	\N	[{"price": "881", "ends_at": "benefit", "price_id": "757", "starts_at": "pass"}]
1402	subject	color	74	263	969	\N	apparel	\N	\N	[{"price": "777", "ends_at": "it", "price_id": "398", "starts_at": "I"}]
1340	drive	it	265	982	988	\N	kitchenappliance	\N	\N	[{"price": "80", "ends_at": "fly", "price_id": "57", "starts_at": "month"}]
1407	alone	remain	619	366	237	\N	apparel	\N	\N	\N
1408	not	learn	810	853	554	\N	apparel	\N	\N	\N
1410	strong	glass	948	396	153	\N	apparel	\N	\N	\N
1413	me	thought	219	642	7	\N	apparel	\N	\N	\N
1414	gun	everybody	952	1000	664	\N	apparel	\N	\N	\N
1415	ok	window	879	471	292	\N	apparel	\N	\N	\N
1416	business	seem	537	772	936	\N	apparel	\N	\N	\N
1417	range	radio	767	80	619	\N	apparel	\N	\N	\N
1418	door	win	874	208	969	\N	apparel	\N	\N	\N
1419	land	according	910	32	447	\N	apparel	\N	\N	\N
1420	gas	seven	176	451	975	\N	apparel	\N	\N	\N
1421	within	figure	54	458	634	\N	apparel	\N	\N	\N
1422	mind	recent	725	294	593	\N	apparel	\N	\N	\N
1423	market	candidate	995	557	968	\N	apparel	\N	\N	\N
1424	around	develop	250	117	464	\N	apparel	\N	\N	\N
1425	ahead	last	236	527	325	\N	apparel	\N	\N	\N
1426	strong	article	687	314	959	\N	apparel	\N	\N	\N
1428	everybody	oil	118	19	979	\N	apparel	\N	\N	\N
1430	conference	thus	59	336	163	\N	apparel	\N	\N	\N
1431	nearly	serious	36	31	268	\N	apparel	\N	\N	\N
1432	join	oil	32	743	299	\N	apparel	\N	\N	\N
1433	catch	leave	738	740	613	\N	apparel	\N	\N	\N
1434	rise	picture	346	602	92	\N	apparel	\N	\N	\N
1435	either	question	180	360	736	\N	apparel	\N	\N	\N
1436	determine	want	805	379	148	\N	apparel	\N	\N	\N
1437	prevent	successful	199	937	473	\N	apparel	\N	\N	\N
1438	act	effect	459	356	630	\N	apparel	\N	\N	\N
1440	point	industry	91	749	320	\N	apparel	\N	\N	\N
1441	not	quality	84	125	602	\N	apparel	\N	\N	\N
1442	behavior	that	946	256	570	\N	apparel	\N	\N	\N
1443	attorney	win	793	905	936	\N	apparel	\N	\N	\N
1444	that	benefit	829	932	128	\N	apparel	\N	\N	\N
1446	yard	happy	969	140	794	\N	apparel	\N	\N	\N
1447	politics	kid	856	82	445	\N	apparel	\N	\N	\N
1448	player	natural	391	158	585	\N	apparel	\N	\N	\N
1449	end	interest	948	309	263	\N	apparel	\N	\N	\N
1450	official	church	880	396	121	\N	apparel	\N	\N	\N
1451	walk	these	912	676	369	\N	apparel	\N	\N	\N
1452	short	grow	494	675	920	\N	apparel	\N	\N	\N
1454	add	major	154	643	275	\N	apparel	\N	\N	\N
1455	take	effort	976	653	201	\N	apparel	\N	\N	\N
1456	she	may	949	677	413	\N	apparel	\N	\N	\N
1457	might	color	330	828	111	\N	apparel	\N	\N	\N
1459	remain	important	647	333	578	\N	apparel	\N	\N	\N
1460	investment	take	57	727	470	\N	apparel	\N	\N	\N
1461	man	court	466	511	522	\N	apparel	\N	\N	\N
1462	word	fast	822	880	285	\N	apparel	\N	\N	\N
1464	exactly	whether	996	326	229	\N	apparel	\N	\N	\N
1465	class	concern	321	202	778	\N	apparel	\N	\N	\N
1466	would	bag	875	426	217	\N	apparel	\N	\N	\N
1469	address	out	143	404	355	\N	apparel	\N	\N	\N
1470	especially	policy	617	150	750	\N	apparel	\N	\N	\N
1472	spring	hope	773	988	205	\N	apparel	\N	\N	\N
1473	section	own	485	388	791	\N	apparel	\N	\N	\N
1474	it	form	259	571	993	\N	apparel	\N	\N	\N
1478	leader	public	102	417	117	\N	apparel	\N	\N	\N
1479	can	much	414	936	55	\N	apparel	\N	\N	\N
1480	star	later	84	962	578	\N	apparel	\N	\N	\N
1481	and	fund	228	925	346	\N	apparel	\N	\N	\N
1482	nice	sport	626	696	676	\N	apparel	\N	\N	\N
1484	serve	section	248	420	141	\N	apparel	\N	\N	\N
1485	paper	concern	700	942	411	\N	apparel	\N	\N	\N
1486	order	social	253	193	582	\N	apparel	\N	\N	\N
1487	choose	talk	581	348	192	\N	apparel	\N	\N	\N
1488	technology	sense	925	790	214	\N	apparel	\N	\N	\N
1490	treat	explain	884	550	775	\N	apparel	\N	\N	\N
1491	serve	fight	358	676	725	\N	apparel	\N	\N	\N
1492	ball	note	939	234	359	\N	apparel	\N	\N	\N
1493	real	world	74	231	930	\N	apparel	\N	\N	\N
1494	central	get	132	366	642	\N	apparel	\N	\N	\N
1495	home	result	95	475	528	\N	apparel	\N	\N	\N
1496	lot	figure	387	797	270	\N	apparel	\N	\N	\N
1497	fight	everybody	469	479	681	\N	apparel	\N	\N	\N
1498	participant	entire	270	721	967	\N	apparel	\N	\N	\N
1499	business	her	804	964	541	\N	apparel	\N	\N	\N
1500	guess	inside	434	948	243	\N	apparel	\N	\N	\N
1901	kid	network	276	355	769	sing	media	\N	\N	\N
1902	claim	very	303	608	243	discover	media	\N	\N	\N
1903	church	catch	559	43	338	Mrs	media	\N	\N	\N
1904	explain	theory	570	183	758	eye	media	\N	\N	\N
1905	structure	rather	424	326	559	need	media	\N	\N	\N
1907	answer	summer	797	662	547	professor	media	\N	\N	\N
1908	sea	concern	30	326	489	generation	media	\N	\N	\N
1909	factor	possible	210	409	102	actually	media	\N	\N	\N
1910	nor	hand	728	647	817	item	media	\N	\N	\N
1911	necessary	institution	506	552	565	guy	media	\N	\N	\N
1429	miss	second	937	380	514	\N	apparel	\N	[{"barcode": "structure", "variant_id": "478", "price_override": "491", "is_active_variant": "507"}]	\N
1427	federal	simple	273	656	430	\N	apparel	\N	[{"barcode": "mind", "variant_id": "564", "price_override": "688", "is_active_variant": "590"}]	\N
1489	change	pay	54	952	526	\N	apparel	\N	[{"barcode": "audience", "variant_id": "288", "price_override": "404", "is_active_variant": "340"}]	\N
1439	everybody	learn	253	239	98	\N	apparel	\N	\N	[{"price": "74", "ends_at": "resource", "price_id": "785", "starts_at": "give"}]
1477	peace	garden	149	175	626	\N	apparel	\N	\N	[{"price": "592", "ends_at": "say", "price_id": "386", "starts_at": "later"}]
1475	create	hit	542	773	537	\N	apparel	\N	\N	[{"price": "705", "ends_at": "food", "price_id": "291", "starts_at": "stop"}]
1912	employee	environment	775	797	459	heavy	media	\N	\N	\N
1913	movie	bit	696	654	198	unit	media	\N	\N	\N
1914	and	politics	651	264	620	cut	media	\N	\N	\N
1915	mouth	medical	8	69	832	stay	media	\N	\N	\N
1916	discuss	major	19	825	196	account	media	\N	\N	\N
1917	together	tend	281	653	580	list	media	\N	\N	\N
1918	project	product	787	490	573	candidate	media	\N	\N	\N
1919	public	final	464	43	390	great	media	\N	\N	\N
1920	campaign	material	412	57	656	of	media	\N	\N	\N
1921	Republican	interview	297	363	240	increase	media	\N	\N	\N
1922	generation	guy	471	572	482	study	media	\N	\N	\N
1923	exactly	treat	39	786	998	past	media	\N	\N	\N
1924	market	discover	121	330	833	box	media	\N	\N	\N
1925	fund	industry	960	439	750	treatment	media	\N	\N	\N
1926	art	sense	862	719	759	thought	media	\N	\N	\N
1927	it	instead	883	911	284	especially	media	\N	\N	\N
1928	successful	letter	701	563	895	wife	media	\N	\N	\N
1929	each	science	991	110	674	share	media	\N	\N	\N
1930	build	room	436	519	435	network	media	\N	\N	\N
1931	federal	green	837	491	229	quickly	media	\N	\N	\N
1932	democratic	matter	182	530	610	protect	media	\N	\N	\N
1933	mean	job	636	938	479	range	media	\N	\N	\N
1934	eat	city	105	87	411	everybody	media	\N	\N	\N
1935	move	collection	772	273	196	hold	media	\N	\N	\N
1937	structure	good	995	610	385	sit	media	\N	\N	\N
1938	once	month	605	13	244	baby	media	\N	\N	\N
1940	science	scientist	88	167	404	traditional	media	\N	\N	\N
1941	that	human	803	53	218	who	media	\N	\N	\N
1942	identify	hundred	873	185	179	meeting	media	\N	\N	\N
1943	national	ready	578	119	240	hot	media	\N	\N	\N
1944	one	he	429	296	161	despite	media	\N	\N	\N
1946	agreement	family	562	195	126	let	media	\N	\N	\N
1947	central	thousand	673	506	207	institution	media	\N	\N	\N
1948	but	assume	640	717	815	source	media	\N	\N	\N
1949	opportunity	hot	735	851	619	through	media	\N	\N	\N
1950	environment	prepare	181	339	674	provide	media	\N	\N	\N
1951	talk	sell	197	979	665	plant	media	\N	\N	\N
1952	group	most	114	335	597	usually	media	\N	\N	\N
1953	so	then	183	3	772	decade	media	\N	\N	\N
1954	former	moment	392	553	396	political	media	\N	\N	\N
1955	letter	somebody	66	325	345	today	media	\N	\N	\N
1956	skin	statement	266	903	275	modern	media	\N	\N	\N
1957	quality	possible	164	960	473	church	media	\N	\N	\N
1958	TV	morning	393	481	96	car	media	\N	\N	\N
1959	clear	single	728	125	572	center	media	\N	\N	\N
1961	election	long	833	302	761	agreement	media	\N	\N	\N
1962	anyone	medical	205	366	666	site	media	\N	\N	\N
1963	party	season	687	876	863	smile	media	\N	\N	\N
1964	become	tell	553	895	659	run	media	\N	\N	\N
1965	fast	hard	843	816	442	send	media	\N	\N	\N
1966	continue	general	269	775	548	course	media	\N	\N	\N
1967	interest	there	136	681	911	these	media	\N	\N	\N
1968	southern	sell	807	346	54	ground	media	\N	\N	\N
1969	organization	attack	967	257	882	parent	media	\N	\N	\N
1971	represent	four	619	252	38	thousand	media	\N	\N	\N
1972	several	too	880	873	96	investment	media	\N	\N	\N
1973	treatment	believe	686	185	197	skin	media	\N	\N	\N
1974	argue	both	923	832	841	kitchen	media	\N	\N	\N
1975	opportunity	coach	518	627	874	should	media	\N	\N	\N
1976	artist	town	696	419	506	computer	media	\N	\N	\N
1978	PM	party	678	111	836	ability	media	\N	\N	\N
1979	beautiful	class	437	181	33	ready	media	\N	\N	\N
1980	rise	administration	313	363	32	plan	media	\N	\N	\N
1981	sense	report	350	396	449	commercial	media	\N	\N	\N
1982	hold	model	485	364	742	real	media	\N	\N	\N
1984	without	speak	266	583	50	forget	media	\N	\N	\N
1985	international	unit	394	158	487	hospital	media	\N	\N	\N
1986	usually	executive	400	848	557	certain	media	\N	\N	\N
1987	or	white	183	232	527	long	media	\N	\N	\N
1988	behind	treatment	856	630	867	teacher	media	\N	\N	\N
1989	entire	big	422	465	768	plant	media	\N	\N	\N
1990	because	thing	203	48	581	get	media	\N	\N	\N
1991	their	apply	76	968	723	their	media	\N	\N	\N
1993	step	time	705	872	841	statement	media	\N	\N	\N
1994	indeed	statement	348	214	105	mouth	media	\N	\N	\N
1995	this	hard	916	325	34	book	media	\N	\N	\N
1996	exist	grow	207	359	972	walk	media	\N	\N	\N
1998	ever	among	607	931	314	out	media	\N	\N	\N
1999	present	politics	301	667	518	exactly	media	\N	\N	\N
2001	director	piece	674	842	707	right	software	\N	\N	\N
2002	under	six	584	1	447	debate	software	\N	\N	\N
2003	national	environment	813	228	984	health	software	\N	\N	\N
2004	point	bit	99	8	447	building	software	\N	\N	\N
2005	watch	truth	563	295	529	loss	software	\N	\N	\N
2006	environment	something	971	757	858	floor	software	\N	\N	\N
2007	fund	enter	826	635	587	project	software	\N	\N	\N
2008	teacher	deal	197	823	821	try	software	\N	\N	\N
1997	think	win	715	44	662	whose	media	\N	[{"barcode": "issue", "variant_id": "924", "price_override": "652", "is_active_variant": "790"}]	\N
1977	good	enough	555	901	246	stay	media	\N	\N	[{"price": "2", "ends_at": "discussion", "price_id": "303", "starts_at": "side"}]
1960	decade	fund	264	966	317	share	media	\N	\N	[{"price": "449", "ends_at": "plan", "price_id": "191", "starts_at": "thing"}]
2009	doctor	feeling	325	118	971	fire	software	\N	\N	\N
2010	because	conference	576	122	496	move	software	\N	\N	\N
2011	west	about	808	569	394	air	software	\N	\N	\N
2012	as	improve	574	917	57	past	software	\N	\N	\N
2013	during	PM	476	917	274	television	software	\N	\N	\N
2014	chance	seven	593	336	741	hour	software	\N	\N	\N
2015	newspaper	think	129	842	319	thus	software	\N	\N	\N
2016	food	now	49	130	296	common	software	\N	\N	\N
2017	not	response	807	608	126	sense	software	\N	\N	\N
2018	difference	piece	858	439	441	chair	software	\N	\N	\N
2019	produce	shoulder	434	365	574	power	software	\N	\N	\N
2020	seat	artist	718	590	505	then	software	\N	\N	\N
2021	street	minute	735	665	722	region	software	\N	\N	\N
2022	weight	crime	950	301	770	part	software	\N	\N	\N
2023	themselves	perhaps	479	248	214	admit	software	\N	\N	\N
2026	keep	involve	460	987	684	deep	software	\N	\N	\N
2027	establish	agency	214	297	905	interview	software	\N	\N	\N
2028	stage	coach	149	88	937	PM	software	\N	\N	\N
2029	class	without	544	93	676	learn	software	\N	\N	\N
2030	deal	policy	175	418	173	establish	software	\N	\N	\N
2031	pick	teach	779	432	829	same	software	\N	\N	\N
2032	the	letter	348	793	676	allow	software	\N	\N	\N
2033	need	behavior	862	571	238	culture	software	\N	\N	\N
2034	present	whether	337	763	782	inside	software	\N	\N	\N
2035	hear	yet	793	772	768	call	software	\N	\N	\N
2036	moment	grow	175	648	300	take	software	\N	\N	\N
2037	yeah	agency	115	232	640	recognize	software	\N	\N	\N
2039	price	quite	179	703	811	different	software	\N	\N	\N
2040	education	same	822	551	451	main	software	\N	\N	\N
2041	no	go	954	645	151	phone	software	\N	\N	\N
2042	agreement	while	411	876	231	current	software	\N	\N	\N
2043	pattern	less	855	735	927	summer	software	\N	\N	\N
2045	stock	skill	25	301	649	price	software	\N	\N	\N
2046	open	everybody	294	57	95	learn	software	\N	\N	\N
2047	according	national	365	118	685	character	software	\N	\N	\N
2048	your	garden	282	980	728	market	software	\N	\N	\N
2049	concern	book	57	566	280	herself	software	\N	\N	\N
2050	place	Democrat	978	358	252	claim	software	\N	\N	\N
2051	enter	common	1000	804	502	although	software	\N	\N	\N
2052	response	modern	779	773	70	order	software	\N	\N	\N
2053	sound	than	419	390	482	discover	software	\N	\N	\N
2054	simply	reason	848	629	423	owner	software	\N	\N	\N
2055	medical	economy	445	227	468	energy	software	\N	\N	\N
2056	onto	mouth	754	520	405	himself	software	\N	\N	\N
2057	scene	public	194	206	909	successful	software	\N	\N	\N
2058	and	likely	39	642	147	marriage	software	\N	\N	\N
2059	number	space	360	361	870	particular	software	\N	\N	\N
2060	cold	world	260	875	990	collection	software	\N	\N	\N
2061	evening	federal	328	318	19	will	software	\N	\N	\N
2062	each	look	446	466	272	manager	software	\N	\N	\N
2063	per	maybe	801	736	723	according	software	\N	\N	\N
2065	difficult	time	956	436	716	line	software	\N	\N	\N
2066	vote	black	237	848	612	reflect	software	\N	\N	\N
2068	clear	resource	242	559	728	simply	software	\N	\N	\N
2069	fight	usually	228	685	123	little	software	\N	\N	\N
2070	he	middle	871	97	198	talk	software	\N	\N	\N
2071	necessary	over	44	424	903	agreement	software	\N	\N	\N
2072	concern	painting	148	740	691	modern	software	\N	\N	\N
2074	determine	sport	876	63	969	money	software	\N	\N	\N
2075	evening	summer	729	780	103	establish	software	\N	\N	\N
2076	outside	compare	193	362	65	PM	software	\N	\N	\N
2077	while	mention	586	612	223	Mrs	software	\N	\N	\N
2078	half	yes	998	401	299	head	software	\N	\N	\N
2079	forward	under	609	300	317	student	software	\N	\N	\N
2080	tonight	computer	597	903	372	exist	software	\N	\N	\N
2082	trip	mission	146	369	953	whether	software	\N	\N	\N
2083	night	reflect	361	612	540	suffer	software	\N	\N	\N
2084	high	chair	924	54	537	push	software	\N	\N	\N
2085	tax	future	93	880	445	write	software	\N	\N	\N
2086	who	sure	847	539	366	administration	software	\N	\N	\N
2087	trip	analysis	1000	313	532	down	software	\N	\N	\N
2088	also	subject	396	530	559	I	software	\N	\N	\N
2089	within	between	171	153	550	government	software	\N	\N	\N
2090	why	stay	926	677	626	water	software	\N	\N	\N
2091	whatever	public	674	228	716	just	software	\N	\N	\N
2092	heavy	leader	446	433	945	prevent	software	\N	\N	\N
2093	challenge	alone	516	644	892	try	software	\N	\N	\N
2094	nothing	here	952	317	454	home	software	\N	\N	\N
2095	seven	he	58	466	574	material	software	\N	\N	\N
2096	beautiful	with	1	592	965	everyone	software	\N	\N	\N
2097	offer	mission	306	632	514	some	software	\N	\N	\N
2099	this	beat	372	459	376	me	software	\N	\N	\N
2100	while	marriage	154	285	837	and	software	\N	\N	\N
2098	design	despite	659	75	116	part	software	\N	[{"barcode": "individual", "variant_id": "427", "price_override": "242", "is_active_variant": "850"}]	\N
295	different	none	190	785	421	claim	digitalproduct	[{"url": "people", "alt_text": "example", "image_id": "941", "sort_order": "955"}]	[{"barcode": "miss", "variant_id": "178", "price_override": "522", "is_active_variant": "122"}]	\N
2044	opportunity	raise	125	515	767	cup	software	\N	\N	[{"price": "278", "ends_at": "value", "price_id": "802", "starts_at": "night"}]
344	they	apply	534	264	427	\N	electronics	[{"url": "you", "alt_text": "arrive", "image_id": "659", "sort_order": "221"}]	\N	\N
875	support	machine	718	628	421	\N	smartwatch	[{"url": "environmental", "alt_text": "letter", "image_id": "754", "sort_order": "843"}]	\N	\N
1155	board	what	864	31	691	\N	accessories	[{"url": "spend", "alt_text": "end", "image_id": "499", "sort_order": "925"}]	\N	\N
361	you	approach	707	139	661	\N	electronics	[{"url": "part", "alt_text": "science", "image_id": "796", "sort_order": "714"}]	\N	\N
1236	heart	range	308	238	386	\N	appliance	[{"url": "range", "alt_text": "issue", "image_id": "993", "sort_order": "729"}]	\N	\N
1377	fund	think	400	967	322	\N	kitchenappliance	[{"url": "dark", "alt_text": "process", "image_id": "99", "sort_order": "583"}]	\N	\N
1906	exactly	open	614	843	932	water	media	[{"url": "whose", "alt_text": "evening", "image_id": "330", "sort_order": "867"}]	\N	\N
2081	me	scene	226	123	754	military	software	[{"url": "our", "alt_text": "significant", "image_id": "518", "sort_order": "234"}]	\N	\N
964	learn	law	305	3	745	\N	camera	[{"url": "easy", "alt_text": "age", "image_id": "405", "sort_order": "997"}]	\N	\N
641	despite	pull	759	877	490	\N	laptop	[{"url": "nation", "alt_text": "discover", "image_id": "417", "sort_order": "971"}]	\N	\N
55	indicate	his	517	512	18	\N	product	[{"url": "another", "alt_text": "beyond", "image_id": "473", "sort_order": "593"}]	\N	\N
2067	price	paper	834	634	395	threat	software	[{"url": "wide", "alt_text": "much", "image_id": "652", "sort_order": "517"}]	\N	\N
156	officer	visit	388	768	573	\N	physicalproduct	[{"url": "right", "alt_text": "start", "image_id": "694", "sort_order": "769"}]	\N	\N
728	single	free	702	750	921	\N	tablet	[{"url": "under", "alt_text": "level", "image_id": "21", "sort_order": "964"}]	\N	\N
1013	sense	thousand	581	481	444	\N	phone	[{"url": "religious", "alt_text": "each", "image_id": "324", "sort_order": "67"}]	\N	\N
1471	fast	base	783	989	703	\N	apparel	[{"url": "everything", "alt_text": "treat", "image_id": "330", "sort_order": "892"}]	\N	\N
385	young	create	137	56	615	\N	electronics	[{"url": "hard", "alt_text": "interview", "image_id": "143", "sort_order": "439"}]	\N	\N
1358	like	store	586	828	836	\N	kitchenappliance	[{"url": "degree", "alt_text": "consumer", "image_id": "892", "sort_order": "291"}]	\N	\N
372	author	pick	257	921	789	\N	electronics	[{"url": "according", "alt_text": "bit", "image_id": "272", "sort_order": "415"}]	\N	\N
298	left	Republican	69	648	585	fire	digitalproduct	[{"url": "star", "alt_text": "what", "image_id": "798", "sort_order": "609"}]	\N	\N
210	alone	hot	596	936	956	knowledge	digitalproduct	[{"url": "lose", "alt_text": "vote", "image_id": "793", "sort_order": "271"}]	\N	\N
2064	tree	fund	722	764	13	beautiful	software	[{"url": "management", "alt_text": "upon", "image_id": "949", "sort_order": "541"}]	\N	\N
1945	position	truth	862	594	137	miss	media	[{"url": "throw", "alt_text": "central", "image_id": "768", "sort_order": "815"}]	\N	\N
1992	leader	true	6	913	145	continue	media	[{"url": "treatment", "alt_text": "hour", "image_id": "175", "sort_order": "973"}]	\N	\N
1115	investment	point	225	967	523	\N	accessories	[{"url": "we", "alt_text": "miss", "image_id": "673", "sort_order": "580"}]	\N	\N
2073	unit	practice	478	649	851	and	software	[{"url": "visit", "alt_text": "yeah", "image_id": "566", "sort_order": "363"}]	\N	\N
855	radio	threat	406	455	523	\N	smartwatch	[{"url": "information", "alt_text": "election", "image_id": "383", "sort_order": "745"}]	\N	\N
665	will	bit	123	453	599	\N	laptop	[{"url": "knowledge", "alt_text": "real", "image_id": "667", "sort_order": "725"}]	\N	\N
2038	economic	save	437	605	5	hundred	software	[{"url": "green", "alt_text": "hope", "image_id": "67", "sort_order": "334"}]	\N	\N
798	together	turn	887	109	186	\N	tablet	[{"url": "produce", "alt_text": "section", "image_id": "94", "sort_order": "532"}]	\N	\N
772	piece	capital	652	928	139	\N	tablet	[{"url": "father", "alt_text": "blue", "image_id": "341", "sort_order": "133"}]	\N	\N
1397	spend	say	286	775	485	\N	kitchenappliance	[{"url": "area", "alt_text": "toward", "image_id": "360", "sort_order": "241"}]	\N	\N
1296	success	surface	881	269	616	\N	appliance	[{"url": "type", "alt_text": "international", "image_id": "252", "sort_order": "522"}]	\N	\N
101	similar	suggest	251	226	21	\N	physicalproduct	[{"url": "pretty", "alt_text": "world", "image_id": "595", "sort_order": "38"}]	\N	\N
293	teacher	card	152	257	704	share	digitalproduct	[{"url": "health", "alt_text": "build", "image_id": "688", "sort_order": "422"}]	\N	\N
453	foreign	must	727	148	357	\N	computer	[{"url": "bar", "alt_text": "image", "image_id": "936", "sort_order": "353"}]	\N	\N
299	ahead	her	876	75	814	best	digitalproduct	[{"url": "natural", "alt_text": "campaign", "image_id": "377", "sort_order": "550"}]	\N	\N
1283	either	nor	263	197	323	\N	appliance	[{"url": "development", "alt_text": "account", "image_id": "206", "sort_order": "439"}]	\N	\N
1468	beautiful	herself	904	398	30	\N	apparel	[{"url": "three", "alt_text": "customer", "image_id": "174", "sort_order": "581"}]	\N	\N
1409	administration	soon	466	638	129	\N	apparel	[{"url": "option", "alt_text": "medical", "image_id": "207", "sort_order": "338"}]	\N	\N
1476	ahead	wide	25	998	391	\N	apparel	[{"url": "study", "alt_text": "game", "image_id": "848", "sort_order": "792"}]	\N	\N
1412	huge	month	897	147	193	\N	apparel	[{"url": "science", "alt_text": "step", "image_id": "175", "sort_order": "906"}]	\N	\N
924	herself	above	809	708	264	\N	camera	[{"url": "most", "alt_text": "gas", "image_id": "227", "sort_order": "762"}]	\N	\N
1054	new	decision	11	292	217	\N	phone	[{"url": "chair", "alt_text": "set", "image_id": "341", "sort_order": "681"}]	\N	\N
324	enter	daughter	834	267	377	\N	electronics	[{"url": "name", "alt_text": "rock", "image_id": "135", "sort_order": "573"}]	\N	\N
75	account	maintain	374	913	303	\N	product	[{"url": "almost", "alt_text": "look", "image_id": "52", "sort_order": "392"}]	\N	\N
976	wide	agent	225	792	881	\N	camera	[{"url": "method", "alt_text": "color", "image_id": "133", "sort_order": "348"}]	\N	\N
236	kind	later	579	389	261	tough	digitalproduct	[{"url": "free", "alt_text": "kid", "image_id": "476", "sort_order": "99"}]	\N	\N
1453	card	beyond	909	218	601	\N	apparel	[{"url": "next", "alt_text": "early", "image_id": "89", "sort_order": "765"}]	\N	\N
947	eye	which	961	730	247	\N	camera	[{"url": "history", "alt_text": "southern", "image_id": "88", "sort_order": "522"}]	\N	\N
1266	quality	air	712	580	769	\N	appliance	[{"url": "talk", "alt_text": "study", "image_id": "304", "sort_order": "155"}]	\N	\N
812	himself	true	20	286	38	\N	smartwatch	[{"url": "leave", "alt_text": "story", "image_id": "593", "sort_order": "454"}]	\N	\N
751	join	political	848	47	599	\N	tablet	[{"url": "clear", "alt_text": "listen", "image_id": "522", "sort_order": "785"}]	\N	\N
1192	two	edge	179	858	696	\N	accessories	[{"url": "quite", "alt_text": "talk", "image_id": "538", "sort_order": "791"}]	\N	\N
2000	product	in	768	173	811	year	media	[{"url": "institution", "alt_text": "world", "image_id": "118", "sort_order": "995"}]	\N	\N
1174	live	hotel	553	847	476	\N	accessories	[{"url": "leg", "alt_text": "central", "image_id": "18", "sort_order": "601"}]	\N	\N
601	those	pick	874	376	512	\N	laptop	[{"url": "citizen", "alt_text": "peace", "image_id": "809", "sort_order": "701"}]	\N	\N
828	assume	begin	356	959	725	\N	smartwatch	[{"url": "president", "alt_text": "without", "image_id": "313", "sort_order": "647"}]	\N	\N
1107	central	tend	56	145	505	\N	accessories	[{"url": "recent", "alt_text": "doctor", "image_id": "837", "sort_order": "554"}]	\N	\N
1121	see	southern	690	470	39	\N	accessories	[{"url": "summer", "alt_text": "three", "image_id": "840", "sort_order": "48"}]	\N	\N
896	develop	next	543	877	73	\N	smartwatch	[{"url": "themselves", "alt_text": "attack", "image_id": "652", "sort_order": "369"}]	\N	\N
1359	big	according	427	96	761	\N	kitchenappliance	\N	[{"barcode": "single", "variant_id": "998", "price_override": "145", "is_active_variant": "961"}]	\N
1396	once	show	914	759	78	\N	kitchenappliance	\N	[{"barcode": "he", "variant_id": "459", "price_override": "736", "is_active_variant": "443"}, {"barcode": "consumer", "variant_id": "614", "price_override": "630", "is_active_variant": "86"}]	\N
32	attention	source	466	720	330	\N	product	\N	[{"barcode": "throughout", "variant_id": "170", "price_override": "968", "is_active_variant": "843"}]	\N
1053	employee	less	862	823	88	\N	phone	\N	[{"barcode": "create", "variant_id": "554", "price_override": "896", "is_active_variant": "613"}]	\N
97	discover	us	964	233	400	\N	product	\N	[{"barcode": "sell", "variant_id": "559", "price_override": "176", "is_active_variant": "921"}]	\N
1080	win	every	906	487	191	\N	phone	\N	[{"barcode": "road", "variant_id": "651", "price_override": "899", "is_active_variant": "780"}]	\N
1185	president	between	468	371	114	\N	accessories	\N	[{"barcode": "control", "variant_id": "601", "price_override": "210", "is_active_variant": "212"}]	\N
1171	south	interesting	331	348	853	\N	accessories	[{"url": "real", "alt_text": "end", "image_id": "178", "sort_order": "748"}]	[{"barcode": "indeed", "variant_id": "994", "price_override": "471", "is_active_variant": "421"}]	\N
1348	wrong	interview	971	63	619	\N	kitchenappliance	\N	[{"barcode": "yard", "variant_id": "917", "price_override": "429", "is_active_variant": "568"}]	\N
911	protect	per	263	893	2	\N	camera	\N	[{"barcode": "listen", "variant_id": "844", "price_override": "598", "is_active_variant": "101"}]	\N
3	pattern	consumer	604	874	36	\N	product	\N	[{"barcode": "recent", "variant_id": "805", "price_override": "475", "is_active_variant": "616"}]	\N
23	tell	its	651	182	564	\N	product	\N	[{"barcode": "its", "variant_id": "479", "price_override": "647", "is_active_variant": "864"}]	\N
1272	current	available	39	981	874	\N	appliance	[{"url": "war", "alt_text": "hair", "image_id": "737", "sort_order": "938"}]	[{"barcode": "year", "variant_id": "105", "price_override": "345", "is_active_variant": "349"}]	\N
479	administration	begin	932	893	489	\N	computer	\N	[{"barcode": "keep", "variant_id": "310", "price_override": "141", "is_active_variant": "266"}]	\N
1467	condition	reason	799	137	525	\N	apparel	\N	[{"barcode": "pressure", "variant_id": "882", "price_override": "128", "is_active_variant": "946"}]	\N
926	almost	already	946	865	448	\N	camera	\N	[{"barcode": "rather", "variant_id": "408", "price_override": "931", "is_active_variant": "118"}]	\N
1458	stock	easy	209	951	383	\N	apparel	\N	[{"barcode": "including", "variant_id": "372", "price_override": "234", "is_active_variant": "14"}]	\N
698	exactly	close	932	891	330	\N	laptop	[{"url": "own", "alt_text": "particularly", "image_id": "679", "sort_order": "728"}]	\N	[{"price": "700", "ends_at": "reason", "price_id": "158", "starts_at": "character"}]
1463	himself	design	631	160	291	\N	apparel	\N	[{"barcode": "every", "variant_id": "81", "price_override": "30", "is_active_variant": "584"}]	\N
1404	ask	almost	764	787	186	\N	apparel	[{"url": "able", "alt_text": "certain", "image_id": "872", "sort_order": "44"}]	[{"barcode": "drop", "variant_id": "363", "price_override": "396", "is_active_variant": "120"}]	\N
968	ask	indicate	688	5	541	\N	camera	\N	[{"barcode": "care", "variant_id": "629", "price_override": "769", "is_active_variant": "170"}]	\N
389	necessary	debate	726	107	763	\N	electronics	\N	[{"barcode": "share", "variant_id": "215", "price_override": "477", "is_active_variant": "966"}]	\N
1255	reveal	community	134	847	954	\N	appliance	\N	[{"barcode": "room", "variant_id": "496", "price_override": "231", "is_active_variant": "401"}]	\N
407	politics	song	840	715	252	\N	computer	\N	[{"barcode": "risk", "variant_id": "240", "price_override": "327", "is_active_variant": "324"}]	\N
838	country	which	278	53	542	\N	smartwatch	\N	[{"barcode": "reveal", "variant_id": "428", "price_override": "484", "is_active_variant": "143"}]	\N
961	organization	son	313	103	305	\N	camera	\N	[{"barcode": "word", "variant_id": "290", "price_override": "737", "is_active_variant": "298"}]	\N
617	fast	talk	383	53	861	\N	laptop	\N	[{"barcode": "green", "variant_id": "779", "price_override": "616", "is_active_variant": "807"}]	\N
1352	thing	almost	57	333	107	\N	kitchenappliance	\N	[{"barcode": "tend", "variant_id": "238", "price_override": "52", "is_active_variant": "573"}]	\N
906	employee	among	963	630	8	\N	camera	\N	[{"barcode": "eat", "variant_id": "190", "price_override": "910", "is_active_variant": "582"}]	\N
1007	individual	situation	869	502	178	\N	phone	\N	[{"barcode": "guy", "variant_id": "763", "price_override": "53", "is_active_variant": "201"}]	\N
1089	term	best	337	815	574	\N	phone	\N	[{"barcode": "purpose", "variant_id": "862", "price_override": "230", "is_active_variant": "844"}]	\N
1017	that	hand	686	581	188	\N	phone	\N	[{"barcode": "area", "variant_id": "894", "price_override": "674", "is_active_variant": "230"}]	\N
1393	minute	few	500	870	331	\N	kitchenappliance	\N	[{"barcode": "bar", "variant_id": "256", "price_override": "736", "is_active_variant": "760"}]	\N
1936	since	late	588	686	964	bit	media	\N	[{"barcode": "approach", "variant_id": "240", "price_override": "863", "is_active_variant": "738"}]	\N
916	natural	feel	280	375	858	\N	camera	\N	[{"barcode": "real", "variant_id": "946", "price_override": "678", "is_active_variant": "180"}]	\N
1483	a	third	856	365	731	\N	apparel	\N	[{"barcode": "quality", "variant_id": "394", "price_override": "516", "is_active_variant": "160"}]	\N
873	foot	situation	996	357	180	\N	smartwatch	\N	[{"barcode": "put", "variant_id": "583", "price_override": "542", "is_active_variant": "131"}]	\N
1189	wonder	action	598	976	68	\N	accessories	\N	[{"barcode": "unit", "variant_id": "680", "price_override": "906", "is_active_variant": "171"}]	\N
913	like	among	819	853	283	\N	camera	\N	[{"barcode": "teacher", "variant_id": "457", "price_override": "148", "is_active_variant": "518"}]	\N
127	single	site	498	8	182	\N	physicalproduct	\N	[{"barcode": "article", "variant_id": "856", "price_override": "402", "is_active_variant": "115"}]	\N
2025	citizen	parent	753	15	784	each	software	\N	[{"barcode": "face", "variant_id": "991", "price_override": "657", "is_active_variant": "83"}]	\N
1970	material	catch	990	680	903	out	media	\N	[{"barcode": "black", "variant_id": "907", "price_override": "136", "is_active_variant": "886"}]	\N
1983	travel	power	448	63	693	half	media	\N	[{"barcode": "offer", "variant_id": "218", "price_override": "866", "is_active_variant": "636"}]	\N
267	enough	oil	97	436	862	activity	digitalproduct	\N	\N	[{"price": "978", "ends_at": "difficult", "price_id": "620", "starts_at": "least"}]
2024	entire	century	136	64	972	actually	software	[{"url": "lawyer", "alt_text": "part", "image_id": "289", "sort_order": "482"}, {"url": "mother", "alt_text": "service", "image_id": "371", "sort_order": "257"}]	\N	[{"price": "998", "ends_at": "also", "price_id": "200", "starts_at": "away"}]
117	face	drop	828	441	563	\N	physicalproduct	\N	\N	[{"price": "72", "ends_at": "from", "price_id": "656", "starts_at": "long"}]
1188	individual	defense	790	84	214	\N	accessories	\N	\N	[{"price": "904", "ends_at": "later", "price_id": "720", "starts_at": "situation"}]
1177	man	under	393	92	512	\N	accessories	\N	\N	[{"price": "45", "ends_at": "try", "price_id": "431", "starts_at": "goal"}]
436	relationship	fill	137	576	725	\N	computer	\N	\N	[{"price": "841", "ends_at": "room", "price_id": "188", "starts_at": "take"}]
13	management	finish	415	527	353	\N	product	\N	\N	[{"price": "434", "ends_at": "program", "price_id": "347", "starts_at": "major"}]
669	lay	nothing	579	147	215	\N	laptop	\N	\N	[{"price": "912", "ends_at": "bring", "price_id": "456", "starts_at": "firm"}]
1445	center	certainly	733	417	217	\N	apparel	\N	\N	[{"price": "441", "ends_at": "reason", "price_id": "172", "starts_at": "address"}]
141	forward	call	181	160	257	\N	physicalproduct	\N	\N	[{"price": "810", "ends_at": "him", "price_id": "335", "starts_at": "wind"}, {"price": "403", "ends_at": "range", "price_id": "571", "starts_at": "building"}]
1288	leader	grow	585	896	189	\N	appliance	\N	\N	[{"price": "59", "ends_at": "of", "price_id": "756", "starts_at": "left"}]
374	sport	resource	743	106	308	\N	electronics	\N	\N	[{"price": "220", "ends_at": "bad", "price_id": "444", "starts_at": "simply"}]
301	simple	forward	23	605	377	\N	electronics	\N	\N	[{"price": "38", "ends_at": "until", "price_id": "988", "starts_at": "stand"}]
470	increase	almost	97	79	695	\N	computer	\N	\N	[{"price": "658", "ends_at": "politics", "price_id": "316", "starts_at": "outside"}]
606	language	full	891	314	975	\N	laptop	\N	\N	[{"price": "694", "ends_at": "Republican", "price_id": "771", "starts_at": "eight"}]
403	magazine	exactly	483	798	39	\N	computer	\N	\N	[{"price": "896", "ends_at": "by", "price_id": "655", "starts_at": "sea"}]
692	main	several	887	715	379	\N	laptop	\N	\N	[{"price": "880", "ends_at": "act", "price_id": "669", "starts_at": "political"}]
1381	yet	including	973	218	502	\N	kitchenappliance	\N	\N	[{"price": "202", "ends_at": "collection", "price_id": "230", "starts_at": "actually"}]
627	long	take	520	979	317	\N	laptop	\N	[{"barcode": "prevent", "variant_id": "169", "price_override": "903", "is_active_variant": "200"}]	[{"price": "250", "ends_at": "him", "price_id": "464", "starts_at": "past"}]
1939	participant	clear	395	270	629	upon	media	\N	\N	[{"price": "664", "ends_at": "west", "price_id": "235", "starts_at": "accept"}]
644	go	firm	436	54	465	\N	laptop	\N	\N	[{"price": "932", "ends_at": "old", "price_id": "830", "starts_at": "either"}]
1304	sometimes	gun	472	416	627	\N	kitchenappliance	\N	\N	[{"price": "585", "ends_at": "point", "price_id": "491", "starts_at": "meet"}]
149	bank	yard	456	872	947	\N	physicalproduct	\N	\N	[{"price": "221", "ends_at": "city", "price_id": "997", "starts_at": "no"}]
228	public	exactly	339	509	608	raise	digitalproduct	\N	\N	[{"price": "174", "ends_at": "they", "price_id": "288", "starts_at": "high"}]
1411	less	article	352	257	855	\N	apparel	[{"url": "tell", "alt_text": "place", "image_id": "72", "sort_order": "576"}]	\N	[{"price": "299", "ends_at": "pull", "price_id": "667", "starts_at": "style"}]
839	test	positive	760	658	213	\N	smartwatch	\N	\N	[{"price": "811", "ends_at": "court", "price_id": "7", "starts_at": "hear"}]
856	course	billion	611	880	347	\N	smartwatch	\N	\N	[{"price": "738", "ends_at": "determine", "price_id": "134", "starts_at": "down"}]
1069	house	show	909	906	359	\N	phone	\N	\N	[{"price": "651", "ends_at": "dinner", "price_id": "285", "starts_at": "put"}]
706	visit	price	467	872	39	\N	tablet	\N	\N	[{"price": "471", "ends_at": "worker", "price_id": "990", "starts_at": "according"}]
408	kitchen	box	975	367	893	\N	computer	\N	\N	[{"price": "160", "ends_at": "effort", "price_id": "994", "starts_at": "since"}]
975	very	new	273	371	593	\N	camera	\N	\N	[{"price": "964", "ends_at": "book", "price_id": "465", "starts_at": "care"}]
1106	population	but	931	254	954	\N	accessories	\N	\N	[{"price": "886", "ends_at": "quality", "price_id": "929", "starts_at": "man"}]
1012	clear	win	365	541	286	\N	phone	\N	[{"barcode": "bill", "variant_id": "388", "price_override": "601", "is_active_variant": "681"}]	[{"price": "884", "ends_at": "cultural", "price_id": "976", "starts_at": "follow"}]
1105	say	current	185	724	656	\N	accessories	\N	\N	[{"price": "144", "ends_at": "heavy", "price_id": "581", "starts_at": "moment"}]
910	however	side	235	857	754	\N	camera	\N	\N	[{"price": "259", "ends_at": "give", "price_id": "371", "starts_at": "quickly"}]
854	protect	western	377	255	160	\N	smartwatch	\N	\N	[{"price": "181", "ends_at": "wall", "price_id": "50", "starts_at": "safe"}]
891	central	again	151	835	356	\N	smartwatch	\N	\N	[{"price": "635", "ends_at": "try", "price_id": "56", "starts_at": "time"}]
1378	particular	relate	627	143	583	\N	kitchenappliance	\N	\N	[{"price": "308", "ends_at": "friend", "price_id": "49", "starts_at": "able"}]
978	authority	smile	330	225	167	\N	camera	[{"url": "million", "alt_text": "suffer", "image_id": "827", "sort_order": "212"}, {"url": "yeah", "alt_text": "human", "image_id": "831", "sort_order": "676"}]	\N	[{"price": "7", "ends_at": "enter", "price_id": "560", "starts_at": "soon"}]
1114	soldier	purpose	425	170	804	\N	accessories	\N	\N	[{"price": "469", "ends_at": "benefit", "price_id": "956", "starts_at": "the"}]
630	Congress	enough	461	835	547	\N	laptop	\N	[{"barcode": "position", "variant_id": "972", "price_override": "842", "is_active_variant": "152"}, {"barcode": "gun", "variant_id": "582", "price_override": "652", "is_active_variant": "425"}]	[{"price": "14", "ends_at": "about", "price_id": "442", "starts_at": "receive"}]
904	nothing	detail	160	282	117	\N	camera	\N	\N	[{"price": "82", "ends_at": "fight", "price_id": "185", "starts_at": "personal"}]
663	themselves	so	385	448	334	\N	laptop	\N	[{"barcode": "scientist", "variant_id": "523", "price_override": "584", "is_active_variant": "839"}, {"barcode": "hit", "variant_id": "280", "price_override": "592", "is_active_variant": "366"}]	[{"price": "47", "ends_at": "name", "price_id": "805", "starts_at": "despite"}]
276	section	minute	589	67	45	there	digitalproduct	\N	\N	[{"price": "865", "ends_at": "certainly", "price_id": "569", "starts_at": "table"}]
816	beat	clear	452	525	203	\N	smartwatch	\N	\N	[{"price": "521", "ends_at": "adult", "price_id": "924", "starts_at": "camera"}]
1217	treat	two	515	945	105	\N	appliance	\N	[{"barcode": "expect", "variant_id": "274", "price_override": "640", "is_active_variant": "390"}]	[{"price": "319", "ends_at": "write", "price_id": "229", "starts_at": "week"}]
196	interesting	he	708	96	412	\N	physicalproduct	\N	\N	[{"price": "24", "ends_at": "allow", "price_id": "492", "starts_at": "word"}]
273	already	prevent	919	852	299	enjoy	digitalproduct	\N	\N	[{"price": "207", "ends_at": "teacher", "price_id": "449", "starts_at": "thank"}]
111	that	toward	130	916	212	\N	physicalproduct	\N	\N	[{"price": "152", "ends_at": "shake", "price_id": "839", "starts_at": "require"}]
1128	debate	society	931	304	293	\N	accessories	\N	\N	[{"price": "180", "ends_at": "heavy", "price_id": "828", "starts_at": "maybe"}]
472	door	quickly	195	868	522	\N	computer	\N	\N	[{"price": "848", "ends_at": "civil", "price_id": "326", "starts_at": "crime"}]
393	worker	increase	901	847	222	\N	electronics	[{"url": "behind", "alt_text": "group", "image_id": "611", "sort_order": "375"}]	\N	[{"price": "711", "ends_at": "whether", "price_id": "512", "starts_at": "hour"}]
\.


--
-- Data for Name: relation_10; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_10 (womenclothing_id, fit_type_women) FROM stdin;
1701	treat
1702	term
1703	hear
1704	onto
1705	campaign
1706	week
1707	peace
1708	always
1709	break
1710	morning
1711	here
1712	rise
1713	evidence
1714	without
1715	indeed
1716	require
1717	entire
1718	society
1719	hundred
1720	include
1721	decision
1722	stand
1723	bad
1724	return
1725	evening
1726	ten
1727	hand
1728	eat
1729	full
1730	bring
1731	model
1732	this
1733	weight
1734	able
1735	prepare
1736	per
1737	baby
1738	whole
1739	decade
1740	someone
1741	staff
1742	wonder
1743	health
1744	system
1745	fact
1746	their
1747	low
1748	security
1749	idea
1750	mouth
1751	despite
1752	administration
1753	body
1754	yard
1755	system
1756	drive
1757	big
1758	note
1759	church
1760	Mr
1761	wonder
1762	difference
1763	medical
1764	approach
1765	shoulder
1766	sell
1767	why
1768	enough
1769	plant
1770	better
1771	strong
1772	argue
1773	money
1774	voice
1775	authority
1776	teacher
1777	be
1778	Democrat
1779	rather
1780	every
1781	reflect
1782	decision
1783	down
1784	across
1785	physical
1786	section
1787	check
1788	to
1789	cut
1790	bar
1791	early
1792	involve
1793	pretty
1794	traditional
1795	fear
1796	feeling
1797	cover
1798	behavior
1799	character
1800	several
\.


--
-- Data for Name: relation_11; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_11 (footwear_id, sku, product_name, base_price, is_active, quantity, dimensions, size_system, sole_material, productimage, productvariant, pricehistory) FROM stdin;
1801	watch	article	535	732	801	involve	image	better	\N	\N	\N
1802	beautiful	executive	596	230	534	hear	social	floor	\N	\N	\N
1803	or	none	804	462	235	ok	rule	whatever	\N	\N	\N
1804	for	clearly	864	784	90	affect	program	protect	\N	\N	\N
1805	anything	traditional	258	591	527	present	guy	page	\N	\N	\N
1806	none	without	841	21	342	beautiful	field	note	\N	\N	\N
1809	indicate	green	420	757	858	subject	cover	parent	\N	\N	\N
1810	fly	brother	722	126	930	memory	force	field	\N	\N	\N
1811	north	interview	957	122	859	chance	final	certainly	\N	\N	\N
1812	manage	my	388	873	33	that	quite	summer	\N	\N	\N
1813	western	method	558	353	77	travel	toward	present	\N	\N	\N
1814	half	worker	1000	692	482	rise	science	green	\N	\N	\N
1815	door	speak	765	687	661	board	on	performance	\N	\N	\N
1816	support	resource	410	44	268	act	keep	beyond	\N	\N	\N
1817	company	this	692	402	395	throughout	position	actually	\N	\N	\N
1818	action	again	16	731	693	major	executive	single	\N	\N	\N
1819	again	inside	551	134	76	book	six	behind	\N	\N	\N
1820	several	out	414	215	110	likely	decision	authority	\N	\N	\N
1821	film	here	202	414	651	travel	information	feel	\N	\N	\N
1822	they	believe	446	27	820	stop	add	hand	\N	\N	\N
1823	window	down	23	795	45	effect	blood	drop	\N	\N	\N
1824	wait	final	759	429	134	tree	several	rich	\N	\N	\N
1825	meeting	pick	762	194	517	group	program	word	\N	\N	\N
1826	explain	care	846	291	903	couple	level	none	\N	\N	\N
1827	idea	point	561	44	424	imagine	himself	detail	\N	\N	\N
1828	everything	situation	479	163	305	peace	western	senior	\N	\N	\N
1829	sit	plant	666	308	600	factor	turn	have	\N	\N	\N
1830	production	answer	33	630	537	middle	capital	identify	\N	\N	\N
1831	finish	design	301	33	500	position	various	represent	\N	\N	\N
1832	follow	either	960	168	759	run	financial	economic	\N	\N	\N
1833	training	for	954	720	646	design	window	individual	\N	\N	\N
1834	service	common	271	835	460	free	throughout	pressure	\N	\N	\N
1835	skin	go	431	36	303	different	national	indeed	\N	\N	\N
1836	near	follow	356	205	351	your	trip	well	\N	\N	\N
1837	company	offer	251	142	967	close	special	if	\N	\N	\N
1838	low	follow	857	42	97	actually	book	including	\N	\N	\N
1840	provide	that	22	395	592	very	best	list	\N	\N	\N
1841	wind	history	241	754	539	action	effort	world	\N	\N	\N
1842	color	husband	564	788	939	remain	tough	type	\N	\N	\N
1843	up	receive	428	567	396	public	allow	office	\N	\N	\N
1844	anyone	or	983	571	9	sell	according	everything	\N	\N	\N
1845	assume	imagine	420	813	398	far	when	allow	\N	\N	\N
1846	claim	industry	136	448	839	town	maintain	various	\N	\N	\N
1847	race	owner	113	582	116	stuff	decide	road	\N	\N	\N
1848	green	much	180	917	361	far	friend	major	\N	\N	\N
1849	politics	statement	510	788	894	third	direction	also	\N	\N	\N
1850	deep	music	905	603	882	product	social	worry	\N	\N	\N
1851	environment	test	656	718	246	almost	yet	language	\N	\N	\N
1852	official	cold	73	734	878	cost	believe	simply	\N	\N	\N
1853	social	minute	251	672	814	moment	eight	large	\N	\N	\N
1854	tough	really	270	793	932	thank	structure	successful	\N	\N	\N
1855	five	religious	653	843	135	more	hope	source	\N	\N	\N
1856	after	week	474	366	133	success	they	general	\N	\N	\N
1859	join	make	178	977	574	large	put	network	\N	\N	\N
1860	onto	economy	829	684	697	piece	specific	majority	\N	\N	\N
1862	view	again	285	163	367	employee	music	treatment	\N	\N	\N
1863	war	stay	841	95	776	modern	sit	land	\N	\N	\N
1864	television	instead	833	249	976	leave	hope	none	\N	\N	\N
1865	front	mean	97	960	926	piece	with	seven	\N	\N	\N
1866	glass	both	249	731	68	health	face	consider	\N	\N	\N
1867	improve	inside	973	693	548	member	two	daughter	\N	\N	\N
1868	such	blue	45	922	584	yard	stop	a	\N	\N	\N
1870	position	face	395	676	99	impact	everybody	green	\N	\N	\N
1872	religious	couple	474	112	222	front	today	mention	\N	\N	\N
1873	authority	party	69	525	142	building	sense	better	\N	\N	\N
1877	degree	law	124	664	137	piece	relationship	local	\N	\N	\N
1878	pass	son	655	960	406	site	build	race	\N	\N	\N
1879	third	will	187	230	818	assume	maintain	high	\N	\N	\N
1880	vote	school	835	874	878	memory	explain	world	\N	\N	\N
1881	travel	consider	51	957	617	good	man	wear	\N	\N	\N
1882	concern	relate	7	610	713	grow	address	force	\N	\N	\N
1883	might	work	13	832	935	meeting	bank	mean	\N	\N	\N
1884	else	each	711	197	630	trouble	several	all	\N	\N	\N
1885	build	thank	305	153	870	medical	sister	hundred	\N	\N	\N
1886	base	cold	381	633	388	job	finish	alone	\N	\N	\N
1887	art	drug	906	832	626	trip	kind	fact	\N	\N	\N
1888	soon	fire	348	9	433	fact	purpose	responsibility	\N	\N	\N
1889	will	chair	740	198	170	type	authority	against	\N	\N	\N
1890	outside	ability	514	270	480	try	your	suffer	\N	\N	\N
1858	officer	wide	458	505	892	message	laugh	bring	\N	[{"barcode": "of", "variant_id": "602", "price_override": "347", "is_active_variant": "622"}]	\N
1807	choice	such	250	442	157	leave	Congress	think	\N	[{"barcode": "often", "variant_id": "876", "price_override": "316", "is_active_variant": "284"}]	\N
1871	magazine	different	846	3	588	late	consider	guy	\N	\N	[{"price": "228", "ends_at": "environmental", "price_id": "666", "starts_at": "through"}]
1891	for	resource	903	817	85	body	under	with	\N	\N	\N
1893	nothing	performance	941	255	809	address	cause	maybe	\N	\N	\N
1894	system	water	733	880	559	second	serve	bit	\N	\N	\N
1895	together	weight	534	535	20	marriage	beautiful	stop	\N	\N	\N
1896	stop	election	461	33	882	over	training	she	\N	\N	\N
1898	hospital	if	518	937	236	stay	some	down	\N	\N	\N
1899	group	focus	58	381	174	class	road	property	\N	\N	\N
1900	into	according	442	838	552	a	call	best	\N	\N	\N
1839	clear	where	315	324	505	eight	imagine	hundred	[{"url": "both", "alt_text": "hundred", "image_id": "406", "sort_order": "489"}]	\N	\N
1808	future	anything	70	488	906	place	condition	today	[{"url": "last", "alt_text": "unit", "image_id": "258", "sort_order": "900"}]	\N	\N
1861	step	interview	670	741	321	kid	floor	career	[{"url": "ability", "alt_text": "box", "image_id": "159", "sort_order": "537"}]	\N	\N
1897	some	front	179	421	132	though	four	personal	[{"url": "half", "alt_text": "third", "image_id": "235", "sort_order": "719"}]	\N	\N
1874	such	wide	189	449	870	sport	better	trade	[{"url": "price", "alt_text": "too", "image_id": "961", "sort_order": "709"}]	\N	\N
1892	do	subject	221	953	616	nearly	trial	second	\N	[{"barcode": "last", "variant_id": "326", "price_override": "77", "is_active_variant": "840"}]	\N
1875	win	ground	528	938	279	drop	use	former	[{"url": "foot", "alt_text": "government", "image_id": "56", "sort_order": "63"}]	\N	[{"price": "458", "ends_at": "them", "price_id": "767", "starts_at": "sing"}]
1857	few	room	312	754	43	short	stage	claim	\N	\N	[{"price": "993", "ends_at": "network", "price_id": "446", "starts_at": "there"}]
1869	mind	them	945	910	531	though	response	remain	\N	\N	[{"price": "9", "ends_at": "method", "price_id": "765", "starts_at": "voice"}]
1876	fire	to	826	187	384	nor	appear	foot	\N	\N	[{"price": "794", "ends_at": "by", "price_id": "47", "starts_at": "thought"}]
\.


--
-- Data for Name: relation_12; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_12 (media_id, format) FROM stdin;
1901	standard
1902	get
1903	trial
1904	fish
1905	then
1906	us
1907	almost
1908	someone
1909	investment
1910	administration
1911	full
1912	certain
1913	be
1914	stuff
1915	front
1916	commercial
1917	result
1918	fall
1919	service
1920	as
1921	stop
1922	floor
1923	each
1924	care
1925	necessary
1926	interview
1927	political
1928	meeting
1929	yet
1930	deep
1931	film
1932	rock
1933	set
1934	necessary
1935	world
1936	contain
1937	option
1938	month
1939	article
1940	theory
1941	little
1942	consider
1943	girl
1944	tonight
1945	not
1946	summer
1947	reflect
1948	record
1949	speech
1950	different
1951	scientist
1952	identify
1953	story
1954	participant
1955	security
1956	wall
1957	exactly
1958	professor
1959	the
1960	pull
1961	might
1962	crime
1963	four
1964	nice
1965	key
1966	citizen
1967	once
1968	kind
1969	detail
1970	sister
1971	around
1972	lawyer
1973	door
1974	allow
1975	build
1976	build
1977	that
1978	weight
1979	claim
1980	quickly
1981	hair
1982	close
1983	child
1984	business
1985	then
1986	approach
1987	generation
1988	fast
1989	change
1990	weight
1991	deep
1992	scene
1993	mouth
1994	science
1995	guy
1996	to
1997	official
1998	security
1999	perform
2000	investment
\.


--
-- Data for Name: relation_13; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_13 (software_id, license_type) FROM stdin;
2001	activity
2002	research
2003	whatever
2004	use
2005	person
2006	smile
2007	believe
2008	sure
2009	computer
2010	large
2011	son
2012	here
2013	provide
2014	artist
2015	work
2016	education
2017	rock
2018	appear
2019	goal
2020	late
2021	those
2022	conference
2023	benefit
2024	price
2025	about
2026	run
2027	must
2028	present
2029	hair
2030	billion
2031	to
2032	too
2033	manage
2034	point
2035	them
2036	popular
2037	worry
2038	just
2039	culture
2040	network
2041	name
2042	red
2043	financial
2044	thus
2045	economic
2046	doctor
2047	compare
2048	building
2049	fire
2050	different
2051	little
2052	stop
2053	like
2054	between
2055	our
2056	budget
2057	test
2058	or
2059	exactly
2060	follow
2061	attention
2062	already
2063	example
2064	pattern
2065	upon
2066	choose
2067	oil
2068	always
2069	Mr
2070	mind
2071	do
2072	board
2073	perform
2074	start
2075	change
2076	possible
2077	current
2078	government
2079	page
2080	response
2081	though
2082	play
2083	give
2084	fight
2085	finish
2086	society
2087	first
2088	source
2089	data
2090	open
2091	land
2092	between
2093	study
2094	computer
2095	point
2096	effect
2097	I
2098	claim
2099	a
2100	their
\.


--
-- Data for Name: relation_14; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_14 (user_id, email, password_hash, browsingsession) FROM stdin;
1	anthonycollins@example.org	fine	\N
3	linda99@example.com	natural	\N
4	rachelgraham@example.net	child	\N
5	ysanders@example.net	maintain	\N
6	bradleyjackie@example.org	child	\N
8	wesley43@example.com	part	\N
9	colincantrell@example.org	next	\N
10	solisryan@example.org	garden	\N
12	talvarez@example.org	western	\N
13	hunterjonathan@example.net	size	\N
14	xbryan@example.com	yourself	\N
15	ramosjohn@example.net	point	\N
16	stevensstephanie@example.net	bit	\N
17	shane75@example.org	security	\N
18	brian84@example.net	name	\N
19	martinbenjamin@example.org	cell	\N
20	tschwartz@example.com	line	\N
22	robertsmith@example.org	politics	\N
23	lherman@example.org	president	\N
24	lsalazar@example.net	car	\N
25	joshuamathews@example.org	institution	\N
26	gle@example.org	foot	\N
27	sandrasimmons@example.org	local	\N
28	margaret43@example.org	trouble	\N
29	calebleonard@example.org	right	\N
30	teresamills@example.org	body	\N
31	deannaparker@example.org	much	\N
32	xknight@example.net	senior	\N
33	erangel@example.com	speak	\N
34	hansenjesse@example.org	sell	\N
35	hmedina@example.com	but	\N
36	jessica88@example.org	surface	\N
37	connienguyen@example.org	poor	\N
38	andersondeborah@example.org	suggest	\N
39	leslie58@example.net	have	\N
40	matthew39@example.net	ever	\N
41	hunterjon@example.com	morning	\N
42	jayfreeman@example.net	know	\N
43	kortiz@example.com	early	\N
44	cynthiaherrera@example.org	star	\N
45	renee53@example.com	discover	\N
46	tlevy@example.com	answer	\N
47	jennifer94@example.com	whose	\N
48	brianjohnston@example.net	billion	\N
49	woodsryan@example.net	from	\N
50	qmaldonado@example.com	several	\N
51	zblair@example.net	stay	\N
52	troypena@example.com	forward	\N
53	austin42@example.org	ball	\N
54	jacquelinebowen@example.org	believe	\N
55	browndylan@example.net	bad	\N
56	robertsjulie@example.net	meeting	\N
57	joseph11@example.net	officer	\N
58	rhonda59@example.org	the	\N
59	wescobar@example.net	east	\N
60	sgarcia@example.net	group	\N
61	tinadiaz@example.org	price	\N
62	bennettdavid@example.org	next	\N
63	doughertysamantha@example.org	nothing	\N
64	kristy33@example.org	about	\N
65	josephstafford@example.net	current	\N
67	rachelsosa@example.net	fight	\N
68	ruthmarks@example.net	speak	\N
69	nataliekane@example.org	accept	\N
70	richardbridges@example.net	listen	\N
71	mccanncraig@example.org	coach	\N
72	kayla75@example.com	laugh	\N
73	mezanancy@example.org	mother	\N
74	leahhansen@example.com	ten	\N
75	jonesshannon@example.org	she	\N
76	cgoodwin@example.com	hundred	\N
78	carlgraham@example.com	drop	\N
79	schwartzerin@example.com	hundred	\N
80	sarawhite@example.com	picture	\N
81	jameswalsh@example.net	must	\N
82	dsimmons@example.net	rather	\N
83	nunezgabriela@example.com	generation	\N
84	gabrielalandry@example.net	top	\N
85	vjones@example.net	five	\N
86	clinton81@example.org	often	\N
87	nmontgomery@example.com	develop	\N
88	thompsondavid@example.org	president	\N
89	phillipscatherine@example.org	official	\N
90	lisamarshall@example.net	could	\N
91	hharris@example.org	create	\N
92	lawrencebeck@example.com	sense	\N
93	robinmedina@example.net	front	\N
94	seanclay@example.net	huge	\N
95	egibbs@example.com	dark	\N
96	drodriguez@example.org	list	\N
97	robert10@example.org	challenge	\N
98	dsmith@example.org	manager	\N
99	amber14@example.org	evidence	\N
100	james91@example.net	letter	\N
101	lcummings@example.com	debate	\N
103	atkinsmatthew@example.net	mission	\N
104	william00@example.com	case	\N
105	bobbyclarke@example.com	what	\N
106	jonriley@example.net	agency	\N
107	jonesbradley@example.com	record	\N
108	mckenzie89@example.org	sure	\N
109	vharris@example.net	sometimes	\N
110	jstevens@example.com	general	\N
111	millerjessica@example.org	policy	\N
112	foxchristopher@example.net	successful	\N
115	richardrichardson@example.net	body	\N
117	samueljohnson@example.org	eye	\N
118	xgarcia@example.net	mind	\N
119	xtrujillo@example.org	serve	\N
120	smithjonathan@example.org	buy	\N
121	cpatel@example.org	market	\N
122	zlowe@example.com	owner	\N
123	emora@example.org	he	\N
124	kevin76@example.org	commercial	\N
125	whitebrian@example.com	attack	\N
126	brownjill@example.org	child	\N
127	lindsay84@example.com	want	\N
128	sherribrock@example.org	discuss	\N
129	moorekari@example.net	method	\N
130	jjones@example.net	care	\N
131	irobertson@example.com	represent	\N
133	kperkins@example.net	face	\N
134	vaughnjared@example.net	soldier	\N
135	kathleenandrade@example.net	challenge	\N
136	suzanne11@example.org	pass	\N
137	willielewis@example.org	window	\N
138	angeladavis@example.org	section	\N
139	yhamilton@example.org	far	\N
140	huffkeith@example.org	nice	\N
141	elizabethwalters@example.com	news	\N
142	shawjason@example.com	account	\N
143	escott@example.org	guy	\N
144	alexandrahenry@example.org	affect	\N
145	powellelijah@example.net	bad	\N
146	carlanavarro@example.com	trial	\N
147	ashley95@example.net	accept	\N
149	hbeasley@example.com	into	\N
150	ucohen@example.com	wish	\N
151	yfarmer@example.net	off	\N
152	amandataylor@example.com	foot	\N
153	edavis@example.com	buy	\N
154	susan19@example.com	nearly	\N
155	williamsjeffery@example.net	western	\N
156	brian23@example.org	agreement	\N
157	thomas52@example.com	for	\N
158	gdavenport@example.net	country	\N
159	sandrabowman@example.org	perhaps	\N
160	michelleevans@example.com	coach	\N
161	jeffreyjimenez@example.com	all	\N
162	woodmelissa@example.org	tax	\N
163	jenniferlittle@example.org	exist	\N
164	patricia71@example.org	never	\N
165	bradley60@example.net	identify	\N
166	lbentley@example.com	sometimes	\N
167	stephanie94@example.com	paper	\N
168	brian27@example.org	property	\N
170	khenry@example.org	edge	\N
171	brittanyrice@example.com	conference	\N
172	victoriabaker@example.com	shoulder	\N
173	caleb00@example.net	individual	\N
174	meghanphillips@example.org	figure	\N
175	hwatson@example.org	use	\N
176	chapmankara@example.net	try	\N
177	ronniecarter@example.org	thank	\N
178	hardystephen@example.net	boy	\N
179	terrybrandon@example.com	star	\N
180	xfitzgerald@example.org	factor	\N
181	timothygarcia@example.org	example	\N
182	ruizapril@example.org	positive	\N
184	ashleymartin@example.net	wonder	\N
185	rebecca04@example.net	natural	\N
186	pdawson@example.com	single	\N
187	krystalrodriguez@example.net	wrong	\N
188	breanna75@example.org	miss	\N
189	awiley@example.com	practice	\N
190	brittany79@example.net	care	\N
191	smichael@example.com	especially	\N
192	dpratt@example.org	next	\N
193	ricardo11@example.net	example	\N
194	mckinneyrichard@example.com	white	\N
195	wnguyen@example.org	business	\N
196	lroberts@example.org	change	\N
198	ianbrown@example.net	perform	\N
199	robinsonnathan@example.net	base	\N
200	coreywells@example.com	once	\N
201	anthonystewart@example.net	analysis	\N
203	brent52@example.net	none	\N
204	xallen@example.org	fight	\N
205	gabrielleochoa@example.org	perform	\N
206	qlevine@example.org	there	\N
207	heatheranderson@example.com	when	\N
209	kennethjohns@example.org	behavior	\N
210	theresaadams@example.net	increase	\N
211	kjones@example.net	understand	\N
212	zdelgado@example.com	majority	\N
213	sarah25@example.net	event	\N
214	karenmueller@example.net	wear	\N
216	jacobcraig@example.org	act	\N
217	hobbsthomas@example.net	education	\N
218	matthewserin@example.net	chance	\N
219	christopherwilliams@example.org	ten	\N
220	penasue@example.net	watch	\N
221	floressherry@example.org	third	\N
223	bryan23@example.net	any	\N
224	bpeck@example.com	happy	\N
225	drodriguez@example.org	soldier	\N
226	stephensbarbara@example.net	nice	\N
227	knightsarah@example.com	quickly	\N
228	michael70@example.net	per	\N
229	melvindougherty@example.com	fall	\N
230	wagnerjonathan@example.org	plan	\N
231	zkirk@example.org	city	\N
232	taylorerica@example.org	start	\N
233	stacy15@example.com	development	\N
234	kelly01@example.net	writer	\N
235	teresaperez@example.com	heart	\N
236	turnerjoshua@example.org	whose	\N
237	knelson@example.com	hair	\N
239	michaelgarcia@example.net	prove	\N
241	clifford30@example.com	political	\N
242	dnguyen@example.org	figure	\N
243	tara71@example.org	when	\N
244	benjamin06@example.com	pay	\N
245	leekellie@example.org	occur	\N
247	sanchezbrian@example.org	nearly	\N
248	omcgee@example.net	everyone	\N
249	hcarroll@example.com	ten	\N
250	plopez@example.com	two	\N
251	tammymcdonald@example.org	production	\N
252	allen62@example.com	agreement	\N
253	carrollchris@example.org	eye	\N
254	susan30@example.com	listen	\N
255	kayers@example.net	trade	\N
256	paulsanchez@example.com	land	\N
257	eburgess@example.com	similar	\N
258	barberwilliam@example.net	tend	\N
259	brendahayes@example.org	affect	\N
260	brivera@example.org	senior	\N
261	michael14@example.com	heavy	\N
262	beardkathleen@example.org	four	\N
263	mark65@example.org	above	\N
264	davisdouglas@example.net	race	\N
267	vincent82@example.org	piece	\N
268	michaelreese@example.com	not	\N
269	qmccann@example.net	upon	\N
270	vmyers@example.net	official	\N
271	ujenkins@example.com	middle	\N
272	stevensmichael@example.org	fly	\N
273	uharris@example.com	air	\N
274	shannonreid@example.com	present	\N
275	richardtommy@example.com	worry	\N
276	noblelaura@example.com	necessary	\N
277	bscott@example.net	bar	\N
278	robertshaw@example.net	health	\N
279	jimmy54@example.net	author	\N
280	jenna02@example.com	maybe	\N
281	robinsimmons@example.org	floor	\N
282	nathangiles@example.com	set	\N
283	jacksmith@example.net	reason	\N
284	jennifer18@example.com	energy	\N
285	knguyen@example.org	writer	\N
286	xwright@example.com	author	\N
287	stephenramsey@example.org	beyond	\N
288	william94@example.com	still	\N
289	robinsonalex@example.com	off	\N
290	rnorris@example.net	certainly	\N
291	zcontreras@example.net	one	\N
292	linda51@example.com	information	\N
293	xbennett@example.org	west	\N
295	dsantana@example.com	agent	\N
296	burkemichael@example.org	their	\N
297	washingtondiane@example.com	newspaper	\N
298	wanda36@example.com	son	\N
299	joseph72@example.com	focus	\N
300	shanemontgomery@example.net	water	\N
301	hansenelaine@example.net	sell	\N
302	vgeorge@example.com	particularly	\N
303	orozcojoseph@example.com	ago	\N
304	xmorgan@example.org	town	\N
305	heatherjackson@example.net	win	\N
306	rebecca35@example.com	else	\N
307	drhodes@example.com	she	\N
308	jeffhardin@example.com	type	\N
310	kenneth17@example.net	sing	\N
311	ashleywilson@example.com	speech	\N
312	cummingsjessica@example.org	seek	\N
313	wattscatherine@example.org	before	\N
316	hogangrant@example.com	view	\N
317	williamsmichael@example.com	become	\N
319	allison16@example.net	focus	\N
320	april09@example.org	team	\N
321	spierce@example.org	including	\N
322	patrick26@example.org	Democrat	\N
323	moralesjasmine@example.com	investment	\N
324	xmays@example.com	wear	\N
325	nturner@example.com	office	\N
326	griffithkristin@example.com	popular	\N
327	turnerallen@example.com	become	\N
328	debraharris@example.org	tough	\N
330	garzajeffrey@example.net	certain	\N
331	jwilliamson@example.com	change	\N
332	ecruz@example.net	until	\N
333	kristen36@example.com	expect	\N
334	vsmith@example.net	could	\N
335	crawfordsheri@example.org	he	\N
336	lance43@example.net	thousand	\N
337	justin20@example.org	miss	\N
338	marcusduncan@example.org	data	\N
339	michaelwatkins@example.org	series	\N
340	autumn11@example.org	recognize	\N
341	sampsonjamie@example.net	ground	\N
342	christopherwood@example.net	only	\N
343	taylordarlene@example.com	first	\N
344	strongmatthew@example.net	kid	\N
345	lsilva@example.com	too	\N
347	sanchezjessica@example.org	difference	\N
348	vmartin@example.org	relationship	\N
349	robert67@example.org	throw	\N
350	hjohnson@example.net	economic	\N
351	katherine34@example.net	church	\N
352	keith19@example.net	billion	\N
353	zgonzalez@example.com	toward	\N
354	robert97@example.com	mother	\N
355	ynelson@example.org	happen	\N
356	jonathan25@example.org	free	\N
359	amartinez@example.org	sit	\N
360	kevin27@example.com	ahead	\N
363	susanwilkerson@example.net	major	\N
364	sean64@example.org	manage	\N
365	qthompson@example.net	two	\N
366	joshua97@example.net	then	\N
367	alexandriahunter@example.org	daughter	\N
368	griffithtracy@example.net	body	\N
369	johnsonheather@example.org	public	\N
370	robertfisher@example.com	chance	\N
371	robert09@example.net	perhaps	\N
372	bryanjones@example.org	maintain	\N
373	warnercynthia@example.com	total	\N
374	kwalker@example.org	weight	\N
376	juanhorne@example.com	fish	\N
377	aaronhayes@example.net	eight	\N
378	ericamartin@example.com	determine	\N
379	bryantjoshua@example.org	relate	\N
380	fburns@example.org	strong	\N
381	rlindsey@example.com	oil	\N
383	katieellis@example.org	major	\N
386	mannjohn@example.net	father	\N
387	imiller@example.org	entire	\N
388	debbiefoster@example.com	sometimes	\N
389	eacevedo@example.net	positive	\N
391	karenburns@example.com	live	\N
392	danielpratt@example.com	discuss	\N
393	schwartzcarla@example.org	worker	\N
394	barberjenna@example.com	their	\N
395	rjohnson@example.com	message	\N
396	kevin39@example.com	once	\N
397	sara48@example.com	letter	\N
399	ywilson@example.net	record	\N
400	andrewrodriguez@example.org	note	\N
401	jesusjohnson@example.org	blood	\N
402	joshuacarter@example.com	pay	\N
403	anthony26@example.net	the	\N
404	ricebrittany@example.org	if	\N
405	jonathanpham@example.net	current	\N
406	hoffmansarah@example.org	team	\N
407	smithadam@example.org	tree	\N
409	smckee@example.com	space	\N
410	courtney48@example.net	billion	\N
411	terri83@example.com	save	\N
412	ljones@example.org	thus	\N
414	jeffreyhampton@example.org	record	\N
416	npatterson@example.org	that	\N
417	diazcharles@example.net	tonight	\N
418	rebeccajohnson@example.net	produce	\N
419	anthony46@example.org	cover	\N
420	iestrada@example.net	know	\N
421	donna27@example.com	exist	\N
422	webbrhonda@example.org	kid	\N
423	anthonylevy@example.net	wrong	\N
425	briannaphelps@example.com	family	\N
426	michaelfisher@example.net	however	\N
427	lnicholson@example.org	suffer	\N
428	taylorking@example.com	support	\N
429	thudson@example.org	yet	\N
430	christophergarcia@example.net	huge	\N
431	kmorrison@example.org	not	\N
432	donald48@example.org	certain	\N
433	ericquinn@example.com	month	\N
434	jenniferthompson@example.org	economy	\N
435	shawn08@example.com	society	\N
436	stephenanderson@example.org	why	\N
437	lindseyrandy@example.com	carry	\N
438	derek10@example.org	us	\N
439	ctaylor@example.net	Democrat	\N
440	parkerandrea@example.com	teacher	\N
441	haasjoshua@example.net	stuff	\N
442	vevans@example.com	model	\N
443	sarahpeters@example.org	food	\N
444	michellerivera@example.org	safe	\N
445	qmoore@example.com	hope	\N
446	christopher46@example.org	memory	\N
448	fhernandez@example.com	maintain	\N
449	drew42@example.org	available	\N
450	pjones@example.com	continue	\N
451	julieevans@example.com	contain	\N
452	hannahwilliams@example.net	start	\N
453	rcaldwell@example.com	car	\N
454	obruce@example.net	free	\N
455	jennatran@example.com	training	\N
456	brownsara@example.net	off	\N
457	danielhudson@example.org	candidate	\N
459	hwhite@example.org	evening	\N
460	annabrennan@example.org	part	\N
462	melissa10@example.net	onto	\N
463	marywilson@example.org	plant	\N
464	fieldsjacqueline@example.org	candidate	\N
468	sandra76@example.org	course	\N
469	robertpayne@example.org	try	\N
470	jstanley@example.com	bed	\N
471	michele52@example.com	give	\N
472	nmartin@example.net	six	\N
473	paul85@example.com	analysis	\N
474	gregory95@example.net	say	\N
475	james08@example.com	front	\N
476	jeffery62@example.org	apply	\N
477	zacharywallace@example.com	arm	\N
478	jessicacunningham@example.com	group	\N
479	richard74@example.org	couple	\N
480	rboyd@example.net	not	\N
481	campbellheather@example.org	camera	\N
482	tphillips@example.net	manage	\N
483	skinnerandrew@example.net	sit	\N
484	sophiadominguez@example.net	bring	\N
485	raymondreyes@example.com	happen	\N
486	sarasanders@example.org	she	\N
487	gatesjean@example.net	occur	\N
488	bryanray@example.com	but	\N
489	dillonsanchez@example.net	whether	\N
490	waltonpatrick@example.org	attack	\N
491	moorezachary@example.com	treat	\N
493	awilliams@example.org	still	\N
494	martinezmark@example.net	investment	\N
495	phelpssamantha@example.org	along	\N
496	markmiller@example.org	much	\N
497	cdavis@example.net	lot	\N
498	walter35@example.com	western	\N
499	daniel50@example.com	window	\N
500	angela96@example.org	home	\N
501	yaguirre@example.org	site	\N
502	reeddana@example.com	specific	\N
503	joyce90@example.net	gas	\N
504	tiffanymcclain@example.net	career	\N
505	pdavis@example.net	suggest	\N
506	vmurphy@example.org	term	\N
507	ethancole@example.net	too	\N
508	leslieflores@example.com	share	\N
509	huynhbrittany@example.com	will	\N
510	eprince@example.net	late	\N
511	plee@example.com	choice	\N
512	carlsonjames@example.net	crime	\N
513	shannonbaker@example.org	building	\N
514	wagnerbarbara@example.org	always	\N
515	lhenderson@example.org	service	\N
516	elizabethpratt@example.com	argue	\N
517	cboyd@example.org	up	\N
519	kimberly93@example.net	sound	\N
520	jeandean@example.com	no	\N
521	odaniels@example.net	mouth	\N
522	courtneyrichard@example.com	picture	\N
523	katiejohnson@example.com	seek	\N
524	pauljones@example.com	financial	\N
525	johnsonaaron@example.net	from	\N
526	deborah25@example.com	interesting	\N
527	loretta01@example.com	challenge	\N
528	kerrsuzanne@example.net	choice	\N
529	lauren68@example.org	occur	\N
530	cowens@example.org	again	\N
531	angelagrant@example.net	item	\N
532	tonya59@example.net	beat	\N
533	smithjay@example.com	very	\N
534	mcgrathanne@example.net	give	\N
535	harriserica@example.org	account	\N
536	lorigomez@example.com	the	\N
538	thomas29@example.org	produce	\N
539	barronkelly@example.net	almost	\N
540	joshuahart@example.com	against	\N
541	meadowswilliam@example.com	east	\N
542	chad18@example.com	blood	\N
543	kmiller@example.org	purpose	\N
544	elizabeth97@example.net	this	\N
545	lindareed@example.net	beyond	\N
546	turnererin@example.org	final	\N
547	amandaatkins@example.com	everything	\N
548	denise46@example.net	color	\N
549	moorepatricia@example.org	effort	\N
550	julia93@example.net	born	\N
551	qorr@example.net	thing	\N
552	grimessteven@example.net	across	\N
553	summer90@example.org	fish	\N
554	cindy72@example.com	according	\N
555	martinezamber@example.com	sign	\N
556	gharris@example.net	different	\N
557	josephfry@example.net	trial	\N
558	adamscarl@example.org	camera	\N
559	david06@example.com	himself	\N
560	ydavis@example.net	its	\N
561	johnsoncarrie@example.net	thank	\N
562	xcaldwell@example.net	local	\N
563	carriegonzalez@example.com	cold	\N
564	mary09@example.net	staff	\N
565	brose@example.com	lead	\N
566	juan29@example.net	character	\N
567	dsmith@example.org	month	\N
568	randy45@example.net	blood	\N
569	hessvincent@example.net	explain	\N
570	deborah63@example.net	majority	\N
571	deborah25@example.org	rate	\N
572	bhanson@example.com	name	\N
573	nguyenalexandra@example.net	evidence	\N
574	keith10@example.net	community	\N
575	bakerleslie@example.org	risk	\N
576	amydavid@example.net	agency	\N
577	ryan17@example.org	degree	\N
578	kennedyjohn@example.org	debate	\N
580	villarrealkaitlin@example.org	room	\N
581	nathan86@example.net	when	\N
582	troylewis@example.net	tend	\N
583	mgriffith@example.net	and	\N
584	sara41@example.org	prevent	\N
585	jared16@example.com	set	\N
587	erin42@example.com	factor	\N
588	elizabethwillis@example.net	former	\N
589	kmccoy@example.com	discover	\N
590	heathercook@example.org	chair	\N
591	nicholas17@example.org	entire	\N
592	jamesmeza@example.org	seek	\N
593	powerskatherine@example.net	important	\N
594	xmerritt@example.org	rather	\N
595	brettadams@example.com	inside	\N
596	bradleyortiz@example.org	alone	\N
597	wongjoseph@example.com	provide	\N
598	zoe61@example.com	particularly	\N
599	cmyers@example.com	law	\N
600	jacob33@example.org	head	\N
601	stephanielewis@example.com	today	\N
602	webbmicheal@example.com	car	\N
603	jonesjacqueline@example.com	during	\N
604	samanthamarquez@example.net	throw	\N
605	griffithrebecca@example.org	program	\N
606	vwilliams@example.com	whose	\N
607	lsmith@example.com	product	\N
608	andrewpowell@example.net	worry	\N
609	curtismarie@example.net	agree	\N
610	michellemeza@example.com	happen	\N
611	christophersmith@example.org	shoulder	\N
612	douglas16@example.org	wrong	\N
614	fryechristina@example.net	option	\N
615	williamsmatthew@example.net	begin	\N
616	crystalgray@example.org	play	\N
617	jonessharon@example.com	those	\N
618	oliviadouglas@example.net	character	\N
620	kerrimoody@example.net	push	\N
621	robert23@example.net	save	\N
622	ttran@example.net	old	\N
623	ycox@example.net	order	\N
624	jenniferyoung@example.org	cut	\N
625	michael27@example.net	especially	\N
626	smithchristina@example.net	fear	\N
627	wendyclark@example.com	drug	\N
628	schwartzmatthew@example.com	central	\N
629	ianderson@example.org	yes	\N
630	whiteryan@example.com	speak	\N
631	craigreed@example.com	shake	\N
632	millermary@example.org	theory	\N
633	phillip83@example.com	development	\N
634	aprilzuniga@example.org	trial	\N
635	steven88@example.net	various	\N
638	brucelong@example.org	since	\N
639	james15@example.com	mind	\N
640	claire11@example.net	perform	\N
641	gpatel@example.com	sure	\N
642	agarcia@example.org	site	\N
643	gramos@example.com	way	\N
644	michaelgonzalez@example.com	ten	\N
645	debralester@example.org	individual	\N
646	dicksoncrystal@example.org	either	\N
647	hannahvaughn@example.com	enough	\N
649	richardthomas@example.net	world	\N
650	johnsmith@example.org	at	\N
651	jerryromero@example.org	leg	\N
652	ikelly@example.net	project	\N
653	juareztiffany@example.org	break	\N
654	annabowers@example.net	Mrs	\N
655	josephlinda@example.org	family	\N
656	julierosales@example.com	standard	\N
657	ricethomas@example.com	action	\N
658	zbarrera@example.com	couple	\N
659	emily26@example.net	like	\N
660	tinasutton@example.com	art	\N
661	jose51@example.org	science	\N
662	nicoletaylor@example.net	action	\N
663	sarakim@example.com	professor	\N
664	fbeck@example.net	north	\N
665	ssmith@example.org	thought	\N
666	jennyedwards@example.org	education	\N
667	aprilhill@example.org	pay	\N
668	nolanholly@example.net	small	\N
669	wheelermichael@example.com	behavior	\N
670	sharonshaw@example.net	once	\N
671	edward48@example.net	manager	\N
672	abryant@example.org	mind	\N
673	rogersmaurice@example.org	article	\N
674	sharon12@example.net	discover	\N
675	mariah00@example.org	skill	\N
676	martinashley@example.com	age	\N
677	john56@example.org	sister	\N
678	teresaskinner@example.net	final	\N
679	daisy24@example.com	lose	\N
680	dleach@example.net	education	\N
681	ronald94@example.net	seat	\N
682	jeremiah91@example.com	some	\N
683	virginiamanning@example.net	able	\N
684	andrea26@example.net	church	\N
685	jack37@example.org	road	\N
686	amclaughlin@example.org	candidate	\N
687	aaronholt@example.org	boy	\N
688	georgedaniel@example.com	clear	\N
689	kimberlycole@example.com	play	\N
691	kcastro@example.net	yeah	\N
692	davislaura@example.net	tax	\N
693	alexandradavidson@example.com	for	\N
694	marissafrancis@example.org	believe	\N
696	reginajackson@example.org	coach	\N
697	meyerandrew@example.com	serve	\N
698	murphytimothy@example.org	suggest	\N
700	kristylarson@example.com	film	\N
702	luiskramer@example.net	hair	\N
703	tmyers@example.net	really	\N
704	djohnston@example.net	maybe	\N
705	joseph67@example.net	common	\N
706	michelle56@example.org	the	\N
707	matthew11@example.org	hour	\N
708	hkemp@example.com	strategy	\N
709	blackwellryan@example.net	form	\N
710	ramirezcheryl@example.com	business	\N
711	courtney92@example.com	southern	\N
712	dixonzachary@example.com	several	\N
713	sheltonmichael@example.org	energy	\N
714	daniel08@example.com	all	\N
715	owilliams@example.com	education	\N
716	derrickgray@example.net	system	\N
717	jennifer20@example.com	approach	\N
719	hmartin@example.com	thus	\N
720	wmoore@example.net	result	\N
721	victoria75@example.com	when	\N
722	amymurray@example.org	relationship	\N
723	lisarodriguez@example.net	wear	\N
725	jimenezdavid@example.net	rise	\N
726	morangary@example.org	figure	\N
727	markpalmer@example.com	police	\N
728	ehall@example.com	require	\N
731	anagarza@example.org	take	\N
732	thomasmichael@example.org	pretty	\N
733	williambruce@example.net	either	\N
735	scottmurray@example.org	mean	\N
736	laraalexander@example.com	speech	\N
737	jeremy90@example.org	range	\N
738	levycody@example.org	election	\N
739	cookgregory@example.com	certainly	\N
741	kjohnson@example.net	room	\N
742	erincox@example.net	inside	\N
743	chelseacollier@example.org	west	\N
744	thomasgreen@example.com	tough	\N
745	adriancarter@example.com	from	\N
746	masseyelizabeth@example.org	past	\N
747	paul67@example.net	well	\N
748	pamelawheeler@example.org	could	\N
749	robincurry@example.org	travel	\N
750	leerice@example.org	value	\N
752	kedwards@example.net	kind	\N
755	rosswilliam@example.org	billion	\N
756	lindseyabbott@example.org	last	\N
757	emilyhernandez@example.net	four	\N
758	meyerpaula@example.net	bad	\N
759	edwardsjuan@example.net	heart	\N
760	jamesgonzales@example.org	available	\N
762	dawn68@example.net	forward	\N
763	tiffanywolfe@example.net	decide	\N
764	jacob43@example.com	father	\N
765	hking@example.org	including	\N
766	robert42@example.org	practice	\N
767	hjackson@example.net	rule	\N
768	zhopkins@example.com	sound	\N
769	walkerallison@example.com	western	\N
770	andrewzimmerman@example.org	decision	\N
771	youngstefanie@example.com	institution	\N
773	lance71@example.net	change	\N
775	vbrown@example.org	majority	\N
776	courtney15@example.com	rock	\N
777	alicia97@example.net	people	\N
778	eheath@example.org	five	\N
779	jwalsh@example.com	however	\N
780	marissaallen@example.net	name	\N
781	stevengonzales@example.net	person	\N
782	kristinhawkins@example.org	American	\N
783	combskristen@example.net	so	\N
785	qwilson@example.org	scene	\N
786	yrussell@example.org	nor	\N
787	elizabeth87@example.com	son	\N
788	grace00@example.org	happy	\N
789	shannon63@example.net	pretty	\N
790	kathrynnorris@example.org	administration	\N
791	cnorman@example.net	number	\N
792	anthony64@example.net	unit	\N
793	ucole@example.com	glass	\N
794	alexandra71@example.net	himself	\N
795	ramirezdarlene@example.org	whether	\N
796	jessicamcmahon@example.com	within	\N
797	annetteburns@example.net	of	\N
798	nicholas00@example.com	commercial	\N
799	gpatel@example.org	structure	\N
800	ddaniels@example.org	give	\N
802	jimmygarcia@example.org	thank	\N
804	monicajimenez@example.net	treat	\N
805	reneesummers@example.org	office	\N
806	amy57@example.com	from	\N
807	colerobert@example.com	enough	\N
809	vfarley@example.net	politics	\N
810	tmarquez@example.org	lot	\N
811	dylan03@example.net	certainly	\N
812	hoganluke@example.net	born	\N
813	john34@example.com	action	\N
814	lstewart@example.net	size	\N
816	rtorres@example.net	certainly	\N
817	hillthomas@example.org	reach	\N
818	timothy75@example.net	away	\N
819	berrydavid@example.net	range	\N
820	owhite@example.net	receive	\N
821	jasonfisher@example.org	strong	\N
823	christopher27@example.com	push	\N
824	john32@example.net	letter	\N
825	ualexander@example.com	even	\N
826	sheaneil@example.net	simply	\N
827	michelle50@example.net	us	\N
828	wnelson@example.com	Mr	\N
829	richardsonrobert@example.com	identify	\N
830	davissheryl@example.com	choice	\N
831	monica50@example.org	her	\N
832	jamesbrandt@example.org	including	\N
833	gallegoslaurie@example.org	parent	\N
834	jeffreybradley@example.net	natural	\N
835	tspencer@example.net	just	\N
838	john49@example.net	sing	\N
839	nwest@example.com	white	\N
840	cynthiajackson@example.com	tell	\N
841	casey38@example.org	one	\N
842	bennettdonna@example.org	area	\N
843	willie71@example.com	Mrs	\N
844	bbrown@example.com	his	\N
845	cynthiagilmore@example.com	suffer	\N
846	johnsonantonio@example.com	stock	\N
847	dianamoore@example.com	successful	\N
848	castromarie@example.org	decide	\N
849	nancycole@example.org	religious	\N
850	rodriguezbrian@example.com	police	\N
851	oespinoza@example.org	return	\N
852	ewood@example.net	by	\N
853	cmills@example.org	whether	\N
854	danielwilliams@example.com	citizen	\N
855	psilva@example.com	use	\N
856	christina15@example.org	attorney	\N
857	molly85@example.com	nation	\N
858	edwardhill@example.org	various	\N
859	rwatkins@example.net	feeling	\N
860	archermorgan@example.org	yourself	\N
861	fishersteven@example.com	state	\N
862	shelbykennedy@example.com	include	\N
863	kimberly75@example.com	choose	\N
864	april12@example.com	fear	\N
865	umoreno@example.org	from	\N
866	henry36@example.org	course	\N
867	brooksjeffrey@example.net	billion	\N
868	andrew17@example.com	soldier	\N
869	ashley58@example.com	sister	\N
870	jodimendez@example.com	away	\N
871	taylor51@example.com	against	\N
872	yjackson@example.com	media	\N
873	josephjohn@example.net	feel	\N
874	christopherhood@example.org	begin	\N
875	alexandermary@example.net	president	\N
876	bryce38@example.com	loss	\N
877	christiangolden@example.net	right	\N
878	markfaulkner@example.org	site	\N
879	iflynn@example.com	beautiful	\N
880	garrisondustin@example.net	wear	\N
881	earl72@example.org	improve	\N
882	ronald36@example.com	professor	\N
883	erik87@example.com	assume	\N
884	amandapalmer@example.com	sister	\N
885	edwinedwards@example.org	she	\N
886	icontreras@example.net	as	\N
887	asmith@example.net	design	\N
888	kimlaura@example.com	here	\N
889	sara02@example.org	identify	\N
890	mgonzalez@example.org	spring	\N
891	johndean@example.com	business	\N
892	vguerrero@example.org	push	\N
893	morganvalerie@example.com	fly	\N
894	christineruiz@example.net	play	\N
895	valdezangela@example.net	a	\N
896	rpeters@example.org	actually	\N
897	noahlara@example.com	rest	\N
900	oneilljohn@example.org	customer	\N
901	williamcordova@example.com	decade	\N
902	othomas@example.org	eye	\N
903	mmann@example.com	school	\N
904	brandon20@example.net	brother	\N
905	ufox@example.com	far	\N
906	kelleybridget@example.org	ever	\N
907	aaronfrazier@example.net	skill	\N
908	cindy47@example.com	respond	\N
911	jason62@example.com	probably	\N
912	michaelpatterson@example.net	try	\N
913	icooper@example.net	treat	\N
914	tinaball@example.net	instead	\N
915	david87@example.org	throughout	\N
916	ttownsend@example.com	gun	\N
917	mary92@example.net	it	\N
918	laura60@example.com	company	\N
919	williamdavis@example.com	available	\N
920	taylor76@example.net	put	\N
922	nicholasrogers@example.com	already	\N
923	gomezalexandra@example.org	develop	\N
924	shelley91@example.net	black	\N
925	randallanna@example.com	clearly	\N
926	walkerandrew@example.org	bank	\N
927	nicolechapman@example.net	but	\N
928	xclark@example.org	leave	\N
930	gillanthony@example.net	radio	\N
931	littlebarbara@example.org	responsibility	\N
932	lthomas@example.net	authority	\N
933	scottlance@example.org	subject	\N
934	james39@example.com	gas	\N
935	zmoore@example.org	but	\N
936	cookcolton@example.net	court	\N
937	thomaschristina@example.com	second	\N
938	mckenziejessica@example.net	case	\N
939	stephaniebradley@example.net	science	\N
940	jimenezmary@example.com	range	\N
941	xaguilar@example.org	teacher	\N
942	robert85@example.net	move	\N
943	howecristian@example.com	effort	\N
944	tclark@example.net	myself	\N
945	courtney58@example.org	onto	\N
947	ahoward@example.net	both	\N
948	thompsoncourtney@example.com	its	\N
949	ienglish@example.org	marriage	\N
950	melindaowens@example.net	miss	\N
951	joseclark@example.net	writer	\N
952	joshuahoward@example.net	film	\N
953	aliciahowell@example.org	none	\N
954	deborah93@example.com	wear	\N
955	derrick61@example.com	TV	\N
956	penningtonalexandra@example.org	study	\N
957	mark93@example.org	before	\N
958	cartersusan@example.org	pressure	\N
959	whoffman@example.org	subject	\N
960	campbelldavid@example.com	exactly	\N
961	fsims@example.com	meeting	\N
962	jmcpherson@example.com	customer	\N
963	devinschaefer@example.org	son	\N
964	michael58@example.com	century	\N
965	zporter@example.org	them	\N
966	kimberlyadams@example.com	good	\N
968	tbaldwin@example.net	your	\N
969	deborahhall@example.com	tax	\N
970	fernandezrichard@example.net	audience	\N
971	wallacemichelle@example.com	until	\N
972	zlee@example.org	change	\N
973	carolyn94@example.com	financial	\N
974	michaelcoleman@example.org	write	\N
975	yperez@example.org	reality	\N
976	alicia51@example.com	police	\N
978	warerebecca@example.net	body	\N
979	bryan55@example.net	agent	\N
980	ianderson@example.com	Democrat	\N
981	adamwilliams@example.com	maintain	\N
982	madelinesingleton@example.net	star	\N
983	kbarnes@example.com	employee	\N
984	edwardssusan@example.com	four	\N
985	georgebrandy@example.org	travel	\N
986	michael42@example.com	message	\N
987	rfarley@example.com	road	\N
988	rebeccalewis@example.com	however	\N
989	rebekah85@example.org	imagine	\N
990	patrick31@example.net	party	\N
991	tylerlee@example.com	bring	\N
992	alicianguyen@example.com	present	\N
994	jacquelinevalencia@example.net	single	\N
996	hughesshane@example.net	determine	\N
997	richardpark@example.com	by	\N
998	millerjoseph@example.com	data	\N
999	josewinters@example.net	break	\N
1000	ywalter@example.com	brother	\N
7	david76@example.org	option	[{"device": "oil", "session_id": "445", "started_at": "billion"}]
740	dkelly@example.net	debate	[{"device": "training", "session_id": "702", "started_at": "support"}]
183	austinschmidt@example.org	better	[{"device": "quite", "session_id": "47", "started_at": "agreement"}]
699	ematthews@example.org	section	[{"device": "teach", "session_id": "641", "started_at": "recently"}]
116	johnny41@example.net	final	[{"device": "admit", "session_id": "643", "started_at": "green"}]
238	xburns@example.com	value	[{"device": "five", "session_id": "748", "started_at": "especially"}]
113	zshort@example.com	learn	[{"device": "thus", "session_id": "858", "started_at": "a"}]
309	michaelmccormick@example.org	question	[{"device": "majority", "session_id": "102", "started_at": "follow"}]
946	kristincrawford@example.org	science	[{"device": "exist", "session_id": "38", "started_at": "clear"}]
461	ile@example.org	herself	[{"device": "I", "session_id": "322", "started_at": "contain"}]
967	lsmith@example.com	reflect	[{"device": "health", "session_id": "224", "started_at": "back"}]
619	ffloyd@example.org	husband	[{"device": "subject", "session_id": "747", "started_at": "question"}]
518	qmcmahon@example.org	more	[{"device": "major", "session_id": "578", "started_at": "scene"}]
586	rebecca06@example.net	another	[{"device": "dark", "session_id": "63", "started_at": "account"}]
66	milleranthony@example.com	response	[{"device": "clear", "session_id": "685", "started_at": "message"}]
995	brewerteresa@example.org	politics	[{"device": "matter", "session_id": "975", "started_at": "character"}]
648	kathleen30@example.net	thousand	[{"device": "also", "session_id": "671", "started_at": "best"}]
318	julie11@example.org	practice	[{"device": "audience", "session_id": "72", "started_at": "side"}]
415	juangibson@example.net	smile	[{"device": "stock", "session_id": "630", "started_at": "party"}]
803	abaker@example.org	election	[{"device": "alone", "session_id": "783", "started_at": "man"}]
208	xmata@example.com	police	[{"device": "system", "session_id": "813", "started_at": "time"}]
77	sheila25@example.com	century	[{"device": "break", "session_id": "899", "started_at": "bed"}]
909	qcox@example.net	price	[{"device": "sound", "session_id": "377", "started_at": "partner"}]
772	pattyharvey@example.org	reveal	[{"device": "practice", "session_id": "361", "started_at": "animal"}]
898	jenniferanderson@example.com	project	[{"device": "entire", "session_id": "778", "started_at": "property"}]
467	brandtmonica@example.org	citizen	[{"device": "three", "session_id": "40", "started_at": "side"}]
329	john39@example.org	top	[{"device": "question", "session_id": "443", "started_at": "performance"}]
382	avilajonathan@example.org	score	[{"device": "follow", "session_id": "748", "started_at": "need"}, {"device": "role", "session_id": "657", "started_at": "agency"}]
315	barrychase@example.net	both	[{"device": "difficult", "session_id": "281", "started_at": "senior"}]
993	rbarry@example.net	conference	[{"device": "deal", "session_id": "979", "started_at": "medical"}]
921	angela62@example.org	season	[{"device": "people", "session_id": "421", "started_at": "step"}, {"device": "marriage", "session_id": "316", "started_at": "such"}]
357	cooperdavid@example.com	fill	[{"device": "receive", "session_id": "1", "started_at": "report"}]
102	melissaboyle@example.org	prove	[{"device": "wind", "session_id": "577", "started_at": "national"}]
21	collinseddie@example.org	size	[{"device": "base", "session_id": "430", "started_at": "receive"}]
537	matthew89@example.net	kid	[{"device": "through", "session_id": "314", "started_at": "gun"}]
977	ssalazar@example.net	training	[{"device": "management", "session_id": "863", "started_at": "group"}]
637	cpena@example.org	these	[{"device": "federal", "session_id": "447", "started_at": "law"}]
361	tiffany84@example.com	hand	[{"device": "magazine", "session_id": "792", "started_at": "reduce"}]
754	ewilliams@example.com	protect	[{"device": "ago", "session_id": "709", "started_at": "executive"}]
169	robert56@example.org	agent	[{"device": "then", "session_id": "717", "started_at": "effort"}]
837	joshua93@example.net	either	[{"device": "entire", "session_id": "128", "started_at": "run"}]
346	rebeccaturner@example.net	player	[{"device": "environmental", "session_id": "49", "started_at": "myself"}]
246	russell97@example.com	ten	[{"device": "rest", "session_id": "457", "started_at": "computer"}]
266	kristinaanthony@example.com	back	[{"device": "new", "session_id": "713", "started_at": "would"}]
730	zroberts@example.org	couple	[{"device": "age", "session_id": "848", "started_at": "likely"}]
774	kennedyalexandra@example.com	forget	[{"device": "eight", "session_id": "872", "started_at": "fill"}]
492	davidmckee@example.net	phone	[{"device": "themselves", "session_id": "268", "started_at": "question"}]
197	meganbarr@example.com	receive	[{"device": "I", "session_id": "636", "started_at": "as"}]
910	juan45@example.net	traditional	[{"device": "control", "session_id": "571", "started_at": "pull"}]
384	christopherkim@example.com	piece	[{"device": "coach", "session_id": "489", "started_at": "cover"}]
148	michael91@example.com	begin	[{"device": "foreign", "session_id": "931", "started_at": "into"}]
375	barkerjimmy@example.com	type	[{"device": "station", "session_id": "1", "started_at": "commercial"}]
753	martinezamy@example.org	show	[{"device": "foot", "session_id": "264", "started_at": "information"}]
314	phillipslisa@example.net	think	[{"device": "speech", "session_id": "62", "started_at": "any"}]
784	petersonjessica@example.net	agent	[{"device": "body", "session_id": "748", "started_at": "available"}]
385	joshuamartin@example.net	his	[{"device": "television", "session_id": "541", "started_at": "throughout"}]
222	masseytodd@example.org	expert	[{"device": "high", "session_id": "366", "started_at": "region"}]
413	david20@example.org	analysis	[{"device": "evening", "session_id": "672", "started_at": "region"}]
751	lmorgan@example.com	establish	[{"device": "point", "session_id": "65", "started_at": "writer"}]
815	glentran@example.com	above	[{"device": "just", "session_id": "640", "started_at": "hotel"}, {"device": "same", "session_id": "294", "started_at": "family"}]
801	lauraavila@example.net	pass	[{"device": "market", "session_id": "607", "started_at": "generation"}]
836	jmartinez@example.org	to	[{"device": "sell", "session_id": "7", "started_at": "art"}]
458	james84@example.org	artist	[{"device": "education", "session_id": "367", "started_at": "person"}]
734	edwardstina@example.org	test	[{"device": "do", "session_id": "152", "started_at": "part"}]
724	freyrichard@example.com	nearly	[{"device": "follow", "session_id": "28", "started_at": "ball"}]
729	bfernandez@example.org	others	[{"device": "represent", "session_id": "889", "started_at": "street"}]
362	pcarney@example.net	structure	[{"device": "either", "session_id": "437", "started_at": "everyone"}]
690	rcallahan@example.net	concern	[{"device": "well", "session_id": "792", "started_at": "thus"}]
579	dana92@example.net	process	[{"device": "whatever", "session_id": "10", "started_at": "next"}]
11	morenoroy@example.com	candidate	[{"device": "speech", "session_id": "421", "started_at": "fill"}]
718	bsimon@example.com	picture	[{"device": "or", "session_id": "82", "started_at": "fall"}]
294	crawfordnorma@example.com	table	[{"device": "machine", "session_id": "12", "started_at": "other"}]
390	brianmaxwell@example.org	from	[{"device": "however", "session_id": "843", "started_at": "throw"}]
424	alejandro18@example.net	only	[{"device": "role", "session_id": "838", "started_at": "nice"}]
636	kathleen05@example.org	near	[{"device": "mouth", "session_id": "528", "started_at": "also"}]
695	smiller@example.org	allow	[{"device": "child", "session_id": "301", "started_at": "listen"}]
2	catherine31@example.net	hotel	[{"device": "change", "session_id": "169", "started_at": "street"}]
929	clarklori@example.net	foreign	[{"device": "cost", "session_id": "254", "started_at": "physical"}]
202	ymassey@example.net	share	[{"device": "although", "session_id": "463", "started_at": "become"}]
215	judyeaton@example.org	a	[{"device": "especially", "session_id": "649", "started_at": "community"}, {"device": "good", "session_id": "571", "started_at": "our"}]
465	solomondavid@example.net	song	[{"device": "task", "session_id": "840", "started_at": "close"}]
398	loweryrachel@example.com	ask	[{"device": "left", "session_id": "789", "started_at": "morning"}]
132	mwilson@example.org	military	[{"device": "baby", "session_id": "516", "started_at": "collection"}]
899	jhines@example.net	ago	[{"device": "party", "session_id": "157", "started_at": "hit"}]
808	amandajordan@example.org	I	[{"device": "throughout", "session_id": "893", "started_at": "best"}]
240	katherinesantana@example.net	adult	[{"device": "interview", "session_id": "87", "started_at": "note"}]
114	ohartman@example.org	film	[{"device": "middle", "session_id": "66", "started_at": "computer"}]
613	richard52@example.com	beat	[{"device": "red", "session_id": "103", "started_at": "environment"}]
447	kleinkrista@example.net	campaign	[{"device": "onto", "session_id": "326", "started_at": "save"}]
701	deananita@example.com	election	[{"device": "boy", "session_id": "1000", "started_at": "inside"}]
265	andersonjill@example.com	require	[{"device": "but", "session_id": "35", "started_at": "alone"}]
822	heidirodriguez@example.com	may	[{"device": "poor", "session_id": "905", "started_at": "bag"}]
408	kerrcynthia@example.org	enter	[{"device": "home", "session_id": "444", "started_at": "name"}]
466	bgarcia@example.org	young	[{"device": "share", "session_id": "11", "started_at": "interest"}]
358	ccervantes@example.net	million	[{"device": "line", "session_id": "557", "started_at": "read"}]
761	huangbrittany@example.org	exactly	[{"device": "once", "session_id": "891", "started_at": "thus"}]
\.


--
-- Data for Name: relation_15; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_15 (user_id, mv_user) FROM stdin;
1	yeah
1	trial
2	eight
2	join
2	debate
2	throw
3	tend
3	sound
3	beyond
4	back
4	maybe
5	off
5	sense
5	of
6	toward
7	watch
8	see
9	painting
9	mean
10	despite
10	argue
10	lawyer
10	contain
11	picture
11	head
11	perform
11	but
12	option
13	detail
13	happen
13	between
13	family
14	kid
15	perhaps
15	home
16	production
17	yes
17	politics
17	only
18	trip
19	their
19	statement
19	hear
19	raise
20	son
20	head
21	inside
21	hand
22	yard
22	right
23	sort
23	night
24	less
24	raise
24	professional
24	your
25	early
25	kid
26	section
26	lot
27	take
27	bed
28	wall
28	note
28	sound
29	purpose
30	finish
30	box
30	somebody
31	job
32	successful
32	hair
32	then
32	security
33	catch
33	resource
33	value
33	top
34	ahead
35	up
36	some
36	important
36	hundred
36	region
37	prepare
37	last
38	miss
38	military
38	effect
38	sea
39	among
39	think
39	determine
40	difficult
41	push
42	word
43	close
43	some
44	couple
44	air
45	become
45	above
45	about
46	direction
47	forward
47	defense
47	home
48	your
48	whether
49	until
50	pass
51	suffer
51	and
51	Democrat
51	lay
52	Democrat
52	on
53	tree
53	natural
53	wrong
54	work
55	involve
56	start
56	work
56	serve
57	environment
57	opportunity
58	star
58	successful
59	environmental
59	still
60	where
60	picture
60	positive
61	religious
61	trade
61	in
61	middle
62	budget
62	century
62	chair
63	lay
64	compare
65	feeling
65	American
65	worker
66	card
66	daughter
67	describe
68	different
68	dream
68	statement
69	community
69	still
69	rather
70	minute
70	during
71	admit
72	operation
72	institution
72	someone
72	election
73	energy
73	hour
74	community
74	event
74	tonight
75	game
75	me
75	market
76	that
76	eye
76	plant
76	within
77	deal
77	cost
77	require
77	successful
78	become
78	feeling
78	arm
78	deep
79	race
79	brother
79	face
80	apply
80	language
80	who
80	know
929	six
81	should
82	arrive
83	later
84	those
84	kid
85	enjoy
85	reflect
85	between
86	east
86	realize
87	rule
88	seek
89	least
89	rate
89	technology
90	staff
90	effect
91	enter
91	score
91	scientist
91	Mr
92	identify
92	until
92	listen
92	whatever
93	meet
94	chair
95	color
95	health
95	answer
95	should
96	least
96	weight
96	culture
97	turn
97	position
97	baby
98	hotel
99	well
100	Mrs
100	wife
100	data
101	finally
101	involve
102	raise
102	concern
102	the
102	family
103	brother
103	long
104	executive
104	glass
104	though
104	listen
105	family
105	place
106	story
106	into
107	sign
107	short
108	score
109	think
109	begin
110	professional
110	message
110	field
111	choice
111	apply
111	season
111	catch
112	cost
112	feeling
112	decision
112	account
113	class
113	a
113	nature
113	believe
114	dream
115	today
115	culture
116	ok
117	local
117	of
117	form
117	operation
118	our
118	claim
118	message
118	record
119	author
119	involve
120	his
120	like
120	brother
120	money
121	hand
121	score
121	evidence
121	baby
122	ready
122	real
122	road
123	provide
123	likely
123	big
123	national
124	her
124	station
125	knowledge
125	policy
125	current
126	institution
127	available
127	those
128	two
128	discuss
128	dog
129	drive
129	cut
129	at
129	rather
130	culture
131	why
131	Democrat
132	but
133	state
133	analysis
133	back
134	bank
135	certainly
136	theory
136	dinner
137	here
137	myself
137	personal
138	everyone
138	law
138	crime
139	memory
139	spend
139	worry
139	international
140	let
140	face
141	sell
142	note
142	knowledge
143	all
143	country
143	street
144	return
144	past
144	task
144	responsibility
145	mother
145	top
145	dinner
145	wonder
146	camera
146	change
146	region
146	best
147	reveal
147	us
147	painting
148	responsibility
148	yard
149	friend
149	wear
149	movie
150	college
150	always
150	my
150	hundred
151	bad
151	religious
151	no
151	course
152	natural
153	leave
153	often
153	mother
153	central
154	well
154	wife
154	owner
154	each
155	year
155	coach
156	effort
157	create
157	training
158	trial
158	body
158	inside
159	live
159	test
160	low
160	something
160	establish
161	space
161	back
161	keep
162	risk
162	billion
162	clear
163	contain
163	ago
163	car
164	ask
164	then
165	answer
166	let
167	consumer
168	try
168	black
168	edge
168	forget
169	real
169	change
169	tell
169	why
170	cold
170	him
170	customer
170	fact
171	news
172	answer
172	treat
173	activity
173	behavior
173	capital
174	bit
175	threat
175	your
176	cut
176	age
177	black
177	explain
178	year
178	likely
178	future
178	own
179	treat
179	glass
179	those
179	home
180	deep
180	main
180	rate
181	statement
181	a
182	consumer
182	production
182	hold
183	fact
184	call
184	end
184	thus
184	today
185	they
186	protect
187	security
188	either
188	matter
188	many
188	your
189	cut
190	sound
190	firm
190	kid
190	case
191	event
191	health
191	rather
191	with
192	realize
193	provide
193	drop
193	job
194	part
195	involve
195	shake
195	know
196	exactly
197	then
197	entire
198	culture
199	address
199	answer
199	course
199	plan
200	us
200	fight
200	easy
200	religious
201	ago
202	which
203	meeting
203	white
204	health
205	tax
206	throw
206	author
206	central
207	customer
207	final
208	white
208	movement
209	few
210	month
211	sister
211	traditional
211	tell
212	style
212	skill
213	buy
214	fish
215	more
216	different
216	money
217	common
217	blue
217	parent
218	like
218	current
218	design
219	itself
219	our
219	respond
220	material
221	consumer
221	eight
221	town
222	keep
222	every
222	later
223	financial
223	day
224	outside
224	able
225	heart
225	over
225	be
226	option
227	major
227	use
227	color
227	training
228	until
228	behavior
228	seek
229	meet
229	response
229	room
230	myself
230	out
231	man
231	either
231	choice
231	financial
232	throw
232	cell
232	stock
233	team
233	heart
234	of
234	without
234	song
234	way
235	rise
235	add
236	this
236	night
236	group
236	check
237	difference
237	plan
238	per
239	team
239	kitchen
240	decade
240	hotel
240	style
241	trial
241	society
242	me
242	also
243	occur
243	involve
244	memory
244	training
245	institution
245	shoulder
246	moment
246	certain
246	debate
247	leg
247	me
248	yourself
249	think
249	similar
250	actually
250	brother
251	can
252	expect
252	service
252	throughout
253	future
253	finish
254	movement
254	arrive
254	reality
254	tell
255	reflect
256	majority
257	without
257	turn
257	southern
258	consider
259	science
259	represent
259	start
260	system
260	field
261	life
261	tough
262	employee
262	yourself
262	college
263	bad
263	focus
263	investment
263	growth
264	dream
265	local
265	reason
265	sound
266	behind
266	live
266	process
266	through
267	four
268	peace
268	become
269	discussion
270	issue
270	hand
271	indicate
271	skill
271	someone
272	already
272	note
272	prove
272	occur
273	crime
274	magazine
275	result
275	team
275	admit
275	rate
276	heavy
277	stand
277	early
277	baby
277	food
278	thus
279	town
279	vote
280	ask
280	into
281	him
282	bring
283	read
283	affect
284	tonight
284	outside
284	recent
285	true
286	draw
286	second
287	million
287	recognize
288	draw
288	detail
288	someone
289	relationship
289	head
290	goal
290	science
291	always
291	one
291	hand
291	response
292	check
292	air
292	walk
293	prevent
293	peace
294	will
295	order
295	strategy
295	while
296	positive
296	piece
296	capital
296	fund
297	yet
297	however
297	enter
297	foreign
298	use
298	surface
298	remember
298	fund
299	live
299	know
299	interview
299	fill
300	yourself
300	chair
300	pressure
300	bring
301	course
302	world
302	relationship
302	budget
302	everything
303	view
304	wait
304	agreement
304	direction
304	weight
305	know
306	keep
307	she
307	believe
308	view
308	forget
308	admit
309	other
310	different
310	audience
310	total
310	call
311	accept
311	certain
311	activity
311	manage
312	performance
312	arm
312	scientist
312	continue
313	network
314	until
314	dinner
314	teach
314	tax
315	together
315	campaign
315	admit
316	each
316	result
316	term
316	economic
317	fear
317	itself
317	and
318	education
318	hear
319	edge
320	eight
321	energy
321	case
321	accept
322	attack
322	detail
323	including
323	listen
323	tax
324	school
324	early
324	kind
325	smile
325	different
325	act
326	across
326	than
327	and
327	organization
328	help
329	indicate
330	stuff
330	stock
330	enter
330	outside
331	simply
331	always
332	power
332	bad
332	respond
332	leader
333	federal
333	decide
334	region
334	plant
334	indicate
335	news
335	test
335	picture
336	car
336	sign
337	now
337	have
338	turn
338	health
338	imagine
338	special
339	describe
339	painting
339	very
340	born
340	purpose
341	whether
341	authority
341	poor
342	gun
342	hospital
342	against
342	believe
343	art
343	let
344	forget
344	might
345	unit
345	present
346	many
346	particularly
347	why
348	before
349	commercial
349	him
349	bill
349	agency
350	collection
351	respond
351	student
351	exactly
352	kind
352	others
352	quickly
353	build
353	return
353	modern
353	college
354	issue
355	environmental
355	several
355	yes
355	eat
356	music
356	wind
357	purpose
357	continue
358	let
358	operation
358	serve
359	between
360	technology
360	by
360	example
361	born
361	act
362	sell
362	suffer
362	begin
363	more
364	after
364	environmental
365	place
365	once
366	decision
367	break
367	president
367	fill
367	chance
368	owner
368	individual
368	crime
369	clearly
369	performance
369	quickly
369	enjoy
370	pattern
370	lay
370	record
371	appear
371	word
371	two
372	support
373	leg
373	need
374	exist
375	idea
375	event
376	forget
376	network
376	example
377	actually
378	however
379	point
380	again
380	against
381	price
381	eye
382	wind
382	stock
383	main
383	determine
383	improve
384	page
384	authority
384	help
385	tend
385	we
385	two
385	computer
386	cell
387	item
387	perform
388	already
388	door
388	yeah
388	report
389	operation
389	time
389	employee
390	late
390	lay
391	although
391	good
391	trouble
391	decade
392	base
393	actually
393	administration
393	president
394	sign
394	approach
394	suddenly
395	first
395	build
395	strategy
395	late
396	one
396	staff
396	she
396	sell
397	cultural
397	black
397	fire
398	past
398	body
398	police
398	can
399	cell
400	put
400	strategy
401	all
401	drug
402	while
402	phone
402	though
403	exist
403	or
404	value
404	bill
404	project
405	baby
405	size
405	drive
405	position
406	religious
407	really
407	clear
408	forget
408	condition
408	interesting
408	a
409	food
410	me
410	one
410	court
411	too
411	open
411	organization
412	tell
412	today
412	material
413	hand
414	return
414	management
414	short
414	everybody
415	common
416	possible
417	small
417	front
418	option
418	begin
418	few
418	positive
419	fire
419	admit
420	become
420	school
420	watch
420	no
421	through
421	line
421	weight
422	miss
422	ready
422	garden
423	central
423	scientist
423	follow
423	open
424	billion
424	whether
424	his
425	traditional
425	herself
425	art
426	out
426	management
427	view
427	Mr
427	wind
427	range
428	animal
428	current
428	number
428	drug
429	small
429	example
429	kitchen
429	share
430	simple
430	spend
431	the
431	program
432	meet
432	art
432	weight
432	bill
433	anything
433	method
433	throw
433	southern
434	reduce
435	grow
435	father
435	quality
435	it
436	enjoy
437	remember
438	machine
438	name
439	view
439	recent
439	nation
440	throughout
440	behind
441	could
442	world
443	guy
443	capital
443	science
443	writer
444	cover
444	ever
445	base
446	service
446	reach
447	event
447	herself
447	mean
448	under
449	sport
449	future
449	upon
450	field
450	agree
451	sign
451	better
452	car
452	star
452	list
452	wide
453	until
454	big
454	stop
455	recent
455	fire
455	loss
456	from
457	practice
457	outside
458	three
459	themselves
460	deal
460	for
461	recent
461	line
462	expect
462	cell
462	through
463	radio
463	science
464	while
464	give
465	man
465	focus
465	skill
465	resource
466	teach
467	than
468	word
468	coach
468	consider
469	amount
470	worker
470	fund
471	keep
472	yard
472	imagine
472	score
472	significant
473	another
473	couple
473	among
473	today
474	sense
475	vote
475	simply
476	memory
476	many
476	church
477	create
478	write
478	design
478	sea
478	worker
479	whom
479	knowledge
479	into
480	value
480	not
481	cut
481	travel
482	picture
482	black
482	hold
483	wide
484	hold
484	on
484	follow
485	run
485	skill
485	analysis
486	bar
486	off
487	grow
488	market
489	run
489	get
489	sound
490	professional
490	shake
491	able
491	central
492	computer
492	public
493	law
493	hot
494	study
494	he
494	next
494	effort
495	vote
495	good
495	grow
496	stand
496	state
496	second
496	admit
497	institution
497	gun
497	floor
497	relationship
498	left
499	movement
499	upon
499	idea
500	role
501	newspaper
501	everybody
501	billion
501	hand
502	enjoy
502	performance
502	under
503	rise
503	energy
503	phone
503	center
504	material
505	around
506	behavior
506	eight
506	follow
507	that
507	its
507	spend
507	bad
508	growth
509	test
509	particularly
510	week
510	general
511	get
512	sit
512	draw
512	within
512	them
513	quite
514	tax
514	east
515	involve
516	new
516	value
516	us
517	heavy
517	involve
517	candidate
518	force
519	scene
520	station
520	ok
520	suggest
521	wait
521	source
521	center
522	begin
522	dream
523	western
523	reveal
524	anything
524	boy
525	stand
525	ever
525	section
525	adult
526	point
527	themselves
527	region
527	sense
527	notice
528	eight
528	fight
528	practice
528	shake
529	money
530	trouble
531	sense
531	culture
531	lead
532	want
532	person
532	subject
532	wish
533	century
533	themselves
533	common
534	gas
534	others
534	record
534	coach
535	boy
536	memory
536	decision
536	contain
536	easy
537	weight
537	senior
537	relationship
538	glass
538	various
538	actually
538	piece
539	face
540	relate
540	rather
541	follow
541	born
541	site
542	technology
542	Congress
542	can
543	address
543	teach
544	least
545	institution
545	TV
546	work
546	peace
546	operation
547	positive
547	list
547	culture
547	nature
548	tough
548	worker
548	people
549	minute
549	kind
549	compare
550	become
550	put
550	race
551	different
551	husband
551	recent
551	daughter
552	sign
552	sport
553	large
553	certainly
554	because
554	five
554	kid
554	else
555	significant
555	property
556	anyone
557	cup
558	sure
558	everyone
559	measure
560	must
561	stuff
562	large
562	responsibility
562	piece
562	risk
563	truth
564	season
564	reveal
565	item
565	magazine
565	both
566	evening
566	night
567	fear
567	involve
568	we
568	spend
568	against
568	trip
569	site
570	federal
570	build
570	eat
570	place
571	hand
572	organization
573	matter
573	but
573	interest
573	policy
574	teach
574	need
574	over
575	walk
575	high
575	international
575	long
576	moment
576	west
577	news
577	event
577	kitchen
578	identify
578	create
579	at
579	picture
580	drive
580	organization
580	walk
580	dark
581	face
581	book
581	eye
582	collection
582	drive
583	recognize
584	full
584	management
584	everyone
585	key
585	on
585	would
585	us
586	choose
586	measure
587	line
587	development
587	successful
587	firm
588	line
588	eat
589	couple
589	open
589	sing
590	social
591	option
591	wide
592	middle
592	catch
593	these
593	choose
593	build
593	then
594	try
594	music
595	once
596	style
596	into
596	eye
596	number
597	stuff
597	than
597	worker
598	commercial
598	seek
598	strong
598	look
599	chair
599	herself
599	plant
599	a
600	trade
600	western
601	pattern
601	board
602	place
603	part
604	finish
604	single
605	even
605	firm
605	policy
605	report
606	risk
606	agency
607	nature
607	seat
607	place
607	increase
608	door
608	despite
608	southern
609	information
609	his
609	position
609	by
610	speak
611	their
612	about
613	right
613	life
613	describe
614	much
614	include
615	white
615	trade
616	himself
616	study
616	set
616	real
617	against
617	radio
617	degree
618	never
618	dream
618	save
618	myself
619	identify
619	heart
619	month
620	hundred
620	ahead
621	arrive
621	none
621	employee
621	method
622	few
622	officer
622	high
622	growth
623	child
624	sometimes
625	day
625	of
626	assume
626	itself
626	cultural
627	speak
627	court
627	natural
627	become
628	sit
628	rise
628	medical
629	bad
629	least
629	then
629	summer
630	next
630	easy
630	high
631	little
631	may
631	building
631	push
632	various
632	financial
632	mouth
632	different
633	TV
633	back
634	total
634	build
635	finish
635	along
635	easy
635	four
636	fly
636	book
636	painting
637	cost
637	oil
637	must
638	over
638	company
638	activity
639	successful
639	range
639	rule
639	go
640	although
641	next
641	whatever
641	world
642	film
643	health
643	account
643	doctor
644	of
645	wish
645	thought
646	our
646	then
646	factor
647	inside
647	employee
648	once
648	yes
648	change
649	career
649	woman
649	southern
649	bed
650	surface
650	as
651	section
651	imagine
651	forget
651	require
652	thousand
652	section
652	democratic
653	hair
653	nor
653	six
654	hot
655	federal
655	other
656	involve
656	social
657	have
657	affect
657	unit
658	natural
658	senior
658	realize
658	scene
659	activity
659	card
659	peace
659	indeed
660	resource
660	picture
661	always
662	lead
662	evidence
662	use
663	often
664	because
664	garden
664	growth
664	they
665	attention
665	half
666	born
666	back
666	will
666	travel
667	result
667	although
667	own
668	significant
668	economic
668	mind
668	along
669	fly
669	then
669	conference
670	beyond
671	short
671	buy
672	when
672	low
672	arm
672	article
673	your
674	able
675	type
676	hair
676	dream
677	outside
677	third
678	size
679	consumer
679	deep
679	join
679	reason
680	plant
680	individual
680	policy
681	discuss
681	evidence
682	affect
682	relate
683	stay
684	quite
685	song
685	strategy
685	town
686	capital
686	two
686	Mrs
687	somebody
688	represent
688	position
689	avoid
689	ok
689	list
690	art
690	population
690	explain
690	however
691	network
691	view
691	court
691	water
692	by
692	when
692	far
693	across
694	crime
694	task
694	there
695	leave
696	nation
696	success
696	someone
696	increase
697	it
697	expert
698	attention
698	determine
699	do
699	certain
700	with
700	partner
700	marriage
701	learn
701	town
701	focus
701	like
702	major
702	in
702	prove
703	quality
703	skill
703	bag
704	stage
705	then
705	read
705	step
706	key
706	health
707	purpose
707	his
708	energy
708	this
709	where
709	its
709	more
709	your
710	modern
710	prepare
710	candidate
711	small
711	safe
711	table
711	knowledge
712	instead
712	least
712	support
712	start
713	cost
713	cold
714	Republican
714	however
715	nature
715	word
715	live
715	identify
716	even
716	daughter
717	believe
717	stage
717	image
718	personal
718	Mrs
719	people
719	suggest
720	through
720	national
721	sure
721	sort
721	according
722	yes
723	under
724	bar
724	cell
725	medical
726	charge
726	letter
726	total
727	by
728	share
728	realize
729	air
729	level
729	ground
729	call
730	law
730	listen
730	floor
730	board
731	charge
732	seat
733	power
734	word
734	yard
735	threat
735	prepare
735	sometimes
735	order
736	interview
736	state
736	get
736	I
737	nothing
737	cut
737	north
738	manage
738	perform
739	police
739	her
740	off
740	teacher
740	about
740	everybody
741	consider
741	outside
742	drug
742	past
743	measure
743	sea
743	save
744	likely
744	thought
744	poor
744	put
745	voice
745	almost
745	time
745	community
746	against
746	you
746	wide
747	boy
747	really
748	movement
748	by
749	main
750	think
750	civil
751	though
751	finish
752	sea
753	scientist
753	fill
753	in
754	piece
754	play
755	dinner
756	could
756	as
756	have
757	surface
757	check
757	social
757	fall
758	what
758	dream
759	person
759	society
760	likely
760	commercial
760	character
761	figure
761	city
762	bad
762	beautiful
763	soldier
763	around
764	player
764	product
764	successful
764	get
765	hand
765	risk
766	at
766	top
767	not
767	daughter
768	ground
769	catch
769	child
769	seek
770	leave
770	mean
771	which
771	system
771	week
771	country
772	time
772	do
772	boy
772	dog
773	number
773	station
773	perform
774	help
774	them
775	style
776	nature
777	thus
778	need
779	station
779	cold
779	girl
780	firm
780	plant
780	sing
780	evening
781	white
782	foreign
783	relate
783	yes
783	fish
784	its
784	artist
784	total
785	president
785	store
785	money
786	maybe
786	today
787	three
787	player
788	important
788	under
788	continue
789	focus
789	the
790	about
790	affect
791	amount
791	continue
791	body
792	why
792	I
792	across
793	owner
793	nor
793	yes
794	worry
794	evening
794	coach
795	spend
796	action
797	statement
797	individual
798	do
798	sister
799	police
799	weight
799	author
799	try
800	couple
800	cell
800	allow
800	they
801	concern
801	ok
802	could
803	product
803	generation
803	teach
803	federal
804	man
804	represent
804	drop
804	involve
805	speak
805	sense
805	down
805	clear
806	performance
806	treatment
806	type
807	leave
807	choice
807	nation
808	decision
808	cost
808	position
808	anything
809	know
810	another
810	part
810	make
811	benefit
812	note
813	never
813	environmental
813	hope
813	perhaps
814	car
814	few
814	attorney
814	everything
815	improve
815	bed
815	deep
816	chair
816	explain
816	adult
816	agent
817	term
817	could
818	tonight
818	cause
818	tend
819	physical
819	strong
820	something
821	herself
821	purpose
821	manage
822	particularly
823	whole
823	shake
823	impact
823	guess
824	return
825	financial
825	ever
825	development
825	sit
826	product
827	staff
827	bed
827	former
827	building
828	produce
828	card
829	staff
829	wait
829	pretty
829	poor
830	save
830	question
830	move
831	civil
832	point
832	glass
833	interest
833	adult
834	war
834	day
835	father
835	American
835	significant
836	current
836	bag
837	guy
837	operation
837	go
838	include
838	agency
838	recognize
839	Mr
840	fill
840	sure
840	effort
840	political
841	later
841	guess
841	tax
842	address
843	theory
843	ever
843	color
843	fear
844	region
845	local
845	themselves
845	face
845	full
846	value
847	matter
848	less
848	finish
849	quickly
849	itself
850	performance
851	interest
851	thing
851	camera
851	despite
852	career
852	between
852	fund
852	adult
853	science
853	great
854	result
855	center
855	policy
856	part
856	north
857	race
857	either
857	another
857	usually
858	democratic
858	Republican
858	owner
859	let
859	bad
859	seat
860	best
861	term
861	go
862	nor
862	source
863	onto
864	peace
864	maybe
865	parent
865	south
865	laugh
866	food
866	although
866	stop
867	site
867	pull
867	up
868	cold
868	bill
868	do
868	whom
869	social
869	score
869	support
870	reach
870	feel
870	work
870	future
871	month
871	pass
871	religious
872	environment
872	eat
873	west
874	ask
874	radio
874	model
874	news
875	situation
875	feeling
876	because
876	very
876	however
877	rather
878	accept
878	guess
878	hotel
879	good
879	happen
880	direction
880	science
880	where
881	story
881	change
881	economy
882	power
882	mother
882	relationship
883	table
883	common
884	food
884	sit
884	little
885	chance
885	compare
885	back
886	behavior
886	say
886	opportunity
887	half
887	represent
887	brother
887	cause
888	scene
889	production
889	fish
889	degree
889	hour
890	stock
890	PM
891	idea
891	relationship
891	address
891	certain
892	sea
892	body
893	represent
893	forget
894	foot
894	avoid
894	by
895	short
895	along
895	fly
895	specific
896	oil
896	however
896	capital
896	stock
897	animal
898	try
899	Congress
899	indicate
899	what
900	claim
900	only
901	past
901	piece
901	between
901	issue
902	senior
903	one
903	training
903	month
904	true
904	traditional
905	may
905	throw
905	send
906	management
906	democratic
906	capital
907	born
907	increase
907	experience
907	receive
908	guess
908	sign
908	see
908	teach
909	under
909	professor
910	president
910	behavior
910	choose
911	level
911	hit
912	indicate
912	many
913	people
913	source
913	song
913	over
914	write
914	development
914	everybody
915	late
916	local
916	maybe
916	exactly
917	meet
917	matter
917	peace
917	career
918	employee
918	although
918	start
919	program
920	notice
920	organization
921	west
921	case
921	boy
921	suddenly
922	edge
922	culture
922	trial
922	stay
923	guess
924	kind
925	than
925	game
925	kind
925	people
926	front
926	majority
926	true
926	worry
927	speak
928	PM
928	could
929	left
929	program
929	Republican
930	network
930	guess
930	everything
931	professional
931	game
931	scene
931	none
932	will
932	large
932	go
932	step
933	writer
933	far
933	magazine
933	through
934	billion
934	memory
934	catch
934	ok
935	situation
936	ready
936	it
936	tree
936	service
937	appear
937	that
938	ahead
938	soldier
939	control
939	pattern
940	wall
941	account
941	line
941	after
941	be
942	enough
942	into
942	bed
943	visit
943	politics
944	upon
944	notice
945	account
945	particular
945	section
945	decade
946	leave
946	effect
946	figure
947	include
947	store
947	company
948	manager
948	or
949	measure
949	camera
950	eat
950	company
951	war
951	computer
951	four
952	effort
952	still
953	leg
954	father
955	outside
955	relationship
956	rise
956	decide
956	him
956	now
957	instead
957	pick
957	evening
957	social
958	seek
959	light
959	make
959	ten
960	fire
960	within
961	even
962	with
962	yourself
962	bank
962	individual
963	participant
964	debate
964	throughout
964	weight
965	alone
965	doctor
966	practice
966	treatment
966	she
966	music
967	car
967	pattern
968	state
968	go
968	with
969	region
969	road
970	policy
970	so
970	kind
971	floor
971	manage
972	understand
972	child
972	free
972	sister
973	hundred
974	skill
975	will
976	happy
976	discussion
976	front
977	ready
977	the
977	on
978	product
979	cup
979	happen
979	as
980	wife
980	claim
981	require
981	management
981	couple
981	front
982	PM
982	year
983	stop
984	seem
984	head
984	official
984	know
985	debate
986	discover
986	old
986	share
987	impact
987	bed
987	voice
987	ability
988	because
988	great
988	role
988	benefit
989	need
989	several
989	learn
989	draw
990	blue
990	team
991	when
991	green
991	nation
991	husband
992	street
992	beautiful
992	three
993	forward
993	owner
993	sing
993	strong
994	third
995	service
995	pay
995	less
995	we
996	film
996	carry
996	number
996	talk
997	network
998	part
999	these
999	common
999	without
1000	hard
1000	sing
1000	policy
\.


--
-- Data for Name: relation_16; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_16 (customer_id, loyalty_tier, renewal_date, role, company_name) FROM stdin;
101	artist	\N	customer	\N
102	development	\N	customer	\N
103	do	\N	customer	\N
104	attorney	\N	customer	\N
105	shoulder	\N	customer	\N
106	medical	\N	customer	\N
107	dinner	\N	customer	\N
108	book	\N	customer	\N
109	however	\N	customer	\N
110	together	\N	customer	\N
111	bad	\N	customer	\N
112	lay	\N	customer	\N
113	piece	\N	customer	\N
114	major	\N	customer	\N
115	as	\N	customer	\N
116	American	\N	customer	\N
117	PM	\N	customer	\N
118	different	\N	customer	\N
119	shoulder	\N	customer	\N
120	respond	\N	customer	\N
121	look	\N	customer	\N
122	product	\N	customer	\N
123	particularly	\N	customer	\N
124	store	\N	customer	\N
125	son	\N	customer	\N
126	store	\N	customer	\N
127	system	\N	customer	\N
128	imagine	\N	customer	\N
129	in	\N	customer	\N
130	three	\N	customer	\N
131	whether	\N	customer	\N
132	drive	\N	customer	\N
133	try	\N	customer	\N
134	weight	\N	customer	\N
135	may	\N	customer	\N
136	else	\N	customer	\N
137	work	\N	customer	\N
138	TV	\N	customer	\N
139	decide	\N	customer	\N
140	job	\N	customer	\N
141	baby	\N	customer	\N
142	effort	\N	customer	\N
143	according	\N	customer	\N
144	picture	\N	customer	\N
145	material	\N	customer	\N
146	second	\N	customer	\N
147	east	\N	customer	\N
148	end	\N	customer	\N
149	reduce	\N	customer	\N
150	wonder	\N	customer	\N
151	already	\N	customer	\N
152	none	\N	customer	\N
153	start	\N	customer	\N
154	food	\N	customer	\N
155	couple	\N	customer	\N
156	produce	\N	customer	\N
157	address	\N	customer	\N
158	difficult	\N	customer	\N
159	suddenly	\N	customer	\N
160	you	\N	customer	\N
161	far	\N	customer	\N
162	almost	\N	customer	\N
163	again	\N	customer	\N
164	certain	\N	customer	\N
165	strategy	\N	customer	\N
166	society	\N	customer	\N
167	answer	\N	customer	\N
168	government	\N	customer	\N
169	already	\N	customer	\N
170	modern	\N	customer	\N
171	couple	\N	customer	\N
172	serve	\N	customer	\N
173	material	\N	customer	\N
174	reason	\N	customer	\N
175	hope	\N	customer	\N
176	nation	\N	customer	\N
177	specific	\N	customer	\N
178	police	\N	customer	\N
179	box	\N	customer	\N
180	hospital	\N	customer	\N
181	role	\N	customer	\N
182	maybe	\N	customer	\N
183	record	\N	customer	\N
184	election	\N	customer	\N
185	culture	\N	customer	\N
186	television	\N	customer	\N
187	lot	\N	customer	\N
188	himself	\N	customer	\N
189	we	\N	customer	\N
190	modern	\N	customer	\N
191	play	\N	customer	\N
192	organization	\N	customer	\N
193	dog	\N	customer	\N
194	allow	\N	customer	\N
195	interesting	\N	customer	\N
196	line	\N	customer	\N
197	worker	\N	customer	\N
198	interview	\N	customer	\N
199	factor	\N	customer	\N
200	bed	\N	customer	\N
201	beyond	history	primecustomer	\N
202	open	rich	primecustomer	\N
203	candidate	focus	primecustomer	\N
204	miss	onto	primecustomer	\N
205	name	operation	primecustomer	\N
206	skin	article	primecustomer	\N
207	dinner	easy	primecustomer	\N
208	season	several	primecustomer	\N
209	himself	could	primecustomer	\N
210	husband	trip	primecustomer	\N
211	fine	half	primecustomer	\N
212	just	process	primecustomer	\N
213	use	water	primecustomer	\N
214	lawyer	heavy	primecustomer	\N
215	kitchen	easy	primecustomer	\N
216	consumer	development	primecustomer	\N
217	spring	team	primecustomer	\N
218	this	cost	primecustomer	\N
219	line	strategy	primecustomer	\N
220	traditional	value	primecustomer	\N
221	number	discussion	primecustomer	\N
222	price	statement	primecustomer	\N
223	class	rule	primecustomer	\N
224	land	enough	primecustomer	\N
225	detail	soldier	primecustomer	\N
226	summer	management	primecustomer	\N
227	station	general	primecustomer	\N
228	action	character	primecustomer	\N
229	player	religious	primecustomer	\N
230	image	individual	primecustomer	\N
231	put	accept	primecustomer	\N
232	owner	foot	primecustomer	\N
233	large	worry	primecustomer	\N
234	everybody	purpose	primecustomer	\N
235	report	rate	primecustomer	\N
236	example	sign	primecustomer	\N
237	answer	project	primecustomer	\N
238	spring	not	primecustomer	\N
239	peace	next	primecustomer	\N
240	five	space	primecustomer	\N
241	least	director	primecustomer	\N
242	issue	beat	primecustomer	\N
243	decide	save	primecustomer	\N
244	reason	apply	primecustomer	\N
245	big	agency	primecustomer	\N
246	now	street	primecustomer	\N
247	administration	probably	primecustomer	\N
248	against	more	primecustomer	\N
249	part	big	primecustomer	\N
250	theory	as	primecustomer	\N
251	rock	opportunity	primecustomer	\N
252	stop	coach	primecustomer	\N
253	far	impact	primecustomer	\N
254	want	age	primecustomer	\N
255	ago	music	primecustomer	\N
256	people	listen	primecustomer	\N
257	reason	inside	primecustomer	\N
258	individual	where	primecustomer	\N
259	task	blue	primecustomer	\N
260	term	teacher	primecustomer	\N
261	begin	record	primecustomer	\N
262	class	shake	primecustomer	\N
263	of	parent	primecustomer	\N
264	level	least	primecustomer	\N
265	catch	as	primecustomer	\N
266	pull	method	primecustomer	\N
267	support	attorney	primecustomer	\N
268	free	through	primecustomer	\N
269	nation	nation	primecustomer	\N
270	discover	collection	primecustomer	\N
271	personal	part	primecustomer	\N
272	radio	sometimes	primecustomer	\N
273	result	this	primecustomer	\N
274	hot	really	primecustomer	\N
275	dark	service	primecustomer	\N
276	offer	above	primecustomer	\N
277	energy	serious	primecustomer	\N
278	low	audience	primecustomer	\N
279	inside	yourself	primecustomer	\N
280	because	contain	primecustomer	\N
281	lead	quickly	primecustomer	\N
282	quickly	will	primecustomer	\N
283	book	establish	primecustomer	\N
284	or	poor	primecustomer	\N
285	forward	skin	primecustomer	\N
286	else	fall	primecustomer	\N
287	program	capital	primecustomer	\N
288	for	common	primecustomer	\N
289	save	move	primecustomer	\N
290	weight	pressure	primecustomer	\N
291	officer	everyone	primecustomer	\N
292	than	music	primecustomer	\N
293	spend	system	primecustomer	\N
294	book	voice	primecustomer	\N
295	security	but	primecustomer	\N
296	officer	book	primecustomer	\N
297	toward	phone	primecustomer	\N
298	truth	decide	primecustomer	\N
299	manager	threat	primecustomer	\N
300	history	fall	primecustomer	\N
301	worry	\N	businesscustomer	positive
302	believe	\N	businesscustomer	suddenly
303	sister	\N	businesscustomer	information
304	spend	\N	businesscustomer	pressure
305	along	\N	businesscustomer	usually
306	economy	\N	businesscustomer	them
307	room	\N	businesscustomer	western
308	throughout	\N	businesscustomer	relationship
309	argue	\N	businesscustomer	wide
310	success	\N	businesscustomer	alone
311	red	\N	businesscustomer	choice
312	machine	\N	businesscustomer	quickly
313	here	\N	businesscustomer	smile
314	positive	\N	businesscustomer	hair
315	need	\N	businesscustomer	staff
316	class	\N	businesscustomer	offer
317	sit	\N	businesscustomer	because
318	people	\N	businesscustomer	range
319	however	\N	businesscustomer	occur
320	say	\N	businesscustomer	ball
321	room	\N	businesscustomer	relate
322	blue	\N	businesscustomer	hospital
323	but	\N	businesscustomer	care
324	pull	\N	businesscustomer	professor
325	authority	\N	businesscustomer	hear
326	candidate	\N	businesscustomer	develop
327	everybody	\N	businesscustomer	player
328	source	\N	businesscustomer	political
329	nature	\N	businesscustomer	other
330	back	\N	businesscustomer	network
331	church	\N	businesscustomer	simple
332	apply	\N	businesscustomer	project
333	cold	\N	businesscustomer	general
334	evidence	\N	businesscustomer	up
335	father	\N	businesscustomer	necessary
336	recognize	\N	businesscustomer	hold
337	community	\N	businesscustomer	note
338	federal	\N	businesscustomer	establish
339	Republican	\N	businesscustomer	leader
340	wear	\N	businesscustomer	president
341	interest	\N	businesscustomer	move
342	believe	\N	businesscustomer	born
343	power	\N	businesscustomer	character
344	language	\N	businesscustomer	especially
345	law	\N	businesscustomer	people
346	person	\N	businesscustomer	final
347	wrong	\N	businesscustomer	these
348	share	\N	businesscustomer	people
349	local	\N	businesscustomer	determine
350	owner	\N	businesscustomer	local
351	mouth	\N	businesscustomer	own
352	level	\N	businesscustomer	police
353	enter	\N	businesscustomer	ready
354	debate	\N	businesscustomer	reason
355	western	\N	businesscustomer	water
356	miss	\N	businesscustomer	travel
357	decision	\N	businesscustomer	before
358	want	\N	businesscustomer	program
359	region	\N	businesscustomer	all
360	against	\N	businesscustomer	together
361	heart	\N	businesscustomer	evening
362	main	\N	businesscustomer	else
363	seat	\N	businesscustomer	end
364	really	\N	businesscustomer	important
365	weight	\N	businesscustomer	since
366	thank	\N	businesscustomer	sure
367	agency	\N	businesscustomer	nation
368	happy	\N	businesscustomer	light
369	add	\N	businesscustomer	over
370	front	\N	businesscustomer	face
371	parent	\N	businesscustomer	opportunity
372	discussion	\N	businesscustomer	which
373	phone	\N	businesscustomer	the
374	on	\N	businesscustomer	tonight
375	east	\N	businesscustomer	speech
376	kid	\N	businesscustomer	sea
377	material	\N	businesscustomer	city
378	television	\N	businesscustomer	blood
379	least	\N	businesscustomer	feel
380	sort	\N	businesscustomer	far
381	west	\N	businesscustomer	fact
382	behavior	\N	businesscustomer	occur
383	may	\N	businesscustomer	opportunity
384	size	\N	businesscustomer	difference
385	off	\N	businesscustomer	a
386	sister	\N	businesscustomer	usually
387	television	\N	businesscustomer	call
388	walk	\N	businesscustomer	let
389	outside	\N	businesscustomer	politics
390	cover	\N	businesscustomer	it
391	interest	\N	businesscustomer	up
392	dark	\N	businesscustomer	environmental
393	almost	\N	businesscustomer	tend
394	place	\N	businesscustomer	boy
395	entire	\N	businesscustomer	attack
396	plant	\N	businesscustomer	special
397	why	\N	businesscustomer	build
398	hospital	\N	businesscustomer	network
399	toward	\N	businesscustomer	those
400	some	\N	businesscustomer	maintain
\.


--
-- Data for Name: relation_17; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_17 (customer_id, contact_no) FROM stdin;
101	opportunity
101	action
102	develop
102	focus
103	site
104	and
104	must
105	age
106	last
107	choice
108	political
109	push
109	set
110	own
111	thing
111	adult
112	industry
113	newspaper
114	avoid
115	interview
116	letter
117	bad
117	community
118	deal
118	any
119	present
120	oil
121	out
121	social
122	because
123	also
124	show
124	main
125	company
125	analysis
126	medical
127	fire
127	our
128	exist
128	ago
129	now
129	less
130	adult
131	ahead
131	follow
132	him
132	society
133	might
134	admit
134	you
135	stuff
135	stage
136	which
136	skin
137	run
138	trial
139	ok
139	carry
140	year
141	room
142	garden
143	trial
144	this
144	must
145	business
145	husband
146	woman
146	sit
147	break
147	say
148	reality
149	may
150	five
150	yes
151	expect
152	knowledge
153	rock
154	exist
155	protect
156	thousand
156	bed
157	director
157	radio
158	likely
158	cultural
159	religious
159	from
160	month
161	feel
162	second
162	memory
163	already
164	recognize
164	fly
165	decade
165	produce
166	property
167	beautiful
168	finally
169	knowledge
169	sound
170	reduce
171	especially
171	interest
172	school
173	drop
173	good
174	address
175	on
176	appear
177	wonder
178	enjoy
179	shoulder
179	could
180	turn
180	in
181	into
181	floor
182	party
182	whatever
183	think
183	military
184	officer
185	approach
186	analysis
186	party
187	foreign
188	son
188	these
189	try
189	quickly
190	see
191	practice
192	safe
193	suddenly
193	lot
194	unit
194	hundred
195	security
195	difference
196	wait
196	financial
197	environmental
198	several
199	hear
200	modern
201	board
202	practice
203	school
204	space
205	arrive
205	individual
206	dog
207	clear
208	physical
208	ability
209	use
210	might
210	need
211	describe
212	media
213	five
213	serious
214	defense
215	according
215	thousand
216	late
217	for
217	since
218	then
218	movement
219	style
219	moment
220	year
221	best
221	account
222	participant
222	weight
223	computer
223	building
224	TV
224	poor
225	make
225	part
226	check
227	store
228	establish
228	stage
229	message
229	land
230	western
230	how
231	south
231	adult
232	pressure
233	matter
233	environmental
234	become
234	stage
235	go
236	deal
236	spring
237	treat
237	country
238	choose
239	value
239	yet
240	fast
241	growth
241	along
242	of
243	evidence
243	herself
244	blood
244	need
245	ok
246	act
247	sure
248	property
248	class
249	and
249	customer
250	main
250	type
251	thing
251	Mrs
252	cold
253	article
253	list
254	response
254	clear
255	institution
256	decide
257	also
258	these
259	note
260	quickly
261	become
262	edge
263	population
264	still
265	use
265	give
266	either
267	budget
267	while
268	hear
269	young
269	grow
270	kitchen
270	never
271	close
272	at
273	continue
273	son
274	doctor
275	cold
276	bring
277	green
277	practice
278	voice
279	night
279	none
280	else
280	have
281	foreign
281	entire
282	middle
282	care
283	whatever
284	man
285	wide
285	fire
286	spend
286	other
287	lead
287	begin
288	far
288	speak
289	despite
289	along
290	fact
291	wait
292	can
293	shoulder
294	miss
294	race
295	gas
296	top
297	author
297	surface
298	system
298	base
299	how
299	exactly
300	hear
300	gas
301	their
302	serious
302	population
303	lay
304	individual
304	seat
305	security
306	him
306	crime
307	car
307	product
308	north
308	contain
309	reach
310	education
310	tell
311	exist
311	require
312	open
313	challenge
314	cell
315	allow
316	even
317	low
318	officer
318	need
319	unit
319	agency
320	executive
321	many
321	travel
322	create
322	receive
323	western
323	building
324	learn
324	fish
325	training
326	where
327	test
327	word
328	student
329	scene
330	stage
331	mind
332	experience
332	investment
333	check
334	perhaps
335	kid
336	suffer
336	administration
337	poor
338	book
339	detail
340	oil
340	by
341	several
341	tend
342	risk
343	knowledge
344	remain
344	material
345	notice
345	now
346	those
347	benefit
348	thousand
349	detail
349	throughout
350	save
350	need
351	loss
351	check
352	arm
352	throughout
353	nation
354	general
354	dream
355	health
355	physical
356	option
357	professor
358	suggest
359	public
359	particular
360	news
361	may
361	site
362	book
363	region
364	glass
364	resource
365	wear
366	still
366	attack
367	still
368	how
369	might
369	fire
370	goal
370	state
371	interview
372	phone
373	us
374	career
375	evening
375	quite
376	know
377	write
377	marriage
378	how
379	between
380	system
380	into
381	world
381	trial
382	travel
382	item
383	agree
383	realize
384	serious
385	bank
386	state
386	recent
387	big
387	compare
388	position
389	daughter
389	old
390	green
390	understand
391	technology
391	understand
392	dinner
392	natural
393	sort
393	seat
394	hot
395	either
395	necessary
396	system
396	blue
397	something
398	write
399	option
399	boy
400	many
400	heart
\.


--
-- Data for Name: relation_18; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_18 (customer_id, subscription_addons) FROM stdin;
201	author
201	same
201	government
201	form
202	later
203	organization
204	bit
204	whole
204	American
204	can
205	trip
205	now
205	choice
206	field
206	from
207	can
207	wind
208	service
209	prepare
209	fund
210	meet
210	here
210	community
211	behavior
211	defense
212	PM
212	popular
212	ahead
212	mind
213	despite
213	computer
214	fine
214	site
214	cultural
215	better
215	son
215	price
215	offer
216	rise
216	difference
216	board
217	win
217	around
218	between
218	always
218	moment
218	manage
219	pattern
220	best
221	need
221	while
221	possible
221	think
222	response
223	college
223	imagine
223	purpose
223	skill
224	career
224	only
224	minute
224	control
225	safe
225	report
226	any
227	whole
227	country
227	thus
227	myself
228	value
229	on
230	general
231	sing
232	early
233	themselves
233	protect
234	benefit
235	store
236	article
236	weight
236	half
237	inside
237	every
238	wife
239	prepare
239	deep
239	hit
239	property
240	people
240	skin
241	agreement
241	join
242	between
242	enough
242	prepare
242	have
243	thought
243	their
243	recently
244	Democrat
244	window
244	measure
245	treatment
245	firm
246	wall
246	citizen
247	simple
247	conference
247	let
247	owner
248	authority
248	direction
248	major
248	raise
249	hotel
249	throughout
250	executive
250	my
251	plan
251	admit
251	mention
252	about
252	difference
252	writer
253	theory
254	offer
255	evidence
256	wear
256	choose
257	those
257	radio
257	case
257	program
258	plant
258	box
259	hot
259	home
260	positive
260	although
260	never
261	imagine
262	year
262	it
262	he
262	left
263	occur
263	quality
263	reveal
263	explain
264	house
264	next
264	take
264	coach
265	Mr
265	memory
265	her
266	offer
267	main
267	reveal
267	grow
268	born
268	quite
268	keep
268	open
269	last
270	glass
270	story
270	war
271	high
271	interesting
271	floor
271	stage
272	modern
272	allow
273	their
273	reveal
273	discuss
273	beautiful
274	less
275	pattern
275	eat
275	relate
276	after
276	if
277	another
277	forward
277	fall
278	pattern
278	contain
278	need
278	building
279	discussion
280	successful
281	PM
282	clear
282	certain
282	instead
282	our
283	social
283	place
283	again
283	adult
284	letter
285	fill
286	reveal
286	resource
286	machine
286	class
287	look
287	future
287	particularly
288	wear
288	son
288	ever
288	kid
289	whom
290	oil
291	build
292	no
292	beyond
292	say
293	information
293	thing
293	much
294	since
295	somebody
295	beautiful
295	bit
295	decision
296	term
297	already
297	fund
297	part
298	order
298	political
298	system
298	such
299	where
300	make
\.


--
-- Data for Name: relation_19; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_19 (employee_id, employee_no, office_site, role, level) FROM stdin;
401	compare	\N	employee	\N
402	shoulder	\N	employee	\N
403	defense	\N	employee	\N
404	skin	\N	employee	\N
405	both	\N	employee	\N
406	single	\N	employee	\N
407	dog	\N	employee	\N
408	today	\N	employee	\N
409	crime	\N	employee	\N
410	wall	\N	employee	\N
411	job	\N	employee	\N
412	me	\N	employee	\N
413	real	\N	employee	\N
414	investment	\N	employee	\N
415	level	\N	employee	\N
416	look	\N	employee	\N
417	exist	\N	employee	\N
418	operation	\N	employee	\N
419	soon	\N	employee	\N
420	fill	\N	employee	\N
421	grow	\N	employee	\N
422	current	\N	employee	\N
423	number	\N	employee	\N
424	since	\N	employee	\N
425	owner	\N	employee	\N
426	art	\N	employee	\N
427	no	\N	employee	\N
428	approach	\N	employee	\N
429	line	\N	employee	\N
430	back	\N	employee	\N
431	debate	\N	employee	\N
432	draw	\N	employee	\N
433	across	\N	employee	\N
434	five	\N	employee	\N
435	decision	\N	employee	\N
436	true	\N	employee	\N
437	when	\N	employee	\N
438	throughout	\N	employee	\N
439	sort	\N	employee	\N
440	lay	\N	employee	\N
441	thus	\N	employee	\N
442	arrive	\N	employee	\N
443	appear	\N	employee	\N
444	what	\N	employee	\N
445	method	\N	employee	\N
446	take	\N	employee	\N
447	direction	\N	employee	\N
448	others	\N	employee	\N
449	mean	\N	employee	\N
450	authority	\N	employee	\N
451	set	\N	employee	\N
452	office	\N	employee	\N
453	lot	\N	employee	\N
454	interview	\N	employee	\N
455	significant	\N	employee	\N
456	shoulder	\N	employee	\N
457	few	\N	employee	\N
458	couple	\N	employee	\N
459	project	\N	employee	\N
460	six	\N	employee	\N
461	beat	\N	employee	\N
462	whole	\N	employee	\N
463	or	\N	employee	\N
464	clearly	\N	employee	\N
465	letter	\N	employee	\N
466	parent	\N	employee	\N
467	alone	\N	employee	\N
468	between	\N	employee	\N
469	institution	\N	employee	\N
470	art	\N	employee	\N
471	agency	\N	employee	\N
472	paper	\N	employee	\N
473	keep	\N	employee	\N
474	help	\N	employee	\N
475	media	\N	employee	\N
476	fast	\N	employee	\N
477	suddenly	\N	employee	\N
478	same	\N	employee	\N
479	president	\N	employee	\N
480	raise	\N	employee	\N
481	guy	\N	employee	\N
482	could	\N	employee	\N
483	head	\N	employee	\N
484	area	\N	employee	\N
485	lose	\N	employee	\N
486	place	\N	employee	\N
487	ok	\N	employee	\N
488	recognize	\N	employee	\N
489	guy	\N	employee	\N
490	national	\N	employee	\N
491	hotel	\N	employee	\N
492	senior	\N	employee	\N
493	edge	\N	employee	\N
494	group	\N	employee	\N
495	discuss	\N	employee	\N
496	best	\N	employee	\N
497	level	\N	employee	\N
498	medical	\N	employee	\N
499	cut	\N	employee	\N
500	event	\N	employee	\N
501	scene	be	corporateemployee	\N
502	how	focus	corporateemployee	\N
503	half	threat	corporateemployee	\N
504	development	argue	corporateemployee	\N
505	pretty	high	corporateemployee	\N
506	work	future	corporateemployee	\N
507	wide	thing	corporateemployee	\N
508	street	side	corporateemployee	\N
509	operation	artist	corporateemployee	\N
510	explain	top	corporateemployee	\N
511	age	event	corporateemployee	\N
512	many	claim	corporateemployee	\N
513	method	table	corporateemployee	\N
514	leave	purpose	corporateemployee	\N
515	hour	value	corporateemployee	\N
516	just	apply	corporateemployee	\N
517	beyond	hot	corporateemployee	\N
518	result	produce	corporateemployee	\N
519	send	only	corporateemployee	\N
520	bed	Democrat	corporateemployee	\N
521	difficult	perform	corporateemployee	\N
522	former	with	corporateemployee	\N
523	detail	base	corporateemployee	\N
524	allow	hotel	corporateemployee	\N
525	anything	author	corporateemployee	\N
526	us	theory	corporateemployee	\N
527	ok	since	corporateemployee	\N
528	administration	smile	corporateemployee	\N
529	friend	third	corporateemployee	\N
530	here	though	corporateemployee	\N
531	room	civil	corporateemployee	\N
532	sell	size	corporateemployee	\N
533	trial	whether	corporateemployee	\N
534	general	term	corporateemployee	\N
535	nice	about	corporateemployee	\N
536	now	soon	corporateemployee	\N
537	computer	security	corporateemployee	\N
538	say	agent	corporateemployee	\N
539	crime	before	corporateemployee	\N
540	thing	whole	corporateemployee	\N
541	chance	garden	corporateemployee	\N
542	candidate	set	corporateemployee	\N
543	something	member	corporateemployee	\N
544	expert	single	corporateemployee	\N
545	interesting	film	corporateemployee	\N
546	television	toward	corporateemployee	\N
547	hand	free	corporateemployee	\N
548	focus	coach	corporateemployee	\N
549	recent	information	corporateemployee	\N
550	seven	imagine	corporateemployee	\N
551	arrive	peace	corporateemployee	\N
552	business	trouble	corporateemployee	\N
553	compare	easy	corporateemployee	\N
554	water	against	corporateemployee	\N
555	anyone	exactly	corporateemployee	\N
556	town	hotel	corporateemployee	\N
557	model	have	corporateemployee	\N
558	use	campaign	corporateemployee	\N
559	upon	American	corporateemployee	\N
560	player	Mrs	corporateemployee	\N
561	goal	fill	corporateemployee	\N
562	walk	fast	corporateemployee	\N
563	authority	fill	corporateemployee	\N
564	mean	serious	corporateemployee	\N
565	turn	throw	corporateemployee	\N
566	smile	garden	corporateemployee	\N
567	authority	walk	corporateemployee	\N
568	side	already	corporateemployee	\N
569	test	money	corporateemployee	\N
570	billion	property	corporateemployee	\N
571	beautiful	none	corporateemployee	\N
572	to	activity	corporateemployee	\N
573	star	activity	corporateemployee	\N
574	north	possible	corporateemployee	\N
575	cost	stage	corporateemployee	\N
576	fund	peace	corporateemployee	\N
577	fact	form	corporateemployee	\N
578	visit	else	corporateemployee	\N
579	inside	carry	corporateemployee	\N
580	on	offer	corporateemployee	\N
581	media	politics	corporateemployee	\N
582	put	strategy	corporateemployee	\N
583	message	yes	corporateemployee	\N
584	doctor	type	corporateemployee	\N
585	rather	consider	corporateemployee	\N
586	commercial	thank	corporateemployee	\N
587	eight	evidence	corporateemployee	\N
588	million	herself	corporateemployee	\N
589	before	cold	corporateemployee	\N
590	wonder	often	corporateemployee	\N
591	PM	through	corporateemployee	\N
592	expert	story	corporateemployee	\N
593	cell	consider	corporateemployee	\N
594	story	morning	corporateemployee	\N
595	gun	camera	corporateemployee	\N
596	write	purpose	corporateemployee	\N
597	marriage	assume	corporateemployee	\N
598	garden	million	corporateemployee	\N
599	hope	over	corporateemployee	\N
600	least	house	corporateemployee	\N
601	reason	sign	engineer	cell
602	himself	prepare	engineer	down
603	crime	administration	engineer	energy
604	believe	similar	engineer	analysis
605	imagine	score	engineer	art
606	home	nothing	engineer	leg
607	claim	contain	engineer	trade
608	people	teach	engineer	easy
609	me	consider	engineer	various
610	agency	doctor	engineer	set
611	rock	election	engineer	girl
612	teacher	popular	engineer	others
613	concern	dark	engineer	identify
614	production	employee	engineer	as
615	wide	business	engineer	family
616	exist	technology	engineer	I
617	air	economy	engineer	read
618	operation	art	engineer	choose
619	interest	break	engineer	arrive
620	kid	treat	engineer	carry
621	capital	feeling	engineer	property
622	seat	miss	engineer	which
623	activity	game	engineer	whether
624	moment	this	engineer	probably
625	fight	gun	engineer	because
626	recent	find	engineer	difficult
627	everybody	well	engineer	group
628	about	car	engineer	finish
629	fund	Republican	engineer	local
630	level	smile	engineer	seem
631	city	address	engineer	onto
632	other	worker	engineer	probably
633	whole	travel	engineer	build
634	training	reality	engineer	gas
635	strong	TV	engineer	hope
636	pass	audience	engineer	especially
637	industry	foot	engineer	tax
638	tough	your	engineer	while
639	continue	member	engineer	view
640	above	successful	engineer	side
641	it	job	engineer	easy
642	of	want	engineer	trial
643	action	seven	engineer	support
644	voice	us	engineer	gun
645	then	weight	engineer	ahead
646	doctor	pressure	engineer	same
647	half	him	engineer	group
648	successful	news	engineer	table
649	wall	long	engineer	scene
650	bad	drive	engineer	everything
651	western	car	engineer	chance
652	old	yeah	engineer	employee
653	light	several	engineer	concern
654	enough	foot	engineer	organization
655	truth	protect	engineer	officer
656	explain	not	engineer	tell
657	interesting	day	engineer	score
658	half	might	engineer	likely
659	rest	city	engineer	that
660	concern	front	engineer	community
661	leg	time	engineer	person
662	represent	sure	engineer	woman
663	figure	green	engineer	bit
664	member	report	engineer	happen
665	once	information	engineer	light
666	executive	go	engineer	alone
667	source	before	engineer	draw
668	inside	window	engineer	agreement
669	human	through	engineer	outside
670	sort	social	engineer	appear
671	senior	ground	engineer	amount
672	be	rate	engineer	tell
673	fire	environment	engineer	technology
674	school	red	engineer	anyone
675	black	rich	engineer	sit
676	address	kid	engineer	young
677	job	at	engineer	able
678	present	sea	engineer	practice
679	road	fly	engineer	treatment
680	figure	pattern	engineer	wall
681	clear	course	engineer	treatment
682	name	him	engineer	everyone
683	main	manage	engineer	program
684	car	least	engineer	white
685	reason	certain	engineer	however
686	lead	throughout	engineer	thank
687	less	question	engineer	notice
688	through	attack	engineer	media
689	onto	trouble	engineer	fine
690	the	place	engineer	fly
691	drive	small	engineer	rest
692	Mr	check	engineer	arrive
693	move	figure	engineer	high
694	wife	support	engineer	mind
695	outside	sign	engineer	Mrs
696	history	happy	engineer	administration
697	beautiful	head	engineer	her
698	action	raise	engineer	responsibility
699	poor	person	engineer	industry
700	quickly	big	engineer	forget
701	how	\N	supportagent	\N
702	each	\N	supportagent	\N
703	kind	\N	supportagent	\N
704	pretty	\N	supportagent	\N
705	day	\N	supportagent	\N
706	environmental	\N	supportagent	\N
707	lead	\N	supportagent	\N
708	campaign	\N	supportagent	\N
709	right	\N	supportagent	\N
710	guess	\N	supportagent	\N
711	though	\N	supportagent	\N
712	draw	\N	supportagent	\N
713	six	\N	supportagent	\N
714	man	\N	supportagent	\N
715	light	\N	supportagent	\N
716	serve	\N	supportagent	\N
717	care	\N	supportagent	\N
718	suddenly	\N	supportagent	\N
719	way	\N	supportagent	\N
720	think	\N	supportagent	\N
721	fill	\N	supportagent	\N
722	identify	\N	supportagent	\N
723	west	\N	supportagent	\N
724	moment	\N	supportagent	\N
725	sometimes	\N	supportagent	\N
726	after	\N	supportagent	\N
727	condition	\N	supportagent	\N
728	none	\N	supportagent	\N
729	network	\N	supportagent	\N
730	I	\N	supportagent	\N
731	imagine	\N	supportagent	\N
732	deal	\N	supportagent	\N
733	each	\N	supportagent	\N
734	person	\N	supportagent	\N
735	with	\N	supportagent	\N
736	believe	\N	supportagent	\N
737	street	\N	supportagent	\N
738	theory	\N	supportagent	\N
739	trip	\N	supportagent	\N
740	hope	\N	supportagent	\N
741	behavior	\N	supportagent	\N
742	single	\N	supportagent	\N
743	adult	\N	supportagent	\N
744	baby	\N	supportagent	\N
745	however	\N	supportagent	\N
746	movement	\N	supportagent	\N
747	process	\N	supportagent	\N
748	career	\N	supportagent	\N
749	bad	\N	supportagent	\N
750	push	\N	supportagent	\N
751	film	\N	supportagent	\N
752	send	\N	supportagent	\N
753	new	\N	supportagent	\N
754	drug	\N	supportagent	\N
755	collection	\N	supportagent	\N
756	last	\N	supportagent	\N
757	movie	\N	supportagent	\N
758	move	\N	supportagent	\N
759	get	\N	supportagent	\N
760	plan	\N	supportagent	\N
761	point	\N	supportagent	\N
762	enough	\N	supportagent	\N
763	local	\N	supportagent	\N
764	industry	\N	supportagent	\N
765	behind	\N	supportagent	\N
766	product	\N	supportagent	\N
767	ahead	\N	supportagent	\N
768	body	\N	supportagent	\N
769	wife	\N	supportagent	\N
770	next	\N	supportagent	\N
771	outside	\N	supportagent	\N
772	seat	\N	supportagent	\N
773	central	\N	supportagent	\N
774	all	\N	supportagent	\N
775	guy	\N	supportagent	\N
776	room	\N	supportagent	\N
777	evening	\N	supportagent	\N
778	himself	\N	supportagent	\N
779	dark	\N	supportagent	\N
780	mention	\N	supportagent	\N
781	example	\N	supportagent	\N
782	physical	\N	supportagent	\N
783	agreement	\N	supportagent	\N
784	agreement	\N	supportagent	\N
785	cut	\N	supportagent	\N
786	voice	\N	supportagent	\N
787	early	\N	supportagent	\N
788	old	\N	supportagent	\N
789	Mr	\N	supportagent	\N
790	article	\N	supportagent	\N
791	movement	\N	supportagent	\N
792	future	\N	supportagent	\N
793	government	\N	supportagent	\N
794	thousand	\N	supportagent	\N
795	machine	\N	supportagent	\N
796	next	\N	supportagent	\N
797	school	\N	supportagent	\N
798	both	\N	supportagent	\N
799	wish	\N	supportagent	\N
800	hit	\N	supportagent	\N
801	TV	\N	fulfillmentassociate	\N
802	Mr	\N	fulfillmentassociate	\N
803	religious	\N	fulfillmentassociate	\N
804	one	\N	fulfillmentassociate	\N
805	remain	\N	fulfillmentassociate	\N
806	when	\N	fulfillmentassociate	\N
807	source	\N	fulfillmentassociate	\N
808	important	\N	fulfillmentassociate	\N
809	note	\N	fulfillmentassociate	\N
810	include	\N	fulfillmentassociate	\N
811	get	\N	fulfillmentassociate	\N
812	difficult	\N	fulfillmentassociate	\N
813	then	\N	fulfillmentassociate	\N
814	appear	\N	fulfillmentassociate	\N
815	prevent	\N	fulfillmentassociate	\N
816	return	\N	fulfillmentassociate	\N
817	nature	\N	fulfillmentassociate	\N
818	like	\N	fulfillmentassociate	\N
819	send	\N	fulfillmentassociate	\N
820	bag	\N	fulfillmentassociate	\N
821	campaign	\N	fulfillmentassociate	\N
822	notice	\N	fulfillmentassociate	\N
823	where	\N	fulfillmentassociate	\N
824	far	\N	fulfillmentassociate	\N
825	finally	\N	fulfillmentassociate	\N
826	bad	\N	fulfillmentassociate	\N
827	professional	\N	fulfillmentassociate	\N
828	guess	\N	fulfillmentassociate	\N
829	cut	\N	fulfillmentassociate	\N
830	environment	\N	fulfillmentassociate	\N
831	short	\N	fulfillmentassociate	\N
832	civil	\N	fulfillmentassociate	\N
833	class	\N	fulfillmentassociate	\N
834	number	\N	fulfillmentassociate	\N
835	skill	\N	fulfillmentassociate	\N
836	fill	\N	fulfillmentassociate	\N
837	value	\N	fulfillmentassociate	\N
838	fall	\N	fulfillmentassociate	\N
839	information	\N	fulfillmentassociate	\N
840	media	\N	fulfillmentassociate	\N
841	might	\N	fulfillmentassociate	\N
842	true	\N	fulfillmentassociate	\N
843	near	\N	fulfillmentassociate	\N
844	could	\N	fulfillmentassociate	\N
845	surface	\N	fulfillmentassociate	\N
846	against	\N	fulfillmentassociate	\N
847	between	\N	fulfillmentassociate	\N
848	carry	\N	fulfillmentassociate	\N
849	Mr	\N	fulfillmentassociate	\N
850	ask	\N	fulfillmentassociate	\N
851	pay	\N	fulfillmentassociate	\N
852	seem	\N	fulfillmentassociate	\N
853	argue	\N	fulfillmentassociate	\N
854	bar	\N	fulfillmentassociate	\N
855	trip	\N	fulfillmentassociate	\N
856	lot	\N	fulfillmentassociate	\N
857	religious	\N	fulfillmentassociate	\N
858	stop	\N	fulfillmentassociate	\N
859	game	\N	fulfillmentassociate	\N
860	job	\N	fulfillmentassociate	\N
861	heart	\N	fulfillmentassociate	\N
862	fight	\N	fulfillmentassociate	\N
863	but	\N	fulfillmentassociate	\N
864	pick	\N	fulfillmentassociate	\N
865	place	\N	fulfillmentassociate	\N
866	ground	\N	fulfillmentassociate	\N
867	catch	\N	fulfillmentassociate	\N
868	spring	\N	fulfillmentassociate	\N
869	reality	\N	fulfillmentassociate	\N
870	situation	\N	fulfillmentassociate	\N
871	world	\N	fulfillmentassociate	\N
872	she	\N	fulfillmentassociate	\N
873	if	\N	fulfillmentassociate	\N
874	she	\N	fulfillmentassociate	\N
875	where	\N	fulfillmentassociate	\N
876	out	\N	fulfillmentassociate	\N
877	single	\N	fulfillmentassociate	\N
878	conference	\N	fulfillmentassociate	\N
879	focus	\N	fulfillmentassociate	\N
880	scientist	\N	fulfillmentassociate	\N
881	discuss	\N	fulfillmentassociate	\N
882	political	\N	fulfillmentassociate	\N
883	military	\N	fulfillmentassociate	\N
884	himself	\N	fulfillmentassociate	\N
885	join	\N	fulfillmentassociate	\N
886	financial	\N	fulfillmentassociate	\N
887	evidence	\N	fulfillmentassociate	\N
888	test	\N	fulfillmentassociate	\N
889	total	\N	fulfillmentassociate	\N
890	interesting	\N	fulfillmentassociate	\N
891	manager	\N	fulfillmentassociate	\N
892	add	\N	fulfillmentassociate	\N
893	buy	\N	fulfillmentassociate	\N
894	site	\N	fulfillmentassociate	\N
895	discover	\N	fulfillmentassociate	\N
896	rule	\N	fulfillmentassociate	\N
897	worry	\N	fulfillmentassociate	\N
898	party	\N	fulfillmentassociate	\N
899	couple	\N	fulfillmentassociate	\N
900	computer	\N	fulfillmentassociate	\N
901	right	\N	categorymanager	\N
902	their	\N	categorymanager	\N
903	news	\N	categorymanager	\N
904	Republican	\N	categorymanager	\N
905	consider	\N	categorymanager	\N
906	exactly	\N	categorymanager	\N
907	raise	\N	categorymanager	\N
908	affect	\N	categorymanager	\N
909	quickly	\N	categorymanager	\N
910	sometimes	\N	categorymanager	\N
911	foreign	\N	categorymanager	\N
912	research	\N	categorymanager	\N
913	material	\N	categorymanager	\N
914	special	\N	categorymanager	\N
915	want	\N	categorymanager	\N
916	cover	\N	categorymanager	\N
917	against	\N	categorymanager	\N
918	appear	\N	categorymanager	\N
919	across	\N	categorymanager	\N
920	effort	\N	categorymanager	\N
921	population	\N	categorymanager	\N
922	above	\N	categorymanager	\N
923	billion	\N	categorymanager	\N
924	news	\N	categorymanager	\N
925	approach	\N	categorymanager	\N
926	agent	\N	categorymanager	\N
927	account	\N	categorymanager	\N
928	Mrs	\N	categorymanager	\N
929	across	\N	categorymanager	\N
930	middle	\N	categorymanager	\N
931	for	\N	categorymanager	\N
932	fact	\N	categorymanager	\N
933	oil	\N	categorymanager	\N
934	kid	\N	categorymanager	\N
935	hit	\N	categorymanager	\N
936	consumer	\N	categorymanager	\N
937	himself	\N	categorymanager	\N
938	source	\N	categorymanager	\N
939	special	\N	categorymanager	\N
940	foot	\N	categorymanager	\N
941	physical	\N	categorymanager	\N
942	magazine	\N	categorymanager	\N
943	offer	\N	categorymanager	\N
944	second	\N	categorymanager	\N
945	seek	\N	categorymanager	\N
946	probably	\N	categorymanager	\N
947	either	\N	categorymanager	\N
948	focus	\N	categorymanager	\N
949	stuff	\N	categorymanager	\N
950	I	\N	categorymanager	\N
951	himself	\N	categorymanager	\N
952	drive	\N	categorymanager	\N
953	keep	\N	categorymanager	\N
954	grow	\N	categorymanager	\N
955	public	\N	categorymanager	\N
956	have	\N	categorymanager	\N
957	Democrat	\N	categorymanager	\N
958	article	\N	categorymanager	\N
959	center	\N	categorymanager	\N
960	Mr	\N	categorymanager	\N
961	nothing	\N	categorymanager	\N
962	time	\N	categorymanager	\N
963	never	\N	categorymanager	\N
964	issue	\N	categorymanager	\N
965	situation	\N	categorymanager	\N
966	accept	\N	categorymanager	\N
967	that	\N	categorymanager	\N
968	I	\N	categorymanager	\N
969	drop	\N	categorymanager	\N
970	some	\N	categorymanager	\N
971	fight	\N	categorymanager	\N
972	laugh	\N	categorymanager	\N
973	natural	\N	categorymanager	\N
974	report	\N	categorymanager	\N
975	to	\N	categorymanager	\N
976	news	\N	categorymanager	\N
977	third	\N	categorymanager	\N
978	fear	\N	categorymanager	\N
979	bar	\N	categorymanager	\N
980	both	\N	categorymanager	\N
981	next	\N	categorymanager	\N
982	window	\N	categorymanager	\N
983	hand	\N	categorymanager	\N
984	compare	\N	categorymanager	\N
985	move	\N	categorymanager	\N
986	computer	\N	categorymanager	\N
987	under	\N	categorymanager	\N
988	full	\N	categorymanager	\N
989	law	\N	categorymanager	\N
990	through	\N	categorymanager	\N
991	beyond	\N	categorymanager	\N
992	clearly	\N	categorymanager	\N
993	say	\N	categorymanager	\N
994	agreement	\N	categorymanager	\N
995	interview	\N	categorymanager	\N
996	discover	\N	categorymanager	\N
997	Mr	\N	categorymanager	\N
998	allow	\N	categorymanager	\N
999	maintain	\N	categorymanager	\N
1000	full	\N	categorymanager	\N
\.


--
-- Data for Name: relation_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_2 (product_id, mv_attributes) FROM stdin;
1	success
1	chance
2	support
2	company
3	step
3	at
4	trade
4	form
5	truth
5	race
6	go
6	impact
7	for
8	away
8	short
9	report
10	central
10	others
11	charge
12	activity
13	place
13	foot
14	where
15	news
16	style
17	by
17	subject
18	mind
19	operation
19	thing
20	food
20	responsibility
21	pass
21	government
22	require
23	class
24	or
24	involve
25	avoid
26	speech
26	eight
27	smile
27	style
28	movement
29	herself
30	reflect
31	money
31	debate
32	edge
32	step
33	send
33	measure
34	effect
35	single
36	race
37	magazine
38	large
39	education
39	budget
40	himself
40	white
41	today
42	throw
42	lot
43	issue
44	question
45	toward
46	usually
46	huge
47	nation
47	value
48	blue
49	including
49	order
50	even
51	candidate
52	reason
52	with
53	son
54	group
54	success
55	risk
55	nothing
56	best
56	option
57	establish
57	citizen
58	scene
59	situation
59	form
60	court
60	professional
61	consumer
61	leave
62	something
63	win
64	remember
65	process
65	cause
66	strategy
67	place
67	expect
68	raise
69	our
70	but
71	resource
72	lead
72	opportunity
73	expect
74	ever
74	cold
75	hot
76	herself
77	recent
77	billion
78	high
79	true
80	bit
80	ability
81	possible
82	outside
83	quality
83	newspaper
84	citizen
84	success
85	design
85	movement
86	understand
86	finally
87	majority
87	edge
88	tell
88	response
89	vote
90	book
90	center
91	everything
91	in
92	risk
93	gas
94	clear
94	event
95	thing
96	mind
96	most
97	happy
97	military
98	voice
98	fish
99	store
99	score
100	shoulder
101	walk
102	say
103	candidate
104	fund
104	old
105	far
106	whatever
106	eight
107	special
108	manage
109	popular
109	Republican
110	mouth
110	too
111	you
112	already
113	travel
114	affect
115	yet
116	clearly
116	happen
117	nature
117	process
118	same
118	nearly
119	bad
119	at
120	body
121	wife
121	decision
122	good
123	support
124	three
124	ask
125	think
125	in
126	change
127	international
127	wish
128	would
128	high
129	country
130	ask
130	commercial
131	reality
131	agreement
132	necessary
132	base
133	woman
134	share
134	agreement
135	blue
136	body
136	window
137	clear
138	unit
138	network
139	think
140	mention
140	rich
141	share
141	decide
142	benefit
143	these
143	only
144	on
145	local
146	occur
147	pull
148	human
149	forward
150	shake
150	cold
151	more
151	tonight
152	building
152	sing
153	special
153	dream
154	on
155	eye
156	region
157	line
157	anyone
158	foreign
159	past
160	interview
161	apply
161	send
162	water
163	ten
163	some
164	check
165	fish
166	college
167	language
168	live
169	mouth
169	major
170	these
170	church
171	some
172	whole
172	arm
173	election
173	true
174	short
174	doctor
175	recently
175	will
176	relate
177	find
178	tonight
178	break
179	change
179	reduce
180	memory
181	floor
181	cup
182	arrive
182	can
183	election
184	table
184	issue
185	history
186	experience
186	war
187	house
188	friend
189	power
189	bill
190	spend
190	future
191	body
191	write
192	letter
193	investment
193	TV
194	physical
194	front
195	down
196	measure
196	history
197	expect
198	person
198	now
199	a
199	school
200	trial
201	product
201	history
202	professional
203	store
204	data
204	institution
205	tonight
206	arrive
206	work
207	they
208	purpose
209	grow
209	pull
210	quite
211	another
211	budget
212	seem
213	couple
213	draw
214	agree
215	century
215	be
216	behind
216	especially
217	face
218	when
219	seek
220	foreign
220	herself
221	property
221	have
222	central
223	radio
224	let
225	treatment
225	performance
226	society
226	center
227	success
227	whom
228	star
229	early
230	food
230	current
231	send
231	pick
232	affect
233	reason
234	assume
235	wish
236	boy
237	view
237	risk
238	imagine
239	office
240	career
241	citizen
242	return
242	bank
243	until
244	sell
244	argue
245	as
245	spring
246	effort
247	change
248	almost
249	bring
249	modern
250	enough
250	strong
251	compare
251	study
252	space
253	drive
254	another
255	miss
256	herself
256	direction
257	executive
257	likely
258	policy
259	only
259	table
260	call
260	during
261	story
261	no
262	themselves
262	floor
263	place
263	born
264	strategy
264	change
265	song
265	either
266	build
266	off
267	too
268	positive
268	tonight
269	give
269	price
270	school
270	thing
271	analysis
271	away
272	suffer
273	color
274	together
274	since
275	space
276	new
276	hit
277	cold
277	tell
278	religious
278	what
279	certainly
280	heart
280	decide
281	see
281	detail
282	cultural
282	game
283	this
283	environmental
284	artist
284	risk
285	successful
286	enter
287	near
287	event
288	pressure
289	yard
289	before
290	while
290	popular
291	drive
291	throw
292	drive
293	commercial
294	coach
295	set
296	hand
296	how
297	let
297	yeah
298	forget
299	its
300	coach
300	audience
301	above
301	understand
302	account
303	create
304	make
305	sing
305	force
306	reflect
306	ever
307	area
307	fear
308	least
308	more
309	seat
310	according
311	point
311	expert
312	green
312	total
313	necessary
313	in
314	station
314	party
315	fire
316	number
316	Mr
317	thing
318	purpose
319	hope
320	medical
320	life
321	change
321	her
322	tend
322	house
323	believe
324	wrong
325	nothing
325	air
326	side
326	miss
327	live
327	think
328	road
328	level
329	notice
330	population
331	especially
332	stay
333	month
334	where
334	herself
335	build
336	television
337	stock
337	loss
338	writer
339	PM
340	major
340	decide
341	cup
341	who
342	lawyer
343	friend
344	table
344	scientist
345	myself
346	station
346	over
347	name
347	level
348	them
348	or
349	current
349	discussion
350	wind
351	city
352	technology
353	call
354	easy
355	police
355	structure
356	reach
357	class
358	all
359	company
359	prove
360	certainly
360	expert
361	religious
362	think
362	save
363	your
363	government
364	rise
365	condition
366	social
366	market
367	quickly
368	go
369	far
369	door
370	alone
370	we
371	green
372	do
373	spring
374	sing
374	them
375	represent
375	store
376	usually
376	rest
377	democratic
378	today
379	thought
380	sound
381	purpose
381	each
382	child
382	hope
383	piece
383	wear
384	relationship
384	amount
385	she
386	child
386	season
387	cup
387	produce
388	no
389	human
389	interview
390	class
391	cause
392	so
393	two
393	arm
394	former
394	happen
395	million
396	community
396	simple
397	occur
397	ability
398	allow
399	maintain
400	see
401	me
401	civil
402	parent
402	middle
403	character
404	often
405	describe
405	customer
406	piece
406	way
407	book
408	important
409	student
409	later
410	finally
411	sign
411	life
412	box
413	candidate
413	buy
414	we
414	effect
415	door
416	sense
417	cell
417	popular
418	official
418	behind
419	building
420	response
420	teach
421	arrive
422	condition
423	believe
423	produce
424	month
425	happy
426	mind
427	but
427	store
428	clearly
429	south
430	have
431	civil
432	close
433	two
433	itself
434	energy
435	energy
435	person
436	situation
436	above
437	write
437	than
438	position
438	budget
439	drop
439	happy
440	available
441	still
441	report
442	phone
442	hospital
443	safe
444	might
445	against
446	bring
447	often
448	natural
449	avoid
450	campaign
451	open
451	kid
452	only
453	conference
453	yard
454	me
454	light
455	money
456	close
457	while
458	class
459	might
460	for
461	safe
462	these
463	through
463	allow
464	suddenly
464	it
465	imagine
466	marriage
466	within
467	about
468	table
469	off
469	maintain
470	top
471	stage
472	opportunity
472	worker
473	another
474	back
475	provide
475	book
476	thought
476	wrong
477	by
477	change
478	like
479	order
480	teach
481	same
482	yes
482	lawyer
483	attention
484	room
484	new
485	sell
486	another
487	study
488	seem
489	beyond
490	low
490	become
491	executive
492	certainly
492	memory
493	lawyer
494	ever
494	significant
495	themselves
495	he
496	actually
496	now
497	quite
498	respond
498	manager
499	best
500	opportunity
501	enter
502	human
502	activity
503	serious
504	different
505	focus
506	fly
506	hold
507	cold
508	live
509	painting
510	person
510	increase
511	effort
511	read
512	article
513	smile
513	some
514	back
515	ability
515	light
516	involve
517	season
517	any
518	but
518	draw
519	fly
519	approach
520	do
520	those
521	only
521	cold
522	federal
523	claim
524	end
524	resource
525	read
525	word
526	course
527	since
527	line
528	program
529	condition
530	society
530	explain
531	worker
532	newspaper
532	nothing
533	law
533	little
534	century
535	must
536	option
536	show
537	senior
537	writer
538	might
538	total
539	goal
539	impact
540	son
540	condition
541	great
541	he
542	available
543	which
543	key
544	store
544	set
545	table
546	security
547	lose
548	five
549	kind
549	explain
550	who
551	blood
551	me
552	offer
553	sister
554	run
555	newspaper
556	administration
557	never
558	write
559	pull
560	dream
561	wife
562	when
563	camera
563	fight
564	international
564	population
565	have
565	small
566	present
566	moment
567	new
568	require
569	ever
569	action
570	glass
570	including
571	peace
571	will
572	listen
573	deep
574	argue
575	election
576	decide
576	statement
577	card
577	network
578	city
578	everyone
579	pretty
580	sport
580	federal
581	rather
582	least
582	forget
583	use
583	authority
584	she
584	theory
585	artist
586	such
586	then
587	positive
588	argue
589	war
589	hope
590	impact
591	improve
591	on
592	bar
592	read
593	argue
593	into
594	admit
595	central
595	upon
596	city
597	hit
598	arrive
598	agent
599	similar
600	create
601	sure
601	forward
602	deep
602	study
603	region
603	tough
604	quickly
604	moment
605	together
605	girl
606	door
606	able
607	five
607	movie
608	big
609	according
609	analysis
610	somebody
610	enough
611	system
612	civil
613	south
614	care
614	project
615	heavy
615	morning
616	statement
616	prepare
617	computer
617	day
618	contain
618	and
619	future
620	less
620	discussion
621	house
621	require
622	read
623	state
623	describe
624	today
625	despite
625	instead
626	dog
626	table
627	play
628	politics
628	often
629	ever
630	read
630	evening
631	ball
632	good
633	lose
634	move
634	friend
635	usually
635	subject
636	drug
637	south
637	any
638	bill
639	appear
639	bad
640	moment
640	what
641	president
642	condition
643	receive
644	medical
645	indicate
646	whole
646	specific
647	kitchen
647	realize
648	number
648	even
649	key
649	oil
650	present
650	level
651	recognize
651	question
652	traditional
653	single
653	action
654	nice
655	best
655	son
656	particular
657	generation
658	majority
658	decision
659	theory
660	grow
661	than
661	if
662	key
663	laugh
663	tree
664	toward
665	item
666	half
666	exist
667	six
668	force
669	board
669	organization
670	improve
671	upon
672	it
673	like
674	woman
675	region
675	who
676	ten
676	one
677	middle
678	level
679	everything
680	home
681	expect
682	great
682	despite
683	center
683	evening
684	husband
685	best
686	hope
687	our
687	little
688	friend
688	arrive
689	lawyer
689	board
690	or
690	exist
691	color
692	hit
693	author
694	national
694	although
695	popular
696	coach
697	happen
697	officer
698	ground
698	try
699	inside
699	goal
700	ago
700	much
701	smile
701	worry
702	both
703	reflect
704	situation
704	style
705	itself
706	particularly
706	indicate
707	never
707	kid
708	full
709	set
709	manager
710	already
711	suffer
711	win
712	also
712	water
713	son
714	produce
715	note
716	show
717	like
717	check
718	different
719	discover
720	body
720	evidence
721	especially
722	hour
722	black
723	current
723	full
724	data
725	prevent
726	month
727	how
727	serve
728	impact
729	safe
729	section
730	gun
730	this
731	cold
731	budget
732	name
732	policy
733	walk
733	side
734	win
735	trip
735	else
736	whose
736	with
737	rate
738	whether
738	pay
739	attention
739	law
740	own
740	appear
741	interesting
742	sign
742	network
743	number
744	participant
745	difficult
745	perhaps
746	minute
746	final
747	fire
748	democratic
749	fly
750	whole
751	much
751	happy
752	skin
752	save
753	start
753	total
754	crime
755	end
755	truth
756	reduce
756	list
757	admit
758	control
759	although
760	work
761	attention
762	business
762	Mrs
763	society
764	one
764	that
765	piece
766	out
767	white
767	assume
768	go
768	research
769	deal
769	simply
770	will
770	natural
771	how
772	personal
773	end
773	project
774	defense
775	memory
776	break
776	without
777	reality
777	far
778	not
778	audience
779	affect
779	many
780	analysis
781	air
782	resource
782	require
783	mean
784	nation
784	line
785	trial
785	student
786	great
786	reduce
787	value
788	side
789	former
790	personal
791	decade
792	role
793	thank
794	PM
794	number
795	party
796	energy
796	avoid
797	water
797	better
798	real
798	agree
799	occur
799	themselves
800	season
801	entire
801	identify
802	population
802	else
803	individual
803	board
804	understand
804	station
805	but
805	policy
806	machine
807	over
808	my
809	service
809	woman
810	lead
811	despite
812	child
812	more
813	west
813	describe
814	step
815	happy
816	voice
816	health
817	thought
817	collection
818	economy
818	husband
819	person
820	fly
820	marriage
821	often
821	themselves
822	senior
822	develop
823	each
823	great
824	mind
825	base
825	activity
826	pretty
827	them
827	agreement
828	option
828	note
829	standard
829	wife
830	hotel
831	record
832	have
833	weight
833	interesting
834	have
834	marriage
835	evidence
835	possible
836	culture
836	ask
837	assume
838	still
838	our
839	dog
839	enough
840	pattern
840	recognize
841	nice
841	debate
842	including
842	bed
843	house
843	real
844	stuff
845	value
845	ability
846	understand
846	air
847	company
848	deep
849	yard
850	sign
851	doctor
852	voice
852	skill
853	interest
854	various
855	music
855	fly
856	up
856	run
857	seat
858	pass
858	parent
859	best
860	current
860	our
861	receive
861	clearly
862	five
862	heavy
863	once
863	travel
864	high
864	stand
865	human
865	east
866	note
867	clearly
868	to
868	girl
869	away
870	health
871	skin
872	government
872	along
873	long
873	visit
874	shoulder
874	child
875	leg
876	opportunity
876	take
877	man
878	sort
878	charge
879	listen
879	with
880	kid
881	design
881	song
882	cell
883	to
884	become
884	safe
885	kitchen
886	plant
887	soon
888	with
889	oil
890	pick
890	service
891	blue
892	meeting
892	toward
893	fly
894	happy
895	western
896	power
897	bring
897	expert
898	wait
899	soldier
899	bar
900	call
901	affect
902	up
903	change
903	away
904	size
904	call
905	rather
906	the
907	home
908	senior
908	up
909	Democrat
909	least
910	song
911	key
911	commercial
912	never
912	range
913	resource
914	continue
915	physical
916	beautiful
916	campaign
917	order
918	garden
919	whose
920	though
921	fine
921	though
922	put
923	stuff
923	together
924	cause
924	star
925	try
926	least
927	natural
927	quite
928	can
929	nice
929	final
930	summer
931	drop
932	well
932	lose
933	until
934	source
934	loss
935	action
935	some
936	source
936	able
937	land
937	half
938	agreement
938	step
939	phone
939	responsibility
940	she
940	some
941	trade
941	writer
942	time
943	suffer
943	fear
944	her
944	surface
945	such
945	computer
946	break
946	visit
947	five
948	word
949	century
949	cold
950	themselves
950	feeling
951	job
951	foreign
952	dark
953	dog
954	weight
955	clearly
955	forward
956	reality
957	half
958	gun
959	woman
959	fight
960	hundred
960	quickly
961	approach
962	without
963	serious
964	ground
964	production
965	behavior
966	language
966	doctor
967	parent
967	he
968	while
968	room
969	drop
970	between
970	president
971	investment
971	standard
972	decide
972	husband
973	city
973	although
974	law
975	current
975	alone
976	dark
977	get
977	term
978	east
979	take
980	city
981	pull
981	million
982	can
982	group
983	pressure
983	born
984	through
984	base
985	them
986	minute
986	see
987	sometimes
987	article
988	war
988	necessary
989	bill
989	later
990	statement
990	method
991	once
992	health
992	data
993	still
993	glass
994	happen
995	behind
996	in
996	health
997	peace
998	decide
999	claim
1000	parent
1001	success
1002	why
1003	to
1003	oil
1004	side
1005	everyone
1006	history
1006	her
1007	make
1008	certain
1009	wind
1010	conference
1011	get
1011	miss
1012	special
1013	trip
1014	author
1015	production
1015	professional
1016	idea
1016	bad
1017	itself
1018	mouth
1018	bed
1019	space
1019	sister
1020	need
1020	property
1021	budget
1022	picture
1023	father
1024	baby
1025	chance
1026	you
1027	agree
1027	much
1028	later
1029	situation
1030	election
1030	face
1031	key
1031	always
1032	produce
1032	machine
1033	guy
1034	argue
1035	who
1036	responsibility
1036	grow
1037	security
1037	rate
1038	capital
1039	yard
1039	four
1040	stock
1040	benefit
1041	miss
1042	policy
1042	money
1043	look
1043	personal
1044	environmental
1045	prevent
1045	pressure
1046	claim
1047	me
1048	sister
1048	although
1049	American
1050	forward
1051	system
1051	discussion
1052	cup
1052	west
1053	garden
1053	high
1054	charge
1054	wall
1055	she
1056	challenge
1056	likely
1057	run
1058	big
1059	fact
1060	stay
1060	make
1061	game
1061	between
1062	Democrat
1063	table
1064	trouble
1064	live
1065	now
1065	six
1066	card
1066	hotel
1067	quickly
1068	part
1069	go
1070	economy
1071	society
1072	wait
1072	which
1073	friend
1074	various
1074	whom
1075	condition
1076	ground
1076	somebody
1077	deep
1077	each
1078	issue
1078	save
1079	cup
1079	language
1080	account
1080	believe
1081	wonder
1082	professional
1083	fast
1084	institution
1084	study
1085	sort
1085	act
1086	American
1087	or
1087	central
1088	language
1089	large
1089	any
1090	must
1090	end
1091	leg
1092	although
1093	avoid
1094	minute
1095	kitchen
1095	call
1096	reduce
1096	institution
1097	husband
1098	cell
1098	if
1099	turn
1099	system
1100	choose
1100	reduce
1101	situation
1102	defense
1103	Mr
1104	authority
1105	job
1105	power
1106	crime
1106	unit
1107	issue
1107	eye
1108	state
1109	value
1110	in
1110	fish
1111	board
1112	none
1113	describe
1113	push
1114	can
1115	amount
1116	leg
1117	challenge
1117	form
1118	according
1119	work
1119	air
1120	quality
1121	federal
1121	fight
1122	economic
1122	rest
1123	success
1123	somebody
1124	care
1125	every
1126	go
1126	Mrs
1127	per
1127	compare
1128	nature
1128	material
1129	adult
1130	sense
1131	recent
1131	wonder
1132	entire
1132	learn
1133	suddenly
1133	teach
1134	open
1134	trip
1135	long
1136	draw
1136	others
1137	southern
1138	charge
1139	assume
1140	no
1140	drug
1141	down
1142	begin
1143	blood
1143	country
1144	beat
1144	do
1145	material
1145	appear
1146	decade
1146	few
1147	seem
1147	customer
1148	sing
1148	live
1149	may
1149	buy
1150	quickly
1151	eight
1151	inside
1152	top
1153	southern
1154	actually
1155	wife
1155	per
1156	five
1157	computer
1157	table
1158	power
1158	respond
1159	material
1159	another
1160	structure
1160	color
1161	church
1161	organization
1162	arm
1163	administration
1163	but
1164	relate
1165	thought
1166	western
1166	bag
1167	computer
1167	relate
1168	quickly
1168	fill
1169	score
1170	evening
1171	let
1171	or
1172	trade
1172	check
1173	run
1174	middle
1175	wind
1175	least
1176	win
1177	study
1178	lose
1178	recognize
1179	would
1180	task
1180	rest
1181	the
1181	marriage
1182	first
1183	painting
1184	nothing
1185	enjoy
1185	month
1186	way
1187	marriage
1188	ball
1188	itself
1189	politics
1189	continue
1190	development
1190	two
1191	land
1191	local
1192	instead
1193	deal
1194	land
1195	growth
1196	serve
1196	talk
1197	pick
1197	computer
1198	about
1198	say
1199	remember
1200	join
1200	consider
1201	movie
1202	security
1202	word
1203	however
1203	learn
1204	yeah
1205	talk
1205	draw
1206	science
1207	visit
1207	run
1208	responsibility
1209	determine
1210	difference
1211	piece
1211	central
1212	fund
1212	letter
1213	record
1213	major
1214	future
1215	tax
1216	carry
1216	include
1217	large
1218	matter
1219	attention
1220	or
1221	improve
1222	task
1222	still
1223	stand
1224	commercial
1224	wonder
1225	everything
1225	change
1226	Mr
1226	information
1227	party
1227	network
1228	give
1229	of
1230	hope
1231	minute
1232	professional
1233	coach
1234	strategy
1235	phone
1236	speak
1236	detail
1237	us
1237	compare
1238	painting
1239	full
1240	gun
1241	fire
1241	personal
1242	move
1243	light
1243	control
1244	guess
1245	wife
1246	scene
1247	ok
1248	item
1249	manager
1250	election
1251	southern
1251	result
1252	week
1252	music
1253	great
1253	manager
1254	service
1254	body
1255	benefit
1256	family
1256	federal
1257	phone
1258	compare
1259	already
1259	ready
1260	certain
1260	join
1261	hot
1262	drug
1263	hair
1264	beyond
1265	region
1266	study
1266	avoid
1267	edge
1268	unit
1268	sister
1269	lay
1270	law
1270	management
1271	kind
1272	deal
1272	base
1273	still
1273	guy
1274	know
1274	author
1275	risk
1276	response
1276	after
1277	wife
1278	yourself
1278	story
1279	picture
1279	relationship
1280	language
1280	back
1281	pressure
1282	industry
1282	Democrat
1283	pattern
1284	have
1285	small
1285	environment
1286	speak
1287	even
1287	agreement
1288	behavior
1288	such
1289	brother
1290	nearly
1291	agency
1291	adult
1292	likely
1293	various
1293	exactly
1294	recent
1294	today
1295	sense
1296	matter
1297	growth
1298	now
1299	support
1300	thing
1301	well
1301	popular
1302	already
1302	your
1303	bar
1304	car
1304	body
1305	face
1306	word
1307	player
1307	of
1308	production
1309	term
1310	leader
1310	skill
1311	ready
1311	price
1312	boy
1312	leave
1313	decision
1313	break
1314	region
1314	upon
1315	pressure
1315	phone
1316	difference
1317	along
1317	role
1318	space
1318	piece
1319	thank
1320	send
1320	energy
1321	education
1321	century
1322	of
1323	home
1324	box
1324	control
1325	control
1325	back
1326	check
1327	here
1328	none
1329	subject
1329	born
1330	human
1330	trial
1331	human
1332	money
1332	four
1333	authority
1334	pass
1334	often
1335	official
1335	pressure
1336	speech
1336	easy
1337	thousand
1337	future
1338	present
1338	politics
1339	risk
1339	century
1340	write
1340	nor
1341	science
1341	feeling
1342	respond
1342	government
1343	meeting
1343	election
1344	simply
1344	local
1345	light
1346	region
1346	before
1347	attention
1348	I
1348	message
1349	law
1349	they
1350	mention
1350	question
1351	opportunity
1351	maintain
1352	education
1352	cultural
1353	save
1353	now
1354	dark
1354	common
1355	or
1355	major
1356	keep
1356	his
1357	writer
1358	threat
1359	like
1360	likely
1361	recognize
1362	very
1363	another
1363	network
1364	myself
1364	such
1365	amount
1365	next
1366	thus
1366	across
1367	hospital
1367	along
1368	rate
1369	spring
1370	per
1371	argue
1372	trip
1372	Democrat
1373	image
1373	me
1374	charge
1374	behavior
1375	program
1376	author
1376	development
1377	side
1378	keep
1379	per
1380	almost
1381	group
1381	increase
1382	far
1382	cover
1383	hour
1384	sign
1384	care
1385	sound
1385	news
1386	piece
1387	such
1387	poor
1388	arrive
1388	north
1389	either
1390	image
1390	keep
1391	boy
1391	decade
1392	themselves
1393	impact
1394	face
1395	maybe
1396	explain
1397	former
1397	pick
1398	beautiful
1398	condition
1399	drug
1399	magazine
1400	specific
1400	necessary
1401	card
1401	either
1402	change
1403	pass
1403	level
1404	voice
1404	time
1405	college
1406	deep
1406	professional
1407	quite
1408	feeling
1409	then
1409	floor
1410	and
1410	too
1411	arrive
1412	sing
1412	tree
1413	us
1414	remember
1415	politics
1416	reflect
1417	finally
1418	training
1419	challenge
1420	me
1420	suggest
1421	nor
1421	economy
1422	most
1423	mission
1424	star
1424	talk
1425	arrive
1426	win
1427	main
1427	check
1428	doctor
1429	add
1430	whose
1431	together
1432	remember
1432	so
1433	bar
1433	now
1434	employee
1435	police
1436	work
1436	bar
1437	war
1437	religious
1438	president
1439	wide
1440	knowledge
1440	safe
1441	recently
1441	despite
1442	table
1442	term
1443	heart
1443	however
1444	technology
1445	pull
1445	tax
1446	ok
1447	nor
1448	represent
1449	worker
1449	teacher
1450	add
1451	particularly
1451	explain
1452	edge
1452	experience
1453	couple
1453	outside
1454	rise
1454	protect
1455	none
1456	enter
1456	team
1457	turn
1458	wind
1458	catch
1459	later
1460	with
1461	act
1462	art
1462	understand
1463	who
1464	price
1464	report
1465	professional
1466	behind
1466	despite
1467	western
1468	business
1468	bring
1469	dark
1469	take
1470	difference
1471	late
1472	operation
1472	western
1473	help
1473	project
1474	research
1475	affect
1475	officer
1476	father
1476	dinner
1477	shake
1477	garden
1478	than
1478	professional
1479	quality
1479	six
1480	third
1481	middle
1481	explain
1482	into
1482	citizen
1483	expert
1483	unit
1484	quality
1485	spring
1486	race
1487	occur
1488	great
1488	analysis
1489	make
1489	edge
1490	hand
1490	perform
1491	card
1491	it
1492	certain
1492	staff
1493	side
1493	trade
1494	and
1494	protect
1495	fight
1495	director
1496	radio
1497	hope
1498	serve
1499	summer
1499	itself
1500	off
1500	peace
1501	only
1501	relationship
1502	discuss
1503	Mrs
1504	movement
1505	I
1506	suggest
1506	know
1507	line
1508	strong
1508	between
1509	plan
1509	hair
1510	finally
1510	free
1511	early
1511	three
1512	American
1513	customer
1514	customer
1514	police
1515	value
1515	health
1516	operation
1517	church
1518	large
1518	difference
1519	sign
1520	add
1521	claim
1522	similar
1523	weight
1524	newspaper
1525	trade
1525	term
1526	ever
1527	force
1528	gas
1528	reduce
1529	professor
1530	season
1530	talk
1531	energy
1531	agency
1532	even
1533	product
1533	crime
1534	brother
1534	also
1535	product
1535	little
1536	prove
1537	expert
1538	rise
1539	agree
1540	see
1540	hospital
1541	American
1541	much
1542	plant
1543	board
1543	easy
1544	president
1545	run
1546	experience
1546	between
1547	must
1547	partner
1548	drive
1548	listen
1549	form
1549	community
1550	family
1551	hair
1552	media
1552	theory
1553	plan
1554	station
1555	fire
1556	again
1557	last
1558	article
1558	tend
1559	impact
1559	computer
1560	make
1560	wind
1561	return
1562	note
1563	realize
1564	may
1565	visit
1566	commercial
1567	theory
1568	have
1569	employee
1570	fill
1570	wall
1571	turn
1572	reach
1573	black
1574	trade
1574	understand
1575	voice
1576	describe
1577	size
1577	each
1578	fire
1578	they
1579	agree
1579	recently
1580	will
1580	individual
1581	north
1581	century
1582	government
1583	tree
1583	against
1584	property
1585	area
1586	despite
1586	board
1587	firm
1587	great
1588	parent
1589	democratic
1590	thus
1590	occur
1591	religious
1592	dark
1592	animal
1593	responsibility
1593	finally
1594	travel
1594	can
1595	factor
1596	pick
1597	foot
1597	front
1598	discuss
1598	successful
1599	yard
1599	level
1600	industry
1600	position
1601	thousand
1601	call
1602	find
1603	whole
1603	push
1604	national
1604	become
1605	class
1605	school
1606	marriage
1607	send
1607	newspaper
1608	poor
1609	they
1610	ahead
1611	institution
1611	before
1612	today
1613	hair
1614	organization
1614	expert
1615	common
1616	human
1617	analysis
1617	win
1618	policy
1619	ball
1620	yet
1620	pattern
1621	idea
1621	force
1622	how
1622	imagine
1623	work
1624	computer
1625	drop
1626	public
1626	section
1627	animal
1628	money
1628	car
1629	as
1630	say
1631	myself
1631	very
1632	loss
1632	include
1633	after
1634	message
1635	baby
1635	blood
1636	sea
1636	land
1637	others
1637	station
1638	movie
1639	few
1640	fish
1640	research
1641	development
1642	discussion
1643	situation
1644	which
1644	company
1645	begin
1645	eight
1646	among
1647	somebody
1648	rich
1649	threat
1649	step
1650	up
1650	those
1651	discuss
1652	baby
1652	evening
1653	establish
1654	baby
1654	letter
1655	huge
1655	economy
1656	camera
1657	my
1657	police
1658	different
1658	rule
1659	decision
1659	nature
1660	evidence
1660	many
1661	off
1662	ten
1662	accept
1663	network
1663	course
1664	meeting
1665	pattern
1665	speech
1666	new
1666	study
1667	step
1667	risk
1668	hundred
1669	produce
1669	campaign
1670	owner
1670	successful
1671	today
1671	thought
1672	year
1672	behavior
1673	stock
1674	account
1675	return
1675	we
1676	good
1676	voice
1677	part
1678	media
1679	determine
1679	main
1680	too
1681	I
1681	structure
1682	population
1683	and
1683	interview
1684	write
1684	front
1685	lawyer
1685	money
1686	chair
1687	where
1687	individual
1688	open
1688	say
1689	address
1690	family
1690	finally
1691	once
1691	few
1692	Congress
1693	social
1694	huge
1694	top
1695	data
1696	like
1697	station
1697	hard
1698	fire
1699	them
1699	shoulder
1700	personal
1701	best
1702	training
1702	oil
1703	usually
1703	bank
1704	option
1705	authority
1706	special
1706	boy
1707	parent
1708	end
1709	main
1710	bit
1711	idea
1711	part
1712	program
1712	indicate
1713	nature
1713	himself
1714	less
1715	wonder
1716	woman
1717	police
1717	owner
1718	lay
1719	lawyer
1719	apply
1720	huge
1720	official
1721	family
1722	total
1722	ability
1723	pass
1724	will
1724	economic
1725	office
1726	that
1726	focus
1727	Republican
1728	very
1729	national
1730	second
1730	democratic
1731	recently
1732	thing
1732	kind
1733	career
1733	always
1734	expect
1735	party
1735	firm
1736	final
1737	music
1737	exactly
1738	place
1738	painting
1739	understand
1740	not
1740	month
1741	simple
1742	cultural
1743	court
1744	cell
1744	left
1745	strategy
1746	institution
1746	activity
1747	policy
1747	treat
1748	director
1748	use
1749	body
1749	middle
1750	offer
1750	quality
1751	training
1752	hear
1753	best
1754	lot
1755	amount
1755	Republican
1756	president
1757	energy
1758	letter
1759	use
1760	especially
1760	safe
1761	cut
1762	lead
1763	customer
1763	understand
1764	site
1765	bag
1766	side
1767	suddenly
1767	event
1768	surface
1768	fill
1769	run
1769	campaign
1770	natural
1770	voice
1771	near
1771	war
1772	really
1772	white
1773	thank
1773	child
1774	family
1774	market
1775	try
1776	these
1777	culture
1778	face
1778	concern
1779	these
1780	reach
1780	strategy
1781	wait
1782	discussion
1782	value
1783	reach
1783	property
1784	major
1785	item
1785	wall
1786	method
1787	boy
1787	station
1788	without
1789	clear
1789	simple
1790	whole
1791	development
1792	drive
1793	area
1793	dinner
1794	yet
1794	audience
1795	yeah
1795	year
1796	mean
1797	action
1798	window
1798	else
1799	case
1800	fine
1800	various
1801	own
1801	kid
1802	about
1803	defense
1804	matter
1804	institution
1805	go
1805	fill
1806	argue
1806	town
1807	region
1807	debate
1808	serve
1808	have
1809	now
1810	policy
1810	our
1811	major
1811	level
1812	civil
1813	its
1813	husband
1814	want
1814	action
1815	Congress
1816	themselves
1816	law
1817	science
1817	piece
1818	since
1819	million
1819	fire
1820	family
1820	season
1821	pretty
1821	say
1822	fall
1822	listen
1823	itself
1823	middle
1824	four
1825	religious
1825	body
1826	news
1827	final
1828	their
1829	month
1829	develop
1830	end
1830	answer
1831	feel
1832	very
1832	specific
1833	deal
1833	message
1834	interesting
1835	item
1836	clear
1837	section
1838	face
1839	industry
1839	sort
1840	effort
1840	knowledge
1841	chair
1842	sound
1843	myself
1844	act
1844	compare
1845	space
1846	young
1847	choice
1847	ball
1848	white
1848	see
1849	simple
1850	against
1850	member
1851	send
1851	court
1852	statement
1852	order
1853	clear
1854	resource
1855	record
1856	let
1857	never
1857	understand
1858	cup
1859	main
1859	rock
1860	west
1860	political
1861	total
1861	main
1862	significant
1862	free
1863	simply
1863	may
1864	heart
1864	point
1865	who
1865	agency
1866	wrong
1866	knowledge
1867	behind
1867	buy
1868	can
1868	area
1869	with
1870	station
1871	detail
1872	north
1872	outside
1873	ask
1873	paper
1874	talk
1875	where
1875	writer
1876	factor
1877	million
1878	ball
1879	idea
1879	customer
1880	bag
1881	question
1882	reduce
1883	know
1883	rock
1884	this
1884	read
1885	group
1885	indeed
1886	federal
1887	others
1888	save
1888	however
1889	get
1890	fight
1891	doctor
1892	research
1893	despite
1894	draw
1894	professional
1895	PM
1896	trouble
1897	name
1897	article
1898	soon
1899	citizen
1900	cost
1901	college
1902	wind
1903	necessary
1903	need
1904	range
1905	fine
1905	she
1906	piece
1907	feeling
1908	word
1909	good
1909	establish
1910	here
1910	little
1911	add
1912	feeling
1913	Congress
1914	particularly
1914	around
1915	from
1915	late
1916	mean
1916	prepare
1917	thus
1918	today
1919	often
1919	parent
1920	seat
1921	themselves
1922	occur
1922	federal
1923	soon
1924	bank
1924	bag
1925	understand
1926	quickly
1927	build
1927	level
1928	specific
1928	receive
1929	mouth
1929	bar
1930	federal
1930	road
1931	business
1932	town
1932	east
1933	various
1934	question
1934	difference
1935	recognize
1935	different
1936	raise
1936	already
1937	region
1938	majority
1938	reality
1939	laugh
1939	it
1940	strategy
1941	short
1941	risk
1942	factor
1942	blue
1943	Mr
1944	buy
1945	sea
1945	once
1946	perhaps
1946	happen
1947	think
1947	none
1948	upon
1949	area
1950	would
1951	term
1951	technology
1952	want
1952	hour
1953	wind
1953	community
1954	sing
1954	learn
1955	wear
1956	office
1956	fly
1957	value
1958	water
1958	standard
1959	decide
1960	charge
1960	imagine
1961	practice
1961	performance
1962	mission
1963	program
1964	middle
1965	seven
1966	number
1967	anyone
1968	discussion
1968	sign
1969	need
1970	cover
1971	notice
1971	story
1972	check
1973	safe
1974	short
1975	employee
1976	wife
1977	ready
1978	present
1978	take
1979	ago
1979	education
1980	tend
1980	fact
1981	huge
1981	nearly
1982	claim
1983	adult
1983	share
1984	role
1985	wish
1986	election
1986	short
1987	market
1988	three
1989	outside
1990	up
1990	gun
1991	eat
1991	ahead
1992	board
1993	treat
1993	dark
1994	area
1994	order
1995	one
1996	risk
1996	amount
1997	prove
1997	theory
1998	important
1998	weight
1999	economy
2000	example
2001	provide
2002	skill
2003	put
2003	write
2004	sing
2005	national
2005	issue
2006	often
2007	campaign
2007	move
2008	those
2008	personal
2009	democratic
2010	space
2011	force
2011	traditional
2012	hard
2013	risk
2014	class
2014	authority
2015	TV
2015	candidate
2016	imagine
2017	south
2018	line
2019	skin
2020	management
2020	to
2021	common
2021	reflect
2022	miss
2022	child
2023	foreign
2024	believe
2024	audience
2025	person
2025	sister
2026	truth
2027	chance
2027	better
2028	including
2029	central
2030	stand
2031	cell
2031	get
2032	can
2033	change
2033	throughout
2034	my
2035	establish
2036	forget
2037	level
2038	everything
2039	receive
2040	notice
2040	check
2041	myself
2041	home
2042	house
2042	art
2043	large
2043	go
2044	boy
2044	understand
2045	hold
2046	least
2046	nor
2047	thus
2047	natural
2048	stuff
2049	identify
2049	responsibility
2050	over
2050	individual
2051	result
2051	soon
2052	begin
2053	group
2054	finish
2054	professional
2055	contain
2056	save
2056	goal
2057	apply
2058	run
2058	company
2059	discussion
2060	fill
2061	choice
2061	ago
2062	seven
2062	community
2063	each
2064	certainly
2064	eight
2065	now
2066	thought
2066	real
2067	simply
2068	yet
2069	poor
2070	film
2071	page
2071	others
2072	likely
2073	enough
2074	against
2075	thus
2076	seven
2076	teach
2077	action
2077	treat
2078	five
2079	can
2079	her
2080	outside
2081	important
2081	heart
2082	cost
2082	stop
2083	nothing
2083	usually
2084	hotel
2085	against
2085	challenge
2086	choice
2087	responsibility
2087	like
2088	experience
2088	member
2089	market
2090	break
2091	maintain
2091	better
2092	poor
2092	choice
2093	list
2093	area
2094	apply
2094	girl
2095	event
2095	his
2096	lose
2097	increase
2098	land
2099	year
2099	total
2100	fire
\.


--
-- Data for Name: relation_20; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_20 (supportagent_id, queue) FROM stdin;
701	traditional
702	to
703	than
704	answer
705	tree
706	under
707	get
708	plant
709	every
710	force
711	notice
712	show
713	know
714	although
715	probably
716	behind
717	five
718	material
719	song
720	assume
721	first
722	not
723	character
724	impact
725	imagine
726	human
727	scene
728	above
729	finish
730	question
731	enter
732	marriage
733	trip
734	price
735	fear
736	owner
737	more
738	travel
739	assume
740	second
741	majority
742	game
743	end
744	else
745	there
746	town
747	most
748	safe
749	music
750	notice
751	practice
752	rich
753	cup
754	hundred
755	report
756	out
757	international
758	manage
759	also
760	management
761	number
762	include
763	arrive
764	instead
765	exist
766	may
767	must
768	too
769	result
770	culture
771	law
772	century
773	tonight
774	call
775	by
776	carry
777	information
778	more
779	lawyer
780	example
781	sort
782	voice
783	page
784	knowledge
785	force
786	middle
787	professor
788	from
789	fall
790	baby
791	cup
792	yet
793	source
794	to
795	someone
796	card
797	trade
798	Democrat
799	reality
800	increase
\.


--
-- Data for Name: relation_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_21 (fulfillmentassociate_id, shift) FROM stdin;
801	modern
802	feeling
803	goal
804	bit
805	yet
806	part
807	until
808	safe
809	bank
810	accept
811	kid
812	watch
813	course
814	walk
815	picture
816	everyone
817	assume
818	interesting
819	far
820	spend
821	such
822	probably
823	body
824	who
825	fire
826	single
827	long
828	late
829	away
830	soon
831	citizen
832	recognize
833	everything
834	can
835	of
836	mother
837	fact
838	garden
839	car
840	though
841	away
842	ask
843	remain
844	morning
845	yes
846	hold
847	policy
848	well
849	follow
850	actually
851	notice
852	food
853	little
854	week
855	wall
856	however
857	often
858	sort
859	suffer
860	consider
861	nothing
862	want
863	pick
864	turn
865	develop
866	since
867	wonder
868	pay
869	realize
870	middle
871	three
872	though
873	model
874	agency
875	section
876	pretty
877	international
878	above
879	spend
880	difficult
881	when
882	take
883	industry
884	then
885	food
886	task
887	eight
888	act
889	outside
890	woman
891	deep
892	sure
893	single
894	need
895	quality
896	kind
897	the
898	issue
899	win
900	try
\.


--
-- Data for Name: relation_22; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_22 (categorymanager_id, department) FROM stdin;
901	start
902	media
903	plan
904	various
905	fly
906	eye
907	call
908	when
909	any
910	pattern
911	event
912	sense
913	over
914	nation
915	room
916	to
917	manage
918	lose
919	of
920	maintain
921	condition
922	amount
923	future
924	five
925	recognize
926	million
927	Mr
928	art
929	believe
930	sea
931	different
932	future
933	now
934	read
935	nature
936	seek
937	join
938	low
939	brother
940	top
941	force
942	painting
943	director
944	language
945	nation
946	would
947	size
948	partner
949	color
950	force
951	need
952	in
953	size
954	interview
955	expert
956	perhaps
957	then
958	measure
959	impact
960	whom
961	view
962	small
963	person
964	face
965	staff
966	personal
967	hour
968	project
969	able
970	tend
971	everybody
972	skill
973	forget
974	hot
975	sound
976	always
977	view
978	better
979	piece
980	product
981	happen
982	read
983	man
984	both
985	well
986	either
987	effect
988	officer
989	research
990	evidence
991	doctor
992	likely
993	deal
994	can
995	care
996	section
997	fish
998	service
999	simply
1000	successful
\.


--
-- Data for Name: relation_23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_23 (tag_id, tag_name) FROM stdin;
1	rest
2	form
3	similar
4	old
5	person
6	quite
7	foot
8	weight
9	decision
10	provide
11	despite
12	send
13	recognize
14	red
15	sort
16	growth
17	heavy
18	go
19	century
20	especially
21	general
22	piece
23	structure
24	decide
25	ground
26	try
27	what
28	law
29	project
30	inside
31	as
32	toward
33	course
34	fill
35	myself
36	friend
37	approach
38	receive
39	article
40	beyond
41	concern
42	talk
43	understand
44	figure
45	western
46	purpose
47	budget
48	chair
49	level
50	stop
51	bank
52	month
53	relationship
54	court
55	leave
56	pattern
57	training
58	worker
59	structure
60	become
61	probably
62	road
63	system
64	friend
65	base
66	key
67	improve
68	never
69	experience
70	individual
71	popular
72	middle
73	six
74	drive
75	early
76	end
77	bring
78	ago
79	south
80	produce
81	certainly
82	account
83	PM
84	support
85	reduce
86	space
87	true
88	speak
89	however
90	everybody
91	worry
92	measure
93	indicate
94	teach
95	protect
96	point
97	three
98	single
99	attack
100	white
\.


--
-- Data for Name: relation_24; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_24 (customer_id, address_id, kind, line1, city, state, country, postal_code) FROM stdin;
203	101	station	federal	East Josephchester	rather	again	daughter
376	758	middle	either	South Jonathanberg	task	pick	this
216	906	along	first	Woodardview	minute	arm	pay
164	325	leave	bit	Mckinneyhaven	film	TV	player
328	812	reduce	image	East Nicholaschester	over	medical	TV
267	206	structure	pull	Andersonshire	so	set	partner
170	357	simply	probably	West Toddbury	sister	box	wonder
308	749	write	work	South Davidburgh	skill	court	another
372	164	produce	picture	Lake Joseph	interest	off	expert
113	857	think	however	Caitlinshire	most	radio	majority
127	712	shake	garden	Billyside	it	that	mouth
287	403	able	several	East Destiny	past	decide	bit
386	383	field	despite	South Rileystad	determine	common	what
356	272	president	then	New Robert	which	room	around
300	991	build	direction	Danatown	threat	very	human
382	120	teacher	civil	Fitzgeraldfurt	reason	including	range
382	629	general	television	Lake Eric	executive	agreement	customer
285	753	themselves	either	Marshhaven	once	report	throughout
196	152	sometimes	former	Timothyfurt	choose	election	need
342	836	gas	environmental	Seanfort	turn	magazine	practice
290	965	art	much	East Mindymouth	although	special	executive
171	539	establish	social	Blakeshire	future	hold	improve
335	581	life	couple	South Meganchester	sort	board	hospital
326	230	paper	if	Edwardsstad	detail	financial	federal
139	212	within	maybe	East Amyport	heart	trip	glass
329	696	professor	west	Lake Tanya	stuff	should	last
339	670	customer	five	Olsonside	prevent	allow	dinner
152	323	why	fast	Tracymouth	cultural	window	many
288	378	fire	forget	Bowmanton	ten	customer	include
359	5	investment	main	Whitefurt	agreement	game	could
207	544	number	direction	Nicholasfurt	prepare	listen	help
396	774	according	bad	Mckinneymouth	data	consumer	a
110	291	expect	outside	Lake Joseph	affect	southern	decade
382	149	national	perform	North Brenda	media	college	wear
266	698	yet	similar	Nicholeview	water	focus	attack
193	120	ability	easy	Rasmussenfort	campaign	almost	TV
244	589	exist	around	Port Jamesmouth	rest	perform	stand
195	637	indicate	plant	Davidton	couple	something	thought
246	782	her	human	Lake Heather	office	animal	defense
254	836	deal	join	Johnsonmouth	house	group	outside
293	230	society	already	North Lisa	traditional	himself	so
385	861	knowledge	floor	South Michelle	middle	discussion	talk
229	226	all	finish	South Audrey	west	throw	rule
390	422	recently	hear	New Darlene	assume	yes	identify
113	800	inside	interest	Lake Savannah	we	huge	against
181	260	move	practice	West Parker	then	call	drop
125	400	include	ready	Burchbury	usually	contain	police
207	938	reason	hold	Ritterberg	high	ok	result
173	948	data	southern	North Anitafurt	sing	wish	well
377	772	almost	I	Williamsside	news	Mrs	left
136	725	wide	floor	Davishaven	far	board	crime
194	396	law	item	Monicafurt	within	argue	need
237	367	student	large	Evanston	writer	which	commercial
198	917	turn	herself	Davidberg	any	production	time
255	359	ten	claim	West Stevenhaven	firm	news	your
129	290	maybe	today	South Phillipmouth	for	letter	green
260	433	action	edge	Kellihaven	realize	response	alone
348	806	adult	also	Port Laurie	this	kitchen	herself
147	444	week	week	Duncanmouth	race	choice	high
136	148	young	same	Michaelshire	finish	lead	three
297	810	two	community	Lisatown	industry	home	during
392	611	type	ground	New Gregory	professor	cut	media
297	410	marriage	campaign	Lake Brooke	everything	Mr	left
272	531	manage	message	Port Jonathan	husband	poor	science
364	33	significant	expert	Andersonborough	then	TV	civil
287	539	easy	door	Johnsonside	sort	style	yard
255	79	he	employee	Banksview	any	inside	discussion
308	15	these	support	East Shannonview	certainly	positive	do
149	807	organization	on	Chadside	image	memory	party
361	482	behavior	guess	Smithport	level	beyond	Mrs
116	177	that	fly	Port Tonya	power	form	watch
370	744	laugh	treatment	Andreafurt	impact	scientist	generation
325	864	authority	current	New Elizabethville	hot	they	structure
217	794	large	action	West Lorichester	building	myself	although
351	862	bad	report	Claytown	former	effort	onto
244	26	recently	impact	Carlosfort	student	race	oil
218	6	note	newspaper	New Melissa	writer	throw	gun
129	226	main	bank	Stricklandborough	represent	throughout	feel
364	323	than	number	Princehaven	politics	heart	south
365	99	within	always	Haleshire	change	tax	agreement
268	296	forget	machine	South Alexandriaport	mission	free	old
336	977	style	focus	Edwardsport	blood	movie	face
186	80	computer	public	Lake Rogershire	capital	still	nothing
106	889	scientist	police	North Cheyennehaven	participant	military	discuss
363	482	eight	nature	North Timothy	baby	outside	wonder
365	180	available	fact	South Marcus	room	set	high
191	319	those	save	Kathleentown	often	growth	on
222	289	keep	argue	Port Leslieside	use	director	mention
117	18	heavy	place	West Katrinaborough	listen	miss	structure
177	568	education	sign	Timton	despite	minute	pull
309	142	parent	fear	Spencerview	only	difficult	sing
250	744	energy	garden	North Danielborough	situation	mention	certain
175	596	sometimes	possible	Wardbury	my	will	when
133	780	admit	catch	Lake Ryan	television	place	song
335	952	bad	of	Lake Deborah	win	positive	out
372	102	note	piece	Vincentmouth	never	certainly	increase
254	366	tonight	audience	Morrisonton	general	from	itself
116	747	some	several	Johnsonstad	somebody	break	suffer
128	444	partner	must	Velezborough	leg	matter	size
398	38	watch	team	East Williammouth	state	around	attack
\.


--
-- Data for Name: relation_25; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_25 (customer_id, payment_method_id, brand, last4, exp_month, exp_year, is_default) FROM stdin;
177	348	pick	six	8	980	door
259	195	prove	father	398	242	civil
351	490	nor	successful	445	698	thing
385	405	fly	factor	452	467	medical
124	992	cell	argue	88	810	total
352	493	someone	well	299	498	certainly
234	159	month	land	690	96	maintain
253	999	carry	nothing	696	670	cup
172	408	cost	attack	781	183	race
391	795	blood	language	963	188	hit
236	877	send	laugh	956	973	special
120	535	either	father	942	18	bed
317	809	ready	five	790	446	see
191	187	walk	turn	533	833	shake
247	841	draw	fall	470	51	charge
311	880	these	term	377	337	kitchen
257	146	audience	himself	239	648	performance
206	496	provide	effect	170	504	major
345	208	open	involve	584	268	prove
189	266	growth	message	465	48	this
354	336	end	ball	77	494	hair
128	496	worker	but	50	374	street
139	500	politics	democratic	371	19	expect
377	940	effect	yourself	202	708	middle
279	74	pressure	recent	931	79	four
360	872	current	along	417	421	agreement
361	271	song	often	702	695	on
165	683	onto	sea	277	127	good
398	231	manage	exist	912	756	notice
243	486	keep	itself	808	142	why
292	575	may	course	896	528	cold
178	362	throw	safe	245	290	family
248	774	physical	become	778	166	medical
126	377	live	occur	778	821	idea
127	222	power	society	406	49	catch
349	266	among	movement	3	342	authority
295	770	research	smile	291	800	once
395	297	area	speech	209	306	leave
383	970	might	talk	710	888	yet
152	924	gas	west	291	905	study
332	749	tend	help	455	975	government
311	794	defense	employee	218	210	away
354	392	we	debate	39	818	sing
202	571	do	after	656	115	fly
392	397	science	loss	355	787	ability
316	688	green	yes	69	754	form
218	235	low	hour	649	538	need
185	745	fund	official	383	801	per
112	718	training	sell	328	999	food
370	850	subject	past	559	305	itself
230	777	yeah	of	285	263	right
133	672	Mrs	space	386	610	world
190	399	bad	task	791	36	may
186	886	structure	choice	626	996	career
343	903	hotel	tree	40	540	national
321	262	bed	century	899	61	activity
395	697	spend	test	223	348	actually
133	286	care	may	985	771	energy
396	306	player	indeed	99	945	long
179	966	available	letter	533	699	entire
297	809	coach	party	169	959	although
166	455	yes	within	267	17	sure
118	573	whom	read	33	344	future
284	327	raise	miss	55	193	wide
114	486	cover	wear	235	489	ahead
187	675	if	most	909	669	kid
243	793	home	require	358	731	me
122	174	within	remember	734	603	Democrat
178	691	good	lawyer	908	359	response
256	878	watch	perhaps	339	71	many
309	52	tell	doctor	125	137	west
261	210	east	without	571	337	PM
272	478	work	beyond	388	319	performance
206	800	practice	leave	791	468	others
275	382	look	run	488	561	spring
140	642	past	call	490	687	member
128	979	word	character	858	413	develop
242	40	important	western	572	563	staff
382	664	able	above	134	335	program
150	852	top	benefit	423	3	save
379	126	school	person	63	978	think
380	256	soon	the	210	699	manage
227	758	she	would	658	392	store
350	754	situation	involve	540	756	leg
107	668	condition	about	972	700	two
222	139	senior	eat	48	891	matter
308	876	ground	occur	935	733	Republican
316	608	include	color	911	396	hard
365	356	into	happen	997	461	anything
389	39	condition	senior	829	42	air
263	86	treat	cell	890	763	skill
236	155	onto	brother	56	983	all
214	809	sure	edge	101	11	tell
110	790	look	marriage	914	325	key
325	562	there	health	538	936	baby
321	203	your	stop	475	463	resource
125	409	single	image	14	56	attention
354	210	involve	outside	296	707	ever
326	883	visit	commercial	280	327	economy
330	599	only	price	871	577	role
\.


--
-- Data for Name: relation_26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_26 (customer_id, updated_at) FROM stdin;
378	perform
238	nothing
335	edge
176	across
303	catch
113	set
282	break
198	loss
121	relate
275	field
190	study
314	rest
400	pattern
206	arm
367	interest
395	exist
235	thus
123	skin
197	common
261	will
163	support
155	specific
322	special
146	although
234	happen
290	wide
360	condition
191	push
192	pay
361	budget
377	gas
317	size
186	night
397	model
258	develop
345	month
332	choose
106	myself
180	for
139	share
343	TV
185	material
299	lawyer
306	understand
291	entire
177	woman
300	upon
321	security
359	try
239	culture
319	relate
308	yet
388	consumer
302	wish
278	different
279	operation
134	claim
233	game
170	official
144	protect
136	two
273	certainly
375	else
229	worker
221	perform
307	example
160	hold
277	sometimes
268	prepare
135	account
223	capital
200	indicate
362	black
245	either
341	sister
247	hair
212	tell
382	capital
166	across
283	return
368	here
358	knowledge
143	government
141	another
333	treatment
254	glass
137	her
353	marriage
385	quality
171	beat
311	maintain
248	throw
349	resource
110	policy
344	very
257	yeah
342	land
120	run
380	body
205	individual
\.


--
-- Data for Name: relation_27; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_27 (customer_id, wishlist_id, wishlist_name) FROM stdin;
202	658	land
145	327	blood
263	947	special
391	729	former
321	567	get
239	99	consider
256	35	in
112	929	produce
358	53	reason
191	954	trial
227	363	contain
294	342	compare
129	334	him
205	660	for
134	38	total
167	520	less
229	414	police
256	818	part
117	669	soon
164	817	mention
251	678	system
379	393	tend
121	886	executive
253	149	president
354	393	among
315	877	finally
395	463	science
395	756	fight
180	487	onto
112	943	country
285	127	challenge
227	225	forget
263	63	leave
145	377	organization
287	752	shake
317	603	perform
149	989	production
229	777	American
114	803	particular
140	381	collection
197	739	outside
191	922	thing
343	728	story
290	216	Mr
155	932	hold
314	475	sing
376	879	discussion
309	128	decade
292	902	right
290	55	everything
249	736	include
124	528	sense
255	680	enter
298	791	fact
107	227	follow
108	80	put
124	382	measure
125	458	every
181	929	table
116	621	deep
254	822	pay
127	12	recognize
179	673	despite
122	38	place
231	413	walk
229	870	investment
132	434	hard
375	60	program
128	512	security
335	941	network
120	673	husband
150	714	positive
287	982	individual
193	600	early
247	131	research
365	960	compare
242	962	new
104	246	standard
226	255	hit
375	632	shoulder
355	677	idea
309	904	modern
390	453	new
298	517	major
307	127	explain
257	280	fill
117	642	Congress
115	647	drug
356	947	notice
328	129	drop
344	275	final
321	935	car
208	121	shoulder
224	795	bar
372	533	avoid
270	98	able
134	610	class
365	595	gas
333	65	local
316	894	resource
\.


--
-- Data for Name: relation_28; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_28 (customer_id, review_id, rating, title, body, created_at) FROM stdin;
353	675	419	town	animal	pay
355	171	859	population	fact	defense
296	872	668	but	might	own
349	256	177	return	PM	nothing
273	979	230	share	record	water
140	929	685	seek	president	reflect
145	936	380	dinner	expect	effect
206	591	349	these	brother	the
103	49	379	see	among	tell
323	322	783	manage	sure	realize
144	25	508	without	smile	team
386	532	79	arm	Republican	hospital
234	883	960	main	box	day
274	888	55	mean	clear	reason
126	952	93	benefit	catch	particular
391	714	804	imagine	me	protect
335	248	160	five	leave	who
331	529	750	require	month	style
386	408	503	side	friend	also
292	511	809	strong	decision	week
370	551	833	relationship	paper	everyone
113	204	284	behavior	set	company
105	452	573	sport	determine	energy
245	7	220	establish	size	add
385	624	86	local	new	professor
217	188	618	appear	dark	site
151	619	507	poor	cell	fact
400	660	235	toward	look	page
117	507	371	would	mother	end
127	244	23	better	why	reason
165	773	180	admit	stop	doctor
289	477	191	television	so	shake
193	235	953	somebody	dream	improve
264	49	413	hand	wish	window
165	42	720	follow	perform	significant
309	328	136	know	federal	adult
199	723	205	state	type	service
273	582	400	agreement	teacher	treatment
239	772	152	impact	girl	field
127	699	977	police	great	tree
334	906	742	executive	myself	upon
148	383	554	who	discover	thing
186	255	734	would	rest	senior
221	186	814	walk	such	relationship
381	270	564	letter	break	quality
265	523	959	operation	reflect	street
365	990	72	next	five	positive
167	508	149	discussion	course	bank
325	241	221	try	particular	travel
381	236	615	treatment	traditional	whatever
369	128	725	military	reflect	science
366	740	617	test	key	management
269	533	278	Republican	something	general
274	449	358	play	threat	medical
339	938	411	reflect	training	rock
223	471	761	just	avoid	magazine
161	269	446	human	treat	opportunity
365	36	686	anyone	outside	condition
385	308	954	purpose	decide	much
316	755	50	wrong	provide	thought
225	529	685	democratic	politics	head
301	662	956	item	across	message
336	214	926	claim	scene	care
254	370	499	must	design	worker
196	798	99	future	hospital	last
187	17	208	agent	school	their
298	834	359	property	space	nature
108	128	218	radio	raise	win
322	870	626	movement	too	material
294	815	98	feeling	admit	address
136	255	239	tonight	product	bring
202	356	30	real	garden	win
392	42	177	nature	agent	career
244	484	806	world	air	experience
298	550	300	girl	practice	show
219	259	677	may	simple	career
139	22	611	daughter	right	onto
317	897	785	attack	majority	serious
286	946	525	one	sport	right
272	424	949	school	cultural	bag
377	587	191	necessary	left	statement
150	460	339	rise	test	I
244	780	971	hotel	not	along
256	613	789	compare	do	whose
195	629	393	sport	work	write
227	359	97	edge	instead	spend
311	1000	462	improve	different	key
116	443	676	during	address	usually
297	701	62	field	environmental	receive
199	405	148	if	history	wear
319	366	861	safe	per	whether
230	759	374	modern	direction	economy
369	887	314	treat	environment	maybe
310	951	34	morning	choose	especially
373	449	197	sign	scientist	west
353	881	867	recently	over	himself
204	496	56	through	east	person
120	57	379	grow	this	father
188	873	953	too	story	fly
345	433	290	friend	example	last
\.


--
-- Data for Name: relation_29; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_29 (custorder_id, placed_at, status) FROM stdin;
1	sometimes	financial
2	himself	sea
3	understand	indeed
4	sell	perform
5	even	concern
6	marriage	leader
7	government	people
8	add	figure
9	laugh	institution
10	kitchen	lead
11	admit	debate
12	indicate	dream
13	director	ok
14	himself	nor
15	answer	determine
16	each	training
17	there	perform
18	huge	pretty
19	sense	as
20	within	discuss
21	fire	watch
22	case	chair
23	allow	seem
24	program	skill
25	course	huge
26	my	rise
27	inside	action
28	man	billion
29	strategy	report
30	surface	generation
31	television	factor
32	relationship	conference
33	state	method
34	instead	charge
35	quickly	rather
36	feeling	Democrat
37	rest	upon
38	Democrat	sound
39	until	its
40	present	foot
41	often	accept
42	other	despite
43	watch	rich
44	despite	also
45	likely	catch
46	each	sound
47	may	mind
48	information	against
49	between	range
50	pull	standard
51	section	who
52	shake	commercial
53	appear	range
54	always	face
55	series	seek
56	word	its
57	beyond	pull
58	measure	pull
59	attack	western
60	thought	tax
61	clear	indeed
62	most	moment
63	network	material
64	but	avoid
65	citizen	institution
66	agency	and
67	individual	food
68	deep	through
69	start	president
70	wish	hear
71	lead	style
72	focus	community
73	eight	charge
74	seat	her
75	item	activity
76	soldier	war
77	whole	music
78	describe	window
79	either	everything
80	when	yet
81	husband	there
82	chair	send
83	data	determine
84	home	work
85	admit	speech
86	player	activity
87	be	term
88	major	look
89	base	leave
90	center	seat
91	religious	any
92	indicate	several
93	look	management
94	mind	everybody
95	step	science
96	computer	identify
97	its	short
98	follow	exist
99	lay	even
100	study	character
\.


--
-- Data for Name: relation_3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_3 (physicalproduct_id, dimensions, energy_rating, role, warranty_years) FROM stdin;
101	rate	\N	physicalproduct	\N
102	risk	\N	physicalproduct	\N
103	modern	\N	physicalproduct	\N
104	director	\N	physicalproduct	\N
105	stop	\N	physicalproduct	\N
106	spring	\N	physicalproduct	\N
107	anything	\N	physicalproduct	\N
108	city	\N	physicalproduct	\N
109	again	\N	physicalproduct	\N
110	believe	\N	physicalproduct	\N
111	range	\N	physicalproduct	\N
112	open	\N	physicalproduct	\N
113	first	\N	physicalproduct	\N
114	few	\N	physicalproduct	\N
115	country	\N	physicalproduct	\N
116	standard	\N	physicalproduct	\N
117	rule	\N	physicalproduct	\N
118	use	\N	physicalproduct	\N
119	bank	\N	physicalproduct	\N
120	alone	\N	physicalproduct	\N
121	seat	\N	physicalproduct	\N
122	information	\N	physicalproduct	\N
123	cause	\N	physicalproduct	\N
124	perhaps	\N	physicalproduct	\N
125	market	\N	physicalproduct	\N
126	international	\N	physicalproduct	\N
127	must	\N	physicalproduct	\N
128	rich	\N	physicalproduct	\N
129	who	\N	physicalproduct	\N
130	speak	\N	physicalproduct	\N
131	visit	\N	physicalproduct	\N
132	structure	\N	physicalproduct	\N
133	fish	\N	physicalproduct	\N
134	step	\N	physicalproduct	\N
135	time	\N	physicalproduct	\N
136	spring	\N	physicalproduct	\N
137	civil	\N	physicalproduct	\N
138	minute	\N	physicalproduct	\N
139	thus	\N	physicalproduct	\N
140	ahead	\N	physicalproduct	\N
141	police	\N	physicalproduct	\N
142	peace	\N	physicalproduct	\N
143	media	\N	physicalproduct	\N
144	type	\N	physicalproduct	\N
145	doctor	\N	physicalproduct	\N
146	much	\N	physicalproduct	\N
147	that	\N	physicalproduct	\N
148	upon	\N	physicalproduct	\N
149	three	\N	physicalproduct	\N
150	policy	\N	physicalproduct	\N
151	a	\N	physicalproduct	\N
152	list	\N	physicalproduct	\N
153	half	\N	physicalproduct	\N
154	hear	\N	physicalproduct	\N
155	particular	\N	physicalproduct	\N
156	cover	\N	physicalproduct	\N
157	education	\N	physicalproduct	\N
158	about	\N	physicalproduct	\N
159	likely	\N	physicalproduct	\N
160	around	\N	physicalproduct	\N
161	drug	\N	physicalproduct	\N
162	material	\N	physicalproduct	\N
163	cut	\N	physicalproduct	\N
164	management	\N	physicalproduct	\N
165	experience	\N	physicalproduct	\N
166	important	\N	physicalproduct	\N
167	success	\N	physicalproduct	\N
168	market	\N	physicalproduct	\N
169	reveal	\N	physicalproduct	\N
170	everyone	\N	physicalproduct	\N
171	big	\N	physicalproduct	\N
172	seek	\N	physicalproduct	\N
173	time	\N	physicalproduct	\N
174	until	\N	physicalproduct	\N
175	newspaper	\N	physicalproduct	\N
176	somebody	\N	physicalproduct	\N
177	century	\N	physicalproduct	\N
178	who	\N	physicalproduct	\N
179	us	\N	physicalproduct	\N
180	laugh	\N	physicalproduct	\N
181	pick	\N	physicalproduct	\N
182	visit	\N	physicalproduct	\N
183	letter	\N	physicalproduct	\N
184	service	\N	physicalproduct	\N
185	many	\N	physicalproduct	\N
186	radio	\N	physicalproduct	\N
187	pick	\N	physicalproduct	\N
188	card	\N	physicalproduct	\N
189	magazine	\N	physicalproduct	\N
190	true	\N	physicalproduct	\N
191	list	\N	physicalproduct	\N
192	main	\N	physicalproduct	\N
193	fear	\N	physicalproduct	\N
194	leader	\N	physicalproduct	\N
195	organization	\N	physicalproduct	\N
196	later	\N	physicalproduct	\N
197	event	\N	physicalproduct	\N
198	today	\N	physicalproduct	\N
199	who	\N	physicalproduct	\N
200	free	\N	physicalproduct	\N
301	pattern	\N	electronics	\N
302	but	\N	electronics	\N
303	use	\N	electronics	\N
304	break	\N	electronics	\N
305	law	\N	electronics	\N
306	billion	\N	electronics	\N
307	huge	\N	electronics	\N
308	certainly	\N	electronics	\N
309	not	\N	electronics	\N
310	center	\N	electronics	\N
311	sound	\N	electronics	\N
312	everybody	\N	electronics	\N
313	music	\N	electronics	\N
314	by	\N	electronics	\N
315	impact	\N	electronics	\N
316	military	\N	electronics	\N
317	in	\N	electronics	\N
318	skill	\N	electronics	\N
319	huge	\N	electronics	\N
320	security	\N	electronics	\N
321	foreign	\N	electronics	\N
322	ago	\N	electronics	\N
323	vote	\N	electronics	\N
324	himself	\N	electronics	\N
325	loss	\N	electronics	\N
326	case	\N	electronics	\N
327	approach	\N	electronics	\N
328	car	\N	electronics	\N
329	up	\N	electronics	\N
330	keep	\N	electronics	\N
331	throughout	\N	electronics	\N
332	industry	\N	electronics	\N
333	thank	\N	electronics	\N
334	teach	\N	electronics	\N
335	building	\N	electronics	\N
336	white	\N	electronics	\N
337	their	\N	electronics	\N
338	television	\N	electronics	\N
339	possible	\N	electronics	\N
340	which	\N	electronics	\N
341	team	\N	electronics	\N
342	dog	\N	electronics	\N
343	thus	\N	electronics	\N
344	popular	\N	electronics	\N
345	age	\N	electronics	\N
346	stop	\N	electronics	\N
347	which	\N	electronics	\N
348	hair	\N	electronics	\N
349	alone	\N	electronics	\N
350	pay	\N	electronics	\N
351	beat	\N	electronics	\N
352	hold	\N	electronics	\N
353	speech	\N	electronics	\N
354	structure	\N	electronics	\N
355	word	\N	electronics	\N
356	think	\N	electronics	\N
357	writer	\N	electronics	\N
358	apply	\N	electronics	\N
359	boy	\N	electronics	\N
360	government	\N	electronics	\N
361	these	\N	electronics	\N
362	finish	\N	electronics	\N
363	east	\N	electronics	\N
364	industry	\N	electronics	\N
365	research	\N	electronics	\N
366	year	\N	electronics	\N
367	politics	\N	electronics	\N
368	community	\N	electronics	\N
369	account	\N	electronics	\N
370	stop	\N	electronics	\N
371	some	\N	electronics	\N
372	trouble	\N	electronics	\N
373	help	\N	electronics	\N
374	leader	\N	electronics	\N
375	successful	\N	electronics	\N
376	front	\N	electronics	\N
377	site	\N	electronics	\N
378	benefit	\N	electronics	\N
379	difference	\N	electronics	\N
380	state	\N	electronics	\N
381	power	\N	electronics	\N
382	current	\N	electronics	\N
383	prove	\N	electronics	\N
384	our	\N	electronics	\N
385	necessary	\N	electronics	\N
386	clearly	\N	electronics	\N
387	us	\N	electronics	\N
388	market	\N	electronics	\N
389	fund	\N	electronics	\N
390	assume	\N	electronics	\N
391	production	\N	electronics	\N
392	person	\N	electronics	\N
393	high	\N	electronics	\N
394	be	\N	electronics	\N
395	within	\N	electronics	\N
396	born	\N	electronics	\N
397	at	\N	electronics	\N
398	office	\N	electronics	\N
399	debate	\N	electronics	\N
400	husband	\N	electronics	\N
401	war	\N	computer	\N
402	artist	\N	computer	\N
403	western	\N	computer	\N
404	cut	\N	computer	\N
405	course	\N	computer	\N
406	successful	\N	computer	\N
407	save	\N	computer	\N
408	discuss	\N	computer	\N
409	mission	\N	computer	\N
410	later	\N	computer	\N
411	factor	\N	computer	\N
412	indeed	\N	computer	\N
413	ten	\N	computer	\N
414	project	\N	computer	\N
415	last	\N	computer	\N
416	measure	\N	computer	\N
417	camera	\N	computer	\N
418	behavior	\N	computer	\N
419	save	\N	computer	\N
420	design	\N	computer	\N
421	six	\N	computer	\N
422	particularly	\N	computer	\N
423	discussion	\N	computer	\N
424	represent	\N	computer	\N
425	call	\N	computer	\N
426	life	\N	computer	\N
427	lawyer	\N	computer	\N
428	get	\N	computer	\N
429	table	\N	computer	\N
430	order	\N	computer	\N
431	order	\N	computer	\N
432	scientist	\N	computer	\N
433	like	\N	computer	\N
434	practice	\N	computer	\N
435	head	\N	computer	\N
436	management	\N	computer	\N
437	truth	\N	computer	\N
438	close	\N	computer	\N
439	leave	\N	computer	\N
440	practice	\N	computer	\N
441	at	\N	computer	\N
442	necessary	\N	computer	\N
443	spring	\N	computer	\N
444	similar	\N	computer	\N
445	sell	\N	computer	\N
446	available	\N	computer	\N
447	necessary	\N	computer	\N
448	without	\N	computer	\N
449	agree	\N	computer	\N
450	rule	\N	computer	\N
451	yet	\N	computer	\N
452	military	\N	computer	\N
453	arrive	\N	computer	\N
454	Democrat	\N	computer	\N
455	country	\N	computer	\N
456	person	\N	computer	\N
457	water	\N	computer	\N
458	us	\N	computer	\N
459	word	\N	computer	\N
460	question	\N	computer	\N
461	town	\N	computer	\N
462	again	\N	computer	\N
463	claim	\N	computer	\N
464	mission	\N	computer	\N
465	check	\N	computer	\N
466	and	\N	computer	\N
467	responsibility	\N	computer	\N
468	authority	\N	computer	\N
469	east	\N	computer	\N
470	we	\N	computer	\N
471	others	\N	computer	\N
472	represent	\N	computer	\N
473	such	\N	computer	\N
474	letter	\N	computer	\N
475	series	\N	computer	\N
476	nor	\N	computer	\N
477	billion	\N	computer	\N
478	ago	\N	computer	\N
479	letter	\N	computer	\N
480	college	\N	computer	\N
481	civil	\N	computer	\N
482	accept	\N	computer	\N
483	nearly	\N	computer	\N
484	stock	\N	computer	\N
485	head	\N	computer	\N
486	bit	\N	computer	\N
487	sometimes	\N	computer	\N
488	surface	\N	computer	\N
489	heavy	\N	computer	\N
490	defense	\N	computer	\N
491	minute	\N	computer	\N
492	bill	\N	computer	\N
493	pressure	\N	computer	\N
494	sister	\N	computer	\N
495	find	\N	computer	\N
496	degree	\N	computer	\N
497	popular	\N	computer	\N
498	nature	\N	computer	\N
499	instead	\N	computer	\N
500	eight	\N	computer	\N
601	approach	\N	laptop	\N
602	participant	\N	laptop	\N
603	detail	\N	laptop	\N
604	goal	\N	laptop	\N
605	sometimes	\N	laptop	\N
606	view	\N	laptop	\N
607	suffer	\N	laptop	\N
608	task	\N	laptop	\N
609	allow	\N	laptop	\N
610	choice	\N	laptop	\N
611	present	\N	laptop	\N
612	avoid	\N	laptop	\N
613	understand	\N	laptop	\N
614	property	\N	laptop	\N
615	follow	\N	laptop	\N
616	new	\N	laptop	\N
617	may	\N	laptop	\N
618	wind	\N	laptop	\N
619	provide	\N	laptop	\N
620	lay	\N	laptop	\N
621	religious	\N	laptop	\N
622	popular	\N	laptop	\N
623	last	\N	laptop	\N
624	really	\N	laptop	\N
625	send	\N	laptop	\N
626	factor	\N	laptop	\N
627	hold	\N	laptop	\N
628	put	\N	laptop	\N
629	language	\N	laptop	\N
630	article	\N	laptop	\N
631	dark	\N	laptop	\N
632	middle	\N	laptop	\N
633	company	\N	laptop	\N
634	floor	\N	laptop	\N
635	indeed	\N	laptop	\N
636	success	\N	laptop	\N
637	step	\N	laptop	\N
638	audience	\N	laptop	\N
639	through	\N	laptop	\N
640	practice	\N	laptop	\N
641	science	\N	laptop	\N
642	less	\N	laptop	\N
643	least	\N	laptop	\N
644	other	\N	laptop	\N
645	agree	\N	laptop	\N
646	candidate	\N	laptop	\N
647	his	\N	laptop	\N
648	accept	\N	laptop	\N
649	avoid	\N	laptop	\N
650	bit	\N	laptop	\N
651	American	\N	laptop	\N
652	edge	\N	laptop	\N
653	individual	\N	laptop	\N
654	process	\N	laptop	\N
655	exist	\N	laptop	\N
656	mother	\N	laptop	\N
657	consumer	\N	laptop	\N
658	east	\N	laptop	\N
659	similar	\N	laptop	\N
660	night	\N	laptop	\N
661	seat	\N	laptop	\N
662	task	\N	laptop	\N
663	smile	\N	laptop	\N
664	read	\N	laptop	\N
665	different	\N	laptop	\N
666	work	\N	laptop	\N
667	standard	\N	laptop	\N
668	enough	\N	laptop	\N
669	follow	\N	laptop	\N
670	social	\N	laptop	\N
671	billion	\N	laptop	\N
672	these	\N	laptop	\N
673	number	\N	laptop	\N
674	continue	\N	laptop	\N
675	in	\N	laptop	\N
676	process	\N	laptop	\N
677	least	\N	laptop	\N
678	degree	\N	laptop	\N
679	right	\N	laptop	\N
680	sport	\N	laptop	\N
681	where	\N	laptop	\N
682	present	\N	laptop	\N
683	task	\N	laptop	\N
684	civil	\N	laptop	\N
685	return	\N	laptop	\N
686	measure	\N	laptop	\N
687	board	\N	laptop	\N
688	any	\N	laptop	\N
689	quickly	\N	laptop	\N
690	store	\N	laptop	\N
691	writer	\N	laptop	\N
692	television	\N	laptop	\N
693	democratic	\N	laptop	\N
694	cause	\N	laptop	\N
695	though	\N	laptop	\N
696	represent	\N	laptop	\N
697	happy	\N	laptop	\N
698	never	\N	laptop	\N
699	way	\N	laptop	\N
700	candidate	\N	laptop	\N
701	be	\N	tablet	\N
702	relate	\N	tablet	\N
703	finally	\N	tablet	\N
704	American	\N	tablet	\N
705	energy	\N	tablet	\N
706	order	\N	tablet	\N
707	question	\N	tablet	\N
708	against	\N	tablet	\N
709	candidate	\N	tablet	\N
710	despite	\N	tablet	\N
711	decision	\N	tablet	\N
712	rule	\N	tablet	\N
713	owner	\N	tablet	\N
714	join	\N	tablet	\N
715	everything	\N	tablet	\N
716	everyone	\N	tablet	\N
717	pass	\N	tablet	\N
718	environmental	\N	tablet	\N
719	reality	\N	tablet	\N
720	many	\N	tablet	\N
721	daughter	\N	tablet	\N
722	mouth	\N	tablet	\N
723	shoulder	\N	tablet	\N
724	any	\N	tablet	\N
725	pressure	\N	tablet	\N
726	detail	\N	tablet	\N
727	over	\N	tablet	\N
728	democratic	\N	tablet	\N
729	city	\N	tablet	\N
730	effect	\N	tablet	\N
731	case	\N	tablet	\N
732	girl	\N	tablet	\N
733	begin	\N	tablet	\N
734	matter	\N	tablet	\N
735	population	\N	tablet	\N
736	beyond	\N	tablet	\N
737	cell	\N	tablet	\N
738	student	\N	tablet	\N
739	though	\N	tablet	\N
740	travel	\N	tablet	\N
741	both	\N	tablet	\N
742	shake	\N	tablet	\N
743	become	\N	tablet	\N
744	radio	\N	tablet	\N
745	matter	\N	tablet	\N
746	often	\N	tablet	\N
747	knowledge	\N	tablet	\N
748	material	\N	tablet	\N
749	similar	\N	tablet	\N
750	read	\N	tablet	\N
751	government	\N	tablet	\N
752	management	\N	tablet	\N
753	manager	\N	tablet	\N
754	hundred	\N	tablet	\N
755	develop	\N	tablet	\N
756	heart	\N	tablet	\N
757	along	\N	tablet	\N
758	pattern	\N	tablet	\N
759	find	\N	tablet	\N
760	read	\N	tablet	\N
761	truth	\N	tablet	\N
762	music	\N	tablet	\N
763	mother	\N	tablet	\N
764	democratic	\N	tablet	\N
765	station	\N	tablet	\N
766	prove	\N	tablet	\N
767	seek	\N	tablet	\N
768	perhaps	\N	tablet	\N
769	seem	\N	tablet	\N
770	several	\N	tablet	\N
771	medical	\N	tablet	\N
772	letter	\N	tablet	\N
773	else	\N	tablet	\N
774	baby	\N	tablet	\N
775	attorney	\N	tablet	\N
776	response	\N	tablet	\N
777	add	\N	tablet	\N
778	door	\N	tablet	\N
779	official	\N	tablet	\N
780	measure	\N	tablet	\N
781	others	\N	tablet	\N
782	several	\N	tablet	\N
783	blue	\N	tablet	\N
784	provide	\N	tablet	\N
785	head	\N	tablet	\N
786	thousand	\N	tablet	\N
787	back	\N	tablet	\N
788	bag	\N	tablet	\N
789	fire	\N	tablet	\N
790	mother	\N	tablet	\N
791	stop	\N	tablet	\N
792	middle	\N	tablet	\N
793	check	\N	tablet	\N
794	measure	\N	tablet	\N
795	fast	\N	tablet	\N
796	area	\N	tablet	\N
797	ground	\N	tablet	\N
798	affect	\N	tablet	\N
799	far	\N	tablet	\N
800	reveal	\N	tablet	\N
801	change	\N	smartwatch	\N
802	where	\N	smartwatch	\N
803	hot	\N	smartwatch	\N
804	true	\N	smartwatch	\N
805	system	\N	smartwatch	\N
806	machine	\N	smartwatch	\N
807	themselves	\N	smartwatch	\N
808	prove	\N	smartwatch	\N
809	society	\N	smartwatch	\N
810	contain	\N	smartwatch	\N
811	value	\N	smartwatch	\N
812	family	\N	smartwatch	\N
813	than	\N	smartwatch	\N
814	choose	\N	smartwatch	\N
815	research	\N	smartwatch	\N
816	appear	\N	smartwatch	\N
817	fly	\N	smartwatch	\N
818	design	\N	smartwatch	\N
819	hundred	\N	smartwatch	\N
820	wish	\N	smartwatch	\N
821	south	\N	smartwatch	\N
822	near	\N	smartwatch	\N
823	share	\N	smartwatch	\N
824	message	\N	smartwatch	\N
825	five	\N	smartwatch	\N
826	within	\N	smartwatch	\N
827	education	\N	smartwatch	\N
828	soon	\N	smartwatch	\N
829	join	\N	smartwatch	\N
830	consider	\N	smartwatch	\N
831	treat	\N	smartwatch	\N
832	can	\N	smartwatch	\N
833	though	\N	smartwatch	\N
834	approach	\N	smartwatch	\N
835	position	\N	smartwatch	\N
836	per	\N	smartwatch	\N
837	week	\N	smartwatch	\N
838	happen	\N	smartwatch	\N
839	population	\N	smartwatch	\N
840	today	\N	smartwatch	\N
841	behavior	\N	smartwatch	\N
842	piece	\N	smartwatch	\N
843	guess	\N	smartwatch	\N
844	brother	\N	smartwatch	\N
845	reduce	\N	smartwatch	\N
846	fear	\N	smartwatch	\N
847	daughter	\N	smartwatch	\N
848	agree	\N	smartwatch	\N
849	manage	\N	smartwatch	\N
850	herself	\N	smartwatch	\N
851	cell	\N	smartwatch	\N
852	miss	\N	smartwatch	\N
853	none	\N	smartwatch	\N
854	firm	\N	smartwatch	\N
855	test	\N	smartwatch	\N
856	region	\N	smartwatch	\N
857	force	\N	smartwatch	\N
858	small	\N	smartwatch	\N
859	purpose	\N	smartwatch	\N
860	do	\N	smartwatch	\N
861	nothing	\N	smartwatch	\N
862	success	\N	smartwatch	\N
863	teacher	\N	smartwatch	\N
864	wind	\N	smartwatch	\N
865	edge	\N	smartwatch	\N
866	she	\N	smartwatch	\N
867	admit	\N	smartwatch	\N
868	hour	\N	smartwatch	\N
869	leave	\N	smartwatch	\N
870	upon	\N	smartwatch	\N
871	decide	\N	smartwatch	\N
872	catch	\N	smartwatch	\N
873	fight	\N	smartwatch	\N
874	expert	\N	smartwatch	\N
875	building	\N	smartwatch	\N
876	serious	\N	smartwatch	\N
877	outside	\N	smartwatch	\N
878	partner	\N	smartwatch	\N
879	debate	\N	smartwatch	\N
880	learn	\N	smartwatch	\N
881	bar	\N	smartwatch	\N
882	have	\N	smartwatch	\N
883	market	\N	smartwatch	\N
884	western	\N	smartwatch	\N
885	herself	\N	smartwatch	\N
886	guess	\N	smartwatch	\N
887	political	\N	smartwatch	\N
888	probably	\N	smartwatch	\N
889	beautiful	\N	smartwatch	\N
890	close	\N	smartwatch	\N
891	thought	\N	smartwatch	\N
892	international	\N	smartwatch	\N
893	front	\N	smartwatch	\N
894	land	\N	smartwatch	\N
895	deep	\N	smartwatch	\N
896	not	\N	smartwatch	\N
897	large	\N	smartwatch	\N
898	opportunity	\N	smartwatch	\N
899	way	\N	smartwatch	\N
900	modern	\N	smartwatch	\N
901	argue	\N	camera	\N
902	consumer	\N	camera	\N
903	pay	\N	camera	\N
904	which	\N	camera	\N
905	respond	\N	camera	\N
906	stay	\N	camera	\N
907	trip	\N	camera	\N
908	although	\N	camera	\N
909	nature	\N	camera	\N
910	bit	\N	camera	\N
911	attack	\N	camera	\N
912	rise	\N	camera	\N
913	year	\N	camera	\N
914	rich	\N	camera	\N
915	last	\N	camera	\N
916	figure	\N	camera	\N
917	scientist	\N	camera	\N
918	alone	\N	camera	\N
919	fill	\N	camera	\N
920	expert	\N	camera	\N
921	kitchen	\N	camera	\N
922	her	\N	camera	\N
923	image	\N	camera	\N
924	fine	\N	camera	\N
925	really	\N	camera	\N
926	mention	\N	camera	\N
927	film	\N	camera	\N
928	off	\N	camera	\N
929	resource	\N	camera	\N
930	bring	\N	camera	\N
931	view	\N	camera	\N
932	level	\N	camera	\N
933	plant	\N	camera	\N
934	follow	\N	camera	\N
935	us	\N	camera	\N
936	employee	\N	camera	\N
937	fill	\N	camera	\N
938	send	\N	camera	\N
939	expect	\N	camera	\N
940	establish	\N	camera	\N
941	fire	\N	camera	\N
942	door	\N	camera	\N
943	song	\N	camera	\N
944	necessary	\N	camera	\N
945	large	\N	camera	\N
946	protect	\N	camera	\N
947	successful	\N	camera	\N
948	agency	\N	camera	\N
949	I	\N	camera	\N
950	explain	\N	camera	\N
951	huge	\N	camera	\N
952	agreement	\N	camera	\N
953	training	\N	camera	\N
954	take	\N	camera	\N
955	benefit	\N	camera	\N
956	source	\N	camera	\N
957	remember	\N	camera	\N
958	and	\N	camera	\N
959	character	\N	camera	\N
960	challenge	\N	camera	\N
961	expert	\N	camera	\N
962	yet	\N	camera	\N
963	improve	\N	camera	\N
964	relationship	\N	camera	\N
965	plan	\N	camera	\N
966	style	\N	camera	\N
967	charge	\N	camera	\N
968	lead	\N	camera	\N
969	rather	\N	camera	\N
970	property	\N	camera	\N
971	maintain	\N	camera	\N
972	leg	\N	camera	\N
973	factor	\N	camera	\N
974	professional	\N	camera	\N
975	language	\N	camera	\N
976	must	\N	camera	\N
977	allow	\N	camera	\N
978	difficult	\N	camera	\N
979	political	\N	camera	\N
980	bill	\N	camera	\N
981	young	\N	camera	\N
982	why	\N	camera	\N
983	military	\N	camera	\N
984	watch	\N	camera	\N
985	our	\N	camera	\N
986	but	\N	camera	\N
987	stage	\N	camera	\N
988	ago	\N	camera	\N
989	can	\N	camera	\N
990	history	\N	camera	\N
991	church	\N	camera	\N
992	attack	\N	camera	\N
993	either	\N	camera	\N
994	court	\N	camera	\N
995	deep	\N	camera	\N
996	fight	\N	camera	\N
997	threat	\N	camera	\N
998	great	\N	camera	\N
999	happy	\N	camera	\N
1000	population	\N	camera	\N
1001	yard	\N	phone	\N
1002	probably	\N	phone	\N
1003	bill	\N	phone	\N
1004	figure	\N	phone	\N
1005	similar	\N	phone	\N
1006	much	\N	phone	\N
1007	have	\N	phone	\N
1008	boy	\N	phone	\N
1009	pattern	\N	phone	\N
1010	rule	\N	phone	\N
1011	prepare	\N	phone	\N
1012	material	\N	phone	\N
1013	couple	\N	phone	\N
1014	finish	\N	phone	\N
1015	design	\N	phone	\N
1016	once	\N	phone	\N
1017	learn	\N	phone	\N
1018	near	\N	phone	\N
1019	seem	\N	phone	\N
1020	practice	\N	phone	\N
1021	indicate	\N	phone	\N
1022	radio	\N	phone	\N
1023	from	\N	phone	\N
1024	American	\N	phone	\N
1025	respond	\N	phone	\N
1026	decision	\N	phone	\N
1027	learn	\N	phone	\N
1028	could	\N	phone	\N
1029	find	\N	phone	\N
1030	most	\N	phone	\N
1031	test	\N	phone	\N
1032	skin	\N	phone	\N
1033	human	\N	phone	\N
1034	send	\N	phone	\N
1035	behavior	\N	phone	\N
1036	world	\N	phone	\N
1037	reason	\N	phone	\N
1038	budget	\N	phone	\N
1039	picture	\N	phone	\N
1040	opportunity	\N	phone	\N
1041	play	\N	phone	\N
1042	wish	\N	phone	\N
1043	all	\N	phone	\N
1044	they	\N	phone	\N
1045	recent	\N	phone	\N
1046	view	\N	phone	\N
1047	new	\N	phone	\N
1048	yourself	\N	phone	\N
1049	water	\N	phone	\N
1050	hospital	\N	phone	\N
1051	hit	\N	phone	\N
1052	cell	\N	phone	\N
1053	store	\N	phone	\N
1054	culture	\N	phone	\N
1055	wonder	\N	phone	\N
1056	explain	\N	phone	\N
1057	participant	\N	phone	\N
1058	cup	\N	phone	\N
1059	thing	\N	phone	\N
1060	federal	\N	phone	\N
1061	tough	\N	phone	\N
1062	serious	\N	phone	\N
1063	laugh	\N	phone	\N
1064	ten	\N	phone	\N
1065	ago	\N	phone	\N
1066	catch	\N	phone	\N
1067	report	\N	phone	\N
1068	practice	\N	phone	\N
1069	step	\N	phone	\N
1070	woman	\N	phone	\N
1071	kitchen	\N	phone	\N
1072	market	\N	phone	\N
1073	same	\N	phone	\N
1074	board	\N	phone	\N
1075	offer	\N	phone	\N
1076	page	\N	phone	\N
1077	him	\N	phone	\N
1078	phone	\N	phone	\N
1079	court	\N	phone	\N
1080	blood	\N	phone	\N
1081	challenge	\N	phone	\N
1082	break	\N	phone	\N
1083	budget	\N	phone	\N
1084	admit	\N	phone	\N
1085	production	\N	phone	\N
1086	civil	\N	phone	\N
1087	several	\N	phone	\N
1088	build	\N	phone	\N
1089	subject	\N	phone	\N
1090	wish	\N	phone	\N
1091	upon	\N	phone	\N
1092	why	\N	phone	\N
1093	population	\N	phone	\N
1094	hot	\N	phone	\N
1095	entire	\N	phone	\N
1096	least	\N	phone	\N
1097	rock	\N	phone	\N
1098	available	\N	phone	\N
1099	of	\N	phone	\N
1100	answer	\N	phone	\N
1101	around	\N	accessories	\N
1102	speak	\N	accessories	\N
1103	I	\N	accessories	\N
1104	other	\N	accessories	\N
1105	executive	\N	accessories	\N
1106	new	\N	accessories	\N
1107	charge	\N	accessories	\N
1108	happy	\N	accessories	\N
1109	stop	\N	accessories	\N
1110	enjoy	\N	accessories	\N
1111	community	\N	accessories	\N
1112	time	\N	accessories	\N
1113	quite	\N	accessories	\N
1114	benefit	\N	accessories	\N
1115	enter	\N	accessories	\N
1116	discover	\N	accessories	\N
1117	pull	\N	accessories	\N
1118	school	\N	accessories	\N
1119	choose	\N	accessories	\N
1120	someone	\N	accessories	\N
1121	about	\N	accessories	\N
1122	research	\N	accessories	\N
1123	anyone	\N	accessories	\N
1124	middle	\N	accessories	\N
1125	day	\N	accessories	\N
1126	range	\N	accessories	\N
1127	why	\N	accessories	\N
1128	very	\N	accessories	\N
1129	let	\N	accessories	\N
1130	middle	\N	accessories	\N
1131	box	\N	accessories	\N
1132	world	\N	accessories	\N
1133	whom	\N	accessories	\N
1134	well	\N	accessories	\N
1135	represent	\N	accessories	\N
1136	fund	\N	accessories	\N
1137	crime	\N	accessories	\N
1138	whom	\N	accessories	\N
1139	dark	\N	accessories	\N
1140	hospital	\N	accessories	\N
1141	other	\N	accessories	\N
1142	science	\N	accessories	\N
1143	suffer	\N	accessories	\N
1144	late	\N	accessories	\N
1145	base	\N	accessories	\N
1146	than	\N	accessories	\N
1147	investment	\N	accessories	\N
1148	official	\N	accessories	\N
1149	help	\N	accessories	\N
1150	production	\N	accessories	\N
1151	civil	\N	accessories	\N
1152	course	\N	accessories	\N
1153	fish	\N	accessories	\N
1154	fill	\N	accessories	\N
1155	nation	\N	accessories	\N
1156	share	\N	accessories	\N
1157	write	\N	accessories	\N
1158	claim	\N	accessories	\N
1159	student	\N	accessories	\N
1160	consumer	\N	accessories	\N
1161	expert	\N	accessories	\N
1162	technology	\N	accessories	\N
1163	rate	\N	accessories	\N
1164	loss	\N	accessories	\N
1165	because	\N	accessories	\N
1166	wait	\N	accessories	\N
1167	price	\N	accessories	\N
1168	financial	\N	accessories	\N
1169	beyond	\N	accessories	\N
1170	he	\N	accessories	\N
1171	place	\N	accessories	\N
1172	learn	\N	accessories	\N
1173	him	\N	accessories	\N
1174	style	\N	accessories	\N
1175	service	\N	accessories	\N
1176	voice	\N	accessories	\N
1177	reveal	\N	accessories	\N
1178	field	\N	accessories	\N
1179	business	\N	accessories	\N
1180	herself	\N	accessories	\N
1181	very	\N	accessories	\N
1182	evening	\N	accessories	\N
1183	need	\N	accessories	\N
1184	with	\N	accessories	\N
1185	get	\N	accessories	\N
1186	leave	\N	accessories	\N
1187	garden	\N	accessories	\N
1188	more	\N	accessories	\N
1189	can	\N	accessories	\N
1190	past	\N	accessories	\N
1191	part	\N	accessories	\N
1192	hair	\N	accessories	\N
1193	left	\N	accessories	\N
1194	investment	\N	accessories	\N
1195	resource	\N	accessories	\N
1196	model	\N	accessories	\N
1197	plan	\N	accessories	\N
1198	item	\N	accessories	\N
1199	find	\N	accessories	\N
1200	throw	\N	accessories	\N
1201	street	few	appliance	\N
1202	leave	listen	appliance	\N
1203	between	else	appliance	\N
1204	baby	enough	appliance	\N
1205	outside	thus	appliance	\N
1206	room	another	appliance	\N
1207	seven	technology	appliance	\N
1208	action	fast	appliance	\N
1209	since	article	appliance	\N
1210	heavy	door	appliance	\N
1211	cost	question	appliance	\N
1212	son	major	appliance	\N
1213	number	mouth	appliance	\N
1214	rate	notice	appliance	\N
1215	your	yourself	appliance	\N
1216	safe	main	appliance	\N
1217	seek	these	appliance	\N
1218	describe	expect	appliance	\N
1219	teacher	probably	appliance	\N
1220	experience	easy	appliance	\N
1221	through	expert	appliance	\N
1222	different	four	appliance	\N
1223	yard	director	appliance	\N
1224	matter	important	appliance	\N
1225	sort	buy	appliance	\N
1226	certainly	myself	appliance	\N
1227	few	role	appliance	\N
1228	run	week	appliance	\N
1229	federal	experience	appliance	\N
1230	tree	floor	appliance	\N
1231	third	market	appliance	\N
1232	direction	produce	appliance	\N
1233	economy	son	appliance	\N
1234	half	present	appliance	\N
1235	practice	hold	appliance	\N
1236	write	anyone	appliance	\N
1237	course	size	appliance	\N
1238	attention	all	appliance	\N
1239	difference	choice	appliance	\N
1240	cause	you	appliance	\N
1241	development	science	appliance	\N
1242	price	discover	appliance	\N
1243	agree	government	appliance	\N
1244	soldier	the	appliance	\N
1245	contain	everything	appliance	\N
1246	age	determine	appliance	\N
1247	technology	coach	appliance	\N
1248	nor	play	appliance	\N
1249	chance	spring	appliance	\N
1250	safe	smile	appliance	\N
1251	certain	over	appliance	\N
1252	number	wonder	appliance	\N
1253	do	you	appliance	\N
1254	large	his	appliance	\N
1255	character	federal	appliance	\N
1256	throw	under	appliance	\N
1257	responsibility	front	appliance	\N
1258	wide	improve	appliance	\N
1259	woman	bad	appliance	\N
1260	father	push	appliance	\N
1261	school	tax	appliance	\N
1262	manage	condition	appliance	\N
1263	quite	civil	appliance	\N
1264	authority	early	appliance	\N
1265	teacher	these	appliance	\N
1266	blue	where	appliance	\N
1267	left	scene	appliance	\N
1268	show	ball	appliance	\N
1269	ready	stage	appliance	\N
1270	especially	check	appliance	\N
1271	person	dinner	appliance	\N
1272	market	player	appliance	\N
1273	from	window	appliance	\N
1274	hour	professor	appliance	\N
1275	worry	program	appliance	\N
1276	rule	still	appliance	\N
1277	blood	organization	appliance	\N
1278	one	just	appliance	\N
1279	three	put	appliance	\N
1280	word	easy	appliance	\N
1281	floor	raise	appliance	\N
1282	send	toward	appliance	\N
1283	particularly	state	appliance	\N
1284	next	history	appliance	\N
1285	better	take	appliance	\N
1286	somebody	many	appliance	\N
1287	less	program	appliance	\N
1288	will	discover	appliance	\N
1289	billion	deal	appliance	\N
1290	ask	easy	appliance	\N
1291	after	fly	appliance	\N
1292	write	work	appliance	\N
1293	behind	certain	appliance	\N
1294	new	lead	appliance	\N
1295	sea	choice	appliance	\N
1296	apply	when	appliance	\N
1297	wind	catch	appliance	\N
1298	adult	southern	appliance	\N
1299	series	bill	appliance	\N
1300	try	president	appliance	\N
1301	ahead	wait	kitchenappliance	933
1302	line	project	kitchenappliance	375
1303	citizen	interest	kitchenappliance	801
1304	manager	get	kitchenappliance	698
1305	life	owner	kitchenappliance	543
1306	thousand	store	kitchenappliance	905
1307	eat	leader	kitchenappliance	492
1308	green	particularly	kitchenappliance	929
1309	establish	protect	kitchenappliance	77
1310	protect	actually	kitchenappliance	702
1311	point	do	kitchenappliance	955
1312	them	movement	kitchenappliance	449
1313	treat	do	kitchenappliance	156
1314	fly	believe	kitchenappliance	257
1315	others	kitchen	kitchenappliance	438
1316	management	next	kitchenappliance	302
1317	write	walk	kitchenappliance	507
1318	trouble	worker	kitchenappliance	978
1319	choice	such	kitchenappliance	342
1320	wear	certain	kitchenappliance	175
1321	court	skill	kitchenappliance	312
1322	as	effect	kitchenappliance	877
1323	officer	early	kitchenappliance	852
1324	produce	perhaps	kitchenappliance	471
1325	staff	high	kitchenappliance	500
1326	every	information	kitchenappliance	211
1327	visit	in	kitchenappliance	804
1328	student	central	kitchenappliance	481
1329	church	brother	kitchenappliance	887
1330	movie	good	kitchenappliance	863
1331	might	ready	kitchenappliance	722
1332	possible	west	kitchenappliance	500
1333	available	former	kitchenappliance	220
1334	air	hair	kitchenappliance	415
1335	drug	yard	kitchenappliance	847
1336	result	table	kitchenappliance	913
1337	whom	source	kitchenappliance	124
1338	prepare	those	kitchenappliance	209
1339	set	positive	kitchenappliance	18
1340	property	then	kitchenappliance	114
1341	must	power	kitchenappliance	560
1342	buy	traditional	kitchenappliance	60
1343	between	attorney	kitchenappliance	942
1344	drive	church	kitchenappliance	645
1345	decide	police	kitchenappliance	209
1346	but	front	kitchenappliance	353
1347	allow	news	kitchenappliance	630
1348	tell	affect	kitchenappliance	813
1349	all	what	kitchenappliance	473
1350	fly	raise	kitchenappliance	70
1351	despite	kitchen	kitchenappliance	964
1352	PM	method	kitchenappliance	559
1353	myself	production	kitchenappliance	146
1354	she	gun	kitchenappliance	509
1355	guy	opportunity	kitchenappliance	477
1356	cut	south	kitchenappliance	746
1357	get	example	kitchenappliance	725
1358	set	party	kitchenappliance	914
1359	form	growth	kitchenappliance	936
1360	couple	hair	kitchenappliance	434
1361	follow	feel	kitchenappliance	970
1362	owner	to	kitchenappliance	958
1363	factor	former	kitchenappliance	128
1364	write	serve	kitchenappliance	427
1365	record	size	kitchenappliance	880
1366	left	Mr	kitchenappliance	308
1367	wall	cause	kitchenappliance	408
1368	by	method	kitchenappliance	469
1369	able	toward	kitchenappliance	341
1370	level	more	kitchenappliance	272
1371	rise	contain	kitchenappliance	750
1372	fund	land	kitchenappliance	347
1373	anything	cut	kitchenappliance	634
1374	ball	over	kitchenappliance	126
1375	away	shoulder	kitchenappliance	29
1376	year	pay	kitchenappliance	665
1377	movement	then	kitchenappliance	296
1378	set	also	kitchenappliance	568
1379	fine	Democrat	kitchenappliance	744
1380	identify	of	kitchenappliance	853
1381	line	first	kitchenappliance	807
1382	build	enter	kitchenappliance	544
1383	political	figure	kitchenappliance	728
1384	use	boy	kitchenappliance	634
1385	argue	when	kitchenappliance	112
1386	interest	us	kitchenappliance	439
1387	chair	talk	kitchenappliance	582
1388	edge	Democrat	kitchenappliance	258
1389	chair	be	kitchenappliance	729
1390	appear	eight	kitchenappliance	432
1391	everyone	could	kitchenappliance	512
1392	radio	chance	kitchenappliance	848
1393	brother	matter	kitchenappliance	106
1394	expect	husband	kitchenappliance	710
1395	cost	game	kitchenappliance	471
1396	claim	top	kitchenappliance	644
1397	project	join	kitchenappliance	192
1398	question	ever	kitchenappliance	557
1399	both	industry	kitchenappliance	842
1400	rise	project	kitchenappliance	153
1401	walk	\N	apparel	\N
1402	executive	\N	apparel	\N
1403	avoid	\N	apparel	\N
1404	lay	\N	apparel	\N
1405	whom	\N	apparel	\N
1406	his	\N	apparel	\N
1407	compare	\N	apparel	\N
1408	market	\N	apparel	\N
1409	PM	\N	apparel	\N
1410	find	\N	apparel	\N
1411	and	\N	apparel	\N
1412	foreign	\N	apparel	\N
1413	culture	\N	apparel	\N
1414	sea	\N	apparel	\N
1415	social	\N	apparel	\N
1416	happy	\N	apparel	\N
1417	image	\N	apparel	\N
1418	analysis	\N	apparel	\N
1419	tell	\N	apparel	\N
1420	forward	\N	apparel	\N
1421	consider	\N	apparel	\N
1422	young	\N	apparel	\N
1423	last	\N	apparel	\N
1424	morning	\N	apparel	\N
1425	doctor	\N	apparel	\N
1426	little	\N	apparel	\N
1427	space	\N	apparel	\N
1428	seek	\N	apparel	\N
1429	wish	\N	apparel	\N
1430	record	\N	apparel	\N
1431	to	\N	apparel	\N
1432	high	\N	apparel	\N
1433	evening	\N	apparel	\N
1434	less	\N	apparel	\N
1435	ago	\N	apparel	\N
1436	eat	\N	apparel	\N
1437	few	\N	apparel	\N
1438	watch	\N	apparel	\N
1439	serve	\N	apparel	\N
1440	participant	\N	apparel	\N
1441	their	\N	apparel	\N
1442	understand	\N	apparel	\N
1443	nation	\N	apparel	\N
1444	small	\N	apparel	\N
1445	case	\N	apparel	\N
1446	benefit	\N	apparel	\N
1447	sister	\N	apparel	\N
1448	he	\N	apparel	\N
1449	later	\N	apparel	\N
1450	stay	\N	apparel	\N
1451	study	\N	apparel	\N
1452	determine	\N	apparel	\N
1453	author	\N	apparel	\N
1454	rather	\N	apparel	\N
1455	sound	\N	apparel	\N
1456	season	\N	apparel	\N
1457	radio	\N	apparel	\N
1458	television	\N	apparel	\N
1459	economy	\N	apparel	\N
1460	help	\N	apparel	\N
1461	cell	\N	apparel	\N
1462	poor	\N	apparel	\N
1463	service	\N	apparel	\N
1464	responsibility	\N	apparel	\N
1465	forget	\N	apparel	\N
1466	yes	\N	apparel	\N
1467	research	\N	apparel	\N
1468	say	\N	apparel	\N
1469	step	\N	apparel	\N
1470	whatever	\N	apparel	\N
1471	worry	\N	apparel	\N
1472	well	\N	apparel	\N
1473	area	\N	apparel	\N
1474	throughout	\N	apparel	\N
1475	international	\N	apparel	\N
1476	picture	\N	apparel	\N
1477	live	\N	apparel	\N
1478	his	\N	apparel	\N
1479	list	\N	apparel	\N
1480	structure	\N	apparel	\N
1481	around	\N	apparel	\N
1482	myself	\N	apparel	\N
1483	chair	\N	apparel	\N
1484	live	\N	apparel	\N
1485	already	\N	apparel	\N
1486	case	\N	apparel	\N
1487	then	\N	apparel	\N
1488	none	\N	apparel	\N
1489	ground	\N	apparel	\N
1490	well	\N	apparel	\N
1491	class	\N	apparel	\N
1492	way	\N	apparel	\N
1493	agree	\N	apparel	\N
1494	short	\N	apparel	\N
1495	compare	\N	apparel	\N
1496	law	\N	apparel	\N
1497	than	\N	apparel	\N
1498	car	\N	apparel	\N
1499	hand	\N	apparel	\N
1500	future	\N	apparel	\N
\.


--
-- Data for Name: relation_30; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_30 (custorder_id, shipment_id, carrier, tracking_no, shipped_at, delivered_at) FROM stdin;
16	927	entire	reach	organization	week
37	388	with	buy	institution	deal
19	173	message	first	bill	may
40	746	soon	often	population	see
52	162	about	pull	clearly	election
17	293	project	between	mind	middle
42	540	make	develop	attention	cover
88	794	either	history	family	bill
51	769	cut	special	court	necessary
80	639	picture	test	fire	water
62	282	phone	she	marriage	suddenly
68	291	less	same	down	mean
83	891	a	difficult	sing	require
60	769	certain	wrong	list	ball
100	317	defense	sell	make	company
3	5	enough	name	suddenly	relate
46	279	sign	knowledge	discussion	white
21	410	she	third	avoid	agreement
53	418	leg	rather	various	society
61	497	teach	second	their	parent
66	52	them	rock	project	popular
69	807	election	fund	they	major
32	246	time	find	right	indicate
57	243	enough	take	care	likely
8	998	weight	yet	stand	truth
16	479	tough	whom	try	first
75	839	seem	contain	tree	business
54	445	contain	nature	truth	movement
71	664	spend	one	top	owner
85	368	law	kind	second	bank
35	685	rate	appear	movie	some
8	929	economic	information	herself	least
46	550	fact	always	reflect	risk
55	342	outside	machine	wonder	while
49	658	wait	full	seem	make
100	407	upon	whatever	into	too
2	590	language	glass	popular	girl
64	50	entire	weight	approach	available
18	658	newspaper	receive	natural	together
75	350	federal	good	before	focus
40	30	mind	story	rule	station
91	971	ability	green	later	political
51	819	magazine	bag	person	gas
11	424	bit	water	population	stock
84	807	wide	civil	heavy	seem
67	944	hit	but	matter	international
50	682	employee	choose	realize	together
96	71	letter	recently	season	fast
94	198	five	campaign	send	common
43	78	result	say	rule	guess
11	51	often	bag	coach	present
71	535	environment	material	occur	always
92	47	line	always	big	at
96	302	how	because	name	method
42	67	book	begin	institution	do
88	886	five	this	use	box
92	272	explain	similar	phone	image
11	124	only	two	plant	cause
82	931	itself	himself	dream	heavy
2	192	citizen	attention	start	save
35	562	whom	language	present	father
78	853	stuff	good	from	bad
6	534	any	author	approach	reality
67	61	experience	avoid	clearly	likely
72	342	believe	true	occur	so
21	578	medical	indicate	discuss	sound
27	24	might	eat	back	around
33	610	I	central	you	meeting
53	426	throughout	prepare	watch	sport
93	416	there	box	become	week
54	214	imagine	after	bit	white
79	170	everyone	leg	resource	whose
64	183	those	term	father	son
12	202	subject	research	whether	amount
73	231	property	in	full	material
65	19	above	look	money	four
84	573	join	reason	create	fire
27	234	become	that	across	standard
57	984	message	born	food	market
86	599	create	road	training	college
66	796	generation	officer	glass	wrong
21	946	game	must	similar	whether
61	239	memory	fire	authority	director
72	513	arrive	how	plan	trip
59	83	peace	range	business	successful
96	179	wind	executive	else	expect
47	984	summer	family	report	total
43	473	long	whether	pattern	minute
25	75	model	which	one	item
75	476	relationship	future	job	my
14	42	accept	professional	candidate	instead
87	925	base	serve	human	professional
77	47	public	what	event	issue
100	587	relate	property	usually	important
48	120	treatment	car	stand	in
38	137	east	act	smile	message
43	382	whom	notice	capital	amount
32	170	west	nation	give	cell
15	93	public	leader	reveal	international
44	204	heart	six	see	save
\.


--
-- Data for Name: relation_31; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_31 (promotion_id, promo_name, starts_at, ends_at, discount_type, discount_value) FROM stdin;
1	key	player	maintain	garden	also
2	perhaps	as	pretty	inside	leg
3	raise	movement	day	list	difference
4	knowledge	him	line	fall	child
5	teacher	us	talk	onto	machine
6	eye	town	public	seek	type
7	newspaper	concern	condition	question	debate
8	range	provide	effect	before	garden
9	table	move	school	purpose	still
10	research	north	successful	should	ever
11	laugh	discussion	three	provide	allow
12	authority	water	agent	themselves	explain
13	police	let	million	offer	eat
14	remain	international	pick	sign	recently
15	technology	during	to	meet	build
16	high	yes	them	change	on
17	young	if	ready	will	about
18	task	agency	authority	city	difference
19	environment	try	boy	reach	popular
20	he	condition	type	majority	media
21	build	or	community	song	senior
22	in	ground	training	foot	however
23	thank	tree	stand	school	guess
24	trade	happy	anyone	western	role
25	service	instead	agent	face	month
26	attorney	firm	and	task	institution
27	room	onto	citizen	senior	order
28	interest	enjoy	young	audience	beat
29	one	at	fund	analysis	thing
30	break	whether	piece	field	system
31	art	affect	card	century	else
32	foot	rate	tonight	agree	road
33	media	hotel	draw	who	agent
34	produce	country	than	season	until
35	he	thank	likely	either	agree
36	test	item	contain	stage	understand
37	what	surface	nothing	life	first
38	act	leave	end	season	couple
39	raise	begin	use	key	music
40	analysis	direction	officer	real	worker
41	financial	born	month	sign	move
42	year	traditional	church	try	glass
43	generation	set	player	lead	west
44	system	despite	in	among	fall
45	stand	enjoy	simple	anyone	per
46	beyond	song	network	Mrs	four
47	majority	bag	not	official	five
48	candidate	suggest	cause	matter	father
49	still	free	either	few	one
50	scientist	eight	improve	or	red
51	away	worker	page	authority	car
52	thousand	out	above	challenge	remain
53	prove	sometimes	number	use	bad
54	for	although	line	serve	none
55	listen	leave	attention	animal	stop
56	program	significant	difference	knowledge	than
57	how	someone	successful	herself	build
58	buy	fall	effect	strategy	expert
59	me	once	around	protect	against
60	speak	price	study	hospital	before
61	member	physical	make	cut	nearly
62	west	compare	ball	job	citizen
63	raise	low	training	media	message
64	turn	page	deep	type	us
65	provide	kind	wife	gas	he
66	move	rate	among	forward	crime
67	crime	all	him	fund	blood
68	member	suggest	team	her	part
69	someone	no	vote	near	process
70	hold	how	try	wind	between
71	throughout	may	too	room	push
72	team	exactly	before	something	year
73	officer	along	argue	government	box
74	individual	whether	identify	food	expert
75	language	involve	at	TV	sister
76	doctor	past	rate	art	race
77	what	tax	today	young	story
78	send	knowledge	not	tonight	hold
79	rather	present	to	week	travel
80	second	note	direction	evening	study
81	information	head	there	road	so
82	activity	conference	east	while	investment
83	lay	table	itself	quite	drop
84	have	total	outside	each	food
85	it	chance	high	available	laugh
86	must	become	choice	lawyer	candidate
87	wind	hospital	common	before	ahead
88	carry	build	yet	relationship	tree
89	marriage	painting	as	travel	close
90	expect	during	little	certain	water
91	ready	campaign	model	health	most
92	else	chance	place	father	political
93	improve	decision	later	mean	follow
94	vote	a	successful	head	along
95	everything	one	seat	bag	quite
96	free	yourself	health	the	your
97	when	national	economic	together	their
98	along	word	lay	large	garden
99	ground	friend	especially	support	both
100	tend	listen	feeling	fact	way
\.


--
-- Data for Name: relation_32; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_32 (promotion_id, coupon_code, max_uses, per_user_limit) FROM stdin;
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
-- Data for Name: relation_33; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_33 (warehouse_id, warehouse_name, region) FROM stdin;
1	wait	one
2	exist	according
3	why	herself
4	difference	ten
5	deal	avoid
6	far	most
7	it	medical
8	effect	court
9	voice	say
10	figure	later
11	base	hit
12	section	win
13	heavy	apply
14	whole	federal
15	sort	time
16	animal	fly
17	family	sometimes
18	camera	of
19	into	make
20	find	different
21	size	attorney
22	too	although
23	program	watch
24	feel	issue
25	week	unit
26	two	already
27	year	everybody
28	boy	gun
29	dinner	leader
30	bit	about
31	price	still
32	offer	according
33	care	single
34	play	eight
35	plant	main
36	student	friend
37	see	enter
38	article	any
39	pass	or
40	increase	stock
41	education	allow
42	different	allow
43	direction	church
44	oil	church
45	may	realize
46	reflect	organization
47	question	letter
48	entire	image
49	worry	include
50	wear	before
51	both	state
52	end	our
53	once	office
54	though	machine
55	available	wear
56	federal	heart
57	already	enjoy
58	view	standard
59	imagine	cover
60	reflect	view
61	other	situation
62	add	since
63	develop	baby
64	left	organization
65	some	reason
66	pretty	value
67	well	almost
68	behind	make
69	as	stop
70	public	skin
71	campaign	husband
72	stage	vote
73	level	physical
74	eight	community
75	boy	help
76	bring	soldier
77	western	close
78	lose	make
79	structure	two
80	lose	race
81	learn	carry
82	again	education
83	tend	easy
84	like	available
85	others	recently
86	even	rich
87	later	development
88	wind	win
89	likely	point
90	pattern	respond
91	future	behind
92	receive	bar
93	discussion	future
94	clearly	but
95	often	fall
96	law	big
97	though	song
98	wind	hear
99	ahead	his
100	a	ago
\.


--
-- Data for Name: relation_34; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_34 (warehouse_id, bin_id, code) FROM stdin;
58	789	world
40	943	include
72	244	rest
65	777	trade
3	398	serve
59	180	behind
57	823	each
94	989	various
69	35	cover
2	134	his
39	489	improve
79	496	space
81	661	million
83	790	trip
71	727	short
5	766	marriage
58	253	us
26	74	building
2	441	relate
19	5	indicate
8	549	house
35	331	own
9	227	question
1	556	energy
18	99	identify
45	961	only
82	205	have
36	493	save
23	845	dinner
96	679	our
60	639	partner
19	991	risk
69	325	case
21	995	officer
51	961	us
76	214	provide
39	611	plan
87	677	throw
33	469	either
57	140	phone
24	180	ask
21	511	language
53	765	front
42	173	price
80	791	present
18	272	matter
70	665	police
93	676	hard
83	24	sign
52	818	figure
69	279	interest
84	954	cause
23	557	as
46	750	cup
96	112	culture
69	257	rate
6	180	really
82	709	political
55	25	speech
9	661	sister
3	591	line
70	9	wrong
60	552	rather
56	375	heart
78	789	agent
19	922	relationship
23	57	the
2	378	father
93	602	receive
84	831	guy
91	85	garden
8	126	star
19	159	home
3	262	few
29	586	market
95	580	price
25	693	bill
10	353	development
53	353	side
95	506	none
50	521	year
25	276	partner
93	565	really
25	742	analysis
53	812	response
31	390	lose
28	103	participant
52	694	enough
31	325	education
70	951	daughter
48	826	billion
5	213	money
21	329	shake
39	635	among
59	103	as
2	192	account
97	732	help
70	377	pay
26	163	family
36	796	middle
\.


--
-- Data for Name: relation_35; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_35 (supplier_id, supplier_name) FROM stdin;
1	difference
2	agree
3	color
4	down
5	add
6	worry
7	glass
8	event
9	Mrs
10	free
11	occur
12	matter
13	though
14	floor
15	reveal
16	water
17	investment
18	notice
19	prevent
20	professor
21	ahead
22	measure
23	art
24	item
25	ahead
26	mind
27	according
28	television
29	something
30	tax
31	check
32	bit
33	within
34	whatever
35	down
36	media
37	season
38	attorney
39	their
40	crime
41	mission
42	sea
43	among
44	I
45	try
46	radio
47	detail
48	bed
49	determine
50	reason
51	ten
52	situation
53	chair
54	what
55	sea
56	government
57	number
58	travel
59	mission
60	conference
61	approach
62	environment
63	action
64	pressure
65	store
66	power
67	because
68	course
69	will
70	real
71	behind
72	personal
73	check
74	realize
75	word
76	whole
77	long
78	large
79	discuss
80	her
81	day
82	role
83	star
84	once
85	race
86	tax
87	draw
88	gas
89	coach
90	couple
91	TV
92	little
93	program
94	hospital
95	impact
96	news
97	call
98	see
99	until
100	finally
\.


--
-- Data for Name: relation_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_36 (supplier_id, contact_id, email, phone) FROM stdin;
21	114	anthony38@example.com	court
25	386	kbush@example.org	improve
72	443	hcooper@example.com	reality
40	212	robert60@example.com	court
9	290	biancabowman@example.com	end
64	515	galvanapril@example.com	past
60	233	avilabryan@example.org	apply
80	742	emily88@example.net	remain
7	892	logandavid@example.com	his
34	333	brenda75@example.net	everything
51	589	tranedward@example.net	night
95	865	rwagner@example.com	music
20	946	laurie22@example.com	politics
84	346	carmenwilkins@example.org	program
43	463	raymondhector@example.net	whose
22	535	rhonda96@example.org	program
13	825	emilygreer@example.com	yet
59	130	janet15@example.com	woman
20	962	maddenwilliam@example.org	month
1	393	blong@example.com	appear
22	135	bentonsusan@example.net	contain
14	570	robert48@example.com	board
82	212	atucker@example.com	task
81	882	christophersparks@example.net	anyone
15	927	martinezjoseph@example.com	television
8	797	scott21@example.net	foot
74	778	josephjacobson@example.org	add
63	229	vshaw@example.net	network
70	408	christina35@example.org	identify
92	357	penajoshua@example.com	deal
38	93	vnorris@example.com	we
29	378	walterstheresa@example.org	life
96	25	knguyen@example.org	could
13	270	mcculloughmegan@example.org	available
36	297	figueroalisa@example.org	development
71	318	qwebb@example.com	shake
24	442	zbrown@example.net	society
89	502	ricky93@example.com	draw
42	883	acastillo@example.com	continue
49	288	josephdavis@example.net	check
71	790	christopherreese@example.org	often
52	928	whitneyjacqueline@example.net	job
27	428	tara51@example.net	little
45	73	brownchelsea@example.org	newspaper
90	547	zhunter@example.org	whatever
58	312	brian48@example.org	medical
40	406	carsonkayla@example.net	quite
45	725	qthomas@example.net	what
85	30	jenkinsallen@example.org	other
37	133	wward@example.com	often
15	766	chelseyrhodes@example.net	science
42	243	julieshannon@example.com	stand
86	910	daytodd@example.org	computer
32	529	stephaniehuang@example.net	poor
76	704	ashley62@example.org	audience
44	144	nicholassmith@example.org	music
77	999	hodgestephanie@example.com	Mrs
6	968	awall@example.org	sing
45	172	john15@example.com	travel
75	258	jeffrey91@example.net	century
68	952	james68@example.org	truth
83	880	pcarrillo@example.com	personal
52	730	rpadilla@example.net	everything
8	743	howardjoseph@example.org	nothing
80	232	wallscarrie@example.net	wish
39	909	danielsmaria@example.com	end
44	996	janetzimmerman@example.com	language
44	527	rebecca46@example.com	heavy
96	617	wrightdavid@example.com	message
95	869	hensleyveronica@example.com	knowledge
6	3	tony54@example.org	end
53	952	klee@example.net	that
37	838	george26@example.org	physical
1	102	irich@example.com	however
18	599	bradleymcneil@example.net	kid
37	112	phillipsian@example.org	form
6	280	christopher88@example.org	decade
7	884	copelandmackenzie@example.net	head
78	489	baxternancy@example.org	tough
64	54	elewis@example.com	situation
27	878	reyescarrie@example.org	few
25	756	kimberly40@example.net	pressure
7	865	stanley39@example.com	end
45	288	jimenezjames@example.com	organization
48	526	nwyatt@example.com	something
29	329	wbaker@example.net	inside
42	505	emartin@example.org	doctor
5	606	monica78@example.com	time
81	820	twhite@example.net	common
18	132	galvanjasmine@example.com	want
73	194	deborahwong@example.com	nation
84	241	robin29@example.org	hospital
92	56	dwest@example.net	attack
12	36	matthewbrooks@example.net	relate
7	196	jeremyford@example.net	draw
97	368	andrewsawyer@example.org	number
53	803	vwilson@example.org	color
93	162	gstevens@example.org	despite
25	831	brandonreyes@example.com	computer
100	214	usimpson@example.net	clearly
\.


--
-- Data for Name: relation_37; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_37 (purchaseorder_id, created_at, status) FROM stdin;
1	indeed	hotel
2	hundred	condition
3	though	million
4	poor	authority
5	try	word
6	other	ever
7	participant	our
8	medical	what
9	law	realize
10	friend	discover
11	explain	court
12	series	pressure
13	morning	again
14	attorney	cover
15	house	bit
16	list	choose
17	will	will
18	firm	three
19	story	action
20	dream	better
21	cell	help
22	specific	realize
23	matter	glass
24	speak	character
25	current	out
26	Congress	draw
27	himself	year
28	night	child
29	again	spend
30	behavior	tough
31	culture	relate
32	measure	man
33	according	director
34	least	feel
35	wonder	girl
36	low	management
37	industry	with
38	really	store
39	high	then
40	manage	company
41	child	worry
42	walk	of
43	marriage	north
44	nice	task
45	audience	similar
46	light	election
47	entire	traditional
48	section	live
49	avoid	instead
50	on	everything
51	seven	tough
52	kind	participant
53	trip	admit
54	ahead	focus
55	bank	officer
56	player	care
57	young	kid
58	quality	thing
59	top	appear
60	job	half
61	health	summer
62	democratic	my
63	long	factor
64	game	believe
65	already	more
66	professional	hand
67	far	others
68	quite	true
69	figure	daughter
70	oil	follow
71	operation	building
72	everything	store
73	man	some
74	son	coach
75	late	his
76	individual	level
77	student	evidence
78	able	painting
79	ok	peace
80	western	hot
81	director	protect
82	seem	allow
83	hospital	bag
84	project	serious
85	American	school
86	war	not
87	level	consumer
88	remain	point
89	finally	fill
90	room	try
91	past	chair
92	everybody	newspaper
93	along	bag
94	sell	evidence
95	oil	western
96	teach	mission
97	provide	tell
98	view	central
99	store	sell
100	our	land
\.


--
-- Data for Name: relation_38; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_38 (courierpartner_id, carrier_code, webhook_url) FROM stdin;
1	other	man
2	drive	marriage
3	actually	magazine
4	administration	would
5	want	group
6	why	everything
7	word	win
8	purpose	before
9	our	interest
10	doctor	could
11	mother	evening
12	talk	product
13	body	probably
14	as	fund
15	stop	question
16	inside	stand
17	fire	rock
18	character	against
19	current	pretty
20	west	although
21	behind	receive
22	never	as
23	member	hair
24	action	ten
25	wall	nice
26	forward	name
27	growth	particular
28	support	alone
29	black	run
30	wife	commercial
31	too	consumer
32	arrive	note
33	central	religious
34	relate	card
35	team	easy
36	seat	place
37	arm	may
38	loss	resource
39	despite	whom
40	position	protect
41	throw	pattern
42	question	range
43	teach	past
44	throughout	chance
45	what	pull
46	face	wear
47	sure	player
48	anyone	follow
49	sort	stuff
50	personal	side
51	forget	color
52	week	company
53	rich	over
54	fine	international
55	tough	make
56	control	popular
57	may	apply
58	deep	movie
59	add	despite
60	president	college
61	return	kitchen
62	red	involve
63	grow	probably
64	though	return
65	research	parent
66	hard	business
67	change	special
68	story	paper
69	speech	debate
70	item	such
71	whether	eye
72	truth	theory
73	science	necessary
74	hold	cultural
75	attention	total
76	somebody	live
77	because	doctor
78	and	mean
79	writer	inside
80	near	affect
81	fall	mission
82	main	actually
83	have	common
84	almost	man
85	drive	film
86	still	science
87	analysis	respond
88	gun	series
89	will	food
90	school	ask
91	picture	note
92	dark	analysis
93	himself	lay
94	gas	stand
95	will	of
96	soon	subject
97	young	crime
98	cultural	job
99	floor	might
100	modern	about
\.


--
-- Data for Name: relation_39; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_39 (product_id, category_products_category_id) FROM stdin;
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
-- Data for Name: relation_4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_4 (electronics_id, warranty_months, screen_size_in, role, band_size, sensor_mp, accessory_type) FROM stdin;
301	728	\N	electronics	\N	\N	\N
302	613	\N	electronics	\N	\N	\N
303	436	\N	electronics	\N	\N	\N
304	818	\N	electronics	\N	\N	\N
305	418	\N	electronics	\N	\N	\N
306	527	\N	electronics	\N	\N	\N
307	631	\N	electronics	\N	\N	\N
308	42	\N	electronics	\N	\N	\N
309	195	\N	electronics	\N	\N	\N
310	554	\N	electronics	\N	\N	\N
311	995	\N	electronics	\N	\N	\N
312	539	\N	electronics	\N	\N	\N
313	618	\N	electronics	\N	\N	\N
314	310	\N	electronics	\N	\N	\N
315	564	\N	electronics	\N	\N	\N
316	652	\N	electronics	\N	\N	\N
317	378	\N	electronics	\N	\N	\N
318	921	\N	electronics	\N	\N	\N
319	393	\N	electronics	\N	\N	\N
320	652	\N	electronics	\N	\N	\N
321	398	\N	electronics	\N	\N	\N
322	364	\N	electronics	\N	\N	\N
323	177	\N	electronics	\N	\N	\N
324	604	\N	electronics	\N	\N	\N
325	265	\N	electronics	\N	\N	\N
326	708	\N	electronics	\N	\N	\N
327	221	\N	electronics	\N	\N	\N
328	734	\N	electronics	\N	\N	\N
329	212	\N	electronics	\N	\N	\N
330	106	\N	electronics	\N	\N	\N
331	409	\N	electronics	\N	\N	\N
332	92	\N	electronics	\N	\N	\N
333	563	\N	electronics	\N	\N	\N
334	49	\N	electronics	\N	\N	\N
335	753	\N	electronics	\N	\N	\N
336	272	\N	electronics	\N	\N	\N
337	825	\N	electronics	\N	\N	\N
338	806	\N	electronics	\N	\N	\N
339	888	\N	electronics	\N	\N	\N
340	302	\N	electronics	\N	\N	\N
341	119	\N	electronics	\N	\N	\N
342	153	\N	electronics	\N	\N	\N
343	172	\N	electronics	\N	\N	\N
344	890	\N	electronics	\N	\N	\N
345	808	\N	electronics	\N	\N	\N
346	106	\N	electronics	\N	\N	\N
347	949	\N	electronics	\N	\N	\N
348	58	\N	electronics	\N	\N	\N
349	779	\N	electronics	\N	\N	\N
350	521	\N	electronics	\N	\N	\N
351	422	\N	electronics	\N	\N	\N
352	418	\N	electronics	\N	\N	\N
353	546	\N	electronics	\N	\N	\N
354	969	\N	electronics	\N	\N	\N
355	713	\N	electronics	\N	\N	\N
356	511	\N	electronics	\N	\N	\N
357	347	\N	electronics	\N	\N	\N
358	757	\N	electronics	\N	\N	\N
359	548	\N	electronics	\N	\N	\N
360	542	\N	electronics	\N	\N	\N
361	323	\N	electronics	\N	\N	\N
362	122	\N	electronics	\N	\N	\N
363	231	\N	electronics	\N	\N	\N
364	577	\N	electronics	\N	\N	\N
365	577	\N	electronics	\N	\N	\N
366	433	\N	electronics	\N	\N	\N
367	842	\N	electronics	\N	\N	\N
368	87	\N	electronics	\N	\N	\N
369	276	\N	electronics	\N	\N	\N
370	24	\N	electronics	\N	\N	\N
371	117	\N	electronics	\N	\N	\N
372	698	\N	electronics	\N	\N	\N
373	95	\N	electronics	\N	\N	\N
374	255	\N	electronics	\N	\N	\N
375	32	\N	electronics	\N	\N	\N
376	381	\N	electronics	\N	\N	\N
377	97	\N	electronics	\N	\N	\N
378	528	\N	electronics	\N	\N	\N
379	361	\N	electronics	\N	\N	\N
380	621	\N	electronics	\N	\N	\N
381	94	\N	electronics	\N	\N	\N
382	578	\N	electronics	\N	\N	\N
383	309	\N	electronics	\N	\N	\N
384	563	\N	electronics	\N	\N	\N
385	180	\N	electronics	\N	\N	\N
386	282	\N	electronics	\N	\N	\N
387	968	\N	electronics	\N	\N	\N
388	413	\N	electronics	\N	\N	\N
389	71	\N	electronics	\N	\N	\N
390	634	\N	electronics	\N	\N	\N
391	160	\N	electronics	\N	\N	\N
392	693	\N	electronics	\N	\N	\N
393	862	\N	electronics	\N	\N	\N
394	374	\N	electronics	\N	\N	\N
395	870	\N	electronics	\N	\N	\N
396	416	\N	electronics	\N	\N	\N
397	303	\N	electronics	\N	\N	\N
398	551	\N	electronics	\N	\N	\N
399	389	\N	electronics	\N	\N	\N
400	471	\N	electronics	\N	\N	\N
401	283	\N	computer	\N	\N	\N
402	55	\N	computer	\N	\N	\N
403	832	\N	computer	\N	\N	\N
404	544	\N	computer	\N	\N	\N
405	802	\N	computer	\N	\N	\N
406	822	\N	computer	\N	\N	\N
407	109	\N	computer	\N	\N	\N
408	120	\N	computer	\N	\N	\N
409	433	\N	computer	\N	\N	\N
410	632	\N	computer	\N	\N	\N
411	773	\N	computer	\N	\N	\N
412	651	\N	computer	\N	\N	\N
413	690	\N	computer	\N	\N	\N
414	916	\N	computer	\N	\N	\N
415	492	\N	computer	\N	\N	\N
416	407	\N	computer	\N	\N	\N
417	999	\N	computer	\N	\N	\N
418	761	\N	computer	\N	\N	\N
419	443	\N	computer	\N	\N	\N
420	950	\N	computer	\N	\N	\N
421	386	\N	computer	\N	\N	\N
422	964	\N	computer	\N	\N	\N
423	940	\N	computer	\N	\N	\N
424	970	\N	computer	\N	\N	\N
425	551	\N	computer	\N	\N	\N
426	434	\N	computer	\N	\N	\N
427	679	\N	computer	\N	\N	\N
428	180	\N	computer	\N	\N	\N
429	438	\N	computer	\N	\N	\N
430	718	\N	computer	\N	\N	\N
431	254	\N	computer	\N	\N	\N
432	397	\N	computer	\N	\N	\N
433	47	\N	computer	\N	\N	\N
434	979	\N	computer	\N	\N	\N
435	171	\N	computer	\N	\N	\N
436	790	\N	computer	\N	\N	\N
437	568	\N	computer	\N	\N	\N
438	828	\N	computer	\N	\N	\N
439	951	\N	computer	\N	\N	\N
440	800	\N	computer	\N	\N	\N
441	345	\N	computer	\N	\N	\N
442	358	\N	computer	\N	\N	\N
443	153	\N	computer	\N	\N	\N
444	202	\N	computer	\N	\N	\N
445	557	\N	computer	\N	\N	\N
446	568	\N	computer	\N	\N	\N
447	641	\N	computer	\N	\N	\N
448	31	\N	computer	\N	\N	\N
449	606	\N	computer	\N	\N	\N
450	950	\N	computer	\N	\N	\N
451	208	\N	computer	\N	\N	\N
452	231	\N	computer	\N	\N	\N
453	549	\N	computer	\N	\N	\N
454	214	\N	computer	\N	\N	\N
455	630	\N	computer	\N	\N	\N
456	54	\N	computer	\N	\N	\N
457	980	\N	computer	\N	\N	\N
458	875	\N	computer	\N	\N	\N
459	517	\N	computer	\N	\N	\N
460	839	\N	computer	\N	\N	\N
461	834	\N	computer	\N	\N	\N
462	735	\N	computer	\N	\N	\N
463	679	\N	computer	\N	\N	\N
464	39	\N	computer	\N	\N	\N
465	876	\N	computer	\N	\N	\N
466	409	\N	computer	\N	\N	\N
467	192	\N	computer	\N	\N	\N
468	501	\N	computer	\N	\N	\N
469	930	\N	computer	\N	\N	\N
470	867	\N	computer	\N	\N	\N
471	610	\N	computer	\N	\N	\N
472	535	\N	computer	\N	\N	\N
473	350	\N	computer	\N	\N	\N
474	913	\N	computer	\N	\N	\N
475	481	\N	computer	\N	\N	\N
476	95	\N	computer	\N	\N	\N
477	404	\N	computer	\N	\N	\N
478	566	\N	computer	\N	\N	\N
479	438	\N	computer	\N	\N	\N
480	611	\N	computer	\N	\N	\N
481	886	\N	computer	\N	\N	\N
482	426	\N	computer	\N	\N	\N
483	38	\N	computer	\N	\N	\N
484	345	\N	computer	\N	\N	\N
485	653	\N	computer	\N	\N	\N
486	868	\N	computer	\N	\N	\N
487	945	\N	computer	\N	\N	\N
488	150	\N	computer	\N	\N	\N
489	414	\N	computer	\N	\N	\N
490	350	\N	computer	\N	\N	\N
491	729	\N	computer	\N	\N	\N
492	773	\N	computer	\N	\N	\N
493	77	\N	computer	\N	\N	\N
494	424	\N	computer	\N	\N	\N
495	241	\N	computer	\N	\N	\N
496	49	\N	computer	\N	\N	\N
497	842	\N	computer	\N	\N	\N
498	949	\N	computer	\N	\N	\N
499	453	\N	computer	\N	\N	\N
500	30	\N	computer	\N	\N	\N
601	139	\N	laptop	\N	\N	\N
602	620	\N	laptop	\N	\N	\N
603	347	\N	laptop	\N	\N	\N
604	20	\N	laptop	\N	\N	\N
605	855	\N	laptop	\N	\N	\N
606	426	\N	laptop	\N	\N	\N
607	50	\N	laptop	\N	\N	\N
608	285	\N	laptop	\N	\N	\N
609	590	\N	laptop	\N	\N	\N
610	147	\N	laptop	\N	\N	\N
611	406	\N	laptop	\N	\N	\N
612	39	\N	laptop	\N	\N	\N
613	40	\N	laptop	\N	\N	\N
614	940	\N	laptop	\N	\N	\N
615	408	\N	laptop	\N	\N	\N
616	170	\N	laptop	\N	\N	\N
617	842	\N	laptop	\N	\N	\N
618	872	\N	laptop	\N	\N	\N
619	166	\N	laptop	\N	\N	\N
620	581	\N	laptop	\N	\N	\N
621	490	\N	laptop	\N	\N	\N
622	455	\N	laptop	\N	\N	\N
623	127	\N	laptop	\N	\N	\N
624	185	\N	laptop	\N	\N	\N
625	240	\N	laptop	\N	\N	\N
626	174	\N	laptop	\N	\N	\N
627	290	\N	laptop	\N	\N	\N
628	122	\N	laptop	\N	\N	\N
629	633	\N	laptop	\N	\N	\N
630	373	\N	laptop	\N	\N	\N
631	100	\N	laptop	\N	\N	\N
632	487	\N	laptop	\N	\N	\N
633	970	\N	laptop	\N	\N	\N
634	935	\N	laptop	\N	\N	\N
635	185	\N	laptop	\N	\N	\N
636	999	\N	laptop	\N	\N	\N
637	453	\N	laptop	\N	\N	\N
638	766	\N	laptop	\N	\N	\N
639	520	\N	laptop	\N	\N	\N
640	905	\N	laptop	\N	\N	\N
641	328	\N	laptop	\N	\N	\N
642	231	\N	laptop	\N	\N	\N
643	106	\N	laptop	\N	\N	\N
644	384	\N	laptop	\N	\N	\N
645	397	\N	laptop	\N	\N	\N
646	660	\N	laptop	\N	\N	\N
647	179	\N	laptop	\N	\N	\N
648	109	\N	laptop	\N	\N	\N
649	975	\N	laptop	\N	\N	\N
650	576	\N	laptop	\N	\N	\N
651	844	\N	laptop	\N	\N	\N
652	880	\N	laptop	\N	\N	\N
653	928	\N	laptop	\N	\N	\N
654	353	\N	laptop	\N	\N	\N
655	215	\N	laptop	\N	\N	\N
656	322	\N	laptop	\N	\N	\N
657	9	\N	laptop	\N	\N	\N
658	619	\N	laptop	\N	\N	\N
659	240	\N	laptop	\N	\N	\N
660	728	\N	laptop	\N	\N	\N
661	96	\N	laptop	\N	\N	\N
662	772	\N	laptop	\N	\N	\N
663	965	\N	laptop	\N	\N	\N
664	988	\N	laptop	\N	\N	\N
665	442	\N	laptop	\N	\N	\N
666	609	\N	laptop	\N	\N	\N
667	241	\N	laptop	\N	\N	\N
668	137	\N	laptop	\N	\N	\N
669	726	\N	laptop	\N	\N	\N
670	393	\N	laptop	\N	\N	\N
671	737	\N	laptop	\N	\N	\N
672	740	\N	laptop	\N	\N	\N
673	74	\N	laptop	\N	\N	\N
674	888	\N	laptop	\N	\N	\N
675	684	\N	laptop	\N	\N	\N
676	955	\N	laptop	\N	\N	\N
677	201	\N	laptop	\N	\N	\N
678	686	\N	laptop	\N	\N	\N
679	56	\N	laptop	\N	\N	\N
680	46	\N	laptop	\N	\N	\N
681	881	\N	laptop	\N	\N	\N
682	798	\N	laptop	\N	\N	\N
683	133	\N	laptop	\N	\N	\N
684	358	\N	laptop	\N	\N	\N
685	448	\N	laptop	\N	\N	\N
686	155	\N	laptop	\N	\N	\N
687	69	\N	laptop	\N	\N	\N
688	558	\N	laptop	\N	\N	\N
689	659	\N	laptop	\N	\N	\N
690	490	\N	laptop	\N	\N	\N
691	216	\N	laptop	\N	\N	\N
692	99	\N	laptop	\N	\N	\N
693	707	\N	laptop	\N	\N	\N
694	934	\N	laptop	\N	\N	\N
695	588	\N	laptop	\N	\N	\N
696	687	\N	laptop	\N	\N	\N
697	449	\N	laptop	\N	\N	\N
698	453	\N	laptop	\N	\N	\N
699	467	\N	laptop	\N	\N	\N
700	778	\N	laptop	\N	\N	\N
701	489	771	tablet	\N	\N	\N
702	65	152	tablet	\N	\N	\N
703	847	369	tablet	\N	\N	\N
704	809	555	tablet	\N	\N	\N
705	514	142	tablet	\N	\N	\N
706	481	748	tablet	\N	\N	\N
707	129	729	tablet	\N	\N	\N
708	789	276	tablet	\N	\N	\N
709	291	13	tablet	\N	\N	\N
710	580	412	tablet	\N	\N	\N
711	620	635	tablet	\N	\N	\N
712	94	626	tablet	\N	\N	\N
713	193	174	tablet	\N	\N	\N
714	121	569	tablet	\N	\N	\N
715	166	547	tablet	\N	\N	\N
716	92	516	tablet	\N	\N	\N
717	274	630	tablet	\N	\N	\N
718	72	877	tablet	\N	\N	\N
719	443	626	tablet	\N	\N	\N
720	433	447	tablet	\N	\N	\N
721	220	787	tablet	\N	\N	\N
722	977	870	tablet	\N	\N	\N
723	524	933	tablet	\N	\N	\N
724	235	830	tablet	\N	\N	\N
725	889	458	tablet	\N	\N	\N
726	264	159	tablet	\N	\N	\N
727	110	490	tablet	\N	\N	\N
728	484	320	tablet	\N	\N	\N
729	920	214	tablet	\N	\N	\N
730	679	36	tablet	\N	\N	\N
731	549	886	tablet	\N	\N	\N
732	661	102	tablet	\N	\N	\N
733	206	529	tablet	\N	\N	\N
734	504	589	tablet	\N	\N	\N
735	724	659	tablet	\N	\N	\N
736	410	567	tablet	\N	\N	\N
737	641	409	tablet	\N	\N	\N
738	131	63	tablet	\N	\N	\N
739	654	98	tablet	\N	\N	\N
740	610	433	tablet	\N	\N	\N
741	334	802	tablet	\N	\N	\N
742	967	689	tablet	\N	\N	\N
743	789	380	tablet	\N	\N	\N
744	291	143	tablet	\N	\N	\N
745	29	491	tablet	\N	\N	\N
746	504	821	tablet	\N	\N	\N
747	386	823	tablet	\N	\N	\N
748	256	689	tablet	\N	\N	\N
749	301	626	tablet	\N	\N	\N
750	70	75	tablet	\N	\N	\N
751	363	316	tablet	\N	\N	\N
752	871	335	tablet	\N	\N	\N
753	898	539	tablet	\N	\N	\N
754	255	650	tablet	\N	\N	\N
755	980	314	tablet	\N	\N	\N
756	602	5	tablet	\N	\N	\N
757	152	996	tablet	\N	\N	\N
758	266	409	tablet	\N	\N	\N
759	324	396	tablet	\N	\N	\N
760	40	457	tablet	\N	\N	\N
761	718	919	tablet	\N	\N	\N
762	524	814	tablet	\N	\N	\N
763	71	73	tablet	\N	\N	\N
764	732	848	tablet	\N	\N	\N
765	470	444	tablet	\N	\N	\N
766	250	316	tablet	\N	\N	\N
767	931	316	tablet	\N	\N	\N
768	295	49	tablet	\N	\N	\N
769	44	212	tablet	\N	\N	\N
770	118	253	tablet	\N	\N	\N
771	31	200	tablet	\N	\N	\N
772	451	747	tablet	\N	\N	\N
773	178	858	tablet	\N	\N	\N
774	230	142	tablet	\N	\N	\N
775	329	936	tablet	\N	\N	\N
776	200	408	tablet	\N	\N	\N
777	266	556	tablet	\N	\N	\N
778	286	91	tablet	\N	\N	\N
779	137	924	tablet	\N	\N	\N
780	530	53	tablet	\N	\N	\N
781	327	407	tablet	\N	\N	\N
782	852	515	tablet	\N	\N	\N
783	135	569	tablet	\N	\N	\N
784	607	46	tablet	\N	\N	\N
785	981	307	tablet	\N	\N	\N
786	196	549	tablet	\N	\N	\N
787	236	91	tablet	\N	\N	\N
788	674	862	tablet	\N	\N	\N
789	155	821	tablet	\N	\N	\N
790	726	602	tablet	\N	\N	\N
791	965	839	tablet	\N	\N	\N
792	994	885	tablet	\N	\N	\N
793	65	131	tablet	\N	\N	\N
794	525	677	tablet	\N	\N	\N
795	867	975	tablet	\N	\N	\N
796	365	396	tablet	\N	\N	\N
797	924	636	tablet	\N	\N	\N
798	78	27	tablet	\N	\N	\N
799	63	781	tablet	\N	\N	\N
800	466	360	tablet	\N	\N	\N
801	694	\N	smartwatch	rule	\N	\N
802	133	\N	smartwatch	fear	\N	\N
803	734	\N	smartwatch	bed	\N	\N
804	768	\N	smartwatch	piece	\N	\N
805	124	\N	smartwatch	so	\N	\N
806	333	\N	smartwatch	series	\N	\N
807	225	\N	smartwatch	lay	\N	\N
808	467	\N	smartwatch	civil	\N	\N
809	887	\N	smartwatch	direction	\N	\N
810	577	\N	smartwatch	newspaper	\N	\N
811	61	\N	smartwatch	hope	\N	\N
812	319	\N	smartwatch	because	\N	\N
813	18	\N	smartwatch	fly	\N	\N
814	869	\N	smartwatch	Mr	\N	\N
815	24	\N	smartwatch	onto	\N	\N
816	157	\N	smartwatch	now	\N	\N
817	42	\N	smartwatch	business	\N	\N
818	552	\N	smartwatch	similar	\N	\N
819	40	\N	smartwatch	wide	\N	\N
820	690	\N	smartwatch	represent	\N	\N
821	194	\N	smartwatch	girl	\N	\N
822	421	\N	smartwatch	environment	\N	\N
823	454	\N	smartwatch	natural	\N	\N
824	81	\N	smartwatch	say	\N	\N
825	166	\N	smartwatch	guess	\N	\N
826	274	\N	smartwatch	simple	\N	\N
827	981	\N	smartwatch	see	\N	\N
828	892	\N	smartwatch	hour	\N	\N
829	246	\N	smartwatch	few	\N	\N
830	272	\N	smartwatch	arm	\N	\N
831	270	\N	smartwatch	Republican	\N	\N
832	271	\N	smartwatch	billion	\N	\N
833	503	\N	smartwatch	piece	\N	\N
834	114	\N	smartwatch	common	\N	\N
835	59	\N	smartwatch	shake	\N	\N
836	563	\N	smartwatch	front	\N	\N
837	60	\N	smartwatch	recently	\N	\N
838	911	\N	smartwatch	me	\N	\N
839	610	\N	smartwatch	near	\N	\N
840	895	\N	smartwatch	edge	\N	\N
841	298	\N	smartwatch	charge	\N	\N
842	575	\N	smartwatch	type	\N	\N
843	602	\N	smartwatch	but	\N	\N
844	339	\N	smartwatch	strategy	\N	\N
845	69	\N	smartwatch	international	\N	\N
846	590	\N	smartwatch	hospital	\N	\N
847	783	\N	smartwatch	it	\N	\N
848	545	\N	smartwatch	point	\N	\N
849	368	\N	smartwatch	real	\N	\N
850	792	\N	smartwatch	rate	\N	\N
851	663	\N	smartwatch	raise	\N	\N
852	721	\N	smartwatch	age	\N	\N
853	25	\N	smartwatch	four	\N	\N
854	932	\N	smartwatch	area	\N	\N
855	437	\N	smartwatch	actually	\N	\N
856	922	\N	smartwatch	lead	\N	\N
857	796	\N	smartwatch	wonder	\N	\N
858	971	\N	smartwatch	name	\N	\N
859	25	\N	smartwatch	son	\N	\N
860	412	\N	smartwatch	well	\N	\N
861	715	\N	smartwatch	fast	\N	\N
862	571	\N	smartwatch	ok	\N	\N
863	475	\N	smartwatch	democratic	\N	\N
864	138	\N	smartwatch	easy	\N	\N
865	653	\N	smartwatch	world	\N	\N
866	712	\N	smartwatch	parent	\N	\N
867	781	\N	smartwatch	source	\N	\N
868	712	\N	smartwatch	today	\N	\N
869	598	\N	smartwatch	price	\N	\N
870	434	\N	smartwatch	door	\N	\N
871	12	\N	smartwatch	chance	\N	\N
872	781	\N	smartwatch	movement	\N	\N
873	753	\N	smartwatch	on	\N	\N
874	529	\N	smartwatch	available	\N	\N
875	808	\N	smartwatch	another	\N	\N
876	597	\N	smartwatch	physical	\N	\N
877	798	\N	smartwatch	their	\N	\N
878	936	\N	smartwatch	dinner	\N	\N
879	403	\N	smartwatch	yet	\N	\N
880	516	\N	smartwatch	want	\N	\N
881	267	\N	smartwatch	quickly	\N	\N
882	824	\N	smartwatch	very	\N	\N
883	863	\N	smartwatch	father	\N	\N
884	281	\N	smartwatch	less	\N	\N
885	994	\N	smartwatch	experience	\N	\N
886	480	\N	smartwatch	teach	\N	\N
887	802	\N	smartwatch	main	\N	\N
888	111	\N	smartwatch	event	\N	\N
889	593	\N	smartwatch	chair	\N	\N
890	425	\N	smartwatch	board	\N	\N
891	52	\N	smartwatch	people	\N	\N
892	999	\N	smartwatch	firm	\N	\N
893	164	\N	smartwatch	standard	\N	\N
894	361	\N	smartwatch	wall	\N	\N
895	334	\N	smartwatch	I	\N	\N
896	980	\N	smartwatch	item	\N	\N
897	102	\N	smartwatch	she	\N	\N
898	760	\N	smartwatch	house	\N	\N
899	470	\N	smartwatch	visit	\N	\N
900	314	\N	smartwatch	mother	\N	\N
901	522	\N	camera	\N	514	\N
902	375	\N	camera	\N	893	\N
903	832	\N	camera	\N	689	\N
904	259	\N	camera	\N	778	\N
905	572	\N	camera	\N	229	\N
906	725	\N	camera	\N	861	\N
907	419	\N	camera	\N	686	\N
908	115	\N	camera	\N	257	\N
909	204	\N	camera	\N	214	\N
910	386	\N	camera	\N	356	\N
911	791	\N	camera	\N	519	\N
912	93	\N	camera	\N	529	\N
913	225	\N	camera	\N	112	\N
914	683	\N	camera	\N	451	\N
915	166	\N	camera	\N	221	\N
916	356	\N	camera	\N	765	\N
917	32	\N	camera	\N	227	\N
918	351	\N	camera	\N	18	\N
919	715	\N	camera	\N	206	\N
920	75	\N	camera	\N	437	\N
921	771	\N	camera	\N	833	\N
922	956	\N	camera	\N	402	\N
923	352	\N	camera	\N	603	\N
924	773	\N	camera	\N	630	\N
925	952	\N	camera	\N	824	\N
926	628	\N	camera	\N	484	\N
927	735	\N	camera	\N	30	\N
928	176	\N	camera	\N	638	\N
929	869	\N	camera	\N	301	\N
930	70	\N	camera	\N	407	\N
931	863	\N	camera	\N	935	\N
932	506	\N	camera	\N	102	\N
933	923	\N	camera	\N	732	\N
934	992	\N	camera	\N	571	\N
935	301	\N	camera	\N	807	\N
936	488	\N	camera	\N	137	\N
937	216	\N	camera	\N	285	\N
938	510	\N	camera	\N	307	\N
939	819	\N	camera	\N	918	\N
940	397	\N	camera	\N	903	\N
941	739	\N	camera	\N	173	\N
942	95	\N	camera	\N	597	\N
943	53	\N	camera	\N	536	\N
944	815	\N	camera	\N	112	\N
945	133	\N	camera	\N	944	\N
946	532	\N	camera	\N	445	\N
947	34	\N	camera	\N	343	\N
948	173	\N	camera	\N	914	\N
949	824	\N	camera	\N	687	\N
950	297	\N	camera	\N	645	\N
951	400	\N	camera	\N	892	\N
952	390	\N	camera	\N	295	\N
953	342	\N	camera	\N	430	\N
954	594	\N	camera	\N	524	\N
955	887	\N	camera	\N	671	\N
956	530	\N	camera	\N	971	\N
957	822	\N	camera	\N	655	\N
958	262	\N	camera	\N	797	\N
959	800	\N	camera	\N	88	\N
960	711	\N	camera	\N	446	\N
961	489	\N	camera	\N	180	\N
962	130	\N	camera	\N	44	\N
963	581	\N	camera	\N	516	\N
964	349	\N	camera	\N	100	\N
965	75	\N	camera	\N	180	\N
966	544	\N	camera	\N	581	\N
967	699	\N	camera	\N	19	\N
968	783	\N	camera	\N	632	\N
969	55	\N	camera	\N	758	\N
970	196	\N	camera	\N	163	\N
971	553	\N	camera	\N	558	\N
972	197	\N	camera	\N	520	\N
973	254	\N	camera	\N	688	\N
974	730	\N	camera	\N	648	\N
975	513	\N	camera	\N	657	\N
976	550	\N	camera	\N	678	\N
977	173	\N	camera	\N	756	\N
978	624	\N	camera	\N	225	\N
979	651	\N	camera	\N	268	\N
980	885	\N	camera	\N	158	\N
981	309	\N	camera	\N	974	\N
982	633	\N	camera	\N	203	\N
983	495	\N	camera	\N	633	\N
984	145	\N	camera	\N	400	\N
985	794	\N	camera	\N	506	\N
986	42	\N	camera	\N	276	\N
987	804	\N	camera	\N	442	\N
988	434	\N	camera	\N	773	\N
989	779	\N	camera	\N	199	\N
990	297	\N	camera	\N	911	\N
991	723	\N	camera	\N	346	\N
992	723	\N	camera	\N	392	\N
993	54	\N	camera	\N	445	\N
994	880	\N	camera	\N	705	\N
995	226	\N	camera	\N	635	\N
996	518	\N	camera	\N	451	\N
997	388	\N	camera	\N	646	\N
998	39	\N	camera	\N	516	\N
999	123	\N	camera	\N	281	\N
1000	6	\N	camera	\N	381	\N
1001	56	\N	phone	\N	\N	\N
1002	131	\N	phone	\N	\N	\N
1003	275	\N	phone	\N	\N	\N
1004	923	\N	phone	\N	\N	\N
1005	617	\N	phone	\N	\N	\N
1006	555	\N	phone	\N	\N	\N
1007	823	\N	phone	\N	\N	\N
1008	699	\N	phone	\N	\N	\N
1009	625	\N	phone	\N	\N	\N
1010	562	\N	phone	\N	\N	\N
1011	81	\N	phone	\N	\N	\N
1012	673	\N	phone	\N	\N	\N
1013	950	\N	phone	\N	\N	\N
1014	815	\N	phone	\N	\N	\N
1015	377	\N	phone	\N	\N	\N
1016	341	\N	phone	\N	\N	\N
1017	785	\N	phone	\N	\N	\N
1018	166	\N	phone	\N	\N	\N
1019	361	\N	phone	\N	\N	\N
1020	549	\N	phone	\N	\N	\N
1021	624	\N	phone	\N	\N	\N
1022	672	\N	phone	\N	\N	\N
1023	688	\N	phone	\N	\N	\N
1024	385	\N	phone	\N	\N	\N
1025	317	\N	phone	\N	\N	\N
1026	439	\N	phone	\N	\N	\N
1027	430	\N	phone	\N	\N	\N
1028	518	\N	phone	\N	\N	\N
1029	956	\N	phone	\N	\N	\N
1030	950	\N	phone	\N	\N	\N
1031	30	\N	phone	\N	\N	\N
1032	399	\N	phone	\N	\N	\N
1033	574	\N	phone	\N	\N	\N
1034	663	\N	phone	\N	\N	\N
1035	450	\N	phone	\N	\N	\N
1036	150	\N	phone	\N	\N	\N
1037	709	\N	phone	\N	\N	\N
1038	714	\N	phone	\N	\N	\N
1039	376	\N	phone	\N	\N	\N
1040	226	\N	phone	\N	\N	\N
1041	173	\N	phone	\N	\N	\N
1042	658	\N	phone	\N	\N	\N
1043	846	\N	phone	\N	\N	\N
1044	778	\N	phone	\N	\N	\N
1045	127	\N	phone	\N	\N	\N
1046	778	\N	phone	\N	\N	\N
1047	813	\N	phone	\N	\N	\N
1048	554	\N	phone	\N	\N	\N
1049	839	\N	phone	\N	\N	\N
1050	328	\N	phone	\N	\N	\N
1051	463	\N	phone	\N	\N	\N
1052	475	\N	phone	\N	\N	\N
1053	375	\N	phone	\N	\N	\N
1054	384	\N	phone	\N	\N	\N
1055	98	\N	phone	\N	\N	\N
1056	315	\N	phone	\N	\N	\N
1057	763	\N	phone	\N	\N	\N
1058	991	\N	phone	\N	\N	\N
1059	725	\N	phone	\N	\N	\N
1060	990	\N	phone	\N	\N	\N
1061	988	\N	phone	\N	\N	\N
1062	904	\N	phone	\N	\N	\N
1063	770	\N	phone	\N	\N	\N
1064	40	\N	phone	\N	\N	\N
1065	770	\N	phone	\N	\N	\N
1066	581	\N	phone	\N	\N	\N
1067	800	\N	phone	\N	\N	\N
1068	949	\N	phone	\N	\N	\N
1069	978	\N	phone	\N	\N	\N
1070	571	\N	phone	\N	\N	\N
1071	136	\N	phone	\N	\N	\N
1072	199	\N	phone	\N	\N	\N
1073	131	\N	phone	\N	\N	\N
1074	280	\N	phone	\N	\N	\N
1075	718	\N	phone	\N	\N	\N
1076	965	\N	phone	\N	\N	\N
1077	317	\N	phone	\N	\N	\N
1078	774	\N	phone	\N	\N	\N
1079	300	\N	phone	\N	\N	\N
1080	9	\N	phone	\N	\N	\N
1081	512	\N	phone	\N	\N	\N
1082	609	\N	phone	\N	\N	\N
1083	136	\N	phone	\N	\N	\N
1084	228	\N	phone	\N	\N	\N
1085	188	\N	phone	\N	\N	\N
1086	907	\N	phone	\N	\N	\N
1087	89	\N	phone	\N	\N	\N
1088	210	\N	phone	\N	\N	\N
1089	812	\N	phone	\N	\N	\N
1090	586	\N	phone	\N	\N	\N
1091	186	\N	phone	\N	\N	\N
1092	704	\N	phone	\N	\N	\N
1093	468	\N	phone	\N	\N	\N
1094	682	\N	phone	\N	\N	\N
1095	860	\N	phone	\N	\N	\N
1096	530	\N	phone	\N	\N	\N
1097	195	\N	phone	\N	\N	\N
1098	355	\N	phone	\N	\N	\N
1099	9	\N	phone	\N	\N	\N
1100	685	\N	phone	\N	\N	\N
1101	285	\N	accessories	\N	\N	dog
1102	167	\N	accessories	\N	\N	east
1103	677	\N	accessories	\N	\N	south
1104	961	\N	accessories	\N	\N	without
1105	584	\N	accessories	\N	\N	civil
1106	442	\N	accessories	\N	\N	thousand
1107	516	\N	accessories	\N	\N	civil
1108	580	\N	accessories	\N	\N	foreign
1109	439	\N	accessories	\N	\N	customer
1110	545	\N	accessories	\N	\N	clearly
1111	195	\N	accessories	\N	\N	professional
1112	727	\N	accessories	\N	\N	determine
1113	572	\N	accessories	\N	\N	house
1114	1	\N	accessories	\N	\N	during
1115	672	\N	accessories	\N	\N	Democrat
1116	818	\N	accessories	\N	\N	include
1117	236	\N	accessories	\N	\N	determine
1118	97	\N	accessories	\N	\N	organization
1119	365	\N	accessories	\N	\N	process
1120	875	\N	accessories	\N	\N	customer
1121	319	\N	accessories	\N	\N	tree
1122	315	\N	accessories	\N	\N	success
1123	689	\N	accessories	\N	\N	daughter
1124	732	\N	accessories	\N	\N	eight
1125	127	\N	accessories	\N	\N	whole
1126	936	\N	accessories	\N	\N	article
1127	220	\N	accessories	\N	\N	expert
1128	477	\N	accessories	\N	\N	second
1129	713	\N	accessories	\N	\N	lose
1130	76	\N	accessories	\N	\N	alone
1131	210	\N	accessories	\N	\N	simply
1132	190	\N	accessories	\N	\N	upon
1133	385	\N	accessories	\N	\N	large
1134	227	\N	accessories	\N	\N	project
1135	300	\N	accessories	\N	\N	body
1136	773	\N	accessories	\N	\N	approach
1137	220	\N	accessories	\N	\N	hit
1138	432	\N	accessories	\N	\N	relate
1139	780	\N	accessories	\N	\N	organization
1140	383	\N	accessories	\N	\N	scene
1141	917	\N	accessories	\N	\N	I
1142	597	\N	accessories	\N	\N	compare
1143	671	\N	accessories	\N	\N	allow
1144	138	\N	accessories	\N	\N	decision
1145	685	\N	accessories	\N	\N	minute
1146	729	\N	accessories	\N	\N	past
1147	209	\N	accessories	\N	\N	stay
1148	836	\N	accessories	\N	\N	resource
1149	292	\N	accessories	\N	\N	key
1150	114	\N	accessories	\N	\N	manager
1151	532	\N	accessories	\N	\N	push
1152	522	\N	accessories	\N	\N	night
1153	159	\N	accessories	\N	\N	certain
1154	422	\N	accessories	\N	\N	evening
1155	408	\N	accessories	\N	\N	find
1156	170	\N	accessories	\N	\N	computer
1157	815	\N	accessories	\N	\N	your
1158	619	\N	accessories	\N	\N	public
1159	154	\N	accessories	\N	\N	organization
1160	757	\N	accessories	\N	\N	foreign
1161	568	\N	accessories	\N	\N	month
1162	100	\N	accessories	\N	\N	drug
1163	835	\N	accessories	\N	\N	lawyer
1164	368	\N	accessories	\N	\N	two
1165	314	\N	accessories	\N	\N	book
1166	292	\N	accessories	\N	\N	bar
1167	984	\N	accessories	\N	\N	professional
1168	524	\N	accessories	\N	\N	play
1169	918	\N	accessories	\N	\N	something
1170	393	\N	accessories	\N	\N	film
1171	172	\N	accessories	\N	\N	or
1172	19	\N	accessories	\N	\N	able
1173	431	\N	accessories	\N	\N	set
1174	827	\N	accessories	\N	\N	need
1175	109	\N	accessories	\N	\N	read
1176	811	\N	accessories	\N	\N	major
1177	363	\N	accessories	\N	\N	allow
1178	484	\N	accessories	\N	\N	according
1179	9	\N	accessories	\N	\N	raise
1180	443	\N	accessories	\N	\N	fine
1181	464	\N	accessories	\N	\N	born
1182	54	\N	accessories	\N	\N	arrive
1183	933	\N	accessories	\N	\N	out
1184	85	\N	accessories	\N	\N	difference
1185	820	\N	accessories	\N	\N	general
1186	617	\N	accessories	\N	\N	seem
1187	339	\N	accessories	\N	\N	product
1188	571	\N	accessories	\N	\N	improve
1189	579	\N	accessories	\N	\N	camera
1190	396	\N	accessories	\N	\N	fund
1191	829	\N	accessories	\N	\N	police
1192	1	\N	accessories	\N	\N	debate
1193	213	\N	accessories	\N	\N	five
1194	942	\N	accessories	\N	\N	store
1195	928	\N	accessories	\N	\N	night
1196	404	\N	accessories	\N	\N	brother
1197	558	\N	accessories	\N	\N	hard
1198	482	\N	accessories	\N	\N	piece
1199	388	\N	accessories	\N	\N	and
1200	625	\N	accessories	\N	\N	light
\.


--
-- Data for Name: relation_40; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_40 (product_id, tag_id) FROM stdin;
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
-- Data for Name: relation_41; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_41 (product_id, bought_together_product_product_id) FROM stdin;
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
-- Data for Name: relation_42; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_42 (customer_id, product_id) FROM stdin;
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
-- Data for Name: relation_43; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_43 (customer_id, wishlist_id, product_id) FROM stdin;
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
-- Data for Name: relation_44; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_44 (customer_id, review_id, reviews_product_id) FROM stdin;
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
-- Data for Name: relation_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_45 (custorder_id, customer_orders_customer_id) FROM stdin;
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
-- Data for Name: relation_46; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_46 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_47; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_47 (custorder_id, payment_order_customer_id, payment_order_payment_method_id) FROM stdin;
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
-- Data for Name: relation_48; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_48 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_49; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_49 (promotion_id, coupon_code, order_coupons_custorder_id) FROM stdin;
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
-- Data for Name: relation_5; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_5 (computer_id, cpu, ram_gb, battery_wh, role) FROM stdin;
401	you	956	\N	computer
402	game	102	\N	computer
403	table	44	\N	computer
404	leader	521	\N	computer
405	fear	582	\N	computer
406	wear	486	\N	computer
407	assume	576	\N	computer
408	save	796	\N	computer
409	section	901	\N	computer
410	fine	446	\N	computer
411	marriage	836	\N	computer
412	instead	625	\N	computer
413	us	117	\N	computer
414	soon	350	\N	computer
415	scientist	919	\N	computer
416	early	734	\N	computer
417	back	994	\N	computer
418	else	483	\N	computer
419	finally	452	\N	computer
420	drop	273	\N	computer
421	home	425	\N	computer
422	account	188	\N	computer
423	mouth	160	\N	computer
424	blue	261	\N	computer
425	people	713	\N	computer
426	begin	930	\N	computer
427	inside	245	\N	computer
428	major	385	\N	computer
429	away	242	\N	computer
430	enter	517	\N	computer
431	information	408	\N	computer
432	experience	92	\N	computer
433	same	531	\N	computer
434	firm	880	\N	computer
435	financial	610	\N	computer
436	method	548	\N	computer
437	hour	172	\N	computer
438	consumer	206	\N	computer
439	true	156	\N	computer
440	appear	739	\N	computer
441	remember	951	\N	computer
442	option	394	\N	computer
443	table	977	\N	computer
444	lay	73	\N	computer
445	billion	440	\N	computer
446	brother	472	\N	computer
447	possible	958	\N	computer
448	show	765	\N	computer
449	kind	612	\N	computer
450	policy	248	\N	computer
451	impact	678	\N	computer
452	he	305	\N	computer
453	phone	299	\N	computer
454	factor	723	\N	computer
455	meeting	382	\N	computer
456	notice	849	\N	computer
457	career	946	\N	computer
458	somebody	446	\N	computer
459	head	520	\N	computer
460	probably	970	\N	computer
461	condition	734	\N	computer
462	development	124	\N	computer
463	day	494	\N	computer
464	suggest	654	\N	computer
465	pass	421	\N	computer
466	company	279	\N	computer
467	TV	573	\N	computer
468	carry	220	\N	computer
469	let	250	\N	computer
470	floor	433	\N	computer
471	main	515	\N	computer
472	impact	370	\N	computer
473	ten	928	\N	computer
474	leg	152	\N	computer
475	just	45	\N	computer
476	business	410	\N	computer
477	institution	275	\N	computer
478	indeed	971	\N	computer
479	much	312	\N	computer
480	of	604	\N	computer
481	give	622	\N	computer
482	involve	401	\N	computer
483	care	588	\N	computer
484	use	956	\N	computer
485	building	380	\N	computer
486	may	553	\N	computer
487	still	165	\N	computer
488	someone	918	\N	computer
489	race	325	\N	computer
490	couple	873	\N	computer
491	so	65	\N	computer
492	adult	993	\N	computer
493	interesting	726	\N	computer
494	realize	86	\N	computer
495	candidate	216	\N	computer
496	model	756	\N	computer
497	air	557	\N	computer
498	trouble	304	\N	computer
499	left	834	\N	computer
500	market	324	\N	computer
601	very	500	70	laptop
602	many	326	912	laptop
603	region	426	872	laptop
604	land	185	931	laptop
605	design	838	259	laptop
606	rise	974	13	laptop
607	change	119	442	laptop
608	same	366	787	laptop
609	price	289	624	laptop
610	herself	361	97	laptop
611	cause	461	154	laptop
612	employee	748	656	laptop
613	occur	532	520	laptop
614	choose	533	815	laptop
615	draw	14	396	laptop
616	recognize	608	603	laptop
617	describe	362	449	laptop
618	training	91	453	laptop
619	deal	138	453	laptop
620	notice	346	994	laptop
621	middle	9	590	laptop
622	yes	671	168	laptop
623	high	323	269	laptop
624	different	825	934	laptop
625	speak	568	724	laptop
626	get	533	631	laptop
627	might	690	159	laptop
628	writer	436	390	laptop
629	attention	909	451	laptop
630	rule	856	212	laptop
631	fast	552	397	laptop
632	still	460	535	laptop
633	than	1000	605	laptop
634	money	358	795	laptop
635	never	899	795	laptop
636	section	951	564	laptop
637	doctor	344	911	laptop
638	free	480	285	laptop
639	avoid	99	169	laptop
640	act	910	629	laptop
641	half	150	359	laptop
642	throughout	806	831	laptop
643	show	716	106	laptop
644	plan	574	330	laptop
645	expert	499	734	laptop
646	true	596	397	laptop
647	fly	103	502	laptop
648	manage	552	127	laptop
649	miss	694	573	laptop
650	single	607	819	laptop
651	water	550	930	laptop
652	step	609	956	laptop
653	lose	635	778	laptop
654	chance	369	371	laptop
655	identify	806	924	laptop
656	mission	407	716	laptop
657	woman	399	667	laptop
658	standard	803	799	laptop
659	cultural	68	843	laptop
660	use	893	301	laptop
661	I	828	418	laptop
662	ten	349	148	laptop
663	low	961	214	laptop
664	million	992	151	laptop
665	maintain	138	871	laptop
666	century	141	22	laptop
667	contain	710	509	laptop
668	book	546	481	laptop
669	major	142	287	laptop
670	consumer	487	31	laptop
671	service	247	212	laptop
672	start	714	312	laptop
673	feeling	817	109	laptop
674	meeting	410	340	laptop
675	wonder	288	147	laptop
676	those	769	393	laptop
677	discuss	67	149	laptop
678	catch	404	468	laptop
679	up	177	835	laptop
680	treat	441	875	laptop
681	lot	242	712	laptop
682	law	351	600	laptop
683	similar	706	942	laptop
684	record	121	862	laptop
685	must	974	153	laptop
686	suggest	296	26	laptop
687	road	769	816	laptop
688	modern	618	514	laptop
689	chance	617	558	laptop
690	stay	853	752	laptop
691	music	607	626	laptop
692	whatever	364	109	laptop
693	agent	670	606	laptop
694	shoulder	988	241	laptop
695	career	440	574	laptop
696	small	610	30	laptop
697	scientist	225	276	laptop
698	strategy	547	57	laptop
699	write	303	600	laptop
700	add	991	683	laptop
\.


--
-- Data for Name: relation_50; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_50 (product_id, warehouse_id, bin_id) FROM stdin;
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
-- Data for Name: relation_51; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_51 (supplier_id, product_id) FROM stdin;
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
-- Data for Name: relation_52; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_52 (purchaseorder_id, supplier_pos_supplier_id) FROM stdin;
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
-- Data for Name: relation_53; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_53 (purchaseorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_54; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_54 (custorder_id, shipment_id, courier_shipments_courierpartner_id) FROM stdin;
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
-- Data for Name: relation_55; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_55 (phone_id, bundle_phone_phone_id) FROM stdin;
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
-- Data for Name: relation_56; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_56 (smartwatch_id, bundled_phone_smart_watch_phone_id) FROM stdin;
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
-- Data for Name: relation_57; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_57 (phone_id, single_bundle_phone_bundled_phone_phone_id) FROM stdin;
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
-- Data for Name: relation_6; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_6 (desktop_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, cpu, ram_gb, form_factor, productimage, productvariant, pricehistory) FROM stdin;
501	nothing	song	428	768	168	culture	724	enough	603	join	\N	\N	\N
502	a	third	719	680	645	history	189	data	997	ground	\N	\N	\N
503	business	business	925	203	239	interesting	602	light	134	dog	\N	\N	\N
504	use	official	998	601	519	character	739	art	273	red	\N	\N	\N
505	prevent	though	470	202	801	democratic	370	above	986	show	\N	\N	\N
506	discuss	there	468	343	950	century	226	offer	948	space	\N	\N	\N
507	if	professor	955	651	10	serve	501	help	34	among	\N	\N	\N
508	ability	oil	169	260	921	mention	10	history	236	kind	\N	\N	\N
509	building	condition	784	909	87	into	36	investment	969	defense	\N	\N	\N
511	admit	myself	503	519	381	into	402	book	968	father	\N	\N	\N
512	work	condition	670	76	200	challenge	193	throw	701	of	\N	\N	\N
513	ok	nearly	639	305	979	even	629	nature	486	tell	\N	\N	\N
514	believe	individual	373	24	500	leg	953	join	108	movie	\N	\N	\N
515	run	story	675	641	592	candidate	848	finally	725	deep	\N	\N	\N
516	computer	memory	597	352	348	society	663	worry	431	expert	\N	\N	\N
517	unit	likely	200	719	527	seat	975	trouble	863	shake	\N	\N	\N
518	they	break	853	623	578	measure	615	their	697	law	\N	\N	\N
519	itself	education	757	590	927	him	619	thousand	483	bring	\N	\N	\N
520	up	white	170	853	275	clearly	577	news	784	culture	\N	\N	\N
522	show	piece	16	620	776	energy	801	class	469	stuff	\N	\N	\N
524	suffer	professor	215	717	488	health	713	fast	641	eye	\N	\N	\N
525	form	race	149	394	884	outside	56	value	658	prove	\N	\N	\N
526	at	believe	114	365	893	food	262	draw	770	manage	\N	\N	\N
528	pretty	character	333	347	317	these	214	live	734	car	\N	\N	\N
529	catch	other	84	337	123	project	132	run	800	summer	\N	\N	\N
530	hospital	that	708	302	983	take	623	investment	349	discuss	\N	\N	\N
531	remember	set	239	28	986	for	774	plant	785	fear	\N	\N	\N
532	rate	world	775	517	768	listen	310	light	301	want	\N	\N	\N
533	month	trip	388	431	950	them	831	health	888	management	\N	\N	\N
534	start	collection	879	76	963	real	418	attack	961	whatever	\N	\N	\N
535	reduce	present	238	623	44	music	645	bad	230	west	\N	\N	\N
536	office	heart	250	731	405	real	216	many	637	responsibility	\N	\N	\N
537	husband	write	156	738	307	environmental	2	risk	730	top	\N	\N	\N
538	direction	pay	722	704	315	house	510	treatment	175	ever	\N	\N	\N
539	cell	various	692	150	32	always	448	soon	568	weight	\N	\N	\N
540	camera	set	351	896	821	continue	326	color	962	material	\N	\N	\N
541	argue	new	619	115	598	prove	830	huge	562	develop	\N	\N	\N
542	different	building	679	283	440	avoid	863	beat	319	agree	\N	\N	\N
543	with	hour	771	89	655	business	118	the	514	story	\N	\N	\N
544	pull	them	226	892	621	it	448	cover	382	phone	\N	\N	\N
545	whom	government	804	237	56	baby	612	really	528	wife	\N	\N	\N
546	factor	study	527	524	167	clear	300	head	945	go	\N	\N	\N
547	amount	moment	50	906	70	job	4	blood	689	subject	\N	\N	\N
548	summer	old	64	434	750	eat	68	image	57	lay	\N	\N	\N
549	for	ball	10	36	551	face	341	cover	804	myself	\N	\N	\N
550	why	reach	20	627	10	investment	481	friend	205	Mrs	\N	\N	\N
552	behind	risk	188	216	401	article	245	instead	994	price	\N	\N	\N
554	return	someone	417	123	17	gun	518	opportunity	656	moment	\N	\N	\N
555	power	support	96	780	190	exist	231	program	181	when	\N	\N	\N
556	five	share	312	928	826	without	61	do	814	recent	\N	\N	\N
558	question	hold	454	154	237	old	766	wind	294	pay	\N	\N	\N
559	record	what	985	353	60	capital	454	picture	206	each	\N	\N	\N
561	debate	hundred	208	56	765	actually	90	try	976	phone	\N	\N	\N
562	establish	rather	806	832	761	shoulder	961	science	293	when	\N	\N	\N
563	weight	message	732	259	540	pass	893	build	255	against	\N	\N	\N
564	rise	he	740	34	742	example	784	page	200	network	\N	\N	\N
567	possible	performance	396	92	437	bring	852	may	851	available	\N	\N	\N
569	play	worker	117	246	75	read	907	drive	284	grow	\N	\N	\N
571	such	thought	380	420	468	get	361	over	324	step	\N	\N	\N
572	one	onto	406	982	483	three	380	already	131	scientist	\N	\N	\N
573	receive	majority	310	173	310	computer	893	dark	562	nothing	\N	\N	\N
574	agency	poor	729	745	154	player	469	set	661	old	\N	\N	\N
576	nearly	smile	627	260	242	fear	661	race	323	share	\N	\N	\N
577	cold	arm	176	284	877	role	318	alone	80	dinner	\N	\N	\N
579	buy	former	939	111	866	like	701	share	324	soldier	\N	\N	\N
580	until	whom	71	702	192	total	548	north	36	respond	\N	\N	\N
581	agree	pull	48	744	978	who	666	recognize	365	rate	\N	\N	\N
521	leader	oil	826	406	622	stuff	262	believe	318	economic	\N	[{"barcode": "year", "variant_id": "524", "price_override": "479", "is_active_variant": "504"}]	\N
527	list	where	555	760	56	they	388	out	16	industry	\N	[{"barcode": "leg", "variant_id": "193", "price_override": "341", "is_active_variant": "197"}]	\N
568	side	job	502	899	352	deal	620	local	665	lawyer	\N	\N	[{"price": "799", "ends_at": "manage", "price_id": "826", "starts_at": "choose"}]
583	child	air	801	516	643	drive	351	wait	670	someone	\N	\N	\N
584	trade	make	124	190	972	of	34	base	278	pressure	\N	\N	\N
585	parent	yourself	907	629	729	different	64	your	253	star	\N	\N	\N
586	final	professional	858	869	312	almost	577	begin	413	age	\N	\N	\N
587	to	miss	251	369	791	word	238	drive	965	investment	\N	\N	\N
589	under	certainly	1000	139	229	industry	519	direction	912	worker	\N	\N	\N
590	organization	material	273	145	167	several	78	share	319	anyone	\N	\N	\N
591	them	control	588	523	522	same	884	kid	893	talk	\N	\N	\N
594	manager	store	284	211	235	though	137	hand	792	rock	\N	\N	\N
596	tell	property	51	803	369	store	625	reduce	244	town	\N	\N	\N
597	push	form	695	713	889	this	90	finally	452	campaign	\N	\N	\N
598	simple	either	660	672	202	show	169	fear	589	seek	\N	\N	\N
599	near	Mrs	708	859	856	address	223	cover	324	only	\N	\N	\N
600	likely	enjoy	912	492	566	allow	923	animal	54	as	\N	\N	\N
557	call	kid	322	900	744	question	65	kitchen	853	step	[{"url": "something", "alt_text": "room", "image_id": "588", "sort_order": "868"}]	\N	\N
570	box	even	546	312	943	affect	773	time	852	relationship	[{"url": "candidate", "alt_text": "size", "image_id": "478", "sort_order": "460"}]	\N	\N
595	I	now	214	22	168	from	372	place	189	use	[{"url": "type", "alt_text": "investment", "image_id": "903", "sort_order": "221"}, {"url": "about", "alt_text": "wife", "image_id": "578", "sort_order": "194"}]	\N	\N
560	way	long	813	234	681	analysis	123	ever	59	white	[{"url": "spend", "alt_text": "everyone", "image_id": "267", "sort_order": "782"}]	\N	\N
510	floor	day	541	206	215	ago	296	yeah	249	common	[{"url": "whether", "alt_text": "language", "image_id": "128", "sort_order": "143"}]	\N	\N
565	scientist	official	334	359	366	computer	783	away	896	firm	[{"url": "what", "alt_text": "ability", "image_id": "399", "sort_order": "150"}]	\N	\N
551	throw	worry	273	303	596	must	911	hold	240	executive	[{"url": "television", "alt_text": "season", "image_id": "935", "sort_order": "970"}]	\N	\N
588	enjoy	future	298	715	583	despite	201	imagine	100	thus	[{"url": "example", "alt_text": "policy", "image_id": "427", "sort_order": "945"}]	\N	\N
566	tree	party	945	676	889	threat	886	participant	696	choice	\N	[{"barcode": "bring", "variant_id": "635", "price_override": "478", "is_active_variant": "183"}]	\N
553	life	result	569	718	464	chair	340	sound	335	middle	\N	[{"barcode": "process", "variant_id": "418", "price_override": "825", "is_active_variant": "833"}]	\N
582	rate	director	754	986	375	this	879	attorney	872	too	\N	[{"barcode": "bit", "variant_id": "151", "price_override": "185", "is_active_variant": "192"}]	\N
578	various	politics	439	158	564	hand	908	data	461	perform	\N	[{"barcode": "two", "variant_id": "13", "price_override": "127", "is_active_variant": "178"}]	\N
592	commercial	improve	450	595	525	speak	188	option	525	surface	\N	[{"barcode": "career", "variant_id": "373", "price_override": "883", "is_active_variant": "507"}]	\N
523	guy	too	469	914	365	you	521	avoid	455	continue	\N	[{"barcode": "common", "variant_id": "329", "price_override": "136", "is_active_variant": "518"}]	\N
575	establish	industry	643	156	139	sing	82	executive	833	consumer	\N	[{"barcode": "we", "variant_id": "2", "price_override": "275", "is_active_variant": "767"}]	\N
593	ahead	size	885	365	201	girl	824	attack	76	finish	\N	[{"barcode": "treat", "variant_id": "243", "price_override": "156", "is_active_variant": "735"}]	\N
\.


--
-- Data for Name: relation_7; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_7 (phone_id, carrier_lock) FROM stdin;
1001	front
1002	travel
1003	and
1004	city
1005	mean
1006	television
1007	just
1008	fish
1009	music
1010	admit
1011	nor
1012	among
1013	maybe
1014	whatever
1015	suffer
1016	son
1017	within
1018	song
1019	reason
1020	to
1021	across
1022	forget
1023	word
1024	since
1025	great
1026	religious
1027	become
1028	near
1029	four
1030	couple
1031	garden
1032	rise
1033	anyone
1034	know
1035	quickly
1036	military
1037	job
1038	lose
1039	thousand
1040	television
1041	however
1042	paper
1043	treat
1044	exist
1045	about
1046	task
1047	standard
1048	morning
1049	product
1050	across
1051	push
1052	them
1053	get
1054	chance
1055	oil
1056	science
1057	car
1058	scene
1059	drop
1060	conference
1061	place
1062	business
1063	either
1064	door
1065	lot
1066	last
1067	federal
1068	treat
1069	majority
1070	lead
1071	always
1072	care
1073	safe
1074	page
1075	wide
1076	cause
1077	program
1078	since
1079	the
1080	reveal
1081	herself
1082	worker
1083	treat
1084	family
1085	current
1086	low
1087	high
1088	practice
1089	yes
1090	just
1091	street
1092	himself
1093	spend
1094	bank
1095	possible
1096	poor
1097	present
1098	goal
1099	law
1100	practice
\.


--
-- Data for Name: relation_8; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_8 (apparel_id, size_system) FROM stdin;
1401	throughout
1402	then
1403	husband
1404	player
1405	film
1406	source
1407	everybody
1408	product
1409	ago
1410	job
1411	finally
1412	which
1413	collection
1414	information
1415	drive
1416	recent
1417	hundred
1418	site
1419	song
1420	fact
1421	reflect
1422	staff
1423	main
1424	firm
1425	floor
1426	least
1427	once
1428	now
1429	manager
1430	cost
1431	note
1432	specific
1433	suggest
1434	begin
1435	company
1436	bad
1437	thus
1438	receive
1439	for
1440	road
1441	concern
1442	TV
1443	some
1444	follow
1445	check
1446	image
1447	Republican
1448	court
1449	despite
1450	right
1451	month
1452	next
1453	lay
1454	management
1455	world
1456	I
1457	deep
1458	big
1459	since
1460	adult
1461	design
1462	degree
1463	future
1464	close
1465	area
1466	base
1467	center
1468	benefit
1469	special
1470	nearly
1471	case
1472	attorney
1473	feeling
1474	wide
1475	seem
1476	successful
1477	price
1478	there
1479	reduce
1480	attention
1481	industry
1482	Congress
1483	like
1484	matter
1485	without
1486	growth
1487	fly
1488	one
1489	education
1490	thousand
1491	beautiful
1492	enough
1493	help
1494	fine
1495	raise
1496	instead
1497	true
1498	respond
1499	get
1500	reflect
\.


--
-- Data for Name: relation_9; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_9 (clothing_id, sku, product_name, base_price, is_active, quantity, dimensions, size_system, material, fit_type_men, role, productimage, productvariant, pricehistory) FROM stdin;
1501	upon	now	721	477	824	bank	structure	next	\N	clothing	\N	\N	\N
1502	understand	hot	452	533	771	poor	against	four	\N	clothing	\N	\N	\N
1503	pretty	grow	149	826	736	explain	end	find	\N	clothing	\N	\N	\N
1504	discuss	rock	806	709	102	describe	recently	yet	\N	clothing	\N	\N	\N
1505	television	daughter	280	374	230	for	meet	speak	\N	clothing	\N	\N	\N
1507	or	military	855	716	40	certainly	attack	week	\N	clothing	\N	\N	\N
1508	fund	scientist	399	545	362	throw	miss	expect	\N	clothing	\N	\N	\N
1509	partner	describe	678	835	865	price	store	arm	\N	clothing	\N	\N	\N
1510	much	letter	310	522	267	feel	condition	Mr	\N	clothing	\N	\N	\N
1511	hope	practice	85	55	107	interesting	eat	thank	\N	clothing	\N	\N	\N
1512	seven	certain	761	318	942	east	town	assume	\N	clothing	\N	\N	\N
1514	always	know	252	286	95	season	course	he	\N	clothing	\N	\N	\N
1515	affect	consider	402	697	519	half	style	reveal	\N	clothing	\N	\N	\N
1516	number	top	300	620	498	network	sit	top	\N	clothing	\N	\N	\N
1517	discover	deep	423	230	718	decade	international	majority	\N	clothing	\N	\N	\N
1518	response	similar	494	125	528	concern	there	also	\N	clothing	\N	\N	\N
1519	item	everybody	867	583	769	type	appear	a	\N	clothing	\N	\N	\N
1520	produce	central	33	84	331	always	listen	coach	\N	clothing	\N	\N	\N
1521	list	small	881	454	93	treatment	well	child	\N	clothing	\N	\N	\N
1522	firm	dinner	906	34	452	next	international	environmental	\N	clothing	\N	\N	\N
1523	discussion	course	88	703	483	west	blue	account	\N	clothing	\N	\N	\N
1524	have	decade	813	905	52	management	happy	of	\N	clothing	\N	\N	\N
1525	require	cell	507	129	707	international	treatment	suddenly	\N	clothing	\N	\N	\N
1527	late	computer	622	257	558	seek	deep	say	\N	clothing	\N	\N	\N
1528	fear	suddenly	612	915	94	garden	seek	forward	\N	clothing	\N	\N	\N
1529	moment	film	35	239	965	well	bar	popular	\N	clothing	\N	\N	\N
1530	finish	art	877	23	770	air	during	parent	\N	clothing	\N	\N	\N
1531	community	college	43	136	342	box	may	air	\N	clothing	\N	\N	\N
1532	pattern	person	569	824	846	view	yeah	condition	\N	clothing	\N	\N	\N
1533	professional	forward	617	798	462	coach	card	run	\N	clothing	\N	\N	\N
1534	laugh	effort	336	212	438	oil	animal	rather	\N	clothing	\N	\N	\N
1535	become	yourself	66	390	931	return	national	fire	\N	clothing	\N	\N	\N
1536	fast	nothing	856	803	5	state	finish	charge	\N	clothing	\N	\N	\N
1537	together	scientist	310	749	837	character	own	game	\N	clothing	\N	\N	\N
1538	wife	capital	581	592	388	employee	sell	have	\N	clothing	\N	\N	\N
1539	business	second	996	401	78	wonder	lay	yeah	\N	clothing	\N	\N	\N
1540	herself	religious	864	250	65	increase	off	teach	\N	clothing	\N	\N	\N
1541	page	sit	881	871	540	machine	create	step	\N	clothing	\N	\N	\N
1542	hair	eat	567	873	319	successful	friend	practice	\N	clothing	\N	\N	\N
1543	stuff	site	148	506	497	but	time	school	\N	clothing	\N	\N	\N
1544	material	minute	154	561	120	friend	tonight	rest	\N	clothing	\N	\N	\N
1545	second	exist	275	556	804	identify	why	stay	\N	clothing	\N	\N	\N
1546	rich	series	509	641	679	policy	board	alone	\N	clothing	\N	\N	\N
1548	despite	area	453	280	855	someone	house	interview	\N	clothing	\N	\N	\N
1549	win	history	607	979	804	than	hope	smile	\N	clothing	\N	\N	\N
1550	close	throw	723	926	407	black	protect	ten	\N	clothing	\N	\N	\N
1551	recently	teach	23	221	563	green	remember	his	\N	clothing	\N	\N	\N
1552	stock	husband	253	625	689	yard	meeting	available	\N	clothing	\N	\N	\N
1553	necessary	add	992	444	571	my	sit	someone	\N	clothing	\N	\N	\N
1555	which	decide	878	662	340	table	feeling	mind	\N	clothing	\N	\N	\N
1557	others	world	563	87	523	majority	office	with	\N	clothing	\N	\N	\N
1558	prevent	themselves	63	308	653	measure	pay	financial	\N	clothing	\N	\N	\N
1559	key	its	601	909	727	produce	a	sense	\N	clothing	\N	\N	\N
1560	rich	fall	888	910	357	bag	decade	smile	\N	clothing	\N	\N	\N
1561	interesting	PM	381	788	211	agent	expect	audience	\N	clothing	\N	\N	\N
1562	blue	south	628	596	512	total	man	central	\N	clothing	\N	\N	\N
1563	see	direction	183	391	3	movement	father	fast	\N	clothing	\N	\N	\N
1564	down	imagine	18	272	375	table	herself	onto	\N	clothing	\N	\N	\N
1565	always	approach	417	675	194	sound	they	other	\N	clothing	\N	\N	\N
1566	enough	region	429	914	678	throughout	result	staff	\N	clothing	\N	\N	\N
1567	but	control	426	585	389	beat	trial	career	\N	clothing	\N	\N	\N
1569	sometimes	join	837	643	213	assume	learn	expect	\N	clothing	\N	\N	\N
1570	home	coach	59	299	151	buy	even	audience	\N	clothing	\N	\N	\N
1571	bring	former	625	369	189	out	thought	lay	\N	clothing	\N	\N	\N
1572	smile	room	168	915	525	simple	air	national	\N	clothing	\N	\N	\N
1573	yard	area	512	879	661	join	discover	follow	\N	clothing	\N	\N	\N
1574	with	by	929	459	188	religious	system	fill	\N	clothing	\N	\N	\N
1575	year	people	274	359	454	produce	still	section	\N	clothing	\N	\N	\N
1576	plan	least	587	722	45	listen	wife	point	\N	clothing	\N	\N	\N
1578	lot	past	246	832	767	front	wall	last	\N	clothing	\N	\N	\N
1579	box	so	849	964	897	house	result	sit	\N	clothing	\N	\N	\N
1580	real	outside	734	934	241	black	subject	either	\N	clothing	\N	\N	\N
1581	recognize	run	864	802	910	quality	deal	himself	\N	clothing	\N	\N	\N
1582	home	thus	901	421	826	part	up	impact	\N	clothing	\N	\N	\N
1506	service	garden	986	456	367	machine	fly	friend	\N	clothing	\N	[{"barcode": "course", "variant_id": "591", "price_override": "390", "is_active_variant": "268"}]	\N
1513	career	they	438	571	600	month	begin	concern	\N	clothing	\N	\N	[{"price": "938", "ends_at": "culture", "price_id": "447", "starts_at": "brother"}]
1577	hair	PM	667	223	876	pretty	usually	moment	\N	clothing	\N	\N	[{"price": "852", "ends_at": "just", "price_id": "490", "starts_at": "cold"}]
1583	ever	rule	470	526	693	activity	officer	action	\N	clothing	\N	\N	\N
1584	wait	mission	48	239	228	most	cup	worry	\N	clothing	\N	\N	\N
1585	resource	body	434	127	558	such	language	difference	\N	clothing	\N	\N	\N
1586	determine	language	780	427	953	interest	newspaper	PM	\N	clothing	\N	\N	\N
1587	song	with	525	391	616	from	recently	head	\N	clothing	\N	\N	\N
1588	likely	hotel	97	816	208	TV	join	happen	\N	clothing	\N	\N	\N
1589	board	military	401	214	559	together	side	real	\N	clothing	\N	\N	\N
1590	rich	or	443	539	860	tell	measure	stand	\N	clothing	\N	\N	\N
1591	cause	together	771	384	656	turn	another	heavy	\N	clothing	\N	\N	\N
1592	factor	model	386	652	961	could	health	save	\N	clothing	\N	\N	\N
1593	test	box	521	815	976	while	best	four	\N	clothing	\N	\N	\N
1594	wear	study	321	877	181	early	former	her	\N	clothing	\N	\N	\N
1595	behind	ago	680	815	556	exist	poor	need	\N	clothing	\N	\N	\N
1597	make	young	88	261	699	attack	until	energy	\N	clothing	\N	\N	\N
1598	assume	throughout	759	229	505	decision	bill	those	\N	clothing	\N	\N	\N
1599	sometimes	long	882	35	959	environmental	probably	maintain	\N	clothing	\N	\N	\N
1600	charge	task	353	412	945	staff	national	about	\N	clothing	\N	\N	\N
1601	size	plan	427	210	56	class	southern	best	something	menclothing	\N	\N	\N
1602	traditional	drive	940	238	155	minute	hair	writer	yes	menclothing	\N	\N	\N
1603	perhaps	image	958	345	675	resource	author	bring	or	menclothing	\N	\N	\N
1604	single	defense	626	993	596	country	imagine	feel	dog	menclothing	\N	\N	\N
1605	sound	issue	436	691	309	drug	set	keep	if	menclothing	\N	\N	\N
1606	again	left	753	321	266	spend	ability	window	hundred	menclothing	\N	\N	\N
1607	rich	Congress	465	404	984	inside	exist	true	since	menclothing	\N	\N	\N
1608	western	process	40	593	797	structure	between	country	store	menclothing	\N	\N	\N
1609	box	mouth	819	796	698	all	test	try	deep	menclothing	\N	\N	\N
1610	message	soldier	676	641	140	outside	group	newspaper	area	menclothing	\N	\N	\N
1611	avoid	religious	361	902	148	great	throughout	finally	several	menclothing	\N	\N	\N
1612	according	happy	773	409	257	deal	forward	fight	alone	menclothing	\N	\N	\N
1613	know	happen	427	324	887	a	staff	big	town	menclothing	\N	\N	\N
1614	soon	happen	327	71	212	he	method	future	turn	menclothing	\N	\N	\N
1615	law	white	216	410	630	anything	security	account	money	menclothing	\N	\N	\N
1616	class	whom	694	653	480	which	add	change	poor	menclothing	\N	\N	\N
1617	situation	food	116	142	832	enough	method	American	down	menclothing	\N	\N	\N
1618	event	media	940	115	396	reach	big	camera	where	menclothing	\N	\N	\N
1619	type	car	479	791	495	individual	imagine	nothing	response	menclothing	\N	\N	\N
1620	happen	include	166	773	6	rich	war	study	their	menclothing	\N	\N	\N
1621	stop	remember	977	58	971	cover	former	student	sea	menclothing	\N	\N	\N
1622	senior	wish	140	774	512	final	beautiful	hold	finally	menclothing	\N	\N	\N
1623	for	door	207	871	745	north	police	some	eye	menclothing	\N	\N	\N
1624	exactly	participant	618	63	349	soon	reveal	might	training	menclothing	\N	\N	\N
1625	degree	law	491	288	764	challenge	though	somebody	career	menclothing	\N	\N	\N
1626	artist	father	562	510	518	medical	really	report	wind	menclothing	\N	\N	\N
1627	story	truth	938	50	159	notice	research	who	society	menclothing	\N	\N	\N
1628	task	state	11	859	315	rich	mission	environment	organization	menclothing	\N	\N	\N
1629	house	research	711	74	189	plant	tax	want	process	menclothing	\N	\N	\N
1630	exist	for	386	297	523	true	create	two	military	menclothing	\N	\N	\N
1631	already	mission	293	142	175	top	send	treatment	occur	menclothing	\N	\N	\N
1633	cultural	once	887	830	460	industry	consumer	act	those	menclothing	\N	\N	\N
1634	apply	begin	521	200	719	know	go	camera	cold	menclothing	\N	\N	\N
1635	offer	team	211	621	386	direction	because	value	step	menclothing	\N	\N	\N
1636	road	could	994	365	676	focus	artist	media	a	menclothing	\N	\N	\N
1638	determine	author	91	162	506	voice	nice	experience	trial	menclothing	\N	\N	\N
1640	wife	assume	42	710	494	year	occur	deal	because	menclothing	\N	\N	\N
1641	case	fall	365	354	356	surface	still	free	already	menclothing	\N	\N	\N
1642	free	lawyer	797	557	137	from	trade	hot	daughter	menclothing	\N	\N	\N
1644	she	there	971	246	264	behavior	run	middle	nation	menclothing	\N	\N	\N
1645	both	create	548	923	475	onto	goal	remember	fund	menclothing	\N	\N	\N
1646	store	plan	645	454	997	campaign	respond	about	response	menclothing	\N	\N	\N
1649	arrive	they	293	575	706	nothing	Mr	learn	front	menclothing	\N	\N	\N
1650	forget	either	196	895	606	away	citizen	window	number	menclothing	\N	\N	\N
1651	white	involve	823	759	715	dream	physical	seek	nature	menclothing	\N	\N	\N
1652	class	hundred	250	659	496	could	top	allow	dinner	menclothing	\N	\N	\N
1653	the	project	372	456	317	race	create	window	individual	menclothing	\N	\N	\N
1654	modern	which	977	881	60	environmental	south	respond	wind	menclothing	\N	\N	\N
1656	pay	firm	484	248	875	wish	break	military	exist	menclothing	\N	\N	\N
1657	third	store	846	36	15	put	administration	realize	create	menclothing	\N	\N	\N
1658	common	century	917	470	838	risk	offer	food	hit	menclothing	\N	\N	\N
1659	station	weight	788	440	249	music	agreement	guess	set	menclothing	\N	\N	\N
1637	environment	size	788	46	689	training	evidence	rise	red	menclothing	\N	[{"barcode": "read", "variant_id": "542", "price_override": "513", "is_active_variant": "386"}]	\N
1639	positive	live	361	918	317	deep	peace	force	meeting	menclothing	\N	[{"barcode": "offer", "variant_id": "196", "price_override": "354", "is_active_variant": "862"}]	\N
1632	others	exactly	955	521	240	establish	opportunity	current	woman	menclothing	\N	\N	[{"price": "399", "ends_at": "stage", "price_id": "382", "starts_at": "tell"}]
1660	area	might	181	107	249	state	wall	agency	technology	menclothing	\N	\N	\N
1662	receive	its	211	440	944	difference	above	plan	prepare	menclothing	\N	\N	\N
1663	carry	sense	928	508	773	ahead	report	usually	partner	menclothing	\N	\N	\N
1664	yes	hundred	816	966	314	bit	return	force	nation	menclothing	\N	\N	\N
1665	majority	education	647	478	143	writer	nice	concern	cost	menclothing	\N	\N	\N
1666	three	three	321	807	319	probably	threat	message	window	menclothing	\N	\N	\N
1667	its	discover	37	305	202	exactly	total	west	simple	menclothing	\N	\N	\N
1668	sing	necessary	476	515	741	run	alone	if	live	menclothing	\N	\N	\N
1669	alone	opportunity	773	4	321	sure	main	show	participant	menclothing	\N	\N	\N
1670	add	personal	114	67	437	feel	with	after	all	menclothing	\N	\N	\N
1671	have	season	259	44	144	American	receive	red	you	menclothing	\N	\N	\N
1672	organization	kind	384	801	352	reveal	administration	recently	move	menclothing	\N	\N	\N
1673	people	act	929	184	886	interview	outside	worker	always	menclothing	\N	\N	\N
1674	reason	hear	480	861	335	huge	culture	since	play	menclothing	\N	\N	\N
1676	after	you	167	637	437	candidate	central	left	more	menclothing	\N	\N	\N
1677	almost	player	113	320	924	popular	best	season	discussion	menclothing	\N	\N	\N
1678	action	Mrs	628	471	997	film	when	month	wrong	menclothing	\N	\N	\N
1679	our	level	604	966	446	baby	arrive	concern	individual	menclothing	\N	\N	\N
1680	this	particularly	655	144	760	wall	woman	thing	speech	menclothing	\N	\N	\N
1681	professional	give	32	572	717	at	whose	let	goal	menclothing	\N	\N	\N
1682	town	middle	585	615	552	sport	his	claim	listen	menclothing	\N	\N	\N
1683	unit	wonder	245	46	921	turn	single	behavior	box	menclothing	\N	\N	\N
1684	would	catch	424	827	701	hit	some	care	strong	menclothing	\N	\N	\N
1685	despite	first	264	584	358	us	stand	executive	approach	menclothing	\N	\N	\N
1686	say	support	529	375	581	close	picture	nearly	discussion	menclothing	\N	\N	\N
1687	message	we	185	438	228	anyone	action	film	true	menclothing	\N	\N	\N
1688	news	often	836	997	647	beautiful	agency	organization	adult	menclothing	\N	\N	\N
1689	investment	necessary	674	260	744	own	that	challenge	center	menclothing	\N	\N	\N
1690	meet	standard	68	632	266	office	human	term	amount	menclothing	\N	\N	\N
1691	exist	total	526	792	35	author	enjoy	manage	civil	menclothing	\N	\N	\N
1692	good	require	490	946	494	student	spring	they	kitchen	menclothing	\N	\N	\N
1693	which	expert	868	95	690	talk	form	region	indicate	menclothing	\N	\N	\N
1694	pattern	consider	52	586	596	require	ability	agree	just	menclothing	\N	\N	\N
1695	those	expect	293	68	569	method	above	then	energy	menclothing	\N	\N	\N
1697	item	charge	698	737	444	future	during	sometimes	hard	menclothing	\N	\N	\N
1698	few	likely	649	965	727	loss	mother	third	carry	menclothing	\N	\N	\N
1699	we	run	621	961	797	likely	government	beat	reduce	menclothing	\N	\N	\N
1700	night	us	683	943	989	international	however	account	improve	menclothing	\N	\N	\N
1701	card	far	906	1	783	feeling	some	person	\N	womenclothing	\N	\N	\N
1702	process	east	52	18	79	college	wear	arm	\N	womenclothing	\N	\N	\N
1704	subject	camera	193	938	860	baby	another	health	\N	womenclothing	\N	\N	\N
1705	oil	wide	6	838	437	this	eight	yard	\N	womenclothing	\N	\N	\N
1707	agency	why	116	379	384	go	explain	scientist	\N	womenclothing	\N	\N	\N
1708	knowledge	person	876	390	536	hundred	person	beautiful	\N	womenclothing	\N	\N	\N
1709	class	whether	763	326	502	opportunity	series	adult	\N	womenclothing	\N	\N	\N
1710	street	himself	479	241	414	case	throughout	difficult	\N	womenclothing	\N	\N	\N
1711	suffer	why	444	869	616	other	use	trip	\N	womenclothing	\N	\N	\N
1712	apply	different	20	353	528	hour	never	although	\N	womenclothing	\N	\N	\N
1714	data	miss	379	52	863	as	bring	form	\N	womenclothing	\N	\N	\N
1715	exist	reflect	418	621	439	these	message	push	\N	womenclothing	\N	\N	\N
1717	all	course	145	504	936	mention	bank	oil	\N	womenclothing	\N	\N	\N
1718	hotel	position	322	773	791	little	include	trial	\N	womenclothing	\N	\N	\N
1719	piece	government	907	375	382	trade	we	piece	\N	womenclothing	\N	\N	\N
1720	land	know	748	83	803	page	character	ready	\N	womenclothing	\N	\N	\N
1722	difference	happen	895	145	51	bit	form	idea	\N	womenclothing	\N	\N	\N
1723	performance	age	271	341	42	explain	local	where	\N	womenclothing	\N	\N	\N
1724	read	professional	131	141	246	rather	stop	party	\N	womenclothing	\N	\N	\N
1727	method	future	135	319	804	national	bar	none	\N	womenclothing	\N	\N	\N
1728	ground	go	472	26	588	various	like	risk	\N	womenclothing	\N	\N	\N
1729	north	subject	752	970	642	leg	threat	even	\N	womenclothing	\N	\N	\N
1730	individual	human	33	765	145	born	couple	well	\N	womenclothing	\N	\N	\N
1731	study	we	676	299	526	shake	staff	simply	\N	womenclothing	\N	\N	\N
1733	chance	bar	750	275	710	us	guy	military	\N	womenclothing	\N	\N	\N
1734	case	population	573	452	477	have	analysis	evidence	\N	womenclothing	\N	\N	\N
1735	daughter	person	579	352	109	second	evidence	ability	\N	womenclothing	\N	\N	\N
1721	near	half	135	733	661	partner	value	remember	\N	womenclothing	\N	[{"barcode": "administration", "variant_id": "566", "price_override": "261", "is_active_variant": "927"}]	\N
1726	cell	stay	455	204	419	nice	class	believe	\N	womenclothing	\N	\N	[{"price": "995", "ends_at": "culture", "price_id": "122", "starts_at": "share"}]
1703	through	woman	804	371	922	hold	moment	player	\N	womenclothing	\N	\N	[{"price": "333", "ends_at": "though", "price_id": "89", "starts_at": "discuss"}]
1736	politics	address	235	799	46	building	fast	drop	\N	womenclothing	\N	\N	\N
1737	me	Democrat	119	211	184	believe	future	cover	\N	womenclothing	\N	\N	\N
1738	theory	blood	772	840	912	compare	room	voice	\N	womenclothing	\N	\N	\N
1739	vote	happen	649	132	847	country	successful	another	\N	womenclothing	\N	\N	\N
1740	bring	difference	576	658	212	stop	effort	rate	\N	womenclothing	\N	\N	\N
1741	alone	technology	896	707	602	big	girl	three	\N	womenclothing	\N	\N	\N
1742	reduce	audience	703	990	759	hear	big	economy	\N	womenclothing	\N	\N	\N
1743	although	may	393	456	368	memory	might	born	\N	womenclothing	\N	\N	\N
1744	street	different	980	617	825	else	policy	six	\N	womenclothing	\N	\N	\N
1745	adult	return	653	500	790	parent	forward	section	\N	womenclothing	\N	\N	\N
1746	agency	late	256	625	920	far	participant	product	\N	womenclothing	\N	\N	\N
1747	they	trip	178	519	624	human	happy	do	\N	womenclothing	\N	\N	\N
1748	remember	hour	70	768	880	piece	city	word	\N	womenclothing	\N	\N	\N
1749	feel	door	89	984	852	rule	matter	support	\N	womenclothing	\N	\N	\N
1750	real	knowledge	714	832	533	send	speak	necessary	\N	womenclothing	\N	\N	\N
1751	after	store	870	691	133	clear	story	protect	\N	womenclothing	\N	\N	\N
1752	upon	everyone	323	82	151	drive	cold	who	\N	womenclothing	\N	\N	\N
1753	station	mouth	177	682	794	describe	traditional	central	\N	womenclothing	\N	\N	\N
1754	travel	hit	631	548	1	necessary	plan	health	\N	womenclothing	\N	\N	\N
1755	still	city	71	774	553	what	at	quality	\N	womenclothing	\N	\N	\N
1756	left	return	944	489	50	dark	art	feeling	\N	womenclothing	\N	\N	\N
1757	learn	successful	471	466	581	phone	opportunity	everybody	\N	womenclothing	\N	\N	\N
1758	whatever	second	283	365	460	series	short	maintain	\N	womenclothing	\N	\N	\N
1759	describe	majority	356	66	180	girl	popular	item	\N	womenclothing	\N	\N	\N
1760	medical	cause	776	588	5	tree	professional	tend	\N	womenclothing	\N	\N	\N
1761	director	head	199	583	686	somebody	itself	leader	\N	womenclothing	\N	\N	\N
1762	spring	else	967	159	499	theory	phone	doctor	\N	womenclothing	\N	\N	\N
1763	save	anything	357	537	879	interesting	medical	that	\N	womenclothing	\N	\N	\N
1764	sell	condition	611	106	737	address	mind	trouble	\N	womenclothing	\N	\N	\N
1766	provide	likely	993	308	91	thank	fill	war	\N	womenclothing	\N	\N	\N
1767	big	employee	586	330	551	design	go	goal	\N	womenclothing	\N	\N	\N
1768	director	after	590	758	595	its	policy	section	\N	womenclothing	\N	\N	\N
1769	phone	budget	451	296	776	consider	hundred	off	\N	womenclothing	\N	\N	\N
1770	big	Republican	805	805	933	then	enter	cost	\N	womenclothing	\N	\N	\N
1771	term	let	604	154	312	manage	according	quite	\N	womenclothing	\N	\N	\N
1772	local	everybody	937	859	80	end	arrive	yes	\N	womenclothing	\N	\N	\N
1773	city	word	35	582	891	number	final	four	\N	womenclothing	\N	\N	\N
1775	nearly	in	683	269	979	hundred	tend	impact	\N	womenclothing	\N	\N	\N
1776	rise	choose	592	297	447	any	movie	continue	\N	womenclothing	\N	\N	\N
1777	will	affect	250	400	554	yes	local	hundred	\N	womenclothing	\N	\N	\N
1778	financial	eat	412	691	130	foot	pick	item	\N	womenclothing	\N	\N	\N
1779	year	stop	44	699	260	TV	management	product	\N	womenclothing	\N	\N	\N
1780	woman	them	348	83	940	ago	pretty	town	\N	womenclothing	\N	\N	\N
1781	system	fish	391	107	135	total	learn	physical	\N	womenclothing	\N	\N	\N
1783	almost	example	417	795	84	during	development	interview	\N	womenclothing	\N	\N	\N
1784	yet	world	999	37	445	through	late	this	\N	womenclothing	\N	\N	\N
1785	southern	television	404	580	585	pull	stand	win	\N	womenclothing	\N	\N	\N
1786	fear	able	632	633	776	sure	deep	community	\N	womenclothing	\N	\N	\N
1788	well	phone	57	19	985	behind	how	bad	\N	womenclothing	\N	\N	\N
1789	television	often	452	4	355	evidence	what	game	\N	womenclothing	\N	\N	\N
1790	interview	blood	335	997	823	quickly	fact	increase	\N	womenclothing	\N	\N	\N
1791	operation	action	716	682	984	east	citizen	like	\N	womenclothing	\N	\N	\N
1792	bank	state	744	452	638	between	operation	evidence	\N	womenclothing	\N	\N	\N
1793	myself	scientist	678	205	942	third	economic	risk	\N	womenclothing	\N	\N	\N
1795	hit	throw	286	281	166	wish	affect	book	\N	womenclothing	\N	\N	\N
1796	money	have	687	90	785	official	common	person	\N	womenclothing	\N	\N	\N
1797	produce	people	542	634	492	magazine	perform	his	\N	womenclothing	\N	\N	\N
1798	wrong	nothing	98	512	123	feel	everybody	boy	\N	womenclothing	\N	\N	\N
1799	of	such	518	559	171	community	major	grow	\N	womenclothing	\N	\N	\N
1800	degree	sure	714	994	661	street	option	result	\N	womenclothing	\N	\N	\N
1774	want	foot	734	134	502	century	east	special	\N	womenclothing	[{"url": "on", "alt_text": "page", "image_id": "92", "sort_order": "843"}]	\N	\N
1725	when	blue	987	216	773	road	though	company	\N	womenclothing	[{"url": "skin", "alt_text": "marriage", "image_id": "985", "sort_order": "536"}]	\N	\N
1787	attention	job	137	879	868	coach	piece	billion	\N	womenclothing	\N	\N	[{"price": "242", "ends_at": "again", "price_id": "590", "starts_at": "half"}]
1547	contain	front	148	152	324	family	report	write	\N	clothing	[{"url": "without", "alt_text": "successful", "image_id": "132", "sort_order": "928"}]	\N	\N
1655	job	know	162	140	55	apply	reduce	something	involve	menclothing	[{"url": "travel", "alt_text": "child", "image_id": "38", "sort_order": "31"}]	\N	\N
1713	itself	maybe	238	408	509	Mrs	word	fact	\N	womenclothing	[{"url": "each", "alt_text": "present", "image_id": "557", "sort_order": "409"}]	\N	\N
1554	study	analysis	85	30	797	much	style	ready	\N	clothing	[{"url": "strong", "alt_text": "media", "image_id": "260", "sort_order": "499"}]	\N	\N
1782	language	idea	995	498	332	computer	never	simple	\N	womenclothing	[{"url": "summer", "alt_text": "quickly", "image_id": "213", "sort_order": "568"}]	[{"barcode": "painting", "variant_id": "834", "price_override": "495", "is_active_variant": "759"}]	\N
1596	moment	sign	979	195	77	cost	size	space	\N	clothing	[{"url": "same", "alt_text": "entire", "image_id": "5", "sort_order": "231"}]	\N	\N
1732	close	election	59	920	73	there	kitchen	yourself	\N	womenclothing	[{"url": "prevent", "alt_text": "sea", "image_id": "482", "sort_order": "416"}]	\N	\N
1648	series	shoulder	28	436	397	music	agent	market	star	menclothing	[{"url": "enter", "alt_text": "find", "image_id": "511", "sort_order": "120"}]	\N	\N
1647	theory	wait	504	721	500	budget	significant	address	party	menclothing	[{"url": "ago", "alt_text": "improve", "image_id": "100", "sort_order": "859"}]	\N	\N
1568	morning	game	176	599	855	exist	different	present	\N	clothing	[{"url": "cut", "alt_text": "attack", "image_id": "998", "sort_order": "910"}]	\N	\N
1765	lot	professional	513	936	317	available	itself	tree	\N	womenclothing	[{"url": "president", "alt_text": "treatment", "image_id": "114", "sort_order": "612"}]	\N	\N
1556	game	prevent	744	951	206	enter	various	itself	\N	clothing	\N	[{"barcode": "safe", "variant_id": "697", "price_override": "863", "is_active_variant": "30"}]	\N
1794	believe	thank	340	793	969	shoulder	all	some	\N	womenclothing	\N	[{"barcode": "run", "variant_id": "840", "price_override": "184", "is_active_variant": "130"}]	\N
1696	bad	usually	607	672	174	quality	same	other	much	menclothing	\N	[{"barcode": "himself", "variant_id": "355", "price_override": "636", "is_active_variant": "542"}]	\N
1706	no	onto	252	64	927	high	material	fear	\N	womenclothing	\N	[{"barcode": "approach", "variant_id": "185", "price_override": "835", "is_active_variant": "497"}, {"barcode": "data", "variant_id": "563", "price_override": "71", "is_active_variant": "197"}]	\N
1675	close	town	616	235	835	party	environmental	business	pull	menclothing	\N	[{"barcode": "whatever", "variant_id": "932", "price_override": "530", "is_active_variant": "631"}]	\N
1526	within	space	447	491	302	quickly	prevent	drive	\N	clothing	\N	[{"barcode": "maintain", "variant_id": "920", "price_override": "61", "is_active_variant": "509"}]	\N
1643	kind	hundred	425	820	685	national	easy	especially	PM	menclothing	\N	[{"barcode": "well", "variant_id": "44", "price_override": "38", "is_active_variant": "493"}]	\N
1661	move	million	312	236	26	table	look	half	inside	menclothing	\N	\N	[{"price": "394", "ends_at": "sit", "price_id": "199", "starts_at": "month"}]
1716	challenge	appear	708	149	339	themselves	far	article	\N	womenclothing	\N	\N	[{"price": "592", "ends_at": "try", "price_id": "795", "starts_at": "couple"}]
\.


--
-- Data for Name: temp_browsingsession; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_browsingsession (user_id, email, password_hash, browsingsession) FROM stdin;
7	\N	\N	[{"device": "oil", "session_id": "445", "started_at": "billion"}]
740	\N	\N	[{"device": "training", "session_id": "702", "started_at": "support"}]
183	\N	\N	[{"device": "quite", "session_id": "47", "started_at": "agreement"}]
699	\N	\N	[{"device": "teach", "session_id": "641", "started_at": "recently"}]
116	\N	\N	[{"device": "admit", "session_id": "643", "started_at": "green"}]
238	\N	\N	[{"device": "five", "session_id": "748", "started_at": "especially"}]
113	\N	\N	[{"device": "thus", "session_id": "858", "started_at": "a"}]
309	\N	\N	[{"device": "majority", "session_id": "102", "started_at": "follow"}]
946	\N	\N	[{"device": "exist", "session_id": "38", "started_at": "clear"}]
461	\N	\N	[{"device": "I", "session_id": "322", "started_at": "contain"}]
967	\N	\N	[{"device": "health", "session_id": "224", "started_at": "back"}]
619	\N	\N	[{"device": "subject", "session_id": "747", "started_at": "question"}]
518	\N	\N	[{"device": "major", "session_id": "578", "started_at": "scene"}]
586	\N	\N	[{"device": "dark", "session_id": "63", "started_at": "account"}]
66	\N	\N	[{"device": "clear", "session_id": "685", "started_at": "message"}]
995	\N	\N	[{"device": "matter", "session_id": "975", "started_at": "character"}]
648	\N	\N	[{"device": "also", "session_id": "671", "started_at": "best"}]
318	\N	\N	[{"device": "audience", "session_id": "72", "started_at": "side"}]
415	\N	\N	[{"device": "stock", "session_id": "630", "started_at": "party"}]
803	\N	\N	[{"device": "alone", "session_id": "783", "started_at": "man"}]
208	\N	\N	[{"device": "system", "session_id": "813", "started_at": "time"}]
77	\N	\N	[{"device": "break", "session_id": "899", "started_at": "bed"}]
909	\N	\N	[{"device": "sound", "session_id": "377", "started_at": "partner"}]
772	\N	\N	[{"device": "practice", "session_id": "361", "started_at": "animal"}]
898	\N	\N	[{"device": "entire", "session_id": "778", "started_at": "property"}]
467	\N	\N	[{"device": "three", "session_id": "40", "started_at": "side"}]
329	\N	\N	[{"device": "question", "session_id": "443", "started_at": "performance"}]
382	\N	\N	[{"device": "follow", "session_id": "748", "started_at": "need"}, {"device": "role", "session_id": "657", "started_at": "agency"}]
315	\N	\N	[{"device": "difficult", "session_id": "281", "started_at": "senior"}]
993	\N	\N	[{"device": "deal", "session_id": "979", "started_at": "medical"}]
921	\N	\N	[{"device": "people", "session_id": "421", "started_at": "step"}, {"device": "marriage", "session_id": "316", "started_at": "such"}]
357	\N	\N	[{"device": "receive", "session_id": "1", "started_at": "report"}]
102	\N	\N	[{"device": "wind", "session_id": "577", "started_at": "national"}]
21	\N	\N	[{"device": "base", "session_id": "430", "started_at": "receive"}]
537	\N	\N	[{"device": "through", "session_id": "314", "started_at": "gun"}]
977	\N	\N	[{"device": "management", "session_id": "863", "started_at": "group"}]
637	\N	\N	[{"device": "federal", "session_id": "447", "started_at": "law"}]
361	\N	\N	[{"device": "magazine", "session_id": "792", "started_at": "reduce"}]
754	\N	\N	[{"device": "ago", "session_id": "709", "started_at": "executive"}]
169	\N	\N	[{"device": "then", "session_id": "717", "started_at": "effort"}]
837	\N	\N	[{"device": "entire", "session_id": "128", "started_at": "run"}]
346	\N	\N	[{"device": "environmental", "session_id": "49", "started_at": "myself"}]
246	\N	\N	[{"device": "rest", "session_id": "457", "started_at": "computer"}]
266	\N	\N	[{"device": "new", "session_id": "713", "started_at": "would"}]
730	\N	\N	[{"device": "age", "session_id": "848", "started_at": "likely"}]
774	\N	\N	[{"device": "eight", "session_id": "872", "started_at": "fill"}]
492	\N	\N	[{"device": "themselves", "session_id": "268", "started_at": "question"}]
197	\N	\N	[{"device": "I", "session_id": "636", "started_at": "as"}]
910	\N	\N	[{"device": "control", "session_id": "571", "started_at": "pull"}]
384	\N	\N	[{"device": "coach", "session_id": "489", "started_at": "cover"}]
148	\N	\N	[{"device": "foreign", "session_id": "931", "started_at": "into"}]
375	\N	\N	[{"device": "station", "session_id": "1", "started_at": "commercial"}]
753	\N	\N	[{"device": "foot", "session_id": "264", "started_at": "information"}]
314	\N	\N	[{"device": "speech", "session_id": "62", "started_at": "any"}]
784	\N	\N	[{"device": "body", "session_id": "748", "started_at": "available"}]
385	\N	\N	[{"device": "television", "session_id": "541", "started_at": "throughout"}]
222	\N	\N	[{"device": "high", "session_id": "366", "started_at": "region"}]
413	\N	\N	[{"device": "evening", "session_id": "672", "started_at": "region"}]
751	\N	\N	[{"device": "point", "session_id": "65", "started_at": "writer"}]
815	\N	\N	[{"device": "just", "session_id": "640", "started_at": "hotel"}, {"device": "same", "session_id": "294", "started_at": "family"}]
801	\N	\N	[{"device": "market", "session_id": "607", "started_at": "generation"}]
836	\N	\N	[{"device": "sell", "session_id": "7", "started_at": "art"}]
458	\N	\N	[{"device": "education", "session_id": "367", "started_at": "person"}]
734	\N	\N	[{"device": "do", "session_id": "152", "started_at": "part"}]
724	\N	\N	[{"device": "follow", "session_id": "28", "started_at": "ball"}]
729	\N	\N	[{"device": "represent", "session_id": "889", "started_at": "street"}]
362	\N	\N	[{"device": "either", "session_id": "437", "started_at": "everyone"}]
690	\N	\N	[{"device": "well", "session_id": "792", "started_at": "thus"}]
579	\N	\N	[{"device": "whatever", "session_id": "10", "started_at": "next"}]
11	\N	\N	[{"device": "speech", "session_id": "421", "started_at": "fill"}]
718	\N	\N	[{"device": "or", "session_id": "82", "started_at": "fall"}]
294	\N	\N	[{"device": "machine", "session_id": "12", "started_at": "other"}]
390	\N	\N	[{"device": "however", "session_id": "843", "started_at": "throw"}]
424	\N	\N	[{"device": "role", "session_id": "838", "started_at": "nice"}]
636	\N	\N	[{"device": "mouth", "session_id": "528", "started_at": "also"}]
695	\N	\N	[{"device": "child", "session_id": "301", "started_at": "listen"}]
2	\N	\N	[{"device": "change", "session_id": "169", "started_at": "street"}]
929	\N	\N	[{"device": "cost", "session_id": "254", "started_at": "physical"}]
202	\N	\N	[{"device": "although", "session_id": "463", "started_at": "become"}]
215	\N	\N	[{"device": "especially", "session_id": "649", "started_at": "community"}, {"device": "good", "session_id": "571", "started_at": "our"}]
465	\N	\N	[{"device": "task", "session_id": "840", "started_at": "close"}]
398	\N	\N	[{"device": "left", "session_id": "789", "started_at": "morning"}]
132	\N	\N	[{"device": "baby", "session_id": "516", "started_at": "collection"}]
899	\N	\N	[{"device": "party", "session_id": "157", "started_at": "hit"}]
808	\N	\N	[{"device": "throughout", "session_id": "893", "started_at": "best"}]
240	\N	\N	[{"device": "interview", "session_id": "87", "started_at": "note"}]
114	\N	\N	[{"device": "middle", "session_id": "66", "started_at": "computer"}]
613	\N	\N	[{"device": "red", "session_id": "103", "started_at": "environment"}]
447	\N	\N	[{"device": "onto", "session_id": "326", "started_at": "save"}]
701	\N	\N	[{"device": "boy", "session_id": "1000", "started_at": "inside"}]
265	\N	\N	[{"device": "but", "session_id": "35", "started_at": "alone"}]
822	\N	\N	[{"device": "poor", "session_id": "905", "started_at": "bag"}]
408	\N	\N	[{"device": "home", "session_id": "444", "started_at": "name"}]
466	\N	\N	[{"device": "share", "session_id": "11", "started_at": "interest"}]
358	\N	\N	[{"device": "line", "session_id": "557", "started_at": "read"}]
761	\N	\N	[{"device": "once", "session_id": "891", "started_at": "thus"}]
\.


--
-- Data for Name: temp_pricehistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_pricehistory (product_id, sku, product_name, base_price, is_active, quantity, delivery_type, role, productimage, productvariant, pricehistory) FROM stdin;
338	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "484", "ends_at": "from", "price_id": "690", "starts_at": "claim"}]
1292	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "164", "ends_at": "kitchen", "price_id": "660", "starts_at": "address"}]
56	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "197", "ends_at": "toward", "price_id": "760", "starts_at": "fish"}]
1632	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "399", "ends_at": "stage", "price_id": "382", "starts_at": "tell"}]
568	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "799", "ends_at": "manage", "price_id": "826", "starts_at": "choose"}]
1439	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "74", "ends_at": "resource", "price_id": "785", "starts_at": "give"}]
1977	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "2", "ends_at": "discussion", "price_id": "303", "starts_at": "side"}]
1726	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "995", "ends_at": "culture", "price_id": "122", "starts_at": "share"}]
303	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "127", "ends_at": "generation", "price_id": "485", "starts_at": "note"}]
1871	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "228", "ends_at": "environmental", "price_id": "666", "starts_at": "through"}]
1073	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "9", "ends_at": "like", "price_id": "626", "starts_at": "thought"}]
1477	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "592", "ends_at": "say", "price_id": "386", "starts_at": "later"}]
687	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "651", "ends_at": "degree", "price_id": "163", "starts_at": "heavy"}]
1030	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "260", "ends_at": "into", "price_id": "648", "starts_at": "just"}]
267	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "978", "ends_at": "difficult", "price_id": "620", "starts_at": "least"}]
113	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "102", "ends_at": "agency", "price_id": "140", "starts_at": "event"}]
1875	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "458", "ends_at": "them", "price_id": "767", "starts_at": "sing"}]
1206	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "620", "ends_at": "lawyer", "price_id": "288", "starts_at": "build"}]
1161	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "460", "ends_at": "pick", "price_id": "172", "starts_at": "send"}]
2024	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "998", "ends_at": "also", "price_id": "200", "starts_at": "away"}]
117	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "72", "ends_at": "from", "price_id": "656", "starts_at": "long"}]
1188	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "904", "ends_at": "later", "price_id": "720", "starts_at": "situation"}]
1960	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "449", "ends_at": "plan", "price_id": "191", "starts_at": "thing"}]
411	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "50", "ends_at": "worry", "price_id": "77", "starts_at": "power"}]
1032	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "858", "ends_at": "south", "price_id": "918", "starts_at": "those"}]
985	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "195", "ends_at": "charge", "price_id": "444", "starts_at": "person"}]
102	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "102", "ends_at": "moment", "price_id": "540", "starts_at": "hear"}]
1513	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "938", "ends_at": "culture", "price_id": "447", "starts_at": "brother"}]
1475	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "705", "ends_at": "food", "price_id": "291", "starts_at": "stop"}]
1177	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "45", "ends_at": "try", "price_id": "431", "starts_at": "goal"}]
635	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "335", "ends_at": "wear", "price_id": "775", "starts_at": "another"}]
1229	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "509", "ends_at": "fish", "price_id": "387", "starts_at": "fly"}]
1703	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "333", "ends_at": "though", "price_id": "89", "starts_at": "discuss"}]
980	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "86", "ends_at": "open", "price_id": "55", "starts_at": "morning"}]
436	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "841", "ends_at": "room", "price_id": "188", "starts_at": "take"}]
13	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "434", "ends_at": "program", "price_id": "347", "starts_at": "major"}]
669	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "912", "ends_at": "bring", "price_id": "456", "starts_at": "firm"}]
897	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "750", "ends_at": "like", "price_id": "921", "starts_at": "term"}]
294	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "208", "ends_at": "power", "price_id": "261", "starts_at": "house"}]
1445	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "441", "ends_at": "reason", "price_id": "172", "starts_at": "address"}]
1314	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "881", "ends_at": "benefit", "price_id": "757", "starts_at": "pass"}]
1402	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "777", "ends_at": "it", "price_id": "398", "starts_at": "I"}]
804	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "482", "ends_at": "medical", "price_id": "716", "starts_at": "option"}]
141	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "810", "ends_at": "him", "price_id": "335", "starts_at": "wind"}, {"price": "403", "ends_at": "range", "price_id": "571", "starts_at": "building"}]
1340	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "80", "ends_at": "fly", "price_id": "57", "starts_at": "month"}]
1288	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "59", "ends_at": "of", "price_id": "756", "starts_at": "left"}]
374	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "220", "ends_at": "bad", "price_id": "444", "starts_at": "simply"}]
301	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "38", "ends_at": "until", "price_id": "988", "starts_at": "stand"}]
470	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "658", "ends_at": "politics", "price_id": "316", "starts_at": "outside"}]
477	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "4", "ends_at": "leave", "price_id": "638", "starts_at": "race"}]
606	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "694", "ends_at": "Republican", "price_id": "771", "starts_at": "eight"}]
995	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "162", "ends_at": "information", "price_id": "462", "starts_at": "skill"}]
403	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "896", "ends_at": "by", "price_id": "655", "starts_at": "sea"}]
692	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "880", "ends_at": "act", "price_id": "669", "starts_at": "political"}]
1381	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "202", "ends_at": "collection", "price_id": "230", "starts_at": "actually"}]
627	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "250", "ends_at": "him", "price_id": "464", "starts_at": "past"}]
1939	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "664", "ends_at": "west", "price_id": "235", "starts_at": "accept"}]
996	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "59", "ends_at": "rich", "price_id": "376", "starts_at": "third"}]
1857	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "993", "ends_at": "network", "price_id": "446", "starts_at": "there"}]
644	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "932", "ends_at": "old", "price_id": "830", "starts_at": "either"}]
1869	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "9", "ends_at": "method", "price_id": "765", "starts_at": "voice"}]
1304	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "585", "ends_at": "point", "price_id": "491", "starts_at": "meet"}]
149	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "221", "ends_at": "city", "price_id": "997", "starts_at": "no"}]
228	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "174", "ends_at": "they", "price_id": "288", "starts_at": "high"}]
1411	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "299", "ends_at": "pull", "price_id": "667", "starts_at": "style"}]
839	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "811", "ends_at": "court", "price_id": "7", "starts_at": "hear"}]
856	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "738", "ends_at": "determine", "price_id": "134", "starts_at": "down"}]
1069	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "651", "ends_at": "dinner", "price_id": "285", "starts_at": "put"}]
1876	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "794", "ends_at": "by", "price_id": "47", "starts_at": "thought"}]
1661	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "394", "ends_at": "sit", "price_id": "199", "starts_at": "month"}]
706	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "471", "ends_at": "worker", "price_id": "990", "starts_at": "according"}]
698	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "700", "ends_at": "reason", "price_id": "158", "starts_at": "character"}]
408	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "160", "ends_at": "effort", "price_id": "994", "starts_at": "since"}]
975	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "964", "ends_at": "book", "price_id": "465", "starts_at": "care"}]
1106	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "886", "ends_at": "quality", "price_id": "929", "starts_at": "man"}]
1012	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "884", "ends_at": "cultural", "price_id": "976", "starts_at": "follow"}]
1105	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "144", "ends_at": "heavy", "price_id": "581", "starts_at": "moment"}]
1787	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "242", "ends_at": "again", "price_id": "590", "starts_at": "half"}]
910	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "259", "ends_at": "give", "price_id": "371", "starts_at": "quickly"}]
854	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "181", "ends_at": "wall", "price_id": "50", "starts_at": "safe"}]
891	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "635", "ends_at": "try", "price_id": "56", "starts_at": "time"}]
1378	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "308", "ends_at": "friend", "price_id": "49", "starts_at": "able"}]
978	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "7", "ends_at": "enter", "price_id": "560", "starts_at": "soon"}]
1114	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "469", "ends_at": "benefit", "price_id": "956", "starts_at": "the"}]
630	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "14", "ends_at": "about", "price_id": "442", "starts_at": "receive"}]
904	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "82", "ends_at": "fight", "price_id": "185", "starts_at": "personal"}]
663	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "47", "ends_at": "name", "price_id": "805", "starts_at": "despite"}]
1577	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "852", "ends_at": "just", "price_id": "490", "starts_at": "cold"}]
2044	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "278", "ends_at": "value", "price_id": "802", "starts_at": "night"}]
276	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "865", "ends_at": "certainly", "price_id": "569", "starts_at": "table"}]
816	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "521", "ends_at": "adult", "price_id": "924", "starts_at": "camera"}]
1217	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "319", "ends_at": "write", "price_id": "229", "starts_at": "week"}]
196	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "24", "ends_at": "allow", "price_id": "492", "starts_at": "word"}]
1716	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "592", "ends_at": "try", "price_id": "795", "starts_at": "couple"}]
273	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "207", "ends_at": "teacher", "price_id": "449", "starts_at": "thank"}]
111	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "152", "ends_at": "shake", "price_id": "839", "starts_at": "require"}]
1128	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "180", "ends_at": "heavy", "price_id": "828", "starts_at": "maybe"}]
472	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "848", "ends_at": "civil", "price_id": "326", "starts_at": "crime"}]
393	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "711", "ends_at": "whether", "price_id": "512", "starts_at": "hour"}]
\.


--
-- Data for Name: temp_productimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_productimage (product_id, sku, product_name, base_price, is_active, quantity, delivery_type, role, productimage, productvariant, pricehistory) FROM stdin;
1839	\N	\N	\N	\N	\N	\N	\N	[{"url": "both", "alt_text": "hundred", "image_id": "406", "sort_order": "489"}]	[]	[]
295	\N	\N	\N	\N	\N	\N	\N	[{"url": "people", "alt_text": "example", "image_id": "941", "sort_order": "955"}]	[]	[]
344	\N	\N	\N	\N	\N	\N	\N	[{"url": "you", "alt_text": "arrive", "image_id": "659", "sort_order": "221"}]	[]	[]
978	\N	\N	\N	\N	\N	\N	\N	[{"url": "million", "alt_text": "suffer", "image_id": "827", "sort_order": "212"}, {"url": "yeah", "alt_text": "human", "image_id": "831", "sort_order": "676"}]	[]	[]
875	\N	\N	\N	\N	\N	\N	\N	[{"url": "environmental", "alt_text": "letter", "image_id": "754", "sort_order": "843"}]	[]	[]
557	\N	\N	\N	\N	\N	\N	\N	[{"url": "something", "alt_text": "room", "image_id": "588", "sort_order": "868"}]	[]	[]
1155	\N	\N	\N	\N	\N	\N	\N	[{"url": "spend", "alt_text": "end", "image_id": "499", "sort_order": "925"}]	[]	[]
1808	\N	\N	\N	\N	\N	\N	\N	[{"url": "last", "alt_text": "unit", "image_id": "258", "sort_order": "900"}]	[]	[]
1774	\N	\N	\N	\N	\N	\N	\N	[{"url": "on", "alt_text": "page", "image_id": "92", "sort_order": "843"}]	[]	[]
361	\N	\N	\N	\N	\N	\N	\N	[{"url": "part", "alt_text": "science", "image_id": "796", "sort_order": "714"}]	[]	[]
1236	\N	\N	\N	\N	\N	\N	\N	[{"url": "range", "alt_text": "issue", "image_id": "993", "sort_order": "729"}]	[]	[]
1377	\N	\N	\N	\N	\N	\N	\N	[{"url": "dark", "alt_text": "process", "image_id": "99", "sort_order": "583"}]	[]	[]
1725	\N	\N	\N	\N	\N	\N	\N	[{"url": "skin", "alt_text": "marriage", "image_id": "985", "sort_order": "536"}]	[]	[]
1906	\N	\N	\N	\N	\N	\N	\N	[{"url": "whose", "alt_text": "evening", "image_id": "330", "sort_order": "867"}]	[]	[]
1861	\N	\N	\N	\N	\N	\N	\N	[{"url": "ability", "alt_text": "box", "image_id": "159", "sort_order": "537"}]	[]	[]
2081	\N	\N	\N	\N	\N	\N	\N	[{"url": "our", "alt_text": "significant", "image_id": "518", "sort_order": "234"}]	[]	[]
1782	\N	\N	\N	\N	\N	\N	\N	[{"url": "summer", "alt_text": "quickly", "image_id": "213", "sort_order": "568"}]	[]	[]
1547	\N	\N	\N	\N	\N	\N	\N	[{"url": "without", "alt_text": "successful", "image_id": "132", "sort_order": "928"}]	[]	[]
964	\N	\N	\N	\N	\N	\N	\N	[{"url": "easy", "alt_text": "age", "image_id": "405", "sort_order": "997"}]	[]	[]
1655	\N	\N	\N	\N	\N	\N	\N	[{"url": "travel", "alt_text": "child", "image_id": "38", "sort_order": "31"}]	[]	[]
641	\N	\N	\N	\N	\N	\N	\N	[{"url": "nation", "alt_text": "discover", "image_id": "417", "sort_order": "971"}]	[]	[]
1404	\N	\N	\N	\N	\N	\N	\N	[{"url": "able", "alt_text": "certain", "image_id": "872", "sort_order": "44"}]	[]	[]
55	\N	\N	\N	\N	\N	\N	\N	[{"url": "another", "alt_text": "beyond", "image_id": "473", "sort_order": "593"}]	[]	[]
2067	\N	\N	\N	\N	\N	\N	\N	[{"url": "wide", "alt_text": "much", "image_id": "652", "sort_order": "517"}]	[]	[]
1713	\N	\N	\N	\N	\N	\N	\N	[{"url": "each", "alt_text": "present", "image_id": "557", "sort_order": "409"}]	[]	[]
156	\N	\N	\N	\N	\N	\N	\N	[{"url": "right", "alt_text": "start", "image_id": "694", "sort_order": "769"}]	[]	[]
1554	\N	\N	\N	\N	\N	\N	\N	[{"url": "strong", "alt_text": "media", "image_id": "260", "sort_order": "499"}]	[]	[]
728	\N	\N	\N	\N	\N	\N	\N	[{"url": "under", "alt_text": "level", "image_id": "21", "sort_order": "964"}]	[]	[]
1013	\N	\N	\N	\N	\N	\N	\N	[{"url": "religious", "alt_text": "each", "image_id": "324", "sort_order": "67"}]	[]	[]
1875	\N	\N	\N	\N	\N	\N	\N	[{"url": "foot", "alt_text": "government", "image_id": "56", "sort_order": "63"}]	[]	[]
1471	\N	\N	\N	\N	\N	\N	\N	[{"url": "everything", "alt_text": "treat", "image_id": "330", "sort_order": "892"}]	[]	[]
385	\N	\N	\N	\N	\N	\N	\N	[{"url": "hard", "alt_text": "interview", "image_id": "143", "sort_order": "439"}]	[]	[]
1358	\N	\N	\N	\N	\N	\N	\N	[{"url": "degree", "alt_text": "consumer", "image_id": "892", "sort_order": "291"}]	[]	[]
1596	\N	\N	\N	\N	\N	\N	\N	[{"url": "same", "alt_text": "entire", "image_id": "5", "sort_order": "231"}]	[]	[]
372	\N	\N	\N	\N	\N	\N	\N	[{"url": "according", "alt_text": "bit", "image_id": "272", "sort_order": "415"}]	[]	[]
1732	\N	\N	\N	\N	\N	\N	\N	[{"url": "prevent", "alt_text": "sea", "image_id": "482", "sort_order": "416"}]	[]	[]
298	\N	\N	\N	\N	\N	\N	\N	[{"url": "star", "alt_text": "what", "image_id": "798", "sort_order": "609"}]	[]	[]
210	\N	\N	\N	\N	\N	\N	\N	[{"url": "lose", "alt_text": "vote", "image_id": "793", "sort_order": "271"}]	[]	[]
570	\N	\N	\N	\N	\N	\N	\N	[{"url": "candidate", "alt_text": "size", "image_id": "478", "sort_order": "460"}]	[]	[]
2064	\N	\N	\N	\N	\N	\N	\N	[{"url": "management", "alt_text": "upon", "image_id": "949", "sort_order": "541"}]	[]	[]
1945	\N	\N	\N	\N	\N	\N	\N	[{"url": "throw", "alt_text": "central", "image_id": "768", "sort_order": "815"}]	[]	[]
393	\N	\N	\N	\N	\N	\N	\N	[{"url": "behind", "alt_text": "group", "image_id": "611", "sort_order": "375"}]	[]	[]
1992	\N	\N	\N	\N	\N	\N	\N	[{"url": "treatment", "alt_text": "hour", "image_id": "175", "sort_order": "973"}]	[]	[]
1115	\N	\N	\N	\N	\N	\N	\N	[{"url": "we", "alt_text": "miss", "image_id": "673", "sort_order": "580"}]	[]	[]
2073	\N	\N	\N	\N	\N	\N	\N	[{"url": "visit", "alt_text": "yeah", "image_id": "566", "sort_order": "363"}]	[]	[]
595	\N	\N	\N	\N	\N	\N	\N	[{"url": "type", "alt_text": "investment", "image_id": "903", "sort_order": "221"}, {"url": "about", "alt_text": "wife", "image_id": "578", "sort_order": "194"}]	[]	[]
855	\N	\N	\N	\N	\N	\N	\N	[{"url": "information", "alt_text": "election", "image_id": "383", "sort_order": "745"}]	[]	[]
665	\N	\N	\N	\N	\N	\N	\N	[{"url": "knowledge", "alt_text": "real", "image_id": "667", "sort_order": "725"}]	[]	[]
2038	\N	\N	\N	\N	\N	\N	\N	[{"url": "green", "alt_text": "hope", "image_id": "67", "sort_order": "334"}]	[]	[]
798	\N	\N	\N	\N	\N	\N	\N	[{"url": "produce", "alt_text": "section", "image_id": "94", "sort_order": "532"}]	[]	[]
1897	\N	\N	\N	\N	\N	\N	\N	[{"url": "half", "alt_text": "third", "image_id": "235", "sort_order": "719"}]	[]	[]
772	\N	\N	\N	\N	\N	\N	\N	[{"url": "father", "alt_text": "blue", "image_id": "341", "sort_order": "133"}]	[]	[]
1397	\N	\N	\N	\N	\N	\N	\N	[{"url": "area", "alt_text": "toward", "image_id": "360", "sort_order": "241"}]	[]	[]
1296	\N	\N	\N	\N	\N	\N	\N	[{"url": "type", "alt_text": "international", "image_id": "252", "sort_order": "522"}]	[]	[]
101	\N	\N	\N	\N	\N	\N	\N	[{"url": "pretty", "alt_text": "world", "image_id": "595", "sort_order": "38"}]	[]	[]
560	\N	\N	\N	\N	\N	\N	\N	[{"url": "spend", "alt_text": "everyone", "image_id": "267", "sort_order": "782"}]	[]	[]
1648	\N	\N	\N	\N	\N	\N	\N	[{"url": "enter", "alt_text": "find", "image_id": "511", "sort_order": "120"}]	[]	[]
293	\N	\N	\N	\N	\N	\N	\N	[{"url": "health", "alt_text": "build", "image_id": "688", "sort_order": "422"}]	[]	[]
1647	\N	\N	\N	\N	\N	\N	\N	[{"url": "ago", "alt_text": "improve", "image_id": "100", "sort_order": "859"}]	[]	[]
453	\N	\N	\N	\N	\N	\N	\N	[{"url": "bar", "alt_text": "image", "image_id": "936", "sort_order": "353"}]	[]	[]
299	\N	\N	\N	\N	\N	\N	\N	[{"url": "natural", "alt_text": "campaign", "image_id": "377", "sort_order": "550"}]	[]	[]
1283	\N	\N	\N	\N	\N	\N	\N	[{"url": "development", "alt_text": "account", "image_id": "206", "sort_order": "439"}]	[]	[]
1468	\N	\N	\N	\N	\N	\N	\N	[{"url": "three", "alt_text": "customer", "image_id": "174", "sort_order": "581"}]	[]	[]
1411	\N	\N	\N	\N	\N	\N	\N	[{"url": "tell", "alt_text": "place", "image_id": "72", "sort_order": "576"}]	[]	[]
2024	\N	\N	\N	\N	\N	\N	\N	[{"url": "lawyer", "alt_text": "part", "image_id": "289", "sort_order": "482"}, {"url": "mother", "alt_text": "service", "image_id": "371", "sort_order": "257"}]	[]	[]
1409	\N	\N	\N	\N	\N	\N	\N	[{"url": "option", "alt_text": "medical", "image_id": "207", "sort_order": "338"}]	[]	[]
1476	\N	\N	\N	\N	\N	\N	\N	[{"url": "study", "alt_text": "game", "image_id": "848", "sort_order": "792"}]	[]	[]
1412	\N	\N	\N	\N	\N	\N	\N	[{"url": "science", "alt_text": "step", "image_id": "175", "sort_order": "906"}]	[]	[]
924	\N	\N	\N	\N	\N	\N	\N	[{"url": "most", "alt_text": "gas", "image_id": "227", "sort_order": "762"}]	[]	[]
1054	\N	\N	\N	\N	\N	\N	\N	[{"url": "chair", "alt_text": "set", "image_id": "341", "sort_order": "681"}]	[]	[]
510	\N	\N	\N	\N	\N	\N	\N	[{"url": "whether", "alt_text": "language", "image_id": "128", "sort_order": "143"}]	[]	[]
324	\N	\N	\N	\N	\N	\N	\N	[{"url": "name", "alt_text": "rock", "image_id": "135", "sort_order": "573"}]	[]	[]
75	\N	\N	\N	\N	\N	\N	\N	[{"url": "almost", "alt_text": "look", "image_id": "52", "sort_order": "392"}]	[]	[]
976	\N	\N	\N	\N	\N	\N	\N	[{"url": "method", "alt_text": "color", "image_id": "133", "sort_order": "348"}]	[]	[]
236	\N	\N	\N	\N	\N	\N	\N	[{"url": "free", "alt_text": "kid", "image_id": "476", "sort_order": "99"}]	[]	[]
565	\N	\N	\N	\N	\N	\N	\N	[{"url": "what", "alt_text": "ability", "image_id": "399", "sort_order": "150"}]	[]	[]
1453	\N	\N	\N	\N	\N	\N	\N	[{"url": "next", "alt_text": "early", "image_id": "89", "sort_order": "765"}]	[]	[]
947	\N	\N	\N	\N	\N	\N	\N	[{"url": "history", "alt_text": "southern", "image_id": "88", "sort_order": "522"}]	[]	[]
1266	\N	\N	\N	\N	\N	\N	\N	[{"url": "talk", "alt_text": "study", "image_id": "304", "sort_order": "155"}]	[]	[]
1568	\N	\N	\N	\N	\N	\N	\N	[{"url": "cut", "alt_text": "attack", "image_id": "998", "sort_order": "910"}]	[]	[]
812	\N	\N	\N	\N	\N	\N	\N	[{"url": "leave", "alt_text": "story", "image_id": "593", "sort_order": "454"}]	[]	[]
751	\N	\N	\N	\N	\N	\N	\N	[{"url": "clear", "alt_text": "listen", "image_id": "522", "sort_order": "785"}]	[]	[]
551	\N	\N	\N	\N	\N	\N	\N	[{"url": "television", "alt_text": "season", "image_id": "935", "sort_order": "970"}]	[]	[]
1192	\N	\N	\N	\N	\N	\N	\N	[{"url": "quite", "alt_text": "talk", "image_id": "538", "sort_order": "791"}]	[]	[]
1874	\N	\N	\N	\N	\N	\N	\N	[{"url": "price", "alt_text": "too", "image_id": "961", "sort_order": "709"}]	[]	[]
2000	\N	\N	\N	\N	\N	\N	\N	[{"url": "institution", "alt_text": "world", "image_id": "118", "sort_order": "995"}]	[]	[]
1174	\N	\N	\N	\N	\N	\N	\N	[{"url": "leg", "alt_text": "central", "image_id": "18", "sort_order": "601"}]	[]	[]
601	\N	\N	\N	\N	\N	\N	\N	[{"url": "citizen", "alt_text": "peace", "image_id": "809", "sort_order": "701"}]	[]	[]
828	\N	\N	\N	\N	\N	\N	\N	[{"url": "president", "alt_text": "without", "image_id": "313", "sort_order": "647"}]	[]	[]
588	\N	\N	\N	\N	\N	\N	\N	[{"url": "example", "alt_text": "policy", "image_id": "427", "sort_order": "945"}]	[]	[]
1107	\N	\N	\N	\N	\N	\N	\N	[{"url": "recent", "alt_text": "doctor", "image_id": "837", "sort_order": "554"}]	[]	[]
1272	\N	\N	\N	\N	\N	\N	\N	[{"url": "war", "alt_text": "hair", "image_id": "737", "sort_order": "938"}]	[]	[]
1121	\N	\N	\N	\N	\N	\N	\N	[{"url": "summer", "alt_text": "three", "image_id": "840", "sort_order": "48"}]	[]	[]
1171	\N	\N	\N	\N	\N	\N	\N	[{"url": "real", "alt_text": "end", "image_id": "178", "sort_order": "748"}]	[]	[]
896	\N	\N	\N	\N	\N	\N	\N	[{"url": "themselves", "alt_text": "attack", "image_id": "652", "sort_order": "369"}]	[]	[]
698	\N	\N	\N	\N	\N	\N	\N	[{"url": "own", "alt_text": "particularly", "image_id": "679", "sort_order": "728"}]	[]	[]
1765	\N	\N	\N	\N	\N	\N	\N	[{"url": "president", "alt_text": "treatment", "image_id": "114", "sort_order": "612"}]	[]	[]
\.


--
-- Data for Name: temp_productvariant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_productvariant (product_id, sku, product_name, base_price, is_active, quantity, delivery_type, role, productimage, productvariant, pricehistory) FROM stdin;
1086	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "lose", "variant_id": "222", "price_override": "1", "is_active_variant": "52"}]	[]
1357	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "since", "variant_id": "176", "price_override": "432", "is_active_variant": "585"}]	[]
1359	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "single", "variant_id": "998", "price_override": "145", "is_active_variant": "961"}]	[]
521	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "year", "variant_id": "524", "price_override": "479", "is_active_variant": "504"}]	[]
630	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "position", "variant_id": "972", "price_override": "842", "is_active_variant": "152"}, {"barcode": "gun", "variant_id": "582", "price_override": "652", "is_active_variant": "425"}]	[]
42	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "apply", "variant_id": "910", "price_override": "262", "is_active_variant": "476"}]	[]
1858	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "of", "variant_id": "602", "price_override": "347", "is_active_variant": "622"}]	[]
2098	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "individual", "variant_id": "427", "price_override": "242", "is_active_variant": "850"}]	[]
1429	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "structure", "variant_id": "478", "price_override": "491", "is_active_variant": "507"}]	[]
527	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "leg", "variant_id": "193", "price_override": "341", "is_active_variant": "197"}]	[]
810	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "become", "variant_id": "869", "price_override": "343", "is_active_variant": "478"}]	[]
685	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "goal", "variant_id": "783", "price_override": "873", "is_active_variant": "709"}]	[]
1165	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "account", "variant_id": "268", "price_override": "697", "is_active_variant": "561"}]	[]
1396	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "he", "variant_id": "459", "price_override": "736", "is_active_variant": "443"}, {"barcode": "consumer", "variant_id": "614", "price_override": "630", "is_active_variant": "86"}]	[]
925	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "off", "variant_id": "796", "price_override": "177", "is_active_variant": "606"}]	[]
663	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "scientist", "variant_id": "523", "price_override": "584", "is_active_variant": "839"}, {"barcode": "hit", "variant_id": "280", "price_override": "592", "is_active_variant": "366"}]	[]
1782	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "painting", "variant_id": "834", "price_override": "495", "is_active_variant": "759"}]	[]
1721	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "administration", "variant_id": "566", "price_override": "261", "is_active_variant": "927"}]	[]
1637	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "read", "variant_id": "542", "price_override": "513", "is_active_variant": "386"}]	[]
1203	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "task", "variant_id": "535", "price_override": "863", "is_active_variant": "230"}]	[]
1807	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "often", "variant_id": "876", "price_override": "316", "is_active_variant": "284"}]	[]
1506	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "course", "variant_id": "591", "price_override": "390", "is_active_variant": "268"}]	[]
32	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "throughout", "variant_id": "170", "price_override": "968", "is_active_variant": "843"}]	[]
1427	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "mind", "variant_id": "564", "price_override": "688", "is_active_variant": "590"}]	[]
1053	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "create", "variant_id": "554", "price_override": "896", "is_active_variant": "613"}]	[]
735	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "myself", "variant_id": "957", "price_override": "453", "is_active_variant": "489"}]	[]
1892	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "last", "variant_id": "326", "price_override": "77", "is_active_variant": "840"}]	[]
386	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "take", "variant_id": "228", "price_override": "682", "is_active_variant": "934"}]	[]
1000	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "industry", "variant_id": "364", "price_override": "352", "is_active_variant": "554"}]	[]
97	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "sell", "variant_id": "559", "price_override": "176", "is_active_variant": "921"}]	[]
1080	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "road", "variant_id": "651", "price_override": "899", "is_active_variant": "780"}]	[]
1185	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "control", "variant_id": "601", "price_override": "210", "is_active_variant": "212"}]	[]
1171	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "indeed", "variant_id": "994", "price_override": "471", "is_active_variant": "421"}]	[]
1556	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "safe", "variant_id": "697", "price_override": "863", "is_active_variant": "30"}]	[]
1794	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "run", "variant_id": "840", "price_override": "184", "is_active_variant": "130"}]	[]
1348	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "yard", "variant_id": "917", "price_override": "429", "is_active_variant": "568"}]	[]
295	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "miss", "variant_id": "178", "price_override": "522", "is_active_variant": "122"}]	[]
911	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "listen", "variant_id": "844", "price_override": "598", "is_active_variant": "101"}]	[]
566	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "bring", "variant_id": "635", "price_override": "478", "is_active_variant": "183"}]	[]
743	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "somebody", "variant_id": "559", "price_override": "91", "is_active_variant": "144"}]	[]
553	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "process", "variant_id": "418", "price_override": "825", "is_active_variant": "833"}]	[]
1639	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "offer", "variant_id": "196", "price_override": "354", "is_active_variant": "862"}]	[]
1997	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "issue", "variant_id": "924", "price_override": "652", "is_active_variant": "790"}]	[]
3	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "recent", "variant_id": "805", "price_override": "475", "is_active_variant": "616"}]	[]
23	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "its", "variant_id": "479", "price_override": "647", "is_active_variant": "864"}]	[]
1272	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "year", "variant_id": "105", "price_override": "345", "is_active_variant": "349"}]	[]
461	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "growth", "variant_id": "468", "price_override": "581", "is_active_variant": "700"}]	[]
1489	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "audience", "variant_id": "288", "price_override": "404", "is_active_variant": "340"}]	[]
479	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "keep", "variant_id": "310", "price_override": "141", "is_active_variant": "266"}]	[]
582	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "bit", "variant_id": "151", "price_override": "185", "is_active_variant": "192"}]	[]
1467	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "pressure", "variant_id": "882", "price_override": "128", "is_active_variant": "946"}]	[]
1214	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "firm", "variant_id": "414", "price_override": "175", "is_active_variant": "732"}]	[]
1696	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "himself", "variant_id": "355", "price_override": "636", "is_active_variant": "542"}]	[]
926	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "rather", "variant_id": "408", "price_override": "931", "is_active_variant": "118"}]	[]
1458	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "including", "variant_id": "372", "price_override": "234", "is_active_variant": "14"}]	[]
818	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "computer", "variant_id": "218", "price_override": "705", "is_active_variant": "776"}]	[]
1463	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "every", "variant_id": "81", "price_override": "30", "is_active_variant": "584"}]	[]
1404	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "drop", "variant_id": "363", "price_override": "396", "is_active_variant": "120"}]	[]
968	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "care", "variant_id": "629", "price_override": "769", "is_active_variant": "170"}]	[]
389	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "share", "variant_id": "215", "price_override": "477", "is_active_variant": "966"}]	[]
1302	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "theory", "variant_id": "543", "price_override": "186", "is_active_variant": "473"}]	[]
1255	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "room", "variant_id": "496", "price_override": "231", "is_active_variant": "401"}]	[]
578	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "two", "variant_id": "13", "price_override": "127", "is_active_variant": "178"}]	[]
407	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "risk", "variant_id": "240", "price_override": "327", "is_active_variant": "324"}]	[]
838	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "reveal", "variant_id": "428", "price_override": "484", "is_active_variant": "143"}]	[]
360	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "behavior", "variant_id": "554", "price_override": "352", "is_active_variant": "508"}]	[]
961	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "word", "variant_id": "290", "price_override": "737", "is_active_variant": "298"}]	[]
592	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "career", "variant_id": "373", "price_override": "883", "is_active_variant": "507"}]	[]
617	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "green", "variant_id": "779", "price_override": "616", "is_active_variant": "807"}]	[]
1352	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "tend", "variant_id": "238", "price_override": "52", "is_active_variant": "573"}]	[]
1706	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "approach", "variant_id": "185", "price_override": "835", "is_active_variant": "497"}, {"barcode": "data", "variant_id": "563", "price_override": "71", "is_active_variant": "197"}]	[]
906	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "eat", "variant_id": "190", "price_override": "910", "is_active_variant": "582"}]	[]
523	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "common", "variant_id": "329", "price_override": "136", "is_active_variant": "518"}]	[]
1007	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "guy", "variant_id": "763", "price_override": "53", "is_active_variant": "201"}]	[]
1089	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "purpose", "variant_id": "862", "price_override": "230", "is_active_variant": "844"}]	[]
1017	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "area", "variant_id": "894", "price_override": "674", "is_active_variant": "230"}]	[]
1393	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "bar", "variant_id": "256", "price_override": "736", "is_active_variant": "760"}]	[]
1675	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "whatever", "variant_id": "932", "price_override": "530", "is_active_variant": "631"}]	[]
1936	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "approach", "variant_id": "240", "price_override": "863", "is_active_variant": "738"}]	[]
1012	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "bill", "variant_id": "388", "price_override": "601", "is_active_variant": "681"}]	[]
916	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "real", "variant_id": "946", "price_override": "678", "is_active_variant": "180"}]	[]
1483	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "quality", "variant_id": "394", "price_override": "516", "is_active_variant": "160"}]	[]
873	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "put", "variant_id": "583", "price_override": "542", "is_active_variant": "131"}]	[]
1189	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "unit", "variant_id": "680", "price_override": "906", "is_active_variant": "171"}]	[]
284	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "home", "variant_id": "237", "price_override": "481", "is_active_variant": "68"}]	[]
1526	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "maintain", "variant_id": "920", "price_override": "61", "is_active_variant": "509"}]	[]
913	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "teacher", "variant_id": "457", "price_override": "148", "is_active_variant": "518"}]	[]
127	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "article", "variant_id": "856", "price_override": "402", "is_active_variant": "115"}]	[]
627	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "prevent", "variant_id": "169", "price_override": "903", "is_active_variant": "200"}]	[]
1217	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "expect", "variant_id": "274", "price_override": "640", "is_active_variant": "390"}]	[]
1643	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "well", "variant_id": "44", "price_override": "38", "is_active_variant": "493"}]	[]
2025	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "face", "variant_id": "991", "price_override": "657", "is_active_variant": "83"}]	[]
1970	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "black", "variant_id": "907", "price_override": "136", "is_active_variant": "886"}]	[]
1983	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "offer", "variant_id": "218", "price_override": "866", "is_active_variant": "636"}]	[]
575	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "we", "variant_id": "2", "price_override": "275", "is_active_variant": "767"}]	[]
593	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "treat", "variant_id": "243", "price_override": "156", "is_active_variant": "735"}]	[]
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
    ADD CONSTRAINT relation_10_pkey PRIMARY KEY (womenclothing_id);


--
-- Name: relation_11 relation_11_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_11
    ADD CONSTRAINT relation_11_pkey PRIMARY KEY (footwear_id);


--
-- Name: relation_12 relation_12_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_12
    ADD CONSTRAINT relation_12_pkey PRIMARY KEY (media_id);


--
-- Name: relation_13 relation_13_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_13
    ADD CONSTRAINT relation_13_pkey PRIMARY KEY (software_id);


--
-- Name: relation_14 relation_14_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_14
    ADD CONSTRAINT relation_14_pkey PRIMARY KEY (user_id);


--
-- Name: relation_15 relation_15_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_15
    ADD CONSTRAINT relation_15_pkey PRIMARY KEY (user_id, mv_user);


--
-- Name: relation_16 relation_16_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_16
    ADD CONSTRAINT relation_16_pkey PRIMARY KEY (customer_id);


--
-- Name: relation_17 relation_17_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_17
    ADD CONSTRAINT relation_17_pkey PRIMARY KEY (customer_id, contact_no);


--
-- Name: relation_18 relation_18_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_18
    ADD CONSTRAINT relation_18_pkey PRIMARY KEY (customer_id, subscription_addons);


--
-- Name: relation_19 relation_19_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_19
    ADD CONSTRAINT relation_19_pkey PRIMARY KEY (employee_id);


--
-- Name: relation_1 relation_1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_1
    ADD CONSTRAINT relation_1_pkey PRIMARY KEY (product_id);


--
-- Name: relation_20 relation_20_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_20
    ADD CONSTRAINT relation_20_pkey PRIMARY KEY (supportagent_id);


--
-- Name: relation_21 relation_21_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_21
    ADD CONSTRAINT relation_21_pkey PRIMARY KEY (fulfillmentassociate_id);


--
-- Name: relation_22 relation_22_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_22
    ADD CONSTRAINT relation_22_pkey PRIMARY KEY (categorymanager_id);


--
-- Name: relation_23 relation_23_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_23
    ADD CONSTRAINT relation_23_pkey PRIMARY KEY (tag_id);


--
-- Name: relation_24 relation_24_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_24
    ADD CONSTRAINT relation_24_pkey PRIMARY KEY (customer_id, address_id);


--
-- Name: relation_25 relation_25_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_25
    ADD CONSTRAINT relation_25_pkey PRIMARY KEY (customer_id, payment_method_id);


--
-- Name: relation_26 relation_26_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_26
    ADD CONSTRAINT relation_26_pkey PRIMARY KEY (customer_id);


--
-- Name: relation_27 relation_27_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_27
    ADD CONSTRAINT relation_27_pkey PRIMARY KEY (customer_id, wishlist_id);


--
-- Name: relation_28 relation_28_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_28
    ADD CONSTRAINT relation_28_pkey PRIMARY KEY (customer_id, review_id);


--
-- Name: relation_29 relation_29_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_29
    ADD CONSTRAINT relation_29_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_2 relation_2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_2
    ADD CONSTRAINT relation_2_pkey PRIMARY KEY (product_id, mv_attributes);


--
-- Name: relation_30 relation_30_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_30
    ADD CONSTRAINT relation_30_pkey PRIMARY KEY (custorder_id, shipment_id);


--
-- Name: relation_31 relation_31_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_31
    ADD CONSTRAINT relation_31_pkey PRIMARY KEY (promotion_id);


--
-- Name: relation_32 relation_32_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_32
    ADD CONSTRAINT relation_32_pkey PRIMARY KEY (promotion_id, coupon_code);


--
-- Name: relation_33 relation_33_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_33
    ADD CONSTRAINT relation_33_pkey PRIMARY KEY (warehouse_id);


--
-- Name: relation_34 relation_34_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_34
    ADD CONSTRAINT relation_34_pkey PRIMARY KEY (warehouse_id, bin_id);


--
-- Name: relation_35 relation_35_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_35
    ADD CONSTRAINT relation_35_pkey PRIMARY KEY (supplier_id);


--
-- Name: relation_36 relation_36_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_36
    ADD CONSTRAINT relation_36_pkey PRIMARY KEY (supplier_id, contact_id);


--
-- Name: relation_37 relation_37_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_37
    ADD CONSTRAINT relation_37_pkey PRIMARY KEY (purchaseorder_id);


--
-- Name: relation_38 relation_38_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_38
    ADD CONSTRAINT relation_38_pkey PRIMARY KEY (courierpartner_id);


--
-- Name: relation_39 relation_39_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_39
    ADD CONSTRAINT relation_39_pkey PRIMARY KEY (product_id);


--
-- Name: relation_3 relation_3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_3
    ADD CONSTRAINT relation_3_pkey PRIMARY KEY (physicalproduct_id);


--
-- Name: relation_40 relation_40_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_40
    ADD CONSTRAINT relation_40_pkey PRIMARY KEY (product_id, tag_id);


--
-- Name: relation_41 relation_41_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_41
    ADD CONSTRAINT relation_41_pkey PRIMARY KEY (product_id, bought_together_product_product_id);


--
-- Name: relation_42 relation_42_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_42
    ADD CONSTRAINT relation_42_pkey PRIMARY KEY (customer_id, product_id);


--
-- Name: relation_43 relation_43_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_43
    ADD CONSTRAINT relation_43_pkey PRIMARY KEY (customer_id, wishlist_id, product_id);


--
-- Name: relation_44 relation_44_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_44
    ADD CONSTRAINT relation_44_pkey PRIMARY KEY (customer_id, review_id);


--
-- Name: relation_45 relation_45_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_45
    ADD CONSTRAINT relation_45_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_46 relation_46_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_46
    ADD CONSTRAINT relation_46_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_47 relation_47_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_47
    ADD CONSTRAINT relation_47_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_48 relation_48_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_48
    ADD CONSTRAINT relation_48_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_49 relation_49_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_49
    ADD CONSTRAINT relation_49_pkey PRIMARY KEY (promotion_id, coupon_code);


--
-- Name: relation_4 relation_4_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_4
    ADD CONSTRAINT relation_4_pkey PRIMARY KEY (electronics_id);


--
-- Name: relation_50 relation_50_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_50
    ADD CONSTRAINT relation_50_pkey PRIMARY KEY (product_id, warehouse_id, bin_id);


--
-- Name: relation_51 relation_51_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_51
    ADD CONSTRAINT relation_51_pkey PRIMARY KEY (supplier_id, product_id);


--
-- Name: relation_52 relation_52_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_52
    ADD CONSTRAINT relation_52_pkey PRIMARY KEY (purchaseorder_id);


--
-- Name: relation_53 relation_53_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_53
    ADD CONSTRAINT relation_53_pkey PRIMARY KEY (purchaseorder_id, product_id);


--
-- Name: relation_54 relation_54_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_54
    ADD CONSTRAINT relation_54_pkey PRIMARY KEY (custorder_id, shipment_id);


--
-- Name: relation_55 relation_55_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_55
    ADD CONSTRAINT relation_55_pkey PRIMARY KEY (phone_id, bundle_phone_phone_id);


--
-- Name: relation_56 relation_56_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_56
    ADD CONSTRAINT relation_56_pkey PRIMARY KEY (smartwatch_id);


--
-- Name: relation_57 relation_57_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_57
    ADD CONSTRAINT relation_57_pkey PRIMARY KEY (phone_id);


--
-- Name: relation_5 relation_5_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_5
    ADD CONSTRAINT relation_5_pkey PRIMARY KEY (computer_id);


--
-- Name: relation_6 relation_6_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_6
    ADD CONSTRAINT relation_6_pkey PRIMARY KEY (desktop_id);


--
-- Name: relation_7 relation_7_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_7
    ADD CONSTRAINT relation_7_pkey PRIMARY KEY (phone_id);


--
-- Name: relation_8 relation_8_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_8
    ADD CONSTRAINT relation_8_pkey PRIMARY KEY (apparel_id);


--
-- Name: relation_9 relation_9_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_9
    ADD CONSTRAINT relation_9_pkey PRIMARY KEY (clothing_id);


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

