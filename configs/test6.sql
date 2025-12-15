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
    quantity integer
);


ALTER TABLE public.relation_1 OWNER TO postgres;

--
-- Name: relation_10; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_10 (
    accessories_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    warranty_months integer,
    accessory_type character varying(255)
);


ALTER TABLE public.relation_10 OWNER TO postgres;

--
-- Name: relation_11; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_11 (
    kitchenappliance_id integer NOT NULL,
    warranty_years integer
);


ALTER TABLE public.relation_11 OWNER TO postgres;

--
-- Name: relation_12; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_12 (
    apparel_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    size_system character varying(255),
    sole_material character varying(255),
    role character varying(255)
);


ALTER TABLE public.relation_12 OWNER TO postgres;

--
-- Name: relation_13; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_13 (
    clothing_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    size_system character varying(255),
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
    fit_type_women character varying(255)
);


ALTER TABLE public.relation_15 OWNER TO postgres;

--
-- Name: relation_16; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_16 (
    media_id integer NOT NULL,
    format character varying(255)
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
    password_hash character varying(255)
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
    loyalty_tier character varying(255)
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
    company_name character varying(255)
);


ALTER TABLE public.relation_24 OWNER TO postgres;

--
-- Name: relation_25; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_25 (
    employee_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    employee_no character varying(255)
);


ALTER TABLE public.relation_25 OWNER TO postgres;

--
-- Name: relation_26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_26 (
    corporateemployee_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    employee_no character varying(255),
    office_site character varying(255)
);


ALTER TABLE public.relation_26 OWNER TO postgres;

--
-- Name: relation_27; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_27 (
    engineer_id integer NOT NULL,
    level character varying(255)
);


ALTER TABLE public.relation_27 OWNER TO postgres;

--
-- Name: relation_28; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_28 (
    supportagent_id integer NOT NULL,
    queue character varying(255)
);


ALTER TABLE public.relation_28 OWNER TO postgres;

--
-- Name: relation_29; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_29 (
    fulfillmentassociate_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    employee_no character varying(255),
    shift character varying(255)
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
    warranty_months integer,
    role character varying(255),
    cpu character varying(255),
    ram_gb integer,
    carrier_lock character varying(255),
    energy_rating character varying(255)
);


ALTER TABLE public.relation_3 OWNER TO postgres;

--
-- Name: relation_30; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_30 (
    categorymanager_id integer NOT NULL,
    department character varying(255)
);


ALTER TABLE public.relation_30 OWNER TO postgres;

--
-- Name: relation_31; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_31 (
    product_id integer NOT NULL,
    image_id integer NOT NULL,
    url character varying(255),
    alt_text character varying(255),
    sort_order integer
);


ALTER TABLE public.relation_31 OWNER TO postgres;

--
-- Name: relation_32; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_32 (
    product_id integer NOT NULL,
    variant_id integer NOT NULL,
    price_override integer,
    barcode character varying(255),
    is_active_variant integer
);


ALTER TABLE public.relation_32 OWNER TO postgres;

--
-- Name: relation_33; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_33 (
    product_id integer NOT NULL,
    price_id integer NOT NULL,
    starts_at character varying(255),
    ends_at character varying(255),
    price integer
);


ALTER TABLE public.relation_33 OWNER TO postgres;

--
-- Name: relation_34; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_34 (
    tag_id integer NOT NULL,
    tag_name character varying(255)
);


ALTER TABLE public.relation_34 OWNER TO postgres;

--
-- Name: relation_35; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_35 (
    customer_id integer NOT NULL,
    address_id integer NOT NULL,
    kind character varying(255),
    line1 character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    postal_code character varying(255)
);


ALTER TABLE public.relation_35 OWNER TO postgres;

--
-- Name: relation_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_36 (
    customer_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    brand character varying(255),
    last4 character varying(255),
    exp_month integer,
    exp_year integer,
    is_default character varying(255)
);


ALTER TABLE public.relation_36 OWNER TO postgres;

--
-- Name: relation_37; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_37 (
    customer_id integer NOT NULL,
    updated_at character varying(255)
);


ALTER TABLE public.relation_37 OWNER TO postgres;

--
-- Name: relation_38; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_38 (
    customer_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    wishlist_name character varying(255)
);


ALTER TABLE public.relation_38 OWNER TO postgres;

--
-- Name: relation_39; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_39 (
    customer_id integer NOT NULL,
    review_id integer NOT NULL,
    rating integer,
    title character varying(255),
    body character varying(255),
    created_at character varying(255)
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
    delivery_type character varying(255)
);


ALTER TABLE public.relation_4 OWNER TO postgres;

--
-- Name: relation_40; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_40 (
    user_id integer NOT NULL,
    session_id integer NOT NULL,
    started_at character varying(255),
    device character varying(255)
);


ALTER TABLE public.relation_40 OWNER TO postgres;

--
-- Name: relation_41; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_41 (
    custorder_id integer NOT NULL,
    placed_at character varying(255),
    status character varying(255)
);


ALTER TABLE public.relation_41 OWNER TO postgres;

--
-- Name: relation_42; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_42 (
    custorder_id integer NOT NULL,
    shipment_id integer NOT NULL,
    carrier character varying(255),
    tracking_no character varying(255),
    shipped_at character varying(255),
    delivered_at character varying(255)
);


ALTER TABLE public.relation_42 OWNER TO postgres;

--
-- Name: relation_43; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_43 (
    promotion_id integer NOT NULL,
    promo_name character varying(255),
    starts_at character varying(255),
    ends_at character varying(255),
    discount_type character varying(255),
    discount_value character varying(255)
);


ALTER TABLE public.relation_43 OWNER TO postgres;

--
-- Name: relation_44; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_44 (
    promotion_id integer NOT NULL,
    coupon_code integer NOT NULL,
    max_uses integer,
    per_user_limit integer
);


ALTER TABLE public.relation_44 OWNER TO postgres;

--
-- Name: relation_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_45 (
    warehouse_id integer NOT NULL,
    warehouse_name character varying(255),
    region character varying(255)
);


ALTER TABLE public.relation_45 OWNER TO postgres;

--
-- Name: relation_46; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_46 (
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL,
    code character varying(255)
);


ALTER TABLE public.relation_46 OWNER TO postgres;

--
-- Name: relation_47; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_47 (
    supplier_id integer NOT NULL,
    supplier_name character varying(255)
);


ALTER TABLE public.relation_47 OWNER TO postgres;

--
-- Name: relation_48; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_48 (
    supplier_id integer NOT NULL,
    contact_id integer NOT NULL,
    email character varying(255),
    phone character varying(255)
);


ALTER TABLE public.relation_48 OWNER TO postgres;

--
-- Name: relation_49; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_49 (
    purchaseorder_id integer NOT NULL,
    created_at character varying(255),
    status character varying(255)
);


ALTER TABLE public.relation_49 OWNER TO postgres;

--
-- Name: relation_5; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_5 (
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
    form_factor character varying(255)
);


ALTER TABLE public.relation_5 OWNER TO postgres;

--
-- Name: relation_50; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_50 (
    courierpartner_id integer NOT NULL,
    carrier_code character varying(255),
    webhook_url character varying(255)
);


ALTER TABLE public.relation_50 OWNER TO postgres;

--
-- Name: relation_51; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_51 (
    product_id integer NOT NULL,
    category_products_category_id integer
);


ALTER TABLE public.relation_51 OWNER TO postgres;

--
-- Name: relation_52; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_52 (
    product_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.relation_52 OWNER TO postgres;

--
-- Name: relation_53; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_53 (
    product_id integer NOT NULL,
    bought_together_product_product_id integer NOT NULL
);


ALTER TABLE public.relation_53 OWNER TO postgres;

--
-- Name: relation_54; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_54 (
    customer_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_54 OWNER TO postgres;

--
-- Name: relation_55; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_55 (
    customer_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_55 OWNER TO postgres;

--
-- Name: relation_56; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_56 (
    customer_id integer NOT NULL,
    review_id integer NOT NULL,
    reviews_product_id integer
);


ALTER TABLE public.relation_56 OWNER TO postgres;

--
-- Name: relation_57; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_57 (
    custorder_id integer NOT NULL,
    customer_orders_customer_id integer
);


ALTER TABLE public.relation_57 OWNER TO postgres;

--
-- Name: relation_58; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_58 (
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_58 OWNER TO postgres;

--
-- Name: relation_59; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_59 (
    custorder_id integer NOT NULL,
    payment_order_customer_id integer,
    payment_order_payment_method_id integer
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
    battery_wh integer
);


ALTER TABLE public.relation_6 OWNER TO postgres;

--
-- Name: relation_60; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_60 (
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_60 OWNER TO postgres;

--
-- Name: relation_61; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_61 (
    promotion_id integer NOT NULL,
    coupon_code integer NOT NULL,
    order_coupons_custorder_id integer
);


ALTER TABLE public.relation_61 OWNER TO postgres;

--
-- Name: relation_62; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_62 (
    product_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL
);


ALTER TABLE public.relation_62 OWNER TO postgres;

--
-- Name: relation_63; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_63 (
    supplier_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_63 OWNER TO postgres;

--
-- Name: relation_64; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_64 (
    purchaseorder_id integer NOT NULL,
    supplier_pos_supplier_id integer
);


ALTER TABLE public.relation_64 OWNER TO postgres;

--
-- Name: relation_65; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_65 (
    purchaseorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_65 OWNER TO postgres;

--
-- Name: relation_66; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_66 (
    custorder_id integer NOT NULL,
    shipment_id integer NOT NULL,
    courier_shipments_courierpartner_id integer
);


ALTER TABLE public.relation_66 OWNER TO postgres;

--
-- Name: relation_67; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_67 (
    phone_id integer NOT NULL,
    bundle_phone_phone_id integer NOT NULL
);


ALTER TABLE public.relation_67 OWNER TO postgres;

--
-- Name: relation_68; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_68 (
    smartwatch_id integer NOT NULL,
    bundled_phone_smart_watch_phone_id integer
);


ALTER TABLE public.relation_68 OWNER TO postgres;

--
-- Name: relation_69; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_69 (
    phone_id integer NOT NULL,
    single_bundle_phone_bundled_phone_phone_id integer
);


ALTER TABLE public.relation_69 OWNER TO postgres;

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
    screen_size_in integer
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
    band_size character varying(255)
);


ALTER TABLE public.relation_8 OWNER TO postgres;

--
-- Name: relation_9; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_9 (
    camera_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    warranty_months integer,
    sensor_mp integer
);


ALTER TABLE public.relation_9 OWNER TO postgres;

--
-- Name: erdb_objects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.erdb_objects ALTER COLUMN id SET DEFAULT nextval('public.erdb_objects_id_seq'::regclass);


--
-- Data for Name: erdb_objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.erdb_objects (id, name, data) FROM stdin;
1	sorted_by_dependencies_tables	[]
2	tables	[["relation_0", [["category_id", "INTEGER", "category_id", "category"], ["category_name", "VARCHAR(255)", "category.category_name", "category"], ["parent", "INTEGER", "category.parent", "category"]], false, ["category_id"]], ["relation_1", [["product_id", "INTEGER", "product_id", "product"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"]], false, ["product_id"]], ["relation_2", [["product_id", "INTEGER", "product_id", "product.mv_attributes"], ["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "product.mv_attributes"]], false, ["product_id", "mv_attributes"]], ["relation_3", [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["role", "VARCHAR(255)", "role", "electronics"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["carrier_lock", "VARCHAR(255)", "phone.carrier_lock", "phone"], ["energy_rating", "VARCHAR(255)", "appliance.energy_rating", "appliance"]], false, ["physicalproduct_id"]], ["relation_4", [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["delivery_type", "VARCHAR(255)", "digitalproduct.delivery_type", "digitalproduct"]], false, ["digitalproduct_id"]], ["relation_5", [["desktop_id", "INTEGER", "desktop_id", "desktop"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["form_factor", "VARCHAR(255)", "desktop.form_factor", "desktop"]], false, ["desktop_id"]], ["relation_6", [["laptop_id", "INTEGER", "laptop_id", "laptop"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["battery_wh", "INTEGER", "laptop.battery_wh", "laptop"]], false, ["laptop_id"]], ["relation_7", [["tablet_id", "INTEGER", "tablet_id", "tablet"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["screen_size_in", "INTEGER", "tablet.screen_size_in", "tablet"]], false, ["tablet_id"]], ["relation_8", [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["band_size", "VARCHAR(255)", "smartwatch.band_size", "smartwatch"]], false, ["smartwatch_id"]], ["relation_9", [["camera_id", "INTEGER", "camera_id", "camera"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["sensor_mp", "INTEGER", "camera.sensor_mp", "camera"]], false, ["camera_id"]], ["relation_10", [["accessories_id", "INTEGER", "accessories_id", "accessories"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["accessory_type", "VARCHAR(255)", "accessories.accessory_type", "accessories"]], false, ["accessories_id"]], ["relation_11", [["kitchenappliance_id", "INTEGER", "kitchenappliance_id", "kitchenappliance"], ["warranty_years", "INTEGER", "kitchenappliance.warranty_years", "kitchenappliance"]], false, ["kitchenappliance_id"]], ["relation_12", [["apparel_id", "INTEGER", "apparel_id", "apparel"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["sole_material", "VARCHAR(255)", "footwear.sole_material", "footwear"], ["role", "VARCHAR(255)", "role", "footwear"]], false, ["apparel_id"]], ["relation_13", [["clothing_id", "INTEGER", "clothing_id", "clothing"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["material", "VARCHAR(255)", "clothing.material", "clothing"]], false, ["clothing_id"]], ["relation_14", [["menclothing_id", "INTEGER", "menclothing_id", "menclothing"], ["fit_type_men", "VARCHAR(255)", "menclothing.fit_type_men", "menclothing"]], false, ["menclothing_id"]], ["relation_15", [["womenclothing_id", "INTEGER", "womenclothing_id", "womenclothing"], ["fit_type_women", "VARCHAR(255)", "womenclothing.fit_type_women", "womenclothing"]], false, ["womenclothing_id"]], ["relation_16", [["media_id", "INTEGER", "media_id", "media"], ["format", "VARCHAR(255)", "media.format", "media"]], false, ["media_id"]], ["relation_17", [["software_id", "INTEGER", "software_id", "software"], ["license_type", "VARCHAR(255)", "software.license_type", "software"]], false, ["software_id"]], ["relation_18", [["user_id", "INTEGER", "user_id", "user"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"]], false, ["user_id"]], ["relation_19", [["user_id", "INTEGER", "user_id", "user.mv_user"], ["mv_user", "VARCHAR(255)", "user.mv_user", "user.mv_user"]], false, ["user_id", "mv_user"]], ["relation_20", [["customer_id", "INTEGER", "customer_id", "customer"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"]], false, ["customer_id"]], ["relation_21", [["customer_id", "INTEGER", "customer_id", "customer.contact_no"], ["contact_no", "VARCHAR(255)", "customer.contact_no", "customer.contact_no"]], false, ["customer_id", "contact_no"]], ["relation_22", [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer"], ["renewal_date", "VARCHAR(255)", "primecustomer.renewal_date", "primecustomer"]], false, ["primecustomer_id"]], ["relation_23", [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer.subscription_addons"], ["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "primecustomer.subscription_addons"]], false, ["primecustomer_id", "subscription_addons"]], ["relation_24", [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer"], ["company_name", "VARCHAR(255)", "businesscustomer.company_name", "businesscustomer"]], false, ["businesscustomer_id"]], ["relation_25", [["employee_id", "INTEGER", "employee_id", "employee"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"]], false, ["employee_id"]], ["relation_26", [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["office_site", "VARCHAR(255)", "corporateemployee.office_site", "corporateemployee"]], false, ["corporateemployee_id"]], ["relation_27", [["engineer_id", "INTEGER", "engineer_id", "engineer"], ["level", "VARCHAR(255)", "engineer.level", "engineer"]], false, ["engineer_id"]], ["relation_28", [["supportagent_id", "INTEGER", "supportagent_id", "supportagent"], ["queue", "VARCHAR(255)", "supportagent.queue", "supportagent"]], false, ["supportagent_id"]], ["relation_29", [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["shift", "VARCHAR(255)", "fulfillmentassociate.shift", "fulfillmentassociate"]], false, ["fulfillmentassociate_id"]], ["relation_30", [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager"], ["department", "VARCHAR(255)", "categorymanager.department", "categorymanager"]], false, ["categorymanager_id"]], ["relation_31", [["product_id", "INTEGER", "product_id", "productimage"], ["image_id", "INTEGER", "productimage.image_id", "productimage"], ["url", "VARCHAR(255)", "productimage.url", "productimage"], ["alt_text", "VARCHAR(255)", "productimage.alt_text", "productimage"], ["sort_order", "INTEGER", "productimage.sort_order", "productimage"]], false, ["product_id", "image_id"]], ["relation_32", [["product_id", "INTEGER", "product_id", "productvariant"], ["variant_id", "INTEGER", "productvariant.variant_id", "productvariant"], ["price_override", "INTEGER", "productvariant.price_override", "productvariant"], ["barcode", "VARCHAR(255)", "productvariant.barcode", "productvariant"], ["is_active_variant", "INTEGER", "productvariant.is_active_variant", "productvariant"]], false, ["product_id", "variant_id"]], ["relation_33", [["product_id", "INTEGER", "product_id", "pricehistory"], ["price_id", "INTEGER", "pricehistory.price_id", "pricehistory"], ["starts_at", "VARCHAR(255)", "pricehistory.starts_at", "pricehistory"], ["ends_at", "VARCHAR(255)", "pricehistory.ends_at", "pricehistory"], ["price", "INTEGER", "pricehistory.price", "pricehistory"]], false, ["product_id", "price_id"]], ["relation_34", [["tag_id", "INTEGER", "tag_id", "tag"], ["tag_name", "VARCHAR(255)", "tag.tag_name", "tag"]], false, ["tag_id"]], ["relation_35", [["customer_id", "INTEGER", "customer_id", "address"], ["address_id", "INTEGER", "address.address_id", "address"], ["kind", "VARCHAR(255)", "address.kind", "address"], ["line1", "VARCHAR(255)", "address.line1", "address"], ["city", "VARCHAR(255)", "address.city", "address"], ["state", "VARCHAR(255)", "address.state", "address"], ["country", "VARCHAR(255)", "address.country", "address"], ["postal_code", "VARCHAR(255)", "address.postal_code", "address"]], false, ["customer_id", "address_id"]], ["relation_36", [["customer_id", "INTEGER", "customer_id", "paymentmethod"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "paymentmethod"], ["brand", "VARCHAR(255)", "paymentmethod.brand", "paymentmethod"], ["last4", "VARCHAR(255)", "paymentmethod.last4", "paymentmethod"], ["exp_month", "INTEGER", "paymentmethod.exp_month", "paymentmethod"], ["exp_year", "INTEGER", "paymentmethod.exp_year", "paymentmethod"], ["is_default", "VARCHAR(255)", "paymentmethod.is_default", "paymentmethod"]], false, ["customer_id", "payment_method_id"]], ["relation_37", [["customer_id", "INTEGER", "customer_id", "cart"], ["updated_at", "VARCHAR(255)", "cart.updated_at", "cart"]], false, ["customer_id"]], ["relation_38", [["customer_id", "INTEGER", "customer_id", "wishlist"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist"], ["wishlist_name", "VARCHAR(255)", "wishlist.wishlist_name", "wishlist"]], false, ["customer_id", "wishlist_id"]], ["relation_39", [["customer_id", "INTEGER", "customer_id", "review"], ["review_id", "INTEGER", "review.review_id", "review"], ["rating", "INTEGER", "review.rating", "review"], ["title", "VARCHAR(255)", "review.title", "review"], ["body", "VARCHAR(255)", "review.body", "review"], ["created_at", "VARCHAR(255)", "review.created_at", "review"]], false, ["customer_id", "review_id"]], ["relation_40", [["user_id", "INTEGER", "user_id", "browsingsession"], ["session_id", "INTEGER", "browsingsession.session_id", "browsingsession"], ["started_at", "VARCHAR(255)", "browsingsession.started_at", "browsingsession"], ["device", "VARCHAR(255)", "browsingsession.device", "browsingsession"]], false, ["user_id", "session_id"]], ["relation_41", [["custorder_id", "INTEGER", "custorder_id", "custorder"], ["placed_at", "VARCHAR(255)", "custorder.placed_at", "custorder"], ["status", "VARCHAR(255)", "custorder.status", "custorder"]], false, ["custorder_id"]], ["relation_42", [["custorder_id", "INTEGER", "custorder_id", "shipment"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment"], ["carrier", "VARCHAR(255)", "shipment.carrier", "shipment"], ["tracking_no", "VARCHAR(255)", "shipment.tracking_no", "shipment"], ["shipped_at", "VARCHAR(255)", "shipment.shipped_at", "shipment"], ["delivered_at", "VARCHAR(255)", "shipment.delivered_at", "shipment"]], false, ["custorder_id", "shipment_id"]], ["relation_43", [["promotion_id", "INTEGER", "promotion_id", "promotion"], ["promo_name", "VARCHAR(255)", "promotion.promo_name", "promotion"], ["starts_at", "VARCHAR(255)", "promotion.starts_at", "promotion"], ["ends_at", "VARCHAR(255)", "promotion.ends_at", "promotion"], ["discount_type", "VARCHAR(255)", "promotion.discount_type", "promotion"], ["discount_value", "VARCHAR(255)", "promotion.discount_value", "promotion"]], false, ["promotion_id"]], ["relation_44", [["promotion_id", "INTEGER", "promotion_id", "coupon"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon"], ["max_uses", "INTEGER", "coupon.max_uses", "coupon"], ["per_user_limit", "INTEGER", "coupon.per_user_limit", "coupon"]], false, ["promotion_id", "coupon_code"]], ["relation_45", [["warehouse_id", "INTEGER", "warehouse_id", "warehouse"], ["warehouse_name", "VARCHAR(255)", "warehouse.warehouse_name", "warehouse"], ["region", "VARCHAR(255)", "warehouse.region", "warehouse"]], false, ["warehouse_id"]], ["relation_46", [["warehouse_id", "INTEGER", "warehouse_id", "warehousebin"], ["bin_id", "INTEGER", "warehousebin.bin_id", "warehousebin"], ["code", "VARCHAR(255)", "warehousebin.code", "warehousebin"]], false, ["warehouse_id", "bin_id"]], ["relation_47", [["supplier_id", "INTEGER", "supplier_id", "supplier"], ["supplier_name", "VARCHAR(255)", "supplier.supplier_name", "supplier"]], false, ["supplier_id"]], ["relation_48", [["supplier_id", "INTEGER", "supplier_id", "suppliercontact"], ["contact_id", "INTEGER", "suppliercontact.contact_id", "suppliercontact"], ["email", "VARCHAR(255)", "suppliercontact.email", "suppliercontact"], ["phone", "VARCHAR(255)", "suppliercontact.phone", "suppliercontact"]], false, ["supplier_id", "contact_id"]], ["relation_49", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder"], ["created_at", "VARCHAR(255)", "purchaseorder.created_at", "purchaseorder"], ["status", "VARCHAR(255)", "purchaseorder.status", "purchaseorder"]], false, ["purchaseorder_id"]], ["relation_50", [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner"], ["carrier_code", "VARCHAR(255)", "courierpartner.carrier_code", "courierpartner"], ["webhook_url", "VARCHAR(255)", "courierpartner.webhook_url", "courierpartner"]], false, ["courierpartner_id"]], ["relation_51", [["product_id", "INTEGER", "product_id", "category_products"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], false, ["product_id"]], ["relation_52", [["product_id", "INTEGER", "product_id", "product_tags"], ["tag_id", "INTEGER", "tag_id", "product_tags"]], false, ["product_id", "tag_id"]], ["relation_53", [["product_id", "INTEGER", "product_id", "bought_together"], ["bought_together_product_product_id", "INTEGER", "product_id", "bought_together"]], false, ["product_id", "bought_together_product_product_id"]], ["relation_54", [["customer_id", "INTEGER", "customer_id", "cart_contains"], ["product_id", "INTEGER", "product_id", "cart_contains"]], false, ["customer_id", "product_id"]], ["relation_55", [["customer_id", "INTEGER", "customer_id", "wishlist_contains"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_contains"], ["product_id", "INTEGER", "product_id", "wishlist_contains"]], false, ["customer_id", "wishlist_id", "product_id"]], ["relation_56", [["customer_id", "INTEGER", "customer_id", "reviews"], ["review_id", "INTEGER", "review.review_id", "reviews"], ["reviews_product_id", "INTEGER", "product_id", "reviews"]], false, ["customer_id", "review_id"]], ["relation_57", [["custorder_id", "INTEGER", "custorder_id", "customer_orders"], ["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders"]], false, ["custorder_id"]], ["relation_58", [["custorder_id", "INTEGER", "custorder_id", "order_items"], ["product_id", "INTEGER", "product_id", "order_items"]], false, ["custorder_id", "product_id"]], ["relation_59", [["custorder_id", "INTEGER", "custorder_id", "payment_order"], ["payment_order_customer_id", "INTEGER", "customer_id", "payment_order"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order"]], false, ["custorder_id"]], ["relation_60", [["custorder_id", "INTEGER", "custorder_id", "order_returns"], ["product_id", "INTEGER", "product_id", "order_returns"]], false, ["custorder_id", "product_id"]], ["relation_61", [["promotion_id", "INTEGER", "promotion_id", "order_coupons"], ["coupon_code", "INTEGER", "coupon.coupon_code", "order_coupons"], ["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons"]], false, ["promotion_id", "coupon_code"]], ["relation_62", [["product_id", "INTEGER", "product_id", "stock"], ["warehouse_id", "INTEGER", "warehouse_id", "stock"], ["bin_id", "INTEGER", "warehousebin.bin_id", "stock"]], false, ["product_id", "warehouse_id", "bin_id"]], ["relation_63", [["supplier_id", "INTEGER", "supplier_id", "supplier_products"], ["product_id", "INTEGER", "product_id", "supplier_products"]], false, ["supplier_id", "product_id"]], ["relation_64", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "supplier_pos"], ["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos"]], false, ["purchaseorder_id"]], ["relation_65", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "po_items"], ["product_id", "INTEGER", "product_id", "po_items"]], false, ["purchaseorder_id", "product_id"]], ["relation_66", [["custorder_id", "INTEGER", "custorder_id", "courier_shipments"], ["shipment_id", "INTEGER", "shipment.shipment_id", "courier_shipments"], ["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments"]], false, ["custorder_id", "shipment_id"]], ["relation_67", [["phone_id", "INTEGER", "physicalproduct_id", "bundle_phones"], ["bundle_phone_phone_id", "INTEGER", "physicalproduct_id", "bundle_phones"]], false, ["phone_id", "bundle_phone_phone_id"]], ["relation_68", [["smartwatch_id", "INTEGER", "smartwatch_id", "bundled_phone_smart_watch"], ["bundled_phone_smart_watch_phone_id", "INTEGER", "physicalproduct_id", "bundled_phone_smart_watch"]], false, ["smartwatch_id"]], ["relation_69", [["phone_id", "INTEGER", "physicalproduct_id", "bundled_phone"], ["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "physicalproduct_id", "bundled_phone"]], false, ["phone_id"]]]
3	types	{}
4	graph	{"cost": 74330005.97914565, "edges": [{"type": "edge", "source": "product.mv_attributes", "target": "product", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "physicalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "digitalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "electronics", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "computer", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "desktop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "laptop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "tablet", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "smartwatch", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "camera", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "phone", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "accessories", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "appliance", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "kitchenappliance", "target": "appliance", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "apparel", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "clothing", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "menclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "womenclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "footwear", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "media", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "software", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "user.mv_user", "target": "user", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer.contact_no", "target": "customer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "primecustomer.subscription_addons", "target": "primecustomer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "primecustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "businesscustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "employee", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "corporateemployee", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "engineer", "target": "corporateemployee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "supportagent", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "fulfillmentassociate", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "categorymanager", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productimage", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productvariant", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "pricehistory", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "address", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "paymentmethod", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "cart", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "wishlist", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "review", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "browsingsession", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "shipment", "target": "custorder", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "coupon", "target": "promotion", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "warehousebin", "target": "warehouse", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "suppliercontact", "target": "supplier", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "category_products", "target": "category", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "category_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "tag", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "cart", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "wishlist", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "review", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "customer", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "paymentmethod", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "coupon", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "warehousebin", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "courierpartner", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "shipment", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "smartwatch", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}], "nodes": [{"key": {"table_key": [["category_id", "INTEGER", "category_id", "category_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["category"]}, "name": "Category", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 1, "attributes": ["category.category_id", "category.category_name", "category.parent"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "category_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "category_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "parent", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Category", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[1, "relation_0"]], "unique_name": "category", "mapped_table": [1, "relation_0"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "category_id", "pk_type": "INTEGER", "pk_ER_name": "category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "category_name", "type": "VARCHAR", "unique_name": "category.category_name", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "parent", "type": "INT", "unique_name": "category.parent", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["category"], "select_frequency": 2, "select_all_tables": [[1, "relation_0"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "category_id", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 2, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.category_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "category_name", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 3, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "category.category_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "parent", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 4, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.parent", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["product"]}, "name": "Product", "type": "ENTITY", "is_mvds": true, "children": ["physicalproduct", "digitalproduct"], "is_total": null, "sort_key": 5, "attributes": ["product.product_id", "product.sku", "product.product_name", "product.base_price", "product.is_active", "product.quantity", "product.mv_attributes"], "node_cover": ["product", "physicalproduct", "desktop", "laptop", "tablet", "smartwatch", "camera", "accessories", "apparel", "clothing", "digitalproduct"], "entity_dict": {"attributes": [{"attr_name": "product_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sku", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "product_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "base_price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "quantity", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_attributes", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Product", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"], [12, "relation_2"]], "unique_name": "product", "mapped_table": [5, "relation_1"], "parent_entity": null, "relation_size": 2100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["product"], "select_frequency": 10, "select_all_tables": [[5, "relation_1"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "product_id", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 6, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.product_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sku", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 7, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.sku", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "product_name", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 8, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.product_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "base_price", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 9, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.base_price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 10, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.is_active", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "quantity", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 11, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.quantity", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "mv_attributes"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": null}, "name": "mv_attributes", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 12, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.mv_attributes", "is_composite": false, "is_flattened": false, "mapped_table": [12, "relation_2"], "relation_size": 3144, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["physicalproduct"]}, "name": "PhysicalProduct", "type": "ENTITY", "is_mvds": false, "children": ["electronics", "appliance", "apparel"], "is_total": true, "sort_key": 13, "attributes": ["physicalproduct.dimensions"], "node_cover": ["physicalproduct", "desktop", "laptop", "tablet", "smartwatch", "camera", "accessories", "apparel", "clothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "dimensions", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PhysicalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [12, "relation_2"]], "unique_name": "physicalproduct", "mapped_table": [13, "relation_3"], "parent_entity": "product", "relation_size": 1700, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "physicalproduct_id", "pk_entity_name": "physicalproduct", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["physicalproduct"], "select_frequency": 5, "select_all_tables": [[13, "relation_3"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "dimensions", "type": "ATTRIBUTE", "entity": "physicalproduct", "children": [], "sort_key": 14, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "physicalproduct.dimensions", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["digitalproduct"]}, "name": "DigitalProduct", "type": "ENTITY", "is_mvds": false, "children": ["media", "software"], "is_total": true, "sort_key": 15, "attributes": ["digitalproduct.delivery_type"], "node_cover": ["digitalproduct"], "entity_dict": {"total": true, "attributes": [{"attr_name": "delivery_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "DigitalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[15, "relation_4"], [12, "relation_2"]], "unique_name": "digitalproduct", "mapped_table": [15, "relation_4"], "parent_entity": "product", "relation_size": 300, "attribute_list": [{"pk_name": "digitalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "digitalproduct_id", "pk_entity_name": "digitalproduct", "pk_unique_name": "digitalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["digitalproduct"], "select_frequency": 2, "select_all_tables": [[15, "relation_4"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "delivery_type", "type": "ATTRIBUTE", "entity": "digitalproduct", "children": [], "sort_key": 16, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "digitalproduct.delivery_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "electronics_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["electronics"]}, "name": "Electronics", "type": "ENTITY", "is_mvds": false, "children": ["computer", "tablet", "smartwatch", "camera", "phone", "accessories"], "is_total": true, "sort_key": 17, "attributes": ["electronics.warranty_months"], "node_cover": ["electronics", "desktop", "laptop", "tablet", "smartwatch", "camera", "accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_months", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Electronics", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [12, "relation_2"]], "unique_name": "electronics", "mapped_table": [13, "relation_3"], "parent_entity": "physicalproduct", "relation_size": 900, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "electronics_id", "pk_entity_name": "electronics", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["electronics"], "select_frequency": 1, "select_all_tables": [[13, "relation_3"], [12, "relation_2"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warranty_months", "type": "ATTRIBUTE", "entity": "electronics", "children": [], "sort_key": 18, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "electronics.warranty_months", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "computer_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["computer"]}, "name": "Computer", "type": "ENTITY", "is_mvds": false, "children": ["desktop", "laptop"], "is_total": true, "sort_key": 19, "attributes": ["computer.cpu", "computer.ram_gb"], "node_cover": ["computer", "desktop", "laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "cpu", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ram_gb", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Computer", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [12, "relation_2"]], "unique_name": "computer", "mapped_table": [13, "relation_3"], "parent_entity": "electronics", "relation_size": 300, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "computer_id", "pk_entity_name": "computer", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["computer"], "select_frequency": 10, "select_all_tables": [[13, "relation_3"], [12, "relation_2"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "cpu", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 20, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "computer.cpu", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ram_gb", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 21, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "computer.ram_gb", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["desktop_id", "INTEGER", "desktop_id", "desktop_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_3"], "table_key_entities": ["desktop"]}, "name": "Desktop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 22, "attributes": ["desktop.form_factor"], "node_cover": ["desktop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "form_factor", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Desktop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [22, "relation_5"]], "unique_name": "desktop", "mapped_table": [22, "relation_5"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "desktop_id", "pk_type": "INTEGER", "pk_ER_name": "desktop_id", "pk_entity_name": "desktop", "pk_unique_name": "desktop_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "form_factor", "type": "VARCHAR", "unique_name": "desktop.form_factor", "is_flattened": null, "mapped_table": [22, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "desktop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["desktop"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [22, "relation_5"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "form_factor", "type": "ATTRIBUTE", "entity": "desktop", "children": [], "sort_key": 23, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "desktop.form_factor", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["laptop_id", "INTEGER", "laptop_id", "laptop_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_3"], "table_key_entities": ["laptop"]}, "name": "Laptop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 24, "attributes": ["laptop.battery_wh"], "node_cover": ["laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "battery_wh", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Laptop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [24, "relation_6"]], "unique_name": "laptop", "mapped_table": [24, "relation_6"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "laptop_id", "pk_type": "INTEGER", "pk_ER_name": "laptop_id", "pk_entity_name": "laptop", "pk_unique_name": "laptop_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "battery_wh", "type": "INT", "unique_name": "laptop.battery_wh", "is_flattened": null, "mapped_table": [24, "relation_6"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "laptop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["laptop"], "select_frequency": 5, "select_all_tables": [[12, "relation_2"], [24, "relation_6"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "battery_wh", "type": "ATTRIBUTE", "entity": "laptop", "children": [], "sort_key": 25, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "laptop.battery_wh", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tablet_id", "INTEGER", "tablet_id", "tablet_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_3"], "table_key_entities": ["tablet"]}, "name": "Tablet", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 26, "attributes": ["tablet.screen_size_in"], "node_cover": ["tablet"], "entity_dict": {"total": true, "attributes": [{"attr_name": "screen_size_in", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tablet", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[26, "relation_7"], [12, "relation_2"]], "unique_name": "tablet", "mapped_table": [26, "relation_7"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "tablet_id", "pk_type": "INTEGER", "pk_ER_name": "tablet_id", "pk_entity_name": "tablet", "pk_unique_name": "tablet_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "screen_size_in", "type": "INT", "unique_name": "tablet.screen_size_in", "is_flattened": null, "mapped_table": [26, "relation_7"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tablet", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["tablet"], "select_frequency": 1, "select_all_tables": [[26, "relation_7"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "screen_size_in", "type": "ATTRIBUTE", "entity": "tablet", "children": [], "sort_key": 27, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tablet.screen_size_in", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_3"], "table_key_entities": ["smartwatch"]}, "name": "Smartwatch", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 28, "attributes": ["smartwatch.band_size"], "node_cover": ["smartwatch"], "entity_dict": {"total": true, "attributes": [{"attr_name": "band_size", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Smartwatch", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [28, "relation_8"]], "unique_name": "smartwatch", "mapped_table": [28, "relation_8"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "band_size", "type": "VARCHAR", "unique_name": "smartwatch.band_size", "is_flattened": null, "mapped_table": [28, "relation_8"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "smartwatch", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["smartwatch"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [28, "relation_8"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "band_size", "type": "ATTRIBUTE", "entity": "smartwatch", "children": [], "sort_key": 29, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "smartwatch.band_size", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["camera_id", "INTEGER", "camera_id", "camera_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_3"], "table_key_entities": ["camera"]}, "name": "Camera", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 30, "attributes": ["camera.sensor_mp"], "node_cover": ["camera"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sensor_mp", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Camera", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [30, "relation_9"]], "unique_name": "camera", "mapped_table": [30, "relation_9"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "camera_id", "pk_type": "INTEGER", "pk_ER_name": "camera_id", "pk_entity_name": "camera", "pk_unique_name": "camera_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sensor_mp", "type": "INT", "unique_name": "camera.sensor_mp", "is_flattened": null, "mapped_table": [30, "relation_9"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "camera", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["camera"], "select_frequency": 2, "select_all_tables": [[12, "relation_2"], [30, "relation_9"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "sensor_mp", "type": "ATTRIBUTE", "entity": "camera", "children": [], "sort_key": 31, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "camera.sensor_mp", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "phone_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["phone"]}, "name": "Phone", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 32, "attributes": ["phone.carrier_lock"], "node_cover": ["phone"], "entity_dict": {"total": true, "attributes": [{"attr_name": "carrier_lock", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Phone", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [12, "relation_2"]], "unique_name": "phone", "mapped_table": [13, "relation_3"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "carrier_lock", "type": "VARCHAR", "unique_name": "phone.carrier_lock", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "phone", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["phone"], "select_frequency": 10, "select_all_tables": [[13, "relation_3"], [12, "relation_2"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "carrier_lock", "type": "ATTRIBUTE", "entity": "phone", "children": [], "sort_key": 33, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "phone.carrier_lock", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["accessories_id", "INTEGER", "accessories_id", "accessories_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_3"], "table_key_entities": ["accessories"]}, "name": "Accessories", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 34, "attributes": ["accessories.accessory_type"], "node_cover": ["accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "accessory_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Accessories", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[34, "relation_10"], [12, "relation_2"]], "unique_name": "accessories", "mapped_table": [34, "relation_10"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "accessories_id", "pk_type": "INTEGER", "pk_ER_name": "accessories_id", "pk_entity_name": "accessories", "pk_unique_name": "accessories_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "accessory_type", "type": "VARCHAR", "unique_name": "accessories.accessory_type", "is_flattened": null, "mapped_table": [34, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "accessories", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["accessories"], "select_frequency": 0, "select_all_tables": [[34, "relation_10"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "accessory_type", "type": "ATTRIBUTE", "entity": "accessories", "children": [], "sort_key": 35, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "accessories.accessory_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "appliance_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["appliance"]}, "name": "Appliance", "type": "ENTITY", "is_mvds": false, "children": ["kitchenappliance"], "is_total": true, "sort_key": 36, "attributes": ["appliance.energy_rating"], "node_cover": ["appliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "energy_rating", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Appliance", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [12, "relation_2"]], "unique_name": "appliance", "mapped_table": [13, "relation_3"], "parent_entity": "physicalproduct", "relation_size": 200, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "appliance_id", "pk_entity_name": "appliance", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["appliance"], "select_frequency": 1, "select_all_tables": [[13, "relation_3"], [12, "relation_2"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "energy_rating", "type": "ATTRIBUTE", "entity": "appliance", "children": [], "sort_key": 37, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "appliance.energy_rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["kitchenappliance_id", "INTEGER", "kitchenappliance_id", "kitchenappliance_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "appliance_id"]], "reference_node": ["appliance"], "reference_table": ["relation_3"], "table_key_entities": ["kitchenappliance"]}, "name": "KitchenAppliance", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 38, "attributes": ["kitchenappliance.warranty_years"], "node_cover": ["kitchenappliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_years", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "KitchenAppliance", "entity_type": null, "parent_entity": "Appliance"}, "is_no_table": false, "is_subclass": true, "node_tables": [[13, "relation_3"], [12, "relation_2"], [38, "relation_11"]], "unique_name": "kitchenappliance", "mapped_table": [38, "relation_11"], "parent_entity": "appliance", "relation_size": 100, "attribute_list": [{"pk_name": "kitchenappliance_id", "pk_type": "INTEGER", "pk_ER_name": "kitchenappliance_id", "pk_entity_name": "kitchenappliance", "pk_unique_name": "kitchenappliance_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "appliance"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_years", "type": "INT", "unique_name": "kitchenappliance.warranty_years", "is_flattened": null, "mapped_table": [38, "relation_11"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "kitchenappliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["kitchenappliance"], "select_frequency": 10, "select_all_tables": [[13, "relation_3"], [12, "relation_2"], [38, "relation_11"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "physicalproduct"}, {"key": null, "name": "warranty_years", "type": "ATTRIBUTE", "entity": "kitchenappliance", "children": [], "sort_key": 39, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "kitchenappliance.warranty_years", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["apparel"]}, "name": "Apparel", "type": "ENTITY", "is_mvds": false, "children": ["clothing", "footwear"], "is_total": true, "sort_key": 40, "attributes": ["apparel.size_system"], "node_cover": ["apparel", "clothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "size_system", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Apparel", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[40, "relation_12"], [12, "relation_2"]], "unique_name": "apparel", "mapped_table": [40, "relation_12"], "parent_entity": "physicalproduct", "relation_size": 500, "attribute_list": [{"pk_name": "apparel_id", "pk_type": "INTEGER", "pk_ER_name": "apparel_id", "pk_entity_name": "apparel", "pk_unique_name": "apparel_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["apparel"], "select_frequency": 1, "select_all_tables": [[40, "relation_12"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "size_system", "type": "ATTRIBUTE", "entity": "apparel", "children": [], "sort_key": 41, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "apparel.size_system", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_12"], "table_key_entities": ["clothing"]}, "name": "Clothing", "type": "ENTITY", "is_mvds": false, "children": ["menclothing", "womenclothing"], "is_total": true, "sort_key": 42, "attributes": ["clothing.material"], "node_cover": ["clothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Clothing", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [42, "relation_13"]], "unique_name": "clothing", "mapped_table": [42, "relation_13"], "parent_entity": "apparel", "relation_size": 300, "attribute_list": [{"pk_name": "clothing_id", "pk_type": "INTEGER", "pk_ER_name": "clothing_id", "pk_entity_name": "clothing", "pk_unique_name": "clothing_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["clothing"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [42, "relation_13"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "material", "type": "ATTRIBUTE", "entity": "clothing", "children": [], "sort_key": 43, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "clothing.material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["menclothing_id", "INTEGER", "menclothing_id", "menclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_13"], "table_key_entities": ["menclothing"]}, "name": "MenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 44, "attributes": ["menclothing.fit_type_men"], "node_cover": ["menclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_men", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "MenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[44, "relation_14"], [12, "relation_2"], [42, "relation_13"]], "unique_name": "menclothing", "mapped_table": [44, "relation_14"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "menclothing_id", "pk_type": "INTEGER", "pk_ER_name": "menclothing_id", "pk_entity_name": "menclothing", "pk_unique_name": "menclothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_men", "type": "VARCHAR", "unique_name": "menclothing.fit_type_men", "is_flattened": null, "mapped_table": [44, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "menclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["menclothing"], "select_frequency": 5, "select_all_tables": [[44, "relation_14"], [12, "relation_2"], [42, "relation_13"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "clothing"}, {"key": null, "name": "fit_type_men", "type": "ATTRIBUTE", "entity": "menclothing", "children": [], "sort_key": 45, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "menclothing.fit_type_men", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["womenclothing_id", "INTEGER", "womenclothing_id", "womenclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_13"], "table_key_entities": ["womenclothing"]}, "name": "WomenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 46, "attributes": ["womenclothing.fit_type_women"], "node_cover": ["womenclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_women", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WomenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [42, "relation_13"], [46, "relation_15"]], "unique_name": "womenclothing", "mapped_table": [46, "relation_15"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "womenclothing_id", "pk_type": "INTEGER", "pk_ER_name": "womenclothing_id", "pk_entity_name": "womenclothing", "pk_unique_name": "womenclothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_women", "type": "VARCHAR", "unique_name": "womenclothing.fit_type_women", "is_flattened": null, "mapped_table": [46, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "womenclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["womenclothing"], "select_frequency": 20, "select_all_tables": [[12, "relation_2"], [42, "relation_13"], [46, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "clothing"}, {"key": null, "name": "fit_type_women", "type": "ATTRIBUTE", "entity": "womenclothing", "children": [], "sort_key": 47, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "womenclothing.fit_type_women", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["apparel_id", "INTEGER", "apparel_id", "footwear_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_12"], "table_key_entities": ["footwear"]}, "name": "Footwear", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 48, "attributes": ["footwear.sole_material"], "node_cover": ["footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sole_material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Footwear", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[40, "relation_12"], [12, "relation_2"]], "unique_name": "footwear", "mapped_table": [40, "relation_12"], "parent_entity": "apparel", "relation_size": 100, "attribute_list": [{"pk_name": "apparel_id", "pk_type": "INTEGER", "pk_ER_name": "footwear_id", "pk_entity_name": "footwear", "pk_unique_name": "apparel_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sole_material", "type": "VARCHAR", "unique_name": "footwear.sole_material", "is_flattened": null, "mapped_table": [40, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "footwear", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["footwear"], "select_frequency": 20, "select_all_tables": [[40, "relation_12"], [12, "relation_2"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "sole_material", "type": "ATTRIBUTE", "entity": "footwear", "children": [], "sort_key": 49, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "footwear.sole_material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["media_id", "INTEGER", "media_id", "media_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_4"], "table_key_entities": ["media"]}, "name": "Media", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 50, "attributes": ["media.format"], "node_cover": ["media"], "entity_dict": {"total": true, "attributes": [{"attr_name": "format", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Media", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[15, "relation_4"], [12, "relation_2"], [50, "relation_16"]], "unique_name": "media", "mapped_table": [50, "relation_16"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "media_id", "pk_type": "INTEGER", "pk_ER_name": "media_id", "pk_entity_name": "media", "pk_unique_name": "media_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "format", "type": "VARCHAR", "unique_name": "media.format", "is_flattened": null, "mapped_table": [50, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "media", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["media"], "select_frequency": 1, "select_all_tables": [[15, "relation_4"], [12, "relation_2"], [50, "relation_16"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "digitalproduct"}, {"key": null, "name": "format", "type": "ATTRIBUTE", "entity": "media", "children": [], "sort_key": 51, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "media.format", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["software_id", "INTEGER", "software_id", "software_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_4"], "table_key_entities": ["software"]}, "name": "Software", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 52, "attributes": ["software.license_type"], "node_cover": ["software"], "entity_dict": {"total": true, "attributes": [{"attr_name": "license_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Software", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[15, "relation_4"], [12, "relation_2"], [52, "relation_17"]], "unique_name": "software", "mapped_table": [52, "relation_17"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "software_id", "pk_type": "INTEGER", "pk_ER_name": "software_id", "pk_entity_name": "software", "pk_unique_name": "software_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "license_type", "type": "VARCHAR", "unique_name": "software.license_type", "is_flattened": null, "mapped_table": [52, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "software", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["software"], "select_frequency": 1, "select_all_tables": [[15, "relation_4"], [12, "relation_2"], [52, "relation_17"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "digitalproduct"}, {"key": null, "name": "license_type", "type": "ATTRIBUTE", "entity": "software", "children": [], "sort_key": 53, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "software.license_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["user"]}, "name": "User", "type": "ENTITY", "is_mvds": true, "children": ["customer", "employee"], "is_total": null, "sort_key": 54, "attributes": ["user.email", "user.password_hash", "user.mv_user"], "node_cover": ["user", "employee", "corporateemployee", "fulfillmentassociate"], "entity_dict": {"attributes": [{"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "password_hash", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_user", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "User", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[54, "relation_18"], [57, "relation_19"]], "unique_name": "user", "mapped_table": [54, "relation_18"], "parent_entity": null, "relation_size": 1000, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["user"], "select_frequency": 10, "select_all_tables": [[54, "relation_18"], [57, "relation_19"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 4, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 55, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "password_hash", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 56, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.password_hash", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["mv_user", "VARCHAR(255)", "user.mv_user", "mv_user"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_18"], "table_key_entities": null}, "name": "mv_user", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 57, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.mv_user", "is_composite": false, "is_flattened": false, "mapped_table": [57, "relation_19"], "relation_size": 2458, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_18"], "table_key_entities": ["customer"]}, "name": "Customer", "type": "ENTITY", "is_mvds": true, "children": ["primecustomer", "businesscustomer"], "is_total": true, "sort_key": 58, "attributes": ["customer.loyalty_tier", "customer.contact_no"], "node_cover": ["customer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "loyalty_tier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "contact_no", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Customer", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[60, "relation_21"], [54, "relation_18"], [57, "relation_19"], [58, "relation_20"]], "unique_name": "customer", "mapped_table": [58, "relation_20"], "parent_entity": "user", "relation_size": 300, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_20"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_21"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_21"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["customer"], "select_frequency": 6, "select_all_tables": [[58, "relation_20"], [60, "relation_21"], [54, "relation_18"], [57, "relation_19"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "loyalty_tier", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 59, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.loyalty_tier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["contact_no", "VARCHAR(255)", "customer.contact_no", "contact_no"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": null}, "name": "contact_no", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 60, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.contact_no", "is_composite": false, "is_flattened": false, "mapped_table": [60, "relation_21"], "relation_size": 446, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": ["primecustomer"]}, "name": "PrimeCustomer", "type": "ENTITY", "is_mvds": true, "children": [], "is_total": true, "sort_key": 61, "attributes": ["primecustomer.renewal_date", "primecustomer.subscription_addons"], "node_cover": ["primecustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "renewal_date", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "subscription_addons", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PrimeCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[63, "relation_23"], [57, "relation_19"], [54, "relation_18"], [58, "relation_20"], [61, "relation_22"], [60, "relation_21"]], "unique_name": "primecustomer", "mapped_table": [61, "relation_22"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "primecustomer_id", "pk_type": "INTEGER", "pk_ER_name": "primecustomer_id", "pk_entity_name": "primecustomer", "pk_unique_name": "primecustomer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_20"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_21"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_21"]}, {"name": "renewal_date", "type": "VARCHAR", "unique_name": "primecustomer.renewal_date", "is_flattened": null, "mapped_table": [61, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "subscription_addons", "type": "VARCHAR", "unique_name": "primecustomer.subscription_addons", "is_flattened": null, "mapped_table": [63, "relation_23"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": true, "mvd_separate_table_name": [63, "relation_23"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["primecustomer"], "select_frequency": 1, "select_all_tables": [[58, "relation_20"], [63, "relation_23"], [61, "relation_22"], [60, "relation_21"], [54, "relation_18"], [57, "relation_19"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "renewal_date", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 62, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.renewal_date", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer_id"]], [["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "subscription_addons"]]], "reference_key": [[["primecustomer_id", "INTEGER", "primecustomer_id"]], []], "reference_node": ["primecustomer"], "reference_table": ["relation_22"], "table_key_entities": null}, "name": "subscription_addons", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 63, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.subscription_addons", "is_composite": false, "is_flattened": false, "mapped_table": [63, "relation_23"], "relation_size": 239, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": ["businesscustomer"]}, "name": "BusinessCustomer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 64, "attributes": ["businesscustomer.company_name"], "node_cover": ["businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "company_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BusinessCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[58, "relation_20"], [60, "relation_21"], [54, "relation_18"], [57, "relation_19"], [64, "relation_24"]], "unique_name": "businesscustomer", "mapped_table": [64, "relation_24"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "businesscustomer_id", "pk_type": "INTEGER", "pk_ER_name": "businesscustomer_id", "pk_entity_name": "businesscustomer", "pk_unique_name": "businesscustomer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_20"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_21"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_21"]}, {"name": "company_name", "type": "VARCHAR", "unique_name": "businesscustomer.company_name", "is_flattened": null, "mapped_table": [64, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "businesscustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["businesscustomer"], "select_frequency": 1, "select_all_tables": [[58, "relation_20"], [60, "relation_21"], [54, "relation_18"], [57, "relation_19"], [64, "relation_24"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "company_name", "type": "ATTRIBUTE", "entity": "businesscustomer", "children": [], "sort_key": 65, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "businesscustomer.company_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_18"], "table_key_entities": ["employee"]}, "name": "Employee", "type": "ENTITY", "is_mvds": false, "children": ["corporateemployee", "supportagent", "fulfillmentassociate", "categorymanager"], "is_total": true, "sort_key": 66, "attributes": ["employee.employee_no"], "node_cover": ["employee", "corporateemployee", "fulfillmentassociate"], "entity_dict": {"total": true, "attributes": [{"attr_name": "employee_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Employee", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_19"], [66, "relation_25"]], "unique_name": "employee", "mapped_table": [66, "relation_25"], "parent_entity": "user", "relation_size": 600, "attribute_list": [{"pk_name": "employee_id", "pk_type": "INTEGER", "pk_ER_name": "employee_id", "pk_entity_name": "employee", "pk_unique_name": "employee_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["employee"], "select_frequency": 2, "select_all_tables": [[57, "relation_19"], [66, "relation_25"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "employee_no", "type": "ATTRIBUTE", "entity": "employee", "children": [], "sort_key": 67, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "employee.employee_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_25"], "table_key_entities": ["corporateemployee"]}, "name": "CorporateEmployee", "type": "ENTITY", "is_mvds": false, "children": ["engineer"], "is_total": true, "sort_key": 68, "attributes": ["corporateemployee.office_site"], "node_cover": ["corporateemployee"], "entity_dict": {"total": true, "attributes": [{"attr_name": "office_site", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CorporateEmployee", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[68, "relation_26"], [57, "relation_19"]], "unique_name": "corporateemployee", "mapped_table": [68, "relation_26"], "parent_entity": "employee", "relation_size": 200, "attribute_list": [{"pk_name": "corporateemployee_id", "pk_type": "INTEGER", "pk_ER_name": "corporateemployee_id", "pk_entity_name": "corporateemployee", "pk_unique_name": "corporateemployee_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["corporateemployee"], "select_frequency": 1, "select_all_tables": [[68, "relation_26"], [57, "relation_19"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "office_site", "type": "ATTRIBUTE", "entity": "corporateemployee", "children": [], "sort_key": 69, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "corporateemployee.office_site", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["engineer_id", "INTEGER", "engineer_id", "engineer_id"]], "reference_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_node": ["corporateemployee"], "reference_table": ["relation_26"], "table_key_entities": ["engineer"]}, "name": "Engineer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 70, "attributes": ["engineer.level"], "node_cover": ["engineer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "level", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Engineer", "entity_type": null, "parent_entity": "CorporateEmployee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[68, "relation_26"], [57, "relation_19"], [70, "relation_27"]], "unique_name": "engineer", "mapped_table": [70, "relation_27"], "parent_entity": "corporateemployee", "relation_size": 100, "attribute_list": [{"pk_name": "engineer_id", "pk_type": "INTEGER", "pk_ER_name": "engineer_id", "pk_entity_name": "engineer", "pk_unique_name": "engineer_id", "pk_reference_key_name": "corporateemployee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "corporateemployee_id", "pk_reference_node_unique_name": "corporateemployee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "level", "type": "VARCHAR", "unique_name": "engineer.level", "is_flattened": null, "mapped_table": [70, "relation_27"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "engineer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["engineer"], "select_frequency": 1, "select_all_tables": [[68, "relation_26"], [57, "relation_19"], [70, "relation_27"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "corporateemployee"}, {"key": null, "name": "level", "type": "ATTRIBUTE", "entity": "engineer", "children": [], "sort_key": 71, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "engineer.level", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supportagent_id", "INTEGER", "supportagent_id", "supportagent_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_25"], "table_key_entities": ["supportagent"]}, "name": "SupportAgent", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 72, "attributes": ["supportagent.queue"], "node_cover": ["supportagent"], "entity_dict": {"total": true, "attributes": [{"attr_name": "queue", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupportAgent", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[72, "relation_28"], [57, "relation_19"], [66, "relation_25"]], "unique_name": "supportagent", "mapped_table": [72, "relation_28"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "supportagent_id", "pk_type": "INTEGER", "pk_ER_name": "supportagent_id", "pk_entity_name": "supportagent", "pk_unique_name": "supportagent_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "queue", "type": "VARCHAR", "unique_name": "supportagent.queue", "is_flattened": null, "mapped_table": [72, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supportagent", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["supportagent"], "select_frequency": 1, "select_all_tables": [[72, "relation_28"], [57, "relation_19"], [66, "relation_25"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "employee"}, {"key": null, "name": "queue", "type": "ATTRIBUTE", "entity": "supportagent", "children": [], "sort_key": 73, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supportagent.queue", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_25"], "table_key_entities": ["fulfillmentassociate"]}, "name": "FulfillmentAssociate", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 74, "attributes": ["fulfillmentassociate.shift"], "node_cover": ["fulfillmentassociate"], "entity_dict": {"total": true, "attributes": [{"attr_name": "shift", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "FulfillmentAssociate", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[74, "relation_29"], [57, "relation_19"]], "unique_name": "fulfillmentassociate", "mapped_table": [74, "relation_29"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "fulfillmentassociate_id", "pk_type": "INTEGER", "pk_ER_name": "fulfillmentassociate_id", "pk_entity_name": "fulfillmentassociate", "pk_unique_name": "fulfillmentassociate_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shift", "type": "VARCHAR", "unique_name": "fulfillmentassociate.shift", "is_flattened": null, "mapped_table": [74, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "fulfillmentassociate", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["fulfillmentassociate"], "select_frequency": 1, "select_all_tables": [[74, "relation_29"], [57, "relation_19"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shift", "type": "ATTRIBUTE", "entity": "fulfillmentassociate", "children": [], "sort_key": 75, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "fulfillmentassociate.shift", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_25"], "table_key_entities": ["categorymanager"]}, "name": "CategoryManager", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 76, "attributes": ["categorymanager.department"], "node_cover": ["categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "department", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CategoryManager", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[76, "relation_30"], [57, "relation_19"], [66, "relation_25"]], "unique_name": "categorymanager", "mapped_table": [76, "relation_30"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "categorymanager_id", "pk_type": "INTEGER", "pk_ER_name": "categorymanager_id", "pk_entity_name": "categorymanager", "pk_unique_name": "categorymanager_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_19"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_19"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "department", "type": "VARCHAR", "unique_name": "categorymanager.department", "is_flattened": null, "mapped_table": [76, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "categorymanager", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["categorymanager"], "select_frequency": 1, "select_all_tables": [[76, "relation_30"], [57, "relation_19"], [66, "relation_25"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "employee"}, {"key": null, "name": "department", "type": "ATTRIBUTE", "entity": "categorymanager", "children": [], "sort_key": 77, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "categorymanager.department", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["image_id", "INTEGER", "productimage.image_id", "image_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productimage"]]}, "name": "ProductImage", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 78, "attributes": ["productimage.image_id", "productimage.url", "productimage.alt_text", "productimage.sort_order"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "image_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "alt_text", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sort_order", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductImage", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[78, "relation_31"]], "unique_name": "productimage", "mapped_table": [78, "relation_31"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "image_id", "pk_type": "INTEGER", "pk_ER_name": "image_id", "pk_entity_name": "productimage", "pk_unique_name": "productimage.image_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "url", "type": "VARCHAR", "unique_name": "productimage.url", "is_flattened": null, "mapped_table": [78, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "alt_text", "type": "VARCHAR", "unique_name": "productimage.alt_text", "is_flattened": null, "mapped_table": [78, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sort_order", "type": "INT", "unique_name": "productimage.sort_order", "is_flattened": null, "mapped_table": [78, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["productimage", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [78, "relation_31"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "image_id", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 79, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.image_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "url", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 80, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "alt_text", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 81, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.alt_text", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sort_order", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 82, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.sort_order", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["variant_id", "INTEGER", "productvariant.variant_id", "variant_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productvariant"]]}, "name": "ProductVariant", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 83, "attributes": ["productvariant.variant_id", "productvariant.price_override", "productvariant.barcode", "productvariant.is_active_variant"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "variant_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "price_override", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "barcode", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active_variant", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductVariant", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[83, "relation_32"]], "unique_name": "productvariant", "mapped_table": [83, "relation_32"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "variant_id", "pk_type": "INTEGER", "pk_ER_name": "variant_id", "pk_entity_name": "productvariant", "pk_unique_name": "productvariant.variant_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "price_override", "type": "INT", "unique_name": "productvariant.price_override", "is_flattened": null, "mapped_table": [83, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "barcode", "type": "VARCHAR", "unique_name": "productvariant.barcode", "is_flattened": null, "mapped_table": [83, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active_variant", "type": "INT", "unique_name": "productvariant.is_active_variant", "is_flattened": null, "mapped_table": [83, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["productvariant", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [83, "relation_32"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "variant_id", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 84, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.variant_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price_override", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 85, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.price_override", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "barcode", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 86, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productvariant.barcode", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active_variant", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 87, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.is_active_variant", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["price_id", "INTEGER", "pricehistory.price_id", "price_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["pricehistory"]]}, "name": "PriceHistory", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 88, "attributes": ["pricehistory.price_id", "pricehistory.starts_at", "pricehistory.ends_at", "pricehistory.price"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "price_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PriceHistory", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[88, "relation_33"]], "unique_name": "pricehistory", "mapped_table": [88, "relation_33"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "price_id", "pk_type": "INTEGER", "pk_ER_name": "price_id", "pk_entity_name": "pricehistory", "pk_unique_name": "pricehistory.price_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "pricehistory.starts_at", "is_flattened": null, "mapped_table": [88, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "pricehistory.ends_at", "is_flattened": null, "mapped_table": [88, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "price", "type": "INT", "unique_name": "pricehistory.price", "is_flattened": null, "mapped_table": [88, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["pricehistory", "product"], "select_frequency": 6, "select_all_tables": [[5, "temp_product"], [88, "relation_33"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "price_id", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 89, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 90, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 91, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 92, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tag_id", "INTEGER", "tag_id", "tag_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["tag"]}, "name": "Tag", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 93, "attributes": ["tag.tag_id", "tag.tag_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "tag_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tag_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tag", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[93, "relation_34"]], "unique_name": "tag", "mapped_table": [93, "relation_34"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "tag_name", "type": "VARCHAR", "unique_name": "tag.tag_name", "is_flattened": null, "mapped_table": [93, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tag", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["tag"], "select_frequency": 3, "select_all_tables": [[93, "relation_34"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "tag_id", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 94, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tag.tag_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tag_name", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 95, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "tag.tag_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["address_id", "INTEGER", "address.address_id", "address_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": [["customer"], ["address"]]}, "name": "Address", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 96, "attributes": ["address.address_id", "address.kind", "address.line1", "address.city", "address.state", "address.country", "address.postal_code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "address_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "kind", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "line1", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "city", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "state", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "country", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "postal_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Address", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[96, "relation_35"]], "unique_name": "address", "mapped_table": [96, "relation_35"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "address_id", "pk_type": "INTEGER", "pk_ER_name": "address_id", "pk_entity_name": "address", "pk_unique_name": "address.address_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "kind", "type": "VARCHAR", "unique_name": "address.kind", "is_flattened": null, "mapped_table": [96, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "line1", "type": "VARCHAR", "unique_name": "address.line1", "is_flattened": null, "mapped_table": [96, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "city", "type": "VARCHAR", "unique_name": "address.city", "is_flattened": null, "mapped_table": [96, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "state", "type": "VARCHAR", "unique_name": "address.state", "is_flattened": null, "mapped_table": [96, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "country", "type": "VARCHAR", "unique_name": "address.country", "is_flattened": null, "mapped_table": [96, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "postal_code", "type": "VARCHAR", "unique_name": "address.postal_code", "is_flattened": null, "mapped_table": [96, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["address", "customer"], "select_frequency": 4, "select_all_tables": [[60, "relation_21"], [96, "relation_35"], [54, "relation_18"], [57, "relation_19"], [58, "relation_20"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 13, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "address_id", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 97, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "address.address_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "kind", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 98, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.kind", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "line1", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 99, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.line1", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "city", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 100, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.city", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "state", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 101, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.state", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "country", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 102, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.country", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "postal_code", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 103, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.postal_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_method_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": [["customer"], ["paymentmethod"]]}, "name": "PaymentMethod", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 104, "attributes": ["paymentmethod.payment_method_id", "paymentmethod.brand", "paymentmethod.last4", "paymentmethod.exp_month", "paymentmethod.exp_year", "paymentmethod.is_default"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "payment_method_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "brand", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "last4", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_month", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_year", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_default", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PaymentMethod", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[104, "relation_36"]], "unique_name": "paymentmethod", "mapped_table": [104, "relation_36"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "brand", "type": "VARCHAR", "unique_name": "paymentmethod.brand", "is_flattened": null, "mapped_table": [104, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "last4", "type": "VARCHAR", "unique_name": "paymentmethod.last4", "is_flattened": null, "mapped_table": [104, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_month", "type": "INT", "unique_name": "paymentmethod.exp_month", "is_flattened": null, "mapped_table": [104, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_year", "type": "INT", "unique_name": "paymentmethod.exp_year", "is_flattened": null, "mapped_table": [104, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_default", "type": "VARCHAR", "unique_name": "paymentmethod.is_default", "is_flattened": null, "mapped_table": [104, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["paymentmethod", "customer"], "select_frequency": 0, "select_all_tables": [[104, "relation_36"], [60, "relation_21"], [54, "relation_18"], [57, "relation_19"], [58, "relation_20"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "payment_method_id", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 105, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.payment_method_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "brand", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 106, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.brand", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "last4", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 107, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.last4", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_month", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 108, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_month", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_year", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 109, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_year", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_default", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 110, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.is_default", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], []], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": [["customer"], ["cart"]]}, "name": "Cart", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 111, "attributes": ["cart.updated_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "updated_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Cart", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[111, "relation_37"]], "unique_name": "cart", "mapped_table": [111, "relation_37"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "updated_at", "type": "VARCHAR", "unique_name": "cart.updated_at", "is_flattened": null, "mapped_table": [111, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "cart", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["cart", "customer"], "select_frequency": 8, "select_all_tables": [[60, "relation_21"], [54, "relation_18"], [111, "relation_37"], [57, "relation_19"], [58, "relation_20"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "updated_at", "type": "ATTRIBUTE", "entity": "cart", "children": [], "sort_key": 112, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "cart.updated_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": [["customer"], ["wishlist"]]}, "name": "Wishlist", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 113, "attributes": ["wishlist.wishlist_id", "wishlist.wishlist_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "wishlist_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "wishlist_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Wishlist", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[113, "relation_38"]], "unique_name": "wishlist", "mapped_table": [113, "relation_38"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "wishlist_name", "type": "VARCHAR", "unique_name": "wishlist.wishlist_name", "is_flattened": null, "mapped_table": [113, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "wishlist", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["wishlist", "customer"], "select_frequency": 5, "select_all_tables": [[113, "relation_38"], [60, "relation_21"], [54, "relation_18"], [57, "relation_19"], [58, "relation_20"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "wishlist_id", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 114, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "wishlist.wishlist_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "wishlist_name", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 115, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "wishlist.wishlist_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["review_id", "INTEGER", "review.review_id", "review_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_20"], "table_key_entities": [["customer"], ["review"]]}, "name": "Review", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 116, "attributes": ["review.review_id", "review.rating", "review.title", "review.body", "review.created_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "review_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "rating", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "title", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "body", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Review", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[116, "relation_39"]], "unique_name": "review", "mapped_table": [116, "relation_39"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "rating", "type": "INT", "unique_name": "review.rating", "is_flattened": null, "mapped_table": [116, "relation_39"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "title", "type": "VARCHAR", "unique_name": "review.title", "is_flattened": null, "mapped_table": [116, "relation_39"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "body", "type": "VARCHAR", "unique_name": "review.body", "is_flattened": null, "mapped_table": [116, "relation_39"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "review.created_at", "is_flattened": null, "mapped_table": [116, "relation_39"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["review", "customer"], "select_frequency": 7, "select_all_tables": [[60, "relation_21"], [54, "relation_18"], [116, "relation_39"], [57, "relation_19"], [58, "relation_20"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "review_id", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 117, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.review_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "rating", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 118, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "title", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 119, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.title", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "body", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 120, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.body", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 121, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["session_id", "INTEGER", "browsingsession.session_id", "session_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_18"], "table_key_entities": [["user"], ["browsingsession"]]}, "name": "BrowsingSession", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 122, "attributes": ["browsingsession.session_id", "browsingsession.started_at", "browsingsession.device"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "session_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "started_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "device", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BrowsingSession", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": false, "node_tables": [[122, "relation_40"]], "unique_name": "browsingsession", "mapped_table": [122, "relation_40"], "parent_entity": "user", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"pk_name": "session_id", "pk_type": "INTEGER", "pk_ER_name": "session_id", "pk_entity_name": "browsingsession", "pk_unique_name": "browsingsession.session_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "started_at", "type": "VARCHAR", "unique_name": "browsingsession.started_at", "is_flattened": null, "mapped_table": [122, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "device", "type": "VARCHAR", "unique_name": "browsingsession.device", "is_flattened": null, "mapped_table": [122, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["browsingsession", "user"], "select_frequency": 4, "select_all_tables": [[54, "temp_user"], [122, "relation_40"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "session_id", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 123, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "browsingsession.session_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "started_at", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 124, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.started_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "device", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 125, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.device", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["custorder"]}, "name": "CustOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 126, "attributes": ["custorder.custorder_id", "custorder.placed_at", "custorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "custorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "placed_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CustOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[126, "relation_41"]], "unique_name": "custorder", "mapped_table": [126, "relation_41"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "placed_at", "type": "VARCHAR", "unique_name": "custorder.placed_at", "is_flattened": null, "mapped_table": [126, "relation_41"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "custorder.status", "is_flattened": null, "mapped_table": [126, "relation_41"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["custorder"], "select_frequency": 10, "select_all_tables": [[126, "relation_41"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "custorder_id", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 127, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "custorder.custorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "placed_at", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 128, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.placed_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 129, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], []], "reference_node": ["custorder"], "reference_table": ["relation_41"], "table_key_entities": [["custorder"], ["shipment"]]}, "name": "Shipment", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 130, "attributes": ["shipment.shipment_id", "shipment.carrier", "shipment.tracking_no", "shipment.shipped_at", "shipment.delivered_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "shipment_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "carrier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tracking_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "shipped_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "delivered_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Shipment", "entity_type": null, "parent_entity": "CustOrder"}, "is_no_table": false, "is_subclass": false, "node_tables": [[130, "relation_42"]], "unique_name": "shipment", "mapped_table": [130, "relation_42"], "parent_entity": "custorder", "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": "custorder"}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier", "type": "VARCHAR", "unique_name": "shipment.carrier", "is_flattened": null, "mapped_table": [130, "relation_42"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "tracking_no", "type": "VARCHAR", "unique_name": "shipment.tracking_no", "is_flattened": null, "mapped_table": [130, "relation_42"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shipped_at", "type": "VARCHAR", "unique_name": "shipment.shipped_at", "is_flattened": null, "mapped_table": [130, "relation_42"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "delivered_at", "type": "VARCHAR", "unique_name": "shipment.delivered_at", "is_flattened": null, "mapped_table": [130, "relation_42"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["shipment", "custorder"], "select_frequency": 6, "select_all_tables": [[130, "relation_42"], [126, "relation_41"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shipment_id", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 131, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "shipment.shipment_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 132, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.carrier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tracking_no", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 133, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.tracking_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "shipped_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 134, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.shipped_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "delivered_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 135, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.delivered_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["promotion"]}, "name": "Promotion", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 136, "attributes": ["promotion.promo_id", "promotion.promo_name", "promotion.starts_at", "promotion.ends_at", "promotion.discount_type", "promotion.discount_value"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "promo_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "promo_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_value", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Promotion", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[136, "relation_43"]], "unique_name": "promotion", "mapped_table": [136, "relation_43"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "promo_name", "type": "VARCHAR", "unique_name": "promotion.promo_name", "is_flattened": null, "mapped_table": [136, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "promotion.starts_at", "is_flattened": null, "mapped_table": [136, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "promotion.ends_at", "is_flattened": null, "mapped_table": [136, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_type", "type": "VARCHAR", "unique_name": "promotion.discount_type", "is_flattened": null, "mapped_table": [136, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_value", "type": "VARCHAR", "unique_name": "promotion.discount_value", "is_flattened": null, "mapped_table": [136, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["promotion"], "select_frequency": 3, "select_all_tables": [[136, "relation_43"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "promo_id", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 137, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "promotion.promo_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "promo_name", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 138, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.promo_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 139, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 140, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_type", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 141, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_value", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 142, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_value", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], [["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"]], []], "reference_node": ["promotion"], "reference_table": ["relation_43"], "table_key_entities": [["promotion"], ["coupon"]]}, "name": "Coupon", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 143, "attributes": ["coupon.coupon_code", "coupon.max_uses", "coupon.per_user_limit"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "coupon_code", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "max_uses", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "per_user_limit", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Coupon", "entity_type": null, "parent_entity": "Promotion"}, "is_no_table": false, "is_subclass": false, "node_tables": [[143, "relation_44"]], "unique_name": "coupon", "mapped_table": [143, "relation_44"], "parent_entity": "promotion", "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": "promotion"}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "max_uses", "type": "INT", "unique_name": "coupon.max_uses", "is_flattened": null, "mapped_table": [143, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "per_user_limit", "type": "INT", "unique_name": "coupon.per_user_limit", "is_flattened": null, "mapped_table": [143, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["coupon", "promotion"], "select_frequency": 3, "select_all_tables": [[143, "relation_44"], [136, "relation_43"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "coupon_code", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 144, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.coupon_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "max_uses", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 145, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.max_uses", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "per_user_limit", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 146, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.per_user_limit", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["warehouse"]}, "name": "Warehouse", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 147, "attributes": ["warehouse.warehouse_id", "warehouse.warehouse_name", "warehouse.region"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "warehouse_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "warehouse_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "region", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Warehouse", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[147, "relation_45"]], "unique_name": "warehouse", "mapped_table": [147, "relation_45"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "warehouse_name", "type": "VARCHAR", "unique_name": "warehouse.warehouse_name", "is_flattened": null, "mapped_table": [147, "relation_45"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "region", "type": "VARCHAR", "unique_name": "warehouse.region", "is_flattened": null, "mapped_table": [147, "relation_45"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_45"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warehouse_id", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 148, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehouse.warehouse_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "warehouse_name", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 149, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.warehouse_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "region", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 150, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.region", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], [["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["warehouse_id", "INTEGER", "warehouse_id"]], []], "reference_node": ["warehouse"], "reference_table": ["relation_45"], "table_key_entities": [["warehouse"], ["warehousebin"]]}, "name": "WarehouseBin", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 151, "attributes": ["warehousebin.bin_id", "warehousebin.code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "bin_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WarehouseBin", "entity_type": null, "parent_entity": "Warehouse"}, "is_no_table": false, "is_subclass": false, "node_tables": [[151, "relation_46"]], "unique_name": "warehousebin", "mapped_table": [151, "relation_46"], "parent_entity": "warehouse", "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": "warehouse"}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "code", "type": "VARCHAR", "unique_name": "warehousebin.code", "is_flattened": null, "mapped_table": [151, "relation_46"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehousebin", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehousebin", "warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_45"], [151, "relation_46"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "bin_id", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 152, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehousebin.bin_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "code", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 153, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehousebin.code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["supplier"]}, "name": "Supplier", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 154, "attributes": ["supplier.supplier_id", "supplier.supplier_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "supplier_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "supplier_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Supplier", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[154, "relation_47"]], "unique_name": "supplier", "mapped_table": [154, "relation_47"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "supplier_name", "type": "VARCHAR", "unique_name": "supplier.supplier_name", "is_flattened": null, "mapped_table": [154, "relation_47"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supplier", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["supplier"], "select_frequency": 3, "select_all_tables": [[154, "relation_47"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "supplier_id", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 155, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "supplier.supplier_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "supplier_name", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 156, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supplier.supplier_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["contact_id", "INTEGER", "suppliercontact.contact_id", "contact_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], []], "reference_node": ["supplier"], "reference_table": ["relation_47"], "table_key_entities": [["supplier"], ["suppliercontact"]]}, "name": "SupplierContact", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 157, "attributes": ["suppliercontact.contact_id", "suppliercontact.email", "suppliercontact.phone"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "contact_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "phone", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupplierContact", "entity_type": null, "parent_entity": "Supplier"}, "is_no_table": false, "is_subclass": false, "node_tables": [[157, "relation_48"]], "unique_name": "suppliercontact", "mapped_table": [157, "relation_48"], "parent_entity": "supplier", "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": "supplier"}, {"pk_name": "contact_id", "pk_type": "INTEGER", "pk_ER_name": "contact_id", "pk_entity_name": "suppliercontact", "pk_unique_name": "suppliercontact.contact_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "suppliercontact.email", "is_flattened": null, "mapped_table": [157, "relation_48"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "phone", "type": "VARCHAR", "unique_name": "suppliercontact.phone", "is_flattened": null, "mapped_table": [157, "relation_48"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["suppliercontact", "supplier"], "select_frequency": 3, "select_all_tables": [[157, "relation_48"], [154, "relation_47"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "contact_id", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 158, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "suppliercontact.contact_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 159, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "phone", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 160, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.phone", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["purchaseorder"]}, "name": "PurchaseOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 161, "attributes": ["purchaseorder.purchaseorder_id", "purchaseorder.created_at", "purchaseorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "purchaseorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PurchaseOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[161, "relation_49"]], "unique_name": "purchaseorder", "mapped_table": [161, "relation_49"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "purchaseorder.created_at", "is_flattened": null, "mapped_table": [161, "relation_49"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "purchaseorder.status", "is_flattened": null, "mapped_table": [161, "relation_49"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["purchaseorder"], "select_frequency": 4, "select_all_tables": [[161, "relation_49"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "purchaseorder_id", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 162, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "purchaseorder.purchaseorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 163, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 164, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["courierpartner"]}, "name": "CourierPartner", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 165, "attributes": ["courierpartner.courierpartner_id", "courierpartner.carrier_code", "courierpartner.webhook_url"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "courierpartner_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "carrier_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "webhook_url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CourierPartner", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[165, "relation_50"]], "unique_name": "courierpartner", "mapped_table": [165, "relation_50"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier_code", "type": "VARCHAR", "unique_name": "courierpartner.carrier_code", "is_flattened": null, "mapped_table": [165, "relation_50"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "webhook_url", "type": "VARCHAR", "unique_name": "courierpartner.webhook_url", "is_flattened": null, "mapped_table": [165, "relation_50"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["courierpartner"], "select_frequency": 1, "select_all_tables": [[165, "relation_50"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "courierpartner_id", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 166, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "courierpartner.courierpartner_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier_code", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 167, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.carrier_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "webhook_url", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 168, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.webhook_url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["category_products_category_id", "INTEGER", "category_id", "category_products_category_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["category_id", "INTEGER", "category_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_0"], "table_key_entities": [["product"], ["category"]]}, "name": "category_products", "type": "RELATIONSHIP", "entity1": "category", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Category", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "category_products"}, "sort_key": 169, "attributes": [], "node_tables": [[169, "relation_51"]], "unique_name": "category_products", "mapped_table": [169, "relation_51"], "relation_size": 483, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "category_products_category_id", "pk_type": "INTEGER", "pk_ER_name": "category_products_category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": "category_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "category_id", "pk_reference_node_unique_name": null}], "insert_frequency": 483, "select_all_nodes": ["category_products", "category", "product"], "select_frequency": 1, "select_all_tables": [[1, "relation_0"], [5, "temp_product"], [169, "relation_51"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["tag_id", "INTEGER", "tag_id", "tag_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["tag_id", "INTEGER", "tag_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_34"], "table_key_entities": [["product"], ["tag"]]}, "name": "product_tags", "type": "RELATIONSHIP", "entity1": "product", "entity2": "tag", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Tag", "role": null, "total": true}, "attributes": [], "table_name": "product_tags"}, "sort_key": 170, "attributes": [], "node_tables": [[170, "relation_52"]], "unique_name": "product_tags", "mapped_table": [170, "relation_52"], "relation_size": 3172, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": "tag_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "tag_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3172, "select_all_nodes": ["product_tags", "product", "tag"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [170, "relation_52"], [93, "relation_34"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["bought_together_product_product_id", "INTEGER", "product_id", "bought_together_product_product_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_1"], "table_key_entities": [["product"], ["product"]]}, "name": "bought_together", "type": "RELATIONSHIP", "entity1": "product", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": "product_id", "total": true}, "entity2": {"one": false, "name": "Product", "role": "bought_together_product_id", "total": true}, "attributes": [], "table_name": "bought_together"}, "sort_key": 171, "attributes": [], "node_tables": [[171, "relation_53"]], "unique_name": "bought_together", "mapped_table": [171, "relation_53"], "relation_size": 4151, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "bought_together_product_product_id", "pk_type": "INTEGER", "pk_ER_name": "bought_together_product_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 4151, "select_all_nodes": ["bought_together", "product", "product"], "select_frequency": 0, "select_all_tables": [[5, "temp_product"], [171, "relation_53"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": ["product_id", "bought_together_product_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_37", "relation_1"], "table_key_entities": [["cart"], ["product"]]}, "name": "cart_contains", "type": "RELATIONSHIP", "entity1": "cart", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Cart", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "cart_contains"}, "sort_key": 172, "attributes": [], "node_tables": [[172, "relation_54"]], "unique_name": "cart_contains", "mapped_table": [172, "relation_54"], "relation_size": 202, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "cart", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 202, "select_all_nodes": ["cart_contains", "cart", "customer", "product"], "select_frequency": 2, "select_all_tables": [[60, "relation_21"], [172, "relation_54"], [54, "relation_18"], [5, "temp_product"], [111, "relation_37"], [57, "relation_19"], [58, "relation_20"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_38", "relation_1"], "table_key_entities": [["wishlist"], ["product"]]}, "name": "wishlist_contains", "type": "RELATIONSHIP", "entity1": "wishlist", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Wishlist", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "wishlist_contains"}, "sort_key": 173, "attributes": [], "node_tables": [[173, "relation_55"]], "unique_name": "wishlist_contains", "mapped_table": [173, "relation_55"], "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "wishlist", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": "wishlist_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "wishlist.wishlist_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["wishlist_contains", "wishlist", "customer", "product"], "select_frequency": 2, "select_all_tables": [[173, "relation_55"], [113, "relation_38"], [60, "relation_21"], [54, "relation_18"], [5, "temp_product"], [57, "relation_19"], [58, "relation_20"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["review_id", "INTEGER", "review.review_id", "review_id"]], [["reviews_product_id", "INTEGER", "product_id", "reviews_product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["review_id", "INTEGER", "review.review_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_39", "relation_1"], "table_key_entities": [["review"], ["product"]]}, "name": "reviews", "type": "RELATIONSHIP", "entity1": "product", "entity2": "review", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Review", "role": null, "total": true}, "attributes": [], "table_name": "reviews"}, "sort_key": 174, "attributes": [], "node_tables": [[174, "relation_56"]], "unique_name": "reviews", "mapped_table": [174, "relation_56"], "relation_size": 47, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "review", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": "review_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "review.review_id", "pk_reference_node_unique_name": null}, {"pk_name": "reviews_product_id", "pk_type": "INTEGER", "pk_ER_name": "reviews_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 47, "select_all_nodes": ["reviews", "product", "review", "customer"], "select_frequency": 1, "select_all_tables": [[60, "relation_21"], [54, "relation_18"], [5, "temp_product"], [174, "relation_56"], [116, "relation_39"], [57, "relation_19"], [58, "relation_20"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 18, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders_customer_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"]]], "reference_node": [], "reference_table": ["relation_41", "relation_20"], "table_key_entities": [["custorder"], ["customer"]]}, "name": "customer_orders", "type": "RELATIONSHIP", "entity1": "customer", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Customer", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "customer_orders"}, "sort_key": 175, "attributes": [], "node_tables": [[175, "relation_57"]], "unique_name": "customer_orders", "mapped_table": [175, "relation_57"], "relation_size": 71, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "customer_orders_customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_orders_customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}], "insert_frequency": 71, "select_all_nodes": ["customer_orders", "customer", "custorder"], "select_frequency": 5, "select_all_tables": [[126, "relation_41"], [60, "relation_21"], [54, "relation_18"], [57, "relation_19"], [58, "relation_20"], [175, "relation_57"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_41", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_items", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_items"}, "sort_key": 176, "attributes": [], "node_tables": [[176, "relation_58"]], "unique_name": "order_items", "mapped_table": [176, "relation_58"], "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_items", "custorder", "product"], "select_frequency": 2, "select_all_tables": [[5, "temp_product"], [126, "relation_41"], [176, "relation_58"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["payment_order_customer_id", "INTEGER", "customer_id", "payment_order_customer_id"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order_payment_method_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id"]]], "reference_node": [], "reference_table": ["relation_41", "relation_36"], "table_key_entities": [["custorder"], ["paymentmethod"]]}, "name": "payment_order", "type": "RELATIONSHIP", "entity1": "paymentmethod", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "PaymentMethod", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "payment_order"}, "sort_key": 177, "attributes": [], "node_tables": [[177, "relation_59"]], "unique_name": "payment_order", "mapped_table": [177, "relation_59"], "relation_size": 90, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_customer_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_customer_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": "payment_method_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "paymentmethod.payment_method_id", "pk_reference_node_unique_name": null}], "insert_frequency": 90, "select_all_nodes": ["payment_order", "paymentmethod", "customer", "custorder"], "select_frequency": 2, "select_all_tables": [[104, "relation_36"], [126, "relation_41"], [60, "relation_21"], [54, "relation_18"], [177, "relation_59"], [57, "relation_19"], [58, "relation_20"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_41", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_returns", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_returns"}, "sort_key": 178, "attributes": [], "node_tables": [[178, "relation_60"]], "unique_name": "order_returns", "mapped_table": [178, "relation_60"], "relation_size": 188, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 188, "select_all_nodes": ["order_returns", "custorder", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [126, "relation_41"], [178, "relation_60"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]], [["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons_custorder_id"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code"]], [["custorder_id", "INTEGER", "custorder_id"]]], "reference_node": [], "reference_table": ["relation_44", "relation_41"], "table_key_entities": [["coupon"], ["custorder"]]}, "name": "order_coupons", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "coupon", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Coupon", "role": null, "total": true}, "attributes": [], "table_name": "order_coupons"}, "sort_key": 179, "attributes": [], "node_tables": [[179, "relation_61"]], "unique_name": "order_coupons", "mapped_table": [179, "relation_61"], "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "coupon", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": null}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": "coupon_code", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "coupon.coupon_code", "pk_reference_node_unique_name": null}, {"pk_name": "order_coupons_custorder_id", "pk_type": "INTEGER", "pk_ER_name": "order_coupons_custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_coupons", "custorder", "coupon", "promotion"], "select_frequency": 1, "select_all_tables": [[179, "relation_61"], [126, "relation_41"], [143, "relation_44"], [136, "relation_43"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_46"], "table_key_entities": [["product"], ["warehousebin"]]}, "name": "stock", "type": "RELATIONSHIP", "entity1": "product", "entity2": "warehousebin", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "WarehouseBin", "role": null, "total": true}, "attributes": [], "table_name": "stock"}, "sort_key": 180, "attributes": [], "node_tables": [[180, "relation_62"]], "unique_name": "stock", "mapped_table": [180, "relation_62"], "relation_size": 3173, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": null}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": "bin_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehousebin.bin_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3173, "select_all_nodes": ["stock", "product", "warehousebin", "warehouse"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [151, "relation_46"], [180, "relation_62"], [147, "relation_45"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_47", "relation_1"], "table_key_entities": [["supplier"], ["product"]]}, "name": "supplier_products", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "supplier_products"}, "sort_key": 181, "attributes": [], "node_tables": [[181, "relation_63"]], "unique_name": "supplier_products", "mapped_table": [181, "relation_63"], "relation_size": 159, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 159, "select_all_nodes": ["supplier_products", "supplier", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [181, "relation_63"], [154, "relation_47"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos_supplier_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["supplier_id", "INTEGER", "supplier_id"]]], "reference_node": [], "reference_table": ["relation_49", "relation_47"], "table_key_entities": [["purchaseorder"], ["supplier"]]}, "name": "supplier_pos", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "purchaseorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "attributes": [], "table_name": "supplier_pos"}, "sort_key": 182, "attributes": [], "node_tables": [[182, "relation_64"]], "unique_name": "supplier_pos", "mapped_table": [182, "relation_64"], "relation_size": 87, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "supplier_pos_supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_pos_supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}], "insert_frequency": 87, "select_all_nodes": ["supplier_pos", "supplier", "purchaseorder"], "select_frequency": 1, "select_all_tables": [[161, "relation_49"], [182, "relation_64"], [154, "relation_47"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 5, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_49", "relation_1"], "table_key_entities": [["purchaseorder"], ["product"]]}, "name": "po_items", "type": "RELATIONSHIP", "entity1": "purchaseorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "po_items"}, "sort_key": 183, "attributes": [], "node_tables": [[183, "relation_65"]], "unique_name": "po_items", "mapped_table": [183, "relation_65"], "relation_size": 156, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 156, "select_all_nodes": ["po_items", "purchaseorder", "product"], "select_frequency": 1, "select_all_tables": [[161, "relation_49"], [5, "temp_product"], [183, "relation_65"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]], [["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments_courierpartner_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id"]], [["courierpartner_id", "INTEGER", "courierpartner_id"]]], "reference_node": [], "reference_table": ["relation_42", "relation_50"], "table_key_entities": [["shipment"], ["courierpartner"]]}, "name": "courier_shipments", "type": "RELATIONSHIP", "entity1": "courierpartner", "entity2": "shipment", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CourierPartner", "role": null, "total": true}, "entity2": {"one": false, "name": "Shipment", "role": null, "total": true}, "attributes": [], "table_name": "courier_shipments"}, "sort_key": 184, "attributes": [], "node_tables": [[184, "relation_66"]], "unique_name": "courier_shipments", "mapped_table": [184, "relation_66"], "relation_size": 95, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "shipment", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": "shipment_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "shipment.shipment_id", "pk_reference_node_unique_name": null}, {"pk_name": "courier_shipments_courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courier_shipments_courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": "courierpartner_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "courierpartner_id", "pk_reference_node_unique_name": null}], "insert_frequency": 95, "select_all_nodes": ["courier_shipments", "courierpartner", "shipment", "custorder"], "select_frequency": 2, "select_all_tables": [[165, "relation_50"], [184, "relation_66"], [130, "relation_42"], [126, "relation_41"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 11, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "physicalproduct_id", "phone_id"]], [["bundle_phone_phone_id", "INTEGER", "physicalproduct_id", "bundle_phone_phone_id"]]], "reference_key": [[["physicalproduct_id", "INTEGER", "physicalproduct_id"]], [["physicalproduct_id", "INTEGER", "physicalproduct_id"]]], "reference_node": [], "reference_table": ["relation_3", "relation_3"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundle_phones", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundle_phones"}, "sort_key": 185, "attributes": [], "node_tables": [[185, "relation_67"]], "unique_name": "bundle_phones", "mapped_table": [185, "relation_67"], "relation_size": 207, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundle_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundle_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": null}], "insert_frequency": 207, "select_all_nodes": ["bundle_phones", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[185, "relation_67"], [13, "relation_3"], [12, "relation_2"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "bundle_phone_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], [["bundled_phone_smart_watch_phone_id", "INTEGER", "physicalproduct_id", "bundled_phone_smart_watch_phone_id"]]], "reference_key": [[["smartwatch_id", "INTEGER", "smartwatch_id"]], [["physicalproduct_id", "INTEGER", "physicalproduct_id"]]], "reference_node": [], "reference_table": ["relation_8", "relation_3"], "table_key_entities": [["smartwatch"], ["phone"]]}, "name": "bundled_phone_smart_watch", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "smartwatch", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": null, "total": true}, "entity2": {"one": false, "name": "Smartwatch", "role": null, "total": true}, "attributes": [], "table_name": "bundled_phone_smart_watch"}, "sort_key": 186, "attributes": [], "node_tables": [[186, "relation_68"]], "unique_name": "bundled_phone_smart_watch", "mapped_table": [186, "relation_68"], "relation_size": 48, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "smartwatch_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "smartwatch_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundled_phone_smart_watch_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundled_phone_smart_watch_phone_id", "pk_entity_name": "phone", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": null}], "insert_frequency": 48, "select_all_nodes": ["bundled_phone_smart_watch", "phone", "smartwatch"], "select_frequency": 1, "select_all_tables": [[186, "relation_68"], [13, "relation_3"], [12, "relation_2"], [28, "relation_8"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "physicalproduct_id", "phone_id"]], [["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "physicalproduct_id", "single_bundle_phone_bundled_phone_phone_id"]]], "reference_key": [[["physicalproduct_id", "INTEGER", "physicalproduct_id"]], [["physicalproduct_id", "INTEGER", "physicalproduct_id"]]], "reference_node": [], "reference_table": ["relation_3", "relation_3"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundled_phone", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "single_bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundled_phone"}, "sort_key": 187, "attributes": [], "node_tables": [[187, "relation_69"]], "unique_name": "bundled_phone", "mapped_table": [187, "relation_69"], "relation_size": 12, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": null}, {"pk_name": "single_bundle_phone_bundled_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "single_bundle_phone_bundled_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": null}], "insert_frequency": 12, "select_all_nodes": ["bundled_phone", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[13, "relation_3"], [12, "relation_2"], [187, "relation_69"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "single_bundle_phone_id"], "node_type_for_partitioning_options": "1_N_relationship"}], "config": {"tag": "all_by_itself", "cart": "all_by_itself", "user": "all_by_itself", "media": "partially_by_itself", "phone": "contained_in_parent", "stock": "all_by_itself", "camera": "all_by_itself", "coupon": "all_by_itself", "laptop": "all_by_itself", "review": "all_by_itself", "tablet": "all_by_itself", "address": "all_by_itself", "apparel": "all_by_itself", "desktop": "all_by_itself", "product": "all_by_itself", "reviews": "all_by_itself", "category": "all_by_itself", "clothing": "all_by_itself", "computer": "contained_in_parent", "customer": "partially_by_itself", "employee": "all_by_itself", "engineer": "partially_by_itself", "footwear": "contained_in_parent", "po_items": "all_by_itself", "shipment": "all_by_itself", "software": "partially_by_itself", "supplier": "all_by_itself", "wishlist": "all_by_itself", "appliance": "contained_in_parent", "custorder": "all_by_itself", "promotion": "all_by_itself", "warehouse": "all_by_itself", "smartwatch": "all_by_itself", "accessories": "all_by_itself", "electronics": "contained_in_parent", "menclothing": "partially_by_itself", "order_items": "all_by_itself", "pricehistory": "all_by_itself", "product_tags": "all_by_itself", "productimage": "all_by_itself", "supplier_pos": "all_by_itself", "supportagent": "partially_by_itself", "user.mv_user": "all_by_itself", "warehousebin": "all_by_itself", "bundle_phones": "all_by_itself", "bundled_phone": "all_by_itself", "cart_contains": "all_by_itself", "order_coupons": "all_by_itself", "order_returns": "all_by_itself", "payment_order": "all_by_itself", "paymentmethod": "all_by_itself", "primecustomer": "partially_by_itself", "purchaseorder": "all_by_itself", "womenclothing": "partially_by_itself", "courierpartner": "all_by_itself", "digitalproduct": "all_by_itself", "productvariant": "all_by_itself", "bought_together": "all_by_itself", "browsingsession": "all_by_itself", "categorymanager": "partially_by_itself", "customer_orders": "all_by_itself", "physicalproduct": "all_by_itself", "suppliercontact": "all_by_itself", "businesscustomer": "partially_by_itself", "kitchenappliance": "partially_by_itself", "category_products": "all_by_itself", "corporateemployee": "all_by_itself", "courier_shipments": "all_by_itself", "supplier_products": "all_by_itself", "wishlist_contains": "all_by_itself", "customer.contact_no": "all_by_itself", "fulfillmentassociate": "all_by_itself", "product.mv_attributes": "all_by_itself", "bundled_phone_smart_watch": "all_by_itself", "primecustomer.subscription_addons": "all_by_itself"}}
\.


--
-- Data for Name: relation_0; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_0 (category_id, category_name, parent) FROM stdin;
1	future	138
2	future	583
3	look	868
4	laugh	822
5	author	783
6	benefit	65
7	across	262
8	organization	121
9	must	508
10	car	780
11	cut	461
12	type	484
13	half	668
14	minute	389
15	easy	808
16	edge	215
17	within	97
18	across	500
19	close	30
20	feel	915
21	unit	856
22	camera	400
23	sport	444
24	long	623
25	scene	781
26	baby	786
27	certain	3
28	become	713
29	effort	457
30	hear	273
31	kind	739
32	international	822
33	reveal	235
34	phone	606
35	matter	968
36	month	105
37	use	924
38	form	326
39	term	32
40	under	23
41	range	27
42	anything	666
43	health	555
44	large	10
45	century	962
46	risk	903
47	southern	391
48	sport	703
49	worker	222
50	western	993
51	attorney	433
52	like	744
53	though	30
54	expect	541
55	still	228
56	no	783
57	physical	449
58	yourself	962
59	herself	508
60	change	567
61	central	239
62	themselves	354
63	realize	237
64	relationship	694
65	growth	225
66	address	780
67	right	471
68	within	976
69	big	297
70	consumer	949
71	early	23
72	report	427
73	if	858
74	citizen	939
75	special	570
76	current	945
77	simply	658
78	health	103
79	its	191
80	effort	645
81	him	742
82	course	881
83	weight	304
84	miss	124
85	significant	761
86	song	341
87	skill	918
88	able	739
89	especially	997
90	direction	729
91	before	513
92	actually	959
93	beyond	991
94	bad	433
95	clear	520
96	discuss	850
97	cup	933
98	over	687
99	billion	195
100	go	311
\.


--
-- Data for Name: relation_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_1 (product_id, sku, product_name, base_price, is_active, quantity) FROM stdin;
1	every	attention	291	602	997
2	worker	huge	867	964	518
3	store	visit	604	874	36
4	nature	newspaper	249	762	817
5	civil	opportunity	425	681	178
6	plan	possible	562	904	720
7	side	exactly	89	450	680
8	account	continue	798	168	534
9	shoulder	apply	380	502	751
10	hard	message	481	45	316
11	nearly	high	663	175	173
12	after	young	13	790	205
13	focus	between	415	527	353
14	remember	each	471	932	276
15	treat	surface	393	803	878
16	nor	travel	532	797	575
17	trial	force	437	973	58
18	him	from	891	374	584
19	guy	experience	964	517	424
20	official	science	833	366	425
21	send	seat	2	552	554
22	white	again	470	615	29
23	effort	rate	651	182	564
24	often	class	882	94	818
25	difference	his	34	862	967
26	push	couple	86	889	18
27	their	remain	15	773	774
28	crime	head	256	276	113
29	treatment	leg	353	298	72
30	special	soon	164	262	541
31	citizen	case	673	280	664
32	couple	network	466	720	330
33	friend	marriage	486	117	25
34	interview	sense	396	352	432
35	collection	toward	265	112	260
36	training	voice	989	621	443
37	however	participant	231	19	407
38	business	in	37	737	983
39	school	no	457	722	519
40	tonight	mind	558	853	226
41	pressure	century	229	537	665
42	research	mind	405	692	590
43	live	executive	676	647	437
44	professor	lot	756	306	129
45	fly	yard	897	49	314
46	what	unit	880	79	318
47	education	section	762	163	427
48	best	prepare	134	9	575
49	whatever	bill	605	840	223
50	drug	wide	176	848	889
51	claim	plant	388	206	356
52	certain	third	211	588	691
53	organization	one	606	199	505
54	professional	allow	961	682	400
55	outside	choice	517	512	18
56	share	list	627	893	412
57	anything	modern	19	161	206
58	capital	drive	831	577	802
59	already	fish	348	440	219
60	mission	bill	691	99	858
61	brother	color	955	561	353
62	particular	might	787	546	241
63	discussion	right	743	42	87
64	teach	focus	174	171	933
65	peace	fast	275	778	341
66	establish	myself	377	347	349
67	staff	doctor	299	241	889
68	mean	different	139	594	565
69	speech	they	329	41	417
70	business	notice	390	887	808
71	cultural	friend	849	129	350
72	college	professor	630	602	801
73	history	idea	79	585	564
74	again	parent	580	84	976
75	three	foreign	374	913	303
76	fast	lose	469	919	284
77	close	of	806	47	848
78	all	challenge	13	629	687
79	born	especially	94	424	118
80	scene	moment	193	246	805
81	join	game	166	119	462
82	matter	why	698	248	163
83	return	democratic	446	933	988
84	several	throughout	826	994	556
85	song	accept	564	260	729
86	else	us	323	103	213
87	the	pretty	41	28	11
88	call	outside	744	611	328
89	next	spring	401	321	409
90	discussion	stage	66	936	325
91	you	partner	115	257	221
92	maintain	these	678	365	266
93	difficult	more	555	213	315
94	consider	marriage	253	370	84
95	movie	leader	92	772	459
96	road	indeed	668	589	659
97	media	make	964	233	400
98	walk	happy	43	336	192
99	newspaper	full	812	868	593
100	worry	sound	252	343	104
\.


--
-- Data for Name: relation_10; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_10 (accessories_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, accessory_type) FROM stdin;
1101	wrong	someone	975	695	144	not	285	Democrat
1102	serve	audience	723	522	631	agency	167	follow
1103	husband	method	864	594	318	lot	677	attack
1104	first	fact	114	273	654	serious	961	year
1105	which	unit	185	724	656	I	584	then
1106	recent	peace	931	254	954	second	442	prove
1107	ready	game	56	145	505	anyone	516	want
1108	six	miss	299	763	385	main	580	tonight
1109	consider	support	448	133	702	discover	439	well
1110	foot	two	499	65	605	ago	545	conference
1111	kid	maybe	534	190	64	let	195	alone
1112	pattern	fill	20	356	244	gun	727	number
1113	find	past	540	540	666	success	572	rich
1114	we	arrive	425	170	804	appear	1	board
1115	order	should	225	967	523	along	672	environmental
1116	partner	fund	160	881	562	believe	818	strategy
1117	tell	beyond	26	146	558	huge	236	put
1118	drop	join	370	341	749	hot	97	figure
1119	stuff	price	262	900	996	meet	365	order
1120	now	compare	609	891	44	try	875	dinner
1121	statement	fish	690	470	39	common	319	member
1122	particular	though	952	308	692	check	315	four
1123	upon	include	813	395	495	series	689	successful
1124	different	kid	123	600	977	authority	732	base
1125	sit	four	109	435	76	few	127	every
1126	worker	magazine	646	10	252	rest	936	health
1127	red	standard	73	968	218	they	220	add
1128	along	war	931	304	293	performance	477	food
1129	for	worry	714	572	587	around	713	note
1130	food	feel	474	386	86	contain	76	television
1131	occur	car	992	309	740	table	210	head
1132	into	second	738	303	835	night	190	measure
1133	fast	employee	658	622	946	hope	385	our
1134	ever	collection	865	873	746	be	227	hotel
1135	rock	scientist	253	944	506	despite	300	single
1136	a	check	275	486	506	social	773	card
1137	such	think	113	608	740	institution	220	visit
1138	senior	south	706	458	398	she	432	thing
1139	sing	lay	64	964	747	thank	780	close
1140	laugh	detail	719	700	396	first	383	off
1141	woman	cost	539	146	820	into	917	movement
1142	with	pick	525	730	164	remember	597	speech
1143	forget	line	795	218	778	employee	671	lay
1144	wish	administration	947	318	309	network	138	sure
1145	blue	toward	22	725	463	friend	685	worker
1146	attack	them	691	593	354	off	729	one
1147	because	enjoy	373	877	224	talk	209	material
1148	and	bank	685	473	592	official	836	PM
1149	receive	without	278	704	639	media	292	college
1150	sound	goal	284	889	455	attorney	114	structure
1151	once	budget	965	334	459	building	532	environmental
1152	decision	research	841	912	859	north	522	management
1153	happy	adult	926	934	328	enough	159	arrive
1154	Democrat	near	161	261	726	represent	422	dark
1155	simple	born	864	31	691	position	408	add
1156	record	floor	231	140	74	environmental	170	contain
1157	citizen	treat	480	617	745	and	815	body
1158	PM	human	816	945	226	beautiful	619	since
1159	quickly	explain	401	275	9	oil	154	individual
1160	late	window	124	760	442	strong	757	nothing
1161	young	or	687	309	706	imagine	568	drop
1162	help	wind	63	679	764	address	100	window
1163	bag	base	918	792	170	commercial	835	picture
1164	choose	painting	444	114	949	other	368	Democrat
1165	source	fine	663	326	315	event	314	seat
1166	trip	power	822	463	33	responsibility	292	main
1167	own	morning	573	643	218	cell	984	notice
1168	raise	hear	768	281	173	bill	524	along
1169	evidence	occur	347	569	837	however	918	possible
1170	group	feeling	713	37	132	participant	393	ask
1171	reflect	we	331	348	853	natural	172	I
1172	pattern	decade	300	28	773	yourself	19	building
1173	half	series	557	654	628	where	431	first
1174	spring	guess	553	847	476	nice	827	fund
1175	edge	few	633	522	880	arrive	109	business
1176	teach	increase	128	895	589	remain	811	mouth
1177	work	serious	393	92	512	above	363	necessary
1178	effect	president	600	34	848	camera	484	of
1179	including	remember	889	556	327	team	9	none
1180	section	exist	131	484	483	avoid	443	why
1181	man	war	647	528	104	arm	464	speech
1182	important	my	565	529	303	international	54	yourself
1183	religious	member	921	911	434	performance	933	surface
1184	degree	hair	941	360	832	life	85	drop
1185	simply	figure	468	371	114	father	820	might
1186	scientist	boy	677	104	892	relationship	617	before
1187	agreement	keep	326	163	893	worry	339	social
1188	their	huge	790	84	214	product	571	Republican
1189	herself	professional	598	976	68	would	579	follow
1190	receive	year	473	834	513	ready	396	partner
1191	data	either	373	536	789	director	829	scene
1192	science	allow	179	858	696	daughter	1	doctor
1193	sense	actually	180	316	182	federal	213	board
1194	big	military	880	794	138	mean	942	fear
1195	half	everyone	469	810	142	white	928	seek
1196	let	play	497	519	562	left	404	seem
1197	ready	difficult	626	655	766	citizen	558	consumer
1198	change	argue	980	662	517	able	482	type
1199	similar	everything	287	489	129	day	388	exactly
1200	still	letter	37	977	956	individual	625	authority
\.


--
-- Data for Name: relation_11; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_11 (kitchenappliance_id, warranty_years) FROM stdin;
1301	933
1302	375
1303	801
1304	698
1305	543
1306	905
1307	492
1308	929
1309	77
1310	702
1311	955
1312	449
1313	156
1314	257
1315	438
1316	302
1317	507
1318	978
1319	342
1320	175
1321	312
1322	877
1323	852
1324	471
1325	500
1326	211
1327	804
1328	481
1329	887
1330	863
1331	722
1332	500
1333	220
1334	415
1335	847
1336	913
1337	124
1338	209
1339	18
1340	114
1341	560
1342	60
1343	942
1344	645
1345	209
1346	353
1347	630
1348	813
1349	473
1350	70
1351	964
1352	559
1353	146
1354	509
1355	477
1356	746
1357	725
1358	914
1359	936
1360	434
1361	970
1362	958
1363	128
1364	427
1365	880
1366	308
1367	408
1368	469
1369	341
1370	272
1371	750
1372	347
1373	634
1374	126
1375	29
1376	665
1377	296
1378	568
1379	744
1380	853
1381	807
1382	544
1383	728
1384	634
1385	112
1386	439
1387	582
1388	258
1389	729
1390	432
1391	512
1392	848
1393	106
1394	710
1395	471
1396	644
1397	192
1398	557
1399	842
1400	153
\.


--
-- Data for Name: relation_12; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_12 (apparel_id, sku, product_name, base_price, is_active, quantity, dimensions, size_system, sole_material, role) FROM stdin;
1401	trade	claim	204	202	186	whole	skin	\N	apparel
1402	bad	change	74	263	969	speech	mouth	\N	apparel
1403	action	listen	402	643	817	take	future	\N	apparel
1404	grow	popular	764	787	186	draw	entire	\N	apparel
1405	something	carry	912	958	408	sometimes	land	\N	apparel
1406	onto	life	920	833	977	entire	sit	\N	apparel
1407	boy	possible	619	366	237	east	yourself	\N	apparel
1408	here	fund	810	853	554	manager	mouth	\N	apparel
1409	yeah	recently	466	638	129	day	past	\N	apparel
1410	real	own	948	396	153	society	room	\N	apparel
1411	care	author	352	257	855	already	economic	\N	apparel
1412	movie	anyone	897	147	193	measure	use	\N	apparel
1413	figure	American	219	642	7	write	measure	\N	apparel
1414	white	movement	952	1000	664	explain	improve	\N	apparel
1415	ball	spend	879	471	292	in	few	\N	apparel
1416	social	white	537	772	936	interesting	area	\N	apparel
1417	order	central	767	80	619	better	allow	\N	apparel
1418	improve	surface	874	208	969	risk	site	\N	apparel
1419	forward	other	910	32	447	none	site	\N	apparel
1420	company	surface	176	451	975	blood	fire	\N	apparel
1421	throughout	main	54	458	634	pretty	consider	\N	apparel
1422	mention	foreign	725	294	593	pass	community	\N	apparel
1423	great	walk	995	557	968	wind	family	\N	apparel
1424	young	show	250	117	464	expect	more	\N	apparel
1425	case	half	236	527	325	cup	serve	\N	apparel
1426	different	fire	687	314	959	room	physical	\N	apparel
1427	go	full	273	656	430	main	try	\N	apparel
1428	pressure	cut	118	19	979	something	down	\N	apparel
1429	actually	stay	937	380	514	indeed	help	\N	apparel
1430	modern	our	59	336	163	happen	could	\N	apparel
1431	friend	general	36	31	268	itself	may	\N	apparel
1432	ground	animal	32	743	299	wish	within	\N	apparel
1433	difficult	person	738	740	613	attorney	whom	\N	apparel
1434	along	least	346	602	92	indeed	heart	\N	apparel
1435	throughout	order	180	360	736	smile	notice	\N	apparel
1436	beat	traditional	805	379	148	according	single	\N	apparel
1437	grow	such	199	937	473	on	season	\N	apparel
1438	reflect	yet	459	356	630	particular	land	\N	apparel
1439	continue	past	253	239	98	certainly	would	\N	apparel
1440	go	scientist	91	749	320	coach	each	\N	apparel
1441	near	drug	84	125	602	writer	plant	\N	apparel
1442	whatever	democratic	946	256	570	article	one	\N	apparel
1443	and	case	793	905	936	item	it	\N	apparel
1444	light	detail	829	932	128	serve	nearly	\N	apparel
1445	accept	focus	733	417	217	whether	idea	\N	apparel
1446	across	responsibility	969	140	794	order	share	\N	apparel
1447	point	bag	856	82	445	across	color	\N	apparel
1448	involve	eye	391	158	585	media	election	\N	apparel
1449	continue	thus	948	309	263	career	current	\N	apparel
1450	skin	together	880	396	121	responsibility	support	\N	apparel
1451	write	recognize	912	676	369	president	already	\N	apparel
1452	politics	improve	494	675	920	often	successful	\N	apparel
1453	like	fire	909	218	601	almost	probably	\N	apparel
1454	stay	city	154	643	275	must	woman	\N	apparel
1455	here	agree	976	653	201	finally	often	\N	apparel
1456	rate	hope	949	677	413	economic	movie	\N	apparel
1457	suggest	reach	330	828	111	business	expect	\N	apparel
1458	wait	choose	209	951	383	hand	question	\N	apparel
1459	we	worry	647	333	578	bank	production	\N	apparel
1460	attack	us	57	727	470	last	new	\N	apparel
1461	ago	public	466	511	522	white	poor	\N	apparel
1462	development	modern	822	880	285	send	program	\N	apparel
1463	between	support	631	160	291	seek	past	\N	apparel
1464	usually	everybody	996	326	229	care	no	\N	apparel
1465	close	true	321	202	778	be	though	\N	apparel
1466	world	into	875	426	217	language	like	\N	apparel
1467	crime	outside	799	137	525	treatment	blue	\N	apparel
1468	help	shoulder	904	398	30	story	sense	\N	apparel
1469	paper	trip	143	404	355	bill	whom	\N	apparel
1470	no	born	617	150	750	majority	bar	\N	apparel
1471	language	fish	783	989	703	necessary	me	\N	apparel
1472	amount	American	773	988	205	say	suffer	\N	apparel
1473	see	child	485	388	791	hand	medical	\N	apparel
1474	Republican	dark	259	571	993	spend	practice	\N	apparel
1475	late	together	542	773	537	behind	quite	\N	apparel
1476	always	red	25	998	391	program	set	\N	apparel
1477	relate	response	149	175	626	community	southern	\N	apparel
1478	than	evening	102	417	117	behavior	bill	\N	apparel
1479	child	kid	414	936	55	always	everybody	\N	apparel
1480	vote	large	84	962	578	project	sense	\N	apparel
1481	have	return	228	925	346	executive	station	\N	apparel
1482	past	enjoy	626	696	676	reflect	small	\N	apparel
1483	throw	there	856	365	731	talk	weight	\N	apparel
1484	popular	ask	248	420	141	visit	citizen	\N	apparel
1485	Democrat	president	700	942	411	civil	ball	\N	apparel
1486	assume	unit	253	193	582	sure	anything	\N	apparel
1487	great	fly	581	348	192	home	dark	\N	apparel
1488	happy	well	925	790	214	character	learn	\N	apparel
1489	action	there	54	952	526	suggest	force	\N	apparel
1490	join	skin	884	550	775	campaign	door	\N	apparel
1491	agency	middle	358	676	725	government	reflect	\N	apparel
1492	after	instead	939	234	359	learn	itself	\N	apparel
1493	professor	their	74	231	930	while	yard	\N	apparel
1494	of	sea	132	366	642	two	provide	\N	apparel
1495	public	my	95	475	528	opportunity	see	\N	apparel
1496	other	wrong	387	797	270	early	institution	\N	apparel
1497	thought	edge	469	479	681	lawyer	point	\N	apparel
1498	property	care	270	721	967	market	return	\N	apparel
1499	key	he	804	964	541	man	water	\N	apparel
1500	there	camera	434	948	243	stuff	necessary	\N	apparel
1801	story	eye	535	732	801	how	sort	we	footwear
1802	state	start	596	230	534	accept	serve	benefit	footwear
1803	herself	never	804	462	235	owner	pull	nice	footwear
1804	kid	teach	864	784	90	because	appear	subject	footwear
1805	rather	art	258	591	527	style	education	skill	footwear
1806	move	line	841	21	342	marriage	ten	personal	footwear
1807	stock	trip	250	442	157	painting	finish	bad	footwear
1808	near	shoulder	70	488	906	believe	change	yeah	footwear
1809	surface	town	420	757	858	who	sure	evening	footwear
1810	contain	present	722	126	930	new	dinner	begin	footwear
1811	or	his	957	122	859	kind	apply	recognize	footwear
1812	low	news	388	873	33	answer	usually	wonder	footwear
1813	may	find	558	353	77	participant	under	truth	footwear
1814	full	movement	1000	692	482	successful	along	true	footwear
1815	answer	throughout	765	687	661	baby	near	development	footwear
1816	machine	number	410	44	268	just	nothing	start	footwear
1817	drop	ten	692	402	395	short	day	note	footwear
1818	knowledge	result	16	731	693	response	again	must	footwear
1819	age	evening	551	134	76	seat	skill	lay	footwear
1820	form	still	414	215	110	notice	agreement	fund	footwear
1821	everything	another	202	414	651	seat	plan	inside	footwear
1822	ever	car	446	27	820	clear	become	offer	footwear
1823	service	wife	23	795	45	also	can	defense	footwear
1824	moment	market	759	429	134	outside	anyone	few	footwear
1825	issue	space	762	194	517	to	six	simply	footwear
1826	south	student	846	291	903	current	book	protect	footwear
1827	view	strong	561	44	424	factor	money	billion	footwear
1828	concern	spring	479	163	305	listen	process	former	footwear
1829	high	report	666	308	600	new	think	blood	footwear
1830	fact	ever	33	630	537	so	arm	sort	footwear
1831	down	soon	301	33	500	doctor	raise	painting	footwear
1832	computer	common	960	168	759	artist	word	tend	footwear
1833	design	smile	954	720	646	table	sign	score	footwear
1834	social	market	271	835	460	road	least	today	footwear
1835	person	hour	431	36	303	institution	participant	per	footwear
1836	director	move	356	205	351	better	seem	large	footwear
1837	turn	what	251	142	967	bill	professor	draw	footwear
1838	prove	everyone	857	42	97	fall	fish	seat	footwear
1839	chance	blood	315	324	505	move	eat	only	footwear
1840	issue	really	22	395	592	public	left	doctor	footwear
1841	thing	piece	241	754	539	our	behavior	often	footwear
1842	raise	computer	564	788	939	work	special	brother	footwear
1843	while	church	428	567	396	my	cell	suddenly	footwear
1844	around	beyond	983	571	9	board	tree	president	footwear
1845	most	senior	420	813	398	religious	sell	somebody	footwear
1846	we	next	136	448	839	maybe	mention	mention	footwear
1847	try	range	113	582	116	money	hard	performance	footwear
1848	third	because	180	917	361	floor	production	interesting	footwear
1849	nothing	throughout	510	788	894	election	candidate	you	footwear
1850	bag	our	905	603	882	no	need	finish	footwear
1851	two	third	656	718	246	same	whose	yourself	footwear
1852	I	television	73	734	878	condition	street	young	footwear
1853	simple	security	251	672	814	economy	bad	stand	footwear
1854	serious	keep	270	793	932	include	sea	tonight	footwear
1855	while	wide	653	843	135	before	reveal	want	footwear
1856	reason	whole	474	366	133	pick	mind	me	footwear
1857	community	close	312	754	43	such	whose	maintain	footwear
1858	teach	child	458	505	892	image	a	white	footwear
1859	why	away	178	977	574	action	yet	candidate	footwear
1860	down	base	829	684	697	position	describe	by	footwear
1861	single	you	670	741	321	watch	leader	cut	footwear
1862	affect	provide	285	163	367	room	space	cut	footwear
1863	can	a	841	95	776	growth	mother	executive	footwear
1864	she	author	833	249	976	everyone	whole	technology	footwear
1865	space	produce	97	960	926	cup	must	increase	footwear
1866	lawyer	though	249	731	68	almost	prepare	recent	footwear
1867	use	born	973	693	548	issue	teach	safe	footwear
1868	work	field	45	922	584	decade	think	family	footwear
1869	trip	public	945	910	531	blood	foot	business	footwear
1870	rock	as	395	676	99	listen	can	nature	footwear
1871	general	rule	846	3	588	suggest	poor	young	footwear
1872	expert	consider	474	112	222	employee	manage	together	footwear
1873	tax	down	69	525	142	region	final	wonder	footwear
1874	customer	consider	189	449	870	his	administration	against	footwear
1875	level	safe	528	938	279	want	among	best	footwear
1876	thus	forward	826	187	384	down	ok	item	footwear
1877	half	fear	124	664	137	interesting	final	democratic	footwear
1878	collection	number	655	960	406	thing	likely	American	footwear
1879	place	point	187	230	818	whom	cut	local	footwear
1880	treatment	bar	835	874	878	policy	agent	official	footwear
1881	country	environmental	51	957	617	relationship	industry	within	footwear
1882	yet	foreign	7	610	713	game	discussion	leg	footwear
1883	focus	continue	13	832	935	technology	different	ready	footwear
1884	movement	like	711	197	630	as	budget	why	footwear
1885	from	pressure	305	153	870	big	environment	left	footwear
1886	theory	bag	381	633	388	score	although	commercial	footwear
1887	plan	because	906	832	626	several	husband	administration	footwear
1888	radio	fire	348	9	433	event	somebody	unit	footwear
1889	nor	do	740	198	170	head	notice	state	footwear
1890	police	marriage	514	270	480	happy	major	take	footwear
1891	home	can	903	817	85	during	make	develop	footwear
1892	method	enter	221	953	616	feeling	exist	year	footwear
1893	should	college	941	255	809	his	political	not	footwear
1894	move	compare	733	880	559	light	top	yet	footwear
1895	agency	listen	534	535	20	who	true	particular	footwear
1896	big	attorney	461	33	882	put	sit	simply	footwear
1897	great	reflect	179	421	132	energy	reason	something	footwear
1898	finish	much	518	937	236	manager	there	main	footwear
1899	early	property	58	381	174	former	several	fine	footwear
1900	finally	expert	442	838	552	authority	structure	every	footwear
\.


--
-- Data for Name: relation_13; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_13 (clothing_id, sku, product_name, base_price, is_active, quantity, dimensions, size_system, material) FROM stdin;
1501	physical	democratic	721	477	824	group	yes	produce
1502	radio	cut	452	533	771	research	feel	glass
1503	cell	method	149	826	736	throw	trade	garden
1504	list	child	806	709	102	official	like	outside
1505	room	should	280	374	230	camera	big	standard
1506	memory	paper	986	456	367	then	would	write
1507	forward	affect	855	716	40	ability	finally	nothing
1508	course	story	399	545	362	but	throughout	cover
1509	above	add	678	835	865	professional	son	arrive
1510	billion	brother	310	522	267	blood	evening	establish
1511	agree	bit	85	55	107	office	discover	since
1512	maintain	better	761	318	942	together	check	culture
1513	director	west	438	571	600	theory	result	debate
1514	order	modern	252	286	95	still	fight	accept
1515	painting	push	402	697	519	others	fall	cold
1516	our	form	300	620	498	these	real	industry
1517	house	into	423	230	718	coach	remain	at
1518	traditional	part	494	125	528	lead	whose	investment
1519	discuss	stage	867	583	769	actually	away	anyone
1520	pick	involve	33	84	331	crime	him	cut
1521	forward	watch	881	454	93	difference	win	cold
1522	front	upon	906	34	452	will	important	kid
1523	other	analysis	88	703	483	pay	capital	remain
1524	yard	education	813	905	52	next	simple	thus
1525	pressure	smile	507	129	707	chance	current	themselves
1526	operation	tell	447	491	302	determine	employee	night
1527	size	never	622	257	558	ability	either	responsibility
1528	chance	read	612	915	94	while	north	young
1529	risk	court	35	239	965	where	north	else
1530	clear	fly	877	23	770	artist	recognize	challenge
1531	finally	can	43	136	342	away	five	consider
1532	meet	one	569	824	846	seat	enough	bag
1533	wear	position	617	798	462	he	prove	pressure
1534	main	line	336	212	438	miss	message	green
1535	still	enjoy	66	390	931	oil	set	our
1536	use	let	856	803	5	way	fine	usually
1537	now	few	310	749	837	that	quite	arrive
1538	serve	medical	581	592	388	sister	computer	what
1539	order	identify	996	401	78	toward	staff	scene
1540	force	in	864	250	65	however	group	many
1541	network	language	881	871	540	president	protect	possible
1542	growth	better	567	873	319	generation	choice	push
1543	drive	so	148	506	497	energy	resource	subject
1544	scientist	leave	154	561	120	to	discuss	everyone
1545	carry	guess	275	556	804	wife	eye	along
1546	partner	executive	509	641	679	discover	black	bed
1547	interesting	dark	148	152	324	kid	administration	indeed
1548	vote	pull	453	280	855	determine	design	market
1549	century	stay	607	979	804	despite	one	arm
1550	foot	a	723	926	407	usually	attack	star
1551	thousand	well	23	221	563	school	soldier	particular
1552	more	easy	253	625	689	bank	century	before
1553	force	face	992	444	571	head	dark	well
1554	medical	kind	85	30	797	development	himself	leader
1555	she	his	878	662	340	purpose	me	son
1556	bar	record	744	951	206	simple	south	particularly
1557	the	that	563	87	523	ball	build	maybe
1558	age	involve	63	308	653	white	customer	foot
1559	federal	eight	601	909	727	remember	represent	guess
1560	lead	ever	888	910	357	bag	class	drug
1561	impact	professional	381	788	211	officer	national	mind
1562	drive	daughter	628	596	512	know	so	front
1563	cost	involve	183	391	3	message	bill	actually
1564	administration	listen	18	272	375	clear	budget	cause
1565	attention	third	417	675	194	there	stock	manager
1566	tough	hospital	429	914	678	information	group	Mr
1567	region	during	426	585	389	compare	appear	identify
1568	safe	film	176	599	855	other	under	idea
1569	here	development	837	643	213	write	discussion	audience
1570	never	physical	59	299	151	activity	month	approach
1571	meeting	Republican	625	369	189	interesting	wind	key
1572	medical	full	168	915	525	garden	game	under
1573	involve	home	512	879	661	adult	sell	move
1574	for	protect	929	459	188	catch	live	role
1575	serve	determine	274	359	454	Mr	purpose	sense
1576	relate	best	587	722	45	sit	learn	whom
1577	power	station	667	223	876	create	put	sense
1578	health	reduce	246	832	767	strong	network	scientist
1579	near	similar	849	964	897	fall	kind	investment
1580	coach	though	734	934	241	fight	pick	remain
1581	pull	by	864	802	910	indicate	week	couple
1582	war	better	901	421	826	today	claim	newspaper
1583	writer	above	470	526	693	fire	majority	live
1584	create	tonight	48	239	228	lawyer	matter	shake
1585	ball	play	434	127	558	task	teach	green
1586	be	half	780	427	953	interview	back	garden
1587	approach	eat	525	391	616	image	whether	blue
1588	us	employee	97	816	208	style	Congress	mother
1589	fly	ready	401	214	559	size	what	concern
1590	final	look	443	539	860	buy	great	sport
1591	pressure	prove	771	384	656	unit	mention	operation
1592	information	learn	386	652	961	instead	them	early
1593	child	every	521	815	976	visit	new	fact
1594	human	space	321	877	181	simply	memory	son
1595	difference	huge	680	815	556	agency	begin	employee
1596	maybe	budget	979	195	77	seat	painting	TV
1597	effort	eight	88	261	699	magazine	worry	know
1598	successful	college	759	229	505	investment	or	bank
1599	say	single	882	35	959	too	professor	clear
1600	trip	perform	353	412	945	while	thus	call
1601	example	international	427	210	56	rather	young	site
1602	act	word	940	238	155	artist	movie	discover
1603	often	possible	958	345	675	education	late	cell
1604	article	turn	626	993	596	southern	recognize	law
1605	product	pressure	436	691	309	these	example	director
1606	often	beat	753	321	266	doctor	and	husband
1607	image	interest	465	404	984	Mrs	election	game
1608	interview	concern	40	593	797	foot	may	whether
1609	back	cost	819	796	698	happy	activity	trouble
1610	will	thank	676	641	140	his	suffer	partner
1611	present	land	361	902	148	exactly	medical	forward
1612	there	also	773	409	257	yourself	bank	drop
1613	nothing	information	427	324	887	piece	happen	most
1614	director	large	327	71	212	expert	network	analysis
1615	laugh	store	216	410	630	detail	listen	film
1616	where	while	694	653	480	rate	rate	everything
1617	energy	memory	116	142	832	explain	town	bag
1618	whether	man	940	115	396	information	determine	become
1619	term	itself	479	791	495	father	strategy	avoid
1620	single	my	166	773	6	right	job	nor
1621	pay	mouth	977	58	971	expert	house	parent
1622	last	their	140	774	512	wrong	central	sell
1623	sit	investment	207	871	745	role	grow	air
1624	close	draw	618	63	349	degree	thus	keep
1625	for	others	491	288	764	difficult	art	yet
1626	friend	assume	562	510	518	however	letter	film
1627	consumer	street	938	50	159	spring	rest	behavior
1628	though	nature	11	859	315	individual	similar	they
1629	goal	environmental	711	74	189	list	represent	long
1630	democratic	no	386	297	523	music	hospital	present
1631	term	matter	293	142	175	mother	property	administration
1632	water	language	955	521	240	old	human	smile
1633	opportunity	marriage	887	830	460	others	behavior	land
1634	maintain	behind	521	200	719	life	civil	himself
1635	space	decade	211	621	386	impact	rich	parent
1636	table	magazine	994	365	676	window	our	consider
1637	road	election	788	46	689	despite	sing	modern
1638	keep	west	91	162	506	plant	one	act
1639	system	personal	361	918	317	color	her	executive
1640	most	teacher	42	710	494	under	around	reality
1641	effort	wait	365	354	356	police	well	like
1642	worker	never	797	557	137	necessary	girl	film
1643	nor	place	425	820	685	voice	position	gas
1644	build	likely	971	246	264	success	if	father
1645	maybe	later	548	923	475	effect	through	add
1646	quite	great	645	454	997	participant	with	call
1647	listen	real	504	721	500	light	our	open
1648	trip	example	28	436	397	cause	well	green
1649	operation	ahead	293	575	706	floor	executive	rest
1650	picture	pass	196	895	606	around	book	PM
1651	peace	late	823	759	715	worry	can	suddenly
1652	help	article	250	659	496	charge	with	step
1653	enough	take	372	456	317	market	south	drop
1654	trial	guy	977	881	60	enjoy	action	name
1655	language	yet	162	140	55	trial	still	above
1656	which	certainly	484	248	875	organization	maintain	subject
1657	mention	focus	846	36	15	address	follow	stage
1658	sing	place	917	470	838	small	newspaper	bring
1659	usually	couple	788	440	249	someone	another	analysis
1660	challenge	site	181	107	249	religious	voice	space
1661	how	pretty	312	236	26	tend	five	recently
1662	down	thus	211	440	944	state	husband	thousand
1663	deep	window	928	508	773	child	pressure	claim
1664	section	doctor	816	966	314	model	decide	year
1665	answer	suffer	647	478	143	feeling	sit	feel
1666	specific	class	321	807	319	into	necessary	rich
1667	poor	red	37	305	202	allow	human	tree
1668	entire	low	476	515	741	better	analysis	opportunity
1669	modern	seem	773	4	321	pretty	institution	imagine
1670	never	thus	114	67	437	gun	plan	worry
1671	enter	them	259	44	144	debate	newspaper	give
1672	information	traditional	384	801	352	reduce	however	pull
1673	stop	focus	929	184	886	candidate	back	leader
1674	international	star	480	861	335	box	respond	media
1675	Mrs	hope	616	235	835	history	return	specific
1676	should	course	167	637	437	employee	such	growth
1677	note	your	113	320	924	push	author	science
1678	trial	determine	628	471	997	such	dream	early
1679	Democrat	defense	604	966	446	radio	there	choice
1680	year	power	655	144	760	almost	various	draw
1681	local	small	32	572	717	focus	real	direction
1682	hair	tree	585	615	552	some	everybody	continue
1683	surface	matter	245	46	921	try	game	difficult
1684	send	listen	424	827	701	everyone	trade	blood
1685	personal	both	264	584	358	world	seek	practice
1686	land	theory	529	375	581	help	argue	daughter
1687	far	pass	185	438	228	activity	rather	threat
1688	nation	use	836	997	647	inside	author	feel
1689	around	ten	674	260	744	it	mouth	before
1690	lose	whatever	68	632	266	relationship	better	nearly
1691	past	both	526	792	35	town	especially	official
1692	society	company	490	946	494	grow	cost	together
1693	art	member	868	95	690	grow	somebody	yeah
1694	believe	expert	52	586	596	else	day	also
1695	animal	play	293	68	569	dinner	black	firm
1696	happen	audience	607	672	174	just	teach	economy
1697	see	analysis	698	737	444	free	sound	various
1698	yeah	human	649	965	727	lose	site	fine
1699	local	all	621	961	797	bag	note	speak
1700	under	no	683	943	989	church	land	why
1701	you	television	906	1	783	along	try	those
1702	choice	worker	52	18	79	admit	detail	explain
1703	any	make	804	371	922	oil	gun	training
1704	stuff	seek	193	938	860	though	this	involve
1705	free	manager	6	838	437	because	when	first
1706	career	nor	252	64	927	store	glass	bank
1707	performance	concern	116	379	384	whose	PM	reduce
1708	left	successful	876	390	536	class	sea	green
1709	bag	evening	763	326	502	build	say	low
1710	raise	nothing	479	241	414	scene	yet	attention
1711	administration	represent	444	869	616	sea	truth	civil
1712	decide	do	20	353	528	natural	country	fact
1713	need	front	238	408	509	place	see	near
1714	under	majority	379	52	863	senior	response	land
1715	summer	gun	418	621	439	force	able	according
1716	until	street	708	149	339	fast	direction	vote
1717	choose	fill	145	504	936	understand	cost	have
1718	chair	agreement	322	773	791	professional	set	friend
1719	in	stuff	907	375	382	knowledge	magazine	game
1720	inside	book	748	83	803	sort	cultural	write
1721	ground	only	135	733	661	thought	difficult	example
1722	sure	through	895	145	51	no	wrong	every
1723	so	series	271	341	42	cold	morning	teacher
1724	save	provide	131	141	246	without	again	wife
1725	relationship	race	987	216	773	evidence	list	case
1726	choose	popular	455	204	419	million	follow	bag
1727	see	our	135	319	804	green	official	crime
1728	measure	method	472	26	588	card	act	now
1729	total	indicate	752	970	642	inside	adult	try
1730	news	edge	33	765	145	one	realize	seem
1731	unit	want	676	299	526	share	must	drop
1732	go	officer	59	920	73	address	bag	night
1733	any	already	750	275	710	baby	again	ask
1734	left	home	573	452	477	lose	what	should
1735	available	rate	579	352	109	produce	professional	board
1736	action	art	235	799	46	by	well	evening
1737	beautiful	money	119	211	184	various	series	a
1738	police	today	772	840	912	everyone	seek	include
1739	quite	week	649	132	847	agreement	authority	serve
1740	machine	simple	576	658	212	task	stuff	question
1741	bag	tree	896	707	602	glass	better	discover
1742	executive	few	703	990	759	might	science	life
1743	may	piece	393	456	368	life	however	beat
1744	left	him	980	617	825	himself	student	sometimes
1745	foot	role	653	500	790	must	apply	thing
1746	boy	degree	256	625	920	manager	detail	house
1747	sort	responsibility	178	519	624	who	player	which
1748	statement	such	70	768	880	nothing	effect	society
1749	history	maybe	89	984	852	matter	until	indicate
1750	care	south	714	832	533	case	quickly	enjoy
1751	understand	carry	870	691	133	visit	church	ask
1752	control	argue	323	82	151	this	others	on
1753	whom	home	177	682	794	over	war	piece
1754	middle	bill	631	548	1	will	attack	occur
1755	structure	several	71	774	553	seven	large	then
1756	politics	thought	944	489	50	customer	ball	Congress
1757	hot	finally	471	466	581	past	thus	total
1758	program	safe	283	365	460	list	affect	speak
1759	impact	back	356	66	180	child	go	amount
1760	common	century	776	588	5	model	law	significant
1761	else	market	199	583	686	exist	for	explain
1762	message	big	967	159	499	you	until	middle
1763	smile	artist	357	537	879	instead	than	coach
1764	great	certainly	611	106	737	feeling	if	huge
1765	store	war	513	936	317	someone	against	nor
1766	position	street	993	308	91	college	tell	design
1767	type	and	586	330	551	since	rate	near
1768	and	evening	590	758	595	voice	interview	note
1769	human	by	451	296	776	push	cover	rule
1770	ago	year	805	805	933	Mr	also	improve
1771	chair	form	604	154	312	special	great	industry
1772	term	onto	937	859	80	eight	general	least
1773	now	quickly	35	582	891	kitchen	civil	research
1774	point	ten	734	134	502	book	such	level
1775	back	give	683	269	979	share	reality	seem
1776	eye	both	592	297	447	concern	church	activity
1777	short	heart	250	400	554	into	yes	decide
1778	purpose	various	412	691	130	try	industry	major
1779	budget	finally	44	699	260	I	occur	try
1780	stand	security	348	83	940	figure	human	bit
1781	group	test	391	107	135	own	attack	challenge
1782	floor	class	995	498	332	often	know	environment
1783	large	within	417	795	84	election	our	name
1784	approach	after	999	37	445	improve	item	dark
1785	common	general	404	580	585	particular	religious	involve
1786	receive	question	632	633	776	be	spring	direction
1787	way	miss	137	879	868	environment	process	record
1788	ready	specific	57	19	985	two	white	issue
1789	dog	everything	452	4	355	although	bed	fill
1790	occur	month	335	997	823	everybody	station	offer
1791	issue	term	716	682	984	along	hotel	situation
1792	strategy	reach	744	452	638	heart	away	first
1793	process	throughout	678	205	942	believe	administration	get
1794	hospital	sit	340	793	969	stuff	science	voice
1795	involve	wait	286	281	166	affect	never	if
1796	anything	so	687	90	785	change	music	however
1797	though	policy	542	634	492	population	home	onto
1798	up	knowledge	98	512	123	dark	artist	green
1799	above	fish	518	559	171	certainly	now	forward
1800	herself	Mrs	714	994	661	your	your	region
\.


--
-- Data for Name: relation_14; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_14 (menclothing_id, fit_type_men) FROM stdin;
1601	house
1602	build
1603	spend
1604	young
1605	heart
1606	several
1607	power
1608	only
1609	visit
1610	low
1611	rise
1612	future
1613	group
1614	cup
1615	she
1616	pretty
1617	plan
1618	consumer
1619	least
1620	group
1621	blood
1622	trip
1623	letter
1624	drug
1625	sister
1626	term
1627	support
1628	environmental
1629	save
1630	from
1631	effort
1632	fish
1633	order
1634	sell
1635	our
1636	myself
1637	thus
1638	class
1639	money
1640	involve
1641	deep
1642	son
1643	author
1644	that
1645	practice
1646	risk
1647	medical
1648	conference
1649	themselves
1650	create
1651	white
1652	certainly
1653	PM
1654	nothing
1655	free
1656	everybody
1657	reflect
1658	again
1659	ground
1660	eye
1661	really
1662	miss
1663	sister
1664	south
1665	employee
1666	sort
1667	way
1668	speak
1669	rock
1670	tough
1671	personal
1672	such
1673	treatment
1674	face
1675	responsibility
1676	not
1677	among
1678	like
1679	least
1680	lawyer
1681	simply
1682	talk
1683	home
1684	room
1685	Mrs
1686	turn
1687	service
1688	society
1689	rule
1690	against
1691	true
1692	modern
1693	spend
1694	early
1695	fact
1696	card
1697	doctor
1698	prove
1699	carry
1700	speak
\.


--
-- Data for Name: relation_15; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_15 (womenclothing_id, fit_type_women) FROM stdin;
1701	community
1702	public
1703	his
1704	nearly
1705	about
1706	forward
1707	require
1708	property
1709	range
1710	professor
1711	second
1712	course
1713	enter
1714	nothing
1715	visit
1716	exist
1717	approach
1718	role
1719	such
1720	economy
1721	light
1722	hot
1723	president
1724	safe
1725	third
1726	drive
1727	land
1728	show
1729	pull
1730	just
1731	ability
1732	increase
1733	involve
1734	type
1735	or
1736	professor
1737	door
1738	seat
1739	that
1740	responsibility
1741	will
1742	throw
1743	source
1744	consider
1745	wife
1746	subject
1747	movement
1748	network
1749	pay
1750	trade
1751	great
1752	more
1753	throughout
1754	whatever
1755	it
1756	security
1757	itself
1758	station
1759	guess
1760	difficult
1761	no
1762	perhaps
1763	national
1764	seem
1765	city
1766	place
1767	ball
1768	close
1769	line
1770	share
1771	soon
1772	edge
1773	buy
1774	guess
1775	hard
1776	raise
1777	myself
1778	prove
1779	office
1780	property
1781	page
1782	step
1783	issue
1784	size
1785	than
1786	kind
1787	music
1788	option
1789	order
1790	resource
1791	easy
1792	loss
1793	space
1794	media
1795	citizen
1796	candidate
1797	bill
1798	true
1799	rate
1800	hope
\.


--
-- Data for Name: relation_16; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_16 (media_id, format) FROM stdin;
1901	head
1902	hot
1903	article
1904	environment
1905	wear
1906	good
1907	more
1908	carry
1909	factor
1910	discover
1911	speak
1912	key
1913	similar
1914	likely
1915	home
1916	large
1917	north
1918	thank
1919	contain
1920	real
1921	drug
1922	local
1923	from
1924	focus
1925	leave
1926	movie
1927	you
1928	sea
1929	state
1930	have
1931	image
1932	first
1933	strong
1934	study
1935	site
1936	half
1937	relationship
1938	professional
1939	help
1940	teacher
1941	number
1942	food
1943	other
1944	mouth
1945	bit
1946	modern
1947	whole
1948	similar
1949	human
1950	shoulder
1951	international
1952	bed
1953	pay
1954	story
1955	million
1956	traditional
1957	than
1958	rate
1959	room
1960	specific
1961	walk
1962	eye
1963	point
1964	official
1965	style
1966	energy
1967	loss
1968	thought
1969	down
1970	last
1971	son
1972	hear
1973	bag
1974	likely
1975	gun
1976	company
1977	condition
1978	water
1979	drive
1980	ball
1981	hotel
1982	have
1983	against
1984	want
1985	close
1986	identify
1987	sometimes
1988	here
1989	buy
1990	ok
1991	main
1992	fund
1993	together
1994	question
1995	street
1996	economy
1997	improve
1998	safe
1999	anything
2000	on
\.


--
-- Data for Name: relation_17; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_17 (software_id, license_type) FROM stdin;
2001	cup
2002	pass
2003	mention
2004	ever
2005	before
2006	five
2007	sell
2008	success
2009	view
2010	ready
2011	growth
2012	region
2013	close
2014	civil
2015	still
2016	concern
2017	grow
2018	experience
2019	remember
2020	near
2021	during
2022	exactly
2023	total
2024	save
2025	protect
2026	strong
2027	inside
2028	Democrat
2029	paper
2030	current
2031	important
2032	send
2033	own
2034	least
2035	great
2036	risk
2037	realize
2038	degree
2039	this
2040	sister
2041	trade
2042	sea
2043	behavior
2044	change
2045	month
2046	history
2047	let
2048	occur
2049	less
2050	loss
2051	something
2052	value
2053	life
2054	consider
2055	after
2056	energy
2057	Democrat
2058	how
2059	than
2060	for
2061	shoulder
2062	address
2063	return
2064	artist
2065	price
2066	energy
2067	dinner
2068	generation
2069	modern
2070	identify
2071	into
2072	laugh
2073	sign
2074	high
2075	beat
2076	mean
2077	quality
2078	blood
2079	friend
2080	if
2081	almost
2082	doctor
2083	physical
2084	necessary
2085	past
2086	model
2087	how
2088	share
2089	possible
2090	single
2091	actually
2092	through
2093	recently
2094	hit
2095	term
2096	official
2097	arrive
2098	pick
2099	investment
2100	relate
\.


--
-- Data for Name: relation_18; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_18 (user_id, email, password_hash) FROM stdin;
1	skinnergina@example.net	worker
2	zduarte@example.com	beat
3	simssamantha@example.net	condition
4	amanda96@example.net	argue
5	anthonyjones@example.org	political
6	erichardson@example.com	all
7	samantharush@example.org	too
8	justin17@example.org	case
9	wknapp@example.org	arm
10	carla36@example.org	result
11	kristen39@example.org	property
12	gibsonkeith@example.com	fear
13	moranchristopher@example.org	job
14	lhanson@example.com	wife
15	lisawoodard@example.com	there
16	valerie50@example.org	night
17	brianawarren@example.org	six
18	marilyn13@example.org	trade
19	jody80@example.com	pass
20	dawn90@example.org	take
21	victoria58@example.com	view
22	dylan83@example.org	through
23	benjamin89@example.com	common
24	kelly34@example.net	thus
25	tracivaughn@example.com	process
26	robert83@example.net	pattern
27	melissa52@example.org	Congress
28	david59@example.com	apply
29	perezdanielle@example.org	reach
30	qmartinez@example.net	human
31	emma86@example.net	data
32	cstone@example.net	strategy
33	banderson@example.com	best
34	obryan@example.com	action
35	combseddie@example.org	real
36	leemichelle@example.com	dog
37	bensonjennifer@example.net	big
38	phyllisthomas@example.net	no
39	howardbrian@example.org	hold
40	ashleywhite@example.com	thought
41	kaylasullivan@example.com	season
42	qmorris@example.net	term
43	brittanybell@example.com	five
44	susan58@example.com	opportunity
45	byrdandrea@example.com	song
46	parrishkathleen@example.org	standard
47	hollandjames@example.com	official
48	williamsjames@example.net	field
49	vjohnson@example.org	bag
50	pjones@example.org	main
51	pnorman@example.com	bar
52	logan94@example.net	near
53	xrobertson@example.org	figure
54	gibbsanna@example.com	wife
55	amycruz@example.net	hospital
56	stacey41@example.com	him
57	campbelljeffery@example.org	for
58	uhernandez@example.net	nation
59	yjones@example.com	add
60	gregorymills@example.com	require
61	karenbyrd@example.net	security
62	hhumphrey@example.net	candidate
63	melindacampbell@example.net	always
64	josephwagner@example.org	structure
65	vjennings@example.net	education
66	johngeorge@example.net	remember
67	qneal@example.net	yet
68	david07@example.com	letter
69	vaughnbrian@example.com	religious
70	victoriaoliver@example.com	beautiful
71	robintorres@example.net	military
72	brian64@example.org	both
73	dlopez@example.net	fund
74	fbrandt@example.org	good
75	matthewmoore@example.org	material
76	hannah72@example.com	wonder
77	olee@example.net	color
78	swilliams@example.net	task
79	colemancheryl@example.com	simply
80	crystalgonzalez@example.com	list
81	creynolds@example.org	everyone
82	vdavis@example.org	girl
83	rebeccaharris@example.com	activity
84	xpittman@example.org	beat
85	omiller@example.org	national
86	megan94@example.org	him
87	darrell65@example.org	success
88	sullivankimberly@example.net	require
89	laura05@example.net	really
90	gloverkathleen@example.com	job
91	rachel38@example.org	bed
92	reedsheryl@example.org	significant
93	manuel98@example.net	actually
94	ibarnes@example.com	professional
95	lsmith@example.com	her
96	qbrown@example.net	edge
97	nicole56@example.com	life
98	nicholas27@example.org	front
99	ojohnson@example.org	wife
100	ryanrose@example.com	fund
101	moorechristopher@example.net	involve
102	rachel84@example.org	pull
103	tdavis@example.org	amount
104	steven84@example.com	and
105	jboyle@example.org	region
106	jesus04@example.org	woman
107	lisaconway@example.org	difficult
108	belleric@example.net	wrong
109	ebowman@example.net	happen
110	ustuart@example.com	since
111	donnadodson@example.net	not
112	thompsonchristopher@example.org	each
113	alisha53@example.net	evening
114	denisemaldonado@example.org	hotel
115	hollowaymatthew@example.org	history
116	marcuscollins@example.com	that
117	mathewyates@example.net	million
118	amy12@example.org	need
119	monroejesse@example.com	debate
120	gwells@example.com	how
121	michelle70@example.net	detail
122	andrea01@example.com	first
123	mark11@example.org	information
124	smithaustin@example.net	new
125	robertcardenas@example.net	about
126	mhoward@example.org	hold
127	underwoodcatherine@example.com	type
128	rodriguezjames@example.net	accept
129	francojoyce@example.net	onto
130	morrisrichard@example.com	always
131	kvillarreal@example.com	drive
132	jonesjudith@example.org	hospital
133	crystalgarcia@example.net	experience
134	zwoods@example.net	present
135	flemingcatherine@example.com	third
136	fmorales@example.net	thank
137	elizabethhenderson@example.com	decade
138	fcarter@example.net	whatever
139	nathanreed@example.net	suddenly
140	jennifer92@example.com	range
141	narcher@example.com	none
142	christine02@example.net	however
143	xtaylor@example.net	close
144	gibsonjohnny@example.net	partner
145	anthony64@example.net	want
146	lmiller@example.org	card
147	johnnybrennan@example.com	everybody
148	guerrerokatherine@example.com	forget
149	lalexander@example.com	happen
150	acostasean@example.org	vote
151	merrittandrea@example.com	big
152	jasonsexton@example.com	two
153	jeffersonfrank@example.net	concern
154	alejandra16@example.org	sister
155	rebecca45@example.net	dog
156	joseph96@example.net	blood
157	emcpherson@example.com	recent
158	tflores@example.com	their
159	ggomez@example.net	tax
160	johnsonalexander@example.org	prove
161	nicholas82@example.net	leg
162	kgeorge@example.org	maybe
163	zking@example.net	scene
164	williamsmelissa@example.org	today
165	dustinwatkins@example.org	study
166	taylor86@example.org	number
167	gbeltran@example.com	account
168	hdorsey@example.com	hope
169	lukebartlett@example.net	style
170	javierroman@example.com	media
171	kimberly48@example.org	up
172	jacobsashley@example.org	environment
173	taylorgloria@example.net	will
174	jennifer14@example.com	not
175	robert31@example.org	state
176	daniellegutierrez@example.org	provide
177	iharrington@example.com	hold
178	robertpatterson@example.org	wrong
179	allenjames@example.org	company
180	lisa28@example.net	want
181	xcastillo@example.org	dinner
182	mark63@example.org	oil
183	karen43@example.org	skill
184	joseph28@example.net	either
185	erinwilliams@example.net	chair
186	wilsonclaire@example.com	science
187	uvalencia@example.net	consumer
188	kristina82@example.net	begin
189	thomasgarcia@example.org	image
190	qescobar@example.org	old
191	gillespiechad@example.org	issue
192	emilygamble@example.com	international
193	kmoody@example.org	month
194	ewilliams@example.net	character
195	amber83@example.com	my
196	imoyer@example.net	ahead
197	pgamble@example.net	air
198	randallgray@example.net	popular
199	sandersbrittany@example.net	bit
200	ywebb@example.net	budget
201	deniserobinson@example.com	business
202	oscarturner@example.org	girl
203	ronald58@example.net	popular
204	katherine70@example.org	least
205	theodorenorman@example.com	gas
206	conradmaria@example.org	owner
207	michaelchambers@example.org	ground
208	operez@example.com	may
209	emason@example.com	including
210	doris03@example.net	society
211	codylin@example.com	Mrs
212	jeffreyhernandez@example.net	summer
213	gregorymelton@example.com	American
214	juliabarnett@example.org	summer
215	valenzuelamelissa@example.net	experience
216	jill30@example.com	likely
217	lori28@example.com	never
218	richardsontim@example.com	size
219	lauren39@example.com	public
220	smithmolly@example.org	today
221	arthurortega@example.org	write
222	donaldbrown@example.com	reflect
223	marymann@example.org	you
224	jmiles@example.org	defense
225	ljackson@example.net	cold
226	malikjohnson@example.net	many
227	haneyryan@example.com	boy
228	ywillis@example.org	bag
229	howardjenny@example.org	right
230	stephanie64@example.org	there
231	pedro80@example.org	there
232	wendysullivan@example.org	sense
233	loriramirez@example.com	record
234	evansdanielle@example.com	peace
235	nmonroe@example.net	play
236	timothy03@example.com	social
237	wporter@example.net	common
238	cummingslaura@example.net	turn
239	catherine93@example.com	stage
240	knightglenn@example.net	east
241	bridgescindy@example.com	entire
242	angela37@example.net	security
243	vsmith@example.com	spend
244	susandavid@example.net	account
245	nguyenryan@example.com	test
246	michael22@example.com	half
247	hollandhannah@example.net	bill
248	clinetyler@example.com	foot
249	braysusan@example.org	develop
250	marywilliams@example.net	trade
251	jenningsdonna@example.com	stand
252	lloydteresa@example.net	environmental
253	cranejerry@example.com	herself
254	michaeldixon@example.org	business
255	christophergarcia@example.com	want
256	barbararodriguez@example.org	worry
257	dana55@example.org	live
258	llewis@example.com	process
259	rebeccajohnson@example.net	ability
260	mendozadylan@example.com	former
261	dclark@example.net	executive
262	patelmakayla@example.net	often
263	graydesiree@example.com	people
264	kerry25@example.org	few
265	bradleywagner@example.org	computer
266	griffithedward@example.org	give
267	noblerachel@example.org	up
268	lutznicholas@example.org	difficult
269	sandrahamilton@example.net	baby
270	james55@example.net	cold
271	gregory42@example.net	wear
272	james28@example.com	road
273	amy29@example.net	win
274	chadlewis@example.org	add
275	sydneymurphy@example.net	office
276	markhernandez@example.org	wall
277	autumnstewart@example.org	attack
278	garciaandrea@example.net	couple
279	brenda67@example.com	significant
280	manuelcervantes@example.org	usually
281	benjamin64@example.net	should
282	thomasanthony@example.com	collection
283	robertphillips@example.net	tough
284	ymcconnell@example.com	year
285	sheltonnicholas@example.net	minute
286	ballardelizabeth@example.com	much
287	lindasmith@example.net	evidence
288	maryellison@example.com	moment
289	imills@example.net	least
290	michael17@example.com	hold
291	christythompson@example.com	past
292	ryan73@example.org	major
293	kevin46@example.org	wall
294	gmartin@example.org	western
295	hallcody@example.org	rate
296	william26@example.net	important
297	ashley68@example.com	research
298	brandon32@example.com	begin
299	tannerthompson@example.net	ten
300	alanjones@example.net	growth
301	stephanieramirez@example.org	mother
302	ylarson@example.com	interest
303	jordan54@example.org	her
304	stacie18@example.com	short
305	amber66@example.org	outside
306	morgananthony@example.com	current
307	crystalmccormick@example.net	decision
308	vgardner@example.net	measure
309	lmontgomery@example.net	man
310	meaganguzman@example.com	black
311	wbishop@example.com	military
312	nwilliams@example.org	audience
313	orrtony@example.org	benefit
314	tranhannah@example.org	speech
315	wjohnson@example.org	father
316	lauren30@example.org	cover
317	pschultz@example.com	treat
318	bautistajoseph@example.com	its
319	garciaanthony@example.org	former
320	obrienbrooke@example.com	adult
321	aaron38@example.net	spend
322	stephanieharris@example.net	on
323	chapmandaniel@example.com	coach
324	seanduran@example.net	watch
325	john81@example.net	character
326	cookandrew@example.net	environmental
327	caitlinwatts@example.org	bit
328	bhall@example.com	international
329	kathleen44@example.org	deal
330	scottwilson@example.com	rather
331	egonzales@example.org	employee
332	nancy51@example.org	walk
333	jordancorey@example.com	very
334	hannah31@example.com	poor
335	hamiltonmarc@example.com	onto
336	andrewstevenson@example.com	improve
337	markwood@example.org	mother
338	evannovak@example.net	much
339	elizabeth37@example.org	sit
340	twood@example.net	in
341	matthew45@example.net	send
342	mbrown@example.com	none
343	petersonkathryn@example.com	produce
344	russellshannon@example.com	choose
345	bautistaanthony@example.com	game
346	glendasmith@example.com	throughout
347	hvillegas@example.org	somebody
348	fjohnson@example.com	effort
349	vgriffin@example.org	include
350	josephmartinez@example.com	might
351	hayescheryl@example.org	whatever
352	hsnyder@example.org	decide
353	mooreashley@example.org	cause
354	adamcarter@example.com	economic
355	kelsey75@example.org	debate
356	washingtontiffany@example.com	city
357	charlene74@example.com	these
358	sdunlap@example.com	table
359	gregoryrobbins@example.net	exactly
360	mirandasara@example.net	affect
361	shannonwolfe@example.net	there
362	ashleycoleman@example.org	night
363	stephanie45@example.org	later
364	victoria14@example.net	behavior
365	ritaquinn@example.org	station
366	steelekatherine@example.org	everything
367	vwashington@example.net	campaign
368	arogers@example.com	win
369	richardthomas@example.com	recently
370	anthonydavis@example.net	hope
371	gilbertcarter@example.com	people
372	dtran@example.org	adult
373	hernandezlisa@example.org	father
374	martinabigail@example.org	need
375	benjaminyork@example.net	usually
376	bwalters@example.org	role
377	jason45@example.com	lead
378	laurielong@example.org	believe
379	megan66@example.org	exist
380	sandralove@example.org	join
381	dmartinez@example.net	voice
382	danielle66@example.net	ahead
383	robertlong@example.org	data
384	wilsonmike@example.net	hundred
385	richardsdavid@example.net	huge
386	keith91@example.org	eye
387	adamsbrandon@example.org	bring
388	parksmichael@example.com	prepare
389	alexanderdavid@example.org	heart
390	juan70@example.com	wall
391	edwinolson@example.com	worry
392	philip63@example.org	knowledge
393	ewood@example.net	seem
394	zachary79@example.org	rate
395	ohays@example.org	those
396	tinabond@example.com	president
397	mariehill@example.net	behavior
398	fspencer@example.net	weight
399	robertjordan@example.org	boy
400	terry19@example.com	they
\.


--
-- Data for Name: relation_19; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_19 (user_id, mv_user) FROM stdin;
1	office
1	here
2	level
2	police
2	support
2	oil
3	early
3	method
3	entire
4	bed
4	six
5	development
5	project
5	record
6	best
7	government
8	role
9	along
9	training
10	quality
10	morning
10	soon
10	me
11	why
11	protect
11	mind
11	no
12	important
13	economy
13	amount
13	year
13	list
14	name
15	act
15	resource
16	accept
17	economy
17	may
17	area
18	list
19	great
19	black
19	prevent
19	ever
20	follow
20	cover
21	southern
21	let
22	operation
22	piece
23	throw
23	lay
24	glass
24	more
24	trial
24	authority
25	guy
25	century
26	full
26	stop
27	market
27	collection
28	risk
28	design
28	campaign
29	their
30	might
30	account
30	sometimes
31	one
32	become
32	writer
32	draw
32	player
33	game
33	rate
33	board
33	alone
34	charge
35	couple
36	part
36	second
36	prepare
36	example
37	bring
37	adult
38	song
38	good
38	financial
38	special
39	them
39	action
39	energy
40	drive
41	for
42	could
43	soldier
43	today
44	with
44	if
45	you
45	keep
45	we
46	plant
47	cut
47	list
47	mind
48	wall
48	professor
49	movement
50	memory
51	along
51	miss
51	others
51	method
52	fund
52	main
53	early
53	continue
53	energy
54	station
55	measure
56	compare
56	give
56	nice
57	western
57	talk
58	determine
58	job
59	hour
59	goal
60	education
60	president
60	interview
61	ever
61	science
61	appear
61	our
62	red
62	area
62	hotel
63	effect
64	over
65	set
65	meet
65	hit
66	get
66	culture
67	provide
68	tax
68	reason
68	tough
69	task
69	seek
69	hold
70	but
70	project
71	end
72	building
72	his
72	because
72	activity
73	per
73	enter
74	build
74	meeting
74	character
75	light
75	like
75	reach
76	process
76	how
76	part
76	ability
77	others
77	western
77	window
77	career
78	one
78	star
78	source
78	night
79	face
79	per
79	change
80	form
80	floor
80	wrong
80	box
81	strategy
82	including
83	majority
84	also
84	movie
85	during
85	concern
85	someone
86	rather
86	significant
87	would
88	worry
89	child
89	wish
89	hour
90	matter
90	expect
91	play
91	American
91	too
91	tend
92	into
92	sort
92	argue
92	series
93	rate
94	return
95	process
95	one
95	Mr
95	always
96	office
96	official
96	too
97	black
97	lay
97	however
98	if
99	understand
100	capital
100	people
100	choice
101	throw
101	deal
102	successful
102	finally
102	same
102	television
103	total
103	anyone
104	firm
104	action
104	want
104	mention
105	herself
105	none
106	who
106	expert
107	least
107	cultural
108	answer
109	head
109	travel
110	yourself
110	assume
110	chair
111	citizen
111	woman
111	body
111	in
112	see
112	serve
112	young
112	answer
113	upon
113	environment
113	newspaper
113	record
114	program
115	medical
115	dream
116	grow
117	market
117	a
117	save
117	present
118	by
118	offer
118	future
118	bank
119	across
119	yourself
120	population
120	man
120	relate
120	near
121	information
121	theory
121	good
121	American
122	start
122	inside
122	pretty
123	us
123	worry
123	job
123	toward
124	meeting
124	despite
125	region
125	challenge
125	field
126	night
127	source
127	develop
128	believe
128	training
128	shake
129	season
129	trouble
129	cell
129	until
130	level
131	ok
131	black
132	official
133	consumer
133	expect
133	general
134	conference
135	report
136	popular
136	face
137	morning
137	character
137	sit
138	never
138	just
138	citizen
139	voice
139	break
139	eye
139	population
140	yard
140	establish
141	six
142	pattern
142	military
143	news
143	but
143	people
144	program
144	crime
144	painting
144	day
145	according
145	ground
145	off
145	but
146	into
146	hotel
146	take
146	end
147	local
147	western
147	them
148	stage
148	second
149	situation
149	off
149	let
150	admit
150	send
150	ever
150	order
151	Mr
151	address
151	it
151	traditional
152	claim
153	technology
153	stage
153	community
153	particularly
154	music
154	challenge
154	turn
154	simply
155	fly
155	control
156	could
157	defense
157	main
158	field
158	policy
158	American
159	relate
159	physical
160	determine
160	force
160	do
161	central
161	wrong
161	service
162	whatever
162	seem
162	western
163	deal
163	result
163	since
164	according
164	section
165	stand
166	challenge
167	end
168	mother
168	sort
168	every
168	card
169	show
169	smile
169	parent
169	over
170	little
170	usually
170	fly
170	case
171	must
172	price
172	feel
173	close
173	full
173	town
174	enough
175	scene
175	explain
176	member
176	so
177	about
177	should
178	report
178	left
178	hour
178	buy
179	leader
179	officer
179	since
179	worry
180	answer
180	which
180	physical
181	action
181	language
182	environment
182	choose
182	teach
183	open
184	stock
184	surface
184	throw
184	traditional
185	my
186	start
187	suddenly
188	dream
188	listen
188	walk
188	always
189	somebody
190	together
190	bar
190	medical
190	blood
191	month
191	budget
191	concern
191	crime
192	policy
193	group
193	letter
193	popular
194	daughter
195	miss
195	sort
195	them
196	quality
197	first
197	would
198	key
199	military
199	great
199	down
199	area
200	couple
200	recently
200	civil
200	my
201	relate
202	almost
203	too
203	size
204	administration
205	father
206	finish
206	sense
206	have
207	rise
207	practice
208	eye
208	director
209	one
210	player
211	travel
211	put
211	cover
212	test
212	light
213	charge
214	less
215	able
216	test
216	year
217	writer
217	all
217	training
218	many
218	understand
218	believe
219	activity
219	energy
219	phone
220	thought
221	sign
221	front
221	against
222	operation
222	cultural
222	democratic
223	past
223	arrive
224	adult
224	spring
225	on
225	themselves
225	out
226	official
227	hair
227	office
227	manager
227	upon
228	sing
228	add
228	town
229	figure
229	president
229	know
230	if
230	media
231	top
231	company
231	media
231	town
232	industry
232	loss
232	forward
233	throughout
233	so
234	manage
234	good
234	detail
234	improve
235	loss
235	agent
236	everyone
236	staff
236	girl
236	theory
237	price
237	hear
238	fine
239	evening
239	wonder
240	eat
240	there
240	above
241	feeling
241	service
242	front
242	owner
243	vote
243	lot
244	approach
244	eight
245	seven
245	true
246	own
246	put
246	effect
247	likely
247	international
248	contain
249	follow
249	rest
250	decade
250	place
251	catch
252	either
252	political
252	group
253	table
253	hear
254	black
254	strategy
254	tonight
254	magazine
255	story
256	bit
257	check
257	man
257	less
258	democratic
259	mention
259	despite
259	challenge
260	buy
260	consider
261	far
261	room
262	challenge
262	physical
262	after
263	like
263	east
263	north
263	tree
264	set
265	carry
265	she
265	employee
266	detail
266	know
266	return
266	news
267	story
268	home
268	accept
269	religious
270	could
270	run
271	do
271	establish
271	read
272	thank
272	newspaper
272	feeling
272	year
273	growth
274	nice
275	carry
275	race
275	and
275	bag
276	player
277	site
277	common
277	day
277	ten
278	serve
279	foot
279	special
280	next
280	own
281	central
282	though
283	war
283	send
284	sport
284	keep
284	return
285	money
286	second
286	rock
287	expect
287	particularly
288	director
288	economy
288	body
289	fast
289	hit
290	attention
290	anything
291	school
291	worry
291	lead
291	then
292	wonder
292	improve
292	capital
293	economy
293	power
294	environment
295	society
295	available
295	would
296	deal
296	win
296	perhaps
296	drop
297	ok
297	current
297	smile
297	worry
298	middle
298	reduce
298	one
298	suffer
299	second
299	they
299	American
299	raise
300	begin
300	small
300	line
300	natural
301	religious
302	rock
302	charge
302	whom
302	little
303	budget
304	everybody
304	center
304	door
304	here
305	door
306	deal
307	box
307	five
308	significant
308	hope
308	authority
309	study
310	speech
310	attorney
310	body
310	series
311	wrong
311	account
311	himself
311	feeling
312	effort
312	wait
312	early
312	executive
313	carry
314	check
314	American
314	degree
314	environment
315	artist
315	significant
315	community
316	increase
316	explain
316	painting
316	he
317	moment
317	power
317	shake
318	on
552	one
318	figure
319	politics
320	debate
321	term
321	hope
321	go
322	voice
322	major
323	ability
323	view
323	house
324	owner
324	mention
324	candidate
325	door
325	provide
325	simply
326	section
326	laugh
327	race
327	effort
328	actually
329	beyond
330	head
330	issue
330	letter
330	leave
331	body
331	head
332	late
332	doctor
332	behavior
332	see
333	likely
333	hand
334	account
334	black
334	number
335	realize
335	left
335	know
336	room
336	present
337	think
337	test
338	benefit
338	myself
338	dream
338	weight
339	play
339	dinner
339	realize
340	certain
340	our
341	herself
341	affect
341	cut
342	investment
342	number
342	month
342	expert
343	third
343	beautiful
344	especially
344	rest
345	treat
345	voice
346	glass
346	little
347	for
348	scientist
349	require
349	without
349	heavy
349	follow
350	conference
351	reduce
351	time
351	west
352	stuff
352	listen
352	probably
353	result
353	present
353	race
353	start
354	away
355	choose
355	year
355	bit
355	probably
356	along
356	owner
357	number
357	leg
358	evidence
358	drug
358	federal
359	role
360	hotel
360	sign
360	day
361	this
361	have
362	want
362	follow
362	take
363	sort
364	over
364	collection
365	body
365	most
366	computer
367	suggest
367	language
367	protect
367	likely
368	chair
368	all
368	others
369	before
369	company
369	myself
369	religious
370	brother
370	finally
370	cover
371	place
371	test
371	live
372	want
373	ball
373	executive
374	article
375	rock
375	network
376	bed
376	road
376	kitchen
377	evening
378	skill
379	certainly
380	point
380	pay
381	black
381	interest
382	animal
382	wide
383	million
383	improve
383	increase
384	argue
384	past
384	serious
385	be
385	discover
385	easy
385	dark
386	because
387	experience
387	box
388	magazine
388	staff
388	place
388	school
389	against
389	student
389	industry
390	either
390	trial
391	opportunity
391	thought
391	finally
391	week
392	TV
393	day
393	house
393	wife
394	film
394	mouth
394	magazine
395	say
395	let
395	personal
395	thought
396	across
396	woman
396	garden
396	their
397	cold
397	west
397	share
398	price
398	current
398	least
398	western
399	continue
400	carry
400	consider
401	unit
401	set
402	or
402	place
402	letter
403	story
403	security
404	believe
404	describe
404	which
405	concern
405	street
405	style
405	add
406	as
407	cultural
407	daughter
408	talk
408	meet
408	watch
408	report
409	wish
410	dark
410	situation
410	hour
411	trip
411	actually
411	new
412	there
412	try
412	all
413	series
414	set
414	prepare
414	court
414	offer
415	eat
416	only
417	base
417	environmental
418	of
418	water
418	near
418	beautiful
419	pass
419	concern
420	laugh
420	lead
420	term
420	clear
421	mean
421	idea
421	girl
422	investment
422	short
422	become
423	agency
423	base
423	newspaper
423	affect
424	political
424	despite
424	poor
425	event
425	their
425	model
426	future
426	certain
427	group
427	race
427	image
427	outside
428	international
428	other
428	song
428	whose
429	rise
429	them
429	language
429	type
430	instead
430	include
431	into
431	station
432	possible
432	stage
432	specific
432	seem
433	student
433	recently
433	middle
433	spring
434	call
435	shoulder
435	with
435	mouth
435	nor
436	might
437	positive
438	behind
438	hotel
439	glass
439	Democrat
439	all
440	win
440	maintain
441	give
442	enter
443	keep
443	audience
443	light
443	consider
444	everyone
444	long
445	nothing
446	yard
446	boy
447	plant
447	task
447	provide
448	however
449	involve
449	whole
449	how
450	she
450	none
451	suffer
451	hotel
452	choose
452	week
452	customer
452	use
453	skill
454	check
454	author
455	owner
455	education
455	key
456	majority
457	dinner
457	our
458	sit
459	everybody
460	seat
460	various
461	show
461	different
462	both
462	town
462	they
463	inside
463	weight
464	special
464	wear
465	lay
465	pay
465	office
465	interest
466	at
467	camera
468	activity
468	receive
468	concern
469	probably
470	less
470	people
471	light
472	mind
472	visit
472	many
472	speak
473	special
473	admit
473	soldier
473	fast
474	successful
475	suddenly
475	might
476	country
476	skill
476	open
477	option
478	tough
478	edge
478	possible
478	office
479	most
479	water
479	player
480	full
480	oil
481	Republican
481	benefit
482	week
482	city
482	explain
483	less
484	business
484	season
484	across
485	structure
485	crime
485	test
486	condition
486	where
487	likely
488	class
489	respond
489	perhaps
489	rule
490	wrong
490	affect
491	world
491	computer
492	defense
492	example
493	make
493	rest
494	money
494	development
494	with
494	quality
495	front
495	manager
495	trouble
496	scene
496	compare
496	plan
496	five
497	mention
497	thank
497	past
497	page
498	adult
499	official
499	know
499	ever
500	pull
501	cover
501	cut
501	thank
501	job
502	physical
502	find
502	water
503	modern
503	as
503	toward
503	friend
504	beautiful
505	series
506	son
506	identify
506	around
507	present
507	country
507	born
507	college
508	say
509	although
509	walk
510	officer
510	avoid
511	card
512	deep
512	pull
512	pass
512	forget
513	yeah
514	throughout
514	stand
515	eye
516	no
516	job
516	science
517	recently
517	since
517	poor
518	born
519	garden
520	new
520	serious
520	idea
521	pass
521	true
521	lose
522	up
522	read
523	others
523	right
524	wear
524	and
525	very
525	history
525	officer
525	wall
526	any
527	hair
527	other
527	true
527	perhaps
528	under
528	employee
528	half
528	the
529	somebody
530	himself
531	including
531	age
531	time
532	building
532	medical
532	sound
532	allow
533	loss
533	age
533	budget
534	eye
534	reach
534	need
534	bring
535	system
536	college
536	shake
536	some
536	movement
537	feel
537	talk
537	onto
538	perform
538	system
538	often
538	art
539	catch
540	left
540	they
541	enjoy
541	table
541	identify
542	sit
542	people
542	cause
543	author
543	evidence
544	rock
545	visit
545	fire
546	hair
546	serve
546	card
547	almost
547	industry
547	according
547	left
548	that
548	task
548	out
549	news
549	car
549	executive
550	finish
550	anything
550	reflect
551	might
551	positive
551	boy
551	realize
552	blood
553	recent
553	official
554	consider
554	performance
554	expect
554	table
555	street
555	or
556	hour
557	drive
558	give
558	third
559	seem
560	quickly
561	bar
562	energy
562	he
562	friend
562	college
563	fire
564	be
564	simply
565	cost
565	some
565	generation
566	court
566	senior
567	specific
567	she
568	forward
568	week
568	day
568	hot
569	pull
570	require
570	politics
570	city
570	community
571	garden
572	bad
573	age
573	reality
573	toward
573	skill
574	finish
574	way
574	share
575	participant
575	walk
575	teacher
575	institution
576	day
576	last
577	drop
577	series
577	civil
578	number
578	important
579	wait
579	home
580	nature
580	paper
580	food
580	learn
581	respond
581	father
581	list
582	happen
582	hope
583	hope
584	specific
584	process
584	thus
585	out
585	man
585	role
585	behavior
586	wife
586	school
587	act
587	can
587	budget
587	plan
588	fine
588	me
589	save
589	glass
589	knowledge
590	fact
591	course
591	guess
592	use
592	weight
593	war
593	like
593	which
593	dream
594	simple
594	sense
595	part
596	often
596	phone
596	rather
596	show
597	gas
597	program
597	discussion
598	outside
598	knowledge
598	short
598	great
599	no
599	physical
599	off
599	say
600	especially
600	performance
601	campaign
601	course
602	thank
603	treat
604	blood
604	black
605	since
605	dinner
605	white
605	same
606	change
606	environment
607	model
607	identify
607	data
607	interest
608	question
608	summer
608	point
609	even
609	put
609	poor
609	southern
610	if
611	soon
612	fire
613	middle
613	throughout
613	stop
614	out
614	past
615	now
615	trial
616	high
616	common
616	truth
616	society
617	exist
617	daughter
617	clear
618	street
618	nice
618	price
618	bag
619	but
619	prepare
619	than
620	speak
620	evening
621	hotel
621	than
621	none
621	your
622	city
622	century
622	democratic
622	minute
623	six
624	alone
625	president
625	shake
626	degree
626	executive
626	case
627	many
627	present
627	war
627	look
628	there
628	set
628	half
629	thought
629	really
629	language
629	civil
630	know
630	break
630	main
631	read
631	population
631	add
631	support
632	top
632	event
632	there
632	a
633	mother
633	model
634	agree
634	light
635	pressure
635	worker
635	fund
635	growth
636	media
636	learn
636	follow
637	TV
637	mean
637	rule
638	participant
638	political
638	course
639	cut
639	specific
639	PM
639	alone
640	most
641	always
641	term
641	movie
642	score
643	here
643	ok
643	fact
644	speech
645	personal
645	meeting
646	chair
646	practice
646	whatever
647	charge
647	debate
648	safe
648	establish
648	stuff
649	word
649	pull
649	fall
649	art
650	true
650	determine
651	might
651	customer
651	gun
651	coach
652	base
652	card
652	each
653	something
653	day
653	where
654	identify
655	second
655	his
656	action
656	read
657	before
657	line
657	something
658	senior
658	admit
658	consumer
658	full
659	note
659	majority
659	movie
659	consider
660	middle
660	movement
661	I
662	should
662	bill
662	agree
663	course
664	reveal
664	court
664	official
664	country
665	herself
665	series
666	million
666	country
666	develop
666	look
667	mouth
667	toward
667	feel
668	offer
668	allow
668	head
668	many
669	new
669	evidence
669	parent
670	wall
671	production
671	couple
672	difficult
672	money
672	information
672	month
673	age
674	professional
675	build
676	just
676	series
677	most
677	story
678	short
679	think
679	security
679	on
679	behavior
680	talk
680	direction
680	friend
681	rich
681	make
682	north
682	matter
683	population
684	shoulder
685	ok
685	because
685	available
686	its
686	science
686	forward
687	kid
688	stock
688	doctor
689	attorney
689	blood
689	care
690	might
690	particularly
690	behavior
690	kid
691	rich
691	risk
691	away
691	Congress
692	ago
692	growth
692	cost
693	still
694	sport
694	hand
694	such
695	charge
696	talk
696	line
696	right
696	for
697	whom
697	century
698	woman
698	trial
699	skin
699	cut
700	question
700	run
700	mention
701	including
701	which
701	market
701	road
702	part
702	example
702	student
703	all
703	unit
703	possible
704	no
705	throughout
705	popular
705	near
706	financial
706	live
707	worker
707	long
708	top
708	fire
709	father
709	number
709	professional
709	response
710	listen
710	evidence
710	business
711	some
711	stage
711	fight
711	might
712	drug
712	interest
712	begin
712	truth
713	program
713	themselves
714	professional
714	should
715	technology
715	social
715	late
715	Mr
716	rock
716	artist
717	risk
717	minute
717	stop
718	cost
718	better
719	by
719	explain
720	medical
720	father
721	back
721	need
721	scientist
722	painting
723	language
724	issue
724	leader
725	growth
726	southern
726	remain
726	day
727	few
728	television
728	fast
729	pretty
729	suddenly
729	benefit
729	standard
730	song
730	mention
730	station
730	stage
731	happen
732	up
733	foreign
734	contain
734	during
735	four
735	would
735	page
735	top
736	field
736	people
736	hot
736	price
737	field
737	quality
737	ahead
738	behavior
738	wind
739	share
739	drug
740	follow
740	society
740	push
740	spend
741	floor
741	financial
742	movie
742	material
743	though
743	town
743	two
744	wait
744	hand
744	reality
744	civil
745	power
745	while
745	must
745	hope
746	specific
746	score
746	rate
747	father
747	bank
748	project
748	reveal
749	entire
750	magazine
750	mother
751	large
751	treat
752	that
753	word
753	decade
753	maybe
754	hear
754	each
755	young
756	organization
756	range
756	time
757	how
757	employee
757	almost
757	throw
758	education
758	energy
759	kitchen
759	reach
760	capital
760	born
760	can
761	her
761	particularly
762	word
762	manage
763	news
763	smile
764	price
764	civil
764	you
764	economic
765	maybe
765	skin
766	fall
766	serious
767	difficult
767	add
768	civil
769	before
769	compare
769	anything
770	issue
770	American
771	itself
771	rate
771	speak
771	you
772	wide
772	send
772	why
772	like
773	everything
773	senior
773	crime
774	say
774	cell
775	upon
776	yet
777	boy
778	wife
779	very
779	pattern
779	fight
780	bar
780	member
780	debate
780	page
781	plant
782	person
783	edge
783	note
783	talk
784	build
784	want
784	research
785	often
785	sea
785	research
786	decide
786	trial
787	tree
787	money
788	threat
788	summer
788	short
789	help
789	attorney
790	hit
790	hot
791	even
791	free
791	outside
792	option
792	purpose
792	speech
793	administration
793	sure
793	design
794	now
794	especially
794	shake
795	nature
796	woman
797	number
797	add
798	fine
798	any
799	live
799	yourself
799	require
799	that
800	strategy
800	agree
800	ask
800	specific
801	these
801	item
802	Mrs
803	past
803	any
803	which
803	structure
804	benefit
804	federal
804	west
804	drug
805	couple
805	call
805	sell
805	information
806	sell
806	force
806	year
807	high
807	miss
807	chair
808	television
808	record
808	now
808	nation
809	clearly
810	serve
810	where
810	door
811	gas
812	pay
813	across
813	bad
813	role
813	several
814	worker
814	discover
814	really
814	manager
815	check
815	join
815	operation
816	me
816	discover
816	reduce
816	character
817	young
817	body
818	material
818	seven
818	everyone
819	top
819	performance
820	likely
821	scene
821	magazine
821	food
822	send
823	Mrs
823	financial
823	until
823	bit
824	first
825	lay
825	mean
825	must
825	front
826	program
827	attorney
827	policy
827	team
827	argue
828	most
828	hospital
829	age
829	another
829	its
829	life
830	important
830	civil
830	issue
831	order
832	bank
832	blue
833	blood
833	long
834	fill
834	painting
835	have
835	war
835	baby
836	if
836	discuss
837	shoulder
837	day
837	deal
838	pressure
838	me
838	program
839	act
840	room
840	challenge
840	even
840	thus
841	doctor
841	staff
841	central
842	window
843	design
843	property
843	quickly
843	miss
844	process
845	ahead
845	surface
845	purpose
845	half
846	decade
847	leg
848	blue
848	allow
849	station
849	perform
850	send
851	wind
851	resource
851	public
851	option
852	civil
852	room
852	word
852	structure
853	stand
853	final
854	himself
855	anyone
855	try
856	goal
856	able
857	all
857	fish
857	already
857	right
858	nearly
858	step
858	anything
859	smile
859	statement
859	expect
860	blood
861	ago
861	recognize
862	area
862	kitchen
863	along
864	voice
864	side
865	nice
865	agent
865	must
866	gas
866	yourself
866	state
867	than
867	get
867	half
868	test
868	assume
868	decide
868	improve
869	night
869	rest
869	later
870	small
870	sea
870	focus
870	relationship
871	true
871	couple
871	bank
872	significant
872	economy
873	want
874	close
874	relate
874	special
874	statement
875	unit
875	blood
876	book
876	common
876	like
877	recently
878	enough
878	under
878	ever
879	executive
879	side
880	stop
880	contain
880	nice
881	sit
881	such
881	there
882	compare
882	already
882	easy
883	television
883	training
884	pull
884	over
884	evidence
885	upon
885	marriage
885	heart
886	week
886	hot
886	notice
887	film
887	small
887	maybe
887	point
888	compare
889	man
889	business
889	nature
889	wall
890	end
890	manage
891	government
891	baby
891	require
891	plant
892	staff
892	as
893	change
893	reality
894	time
894	wear
894	matter
895	reality
895	within
895	edge
895	small
896	despite
896	operation
896	time
896	water
897	industry
898	without
899	quite
899	base
899	this
900	hair
900	figure
901	discussion
901	then
901	whatever
901	impact
902	third
903	good
903	field
903	let
904	thank
904	firm
905	quite
905	group
905	authority
906	let
906	sit
906	nor
907	agree
907	yeah
907	these
907	commercial
908	prove
908	per
908	thank
908	tonight
909	ask
909	suffer
910	standard
910	place
910	watch
911	country
911	lead
912	her
912	west
913	live
913	quality
913	fund
913	home
914	page
914	major
914	beautiful
915	main
916	major
916	heart
916	pay
917	mind
917	floor
917	senior
917	second
918	this
918	guess
918	view
919	professional
920	worker
920	step
921	visit
921	defense
921	knowledge
921	do
922	call
922	sure
922	culture
922	rather
923	resource
924	test
925	recognize
925	budget
925	produce
925	get
926	example
926	perform
926	change
926	man
927	weight
928	how
928	six
929	success
929	history
929	heart
929	same
930	include
930	smile
930	hit
931	kitchen
931	miss
931	data
931	apply
932	meeting
932	cold
932	movement
932	tax
933	series
933	Republican
933	point
933	far
934	well
934	her
934	voice
934	example
935	skin
936	center
936	green
936	million
936	might
937	life
937	seem
938	marriage
938	unit
939	arrive
939	stay
940	media
941	loss
941	life
941	time
941	cold
942	hard
942	relate
942	strategy
943	speak
943	smile
944	current
944	game
945	run
945	trip
945	important
945	easy
946	share
946	bag
946	dream
947	some
947	word
947	five
948	difference
948	which
949	father
949	game
950	detail
950	road
951	them
951	exactly
951	field
952	again
952	the
953	American
954	and
955	candidate
955	view
956	wife
956	party
956	identify
956	size
957	box
957	for
957	Mr
957	already
958	this
959	receive
959	young
959	color
960	spring
960	air
961	child
962	candidate
962	pattern
962	teach
962	safe
963	simple
964	nearly
964	wind
964	character
965	today
965	cultural
966	Democrat
966	dog
966	cause
966	my
967	hope
967	sport
968	again
968	painting
968	fact
969	program
969	PM
970	try
970	although
970	as
971	television
971	commercial
972	change
972	process
972	place
972	know
973	around
974	become
975	must
976	letter
976	allow
976	cell
977	choice
977	business
977	education
978	fine
979	compare
979	these
979	boy
980	simply
980	police
981	least
981	wish
981	benefit
981	network
982	sense
982	live
983	dinner
984	personal
984	adult
984	thus
984	trade
985	start
986	clear
986	last
986	marriage
987	region
987	population
987	Mrs
987	page
988	teacher
988	candidate
988	behavior
988	have
989	smile
989	institution
989	thank
989	job
990	big
990	bag
991	general
991	fund
991	arm
991	whose
992	effort
992	stock
992	evidence
993	cover
993	success
993	sign
993	nearly
994	newspaper
995	story
995	very
995	strategy
995	husband
996	very
996	close
996	relationship
996	number
997	plant
998	subject
999	wind
999	role
999	hear
1000	sister
1000	air
1000	able
\.


--
-- Data for Name: relation_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_2 (product_id, mv_attributes) FROM stdin;
1	produce
1	reduce
2	down
2	small
3	writer
3	her
4	thousand
4	some
5	argue
5	skin
6	worry
6	student
7	agent
8	plant
8	each
9	identify
10	force
10	former
11	heavy
12	pretty
13	country
13	federal
14	natural
15	per
16	kind
17	prepare
17	building
18	only
19	including
19	experience
20	stay
20	carry
21	allow
21	senior
22	ball
23	month
24	top
24	each
25	democratic
26	because
26	write
27	four
27	ability
28	shoulder
29	live
30	my
31	security
31	treatment
32	receive
32	medical
33	similar
33	church
34	her
35	red
36	add
37	somebody
38	politics
39	hand
39	again
40	voice
40	from
41	remain
42	door
42	candidate
43	democratic
44	professor
45	cultural
46	generation
46	expert
47	room
47	use
48	music
49	seat
49	lead
50	poor
51	buy
52	above
52	push
53	difference
54	back
54	animal
55	environment
55	during
56	break
56	animal
57	hospital
57	turn
58	operation
59	despite
59	view
60	fear
60	rise
61	understand
61	movie
62	reduce
63	policy
64	property
65	easy
65	look
66	this
67	project
67	stop
68	last
69	media
70	this
71	degree
72	administration
72	whether
73	chance
74	want
74	mind
75	too
76	guy
77	authority
77	address
78	light
79	yourself
80	leg
80	physical
81	cold
82	half
83	hit
83	east
84	always
84	central
85	time
85	away
86	level
86	student
87	mind
87	fight
88	voice
88	year
89	successful
90	south
90	enough
91	sound
91	allow
92	scientist
93	memory
94	former
94	president
95	mention
96	east
96	street
97	none
97	white
98	trip
98	now
99	sport
99	stuff
100	issue
101	plant
102	station
103	somebody
104	whether
104	start
105	tell
106	say
106	cell
107	same
108	data
109	president
109	not
110	serve
110	general
111	must
112	well
113	perhaps
114	bank
115	general
116	manager
116	wife
117	meeting
117	attorney
118	art
118	effect
119	summer
119	provide
120	watch
121	size
121	actually
122	animal
123	between
124	ability
124	reason
125	north
125	shake
126	direction
127	good
127	truth
128	matter
128	may
129	be
130	board
130	thought
131	scene
131	check
132	professor
132	model
133	his
134	make
134	off
135	sign
136	scene
136	school
137	world
138	leader
138	whom
139	character
140	hundred
140	soldier
141	threat
141	ask
142	couple
143	final
143	run
144	its
145	simple
146	matter
147	recently
148	walk
149	character
150	appear
150	everyone
151	others
151	dark
152	information
152	improve
153	forget
153	add
154	total
155	ability
156	another
157	low
157	well
158	bank
159	hear
160	throughout
161	market
161	easy
162	phone
163	reason
163	education
164	significant
165	church
166	wrong
167	news
168	stay
169	want
169	nation
170	our
170	a
171	road
172	join
172	large
173	data
173	official
174	election
174	science
175	option
175	our
176	that
177	create
178	theory
178	lot
179	technology
179	one
180	dream
181	while
181	market
182	box
182	quality
183	sort
184	former
184	policy
185	financial
186	attack
186	heavy
187	analysis
188	poor
189	fear
189	check
190	again
190	maintain
191	recognize
191	north
192	attorney
193	traditional
193	likely
194	attention
194	thing
195	vote
196	break
196	probably
197	establish
198	beautiful
198	hear
199	get
199	them
200	address
201	last
201	since
202	rule
203	once
204	nice
204	range
205	for
206	however
206	fire
207	term
208	tree
209	threat
209	trip
210	role
211	case
211	field
212	between
213	strong
213	low
214	reach
215	day
215	computer
216	Congress
216	mean
217	believe
218	water
219	letter
220	democratic
220	great
221	receive
221	identify
222	beat
223	move
224	organization
225	Republican
225	kid
226	week
226	detail
227	development
227	Republican
228	suffer
229	trial
230	could
230	probably
231	mouth
231	pick
232	those
233	deep
234	far
235	mention
236	move
237	add
237	my
238	glass
239	different
240	group
241	nothing
242	very
242	charge
243	decision
244	evidence
244	call
245	Congress
245	part
246	set
247	feel
248	maybe
249	still
249	including
250	position
250	draw
251	theory
251	leg
252	machine
253	law
254	bag
255	special
256	nothing
256	method
257	behind
257	first
258	spend
259	would
259	wish
260	happy
260	table
261	that
261	care
262	American
262	collection
263	nearly
263	stock
264	likely
264	mouth
265	middle
265	purpose
266	local
266	season
267	leader
268	enough
268	indeed
269	very
269	set
270	hundred
270	goal
271	mother
271	dinner
272	yet
273	born
274	first
274	offer
275	performance
276	little
276	summer
277	product
277	project
278	compare
278	natural
279	court
280	population
280	campaign
281	affect
281	past
282	majority
282	process
283	foreign
283	structure
284	especially
284	increase
285	plant
286	send
287	answer
287	thus
288	film
289	interesting
289	our
290	return
290	investment
291	mission
291	also
292	of
293	mean
294	key
295	administration
296	second
296	already
297	decide
297	stage
298	force
299	argue
300	Mrs
300	service
301	major
301	own
302	medical
303	opportunity
304	and
305	would
305	plan
306	son
306	on
307	consumer
307	yourself
308	that
308	director
309	college
310	court
311	staff
311	up
312	cut
312	across
313	floor
313	even
314	young
314	yourself
315	capital
316	population
316	tough
317	kind
318	two
319	minute
320	go
320	send
321	woman
321	issue
322	realize
322	morning
323	seat
324	environmental
325	matter
325	reason
326	without
326	score
327	foreign
327	radio
328	stand
328	simple
329	may
330	piece
331	yourself
332	watch
333	full
334	grow
334	national
335	box
336	instead
337	news
337	collection
338	day
339	hotel
340	this
340	detail
341	mouth
341	ahead
342	pattern
343	maintain
344	series
344	former
345	whether
346	public
346	myself
347	these
347	story
348	whom
348	yet
349	student
349	similar
350	thus
351	above
352	wonder
353	billion
354	me
355	at
355	while
356	imagine
357	for
358	likely
359	box
359	foot
360	arm
360	else
361	run
362	where
362	religious
363	from
363	hand
364	fill
365	they
366	report
366	its
367	may
368	free
369	continue
369	attorney
370	finally
370	indicate
371	have
372	quality
373	include
374	sign
374	control
375	experience
375	product
376	soon
376	pull
377	step
378	player
379	woman
380	like
381	today
381	her
382	describe
382	quality
383	behind
383	send
384	piece
384	situation
385	message
386	member
386	describe
387	open
387	big
388	spend
389	music
389	full
390	smile
391	home
392	cold
393	coach
393	suggest
394	my
394	reveal
395	better
396	prepare
396	modern
397	letter
397	shoulder
398	successful
399	training
400	since
401	require
401	heavy
402	all
402	friend
403	leave
404	join
405	generation
405	first
406	break
406	risk
407	collection
408	here
409	difference
409	continue
410	article
411	itself
411	dream
412	rock
413	specific
413	future
414	person
414	move
415	practice
416	throw
417	else
417	explain
418	deep
418	song
419	last
420	go
420	the
421	measure
422	live
423	girl
423	plan
424	effort
425	meet
426	drug
427	ten
427	any
428	occur
429	later
430	like
431	ten
432	wife
433	compare
433	describe
434	everyone
435	success
435	improve
436	player
436	learn
437	lose
437	cold
438	write
438	goal
439	board
439	later
440	money
441	student
441	share
442	item
442	explain
443	year
444	risk
445	research
446	food
447	time
448	experience
449	decide
450	major
451	sense
451	director
452	be
453	fly
453	rise
454	almost
454	meet
455	shoulder
456	provide
457	remember
458	green
459	other
460	sister
461	threat
462	any
463	size
463	onto
464	until
464	lawyer
465	score
466	ground
466	feel
467	small
468	hotel
469	wall
469	yes
470	live
471	exist
472	fly
472	feel
473	help
474	adult
475	style
475	order
476	white
476	organization
477	gun
477	education
478	watch
479	fast
480	consider
481	appear
482	kitchen
482	base
483	development
484	break
484	spend
485	consumer
486	scene
487	test
488	whatever
489	return
490	sense
490	TV
491	model
492	meet
492	near
493	analysis
494	write
494	make
495	marriage
495	concern
496	choose
496	few
497	color
498	summer
498	much
499	partner
500	more
501	man
502	foreign
502	trial
503	second
504	student
505	bag
506	perhaps
506	not
507	fill
508	professional
509	sometimes
510	yourself
510	capital
511	huge
511	whom
512	spend
513	event
513	business
514	material
515	economic
515	relationship
516	crime
517	dog
517	go
518	catch
518	act
519	whom
519	really
520	analysis
520	produce
521	writer
521	church
522	imagine
523	million
524	able
524	me
525	shake
525	city
526	brother
527	us
527	turn
528	somebody
529	know
530	record
530	ok
531	pretty
532	various
532	work
533	the
533	wind
534	ever
535	long
536	smile
536	mother
537	area
537	nation
538	half
538	western
539	produce
539	before
540	describe
540	week
541	plan
541	rule
542	green
543	economy
543	start
544	meeting
544	two
545	behavior
546	we
547	miss
548	crime
549	court
549	until
550	defense
551	moment
551	join
552	drop
553	late
554	one
555	lose
556	avoid
557	stock
558	air
559	list
560	inside
561	certainly
562	pay
563	half
563	letter
564	remember
564	worker
565	sing
565	bring
566	field
566	newspaper
567	out
568	appear
569	continue
569	care
570	something
570	strong
571	hard
571	sport
572	nation
573	idea
574	thank
575	plant
576	Republican
576	stock
577	hard
577	trip
578	deep
578	beautiful
579	sport
580	sometimes
580	represent
581	community
582	face
582	PM
583	without
583	ever
584	ok
584	Republican
585	speech
586	town
586	light
587	mean
588	have
589	hair
589	memory
590	generation
591	free
591	modern
592	whose
592	challenge
593	wind
593	couple
594	do
595	throw
595	to
596	most
597	avoid
598	traditional
598	major
599	material
600	clear
601	strong
601	four
602	better
602	brother
603	do
603	house
604	finally
604	area
605	themselves
605	our
606	get
606	word
607	generation
607	property
608	hand
609	team
609	movie
610	everything
610	she
611	situation
612	notice
613	indeed
614	police
614	begin
615	give
615	company
616	act
616	give
617	more
617	quality
618	inside
618	work
619	our
620	difference
620	camera
621	enjoy
621	laugh
622	amount
623	enter
623	add
624	town
625	head
625	whom
626	car
626	happen
627	memory
628	business
628	book
629	family
630	say
630	usually
631	become
632	information
633	finish
634	story
634	myself
635	leg
635	himself
636	government
637	room
637	step
638	manager
639	evening
639	present
640	image
640	social
641	throw
642	reality
643	large
644	figure
645	rate
646	detail
646	sing
647	less
647	possible
648	natural
648	assume
649	idea
649	every
650	before
650	cell
651	head
651	increase
652	edge
653	fall
653	official
654	plant
655	employee
655	middle
656	maybe
657	keep
658	group
658	ask
659	yeah
660	actually
661	growth
661	fund
662	me
663	break
663	so
664	into
665	position
666	collection
666	force
667	break
668	increase
669	analysis
669	nearly
670	draw
671	air
672	camera
673	of
674	condition
675	so
675	direction
676	cold
676	current
677	program
678	eye
679	modern
680	how
681	positive
682	thought
682	source
683	actually
683	almost
684	real
685	world
686	offer
687	field
687	body
688	Republican
688	should
689	benefit
689	common
690	husband
690	degree
691	activity
692	respond
693	red
694	free
694	practice
695	value
696	show
697	always
697	east
698	may
698	prove
699	author
699	yourself
700	cover
700	try
701	data
701	billion
702	almost
703	find
704	hear
704	always
705	end
706	almost
706	once
707	nation
707	strong
708	bar
709	lot
709	piece
710	unit
711	whole
711	together
712	leg
712	already
713	somebody
714	head
715	financial
716	public
717	sometimes
717	discussion
718	bar
719	next
720	order
720	bed
721	as
722	argue
722	run
723	message
723	least
724	guess
725	line
726	collection
727	into
727	partner
728	identify
729	most
729	to
730	must
730	matter
731	investment
731	scientist
732	member
732	suggest
733	become
733	nature
734	pressure
735	bar
735	kind
736	writer
736	police
737	despite
738	hundred
738	law
739	say
739	policy
740	picture
740	product
741	think
742	house
742	water
743	positive
744	although
745	central
745	on
746	national
746	evening
747	scene
748	white
749	minute
750	phone
751	most
751	during
752	could
752	establish
753	establish
753	community
754	risk
755	music
755	edge
756	professor
756	old
757	it
758	year
759	city
760	yet
761	thought
762	past
762	yet
763	character
764	religious
764	instead
765	president
766	floor
767	everything
767	try
768	case
768	discussion
769	worker
769	all
770	send
770	expert
771	leave
772	well
773	order
773	role
774	condition
775	store
776	home
776	rather
777	assume
777	site
778	detail
778	current
779	around
779	firm
780	figure
781	phone
782	man
782	down
783	catch
784	success
784	training
785	office
785	hard
786	price
786	order
787	those
788	suddenly
789	every
790	knowledge
791	view
792	couple
793	allow
794	easy
794	word
795	onto
796	security
796	center
797	bank
797	traditional
798	order
798	whether
799	director
799	act
800	present
801	western
801	claim
802	thousand
802	reduce
803	modern
803	third
804	authority
804	one
805	letter
805	his
806	charge
807	song
808	trial
809	hope
809	successful
810	partner
811	production
812	every
812	rise
813	me
813	your
814	prepare
815	film
816	effect
816	arm
817	assume
817	relate
818	price
818	way
819	red
820	physical
820	meeting
821	day
821	protect
822	hour
822	six
823	break
823	question
824	must
825	fly
825	until
826	none
827	she
827	somebody
828	car
828	both
829	color
829	notice
830	force
831	husband
832	million
833	old
833	pretty
834	between
834	sit
835	wide
835	news
836	position
836	relationship
837	well
838	challenge
838	clear
839	huge
839	serve
840	information
840	board
841	set
841	commercial
842	language
842	lawyer
843	so
843	step
844	let
845	become
845	term
846	rate
846	peace
847	painting
848	phone
849	there
850	second
851	then
852	wife
852	fire
853	material
854	exactly
855	yes
855	born
856	building
856	her
857	speech
858	kid
858	factor
859	along
860	gas
860	everyone
861	defense
861	image
862	likely
862	land
863	meet
863	subject
864	hold
864	join
865	popular
865	system
866	rather
867	conference
868	local
868	so
869	last
870	keep
871	marriage
872	thus
872	bank
873	everybody
873	set
874	about
874	senior
875	part
876	toward
876	according
877	section
878	nothing
878	food
879	product
879	wide
880	window
881	go
881	fish
882	food
883	individual
884	language
884	change
885	because
886	trade
887	onto
888	four
889	night
890	hard
890	brother
891	forget
892	source
892	but
893	instead
894	surface
895	sound
896	black
897	part
897	describe
898	white
899	poor
899	base
900	sell
901	visit
902	figure
903	direction
903	him
904	prevent
904	goal
905	base
906	affect
907	friend
908	pretty
908	southern
909	federal
909	travel
910	beautiful
911	game
911	history
912	eye
912	brother
913	carry
914	today
915	a
916	general
916	treat
917	build
918	writer
919	something
920	between
921	every
921	majority
922	already
923	cold
923	I
924	model
924	every
925	big
926	act
927	case
927	fill
928	shoulder
929	market
929	science
930	food
931	purpose
932	music
932	prove
933	production
934	baby
934	whether
935	live
935	alone
936	particularly
936	somebody
937	lawyer
937	then
938	trouble
938	parent
939	look
939	player
940	bank
940	success
941	behind
941	statement
942	strong
943	write
943	organization
944	special
944	today
945	hotel
945	leave
946	government
946	sea
947	matter
948	mission
949	account
949	space
950	professor
950	recognize
951	week
951	watch
952	idea
953	price
954	finish
955	at
955	process
956	name
957	name
958	sometimes
959	data
959	weight
960	production
960	term
961	get
962	from
963	through
964	all
964	wall
965	something
966	miss
966	something
967	nothing
967	government
968	say
968	seven
969	pay
970	middle
970	get
971	choice
971	continue
972	theory
972	present
973	Democrat
973	cold
974	direction
975	sense
975	media
976	heavy
977	particularly
977	democratic
978	better
979	participant
980	two
981	bed
981	be
982	back
982	so
983	focus
983	effect
984	author
984	baby
985	body
986	their
986	section
987	data
987	check
988	sure
988	bed
989	manage
989	law
990	performance
990	how
991	fast
992	response
992	degree
993	time
993	one
994	any
995	successful
996	store
996	fund
997	beat
998	decade
999	than
1000	red
1001	hold
1002	music
1003	blood
1003	after
1004	quickly
1005	mind
1006	current
1006	when
1007	move
1008	most
1009	life
1010	often
1011	country
1011	understand
1012	will
1013	join
1014	Congress
1015	send
1015	forget
1016	expect
1016	television
1017	activity
1018	must
1018	surface
1019	reach
1019	over
1020	upon
1020	behind
1021	care
1022	cell
1023	animal
1024	say
1025	company
1026	most
1027	mouth
1027	value
1028	five
1029	present
1030	trial
1030	day
1031	watch
1031	less
1032	range
1032	trip
1033	treat
1034	record
1035	already
1036	beat
1036	give
1037	describe
1037	rate
1038	this
1039	information
1039	but
1040	no
1040	about
1041	tell
1042	office
1042	affect
1043	physical
1043	clear
1044	character
1045	whole
1045	force
1046	ever
1047	phone
1048	understand
1048	record
1049	together
1050	drive
1051	record
1051	risk
1052	return
1052	establish
1053	attack
1053	some
1054	accept
1054	professor
1055	week
1056	account
1056	they
1057	million
1058	everybody
1059	follow
1060	wall
1060	these
1061	politics
1061	allow
1062	sister
1063	sport
1064	include
1064	reality
1065	surface
1065	center
1066	when
1066	blood
1067	people
1068	well
1069	environmental
1070	base
1071	truth
1072	believe
1072	black
1073	decision
1074	fast
1074	cold
1075	common
1076	company
1076	choice
1077	according
1077	maybe
1078	hot
1078	why
1079	pressure
1079	water
1080	bad
1080	board
1081	peace
1082	he
1083	space
1084	thing
1084	benefit
1085	president
1085	significant
1086	along
1087	oil
1087	offer
1088	stop
1089	a
1089	success
1090	sell
1090	pretty
1091	girl
1092	outside
1093	history
1094	half
1095	turn
1095	budget
1096	reflect
1096	remain
1097	issue
1098	hotel
1098	power
1099	billion
1099	middle
1100	will
1100	step
1101	community
1102	participant
1103	finally
1104	level
1105	need
1105	recently
1106	above
1106	stand
1107	him
1107	sound
1108	truth
1109	follow
1110	rock
1110	feeling
1111	whom
1112	yes
1113	budget
1113	imagine
1114	defense
1115	enjoy
1116	response
1117	short
1117	rule
1118	name
1119	way
1119	dog
1120	size
1121	again
1121	keep
1122	per
1122	at
1123	ability
1123	style
1124	discuss
1125	tough
1126	go
1126	traditional
1127	then
1127	three
1128	civil
1128	toward
1129	cut
1130	player
1131	strong
1131	court
1132	rise
1132	natural
1133	control
1133	think
1134	feel
1134	stuff
1135	matter
1136	prevent
1136	everyone
1137	stage
1138	easy
1139	sport
1140	drop
1140	remember
1141	leader
1142	source
1143	miss
1143	then
1144	about
1144	key
1145	stay
1145	value
1146	speech
1146	own
1147	history
1147	government
1148	early
1148	learn
1149	where
1149	administration
1150	general
1151	interview
1151	left
1152	apply
1153	deal
1154	though
1155	office
1155	high
1156	argue
1157	way
1157	evidence
1158	easy
1158	exactly
1159	good
1159	lose
1160	away
1160	spring
1161	tax
1161	year
1162	mention
1163	table
1163	around
1164	economy
1165	third
1166	onto
1166	section
1167	cultural
1167	per
1168	effect
1168	play
1169	see
1170	majority
1171	history
1171	top
1172	score
1172	that
1173	old
1174	nation
1175	value
1175	data
1176	offer
1177	wide
1178	girl
1178	realize
1179	agency
1180	yeah
1180	buy
1181	film
1181	natural
1182	response
1183	suffer
1184	message
1185	recent
1185	detail
1186	sing
1187	player
1188	turn
1188	more
1189	sure
1189	note
1190	war
1190	mouth
1191	appear
1191	beat
1192	call
1193	them
1194	different
1195	college
1196	save
1196	human
1197	ball
1197	return
1198	management
1198	financial
1199	present
1200	strategy
1200	study
1201	firm
1202	network
1202	if
1203	by
1203	first
1204	product
1205	benefit
1205	test
1206	call
1207	message
1207	where
1208	check
1209	billion
1210	recently
1211	television
1211	everybody
1212	indeed
1212	film
1213	any
1213	reach
1214	past
1215	radio
1216	simply
1216	theory
1217	understand
1218	agreement
1219	difficult
1220	study
1221	brother
1222	live
1222	right
1223	section
1224	tree
1224	style
1225	oil
1225	free
1226	religious
1226	drive
1227	shoulder
1227	wrong
1228	hear
1229	step
1230	time
1231	part
1232	chair
1233	girl
1234	pull
1235	people
1236	region
1236	art
1237	just
1237	bad
1238	executive
1239	card
1240	surface
1241	available
1241	try
1242	according
1243	because
1243	effort
1244	about
1245	may
1246	fact
1247	up
1248	writer
1249	away
1250	visit
1251	quite
1251	type
1252	carry
1252	beautiful
1253	senior
1253	price
1254	executive
1254	push
1255	news
1256	into
1256	form
1257	future
1258	evidence
1259	instead
1259	wait
1260	good
1260	much
1261	heavy
1262	sell
1263	garden
1264	adult
1265	expect
1266	century
1266	reason
1267	against
1268	senior
1268	among
1269	clear
1270	up
1270	worry
1271	public
1272	cover
1272	boy
1273	them
1273	successful
1274	send
1274	first
1275	game
1276	benefit
1276	cover
1277	wrong
1278	home
1278	success
1279	plan
1279	world
1280	until
1280	suddenly
1281	big
1282	threat
1282	bar
1283	your
1284	feel
1285	age
1285	there
1286	still
1287	training
1287	instead
1288	particularly
1288	environmental
1289	evidence
1290	fine
1291	race
1291	decade
1292	total
1293	throughout
1293	not
1294	commercial
1294	for
1295	water
1296	get
1297	gun
1298	another
1299	but
1300	president
1301	rest
1301	month
1302	suffer
1302	nice
1303	almost
1304	available
1304	always
1305	vote
1306	travel
1307	human
1307	most
1308	order
1309	most
1310	federal
1310	wide
1311	benefit
1311	production
1312	reveal
1312	together
1313	natural
1313	spring
1314	scene
1314	sister
1315	wide
1315	board
1316	offer
1317	care
1317	hold
1318	feel
1318	early
1319	seek
1320	often
1320	majority
1321	rest
1321	while
1322	look
1323	threat
1324	fear
1324	maybe
1325	sign
1325	challenge
1326	family
1327	provide
1328	bit
1329	third
1329	loss
1330	discover
1330	writer
1331	opportunity
1332	upon
1332	great
1333	attention
1334	than
1334	out
1335	write
1335	another
1336	put
1336	its
1337	agreement
1337	leg
1338	push
1338	test
1339	growth
1339	recently
1340	history
1340	of
1341	few
1341	fact
1342	future
1342	treatment
1343	special
1343	difficult
1344	officer
1344	outside
1345	generation
1346	season
1346	view
1347	last
1348	impact
1348	cultural
1349	along
1349	education
1350	there
1350	when
1351	production
1351	nearly
1352	class
1352	outside
1353	common
1353	memory
1354	third
1354	book
1355	buy
1355	power
1356	city
1356	pressure
1357	fact
1358	like
1359	factor
1360	yourself
1361	special
1362	continue
1363	garden
1363	agent
1364	argue
1364	tend
1365	it
1365	voice
1366	occur
1366	career
1367	second
1367	loss
1368	however
1369	boy
1370	source
1371	activity
1372	usually
1372	create
1373	once
1373	wrong
1374	traditional
1374	health
1375	behavior
1376	at
1376	believe
1377	scene
1378	over
1379	key
1380	firm
1381	main
1381	mother
1382	start
1382	themselves
1383	song
1384	no
1384	still
1385	billion
1385	home
1386	seek
1387	eight
1387	these
1388	music
1388	doctor
1389	hundred
1390	structure
1390	military
1391	way
1391	two
1392	cover
1393	man
1394	least
1395	really
1396	seek
1397	any
1397	laugh
1398	agreement
1398	behind
1399	great
1399	resource
1400	whose
1400	deep
1401	break
1401	sell
1402	without
1403	them
1403	every
1404	hold
1404	detail
1405	attention
1406	election
1406	position
1407	certain
1408	key
1409	role
1409	hit
1410	rich
1410	do
1411	purpose
1412	pattern
1412	prove
1413	radio
1414	commercial
1415	take
1416	say
1417	son
1418	cover
1419	social
1420	young
1420	according
1421	image
1421	you
1422	activity
1423	drop
1424	project
1424	relate
1425	market
1426	note
1427	me
1427	teacher
1428	foreign
1429	into
1430	watch
1431	drive
1432	sister
1432	idea
1433	happy
1433	food
1434	travel
1435	deal
1436	in
1436	true
1437	gun
1437	almost
1438	Mrs
1439	everyone
1440	whose
1440	range
1441	religious
1441	than
1442	long
1442	light
1443	response
1443	pick
1444	once
1445	memory
1445	central
1446	future
1447	sit
1448	full
1449	will
1449	majority
1450	owner
1451	medical
1451	option
1452	life
1452	phone
1453	yes
1453	feeling
1454	speak
1454	suggest
1455	truth
1456	certainly
1456	else
1457	under
1458	himself
1458	building
1459	name
1460	produce
1461	process
1462	education
1462	mouth
1463	prove
1464	maintain
1464	people
1465	present
1466	check
1466	garden
1467	foreign
1468	to
1468	necessary
1469	answer
1469	through
1470	Democrat
1471	return
1472	strong
1472	far
1473	himself
1473	other
1474	report
1475	treatment
1475	join
1476	picture
1476	mind
1477	know
1477	TV
1478	bit
1478	skin
1479	morning
1479	in
1480	meet
1481	stand
1481	professor
1482	source
1482	six
1483	trouble
1483	guess
1484	very
1485	reduce
1486	skill
1487	break
1488	attorney
1488	key
1489	management
1489	his
1490	among
1490	argue
1491	rock
1491	history
1492	bit
1492	step
1493	church
1493	how
1494	stay
1494	help
1495	development
1495	film
1496	season
1497	finish
1498	your
1499	sometimes
1499	put
1500	push
1500	part
1501	yeah
1501	nature
1502	across
1503	Congress
1504	couple
1505	safe
1506	particular
1506	may
1507	special
1508	whatever
1508	particularly
1509	accept
1509	gas
1510	security
1510	agency
1511	increase
1511	international
1512	hundred
1513	drive
1514	writer
1514	continue
1515	our
1515	two
1516	them
1517	truth
1518	party
1518	industry
1519	then
1520	hold
1521	remain
1522	often
1523	same
1524	produce
1525	film
1525	eye
1526	large
1527	happen
1528	could
1528	page
1529	authority
1530	another
1530	range
1531	better
1531	decade
1532	health
1533	phone
1533	wonder
1534	thought
1534	election
1535	statement
1535	population
1536	fund
1537	similar
1538	field
1539	possible
1540	help
1540	grow
1541	card
1541	traditional
1542	they
1543	may
1543	once
1544	indeed
1545	clear
1546	sea
1546	treatment
1547	simply
1547	see
1548	by
1548	they
1549	good
1549	minute
1550	because
1551	sport
1552	art
1552	order
1553	customer
1554	affect
1555	other
1556	why
1557	cost
1558	much
1558	nor
1559	nearly
1559	turn
1560	answer
1560	second
1561	will
1562	while
1563	number
1564	figure
1565	southern
1566	body
1567	world
1568	worry
1569	fill
1570	commercial
1570	local
1571	green
1572	think
1573	hour
1574	performance
1574	exist
1575	take
1576	increase
1577	seat
1577	this
1578	expert
1578	million
1579	paper
1579	us
1580	onto
1580	somebody
1581	business
1581	well
1582	public
1583	trade
1583	once
1584	music
1585	team
1586	beyond
1586	alone
1587	back
1587	various
1588	look
1589	opportunity
1590	read
1590	beautiful
1591	marriage
1592	environment
1592	finish
1593	near
1593	fight
1594	true
1594	ability
1595	tree
1596	left
1597	senior
1597	think
1598	west
1598	say
1599	how
1599	end
1600	medical
1600	trial
1601	when
1601	short
1602	use
1603	magazine
1603	form
1604	cover
1604	and
1605	second
1605	wind
1606	significant
1607	expect
1607	decision
1608	down
1609	capital
1610	activity
1611	cover
1611	born
1612	game
1613	well
1614	much
1614	officer
1615	between
1616	may
1617	must
1617	affect
1618	feel
1619	buy
1620	majority
1620	them
1621	science
1621	early
1622	consumer
1622	decade
1623	participant
1624	smile
1625	black
1626	positive
1626	every
1627	class
1628	throw
1628	name
1629	raise
1630	eight
1631	good
1631	entire
1632	decide
1632	according
1633	carry
1634	yourself
1635	treatment
1635	size
1636	rich
1636	stand
1637	generation
1637	serious
1638	particularly
1639	compare
1640	weight
1640	trip
1641	area
1642	walk
1643	follow
1644	matter
1644	better
1645	identify
1645	draw
1646	few
1647	reflect
1648	on
1649	many
1649	whole
1650	step
1650	interview
1651	success
1652	avoid
1652	doctor
1653	attorney
1654	fine
1654	house
1655	think
1655	quickly
1656	during
1657	buy
1657	local
1658	family
1658	ball
1659	cup
1659	politics
1660	argue
1660	pay
1661	memory
1662	control
1662	property
1663	crime
1663	us
1664	rather
1665	deep
1665	director
1666	black
1666	poor
1667	such
1667	manager
1668	late
1669	population
1669	century
1670	quality
1670	organization
1671	another
1671	PM
1672	north
1672	hand
1673	wrong
1674	woman
1675	quickly
1675	public
1676	next
1676	college
1677	late
1678	we
1679	shoulder
1679	go
1680	instead
1681	sea
1681	kid
1682	professional
1683	race
1683	huge
1684	several
1684	write
1685	call
1685	house
1686	girl
1687	recognize
1687	usually
1688	candidate
1688	worry
1689	phone
1690	break
1690	task
1691	while
1691	onto
1692	hour
1693	responsibility
1694	south
1694	service
1695	vote
1696	entire
1697	time
1697	production
1698	interview
1699	participant
1699	wonder
1700	turn
1701	one
1702	risk
1702	base
1703	start
1703	picture
1704	career
1705	law
1706	why
1706	best
1707	party
1708	involve
1709	newspaper
1710	gun
1711	there
1711	office
1712	his
1712	positive
1713	item
1713	expect
1714	political
1715	his
1716	thousand
1717	part
1717	wonder
1718	fish
1719	size
1719	top
1720	part
1720	next
1721	rest
1722	agency
1722	stock
1723	career
1724	bit
1724	purpose
1725	election
1726	will
1726	news
1727	guess
1728	billion
1729	serious
1730	fund
1730	great
1731	I
1732	about
1732	bar
1733	fine
1733	those
1734	arrive
1735	accept
1735	help
1736	she
1737	sister
1737	church
1738	certainly
1738	ago
1739	understand
1740	dog
1740	professor
1741	floor
1742	something
1743	reality
1744	organization
1744	senior
1745	trade
1746	debate
1746	performance
1747	about
1747	community
1748	source
1748	finish
1749	baby
1749	garden
1750	or
1750	keep
1751	long
1752	through
1753	camera
1754	watch
1755	reduce
1755	policy
1756	task
1757	education
1758	huge
1759	hard
1760	quite
1760	every
1761	service
1762	impact
1763	major
1763	anyone
1764	crime
1765	address
1766	college
1767	future
1767	itself
1768	despite
1768	environment
1769	dream
1769	meeting
1770	indicate
1770	here
1771	foot
1771	anything
1772	believe
1772	common
1773	chair
1773	produce
1774	figure
1774	sometimes
1775	machine
1776	at
1777	where
1778	front
1778	anything
1779	natural
1780	company
1780	wrong
1781	past
1782	receive
1782	effort
1783	maintain
1783	shoulder
1784	early
1785	population
1785	generation
1786	month
1787	particular
1787	site
1788	across
1789	along
1789	season
1790	consumer
1791	drive
1792	apply
1793	call
1793	boy
1794	court
1794	top
1795	dark
1795	customer
1796	no
1797	society
1798	pretty
1798	look
1799	price
1800	future
1800	art
1801	past
1801	least
1802	article
1803	media
1804	success
1804	community
1805	consider
1805	beat
1806	drop
1806	teacher
1807	fear
1807	sometimes
1808	hospital
1808	evidence
1809	manager
1810	during
1810	see
1811	finish
1811	training
1812	compare
1813	water
1813	event
1814	describe
1814	tend
1815	process
1816	road
1816	someone
1817	either
1817	should
1818	blue
1819	truth
1819	end
1820	piece
1820	pressure
1821	idea
1821	together
1822	structure
1822	reduce
1823	offer
1823	garden
1824	Congress
1825	economy
1825	one
1826	picture
1827	song
1828	teacher
1829	agent
1829	budget
1830	attack
1830	board
1831	sit
1832	television
1832	onto
1833	fall
1833	camera
1834	want
1835	may
1836	head
1837	choose
1838	page
1839	wear
1839	nothing
1840	reason
1840	toward
1841	small
1842	plan
1843	he
1844	lose
1844	scene
1845	wind
1846	yard
1847	under
1847	good
1848	cold
1848	cause
1849	good
1850	between
1850	something
1851	score
1851	which
1852	policy
1852	method
1853	every
1854	baby
1855	soon
1856	choice
1857	leg
1857	turn
1858	push
1859	unit
1859	key
1860	sign
1860	even
1861	organization
1861	exist
1862	simple
1862	commercial
1863	member
1863	thing
1864	store
1864	agree
1865	them
1865	among
1866	put
1866	agree
1867	democratic
1867	party
1868	evidence
1868	position
1869	gun
1870	guess
1871	organization
1872	personal
1872	financial
1873	Republican
1873	partner
1874	away
1875	effort
1875	cut
1876	direction
1877	think
1878	gun
1879	away
1879	ahead
1880	those
1881	evening
1882	coach
1883	major
1883	continue
1884	he
1884	create
1885	say
1885	wrong
1886	voice
1887	itself
1888	feel
1888	toward
1889	case
1890	better
1891	church
1892	reduce
1893	full
1894	special
1894	evening
1895	despite
1896	leg
1897	return
1897	past
1898	individual
1899	kid
1900	down
1901	PM
1902	pass
1903	find
1903	church
1904	huge
1905	goal
1905	apply
1906	expert
1907	sister
1908	six
1909	young
1909	likely
1910	thousand
1910	develop
1911	building
1912	through
1913	generation
1914	physical
1914	save
1915	serve
1915	design
1916	rest
1916	woman
1917	including
1918	of
1919	your
1919	minute
1920	final
1921	wear
1922	eye
1922	too
1923	hair
1924	about
1924	quality
1925	bit
1926	with
1927	analysis
1927	future
1928	card
1928	home
1929	then
1929	we
1930	spring
1930	police
1931	current
1932	strategy
1932	so
1933	sister
1934	left
1934	name
1935	develop
1935	little
1936	unit
1936	response
1937	spend
1938	investment
1938	month
1939	child
1939	field
1940	where
1941	west
1941	table
1942	structure
1942	audience
1943	position
1944	which
1945	cause
1945	send
1946	dream
1946	hospital
1947	stay
1947	now
1948	front
1949	miss
1950	remain
1951	check
1951	environmental
1952	benefit
1952	quickly
1953	others
1953	expect
1954	size
1954	top
1955	method
1956	consumer
1956	full
1957	hospital
1958	to
1958	peace
1959	work
1960	create
1960	involve
1961	public
1961	student
1962	before
1963	happy
1964	from
1965	yet
1966	say
1967	administration
1968	star
1968	gun
1969	worry
1970	season
1971	term
1971	give
1972	address
1973	not
1974	describe
1975	bill
1976	their
1977	none
1978	information
1978	would
1979	key
1979	which
1980	fire
1980	ask
1981	inside
1981	citizen
1982	risk
1983	society
1983	pressure
1984	perform
1985	four
1986	real
1986	state
1987	body
1988	voice
1989	official
1990	speak
1990	author
1991	memory
1991	by
1992	allow
1993	of
1993	tend
1994	security
1994	bag
1995	responsibility
1996	art
1996	order
1997	capital
1997	concern
1998	worker
1998	have
1999	religious
2000	song
2001	trouble
2002	concern
2003	before
2003	campaign
2004	hair
2005	skin
2005	well
2006	too
2007	town
2007	arm
2008	Democrat
2008	go
2009	within
2010	glass
2011	begin
2011	else
2012	room
2013	commercial
2014	future
2014	carry
2015	population
2015	much
2016	stage
2017	economic
2018	agreement
2019	national
2020	member
2020	will
2021	TV
2021	painting
2022	prevent
2022	detail
2023	everything
2024	across
2024	condition
2025	blood
2025	someone
2026	dinner
2027	cost
2027	national
2028	everybody
2029	turn
2030	artist
2031	campaign
2031	adult
2032	drive
2033	recently
2033	whole
2034	his
2035	her
2036	house
2037	natural
2038	apply
2039	growth
2040	feel
2040	wait
2041	feel
2041	even
2042	election
2042	appear
2043	southern
2043	bit
2044	such
2044	sure
2045	trip
2046	before
2046	population
2047	up
2047	test
2048	small
2049	certainly
2049	indicate
2050	evening
2050	fill
2051	beat
2051	positive
2052	protect
2053	form
2054	realize
2054	quickly
2055	majority
2056	treat
2056	democratic
2057	star
2058	film
2058	first
2059	law
2060	account
2061	produce
2061	up
2062	down
2062	trouble
2063	dinner
2064	author
2064	rest
2065	identify
2066	talk
2066	key
2067	themselves
2068	mother
2069	similar
2070	agreement
2071	expert
2071	range
2072	ok
2073	out
2074	miss
2075	man
2076	out
2076	necessary
2077	himself
2077	low
2078	their
2079	player
2079	first
2080	career
2081	occur
2081	movie
2082	movie
2082	care
2083	account
2083	fire
2084	impact
2085	be
2085	month
2086	build
2087	treat
2087	hair
2088	single
2088	recently
2089	put
2090	evidence
2091	where
2091	simple
2092	four
2092	meeting
2093	dream
2093	executive
2094	guess
2094	push
2095	buy
2095	just
2096	above
2097	hard
2098	behind
2099	lot
2099	tough
2100	no
\.


--
-- Data for Name: relation_20; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_20 (customer_id, loyalty_tier) FROM stdin;
101	late
102	respond
103	operation
104	someone
105	explain
106	pattern
107	true
108	beat
109	seem
110	message
111	painting
112	catch
113	because
114	move
115	accept
116	establish
117	scene
118	claim
119	he
120	four
121	late
122	so
123	edge
124	head
125	personal
126	care
127	seat
128	evidence
129	put
130	site
131	military
132	or
133	final
134	quite
135	smile
136	service
137	past
138	door
139	wind
140	Republican
141	especially
142	go
143	difficult
144	early
145	talk
146	Mrs
147	week
148	management
149	pattern
150	chair
151	property
152	environment
153	even
154	although
155	item
156	century
157	TV
158	billion
159	include
160	because
161	issue
162	tax
163	past
164	evidence
165	usually
166	from
167	simply
168	like
169	add
170	office
171	right
172	my
173	tend
174	like
175	case
176	success
177	political
178	meeting
179	work
180	whose
181	necessary
182	some
183	skin
184	school
185	very
186	general
187	stage
188	include
189	partner
190	off
191	here
192	day
193	up
194	see
195	pretty
196	style
197	cover
198	approach
199	our
200	blue
201	force
202	in
203	choice
204	upon
205	spend
206	green
207	continue
208	certainly
209	tell
210	whose
211	large
212	view
213	note
214	smile
215	he
216	page
217	through
218	myself
219	American
220	major
221	herself
222	continue
223	expect
224	safe
225	pressure
226	during
227	simple
228	our
229	large
230	in
231	pull
232	music
233	clearly
234	nice
235	any
236	fear
237	law
238	story
239	owner
240	group
241	interest
242	table
243	official
244	bill
245	hot
246	serve
247	hair
248	turn
249	let
250	sea
251	half
252	American
253	actually
254	nice
255	recent
256	degree
257	space
258	process
259	although
260	shoulder
261	policy
262	poor
263	foreign
264	new
265	indeed
266	responsibility
267	race
268	economic
269	glass
270	officer
271	production
272	establish
273	side
274	front
275	reach
276	maybe
277	apply
278	others
279	risk
280	girl
281	matter
282	decision
283	now
284	bed
285	should
286	crime
287	argue
288	particular
289	word
290	lose
291	measure
292	involve
293	usually
294	mean
295	pick
296	natural
297	wind
298	ok
299	own
300	loss
301	develop
302	growth
303	ahead
304	collection
305	pattern
306	politics
307	assume
308	picture
309	evening
310	outside
311	daughter
312	whom
313	those
314	our
315	single
316	rather
317	during
318	party
319	add
320	carry
321	some
322	if
323	itself
324	people
325	cultural
326	only
327	each
328	like
329	development
330	about
331	artist
332	who
333	lay
334	floor
335	billion
336	recently
337	stop
338	win
339	show
340	there
341	toward
342	kind
343	probably
344	couple
345	television
346	yard
347	establish
348	woman
349	rest
350	through
351	physical
352	floor
353	suddenly
354	friend
355	agency
356	finish
357	really
358	tough
359	marriage
360	democratic
361	under
362	down
363	item
364	east
365	model
366	by
367	part
368	whose
369	seem
370	response
371	without
372	man
373	line
374	point
375	commercial
376	future
377	song
378	office
379	born
380	speech
381	check
382	provide
383	become
384	least
385	performance
386	professor
387	then
388	include
389	hundred
390	science
391	think
392	reflect
393	choose
394	wife
395	modern
396	truth
397	word
398	support
399	kitchen
400	lot
\.


--
-- Data for Name: relation_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_21 (customer_id, contact_no) FROM stdin;
101	short
101	time
102	list
102	their
103	find
104	ready
104	natural
105	statement
106	score
107	yard
108	scientist
109	national
109	loss
110	career
111	them
111	low
112	art
113	sea
114	although
115	discussion
116	party
117	bed
117	discussion
118	capital
118	agent
119	hard
120	land
121	strategy
121	still
122	phone
123	already
124	land
124	reason
125	care
125	bar
126	medical
127	because
127	have
128	than
128	foreign
129	fact
129	evening
130	doctor
131	floor
131	lay
132	task
132	hand
133	mission
134	continue
134	well
135	trade
135	report
136	economic
136	prevent
137	manager
138	always
139	sea
139	government
140	finish
141	organization
142	account
143	control
144	sister
144	common
145	my
145	camera
146	single
146	town
147	but
147	within
148	example
149	pretty
150	whose
150	suffer
151	yes
152	art
153	between
154	out
155	close
156	measure
156	help
157	likely
157	community
158	sing
158	but
159	Congress
159	contain
160	worker
161	people
162	assume
162	official
163	morning
164	that
164	quickly
165	plan
165	go
166	trade
167	none
168	beautiful
169	bring
169	among
170	manager
171	someone
171	kind
172	term
173	attention
173	party
174	be
175	field
176	clear
177	now
178	interview
179	charge
179	affect
180	itself
180	grow
181	west
181	think
182	beautiful
182	quickly
183	enough
183	near
184	probably
185	either
186	say
186	like
187	effort
188	inside
188	rise
189	discussion
189	style
190	game
191	very
192	among
193	continue
193	it
194	issue
194	Democrat
195	station
195	as
196	strategy
196	street
197	anything
198	prove
199	TV
200	star
201	while
202	recent
203	include
204	follow
205	challenge
205	price
206	between
207	nothing
208	describe
208	so
209	compare
210	join
210	local
211	town
212	data
213	save
213	west
214	even
215	hotel
215	add
216	Republican
217	herself
217	feel
218	physical
218	support
219	kitchen
219	our
220	reflect
221	drug
221	upon
222	purpose
222	range
223	responsibility
223	model
224	however
224	live
225	fly
225	fund
226	five
227	think
228	turn
228	effect
229	position
229	spend
230	stop
230	particular
231	scene
231	range
232	professor
233	image
233	budget
234	sign
234	test
235	break
236	collection
236	response
237	pressure
237	term
238	we
239	cut
239	return
240	building
241	argue
241	purpose
242	TV
243	within
243	price
244	pretty
244	area
245	effect
246	at
247	themselves
248	book
248	such
249	task
249	case
250	maintain
250	religious
251	data
251	meeting
252	deal
253	thought
253	develop
254	three
254	tell
255	become
256	move
257	eight
258	direction
259	thank
260	pressure
261	interest
262	significant
263	by
264	grow
265	movie
265	which
266	anyone
267	amount
267	author
268	side
269	environmental
269	mission
270	skin
270	herself
271	brother
272	source
273	while
273	technology
274	daughter
275	where
276	grow
277	my
277	field
278	east
279	color
279	street
280	must
280	manager
281	it
281	really
282	admit
282	rate
283	guess
284	relationship
285	treat
285	hotel
286	some
286	few
287	these
287	bad
288	black
288	son
289	ball
289	media
290	blue
291	federal
292	and
293	human
294	include
294	family
295	choose
296	very
297	top
297	hear
298	whether
298	black
299	particular
299	of
300	nothing
300	avoid
301	ability
302	reality
302	exist
303	data
304	list
304	table
305	you
306	international
306	member
307	care
307	at
308	point
308	same
309	theory
310	leader
310	law
311	relationship
311	father
312	here
313	rule
314	business
315	method
316	involve
317	air
318	beat
318	bank
319	card
319	feeling
320	inside
321	human
321	new
322	home
322	budget
323	evening
323	industry
324	body
324	bad
325	argue
326	state
327	play
327	accept
328	animal
329	look
330	protect
331	minute
332	someone
332	large
333	save
334	interview
335	happen
336	seven
336	check
337	present
338	decide
339	either
340	protect
340	bring
341	thousand
341	inside
342	field
343	detail
344	tree
344	far
345	new
345	clear
346	window
347	paper
348	career
349	actually
349	stop
350	early
350	trouble
351	form
351	room
352	wife
352	cup
353	party
354	step
354	meeting
355	minute
355	guess
356	art
357	wife
358	some
359	west
359	everyone
360	and
361	family
361	car
362	enough
363	environmental
364	public
364	list
365	foot
366	mouth
366	wide
367	cover
368	decade
369	trouble
369	station
370	seat
370	sort
371	early
372	he
373	rock
374	spend
375	sure
375	PM
376	born
377	represent
377	town
378	suggest
379	represent
380	big
380	report
381	cold
381	painting
382	song
382	minute
383	address
383	draw
384	quickly
385	however
386	speak
386	meeting
387	late
387	become
388	fill
389	hospital
389	arm
390	building
390	floor
391	young
391	rather
392	customer
392	easy
393	country
393	or
394	may
395	indeed
395	break
396	everyone
396	alone
397	site
398	see
399	husband
399	specific
400	western
400	article
\.


--
-- Data for Name: relation_22; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_22 (primecustomer_id, renewal_date) FROM stdin;
201	president
202	after
203	pull
204	those
205	station
206	person
207	huge
208	event
209	usually
210	reveal
211	everybody
212	sign
213	also
214	rock
215	determine
216	firm
217	model
218	employee
219	trip
220	approach
221	behind
222	over
223	food
224	cold
225	attack
226	energy
227	government
228	available
229	so
230	kid
231	fire
232	give
233	both
234	lose
235	team
236	southern
237	arm
238	notice
239	former
240	west
241	likely
242	rate
243	against
244	option
245	his
246	likely
247	success
248	perform
249	them
250	drug
251	continue
252	Republican
253	each
254	involve
255	present
256	price
257	style
258	American
259	front
260	woman
261	situation
262	drive
263	two
264	visit
265	success
266	case
267	happy
268	onto
269	quickly
270	face
271	study
272	part
273	shoulder
274	school
275	lay
276	today
277	tend
278	try
279	available
280	service
281	situation
282	control
283	including
284	try
285	carry
286	foot
287	all
288	investment
289	beautiful
290	statement
291	short
292	program
293	focus
294	capital
295	include
296	indicate
297	rock
298	break
299	father
300	than
\.


--
-- Data for Name: relation_23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_23 (primecustomer_id, subscription_addons) FROM stdin;
201	leader
201	glass
201	family
201	share
202	point
203	often
204	interview
204	station
204	will
204	manager
205	because
205	protect
205	past
206	those
206	note
207	weight
207	how
208	early
209	people
209	dream
210	bar
210	who
210	fish
211	thus
211	it
212	behavior
212	give
212	feeling
212	teach
213	agreement
213	change
214	senior
214	speech
214	election
215	perhaps
215	degree
215	lay
215	relationship
216	federal
216	image
216	ready
217	knowledge
217	establish
218	nothing
218	short
218	change
218	moment
219	like
220	inside
221	theory
221	decision
221	expert
221	reason
222	anyone
223	public
223	similar
223	soon
223	campaign
224	career
224	music
224	billion
224	develop
225	meet
225	even
226	staff
227	serious
227	employee
227	hand
227	listen
228	current
229	carry
230	address
231	cause
232	skill
233	top
233	class
234	foot
235	section
236	than
236	make
236	charge
237	act
237	speak
238	walk
239	boy
239	human
239	we
239	drug
240	expect
240	stage
241	people
241	rest
242	represent
242	amount
242	military
242	theory
243	affect
243	note
243	upon
244	modern
244	democratic
244	born
245	current
245	leave
246	film
246	drive
247	catch
247	watch
247	hand
247	shake
248	process
248	general
248	anyone
248	vote
249	suggest
249	letter
250	start
250	list
251	value
251	outside
251	meeting
252	attack
252	ask
252	that
253	attention
254	process
255	wide
256	box
256	natural
257	threat
257	look
257	air
257	since
258	number
258	do
259	kid
259	about
260	discuss
260	newspaper
260	baby
261	standard
262	finally
262	beautiful
262	contain
262	page
263	a
263	color
263	manage
263	throughout
264	industry
264	goal
264	woman
264	organization
265	moment
265	hour
265	carry
266	owner
267	note
267	maintain
267	night
268	real
268	board
268	hour
268	arm
269	everything
270	Mrs
270	safe
270	form
271	piece
271	reach
271	night
271	late
272	window
272	medical
273	among
273	get
273	hope
273	between
274	minute
275	ever
275	majority
275	too
276	beyond
276	guy
277	he
277	explain
277	top
278	relationship
278	ever
278	shoulder
278	else
279	special
280	many
281	development
282	suggest
282	fear
282	Democrat
282	include
283	guess
283	food
283	young
283	support
284	dog
285	per
286	argue
286	beautiful
286	door
286	tend
287	wrong
287	figure
287	series
288	himself
288	tend
288	note
288	upon
289	space
290	decide
291	husband
292	hope
292	concern
292	rather
293	eat
293	forward
293	power
294	room
295	yeah
295	big
295	contain
295	but
296	money
297	start
297	every
297	line
298	now
298	body
298	get
298	husband
299	draw
300	now
\.


--
-- Data for Name: relation_24; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_24 (businesscustomer_id, company_name) FROM stdin;
301	both
302	it
303	environmental
304	continue
305	school
306	production
307	ready
308	increase
309	prepare
310	yet
311	where
312	top
313	beat
314	cut
315	discussion
316	north
317	authority
318	government
319	choice
320	hold
321	focus
322	painting
323	respond
324	message
325	society
326	arrive
327	consumer
328	treat
329	area
330	cold
331	several
332	always
333	cold
334	remember
335	notice
336	magazine
337	investment
338	whose
339	street
340	common
341	from
342	nor
343	trade
344	someone
345	wonder
346	player
347	whose
348	history
349	hair
350	family
351	happy
352	ask
353	Republican
354	wear
355	action
356	history
357	drug
358	sign
359	fund
360	water
361	international
362	short
363	way
364	bar
365	hand
366	soldier
367	generation
368	number
369	assume
370	live
371	value
372	Democrat
373	there
374	west
375	usually
376	surface
377	southern
378	act
379	cold
380	commercial
381	middle
382	onto
383	after
384	notice
385	improve
386	environmental
387	us
388	meeting
389	but
390	low
391	ahead
392	up
393	quite
394	but
395	century
396	camera
397	show
398	wide
399	everyone
400	campaign
\.


--
-- Data for Name: relation_25; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_25 (employee_id, email, password_hash, employee_no) FROM stdin;
401	agallagher@example.com	environment	who
402	brittany65@example.net	old	price
403	cameron10@example.org	may	age
404	jeremyrodriguez@example.net	white	mother
405	fwilson@example.org	available	be
406	samantha37@example.com	lose	full
407	ekirby@example.com	region	least
408	wesleyjoyce@example.net	whose	its
409	qmcdonald@example.org	after	threat
410	dudleyalan@example.org	call	everybody
411	mmiller@example.com	network	up
412	jacksonjoseph@example.com	suggest	cut
413	christopher15@example.net	election	treat
414	rharris@example.org	analysis	sound
415	lbrown@example.net	line	set
416	kyle14@example.org	daughter	exactly
417	austincuevas@example.com	little	maintain
418	twilliams@example.net	maintain	behavior
419	atkinsontiffany@example.org	even	inside
420	smithjustin@example.org	quickly	gun
421	kellybrett@example.com	beautiful	both
422	gmills@example.org	law	miss
423	walshstacey@example.net	college	language
424	smithdavid@example.net	thought	such
425	jonathan35@example.com	easy	hard
426	wlee@example.org	national	conference
427	andersonjoseph@example.org	memory	certainly
428	ldelgado@example.com	knowledge	else
429	okelly@example.net	reflect	response
430	jamesmiddleton@example.com	character	customer
431	smithpeter@example.org	his	walk
432	ashleynichols@example.com	store	dog
433	ssolomon@example.net	language	test
434	tjones@example.org	provide	at
435	kschneider@example.com	at	step
436	ramirezmelissa@example.net	fill	evening
437	kristindavenport@example.org	building	language
438	hgonzalez@example.org	window	challenge
439	elliottkristina@example.org	describe	chair
440	michaelbarber@example.org	my	happy
441	benjaminjackson@example.net	relate	provide
442	yhobbs@example.org	produce	provide
443	melissalam@example.org	successful	important
444	mahoneysarah@example.net	total	upon
445	madisonbullock@example.org	increase	education
446	bcohen@example.net	you	woman
447	christina43@example.org	measure	might
448	livingstonbrett@example.com	think	back
449	stephanie51@example.net	only	painting
450	jenningspatrick@example.org	always	soon
451	xburch@example.org	gas	feeling
452	lewispaul@example.com	century	talk
453	zgonzalez@example.org	per	hit
454	brianmullins@example.net	short	general
455	nancy16@example.com	wait	first
456	staceysandoval@example.org	film	check
457	christopher35@example.org	environment	system
458	martinezkevin@example.com	approach	PM
459	jared74@example.net	high	television
460	david46@example.org	hit	ok
461	tonyjones@example.com	food	cost
462	sharon50@example.net	leader	first
463	caitlynshields@example.net	his	write
464	nathaniel41@example.org	all	no
465	danielhernandez@example.com	practice	miss
466	perkinsmichael@example.com	very	relationship
467	martintracy@example.net	Congress	guy
468	nmoore@example.com	price	budget
469	qwade@example.org	capital	TV
470	tuckerdawn@example.com	them	feel
471	scarter@example.org	instead	lot
472	ftrevino@example.org	way	turn
473	sanchezhailey@example.com	thing	care
474	george74@example.net	discover	table
475	martintyler@example.com	establish	assume
476	charles03@example.com	friend	husband
477	bcarter@example.com	always	perform
478	ramirezvictoria@example.net	standard	whether
479	jessicajackson@example.com	brother	person
480	idavila@example.org	attention	world
481	nicholas98@example.net	quality	then
482	pbrown@example.org	near	president
483	tmason@example.com	middle	I
484	samanthaguerrero@example.com	stuff	yeah
485	ganderson@example.org	mind	born
486	krystal54@example.com	here	fish
487	lopezbrandi@example.com	few	less
488	brandongonzales@example.net	two	technology
489	patrickking@example.net	audience	writer
490	gtodd@example.org	research	day
491	ymcintosh@example.com	probably	assume
492	todd22@example.net	data	movie
493	uhanson@example.org	over	hotel
494	katrinabowen@example.net	reflect	cultural
495	adam19@example.com	low	event
496	margaretcobb@example.org	form	activity
497	thomasleon@example.net	fund	lawyer
498	william62@example.org	such	well
499	nrogers@example.net	whether	sign
500	agibson@example.org	back	together
701	cbrowning@example.org	box	book
702	jonlynch@example.com	health	floor
703	nblanchard@example.com	house	skill
704	iwhite@example.org	forward	sea
705	tapianicole@example.org	around	sign
706	jessica07@example.org	more	above
707	riddlemariah@example.net	debate	play
708	williamskim@example.com	music	goal
709	dawsonjacqueline@example.org	store	pretty
710	masonrichards@example.org	door	truth
711	henrybrandon@example.com	bad	consumer
712	deborah99@example.com	second	any
713	sking@example.org	finally	drug
714	ernest13@example.net	movie	control
715	smithtammy@example.net	citizen	skin
716	sergio49@example.org	whom	hour
717	boylecarolyn@example.net	whatever	government
718	deborahjohns@example.com	paper	window
719	traci37@example.org	war	gas
720	macdonaldbreanna@example.com	onto	senior
721	lweber@example.net	structure	edge
722	jfrey@example.com	campaign	seven
723	steve59@example.net	argue	song
724	victor92@example.com	drive	past
725	vmartinez@example.net	federal	old
726	yolandaharmon@example.org	former	attention
727	jacksonpeggy@example.com	happen	discussion
728	brandonmartin@example.com	various	toward
729	chanangela@example.org	pretty	much
730	christine49@example.com	executive	help
731	justin64@example.com	each	police
732	qorr@example.org	necessary	peace
733	virginia31@example.com	possible	financial
734	sean66@example.com	music	type
735	jacqueline35@example.com	discussion	like
736	kfoster@example.net	guess	building
737	brandinelson@example.org	become	pick
738	qjohnson@example.net	day	charge
739	suegomez@example.com	fly	camera
740	dylanhart@example.org	again	front
741	crichardson@example.org	anyone	economy
742	logan86@example.org	author	watch
743	anthonyalexander@example.com	order	forget
744	harrispeggy@example.com	fly	cell
745	ashleyhernandez@example.org	structure	effort
746	kimberlyjones@example.net	coach	method
747	jaredcoffey@example.org	whole	community
748	fdavis@example.com	real	already
749	harrisbryan@example.net	of	clear
750	jeffrey01@example.org	fall	force
751	andersonmegan@example.net	read	sing
752	zbeltran@example.net	artist	great
753	contrerastheresa@example.net	successful	past
754	danielle57@example.com	move	language
755	karen12@example.org	from	unit
756	pbrown@example.com	establish	bed
757	lamberica@example.net	we	around
758	uball@example.net	method	why
759	loganharris@example.org	pay	born
760	hurstaaron@example.com	after	early
761	mdavidson@example.com	visit	environment
762	hcarter@example.net	force	soldier
763	patrick38@example.net	number	cause
764	lisa46@example.net	same	allow
765	jflores@example.net	standard	instead
766	billy70@example.org	rock	father
767	dthompson@example.com	send	industry
768	lori23@example.net	nor	if
769	fdavis@example.org	against	apply
770	vanessawilliamson@example.net	gas	wear
771	btorres@example.net	tax	bit
772	andrew26@example.com	run	visit
773	fergusondonna@example.net	director	sure
774	meganwilliams@example.com	ready	whole
775	samanthalewis@example.net	matter	serious
776	webbpam@example.org	center	treatment
777	marialopez@example.net	age	on
778	bridgesstephanie@example.net	finally	foreign
779	melissa02@example.org	baby	suddenly
780	olsenstacy@example.com	far	them
781	derrickpittman@example.net	job	candidate
782	shawnbradley@example.com	them	affect
783	imarshall@example.net	positive	factor
784	kimsamantha@example.net	democratic	forward
785	tara86@example.org	send	any
786	jeremythomas@example.org	better	hour
787	randolphlisa@example.net	task	method
788	upennington@example.org	camera	forget
789	beth05@example.org	cause	when
790	brandon52@example.net	traditional	institution
791	glassgabriela@example.net	single	candidate
792	burnscole@example.com	trip	wrong
793	dylanday@example.org	hard	three
794	salazarjames@example.net	the	response
795	cdavidson@example.com	possible	ball
796	vickiejohnson@example.net	alone	popular
797	bridgethenderson@example.net	four	have
798	xrobertson@example.net	break	outside
799	danielsrachel@example.net	plant	compare
800	wbell@example.org	general	himself
901	griffithcolleen@example.org	effect	open
902	mooremark@example.com	life	court
903	kelly72@example.org	board	simple
904	erodriguez@example.net	research	individual
905	fernando78@example.com	professional	yet
906	rangelchelsea@example.com	probably	health
907	edwin01@example.net	radio	source
908	xlittle@example.com	program	live
909	hector43@example.net	attention	administration
910	pdixon@example.org	consider	heart
911	lbailey@example.org	develop	present
912	williamsmelanie@example.net	seat	protect
913	fhamilton@example.org	purpose	visit
914	bgordon@example.com	him	notice
915	robertsonandrew@example.org	condition	couple
916	aadams@example.org	writer	reflect
917	austin23@example.net	lead	program
918	odean@example.com	result	board
919	sherimurray@example.org	consumer	knowledge
920	carl28@example.org	whose	score
921	kari38@example.com	end	free
922	yromero@example.org	else	civil
923	alisha26@example.net	get	finally
924	camerondonna@example.com	young	event
925	stevenschloe@example.net	nor	yard
926	stevensloan@example.net	usually	share
927	rogerrobles@example.com	real	senior
928	bryanlee@example.net	thank	half
929	henrywilson@example.com	worker	get
930	qwallace@example.com	manager	reality
931	yjackson@example.net	soon	above
932	hernandezandrew@example.org	people	discover
933	michaelglenn@example.com	condition	interesting
934	davismatthew@example.com	letter	become
935	leekristina@example.org	your	traditional
936	weisswilliam@example.org	government	cover
937	psavage@example.com	military	pretty
938	christopher93@example.com	yourself	message
939	sherriprice@example.com	computer	walk
940	jenniferallen@example.net	compare	voice
941	justindiaz@example.com	they	happy
942	thomaspeterson@example.com	deep	age
943	jacobsrobert@example.com	real	fly
944	anthony10@example.com	treat	catch
945	penningtonjill@example.net	source	inside
946	nanderson@example.org	yes	beautiful
947	keithcombs@example.net	statement	hard
948	reedchristopher@example.com	close	because
949	johnhouston@example.net	without	network
950	ashleydelgado@example.com	positive	become
951	lwolf@example.com	argue	box
952	kimberlylawson@example.org	strategy	compare
953	hfitzpatrick@example.com	start	chance
954	nicholasjackson@example.com	really	old
955	williambrooks@example.net	center	culture
956	garciaalex@example.com	throw	guy
957	hudsonbrian@example.com	rock	lot
958	mjones@example.com	main	later
959	wjohnson@example.org	rather	more
960	melissa20@example.org	outside	fly
961	tammyoliver@example.com	what	treat
962	ltran@example.com	art	although
963	perezlaurie@example.org	tough	much
964	matthew01@example.com	stay	outside
965	james94@example.org	management	source
966	calhounnathan@example.net	difficult	home
967	hurstmichelle@example.net	idea	drug
968	ncampbell@example.net	since	goal
969	sandra69@example.net	could	appear
970	charles63@example.com	view	it
971	lanejames@example.org	represent	car
972	othomas@example.com	drive	space
973	darrylerickson@example.com	task	although
974	hickswilliam@example.org	certain	team
975	mcmahonmichelle@example.com	war	commercial
976	dhall@example.org	water	rule
977	njackson@example.org	popular	need
978	matthew62@example.net	network	value
979	jenniferhoward@example.net	everybody	same
980	dennis07@example.org	partner	record
981	colleenolson@example.net	member	food
982	henryamanda@example.net	itself	compare
983	marshallandrea@example.com	they	baby
984	watsondwayne@example.net	tend	follow
985	qbrown@example.net	wind	term
986	frank04@example.net	start	public
987	thomaslaura@example.net	fight	condition
988	wrightamy@example.net	though	scientist
989	hestrada@example.org	finish	address
990	miguel83@example.org	measure	get
991	nancyjames@example.org	program	usually
992	robertanderson@example.org	add	big
993	chelsey06@example.org	piece	reduce
994	joshua30@example.com	candidate	grow
995	mooreemily@example.net	activity	yourself
996	wramsey@example.net	enter	find
997	piercestephanie@example.com	next	red
998	robersonbenjamin@example.org	into	else
999	heatherbutler@example.net	head	performance
1000	thomasdiana@example.com	special	summer
\.


--
-- Data for Name: relation_26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_26 (corporateemployee_id, email, password_hash, employee_no, office_site) FROM stdin;
501	staceyowen@example.net	minute	return	meeting
502	johnstonisaiah@example.com	spend	later	any
503	ogutierrez@example.org	investment	notice	add
504	martinmark@example.org	by	spend	price
505	rosstricia@example.org	remain	best	program
506	vcoffey@example.net	picture	throughout	realize
507	lwebster@example.org	ten	buy	capital
508	hbauer@example.com	trouble	boy	drop
509	kayleejohnson@example.org	score	position	break
510	qgriffin@example.org	civil	positive	go
511	brobinson@example.net	back	power	effect
512	golsen@example.org	style	mind	consider
513	brandysanders@example.com	just	hotel	model
514	vking@example.net	seem	indeed	shoulder
515	robert13@example.net	effort	you	stock
516	vsanders@example.org	certain	step	able
517	brewerkimberly@example.net	education	material	born
518	brittanycastro@example.net	look	none	game
519	bschmidt@example.org	others	beautiful	son
520	danielluna@example.com	first	sea	call
521	xrodriguez@example.com	who	surface	home
522	ujones@example.org	quite	face	his
523	zramirez@example.org	quickly	middle	eat
524	cochoa@example.org	result	once	citizen
525	justinwilson@example.net	economic	always	especially
526	erose@example.org	audience	character	interesting
527	jordankelly@example.net	become	maintain	require
528	jonathan79@example.net	enough	test	charge
529	kpoole@example.com	example	water	development
530	xmanning@example.com	political	this	region
531	mbrooks@example.com	support	woman	move
532	stevenwright@example.org	message	couple	official
533	james84@example.org	themselves	read	bring
534	francis50@example.org	agency	suffer	involve
535	katie67@example.org	send	evening	lot
536	hopkinstimothy@example.com	second	five	each
537	panderson@example.net	Democrat	exactly	music
538	rachelgonzalez@example.net	see	be	real
539	rortiz@example.com	put	American	important
540	brownheather@example.net	PM	four	particular
541	franklinlisa@example.net	pass	media	I
542	jfritz@example.com	with	might	position
543	steve15@example.org	tax	direction	Mr
544	cathyrussell@example.org	seek	sometimes	natural
545	gouldsheila@example.net	court	let	doctor
546	nicolecampbell@example.com	garden	power	style
547	cbates@example.com	oil	than	chair
548	matthew73@example.com	stuff	about	build
549	michael11@example.org	already	region	wrong
550	sarah46@example.com	beat	yet	seven
551	opatrick@example.com	research	main	month
552	gonzalezlauren@example.net	gas	eight	cut
553	tperkins@example.net	nation	deal	room
554	lroberts@example.org	child	official	music
555	jamesdiana@example.net	so	a	debate
556	ifields@example.com	contain	establish	writer
557	millerveronica@example.org	pretty	break	left
558	mercerandrew@example.org	positive	exactly	financial
559	walter36@example.org	actually	half	ahead
560	kimberlydawson@example.net	show	none	dinner
561	butlerbenjamin@example.com	probably	author	under
562	vmartin@example.net	compare	plan	it
563	brittanymurray@example.com	provide	short	which
564	carla38@example.com	moment	enjoy	whole
565	austingerald@example.org	green	foreign	radio
566	amber28@example.org	hair	require	force
567	james91@example.com	cover	people	right
568	michaelbush@example.com	huge	lot	human
569	cstewart@example.com	quality	notice	student
570	mark09@example.org	fast	nor	during
571	villarrealdawn@example.net	true	adult	heart
572	thomaswalker@example.com	science	president	cover
573	aligerald@example.com	financial	his	knowledge
574	alicia17@example.com	woman	for	entire
575	sean57@example.com	class	several	edge
576	sullivanbryan@example.net	address	billion	see
577	peter83@example.net	surface	understand	poor
578	ibarnes@example.com	put	big	miss
579	qherman@example.org	long	beyond	few
580	cheyennemills@example.com	there	growth	measure
581	joshuaerickson@example.com	budget	upon	entire
582	jacquelinecurry@example.com	someone	discover	water
583	jamiedonaldson@example.org	learn	meet	maybe
584	burnsbetty@example.org	man	employee	find
585	myersjamie@example.net	story	a	question
586	xjones@example.com	important	none	same
587	anthony21@example.org	deal	for	protect
588	palvarado@example.org	image	take	wait
589	samantha03@example.org	amount	answer	hotel
590	gerald21@example.com	knowledge	recognize	war
591	sandramorris@example.net	apply	report	wish
592	amy55@example.net	trip	early	learn
593	espinozathomas@example.com	military	white	million
594	hcooper@example.org	forward	movie	institution
595	llove@example.com	hundred	field	somebody
596	tracymeyers@example.org	space	work	fast
597	mitchellcollins@example.org	start	nature	unit
598	adamrichardson@example.net	moment	make	three
599	carolhuang@example.org	experience	friend	perform
600	fmaxwell@example.net	agency	rich	improve
601	davismatthew@example.net	level	control	not
602	beverlywilson@example.net	lead	phone	step
603	jensensandra@example.com	mean	pass	large
604	meadowscathy@example.net	own	make	area
605	landerson@example.org	sound	moment	number
606	nicolethompson@example.net	fine	analysis	person
607	youngnancy@example.net	media	fine	tend
608	gchase@example.com	your	career	then
609	cjackson@example.com	traditional	computer	challenge
610	michaelsmith@example.net	exist	even	remember
611	bscott@example.org	prevent	near	me
612	rebecca16@example.com	hear	remain	produce
613	oburton@example.net	part	party	citizen
614	smooney@example.org	reflect	network	piece
615	parkerjeffrey@example.org	appear	break	land
616	eestes@example.net	put	police	firm
617	hillchristine@example.net	employee	continue	drop
618	byrdsandra@example.net	become	clear	big
619	anthony82@example.com	apply	seek	real
620	christopherhill@example.org	ground	nature	upon
621	william11@example.com	race	mean	hit
622	daisy25@example.net	true	identify	crime
623	savannah72@example.org	how	feeling	turn
624	dlopez@example.com	matter	laugh	stop
625	jimenezalexandra@example.org	both	how	she
626	kmurphy@example.com	thousand	cold	around
627	qwebster@example.net	drop	again	budget
628	bperez@example.org	stand	defense	which
629	kbarrett@example.org	company	article	offer
630	travisanderson@example.com	often	could	finish
631	davisjulie@example.org	much	crime	democratic
632	erikawalker@example.net	news	their	PM
633	fnguyen@example.net	school	hit	deal
634	gutierrezrobert@example.com	pattern	alone	break
635	katiehays@example.org	right	suffer	approach
636	heatherfisher@example.com	great	join	personal
637	kayleebriggs@example.org	second	week	suddenly
638	rodgersmary@example.com	own	just	herself
639	thomasjustin@example.org	soon	couple	paper
640	xmartinez@example.org	try	phone	great
641	salinasjohn@example.com	company	support	peace
642	ofischer@example.com	charge	civil	Republican
643	mckinneykevin@example.net	edge	let	gun
644	hallerin@example.com	house	about	space
645	tatenatalie@example.com	floor	no	message
646	ujohnston@example.com	middle	difference	raise
647	tanyascott@example.net	senior	my	region
648	cassandra16@example.com	against	onto	these
649	christophervargas@example.net	college	eight	data
650	ericwhite@example.org	design	forward	program
651	thomasmaria@example.org	across	person	for
652	amandawilliams@example.net	team	anything	more
653	adriennebailey@example.com	industry	couple	operation
654	iduran@example.net	tree	worker	say
655	briggspaul@example.com	top	sign	similar
656	holmesamy@example.com	talk	note	hospital
657	fgibbs@example.net	beyond	fall	economy
658	snydermichelle@example.net	all	and	conference
659	brookestevenson@example.net	fish	hundred	hear
660	crawforddeborah@example.org	parent	perform	agree
661	davidrichards@example.org	their	game	fish
662	alexanderjohnston@example.net	place	more	city
663	russellcourtney@example.com	prepare	art	program
664	bennetttrevor@example.net	most	four	get
665	tmoore@example.net	light	pay	activity
666	aliciaanderson@example.com	of	compare	work
667	hughesdestiny@example.com	day	kitchen	while
668	rachel80@example.com	power	road	late
669	karenchambers@example.com	social	but	reason
670	emilypatton@example.net	individual	population	event
671	travisjohnson@example.net	moment	store	statement
672	christina63@example.org	pick	age	particularly
673	veronicacannon@example.net	per	daughter	option
674	xkey@example.org	product	impact	despite
675	feliciafreeman@example.org	bar	approach	of
676	hulltimothy@example.net	Mr	attorney	relate
677	jeffrey90@example.com	see	name	few
678	joel09@example.org	prove	glass	special
679	vhamilton@example.org	real	they	his
680	gutierrezdaniel@example.com	measure	player	nature
681	lawrence42@example.com	road	sing	make
682	sandra17@example.com	with	most	sign
683	brownashley@example.com	eat	box	environmental
684	ian52@example.org	weight	two	teacher
685	lesliemartin@example.net	off	would	mention
686	beckyallen@example.net	region	ten	task
687	fordtravis@example.net	however	you	stay
688	raythornton@example.com	perform	admit	idea
689	barbara46@example.com	organization	check	Congress
690	jenniferjackson@example.net	bed	data	name
691	mmoreno@example.org	yeah	decide	way
692	dkent@example.com	need	natural	collection
693	donald85@example.org	everything	doctor	program
694	christian60@example.org	girl	prevent	law
695	eroberts@example.com	war	natural	this
696	christy28@example.net	my	thought	research
697	adeleon@example.net	human	concern	indeed
698	daniel97@example.com	sister	and	even
699	john98@example.org	central	reflect	standard
700	jonathan01@example.net	blood	design	least
\.


--
-- Data for Name: relation_27; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_27 (engineer_id, level) FROM stdin;
601	involve
602	dark
603	evening
604	check
605	every
606	check
607	step
608	beyond
609	reduce
610	quite
611	word
612	yes
613	far
614	education
615	exist
616	find
617	such
618	organization
619	market
620	often
621	whatever
622	type
623	important
624	stage
625	camera
626	might
627	more
628	trade
629	thing
630	some
631	contain
632	break
633	charge
634	part
635	attention
636	mouth
637	look
638	cover
639	Republican
640	fish
641	southern
642	specific
643	just
644	soon
645	law
646	lead
647	hand
648	most
649	international
650	never
651	writer
652	every
653	feeling
654	state
655	as
656	indeed
657	much
658	girl
659	star
660	share
661	radio
662	matter
663	scene
664	house
665	far
666	measure
667	politics
668	state
669	dream
670	citizen
671	less
672	ability
673	most
674	eye
675	candidate
676	crime
677	toward
678	today
679	walk
680	suffer
681	official
682	professor
683	whom
684	simply
685	feeling
686	spring
687	she
688	sea
689	similar
690	themselves
691	reality
692	water
693	smile
694	somebody
695	mind
696	light
697	yet
698	condition
699	rather
700	receive
\.


--
-- Data for Name: relation_28; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_28 (supportagent_id, queue) FROM stdin;
701	exactly
702	say
703	star
704	along
705	sing
706	then
707	give
708	state
709	group
710	agree
711	weight
712	off
713	kitchen
714	onto
715	my
716	fire
717	just
718	dinner
719	service
720	poor
721	garden
722	position
723	politics
724	radio
725	ever
726	air
727	wide
728	for
729	traditional
730	notice
731	option
732	conference
733	science
734	peace
735	Congress
736	admit
737	general
738	price
739	family
740	customer
741	real
742	wait
743	image
744	plant
745	public
746	three
747	suddenly
748	interesting
749	sea
750	entire
751	statement
752	two
753	what
754	production
755	wait
756	forward
757	central
758	course
759	blood
760	other
761	happen
762	deal
763	simply
764	score
765	energy
766	population
767	especially
768	employee
769	toward
770	meet
771	always
772	world
773	upon
774	call
775	compare
776	build
777	good
778	management
779	career
780	bill
781	from
782	assume
783	wait
784	reason
785	morning
786	assume
787	ever
788	energy
789	whatever
790	parent
791	suddenly
792	investment
793	these
794	open
795	yes
796	free
797	generation
798	economic
799	Democrat
800	blue
\.


--
-- Data for Name: relation_29; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_29 (fulfillmentassociate_id, email, password_hash, employee_no, shift) FROM stdin;
801	manderson@example.org	pattern	most	discussion
802	harrislisa@example.net	yet	present	Democrat
803	kmcconnell@example.com	with	system	wall
804	hhamilton@example.net	provide	maybe	ability
805	grantdonna@example.org	loss	year	local
806	janecohen@example.com	source	three	win
807	nicholsonjulia@example.com	television	into	care
808	dvalentine@example.net	anyone	sure	Democrat
809	efowler@example.net	imagine	in	keep
810	uwilson@example.net	color	bank	mouth
811	ericlopez@example.com	center	court	stand
812	wwalker@example.net	loss	through	crime
813	wpotts@example.org	might	by	room
814	johnsonchristopher@example.com	season	concern	tree
815	xharrison@example.com	system	actually	across
816	davidsimpson@example.org	yes	improve	image
817	smithsusan@example.net	reflect	word	former
818	garnerangelica@example.com	image	blood	century
819	meghanbooker@example.org	much	record	one
820	mayomichael@example.org	week	window	service
821	cameronglenn@example.com	whether	off	better
822	david14@example.com	by	detail	will
823	gardnerperry@example.org	role	public	memory
824	devinroy@example.com	single	quickly	keep
825	jhernandez@example.org	bad	store	each
826	eliu@example.com	medical	can	eat
827	gloria23@example.com	music	decision	law
828	mckenzie20@example.com	American	little	those
829	mariahgarcia@example.net	contain	blue	yes
830	jeffreylee@example.org	throughout	central	letter
831	wgraves@example.org	order	eat	Republican
832	michaelgonzales@example.org	affect	natural	view
833	lancecampbell@example.org	gun	avoid	yes
834	harveyshawn@example.com	above	pick	marriage
835	michaeldiaz@example.net	case	teacher	paper
836	katie53@example.com	range	threat	point
837	willismichael@example.org	Mrs	at	card
838	shawn78@example.org	question	seven	window
839	olivia47@example.org	develop	once	bar
840	gonzalesdavid@example.org	certain	leader	brother
841	samuelgalvan@example.org	group	occur	marriage
842	ramirezbryan@example.org	product	fill	happy
843	yhall@example.net	sing	direction	glass
844	vmartin@example.net	fly	option	become
845	logantroy@example.com	compare	wide	discussion
846	justinbryant@example.com	other	but	hair
847	angela30@example.com	yourself	manager	up
848	fordjose@example.org	save	site	west
849	pwang@example.com	beautiful	box	only
850	derrickgraham@example.com	skill	in	development
851	watsonshannon@example.net	turn	outside	ten
852	wrightbrian@example.org	you	bank	political
853	zachary24@example.com	sister	nothing	above
854	omoore@example.net	experience	sign	couple
855	shawn31@example.com	involve	population	think
856	morrisbrandon@example.com	keep	major	hot
857	sean63@example.com	capital	news	space
858	david23@example.net	study	foreign	improve
859	tjohnson@example.net	with	research	team
860	kayla41@example.com	product	smile	career
861	ashley81@example.org	way	trouble	company
862	corey70@example.org	film	hit	ground
863	georgewebb@example.net	I	successful	market
864	jameshurley@example.net	occur	trip	account
865	holly43@example.com	management	goal	under
866	andrew88@example.net	item	television	admit
867	craigchad@example.net	explain	behind	movie
868	bartonmeagan@example.com	service	position	read
869	aglover@example.org	indicate	treat	group
870	morganbrian@example.org	high	visit	right
871	oking@example.com	to	true	understand
872	james56@example.com	line	per	generation
873	james77@example.org	position	television	dinner
874	ghanson@example.com	detail	trial	sport
875	jenniferrose@example.com	against	campaign	look
876	alananderson@example.net	spend	everything	case
877	haysmichelle@example.com	major	much	leave
878	jennajohnson@example.com	financial	not	Mr
879	fosterjames@example.org	cover	yes	in
880	jose52@example.org	leader	letter	sort
881	michelle99@example.net	draw	plant	win
882	eddie10@example.net	sport	soldier	since
883	baldwingregory@example.com	perhaps	side	assume
884	ewheeler@example.org	cultural	black	strong
885	monica62@example.net	pattern	break	argue
886	joseph85@example.org	thousand	brother	budget
887	herreraanthony@example.com	Republican	suddenly	economic
888	rhonda27@example.org	country	market	who
889	smithmichael@example.org	leader	develop	million
890	andrewsalice@example.com	again	once	skill
891	sandrapowell@example.net	pull	show	consumer
892	erica03@example.com	compare	choose	this
893	bhoward@example.org	rule	have	fight
894	gmoreno@example.org	detail	player	use
895	fritzeric@example.net	employee	every	feeling
896	tblanchard@example.net	despite	something	late
897	michelle10@example.com	hundred	include	tell
898	jamesbaldwin@example.org	college	air	experience
899	briangarcia@example.org	picture	standard	great
900	gibbstammy@example.org	doctor	also	issue
\.


--
-- Data for Name: relation_3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_3 (physicalproduct_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, role, cpu, ram_gb, carrier_lock, energy_rating) FROM stdin;
101	very	from	251	226	21	final	\N	physicalproduct	\N	\N	\N	\N
102	degree	who	412	75	275	chance	\N	physicalproduct	\N	\N	\N	\N
103	value	traditional	747	77	23	interview	\N	physicalproduct	\N	\N	\N	\N
104	cultural	protect	298	769	812	message	\N	physicalproduct	\N	\N	\N	\N
105	small	president	506	481	884	carry	\N	physicalproduct	\N	\N	\N	\N
106	soldier	create	104	514	797	really	\N	physicalproduct	\N	\N	\N	\N
107	south	ball	79	522	973	national	\N	physicalproduct	\N	\N	\N	\N
108	truth	hair	184	795	154	discuss	\N	physicalproduct	\N	\N	\N	\N
109	impact	issue	842	887	328	sense	\N	physicalproduct	\N	\N	\N	\N
110	it	for	110	727	527	themselves	\N	physicalproduct	\N	\N	\N	\N
111	lose	significant	130	916	212	guess	\N	physicalproduct	\N	\N	\N	\N
112	look	trip	559	933	740	lawyer	\N	physicalproduct	\N	\N	\N	\N
113	high	series	799	324	841	recognize	\N	physicalproduct	\N	\N	\N	\N
114	eight	skill	183	307	444	challenge	\N	physicalproduct	\N	\N	\N	\N
115	hundred	peace	50	732	883	task	\N	physicalproduct	\N	\N	\N	\N
116	different	sure	259	797	66	science	\N	physicalproduct	\N	\N	\N	\N
117	improve	all	828	441	563	during	\N	physicalproduct	\N	\N	\N	\N
118	himself	cost	555	450	872	only	\N	physicalproduct	\N	\N	\N	\N
119	although	pull	12	406	857	through	\N	physicalproduct	\N	\N	\N	\N
120	lot	newspaper	176	265	498	finish	\N	physicalproduct	\N	\N	\N	\N
121	reduce	set	813	662	956	first	\N	physicalproduct	\N	\N	\N	\N
122	area	choice	1000	585	20	few	\N	physicalproduct	\N	\N	\N	\N
123	service	room	709	364	594	my	\N	physicalproduct	\N	\N	\N	\N
124	bed	claim	608	129	142	now	\N	physicalproduct	\N	\N	\N	\N
125	perform	production	849	284	408	finally	\N	physicalproduct	\N	\N	\N	\N
126	truth	culture	177	628	92	manager	\N	physicalproduct	\N	\N	\N	\N
127	true	man	498	8	182	support	\N	physicalproduct	\N	\N	\N	\N
128	president	soon	513	915	665	people	\N	physicalproduct	\N	\N	\N	\N
129	pick	anything	953	703	655	listen	\N	physicalproduct	\N	\N	\N	\N
130	cut	every	245	321	507	however	\N	physicalproduct	\N	\N	\N	\N
131	study	expert	980	231	730	part	\N	physicalproduct	\N	\N	\N	\N
132	recent	cover	346	574	626	mean	\N	physicalproduct	\N	\N	\N	\N
133	travel	need	996	662	225	present	\N	physicalproduct	\N	\N	\N	\N
134	if	relate	944	74	782	friend	\N	physicalproduct	\N	\N	\N	\N
135	left	himself	164	524	785	save	\N	physicalproduct	\N	\N	\N	\N
136	weight	since	320	306	710	include	\N	physicalproduct	\N	\N	\N	\N
137	population	recognize	870	566	381	relationship	\N	physicalproduct	\N	\N	\N	\N
138	explain	measure	719	719	755	book	\N	physicalproduct	\N	\N	\N	\N
139	then	mention	609	88	877	third	\N	physicalproduct	\N	\N	\N	\N
140	address	everybody	919	621	984	cut	\N	physicalproduct	\N	\N	\N	\N
141	your	really	181	160	257	everything	\N	physicalproduct	\N	\N	\N	\N
142	never	movie	223	965	584	along	\N	physicalproduct	\N	\N	\N	\N
143	sound	such	507	698	404	soldier	\N	physicalproduct	\N	\N	\N	\N
144	party	officer	394	528	866	town	\N	physicalproduct	\N	\N	\N	\N
145	kitchen	management	558	748	42	shake	\N	physicalproduct	\N	\N	\N	\N
146	prove	question	828	262	644	expect	\N	physicalproduct	\N	\N	\N	\N
147	against	word	274	755	935	color	\N	physicalproduct	\N	\N	\N	\N
148	understand	couple	983	999	143	yes	\N	physicalproduct	\N	\N	\N	\N
149	lot	available	456	872	947	officer	\N	physicalproduct	\N	\N	\N	\N
150	follow	contain	995	872	392	remain	\N	physicalproduct	\N	\N	\N	\N
151	window	resource	407	169	932	call	\N	physicalproduct	\N	\N	\N	\N
152	project	that	449	130	638	deep	\N	physicalproduct	\N	\N	\N	\N
153	field	edge	983	218	123	space	\N	physicalproduct	\N	\N	\N	\N
154	decide	culture	616	547	419	arrive	\N	physicalproduct	\N	\N	\N	\N
155	line	hundred	677	303	285	four	\N	physicalproduct	\N	\N	\N	\N
156	west	trial	388	768	573	everything	\N	physicalproduct	\N	\N	\N	\N
157	his	field	983	195	542	most	\N	physicalproduct	\N	\N	\N	\N
158	thing	less	593	22	32	move	\N	physicalproduct	\N	\N	\N	\N
159	boy	travel	856	267	212	strategy	\N	physicalproduct	\N	\N	\N	\N
160	machine	court	292	152	556	follow	\N	physicalproduct	\N	\N	\N	\N
161	whole	lose	280	319	600	customer	\N	physicalproduct	\N	\N	\N	\N
162	agree	likely	853	700	458	seek	\N	physicalproduct	\N	\N	\N	\N
163	dog	support	559	366	503	economic	\N	physicalproduct	\N	\N	\N	\N
164	claim	simple	877	125	788	room	\N	physicalproduct	\N	\N	\N	\N
165	whom	tend	585	901	393	father	\N	physicalproduct	\N	\N	\N	\N
166	sea	know	291	831	111	significant	\N	physicalproduct	\N	\N	\N	\N
167	ahead	seven	121	583	766	let	\N	physicalproduct	\N	\N	\N	\N
168	list	live	559	304	989	behind	\N	physicalproduct	\N	\N	\N	\N
169	form	day	77	513	383	key	\N	physicalproduct	\N	\N	\N	\N
170	explain	development	448	516	694	anything	\N	physicalproduct	\N	\N	\N	\N
171	thing	still	777	542	332	quite	\N	physicalproduct	\N	\N	\N	\N
172	end	lot	127	453	736	strong	\N	physicalproduct	\N	\N	\N	\N
173	school	any	359	313	553	result	\N	physicalproduct	\N	\N	\N	\N
174	however	majority	348	802	749	pay	\N	physicalproduct	\N	\N	\N	\N
175	third	thing	116	664	940	expect	\N	physicalproduct	\N	\N	\N	\N
176	question	safe	392	209	571	want	\N	physicalproduct	\N	\N	\N	\N
177	seek	drug	285	651	613	build	\N	physicalproduct	\N	\N	\N	\N
178	Congress	himself	946	473	616	western	\N	physicalproduct	\N	\N	\N	\N
179	alone	few	960	763	730	film	\N	physicalproduct	\N	\N	\N	\N
180	program	old	720	175	461	very	\N	physicalproduct	\N	\N	\N	\N
181	attention	painting	369	539	4	but	\N	physicalproduct	\N	\N	\N	\N
182	again	specific	594	437	994	past	\N	physicalproduct	\N	\N	\N	\N
183	down	perform	345	882	637	either	\N	physicalproduct	\N	\N	\N	\N
184	situation	first	505	764	254	vote	\N	physicalproduct	\N	\N	\N	\N
185	at	require	645	22	417	sign	\N	physicalproduct	\N	\N	\N	\N
186	they	series	649	798	960	now	\N	physicalproduct	\N	\N	\N	\N
187	only	national	802	277	867	list	\N	physicalproduct	\N	\N	\N	\N
188	computer	office	786	76	835	second	\N	physicalproduct	\N	\N	\N	\N
189	someone	shoulder	358	935	271	find	\N	physicalproduct	\N	\N	\N	\N
190	government	development	895	702	558	single	\N	physicalproduct	\N	\N	\N	\N
191	yet	how	156	474	853	outside	\N	physicalproduct	\N	\N	\N	\N
192	standard	drive	497	174	479	trouble	\N	physicalproduct	\N	\N	\N	\N
193	thank	compare	278	523	101	appear	\N	physicalproduct	\N	\N	\N	\N
194	song	charge	72	364	69	security	\N	physicalproduct	\N	\N	\N	\N
195	interview	recent	21	169	520	first	\N	physicalproduct	\N	\N	\N	\N
196	really	would	708	96	412	be	\N	physicalproduct	\N	\N	\N	\N
197	trouble	collection	620	312	214	toward	\N	physicalproduct	\N	\N	\N	\N
198	act	each	243	908	342	experience	\N	physicalproduct	\N	\N	\N	\N
199	prove	describe	71	77	716	unit	\N	physicalproduct	\N	\N	\N	\N
200	young	difference	480	524	572	election	\N	physicalproduct	\N	\N	\N	\N
301	alone	wrong	23	605	377	drop	728	electronics	\N	\N	\N	\N
302	structure	born	827	291	226	fish	613	electronics	\N	\N	\N	\N
303	interesting	thousand	506	887	921	figure	436	electronics	\N	\N	\N	\N
304	offer	subject	464	692	376	turn	818	electronics	\N	\N	\N	\N
305	task	tree	494	744	75	article	418	electronics	\N	\N	\N	\N
306	without	although	207	9	765	lay	527	electronics	\N	\N	\N	\N
307	level	maintain	898	499	79	specific	631	electronics	\N	\N	\N	\N
308	focus	relate	904	523	816	some	42	electronics	\N	\N	\N	\N
309	letter	walk	361	872	470	suddenly	195	electronics	\N	\N	\N	\N
310	no	hair	984	307	713	remember	554	electronics	\N	\N	\N	\N
311	already	poor	123	842	310	billion	995	electronics	\N	\N	\N	\N
312	according	history	796	557	661	military	539	electronics	\N	\N	\N	\N
313	inside	court	422	556	963	low	618	electronics	\N	\N	\N	\N
314	level	view	646	596	316	dog	310	electronics	\N	\N	\N	\N
315	represent	road	135	519	455	Congress	564	electronics	\N	\N	\N	\N
316	put	hear	792	998	167	suffer	652	electronics	\N	\N	\N	\N
317	past	down	10	435	754	remember	378	electronics	\N	\N	\N	\N
318	ground	daughter	431	412	289	force	921	electronics	\N	\N	\N	\N
319	two	surface	93	948	93	international	393	electronics	\N	\N	\N	\N
320	cup	should	276	476	279	general	652	electronics	\N	\N	\N	\N
321	result	pass	768	873	493	see	398	electronics	\N	\N	\N	\N
322	until	else	468	823	120	her	364	electronics	\N	\N	\N	\N
323	star	who	149	426	152	general	177	electronics	\N	\N	\N	\N
324	beautiful	public	834	267	377	order	604	electronics	\N	\N	\N	\N
325	increase	near	806	295	973	animal	265	electronics	\N	\N	\N	\N
326	fire	exactly	962	527	295	dog	708	electronics	\N	\N	\N	\N
327	property	whether	281	444	344	and	221	electronics	\N	\N	\N	\N
328	dinner	agency	733	850	504	must	734	electronics	\N	\N	\N	\N
329	parent	just	436	94	66	worry	212	electronics	\N	\N	\N	\N
330	inside	sense	990	154	235	phone	106	electronics	\N	\N	\N	\N
331	matter	five	260	160	492	cause	409	electronics	\N	\N	\N	\N
332	practice	plant	666	741	192	democratic	92	electronics	\N	\N	\N	\N
333	occur	sign	438	627	978	low	563	electronics	\N	\N	\N	\N
334	such	realize	224	548	433	marriage	49	electronics	\N	\N	\N	\N
335	one	hour	969	668	993	may	753	electronics	\N	\N	\N	\N
336	peace	save	567	696	430	director	272	electronics	\N	\N	\N	\N
337	cut	night	701	286	184	alone	825	electronics	\N	\N	\N	\N
338	agent	see	813	722	879	talk	806	electronics	\N	\N	\N	\N
339	officer	us	220	694	660	strong	888	electronics	\N	\N	\N	\N
340	may	example	400	127	685	short	302	electronics	\N	\N	\N	\N
341	want	commercial	699	521	510	ago	119	electronics	\N	\N	\N	\N
342	color	message	621	875	491	ask	153	electronics	\N	\N	\N	\N
343	speak	base	396	629	928	let	172	electronics	\N	\N	\N	\N
344	visit	long	534	264	427	major	890	electronics	\N	\N	\N	\N
345	conference	system	505	649	917	future	808	electronics	\N	\N	\N	\N
346	cup	true	778	639	346	relationship	106	electronics	\N	\N	\N	\N
347	learn	market	9	776	747	mind	949	electronics	\N	\N	\N	\N
348	similar	that	907	992	726	prepare	58	electronics	\N	\N	\N	\N
349	lawyer	network	554	641	451	especially	779	electronics	\N	\N	\N	\N
350	its	of	926	863	104	here	521	electronics	\N	\N	\N	\N
351	crime	management	282	277	724	yeah	422	electronics	\N	\N	\N	\N
352	back	near	152	134	263	cause	418	electronics	\N	\N	\N	\N
353	story	production	575	646	613	truth	546	electronics	\N	\N	\N	\N
354	myself	sure	855	624	522	agency	969	electronics	\N	\N	\N	\N
355	have	politics	424	277	287	mean	713	electronics	\N	\N	\N	\N
356	top	situation	314	274	504	realize	511	electronics	\N	\N	\N	\N
357	ready	long	377	614	482	position	347	electronics	\N	\N	\N	\N
358	include	war	181	621	778	leave	757	electronics	\N	\N	\N	\N
359	wall	wear	902	595	711	nice	548	electronics	\N	\N	\N	\N
360	much	fact	154	60	517	control	542	electronics	\N	\N	\N	\N
361	prevent	current	707	139	661	kitchen	323	electronics	\N	\N	\N	\N
362	half	television	638	506	492	practice	122	electronics	\N	\N	\N	\N
363	of	accept	131	909	144	to	231	electronics	\N	\N	\N	\N
364	woman	language	91	651	552	tonight	577	electronics	\N	\N	\N	\N
365	them	discover	177	702	119	boy	577	electronics	\N	\N	\N	\N
366	force	month	205	516	582	into	433	electronics	\N	\N	\N	\N
367	agreement	indicate	336	5	793	lose	842	electronics	\N	\N	\N	\N
368	police	relationship	313	842	631	hospital	87	electronics	\N	\N	\N	\N
369	consider	add	761	230	287	enter	276	electronics	\N	\N	\N	\N
370	present	worry	616	737	531	truth	24	electronics	\N	\N	\N	\N
371	particular	weight	125	338	356	medical	117	electronics	\N	\N	\N	\N
372	outside	job	257	921	789	fire	698	electronics	\N	\N	\N	\N
373	day	few	588	43	356	back	95	electronics	\N	\N	\N	\N
374	town	visit	743	106	308	rather	255	electronics	\N	\N	\N	\N
375	cultural	left	276	543	51	possible	32	electronics	\N	\N	\N	\N
376	true	consumer	81	143	948	space	381	electronics	\N	\N	\N	\N
377	but	make	957	738	654	social	97	electronics	\N	\N	\N	\N
378	far	could	696	337	281	dark	528	electronics	\N	\N	\N	\N
379	husband	strategy	910	330	982	difficult	361	electronics	\N	\N	\N	\N
380	growth	but	946	823	810	professional	621	electronics	\N	\N	\N	\N
381	anything	including	950	892	278	try	94	electronics	\N	\N	\N	\N
382	simply	start	696	591	636	less	578	electronics	\N	\N	\N	\N
383	lay	your	429	549	957	guess	309	electronics	\N	\N	\N	\N
384	sea	travel	920	225	648	sense	563	electronics	\N	\N	\N	\N
385	necessary	great	137	56	615	main	180	electronics	\N	\N	\N	\N
386	near	people	247	221	919	law	282	electronics	\N	\N	\N	\N
387	choice	city	560	21	257	head	968	electronics	\N	\N	\N	\N
388	number	them	543	269	485	relate	413	electronics	\N	\N	\N	\N
389	environmental	skill	726	107	763	option	71	electronics	\N	\N	\N	\N
390	environment	lose	671	558	372	care	634	electronics	\N	\N	\N	\N
391	stuff	spend	316	457	699	anything	160	electronics	\N	\N	\N	\N
392	reveal	popular	77	936	594	my	693	electronics	\N	\N	\N	\N
393	everybody	huge	901	847	222	learn	862	electronics	\N	\N	\N	\N
394	high	medical	821	869	786	lose	374	electronics	\N	\N	\N	\N
395	season	want	910	300	164	argue	870	electronics	\N	\N	\N	\N
396	become	laugh	815	391	854	much	416	electronics	\N	\N	\N	\N
397	real	cause	121	616	149	level	303	electronics	\N	\N	\N	\N
398	issue	throw	683	704	819	but	551	electronics	\N	\N	\N	\N
399	forget	opportunity	976	10	942	wear	389	electronics	\N	\N	\N	\N
400	factor	meeting	765	576	965	leg	471	electronics	\N	\N	\N	\N
401	answer	many	32	798	443	week	283	computer	organization	956	\N	\N
402	back	community	380	419	416	could	55	computer	college	102	\N	\N
403	piece	star	483	798	39	center	832	computer	trial	44	\N	\N
404	morning	both	852	114	602	interesting	544	computer	election	521	\N	\N
405	local	magazine	782	365	565	support	802	computer	community	582	\N	\N
406	far	final	931	992	671	measure	822	computer	Democrat	486	\N	\N
407	find	voice	840	715	252	memory	109	computer	response	576	\N	\N
408	play	table	975	367	893	others	120	computer	arrive	796	\N	\N
409	learn	much	42	939	721	case	433	computer	yard	901	\N	\N
410	first	maybe	745	355	260	bed	632	computer	side	446	\N	\N
411	dog	already	425	386	368	benefit	773	computer	consider	836	\N	\N
412	growth	class	350	452	818	not	651	computer	war	625	\N	\N
413	form	few	532	148	58	city	690	computer	early	117	\N	\N
414	customer	market	913	526	177	arrive	916	computer	scene	350	\N	\N
415	mouth	sea	776	728	125	east	492	computer	break	919	\N	\N
416	blue	reality	215	393	647	threat	407	computer	officer	734	\N	\N
417	it	citizen	234	103	255	light	999	computer	voice	994	\N	\N
418	look	contain	337	673	252	number	761	computer	perform	483	\N	\N
419	score	direction	379	505	668	direction	443	computer	TV	452	\N	\N
420	fine	now	409	556	124	who	950	computer	natural	273	\N	\N
421	happen	social	860	129	154	involve	386	computer	why	425	\N	\N
422	new	meet	112	819	27	drug	964	computer	through	188	\N	\N
423	game	person	470	785	387	be	940	computer	hope	160	\N	\N
424	sense	probably	158	996	538	beat	970	computer	decide	261	\N	\N
425	relate	hand	20	476	407	technology	551	computer	everyone	713	\N	\N
426	certainly	sit	401	6	558	right	434	computer	well	930	\N	\N
427	against	top	163	679	184	college	679	computer	across	245	\N	\N
428	southern	measure	78	794	550	seat	180	computer	travel	385	\N	\N
429	south	economic	600	23	526	writer	438	computer	land	242	\N	\N
430	experience	assume	814	42	959	edge	718	computer	something	517	\N	\N
431	every	near	708	627	670	take	254	computer	production	408	\N	\N
432	couple	strategy	799	477	122	wind	397	computer	certainly	92	\N	\N
433	happy	bring	574	97	657	citizen	47	computer	leader	531	\N	\N
434	resource	Mr	245	797	13	while	979	computer	none	880	\N	\N
435	long	admit	320	478	285	everything	171	computer	admit	610	\N	\N
436	answer	firm	137	576	725	condition	790	computer	rate	548	\N	\N
437	southern	move	652	460	514	center	568	computer	middle	172	\N	\N
438	power	up	716	405	716	look	828	computer	science	206	\N	\N
439	them	green	508	837	286	idea	951	computer	there	156	\N	\N
440	water	they	266	581	287	behind	800	computer	account	739	\N	\N
441	all	may	637	86	749	price	345	computer	sort	951	\N	\N
442	within	provide	147	265	262	money	358	computer	writer	394	\N	\N
443	forward	again	286	580	479	court	153	computer	class	977	\N	\N
444	hand	fact	134	982	259	wear	202	computer	game	73	\N	\N
445	degree	set	821	594	551	standard	557	computer	station	440	\N	\N
446	form	race	734	893	246	produce	568	computer	quality	472	\N	\N
447	cold	affect	401	729	201	card	641	computer	whose	958	\N	\N
448	born	effort	80	157	806	score	31	computer	budget	765	\N	\N
449	single	bank	416	392	428	exactly	606	computer	opportunity	612	\N	\N
450	attack	several	133	689	552	child	950	computer	action	248	\N	\N
451	member	process	871	391	143	join	208	computer	enjoy	678	\N	\N
452	consumer	sign	737	407	366	brother	231	computer	art	305	\N	\N
453	really	sure	727	148	357	learn	549	computer	benefit	299	\N	\N
454	person	senior	91	527	848	upon	214	computer	seem	723	\N	\N
455	color	say	475	23	298	region	630	computer	seat	382	\N	\N
456	occur	material	773	455	262	risk	54	computer	consider	849	\N	\N
457	grow	skill	801	324	164	idea	980	computer	experience	946	\N	\N
458	current	mention	645	842	106	around	875	computer	environmental	446	\N	\N
459	artist	size	649	601	252	price	517	computer	detail	520	\N	\N
460	public	within	407	125	935	describe	839	computer	main	970	\N	\N
461	company	seven	394	677	946	firm	834	computer	technology	734	\N	\N
462	worker	forward	593	261	743	radio	735	computer	suffer	124	\N	\N
463	drive	fast	829	207	782	whether	679	computer	decision	494	\N	\N
464	deep	field	559	629	237	east	39	computer	there	654	\N	\N
465	even	modern	172	688	687	hair	876	computer	radio	421	\N	\N
466	where	support	991	281	788	hospital	409	computer	road	279	\N	\N
467	door	discussion	506	101	686	attorney	192	computer	simply	573	\N	\N
468	against	what	17	465	772	maybe	501	computer	marriage	220	\N	\N
469	agreement	travel	404	843	748	matter	930	computer	bad	250	\N	\N
470	about	education	97	79	695	couple	867	computer	south	433	\N	\N
471	news	should	854	453	194	raise	610	computer	word	515	\N	\N
472	PM	give	195	868	522	among	535	computer	our	370	\N	\N
473	authority	student	202	239	369	establish	350	computer	rather	928	\N	\N
474	really	teach	54	470	46	how	913	computer	off	152	\N	\N
475	various	eat	875	929	962	anyone	481	computer	you	45	\N	\N
476	news	event	598	514	67	across	95	computer	kid	410	\N	\N
477	eat	senior	816	525	863	provide	404	computer	recognize	275	\N	\N
478	nation	recent	928	361	482	space	566	computer	trade	971	\N	\N
479	add	two	932	893	489	able	438	computer	these	312	\N	\N
480	risk	future	603	767	325	here	611	computer	strong	604	\N	\N
481	wide	serve	570	872	285	stand	886	computer	reduce	622	\N	\N
482	wife	participant	807	810	795	bit	426	computer	include	401	\N	\N
483	foot	Republican	533	810	25	wrong	38	computer	skill	588	\N	\N
484	about	range	543	15	104	recognize	345	computer	hear	956	\N	\N
485	that	visit	378	769	565	political	653	computer	card	380	\N	\N
486	remain	remain	597	76	497	speech	868	computer	newspaper	553	\N	\N
487	war	maybe	457	343	513	board	945	computer	every	165	\N	\N
488	operation	pick	932	333	370	response	150	computer	every	918	\N	\N
489	early	nature	595	152	604	expect	414	computer	camera	325	\N	\N
490	tax	under	888	521	431	staff	350	computer	beat	873	\N	\N
491	face	seat	267	624	378	month	729	computer	itself	65	\N	\N
492	seat	bit	786	646	253	full	773	computer	issue	993	\N	\N
493	worry	line	407	564	291	form	77	computer	save	726	\N	\N
494	gun	opportunity	175	927	959	thank	424	computer	general	86	\N	\N
495	program	least	130	290	565	have	241	computer	teacher	216	\N	\N
496	side	only	102	284	740	local	49	computer	small	756	\N	\N
497	pattern	begin	525	309	807	phone	842	computer	heavy	557	\N	\N
498	capital	employee	77	564	324	green	949	computer	several	304	\N	\N
499	second	wrong	881	529	137	authority	453	computer	add	834	\N	\N
500	between	together	373	819	766	by	30	computer	analysis	324	\N	\N
1001	government	age	293	852	853	none	56	phone	\N	\N	respond	\N
1002	course	get	956	320	673	pay	131	phone	\N	\N	expect	\N
1003	free	measure	69	736	161	administration	275	phone	\N	\N	same	\N
1004	general	thousand	784	830	134	statement	923	phone	\N	\N	gas	\N
1005	in	finish	198	945	783	really	617	phone	\N	\N	Mrs	\N
1006	data	least	427	222	801	population	555	phone	\N	\N	international	\N
1007	also	last	869	502	178	tonight	823	phone	\N	\N	kitchen	\N
1008	mind	people	511	249	209	group	699	phone	\N	\N	agree	\N
1009	goal	board	156	251	922	those	625	phone	\N	\N	subject	\N
1010	entire	decade	629	718	983	exist	562	phone	\N	\N	market	\N
1011	candidate	responsibility	266	990	67	exactly	81	phone	\N	\N	process	\N
1012	feeling	range	365	541	286	which	673	phone	\N	\N	close	\N
1013	leg	total	581	481	444	some	950	phone	\N	\N	many	\N
1014	more	cut	130	568	604	avoid	815	phone	\N	\N	with	\N
1015	direction	main	906	446	760	boy	377	phone	\N	\N	either	\N
1016	assume	today	230	455	692	suggest	341	phone	\N	\N	reveal	\N
1017	analysis	small	686	581	188	off	785	phone	\N	\N	believe	\N
1018	seat	play	940	50	377	single	166	phone	\N	\N	none	\N
1019	probably	international	680	738	478	training	361	phone	\N	\N	family	\N
1020	face	could	160	469	206	pick	549	phone	\N	\N	animal	\N
1021	indicate	share	289	613	214	story	624	phone	\N	\N	factor	\N
1022	news	fish	226	290	109	reason	672	phone	\N	\N	sense	\N
1023	yet	huge	233	867	435	hair	688	phone	\N	\N	particular	\N
1024	forward	prevent	858	308	505	seat	385	phone	\N	\N	reflect	\N
1025	pass	opportunity	209	652	716	card	317	phone	\N	\N	state	\N
1026	of	provide	765	307	637	claim	439	phone	\N	\N	record	\N
1027	general	product	13	777	468	establish	430	phone	\N	\N	second	\N
1028	movie	plan	250	664	108	measure	518	phone	\N	\N	movie	\N
1029	whatever	others	53	757	392	hair	956	phone	\N	\N	then	\N
1030	feel	employee	855	18	527	consumer	950	phone	\N	\N	left	\N
1031	body	stand	497	378	563	good	30	phone	\N	\N	material	\N
1032	across	affect	950	661	609	score	399	phone	\N	\N	key	\N
1033	police	organization	986	244	531	keep	574	phone	\N	\N	only	\N
1034	itself	choose	643	45	989	sing	663	phone	\N	\N	office	\N
1035	man	idea	859	324	37	themselves	450	phone	\N	\N	consumer	\N
1036	soon	whom	862	720	183	scene	150	phone	\N	\N	main	\N
1037	teacher	teach	148	258	517	hot	709	phone	\N	\N	law	\N
1038	pattern	far	96	525	127	different	714	phone	\N	\N	lose	\N
1039	this	fill	970	393	859	lay	376	phone	\N	\N	world	\N
1040	far	including	216	39	543	southern	226	phone	\N	\N	spend	\N
1041	find	especially	987	493	977	sound	173	phone	\N	\N	oil	\N
1042	again	suggest	243	202	543	between	658	phone	\N	\N	father	\N
1043	effort	run	713	306	952	I	846	phone	\N	\N	support	\N
1044	model	true	860	824	791	American	778	phone	\N	\N	short	\N
1045	news	story	926	929	219	get	127	phone	\N	\N	stand	\N
1046	finally	sign	993	789	584	include	778	phone	\N	\N	hand	\N
1047	cell	shoulder	38	639	323	not	813	phone	\N	\N	consumer	\N
1048	specific	state	541	667	183	better	554	phone	\N	\N	evidence	\N
1049	gun	page	83	420	739	quickly	839	phone	\N	\N	last	\N
1050	sport	dog	558	45	811	left	328	phone	\N	\N	but	\N
1051	simple	listen	959	684	955	technology	463	phone	\N	\N	parent	\N
1052	order	much	766	196	915	in	475	phone	\N	\N	water	\N
1053	at	down	862	823	88	student	375	phone	\N	\N	matter	\N
1054	paper	situation	11	292	217	project	384	phone	\N	\N	beat	\N
1055	white	but	855	984	641	table	98	phone	\N	\N	likely	\N
1056	huge	actually	457	816	863	baby	315	phone	\N	\N	police	\N
1057	work	ask	717	178	307	treatment	763	phone	\N	\N	point	\N
1058	friend	wrong	338	934	341	point	991	phone	\N	\N	treatment	\N
1059	respond	life	42	53	983	tree	725	phone	\N	\N	fund	\N
1060	money	east	187	616	474	might	990	phone	\N	\N	deal	\N
1061	decade	meeting	731	38	273	million	988	phone	\N	\N	myself	\N
1062	appear	among	68	736	656	daughter	904	phone	\N	\N	account	\N
1063	not	head	933	886	13	a	770	phone	\N	\N	table	\N
1064	look	as	424	356	277	way	40	phone	\N	\N	anything	\N
1065	wall	policy	396	114	313	occur	770	phone	\N	\N	west	\N
1066	commercial	seat	255	235	531	others	581	phone	\N	\N	short	\N
1067	direction	ready	271	11	6	other	800	phone	\N	\N	left	\N
1068	story	nor	487	726	783	see	949	phone	\N	\N	kid	\N
1069	in	own	909	906	359	newspaper	978	phone	\N	\N	tonight	\N
1070	around	administration	613	951	866	kitchen	571	phone	\N	\N	them	\N
1071	eight	standard	660	892	564	write	136	phone	\N	\N	activity	\N
1072	evening	exist	411	143	626	type	199	phone	\N	\N	marriage	\N
1073	amount	not	133	141	623	show	131	phone	\N	\N	central	\N
1074	popular	political	794	35	611	begin	280	phone	\N	\N	company	\N
1075	near	discover	361	8	921	material	718	phone	\N	\N	agency	\N
1076	hear	early	856	9	66	foreign	965	phone	\N	\N	wind	\N
1077	matter	share	734	444	732	idea	317	phone	\N	\N	stand	\N
1078	station	any	702	137	402	concern	774	phone	\N	\N	class	\N
1079	event	add	369	803	459	traditional	300	phone	\N	\N	special	\N
1080	deep	news	906	487	191	shake	9	phone	\N	\N	wear	\N
1081	movement	debate	319	236	712	some	512	phone	\N	\N	play	\N
1082	argue	send	62	803	8	begin	609	phone	\N	\N	yeah	\N
1083	general	once	475	3	1000	despite	136	phone	\N	\N	area	\N
1084	new	community	729	402	825	can	228	phone	\N	\N	almost	\N
1085	thank	state	608	873	865	region	188	phone	\N	\N	break	\N
1086	south	throw	741	224	166	leave	907	phone	\N	\N	believe	\N
1087	community	before	925	940	339	test	89	phone	\N	\N	degree	\N
1088	far	off	125	955	823	western	210	phone	\N	\N	reach	\N
1089	kid	read	337	815	574	because	812	phone	\N	\N	figure	\N
1090	bad	president	795	723	85	kid	586	phone	\N	\N	around	\N
1091	treat	loss	365	966	915	ask	186	phone	\N	\N	yourself	\N
1092	general	choose	633	105	363	individual	704	phone	\N	\N	evening	\N
1093	where	together	896	948	506	enough	468	phone	\N	\N	evening	\N
1094	country	after	442	224	65	amount	682	phone	\N	\N	more	\N
1095	question	campaign	650	258	337	contain	860	phone	\N	\N	drop	\N
1096	else	necessary	378	596	335	million	530	phone	\N	\N	film	\N
1097	interest	time	636	614	667	toward	195	phone	\N	\N	job	\N
1098	message	responsibility	915	422	356	issue	355	phone	\N	\N	former	\N
1099	become	thank	710	123	459	build	9	phone	\N	\N	serious	\N
1100	bit	language	231	977	312	number	685	phone	\N	\N	city	\N
1201	whether	hundred	802	144	451	simply	\N	appliance	\N	\N	\N	player
1202	rise	experience	159	924	400	expect	\N	appliance	\N	\N	\N	affect
1203	debate	already	643	690	64	stock	\N	appliance	\N	\N	\N	improve
1204	member	see	726	232	683	serious	\N	appliance	\N	\N	\N	year
1205	tell	man	293	607	794	level	\N	appliance	\N	\N	\N	black
1206	form	million	959	339	157	next	\N	appliance	\N	\N	\N	issue
1207	executive	girl	677	844	633	create	\N	appliance	\N	\N	\N	box
1208	light	official	925	687	861	from	\N	appliance	\N	\N	\N	than
1209	modern	near	76	1	877	decide	\N	appliance	\N	\N	\N	ahead
1210	pretty	may	683	77	837	ago	\N	appliance	\N	\N	\N	back
1211	son	space	899	882	135	role	\N	appliance	\N	\N	\N	parent
1212	various	after	63	214	879	tell	\N	appliance	\N	\N	\N	room
1213	investment	art	346	699	286	tell	\N	appliance	\N	\N	\N	sea
1214	black	similar	206	846	703	television	\N	appliance	\N	\N	\N	window
1215	major	test	420	83	363	success	\N	appliance	\N	\N	\N	wall
1216	lawyer	wear	433	462	852	test	\N	appliance	\N	\N	\N	behavior
1217	candidate	like	515	945	105	try	\N	appliance	\N	\N	\N	can
1218	training	enough	927	677	58	power	\N	appliance	\N	\N	\N	experience
1219	less	thus	418	786	929	visit	\N	appliance	\N	\N	\N	material
1220	job	several	207	70	889	feel	\N	appliance	\N	\N	\N	film
1221	every	other	467	910	527	first	\N	appliance	\N	\N	\N	girl
1222	house	market	335	717	824	by	\N	appliance	\N	\N	\N	try
1223	bar	put	675	318	808	blood	\N	appliance	\N	\N	\N	example
1224	blue	arm	464	54	45	item	\N	appliance	\N	\N	\N	medical
1225	trip	station	164	783	25	agent	\N	appliance	\N	\N	\N	Mrs
1226	size	scientist	25	865	152	including	\N	appliance	\N	\N	\N	near
1227	color	tell	110	240	263	term	\N	appliance	\N	\N	\N	note
1228	guy	hit	512	197	945	cold	\N	appliance	\N	\N	\N	situation
1229	material	at	135	293	921	read	\N	appliance	\N	\N	\N	society
1230	benefit	court	659	864	242	specific	\N	appliance	\N	\N	\N	end
1231	finally	other	787	696	180	administration	\N	appliance	\N	\N	\N	green
1232	do	until	607	632	472	herself	\N	appliance	\N	\N	\N	person
1233	wish	wall	4	960	836	on	\N	appliance	\N	\N	\N	believe
1234	commercial	compare	582	375	668	collection	\N	appliance	\N	\N	\N	market
1235	memory	here	277	836	98	step	\N	appliance	\N	\N	\N	account
1236	edge	language	308	238	386	arrive	\N	appliance	\N	\N	\N	full
1237	concern	smile	559	139	945	stand	\N	appliance	\N	\N	\N	drug
1238	Mrs	lawyer	143	305	847	class	\N	appliance	\N	\N	\N	doctor
1239	eight	difference	307	536	103	yourself	\N	appliance	\N	\N	\N	tell
1240	amount	future	451	410	656	dog	\N	appliance	\N	\N	\N	customer
1241	somebody	real	32	988	832	give	\N	appliance	\N	\N	\N	base
1242	race	also	489	989	658	power	\N	appliance	\N	\N	\N	system
1243	argue	oil	898	301	711	Mr	\N	appliance	\N	\N	\N	turn
1244	lead	attention	481	378	185	girl	\N	appliance	\N	\N	\N	believe
1245	store	use	489	893	562	important	\N	appliance	\N	\N	\N	from
1246	everybody	nor	532	756	806	such	\N	appliance	\N	\N	\N	feeling
1247	respond	own	142	444	716	likely	\N	appliance	\N	\N	\N	employee
1248	sound	third	735	374	504	budget	\N	appliance	\N	\N	\N	certain
1249	short	finish	50	252	851	line	\N	appliance	\N	\N	\N	bed
1250	lawyer	large	992	372	69	special	\N	appliance	\N	\N	\N	believe
1251	figure	major	218	443	340	represent	\N	appliance	\N	\N	\N	event
1252	single	hear	461	453	838	energy	\N	appliance	\N	\N	\N	generation
1253	be	fight	902	673	610	onto	\N	appliance	\N	\N	\N	after
1254	include	everything	381	41	209	name	\N	appliance	\N	\N	\N	health
1255	fish	have	134	847	954	spring	\N	appliance	\N	\N	\N	away
1256	but	game	807	779	905	long	\N	appliance	\N	\N	\N	international
1257	election	positive	859	205	336	important	\N	appliance	\N	\N	\N	unit
1258	guess	each	855	6	891	turn	\N	appliance	\N	\N	\N	foreign
1259	court	training	204	964	736	leader	\N	appliance	\N	\N	\N	add
1260	of	by	200	311	835	garden	\N	appliance	\N	\N	\N	doctor
1261	poor	north	676	798	384	group	\N	appliance	\N	\N	\N	eat
1262	think	play	29	695	913	issue	\N	appliance	\N	\N	\N	society
1263	especially	indicate	611	285	313	present	\N	appliance	\N	\N	\N	toward
1264	expert	sure	818	682	718	become	\N	appliance	\N	\N	\N	three
1265	add	another	903	16	357	hour	\N	appliance	\N	\N	\N	look
1266	enter	account	712	580	769	strong	\N	appliance	\N	\N	\N	scene
1267	know	end	863	503	467	land	\N	appliance	\N	\N	\N	against
1268	window	section	995	232	614	candidate	\N	appliance	\N	\N	\N	get
1269	finally	doctor	64	85	248	fire	\N	appliance	\N	\N	\N	movie
1270	media	on	203	438	144	seven	\N	appliance	\N	\N	\N	indicate
1271	control	price	411	602	361	year	\N	appliance	\N	\N	\N	over
1272	argue	near	39	981	874	price	\N	appliance	\N	\N	\N	realize
1273	business	learn	821	871	848	here	\N	appliance	\N	\N	\N	believe
1274	sometimes	create	295	720	382	attorney	\N	appliance	\N	\N	\N	grow
1275	administration	walk	995	947	384	important	\N	appliance	\N	\N	\N	sure
1276	budget	democratic	955	876	118	particularly	\N	appliance	\N	\N	\N	us
1277	wait	painting	309	981	280	appear	\N	appliance	\N	\N	\N	bit
1278	stage	laugh	686	864	780	produce	\N	appliance	\N	\N	\N	inside
1279	energy	help	284	54	504	much	\N	appliance	\N	\N	\N	agency
1280	process	big	855	722	439	rather	\N	appliance	\N	\N	\N	include
1281	often	site	596	906	576	wait	\N	appliance	\N	\N	\N	seem
1282	property	compare	175	524	43	whether	\N	appliance	\N	\N	\N	owner
1283	edge	book	263	197	323	style	\N	appliance	\N	\N	\N	since
1284	that	road	759	115	628	chance	\N	appliance	\N	\N	\N	anything
1285	particular	day	431	432	580	design	\N	appliance	\N	\N	\N	everyone
1286	decision	truth	622	743	133	admit	\N	appliance	\N	\N	\N	other
1287	also	quickly	265	246	720	hotel	\N	appliance	\N	\N	\N	provide
1288	quite	everyone	585	896	189	any	\N	appliance	\N	\N	\N	perhaps
1289	service	body	841	436	18	keep	\N	appliance	\N	\N	\N	team
1290	whatever	with	313	523	142	heart	\N	appliance	\N	\N	\N	test
1291	already	improve	422	38	479	develop	\N	appliance	\N	\N	\N	game
1292	memory	week	875	921	531	evidence	\N	appliance	\N	\N	\N	action
1293	group	decide	397	109	706	agree	\N	appliance	\N	\N	\N	candidate
1294	member	little	424	475	111	shake	\N	appliance	\N	\N	\N	enough
1295	play	major	832	888	421	country	\N	appliance	\N	\N	\N	manager
1296	choice	around	881	269	616	house	\N	appliance	\N	\N	\N	late
1297	free	first	299	266	334	camera	\N	appliance	\N	\N	\N	put
1298	month	commercial	144	557	57	better	\N	appliance	\N	\N	\N	share
1299	every	outside	324	760	100	common	\N	appliance	\N	\N	\N	here
1300	yeah	degree	310	762	423	agree	\N	appliance	\N	\N	\N	find
1301	produce	over	82	999	537	not	\N	kitchenappliance	\N	\N	\N	region
1302	authority	have	997	534	65	college	\N	kitchenappliance	\N	\N	\N	form
1303	behavior	central	946	644	849	save	\N	kitchenappliance	\N	\N	\N	force
1304	opportunity	single	472	416	627	matter	\N	kitchenappliance	\N	\N	\N	company
1305	admit	writer	289	511	998	light	\N	kitchenappliance	\N	\N	\N	consider
1306	if	amount	139	19	648	student	\N	kitchenappliance	\N	\N	\N	loss
1307	fall	cover	991	211	624	skill	\N	kitchenappliance	\N	\N	\N	on
1308	hand	also	528	152	788	option	\N	kitchenappliance	\N	\N	\N	guess
1309	night	start	720	136	435	race	\N	kitchenappliance	\N	\N	\N	place
1310	size	general	365	654	759	will	\N	kitchenappliance	\N	\N	\N	young
1311	quickly	century	258	741	370	capital	\N	kitchenappliance	\N	\N	\N	already
1312	development	become	318	417	409	do	\N	kitchenappliance	\N	\N	\N	do
1313	partner	agent	378	334	907	fight	\N	kitchenappliance	\N	\N	\N	provide
1314	quickly	need	819	136	718	music	\N	kitchenappliance	\N	\N	\N	fight
1315	miss	meet	653	921	711	marriage	\N	kitchenappliance	\N	\N	\N	yeah
1316	focus	series	984	592	483	trip	\N	kitchenappliance	\N	\N	\N	practice
1317	able	cold	544	825	506	more	\N	kitchenappliance	\N	\N	\N	movie
1318	trouble	tax	135	458	149	painting	\N	kitchenappliance	\N	\N	\N	cut
1319	idea	building	866	155	898	agreement	\N	kitchenappliance	\N	\N	\N	onto
1320	past	let	799	72	700	song	\N	kitchenappliance	\N	\N	\N	manager
1321	indeed	house	812	431	641	strategy	\N	kitchenappliance	\N	\N	\N	price
1322	person	try	277	227	632	story	\N	kitchenappliance	\N	\N	\N	understand
1323	middle	thus	672	492	367	focus	\N	kitchenappliance	\N	\N	\N	generation
1324	class	trouble	270	498	737	trade	\N	kitchenappliance	\N	\N	\N	stage
1325	thousand	military	838	47	438	green	\N	kitchenappliance	\N	\N	\N	commercial
1326	beyond	he	543	154	330	learn	\N	kitchenappliance	\N	\N	\N	stock
1327	campaign	dinner	754	391	125	music	\N	kitchenappliance	\N	\N	\N	identify
1328	score	hot	909	915	330	blood	\N	kitchenappliance	\N	\N	\N	culture
1329	ago	table	644	534	819	movement	\N	kitchenappliance	\N	\N	\N	group
1330	show	behind	944	539	159	visit	\N	kitchenappliance	\N	\N	\N	happy
1331	stay	attack	160	872	63	piece	\N	kitchenappliance	\N	\N	\N	important
1332	worker	stage	409	343	660	across	\N	kitchenappliance	\N	\N	\N	friend
1333	your	build	297	38	447	build	\N	kitchenappliance	\N	\N	\N	sport
1334	and	pull	28	972	590	compare	\N	kitchenappliance	\N	\N	\N	visit
1335	draw	know	832	299	253	season	\N	kitchenappliance	\N	\N	\N	college
1336	whom	senior	443	359	886	seem	\N	kitchenappliance	\N	\N	\N	seem
1337	young	science	333	844	698	day	\N	kitchenappliance	\N	\N	\N	I
1338	town	sell	692	381	35	wall	\N	kitchenappliance	\N	\N	\N	these
1339	discussion	improve	743	602	112	agreement	\N	kitchenappliance	\N	\N	\N	indicate
1340	that	any	265	982	988	issue	\N	kitchenappliance	\N	\N	\N	probably
1341	music	position	409	922	472	return	\N	kitchenappliance	\N	\N	\N	third
1342	let	degree	287	382	148	recently	\N	kitchenappliance	\N	\N	\N	particular
1343	another	also	107	388	910	visit	\N	kitchenappliance	\N	\N	\N	agree
1344	next	prove	321	912	8	every	\N	kitchenappliance	\N	\N	\N	read
1345	sort	tend	241	140	322	wrong	\N	kitchenappliance	\N	\N	\N	any
1346	subject	team	497	887	176	someone	\N	kitchenappliance	\N	\N	\N	guess
1347	dream	view	225	664	788	task	\N	kitchenappliance	\N	\N	\N	speech
1348	cut	general	971	63	619	far	\N	kitchenappliance	\N	\N	\N	easy
1349	capital	year	283	688	694	but	\N	kitchenappliance	\N	\N	\N	listen
1350	win	describe	482	374	438	where	\N	kitchenappliance	\N	\N	\N	firm
1351	west	too	997	965	231	across	\N	kitchenappliance	\N	\N	\N	loss
1352	tell	plant	57	333	107	like	\N	kitchenappliance	\N	\N	\N	research
1353	must	debate	733	711	512	mention	\N	kitchenappliance	\N	\N	\N	sort
1354	free	article	928	208	71	record	\N	kitchenappliance	\N	\N	\N	military
1355	pass	size	906	499	480	word	\N	kitchenappliance	\N	\N	\N	where
1356	week	something	557	83	505	air	\N	kitchenappliance	\N	\N	\N	kind
1357	beautiful	account	560	859	661	future	\N	kitchenappliance	\N	\N	\N	indeed
1358	computer	through	586	828	836	way	\N	kitchenappliance	\N	\N	\N	sing
1359	matter	window	427	96	761	green	\N	kitchenappliance	\N	\N	\N	a
1360	point	arm	928	835	392	power	\N	kitchenappliance	\N	\N	\N	situation
1361	sport	seven	942	751	571	you	\N	kitchenappliance	\N	\N	\N	party
1362	go	girl	151	4	574	kitchen	\N	kitchenappliance	\N	\N	\N	performance
1363	growth	evidence	850	104	84	bed	\N	kitchenappliance	\N	\N	\N	scene
1364	which	hold	694	597	573	maybe	\N	kitchenappliance	\N	\N	\N	bed
1365	near	talk	700	405	77	start	\N	kitchenappliance	\N	\N	\N	even
1366	magazine	material	843	869	871	box	\N	kitchenappliance	\N	\N	\N	white
1367	relationship	stuff	762	798	447	last	\N	kitchenappliance	\N	\N	\N	cup
1368	response	late	638	558	623	kitchen	\N	kitchenappliance	\N	\N	\N	develop
1369	few	president	619	490	397	force	\N	kitchenappliance	\N	\N	\N	break
1370	be	fight	285	642	851	before	\N	kitchenappliance	\N	\N	\N	television
1371	candidate	important	675	45	97	kind	\N	kitchenappliance	\N	\N	\N	shoulder
1372	themselves	individual	675	37	5	huge	\N	kitchenappliance	\N	\N	\N	manage
1373	lot	newspaper	43	166	432	soldier	\N	kitchenappliance	\N	\N	\N	lead
1374	focus	pressure	18	442	563	degree	\N	kitchenappliance	\N	\N	\N	mother
1375	this	huge	894	696	405	nearly	\N	kitchenappliance	\N	\N	\N	sure
1376	store	design	140	246	990	be	\N	kitchenappliance	\N	\N	\N	tend
1377	near	instead	400	967	322	her	\N	kitchenappliance	\N	\N	\N	only
1378	daughter	appear	627	143	583	speak	\N	kitchenappliance	\N	\N	\N	collection
1379	decide	fire	145	778	150	deep	\N	kitchenappliance	\N	\N	\N	tough
1380	hand	air	916	875	204	prepare	\N	kitchenappliance	\N	\N	\N	husband
1381	near	enough	973	218	502	unit	\N	kitchenappliance	\N	\N	\N	card
1382	wait	perhaps	373	481	649	idea	\N	kitchenappliance	\N	\N	\N	impact
1383	arm	certainly	1	431	917	west	\N	kitchenappliance	\N	\N	\N	his
1384	teach	buy	389	849	879	thing	\N	kitchenappliance	\N	\N	\N	nature
1385	kind	former	959	965	28	bar	\N	kitchenappliance	\N	\N	\N	reach
1386	understand	attorney	827	526	879	white	\N	kitchenappliance	\N	\N	\N	take
1387	stand	different	264	133	905	person	\N	kitchenappliance	\N	\N	\N	within
1388	field	than	888	781	561	five	\N	kitchenappliance	\N	\N	\N	yet
1389	inside	official	919	125	898	agreement	\N	kitchenappliance	\N	\N	\N	much
1390	admit	respond	359	415	453	foreign	\N	kitchenappliance	\N	\N	\N	century
1391	exist	least	940	693	519	anyone	\N	kitchenappliance	\N	\N	\N	for
1392	husband	despite	386	550	29	glass	\N	kitchenappliance	\N	\N	\N	either
1393	set	quality	500	870	331	successful	\N	kitchenappliance	\N	\N	\N	her
1394	fast	marriage	21	359	79	tend	\N	kitchenappliance	\N	\N	\N	learn
1395	job	employee	487	126	237	hit	\N	kitchenappliance	\N	\N	\N	sing
1396	international	baby	914	759	78	anything	\N	kitchenappliance	\N	\N	\N	medical
1397	run	him	286	775	485	live	\N	kitchenappliance	\N	\N	\N	religious
1398	number	serious	239	45	300	environment	\N	kitchenappliance	\N	\N	\N	seem
1399	former	point	568	928	465	range	\N	kitchenappliance	\N	\N	\N	check
1400	detail	discuss	252	12	312	by	\N	kitchenappliance	\N	\N	\N	work
\.


--
-- Data for Name: relation_30; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_30 (categorymanager_id, department) FROM stdin;
901	east
902	reach
903	true
904	effort
905	artist
906	second
907	role
908	green
909	throw
910	appear
911	citizen
912	mention
913	toward
914	mission
915	move
916	break
917	message
918	what
919	political
920	shake
921	tend
922	fill
923	seem
924	education
925	enter
926	field
927	pretty
928	figure
929	poor
930	country
931	relate
932	rock
933	public
934	success
935	yet
936	American
937	Mrs
938	series
939	especially
940	experience
941	mean
942	apply
943	some
944	over
945	nearly
946	day
947	person
948	do
949	issue
950	guess
951	rock
952	itself
953	do
954	effort
955	poor
956	serve
957	color
958	travel
959	first
960	responsibility
961	again
962	agent
963	city
964	across
965	sometimes
966	suddenly
967	decade
968	top
969	population
970	Mrs
971	seat
972	democratic
973	traditional
974	station
975	health
976	which
977	situation
978	score
979	almost
980	board
981	though
982	attention
983	health
984	choose
985	subject
986	address
987	water
988	car
989	program
990	road
991	sea
992	pretty
993	subject
994	popular
995	local
996	another
997	moment
998	style
999	suffer
1000	detail
\.


--
-- Data for Name: relation_31; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_31 (product_id, image_id, url, alt_text, sort_order) FROM stdin;
1839	406	health	to	489
295	941	add	avoid	955
344	659	east	hard	221
978	827	without	while	212
875	754	look	opportunity	843
557	588	hospital	north	868
1155	499	buy	open	925
1808	258	significant	next	900
1774	92	method	person	843
361	796	approach	debate	714
978	831	anyone	state	676
1236	993	population	detail	729
1377	99	bill	sport	583
1725	985	play	on	536
1906	330	sell	class	867
1861	159	all	budget	537
2081	518	strong	drug	234
1782	213	listen	sister	568
1547	132	race	into	928
964	405	of	born	997
1655	38	pass	local	31
641	417	eight	stay	971
1404	872	week	act	44
55	473	big	happen	593
2067	652	should	magazine	517
1713	557	run	east	409
156	694	section	article	769
1554	260	myself	why	499
728	21	month	development	964
1013	324	type	information	67
1875	56	might	hand	63
1471	330	leave	hope	892
385	143	send	some	439
1358	892	sure	beat	291
1596	5	always	green	231
372	272	listen	truth	415
1732	482	sort	join	416
298	798	pass	today	609
210	793	glass	election	271
570	478	could	always	460
2064	949	face	wife	541
1945	768	concern	hit	815
393	611	deal	meet	375
1992	175	team	wait	973
1115	673	look	different	580
2073	566	significant	west	363
595	903	perform	heart	221
855	383	thought	less	745
665	667	radio	beyond	725
2038	67	any	newspaper	334
798	94	term	class	532
1897	235	carry	run	719
772	341	prepare	catch	133
1397	360	out	face	241
1296	252	base	identify	522
101	595	party	short	38
560	267	PM	because	782
1648	511	course	budget	120
293	688	necessary	majority	422
1647	100	themselves	six	859
453	936	professional	shake	353
299	377	mouth	vote	550
1283	206	Republican	compare	439
1468	174	challenge	go	581
1411	72	improve	audience	576
2024	289	product	let	482
1409	207	suddenly	court	338
1476	848	future	something	792
1412	175	cold	right	906
2024	371	person	yeah	257
924	227	fish	service	762
1054	341	usually	wind	681
510	128	fall	let	143
324	135	happen	ok	573
75	52	buy	response	392
976	133	school	window	348
236	476	sport	fall	99
565	399	would	member	150
1453	89	relationship	often	765
947	88	point	travel	522
1266	304	will	thousand	155
1568	998	share	art	910
812	593	its	difficult	454
751	522	part	anything	785
551	935	standard	college	970
1192	538	speech	guess	791
1874	961	debate	fire	709
2000	118	military	might	995
1174	18	prove	pick	601
601	809	left	spring	701
828	313	maintain	magazine	647
588	427	political	center	945
1107	837	fine	forget	554
1272	737	police	media	938
1121	840	nor	poor	48
595	578	glass	fact	194
1171	178	type	person	748
896	652	treat	both	369
698	679	test	impact	728
1765	114	nice	represent	612
\.


--
-- Data for Name: relation_32; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_32 (product_id, variant_id, price_override, barcode, is_active_variant) FROM stdin;
1086	222	1	within	52
1357	176	432	energy	585
1359	998	145	back	961
521	524	479	opportunity	504
630	972	842	evidence	152
42	910	262	hear	476
1858	602	347	herself	622
2098	427	242	else	850
1429	478	491	class	507
527	193	341	kitchen	197
810	869	343	hope	478
685	783	873	process	709
1165	268	697	what	561
1396	459	736	study	443
925	796	177	scientist	606
663	523	584	control	839
1782	834	495	front	759
1721	566	261	history	927
1637	542	513	event	386
1203	535	863	significant	230
1807	876	316	culture	284
1506	591	390	seat	268
1396	614	630	kitchen	86
32	170	968	break	843
1427	564	688	when	590
1053	554	896	president	613
735	957	453	understand	489
1892	326	77	present	840
386	228	682	TV	934
1000	364	352	executive	554
97	559	176	mention	921
1080	651	899	mother	780
1185	601	210	ten	212
630	582	652	analysis	425
1171	994	471	inside	421
1556	697	863	source	30
1794	840	184	improve	130
1348	917	429	prepare	568
295	178	522	detail	122
911	844	598	low	101
566	635	478	process	183
743	559	91	huge	144
553	418	825	develop	833
1639	196	354	natural	862
1997	924	652	audience	790
3	805	475	today	616
23	479	647	market	864
1272	105	345	Democrat	349
461	468	581	newspaper	700
1489	288	404	industry	340
479	310	141	send	266
582	151	185	rate	192
1467	882	128	loss	946
1214	414	175	purpose	732
1696	355	636	yes	542
926	408	931	back	118
1458	372	234	somebody	14
818	218	705	send	776
1463	81	30	player	584
1404	363	396	doctor	120
968	629	769	claim	170
389	215	477	language	966
1302	543	186	establish	473
1255	496	231	they	401
578	13	127	far	178
407	240	327	dinner	324
838	428	484	act	143
663	280	592	huge	366
360	554	352	under	508
961	290	737	surface	298
592	373	883	name	507
617	779	616	history	807
1352	238	52	foot	573
1706	185	835	rise	497
1706	563	71	fight	197
906	190	910	sort	582
523	329	136	none	518
1007	763	53	add	201
1089	862	230	then	844
1017	894	674	east	230
1393	256	736	yet	760
1675	932	530	sure	631
1936	240	863	short	738
1012	388	601	realize	681
916	946	678	until	180
1483	394	516	better	160
873	583	542	draw	131
1189	680	906	else	171
284	237	481	under	68
1526	920	61	manager	509
913	457	148	size	518
127	856	402	against	115
627	169	903	learn	200
1217	274	640	every	390
1643	44	38	know	493
2025	991	657	method	83
1970	907	136	put	886
1983	218	866	hold	636
575	2	275	decade	767
593	243	156	keep	735
\.


--
-- Data for Name: relation_33; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_33 (product_id, price_id, starts_at, ends_at, price) FROM stdin;
338	690	policy	mission	484
1292	660	institution	wear	164
56	760	early	per	197
1632	382	follow	drug	399
568	826	too	once	799
1439	785	industry	trip	74
1977	303	present	reach	2
1726	122	seven	force	995
303	485	director	law	127
1871	666	especially	argue	228
1073	626	exactly	up	9
1477	386	still	especially	592
687	163	force	single	651
1030	648	write	middle	260
267	620	worker	marriage	978
113	140	guess	American	102
1875	767	its	draw	458
1206	288	teacher	effect	620
1161	172	week	teacher	460
2024	200	beyond	against	998
117	656	future	he	72
1188	720	morning	everybody	904
1960	191	professional	visit	449
411	77	across	analysis	50
1032	918	consider	vote	858
985	444	offer	his	195
102	540	past	address	102
1513	447	prove	together	938
1475	291	white	industry	705
1177	431	method	baby	45
635	775	dog	thus	335
1229	387	garden	red	509
1703	89	most	evidence	333
980	55	people	author	86
436	188	low	kid	841
13	347	course	shake	434
669	456	suddenly	face	912
897	921	top	small	750
294	261	health	audience	208
1445	172	democratic	career	441
1314	757	five	hard	881
1402	398	media	view	777
804	716	level	tell	482
141	335	sign	section	810
1340	57	surface	decision	80
1288	756	leave	let	59
374	444	government	debate	220
301	988	firm	when	38
470	316	true	when	658
477	638	state	relate	4
606	771	break	production	694
995	462	structure	yeah	162
403	655	suddenly	next	896
692	669	compare	defense	880
1381	230	science	clear	202
627	464	note	someone	250
1939	235	former	brother	664
996	376	who	small	59
1857	446	first	store	993
644	830	social	film	932
1869	765	owner	think	9
1304	491	she	old	585
149	997	side	policy	221
228	288	dark	bring	174
1411	667	coach	throughout	299
839	7	Congress	board	811
141	571	weight	impact	403
856	134	boy	just	738
1069	285	home	somebody	651
1876	47	against	speech	794
1661	199	business	from	394
706	990	ahead	financial	471
698	158	field	sense	700
408	994	represent	mouth	160
975	465	church	wonder	964
1106	929	agree	sign	886
1012	976	management	alone	884
1105	581	right	finish	144
1787	590	two	message	242
910	371	human	positive	259
854	50	court	pull	181
891	56	participant	yes	635
1378	49	eat	west	308
978	560	gun	then	7
1114	956	same	old	469
630	442	movie	under	14
904	185	end	protect	82
663	805	join	appear	47
1577	490	feel	share	852
2044	802	writer	after	278
276	569	establish	all	865
816	924	yeah	step	521
1217	229	seek	specific	319
196	492	ball	recognize	24
1716	795	upon	leg	592
273	449	the	fire	207
111	839	training	standard	152
1128	828	truth	hope	180
472	326	land	impact	848
393	512	situation	drug	711
\.


--
-- Data for Name: relation_34; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_34 (tag_id, tag_name) FROM stdin;
1	home
2	unit
3	line
4	impact
5	just
6	business
7	beyond
8	table
9	a
10	able
11	force
12	increase
13	court
14	hit
15	box
16	support
17	thought
18	same
19	second
20	oil
21	trouble
22	ever
23	check
24	happy
25	him
26	office
27	rich
28	brother
29	east
30	project
31	forget
32	chance
33	likely
34	case
35	hold
36	simply
37	newspaper
38	positive
39	measure
40	they
41	training
42	entire
43	take
44	boy
45	safe
46	along
47	investment
48	doctor
49	black
50	window
51	off
52	style
53	office
54	stock
55	set
56	election
57	play
58	day
59	establish
60	alone
61	magazine
62	open
63	both
64	weight
65	heavy
66	lay
67	wide
68	summer
69	wife
70	drive
71	society
72	left
73	civil
74	food
75	collection
76	game
77	various
78	hand
79	through
80	paper
81	real
82	religious
83	thing
84	buy
85	be
86	lawyer
87	relationship
88	physical
89	clear
90	official
91	sell
92	good
93	suddenly
94	effort
95	common
96	cup
97	account
98	campaign
99	far
100	seven
\.


--
-- Data for Name: relation_35; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_35 (customer_id, address_id, kind, line1, city, state, country, postal_code) FROM stdin;
203	101	watch	modern	East Katherinebury	pressure	including	hit
376	758	raise	other	New Carlaland	black	economic	collection
216	906	interest	seven	Moyershire	move	summer	form
164	325	officer	effort	South Madison	until	standard	physical
328	812	act	speech	Lake Christopherberg	president	yet	yourself
267	206	service	guess	Williamsbury	level	action	send
170	357	popular	TV	East Sarah	control	partner	full
308	749	security	body	Randallfurt	even	successful	effort
372	164	until	protect	South Katrina	toward	expect	staff
113	857	another	return	Port Robertstad	both	age	prevent
127	712	daughter	evening	South Sharonfurt	fight	although	city
287	403	fire	work	Lake Debraport	ahead	network	popular
386	383	information	could	Port Ashleeland	who	language	lay
356	272	each	huge	Davidland	large	course	everyone
300	991	black	rule	Lake Kelly	fly	institution	be
382	120	bar	claim	Sherrihaven	approach	they	who
382	629	or	soon	Teresaville	attorney	pattern	learn
285	753	bill	amount	Brittanymouth	near	this	north
196	152	hold	bag	New Kelly	personal	same	system
342	836	ground	collection	East Jessicamouth	standard	product	test
290	965	long	contain	New Michelleberg	debate	ready	others
171	539	money	director	Smithville	blue	standard	part
335	581	say	address	South David	film	believe	determine
326	230	course	born	East Antoniohaven	hand	almost	not
139	212	amount	stage	South Christopher	garden	activity	plan
329	696	each	material	North Debraland	quality	mean	eat
339	670	factor	indicate	Port Cameron	trial	tonight	building
152	323	certain	in	Lake Tammyborough	natural	upon	sister
288	378	deal	describe	Stokesstad	institution	go	ahead
359	5	happen	recently	East Mark	nation	clearly	rather
207	544	TV	look	Lake Joshua	assume	improve	organization
396	774	able	peace	Pooleside	soldier	mouth	very
110	291	notice	indicate	Ambermouth	feel	need	writer
382	149	service	sort	Randyport	tell	particular	produce
266	698	movement	parent	New Kentborough	no	even	position
193	120	option	draw	Port Veronica	explain	price	store
244	589	usually	response	Port Jenniferland	likely	information	its
195	637	ago	perform	New Jeffreyville	mention	stage	method
246	782	them	particularly	Kennethberg	increase	time	system
254	836	until	according	South Brad	organization	cultural	new
293	230	girl	lawyer	Taylorton	three	treatment	total
385	861	people	most	Christophermouth	phone	street	research
229	226	common	choose	Lake Brandon	anyone	computer	war
390	422	cover	vote	Martinezfort	go	hour	movie
113	800	black	despite	Beanview	water	growth	chance
181	260	describe	chair	New Brittany	language	prepare	interest
125	400	paper	practice	Port Danachester	seven	data	church
207	938	point	kitchen	North Tamarabury	open	meeting	player
173	948	sound	movement	Charlesland	development	control	late
377	772	best	while	East Joe	family	state	all
136	725	improve	my	Bridgetfurt	artist	security	week
194	396	tonight	remain	South Garrettfurt	goal	director	thank
237	367	compare	very	Meganview	arm	Democrat	physical
198	917	including	study	South Julie	interesting	phone	star
255	359	rather	father	New Caroline	wait	financial	nation
129	290	sure	heavy	South Gina	point	others	lawyer
260	433	article	ok	Sheilatown	behind	close	approach
348	806	own	get	Beasleyton	establish	exist	police
147	444	material	statement	Davidstad	section	court	join
136	148	heavy	break	Darleneside	book	court	hold
297	810	rate	difference	North Geoffrey	seem	their	direction
392	611	central	land	Clarkfort	sell	movement	give
297	410	fine	subject	New Toddhaven	trial	response	difference
272	531	water	close	North Janice	study	defense	expect
364	33	kid	wonder	New Kevinborough	million	page	team
287	539	close	share	Leemouth	father	suddenly	serious
255	79	conference	market	Jamieberg	how	drop	decide
308	15	financial	new	Middletonview	role	write	it
149	807	reality	position	Craigtown	single	worry	you
361	482	part	rule	Davisburgh	fund	shake	rise
116	177	upon	fish	Hernandezfurt	knowledge	test	by
370	744	around	no	Fergusonfort	throughout	film	factor
325	864	executive	figure	East Yvonne	move	always	million
217	794	analysis	continue	South David	serious	remember	keep
351	862	top	really	North Christian	number	campaign	customer
244	26	go	worker	South Trevorborough	indicate	night	than
218	6	citizen	section	New Erika	tree	she	beat
129	226	out	he	West Christopher	other	Democrat	boy
364	323	cultural	new	Port Heather	work	understand	event
365	99	may	lay	South Timothymouth	chair	appear	condition
268	296	hope	own	West Kevinchester	race	tree	value
336	977	member	first	New Lee	because	forget	it
186	80	magazine	speak	Anneburgh	high	new	nearly
106	889	once	worker	Stevenhaven	mean	environment	maybe
363	482	policy	school	Washingtonborough	money	light	evidence
365	180	inside	great	Wilsonville	during	later	to
191	319	organization	on	Lake Jeffreyside	eight	fish	social
222	289	man	attorney	Lake Brianton	enough	structure	adult
117	18	create	turn	Lake Lawrence	authority	beyond	candidate
177	568	see	manager	Lindaville	lay	paper	turn
309	142	bag	along	Johnsonbury	hair	dream	three
250	744	sister	fly	Heatherfort	ago	guess	and
175	596	explain	enjoy	Nicholsberg	the	beyond	threat
133	780	scientist	area	Robertsmouth	admit	attack	owner
335	952	behind	my	Rayland	brother	imagine	as
372	102	analysis	score	Wolfeland	likely	Democrat	than
254	366	foreign	yard	Dominicmouth	few	scientist	black
116	747	good	plan	West Bradley	dark	air	realize
128	444	own	industry	Julianton	hand	necessary	break
398	38	true	series	Michaelshire	left	right	himself
\.


--
-- Data for Name: relation_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_36 (customer_id, payment_method_id, brand, last4, exp_month, exp_year, is_default) FROM stdin;
177	348	size	could	8	980	affect
259	195	child	produce	398	242	help
351	490	without	pull	445	698	others
385	405	nice	prevent	452	467	movie
124	992	across	behind	88	810	friend
352	493	we	school	299	498	teach
234	159	together	unit	690	96	perhaps
253	999	difference	executive	696	670	arm
172	408	might	spend	781	183	unit
391	795	data	can	963	188	growth
236	877	move	organization	956	973	seven
120	535	knowledge	budget	942	18	Mr
317	809	have	opportunity	790	446	Mr
191	187	bag	fire	533	833	much
247	841	street	continue	470	51	stuff
311	880	yes	general	377	337	step
257	146	current	decision	239	648	drug
206	496	item	accept	170	504	major
345	208	never	service	584	268	film
189	266	student	road	465	48	drop
354	336	laugh	establish	77	494	wait
128	496	north	available	50	374	assume
139	500	environment	threat	371	19	medical
377	940	nature	instead	202	708	plan
279	74	Mr	probably	931	79	example
360	872	measure	travel	417	421	difference
361	271	tree	baby	702	695	save
165	683	myself	someone	277	127	year
398	231	investment	example	912	756	spring
243	486	when	thought	808	142	our
292	575	article	most	896	528	end
178	362	debate	film	245	290	statement
248	774	address	stock	778	166	behind
126	377	role	no	778	821	forward
127	222	thought	own	406	49	approach
349	266	available	and	3	342	compare
295	770	about	record	291	800	piece
395	297	million	sea	209	306	score
383	970	government	travel	710	888	edge
152	924	then	process	291	905	stop
332	749	result	friend	455	975	one
311	794	both	tend	218	210	most
354	392	create	buy	39	818	machine
202	571	language	hit	656	115	party
392	397	fight	such	355	787	real
316	688	social	trouble	69	754	process
218	235	treat	home	649	538	memory
185	745	house	head	383	801	son
112	718	stop	drop	328	999	PM
370	850	likely	build	559	305	performance
230	777	art	staff	285	263	wonder
133	672	man	song	386	610	military
190	399	hair	election	791	36	wide
186	886	purpose	easy	626	996	off
343	903	six	final	40	540	key
321	262	watch	however	899	61	worry
395	697	employee	east	223	348	blue
133	286	bed	every	985	771	able
396	306	per	street	99	945	purpose
179	966	though	point	533	699	herself
297	809	toward	short	169	959	top
166	455	place	moment	267	17	religious
118	573	health	us	33	344	set
284	327	of	before	55	193	how
114	486	me	marriage	235	489	mouth
187	675	close	picture	909	669	church
243	793	table	daughter	358	731	even
122	174	already	lead	734	603	foot
178	691	pass	information	908	359	low
256	878	process	wall	339	71	where
309	52	soldier	defense	125	137	class
261	210	and	watch	571	337	senior
272	478	when	source	388	319	night
206	800	would	only	791	468	run
275	382	as	section	488	561	magazine
140	642	knowledge	effort	490	687	then
128	979	red	claim	858	413	figure
242	40	movie	now	572	563	thing
382	664	local	size	134	335	he
150	852	age	someone	423	3	agreement
379	126	enjoy	west	63	978	myself
380	256	Republican	ago	210	699	season
227	758	hour	smile	658	392	spend
350	754	television	art	540	756	perhaps
107	668	into	picture	972	700	house
222	139	number	over	48	891	approach
308	876	market	between	935	733	store
316	608	hospital	bank	911	396	no
365	356	research	relationship	997	461	back
389	39	husband	summer	829	42	Republican
263	86	everything	possible	890	763	because
236	155	suffer	better	56	983	street
214	809	phone	on	101	11	lead
110	790	bag	camera	914	325	concern
325	562	teach	building	538	936	learn
321	203	rock	official	475	463	lose
125	409	in	although	14	56	speech
354	210	describe	heavy	296	707	think
326	883	poor	experience	280	327	important
330	599	direction	rule	871	577	and
\.


--
-- Data for Name: relation_37; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_37 (customer_id, updated_at) FROM stdin;
378	follow
238	region
335	process
176	imagine
303	rate
113	the
282	house
198	plant
121	each
275	firm
190	on
314	side
400	worker
206	all
367	glass
395	inside
235	appear
123	consumer
197	firm
261	doctor
163	go
155	chance
322	say
146	forget
234	appear
290	sing
360	series
191	eight
192	it
361	method
377	TV
317	at
186	above
397	rise
258	radio
345	yourself
332	structure
106	serious
180	mean
139	series
343	feeling
185	that
299	weight
306	meet
291	top
177	business
300	past
321	she
359	around
239	debate
319	consider
308	they
388	clearly
302	green
278	current
279	issue
134	she
233	war
170	possible
144	Congress
136	now
273	over
375	develop
229	remain
221	western
307	leader
160	notice
277	ask
268	condition
135	trouble
223	west
200	firm
362	method
245	hospital
341	worker
247	success
212	about
382	surface
166	build
283	bag
368	wish
358	although
143	run
141	fire
333	free
254	form
137	turn
353	pick
385	new
171	life
311	light
248	country
349	factor
110	bad
344	page
257	professor
342	field
120	course
380	property
205	show
\.


--
-- Data for Name: relation_38; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_38 (customer_id, wishlist_id, wishlist_name) FROM stdin;
202	658	improve
145	327	attention
263	947	also
391	729	do
321	567	mouth
239	99	contain
256	35	anything
112	929	movement
358	53	ability
191	954	usually
227	363	Republican
294	342	available
129	334	more
205	660	from
134	38	themselves
167	520	dog
229	414	above
256	818	into
117	669	degree
164	817	message
251	678	work
379	393	day
121	886	democratic
253	149	indicate
354	393	drive
315	877	recent
395	463	small
395	756	affect
180	487	catch
112	943	read
285	127	everything
227	225	back
263	63	for
145	377	major
287	752	these
317	603	show
149	989	establish
229	777	project
114	803	when
140	381	serious
197	739	human
191	922	past
343	728	fact
290	216	cell
155	932	always
314	475	almost
376	879	section
309	128	economy
292	902	always
290	55	even
249	736	rate
124	528	argue
255	680	plant
298	791	Mrs
107	227	if
108	80	foreign
124	382	perhaps
125	458	talk
181	929	miss
116	621	whether
254	822	nature
127	12	his
179	673	win
122	38	measure
231	413	Republican
229	870	enjoy
132	434	tend
375	60	same
128	512	three
335	941	no
120	673	concern
150	714	character
287	982	yes
193	600	easy
247	131	training
365	960	sing
242	962	affect
104	246	age
226	255	simple
375	632	seven
355	677	have
309	904	education
390	453	between
298	517	impact
307	127	rest
257	280	significant
117	642	almost
115	647	practice
356	947	dinner
328	129	away
344	275	best
321	935	let
208	121	peace
224	795	bag
372	533	into
270	98	any
134	610	away
365	595	traditional
333	65	kind
316	894	cost
\.


--
-- Data for Name: relation_39; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_39 (customer_id, review_id, rating, title, body, created_at) FROM stdin;
353	675	419	public	keep	thousand
355	171	859	speak	sport	beyond
296	872	668	success	the	whole
349	256	177	level	us	over
273	979	230	west	window	account
140	929	685	learn	particularly	house
145	936	380	check	evening	now
206	591	349	through	son	amount
103	49	379	education	article	deal
323	322	783	talk	share	unit
144	25	508	place	health	at
386	532	79	military	case	beyond
234	883	960	run	someone	subject
274	888	55	young	serve	wonder
126	952	93	old	Republican	make
391	714	804	agreement	stage	become
335	248	160	open	collection	wrong
331	529	750	along	choose	society
386	408	503	war	PM	dinner
292	511	809	middle	pretty	police
370	551	833	woman	perhaps	current
113	204	284	think	deal	product
105	452	573	forget	indicate	Congress
245	7	220	leg	price	manager
385	624	86	garden	read	room
217	188	618	beat	ability	number
151	619	507	charge	major	true
400	660	235	claim	assume	hair
117	507	371	produce	six	fact
127	244	23	station	catch	offer
165	773	180	raise	economic	safe
289	477	191	poor	stand	total
193	235	953	development	this	must
264	49	413	necessary	next	usually
165	42	720	value	station	financial
309	328	136	scientist	radio	pattern
199	723	205	budget	final	position
273	582	400	education	together	cover
239	772	152	key	see	stuff
127	699	977	manager	compare	various
334	906	742	image	indeed	also
148	383	554	fire	understand	too
186	255	734	radio	successful	image
221	186	814	activity	charge	plant
381	270	564	candidate	beautiful	still
265	523	959	group	world	wife
365	990	72	sea	ten	century
167	508	149	computer	thought	subject
325	241	221	role	when	again
381	236	615	stand	answer	free
369	128	725	claim	big	take
366	740	617	center	hair	girl
269	533	278	account	smile	loss
274	449	358	gun	think	government
339	938	411	number	audience	apply
223	471	761	artist	likely	fish
161	269	446	those	several	reveal
365	36	686	should	receive	himself
385	308	954	professional	lead	bad
316	755	50	party	machine	part
225	529	685	set	environmental	three
301	662	956	everyone	up	grow
336	214	926	book	build	project
254	370	499	board	middle	word
196	798	99	in	explain	fine
187	17	208	rate	left	gas
298	834	359	occur	professor	themselves
108	128	218	instead	which	senior
322	870	626	machine	choose	food
294	815	98	wall	skill	street
136	255	239	name	nor	land
202	356	30	yet	sing	total
392	42	177	certain	responsibility	night
244	484	806	can	ago	south
298	550	300	decision	wish	senior
219	259	677	would	staff	plant
139	22	611	I	policy	us
317	897	785	represent	rate	score
286	946	525	owner	article	with
272	424	949	future	parent	financial
377	587	191	view	make	perhaps
150	460	339	group	see	between
244	780	971	item	expert	still
256	613	789	in	figure	person
195	629	393	cup	example	individual
227	359	97	indicate	community	fish
311	1000	462	according	avoid	draw
116	443	676	let	four	pay
297	701	62	operation	chair	help
199	405	148	attack	sometimes	follow
319	366	861	computer	my	word
230	759	374	anything	evidence	majority
369	887	314	medical	single	six
310	951	34	serious	large	none
373	449	197	forward	save	central
353	881	867	collection	admit	best
204	496	56	research	pressure	difference
120	57	379	financial	product	each
188	873	953	state	sound	happen
345	433	290	affect	research	machine
\.


--
-- Data for Name: relation_4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_4 (digitalproduct_id, sku, product_name, base_price, is_active, quantity, delivery_type) FROM stdin;
201	wife	reduce	173	305	669	company
202	probably	detail	365	625	758	cell
203	method	baby	402	575	410	quickly
204	all	sound	496	809	266	open
205	about	them	734	228	265	administration
206	very	reflect	865	677	32	state
207	bed	ability	325	951	443	should
208	laugh	bit	805	276	195	recently
209	indicate	government	641	750	170	either
210	tough	environment	596	936	956	much
211	learn	reflect	621	969	269	whatever
212	close	debate	540	167	142	trip
213	care	court	916	733	452	growth
214	describe	tax	318	770	411	right
215	sister	address	119	736	212	think
216	law	section	70	109	234	use
217	happy	region	330	505	951	worry
218	unit	section	979	192	47	happy
219	lot	author	829	612	24	ball
220	image	year	700	36	507	sense
221	moment	indeed	351	679	858	future
222	amount	edge	121	628	710	modern
223	executive	foreign	98	228	410	evening
224	player	heart	507	461	387	across
225	while	wonder	997	238	242	develop
226	consider	that	474	561	594	during
227	plant	law	217	463	733	record
228	professional	trade	339	509	608	part
229	team	up	932	219	81	something
230	letter	four	16	817	6	get
231	long	red	328	911	393	matter
232	institution	subject	941	201	410	rock
233	decide	out	902	845	777	clearly
234	commercial	oil	813	936	32	something
235	city	level	397	149	898	your
236	defense	practice	579	389	261	sport
237	meet	address	82	474	668	beyond
238	could	bar	928	15	37	piece
239	increase	any	538	861	133	strategy
240	believe	support	956	281	800	just
241	someone	management	443	94	195	part
242	make	player	512	653	134	career
243	stage	tonight	704	837	866	first
244	treatment	hour	679	459	400	summer
245	never	difficult	647	275	993	president
246	successful	begin	658	651	249	politics
247	more	effect	62	603	958	all
248	near	identify	359	439	620	defense
249	chair	main	927	362	561	compare
250	fly	budget	552	205	729	draw
251	sit	news	942	679	72	center
252	community	debate	762	626	739	read
253	fact	hope	258	182	1000	necessary
254	figure	design	155	61	941	conference
255	address	ask	876	439	873	election
256	hard	type	55	653	94	officer
257	his	choice	514	380	102	choice
258	value	even	42	130	545	quickly
259	stage	politics	454	681	132	soon
260	appear	single	782	725	921	while
261	dog	though	26	755	538	without
262	build	course	93	257	820	word
263	garden	west	88	310	36	main
264	certain	far	60	751	268	beat
265	goal	almost	753	134	267	strategy
266	apply	appear	827	120	877	window
267	police	approach	97	436	862	statement
268	box	campaign	515	571	211	person
269	these	blue	946	347	522	accept
270	art	forward	980	918	599	government
271	water	various	108	133	669	maybe
272	national	pay	537	573	737	wonder
273	miss	seven	919	852	299	two
274	in	day	205	380	399	and
275	defense	in	100	420	354	deal
276	where	process	589	67	45	side
277	drop	military	835	819	667	go
278	image	project	428	306	327	race
279	join	image	280	334	767	always
280	decade	list	539	125	153	smile
281	apply	character	937	745	334	though
282	training	star	587	71	463	expert
283	role	here	492	466	935	trade
284	investment	develop	950	760	994	less
285	guy	best	836	911	948	center
286	many	just	945	593	821	wind
287	state	ten	138	50	537	share
288	especially	identify	590	874	258	whether
289	single	animal	720	588	765	identify
290	military	read	371	965	817	cause
291	become	church	413	315	476	training
292	suddenly	wish	545	520	172	air
293	difficult	bill	152	257	704	position
294	cause	table	577	137	929	open
295	audience	community	190	785	421	attack
296	now	low	832	102	559	high
297	democratic	but	732	110	210	inside
298	kind	remain	69	648	585	tell
299	area	class	876	75	814	need
300	machine	care	659	859	178	seem
1901	message	newspaper	276	355	769	wide
1902	marriage	spend	303	608	243	write
1903	serious	lose	559	43	338	anyone
1904	she	music	570	183	758	represent
1905	drop	drop	424	326	559	understand
1906	mind	these	614	843	932	provide
1907	sit	everything	797	662	547	boy
1908	down	cell	30	326	489	several
1909	morning	significant	210	409	102	history
1910	contain	newspaper	728	647	817	impact
1911	card	one	506	552	565	pick
1912	coach	civil	775	797	459	few
1913	cultural	close	696	654	198	month
1914	develop	offer	651	264	620	summer
1915	coach	nation	8	69	832	kitchen
1916	really	media	19	825	196	institution
1917	safe	letter	281	653	580	clearly
1918	address	drop	787	490	573	for
1919	speech	lot	464	43	390	area
1920	north	thought	412	57	656	experience
1921	lot	fact	297	363	240	around
1922	book	system	471	572	482	occur
1923	ready	effort	39	786	998	nothing
1924	significant	claim	121	330	833	few
1925	head	my	960	439	750	discuss
1926	note	plant	862	719	759	lose
1927	question	two	883	911	284	discuss
1928	little	between	701	563	895	cultural
1929	class	lawyer	991	110	674	two
1930	step	agreement	436	519	435	ago
1931	field	take	837	491	229	parent
1932	thank	participant	182	530	610	fear
1933	security	conference	636	938	479	born
1934	goal	base	105	87	411	town
1935	behavior	happy	772	273	196	degree
1936	court	share	588	686	964	six
1937	relate	baby	995	610	385	air
1938	usually	should	605	13	244	reach
1939	couple	cause	395	270	629	nothing
1940	itself	need	88	167	404	add
1941	suggest	fire	803	53	218	foot
1942	coach	year	873	185	179	soon
1943	actually	after	578	119	240	effect
1944	air	woman	429	296	161	of
1945	we	media	862	594	137	conference
1946	research	finally	562	195	126	example
1947	truth	protect	673	506	207	heart
1948	hear	boy	640	717	815	per
1949	they	budget	735	851	619	probably
1950	follow	station	181	339	674	two
1951	bit	be	197	979	665	their
1952	hospital	model	114	335	597	good
1953	control	economic	183	3	772	others
1954	particular	possible	392	553	396	trouble
1955	read	rule	66	325	345	pattern
1956	out	religious	266	903	275	move
1957	wonder	continue	164	960	473	authority
1958	finish	know	393	481	96	according
1959	mother	however	728	125	572	value
1960	word	do	264	966	317	recently
1961	carry	traditional	833	302	761	dream
1962	right	act	205	366	666	price
1963	bed	per	687	876	863	push
1964	sea	for	553	895	659	agency
1965	safe	black	843	816	442	be
1966	raise	herself	269	775	548	line
1967	interesting	bill	136	681	911	it
1968	coach	democratic	807	346	54	cause
1969	live	south	967	257	882	image
1970	family	happy	990	680	903	between
1971	live	party	619	252	38	song
1972	tree	may	880	873	96	week
1973	couple	last	686	185	197	suffer
1974	information	seat	923	832	841	before
1975	indeed	arrive	518	627	874	decide
1976	war	space	696	419	506	clearly
1977	ago	nice	555	901	246	who
1978	but	similar	678	111	836	its
1979	thought	lawyer	437	181	33	case
1980	cell	record	313	363	32	wait
1981	feeling	share	350	396	449	city
1982	citizen	think	485	364	742	whatever
1983	who	scene	448	63	693	present
1984	among	star	266	583	50	hot
1985	data	very	394	158	487	beautiful
1986	major	world	400	848	557	attorney
1987	arm	really	183	232	527	watch
1988	place	power	856	630	867	some
1989	down	whatever	422	465	768	manager
1990	clearly	return	203	48	581	them
1991	late	especially	76	968	723	relationship
1992	guy	world	6	913	145	with
1993	huge	since	705	872	841	condition
1994	beyond	actually	348	214	105	lay
1995	as	form	916	325	34	could
1996	should	actually	207	359	972	success
1997	myself	hand	715	44	662	box
1998	food	task	607	931	314	who
1999	yet	wife	301	667	518	citizen
2000	director	in	768	173	811	pass
2001	money	art	674	842	707	five
2002	paper	owner	584	1	447	act
2003	identify	court	813	228	984	top
2004	plant	some	99	8	447	charge
2005	majority	candidate	563	295	529	space
2006	increase	catch	971	757	858	admit
2007	series	to	826	635	587	learn
2008	expect	serious	197	823	821	success
2009	send	hand	325	118	971	eight
2010	over	it	576	122	496	natural
2011	measure	recently	808	569	394	sing
2012	story	suggest	574	917	57	hear
2013	participant	resource	476	917	274	wish
2014	concern	collection	593	336	741	type
2015	five	pick	129	842	319	leader
2016	material	help	49	130	296	firm
2017	lose	sound	807	608	126	sort
2018	doctor	start	858	439	441	build
2019	race	third	434	365	574	wear
2020	employee	American	718	590	505	provide
2021	themselves	expert	735	665	722	middle
2022	effect	like	950	301	770	several
2023	perform	bar	479	248	214	Mrs
2024	mind	product	136	64	972	different
2025	marriage	reveal	753	15	784	medical
2026	picture	society	460	987	684	market
2027	majority	real	214	297	905	whom
2028	course	region	149	88	937	wide
2029	discuss	little	544	93	676	travel
2030	part	beyond	175	418	173	guy
2031	state	house	779	432	829	admit
2032	involve	hotel	348	793	676	business
2033	major	order	862	571	238	two
2034	that	area	337	763	782	thought
2035	sometimes	common	793	772	768	quality
2036	enough	upon	175	648	300	commercial
2037	decade	either	115	232	640	probably
2038	school	professor	437	605	5	edge
2039	them	simple	179	703	811	save
2040	moment	boy	822	551	451	here
2041	discuss	school	954	645	151	similar
2042	movie	research	411	876	231	population
2043	before	though	855	735	927	throughout
2044	former	rich	125	515	767	coach
2045	leave	management	25	301	649	able
2046	season	though	294	57	95	say
2047	say	outside	365	118	685	small
2048	receive	everyone	282	980	728	least
2049	despite	possible	57	566	280	these
2050	certainly	require	978	358	252	main
2051	house	station	1000	804	502	serious
2052	Mrs	open	779	773	70	society
2053	leave	require	419	390	482	event
2054	land	senior	848	629	423	fire
2055	happy	city	445	227	468	he
2056	growth	reason	754	520	405	consider
2057	game	fire	194	206	909	as
2058	peace	word	39	642	147	heart
2059	not	federal	360	361	870	without
2060	who	occur	260	875	990	energy
2061	Congress	open	328	318	19	reduce
2062	wish	bag	446	466	272	should
2063	factor	begin	801	736	723	successful
2064	close	trade	722	764	13	ask
2065	director	road	956	436	716	director
2066	unit	child	237	848	612	carry
2067	family	can	834	634	395	chance
2068	democratic	say	242	559	728	may
2069	development	despite	228	685	123	why
2070	near	I	871	97	198	student
2071	surface	include	44	424	903	beyond
2072	foreign	call	148	740	691	sit
2073	vote	memory	478	649	851	science
2074	student	life	876	63	969	long
2075	nice	teacher	729	780	103	eye
2076	produce	always	193	362	65	operation
2077	avoid	lot	586	612	223	social
2078	probably	case	998	401	299	stock
2079	painting	budget	609	300	317	sit
2080	win	first	597	903	372	across
2081	treatment	but	226	123	754	bill
2082	only	alone	146	369	953	mind
2083	full	before	361	612	540	drug
2084	director	Mrs	924	54	537	suffer
2085	me	to	93	880	445	heart
2086	speak	customer	847	539	366	writer
2087	little	today	1000	313	532	wife
2088	animal	like	396	530	559	under
2089	rate	fire	171	153	550	dream
2090	now	condition	926	677	626	former
2091	project	recent	674	228	716	yet
2092	skin	trip	446	433	945	song
2093	night	media	516	644	892	surface
2094	want	speech	952	317	454	she
2095	assume	become	58	466	574	rich
2096	section	win	1	592	965	huge
2097	party	per	306	632	514	tree
2098	anyone	yeah	659	75	116	current
2099	ahead	cold	372	459	376	grow
2100	foot	like	154	285	837	information
\.


--
-- Data for Name: relation_40; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_40 (user_id, session_id, started_at, device) FROM stdin;
7	445	tend	remain
740	702	beyond	day
183	47	model	try
699	641	law	central
116	643	think	recently
238	748	edge	inside
113	858	natural	hear
309	102	language	whole
946	38	Congress	everybody
461	322	power	party
967	224	wide	civil
619	747	size	official
518	578	you	support
586	63	team	activity
66	685	plan	performance
995	975	present	forward
648	671	price	find
318	72	often	significant
415	630	catch	six
803	783	moment	leg
208	813	fast	program
77	899	low	place
909	377	certain	majority
772	361	sense	enter
898	778	against	later
467	40	better	house
329	443	carry	word
382	748	body	ago
315	281	end	agree
993	979	near	idea
921	421	believe	trouble
357	1	save	coach
102	577	across	such
21	430	create	from
537	314	instead	painting
977	863	down	live
637	447	fly	director
361	792	real	because
754	709	hard	all
169	717	station	east
837	128	own	turn
346	49	whether	measure
246	457	campaign	own
266	713	debate	remember
730	848	leg	wish
774	872	together	meeting
492	268	grow	instead
197	636	worker	weight
910	571	mission	understand
384	489	situation	safe
148	931	television	item
375	1	never	nearly
921	316	meet	available
753	264	on	wait
314	62	would	by
784	748	concern	reach
385	541	force	score
222	366	more	method
413	672	prove	purpose
751	65	event	focus
815	640	apply	budget
801	607	far	serve
836	7	send	involve
458	367	meeting	type
734	152	audience	crime
724	28	magazine	herself
729	889	share	Mr
362	437	best	degree
690	792	western	industry
579	10	parent	wall
11	421	eat	treatment
718	82	author	type
294	12	report	effort
390	843	order	value
424	838	discussion	simply
636	528	always	mission
695	301	if	buy
2	169	type	success
929	254	president	term
202	463	administration	successful
215	649	receive	blue
465	840	other	direction
398	789	million	throughout
132	516	fire	tonight
899	157	modern	direction
808	893	fish	scientist
240	87	sense	shoulder
815	294	set	official
114	66	though	light
613	103	white	dinner
447	326	represent	ahead
701	1000	section	trip
265	35	worry	weight
822	905	hospital	key
215	571	over	pull
408	444	least	action
466	11	technology	language
382	657	wonder	sense
358	557	record	officer
761	891	matter	company
\.


--
-- Data for Name: relation_41; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_41 (custorder_id, placed_at, status) FROM stdin;
1	Mrs	fear
2	guess	learn
3	participant	environmental
4	pattern	detail
5	capital	information
6	sure	land
7	toward	central
8	ball	career
9	decade	girl
10	sell	role
11	enjoy	part
12	city	member
13	her	response
14	identify	someone
15	size	moment
16	at	green
17	size	treat
18	poor	safe
19	member	myself
20	week	traditional
21	pretty	crime
22	morning	operation
23	improve	mission
24	nice	energy
25	base	eight
26	term	while
27	east	reality
28	so	only
29	relationship	between
30	these	I
31	range	book
32	without	writer
33	no	so
34	natural	leader
35	weight	player
36	produce	right
37	next	music
38	various	can
39	be	light
40	subject	audience
41	wall	fill
42	style	late
43	vote	school
44	population	result
45	bring	conference
46	as	quickly
47	sure	bad
48	positive	listen
49	garden	success
50	concern	ever
51	Democrat	sometimes
52	garden	hit
53	firm	author
54	field	seat
55	near	simply
56	fire	make
57	box	become
58	everything	book
59	under	may
60	media	develop
61	clearly	art
62	military	white
63	million	town
64	answer	go
65	provide	society
66	make	production
67	responsibility	operation
68	a	white
69	exist	idea
70	through	authority
71	small	candidate
72	soldier	administration
73	mean	pull
74	but	real
75	policy	agent
76	option	analysis
77	administration	world
78	training	check
79	positive	pattern
80	her	star
81	draw	rate
82	yard	food
83	blue	color
84	send	realize
85	begin	very
86	strategy	animal
87	case	nor
88	investment	win
89	size	specific
90	why	compare
91	network	increase
92	life	science
93	guy	today
94	from	seek
95	simply	international
96	that	marriage
97	born	something
98	successful	girl
99	cup	thought
100	road	recognize
\.


--
-- Data for Name: relation_42; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_42 (custorder_id, shipment_id, carrier, tracking_no, shipped_at, delivered_at) FROM stdin;
16	927	involve	lawyer	professional	mean
37	388	consider	technology	white	Democrat
19	173	analysis	herself	parent	thought
40	746	his	personal	senior	test
52	162	wait	white	source	less
17	293	human	thought	east	project
42	540	race	down	use	thing
88	794	option	inside	kind	everybody
51	769	structure	heart	care	should
80	639	give	including	condition	gas
62	282	structure	control	information	want
68	291	off	trade	laugh	wide
83	891	stop	police	enough	why
60	769	nature	site	executive	six
100	317	several	century	third	smile
3	5	pull	air	individual	indicate
46	279	chance	physical	suggest	act
21	410	raise	away	color	involve
53	418	world	evidence	figure	tonight
61	497	role	bad	instead	theory
66	52	floor	determine	remain	reduce
69	807	plan	them	officer	west
32	246	tree	both	end	rather
57	243	company	machine	note	every
8	998	attorney	always	become	practice
16	479	turn	visit	sometimes	there
75	839	mission	instead	perhaps	church
54	445	product	piece	son	food
71	664	ten	account	easy	use
85	368	upon	reach	task	specific
35	685	under	foot	ready	serve
8	929	understand	should	issue	score
46	550	hot	behind	finish	risk
55	342	partner	military	idea	doctor
49	658	effort	boy	stuff	find
100	407	word	behind	ok	kid
2	590	ahead	want	radio	security
64	50	professor	fill	head	on
18	658	million	officer	artist	ready
75	350	air	teach	arrive	party
40	30	effect	reason	ask	civil
91	971	spend	exist	clear	discussion
51	819	despite	north	west	financial
11	424	who	meet	item	indicate
84	807	debate	become	security	system
67	944	much	system	mission	should
50	682	Mr	visit	police	fact
96	71	page	happen	American	one
94	198	lay	full	young	have
43	78	maybe	adult	out	political
11	51	among	try	send	player
71	535	hand	major	president	thousand
92	47	network	situation	learn	put
96	302	sea	education	mouth	wish
42	67	career	wear	room	process
88	886	series	brother	nothing	message
92	272	name	soldier	college	herself
11	124	east	per	get	series
82	931	wish	push	whole	hold
2	192	plan	prevent	camera	responsibility
35	562	court	author	language	everything
78	853	of	provide	wind	scientist
6	534	tree	draw	quality	east
67	61	focus	Mr	my	case
72	342	she	level	thank	think
21	578	put	painting	likely	under
27	24	training	quite	line	bar
33	610	member	chair	finish	onto
53	426	model	about	find	voice
93	416	herself	wear	number	safe
54	214	challenge	that	market	degree
79	170	which	lay	hold	card
64	183	once	not	area	meet
12	202	bad	food	loss	total
73	231	popular	far	check	agency
65	19	direction	break	writer	expert
84	573	rather	wrong	gun	site
27	234	half	card	company	effect
57	984	exactly	through	score	management
86	599	itself	debate	political	rest
66	796	save	ever	voice	as
21	946	field	station	force	black
61	239	choose	any	art	grow
72	513	fill	best	budget	sport
59	83	computer	film	these	their
96	179	network	floor	member	green
47	984	move	home	current	pattern
43	473	option	sort	continue	really
25	75	receive	give	leader	pretty
75	476	individual	student	myself	young
14	42	ability	detail	then	save
87	925	individual	officer	notice	space
77	47	within	anyone	think	large
100	587	base	product	everybody	allow
48	120	number	people	admit	since
38	137	meeting	major	network	employee
43	382	once	stop	someone	goal
32	170	final	public	under	shoulder
15	93	impact	machine	order	far
44	204	performance	question	instead	future
\.


--
-- Data for Name: relation_43; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_43 (promotion_id, promo_name, starts_at, ends_at, discount_type, discount_value) FROM stdin;
1	mother	hold	good	television	significant
2	health	eight	animal	town	thousand
3	sea	actually	key	name	seem
4	edge	take	benefit	white	simply
5	soldier	drop	action	when	special
6	same	least	special	because	imagine
7	next	make	whatever	one	keep
8	professor	gas	apply	big	include
9	left	serve	film	home	sure
10	do	box	hand	glass	question
11	offer	pass	debate	deep	beat
12	require	large	argue	however	each
13	high	policy	ask	it	every
14	against	energy	relate	keep	deep
15	argue	respond	many	heart	I
16	kid	skill	feel	interview	eye
17	care	these	program	something	tough
18	voice	laugh	put	trip	building
19	thought	look	near	seem	especially
20	too	strategy	friend	painting	personal
21	term	here	police	home	specific
22	mission	teach	will	common	attention
23	small	will	enter	new	activity
24	speech	black	positive	lose	model
25	third	media	town	theory	out
26	food	military	another	lay	development
27	work	position	mention	policy	herself
28	indeed	stop	all	career	less
29	eat	hundred	several	theory	go
30	member	himself	speak	forget	fire
31	often	nothing	PM	big	offer
32	either	detail	garden	write	next
33	use	walk	research	whom	per
34	four	get	past	leg	run
35	citizen	find	line	tree	major
36	around	more	material	him	water
37	public	treatment	series	particularly	industry
38	they	free	soon	single	check
39	popular	travel	relationship	paper	half
40	wish	affect	protect	policy	research
41	religious	stand	realize	indicate	business
42	hair	after	cup	least	teach
43	without	happy	use	out	official
44	because	these	speech	factor	perform
45	person	husband	general	control	receive
46	war	begin	as	get	ready
47	fish	part	so	admit	relate
48	significant	glass	they	gun	will
49	learn	century	professor	everything	present
50	they	break	food	take	partner
51	term	suffer	through	let	group
52	response	defense	whatever	green	usually
53	machine	step	product	training	certain
54	free	along	system	management	through
55	stock	attention	on	debate	idea
56	late	especially	old	stage	fact
57	him	western	contain	result	trial
58	score	each	home	single	bit
59	look	west	piece	before	thought
60	life	mention	government	star	lose
61	sport	wife	hold	meeting	subject
62	throughout	nearly	material	serve	professor
63	off	pass	run	some	race
64	store	start	better	base	successful
65	shoulder	follow	order	treat	dream
66	consumer	management	energy	newspaper	its
67	value	list	everyone	source	this
68	lawyer	never	see	low	describe
69	cost	listen	subject	second	sing
70	professor	choice	argue	test	finally
71	last	town	wish	upon	check
72	possible	change	treatment	high	site
73	six	fire	girl	man	dream
74	example	black	travel	project	treatment
75	song	piece	best	season	window
76	dark	every	let	sit	positive
77	radio	establish	mention	mind	black
78	certainly	under	somebody	must	ready
79	statement	education	collection	arrive	tree
80	discussion	attack	stay	never	owner
81	appear	sometimes	mean	current	from
82	husband	hair	class	buy	physical
83	change	stop	or	consumer	simple
84	consider	town	make	along	yes
85	agency	theory	light	another	small
86	partner	worker	student	next	shake
87	never	firm	common	total	everyone
88	wide	part	always	green	leg
89	amount	office	owner	already	great
90	later	enjoy	popular	similar	treatment
91	American	throw	without	into	stock
92	former	professor	image	person	marriage
93	north	hear	lay	meeting	writer
94	sign	firm	guess	result	stand
95	agree	land	sort	citizen	over
96	pattern	process	director	case	wife
97	name	far	oil	sometimes	institution
98	term	able	education	soon	reason
99	ask	fight	make	experience	civil
100	social	deep	administration	role	case
\.


--
-- Data for Name: relation_44; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_44 (promotion_id, coupon_code, max_uses, per_user_limit) FROM stdin;
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
-- Data for Name: relation_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_45 (warehouse_id, warehouse_name, region) FROM stdin;
1	call	simply
2	turn	listen
3	place	whatever
4	administration	medical
5	difference	do
6	however	return
7	paper	assume
8	position	go
9	measure	everybody
10	reality	his
11	least	along
12	sit	pattern
13	agreement	hard
14	she	road
15	speak	social
16	training	laugh
17	land	argue
18	long	seven
19	process	than
20	skill	go
21	final	opportunity
22	say	especially
23	affect	site
24	provide	which
25	increase	write
26	walk	claim
27	hotel	which
28	like	record
29	affect	official
30	your	TV
31	doctor	institution
32	happen	financial
33	soldier	seven
34	again	discuss
35	next	administration
36	trouble	great
37	card	approach
38	today	whose
39	hundred	expert
40	consumer	when
41	when	base
42	health	parent
43	rule	hear
44	whom	test
45	with	with
46	go	church
47	believe	no
48	religious	street
49	page	number
50	player	newspaper
51	miss	grow
52	available	growth
53	your	report
54	cup	author
55	everything	every
56	response	live
57	top	statement
58	entire	choice
59	couple	save
60	brother	past
61	central	piece
62	concern	three
63	always	nor
64	court	seat
65	up	after
66	food	mind
67	break	light
68	small	law
69	southern	across
70	able	tell
71	of	include
72	grow	laugh
73	determine	against
74	company	recognize
75	use	area
76	machine	billion
77	Congress	product
78	watch	activity
79	soon	oil
80	chair	beyond
81	experience	push
82	before	house
83	result	candidate
84	there	similar
85	pressure	wear
86	close	speech
87	enter	place
88	out	woman
89	Republican	guess
90	plan	could
91	should	investment
92	friend	theory
93	audience	realize
94	who	tend
95	strong	guess
96	finally	truth
97	subject	Mrs
98	success	common
99	send	whatever
100	entire	memory
\.


--
-- Data for Name: relation_46; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_46 (warehouse_id, bin_id, code) FROM stdin;
58	789	wife
40	943	camera
72	244	try
65	777	speak
3	398	discussion
59	180	outside
57	823	local
94	989	heart
69	35	sit
2	134	body
39	489	standard
79	496	experience
81	661	discuss
83	790	draw
71	727	religious
5	766	party
58	253	sell
26	74	evidence
2	441	state
19	5	kitchen
8	549	wait
35	331	church
9	227	boy
1	556	eye
18	99	culture
45	961	sort
82	205	daughter
36	493	walk
23	845	range
96	679	go
60	639	born
19	991	maintain
69	325	Democrat
21	995	inside
51	961	star
76	214	sometimes
39	611	set
87	677	speak
33	469	probably
57	140	most
24	180	hour
21	511	option
53	765	method
42	173	feeling
80	791	own
18	272	trial
70	665	theory
93	676	focus
83	24	ball
52	818	become
69	279	program
84	954	must
23	557	statement
46	750	professional
96	112	PM
69	257	meet
6	180	picture
82	709	operation
55	25	performance
9	661	ever
3	591	must
70	9	magazine
60	552	would
56	375	heart
78	789	four
19	922	reflect
23	57	sea
2	378	sense
93	602	growth
84	831	news
91	85	natural
8	126	including
19	159	movement
3	262	human
29	586	push
95	580	computer
25	693	red
10	353	then
53	353	teach
95	506	item
50	521	watch
25	276	mission
93	565	although
25	742	street
53	812	note
31	390	such
28	103	both
52	694	unit
31	325	against
70	951	concern
48	826	sense
5	213	since
21	329	none
39	635	rather
59	103	bar
2	192	home
97	732	professor
70	377	behind
26	163	hit
36	796	anything
\.


--
-- Data for Name: relation_47; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_47 (supplier_id, supplier_name) FROM stdin;
1	hit
2	whatever
3	west
4	order
5	police
6	national
7	general
8	instead
9	these
10	style
11	often
12	thought
13	seven
14	side
15	arm
16	not
17	thank
18	then
19	score
20	kind
21	respond
22	necessary
23	choice
24	place
25	rise
26	keep
27	civil
28	choose
29	degree
30	area
31	nothing
32	church
33	wait
34	office
35	see
36	key
37	change
38	story
39	generation
40	half
41	positive
42	military
43	key
44	baby
45	next
46	serious
47	nothing
48	can
49	coach
50	he
51	according
52	including
53	lose
54	almost
55	action
56	power
57	party
58	together
59	weight
60	certain
61	response
62	well
63	language
64	against
65	to
66	a
67	alone
68	already
69	production
70	safe
71	paper
72	others
73	tough
74	charge
75	left
76	only
77	international
78	industry
79	according
80	scientist
81	offer
82	a
83	affect
84	likely
85	protect
86	eight
87	beyond
88	difficult
89	either
90	ever
91	night
92	represent
93	risk
94	heavy
95	reveal
96	much
97	book
98	opportunity
99	training
100	minute
\.


--
-- Data for Name: relation_48; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_48 (supplier_id, contact_id, email, phone) FROM stdin;
21	114	heidi54@example.com	power
25	386	ubrown@example.org	far
72	443	bruce83@example.net	value
40	212	ryan96@example.com	newspaper
9	290	hillnicholas@example.org	century
64	515	ichristian@example.org	color
60	233	williamssara@example.net	role
80	742	henrydonna@example.org	watch
7	892	jensenangela@example.com	ball
34	333	gregorymorrison@example.net	any
51	589	samanthalawrence@example.com	short
95	865	millermorgan@example.com	our
20	946	huntergabriel@example.com	Mrs
84	346	samanthataylor@example.com	Mrs
43	463	fbarton@example.org	hundred
22	535	jose96@example.org	long
13	825	vegadeborah@example.net	growth
59	130	clayton73@example.com	thus
20	962	hwilson@example.org	company
1	393	steven97@example.org	factor
22	135	jennifer95@example.net	team
14	570	awright@example.com	weight
82	212	michealdavidson@example.com	sing
81	882	daniel95@example.com	play
15	927	michelle91@example.org	trouble
8	797	lisaklein@example.org	pretty
74	778	morganroberson@example.com	since
63	229	kimreyes@example.org	art
70	408	lance95@example.org	rock
92	357	derekthomas@example.com	show
38	93	curtismitchell@example.org	human
29	378	qgreer@example.org	window
96	25	fullernicholas@example.org	down
13	270	tyler84@example.org	continue
36	297	juanbradley@example.org	value
71	318	ericacherry@example.org	anything
24	442	plara@example.org	interest
89	502	mary73@example.org	dream
42	883	monicaguerrero@example.net	page
49	288	smithmelanie@example.com	church
71	790	powersnathaniel@example.org	yes
52	928	colliermichael@example.net	language
27	428	chaselaura@example.com	leave
45	73	ashleymcfarland@example.org	up
90	547	browndeborah@example.net	into
58	312	patrick30@example.com	weight
40	406	tina51@example.org	as
45	725	kenneth14@example.net	entire
85	30	jenniferpayne@example.org	all
37	133	salazarjames@example.org	long
15	766	justinjohnson@example.net	turn
42	243	paulgonzalez@example.net	interview
86	910	kjohnson@example.net	note
32	529	jose24@example.org	central
76	704	lkaiser@example.com	reason
44	144	michaellucas@example.net	thank
77	999	eric38@example.com	difficult
6	968	harrisoncody@example.org	entire
45	172	geraldlawson@example.com	shake
75	258	christopher21@example.org	paper
68	952	nicholsjason@example.com	war
83	880	abishop@example.org	model
52	730	qherrera@example.net	goal
8	743	lewisjustin@example.net	cold
80	232	gregory29@example.com	case
39	909	ibenton@example.com	whether
44	996	bporter@example.org	continue
44	527	turnerjulie@example.com	central
96	617	umunoz@example.org	help
95	869	kevinjones@example.com	during
6	3	samuel33@example.net	across
53	952	claytondaniel@example.com	eye
37	838	myu@example.org	some
1	102	dsims@example.com	traditional
18	599	gmiller@example.net	foreign
37	112	ccarlson@example.net	card
6	280	gilbert26@example.net	night
7	884	deborah36@example.com	position
78	489	yclark@example.com	property
64	54	anthony66@example.com	wide
27	878	russelledwin@example.net	well
25	756	jennifer88@example.com	series
7	865	dcruz@example.org	kind
45	288	hubbardvictor@example.net	couple
48	526	morrisoneric@example.org	allow
29	329	stevenmartinez@example.org	respond
42	505	kimcourtney@example.net	work
5	606	smalljohn@example.org	case
81	820	schwartzmelissa@example.org	others
18	132	rhart@example.net	where
73	194	salasrodney@example.net	kid
84	241	nicolelee@example.com	determine
92	56	psmith@example.net	effort
12	36	kristenpeterson@example.com	stand
7	196	mitchellbenjamin@example.org	long
97	368	rcollins@example.net	operation
53	803	james63@example.com	quality
93	162	johnsonjoseph@example.net	knowledge
25	831	deannasloan@example.net	physical
100	214	ronaldpeterson@example.com	nor
\.


--
-- Data for Name: relation_49; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_49 (purchaseorder_id, created_at, status) FROM stdin;
1	some	capital
2	people	help
3	camera	clearly
4	property	traditional
5	next	everything
6	term	deep
7	station	beautiful
8	most	while
9	foot	serve
10	set	house
11	network	push
12	take	ahead
13	west	myself
14	until	step
15	design	TV
16	four	friend
17	century	the
18	star	fear
19	with	first
20	important	glass
21	his	season
22	west	set
23	present	quite
24	foot	morning
25	stay	magazine
26	forward	health
27	miss	early
28	form	money
29	nation	know
30	news	lawyer
31	black	eye
32	produce	project
33	month	be
34	leader	party
35	lead	really
36	mean	form
37	each	either
38	begin	moment
39	turn	fall
40	exactly	place
41	name	late
42	movement	camera
43	commercial	see
44	table	lose
45	involve	sure
46	quickly	position
47	feeling	chair
48	food	expert
49	many	couple
50	political	both
51	positive	order
52	information	cut
53	require	girl
54	central	treat
55	trip	reality
56	across	north
57	answer	three
58	fish	fill
59	whom	certainly
60	bit	environment
61	general	whom
62	hour	drug
63	reveal	money
64	care	significant
65	try	half
66	be	day
67	when	thought
68	century	performance
69	positive	material
70	answer	happen
71	friend	hard
72	response	member
73	suggest	fine
74	reflect	wrong
75	dinner	medical
76	race	recent
77	work	small
78	beat	story
79	number	stay
80	miss	million
81	painting	provide
82	animal	seat
83	point	media
84	admit	personal
85	administration	receive
86	doctor	rest
87	develop	read
88	last	lead
89	give	why
90	business	power
91	air	black
92	player	economy
93	than	actually
94	data	store
95	traditional	less
96	control	follow
97	young	report
98	service	leave
99	strategy	around
100	growth	pass
\.


--
-- Data for Name: relation_5; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_5 (desktop_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, cpu, ram_gb, form_factor) FROM stdin;
501	enter	voice	428	768	168	for	724	poor	603	voice
502	miss	area	719	680	645	site	189	return	997	smile
503	city	ok	925	203	239	themselves	602	one	134	month
504	and	owner	998	601	519	reason	739	note	273	article
505	toward	too	470	202	801	next	370	send	986	water
506	glass	both	468	343	950	board	226	by	948	state
507	pattern	check	955	651	10	spring	501	worry	34	professional
508	interview	case	169	260	921	father	10	body	236	cost
509	candidate	traditional	784	909	87	mind	36	however	969	media
510	history	management	541	206	215	tend	296	cold	249	leg
511	any	ten	503	519	381	college	402	rich	968	event
512	order	plan	670	76	200	cut	193	without	701	low
513	sea	memory	639	305	979	mother	629	along	486	say
514	discussion	billion	373	24	500	floor	953	property	108	fly
515	agree	myself	675	641	592	possible	848	sometimes	725	poor
516	social	material	597	352	348	sister	663	oil	431	stay
517	at	full	200	719	527	base	975	while	863	reveal
518	may	grow	853	623	578	station	615	while	697	include
519	service	assume	757	590	927	for	619	improve	483	necessary
520	military	behavior	170	853	275	young	577	history	784	election
521	start	commercial	826	406	622	nor	262	front	318	increase
522	mention	value	16	620	776	apply	801	politics	469	use
523	owner	local	469	914	365	argue	521	our	455	society
524	authority	customer	215	717	488	full	713	race	641	force
525	forget	across	149	394	884	hair	56	sign	658	over
526	hair	herself	114	365	893	light	262	hospital	770	for
527	low	raise	555	760	56	answer	388	important	16	father
528	we	house	333	347	317	west	214	us	734	step
529	role	score	84	337	123	easy	132	fill	800	summer
530	writer	stop	708	302	983	before	623	laugh	349	down
531	arm	administration	239	28	986	might	774	prove	785	like
532	law	manage	775	517	768	modern	310	tend	301	without
533	get	early	388	431	950	oil	831	fund	888	either
534	sport	forget	879	76	963	beautiful	418	continue	961	far
535	college	evidence	238	623	44	letter	645	us	230	bag
536	production	simple	250	731	405	majority	216	simply	637	wide
537	believe	ask	156	738	307	draw	2	benefit	730	find
538	sometimes	color	722	704	315	position	510	film	175	seek
539	wear	job	692	150	32	rather	448	interest	568	piece
540	away	strong	351	896	821	step	326	as	962	interest
541	continue	ask	619	115	598	fill	830	material	562	unit
542	standard	most	679	283	440	within	863	left	319	call
543	shoulder	police	771	89	655	response	118	treat	514	the
544	check	end	226	892	621	year	448	already	382	central
545	product	buy	804	237	56	fill	612	assume	528	debate
546	that	serve	527	524	167	notice	300	wait	945	international
547	today	every	50	906	70	table	4	dinner	689	country
548	stop	maintain	64	434	750	ago	68	save	57	evening
549	memory	simple	10	36	551	human	341	door	804	type
550	likely	common	20	627	10	left	481	politics	205	wide
551	character	also	273	303	596	pull	911	interview	240	many
552	head	wear	188	216	401	building	245	war	994	dinner
553	seven	law	569	718	464	fall	340	sound	335	station
554	how	cost	417	123	17	write	518	quickly	656	civil
555	plant	low	96	780	190	peace	231	still	181	civil
556	certain	police	312	928	826	southern	61	after	814	bill
557	again	reach	322	900	744	election	65	blood	853	skin
558	study	line	454	154	237	money	766	trade	294	brother
559	Mr	another	985	353	60	back	454	short	206	size
560	difficult	son	813	234	681	catch	123	toward	59	dinner
561	be	push	208	56	765	way	90	music	976	well
562	mother	east	806	832	761	system	961	grow	293	next
563	develop	black	732	259	540	build	893	peace	255	compare
564	career	avoid	740	34	742	hear	784	three	200	official
565	more	understand	334	359	366	local	783	require	896	wonder
566	go	nor	945	676	889	force	886	resource	696	condition
567	nation	act	396	92	437	week	852	whom	851	yourself
568	forget	hot	502	899	352	point	620	fight	665	key
569	enter	his	117	246	75	use	907	continue	284	total
570	why	second	546	312	943	develop	773	analysis	852	them
571	class	every	380	420	468	poor	361	pressure	324	return
572	less	subject	406	982	483	white	380	south	131	protect
573	him	interesting	310	173	310	yes	893	policy	562	way
574	debate	effect	729	745	154	involve	469	leader	661	and
575	myself	size	643	156	139	almost	82	daughter	833	less
576	again	marriage	627	260	242	explain	661	stand	323	participant
577	agency	single	176	284	877	success	318	Congress	80	office
578	seem	full	439	158	564	stuff	908	company	461	raise
579	evidence	avoid	939	111	866	three	701	expert	324	expect
580	local	attorney	71	702	192	today	548	doctor	36	although
581	get	movie	48	744	978	likely	666	wonder	365	woman
582	term	before	754	986	375	young	879	whose	872	plan
583	mouth	in	801	516	643	early	351	have	670	forget
584	teacher	enough	124	190	972	peace	34	institution	278	left
585	challenge	fact	907	629	729	race	64	field	253	modern
586	too	actually	858	869	312	Mrs	577	page	413	indicate
587	travel	material	251	369	791	short	238	enter	965	there
588	student	standard	298	715	583	sea	201	poor	100	account
589	theory	item	1000	139	229	statement	519	nearly	912	participant
590	almost	same	273	145	167	again	78	address	319	lay
591	structure	morning	588	523	522	pressure	884	so	893	people
592	less	management	450	595	525	each	188	night	525	finish
593	opportunity	treat	885	365	201	upon	824	process	76	national
594	avoid	believe	284	211	235	break	137	help	792	program
595	his	forward	214	22	168	foreign	372	week	189	push
596	lose	kid	51	803	369	parent	625	open	244	fill
597	case	throw	695	713	889	clearly	90	goal	452	need
598	whatever	glass	660	672	202	cut	169	reflect	589	hard
599	support	foot	708	859	856	ever	223	happen	324	month
600	thousand	thing	912	492	566	provide	923	become	54	soldier
\.


--
-- Data for Name: relation_50; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_50 (courierpartner_id, carrier_code, webhook_url) FROM stdin;
1	mention	look
2	form	network
3	hot	recent
4	year	certainly
5	drive	which
6	word	daughter
7	value	most
8	collection	different
9	into	station
10	religious	yeah
11	sit	most
12	employee	treatment
13	if	we
14	open	arm
15	past	event
16	I	attorney
17	want	democratic
18	hit	or
19	spring	right
20	project	data
21	interview	need
22	artist	almost
23	course	ever
24	occur	everything
25	affect	I
26	star	later
27	hour	to
28	indicate	seem
29	its	very
30	already	somebody
31	father	voice
32	manage	show
33	significant	area
34	produce	test
35	play	health
36	myself	candidate
37	child	significant
38	almost	hot
39	friend	station
40	stuff	reach
41	around	traditional
42	field	assume
43	moment	mouth
44	hospital	together
45	dinner	anyone
46	ok	black
47	class	sometimes
48	street	his
49	everything	cut
50	understand	real
51	way	Mr
52	field	number
53	scientist	ok
54	level	painting
55	social	for
56	wife	section
57	capital	season
58	true	practice
59	sign	few
60	plant	parent
61	defense	human
62	series	play
63	similar	capital
64	computer	lose
65	so	far
66	present	card
67	agreement	better
68	push	need
69	land	weight
70	window	partner
71	should	blood
72	find	often
73	responsibility	moment
74	bring	leg
75	behavior	book
76	out	worker
77	interest	control
78	director	compare
79	kitchen	describe
80	have	action
81	fact	current
82	production	cultural
83	commercial	federal
84	law	idea
85	big	could
86	court	rest
87	choice	effort
88	former	worker
89	already	above
90	charge	well
91	event	value
92	short	travel
93	find	tree
94	individual	daughter
95	car	character
96	kid	include
97	prove	join
98	fly	in
99	trial	campaign
100	wife	painting
\.


--
-- Data for Name: relation_51; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_51 (product_id, category_products_category_id) FROM stdin;
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
-- Data for Name: relation_52; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_52 (product_id, tag_id) FROM stdin;
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
-- Data for Name: relation_53; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_53 (product_id, bought_together_product_product_id) FROM stdin;
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
-- Data for Name: relation_54; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_54 (customer_id, product_id) FROM stdin;
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
-- Data for Name: relation_55; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_55 (customer_id, wishlist_id, product_id) FROM stdin;
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
-- Data for Name: relation_56; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_56 (customer_id, review_id, reviews_product_id) FROM stdin;
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
-- Data for Name: relation_57; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_57 (custorder_id, customer_orders_customer_id) FROM stdin;
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
-- Data for Name: relation_58; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_58 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_59; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_59 (custorder_id, payment_order_customer_id, payment_order_payment_method_id) FROM stdin;
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
-- Data for Name: relation_6; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_6 (laptop_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, cpu, ram_gb, battery_wh) FROM stdin;
601	black	about	874	376	512	rate	139	least	500	70
602	imagine	project	524	327	681	once	620	interesting	326	912
603	will	else	803	587	92	impact	347	either	426	872
604	air	military	74	269	65	movement	20	garden	185	931
605	walk	wind	336	232	321	wrong	855	lawyer	838	259
606	if	study	891	314	975	information	426	throughout	974	13
607	center	interview	302	167	649	of	50	Mrs	119	442
608	television	coach	441	950	628	race	285	put	366	787
609	let	bit	670	737	580	material	590	market	289	624
610	really	hair	263	692	177	toward	147	work	361	97
611	born	these	407	366	535	guess	406	shoulder	461	154
612	open	we	853	493	995	husband	39	three	748	656
613	political	capital	254	81	759	month	40	my	532	520
614	office	option	483	584	496	audience	940	up	533	815
615	thank	eye	175	577	726	ask	408	high	14	396
616	out	many	566	742	576	return	170	nothing	608	603
617	until	than	383	53	861	perhaps	842	best	362	449
618	already	television	244	705	661	term	872	value	91	453
619	upon	head	777	893	366	recent	166	significant	138	453
620	pay	rule	953	853	47	old	581	fire	346	994
621	value	way	828	178	583	it	490	carry	9	590
622	citizen	throw	240	906	898	walk	455	writer	671	168
623	along	continue	522	214	410	moment	127	view	323	269
624	quite	share	142	174	338	authority	185	discussion	825	934
625	produce	partner	760	633	543	church	240	before	568	724
626	according	money	438	480	469	single	174	political	533	631
627	pressure	especially	520	979	317	cost	290	there	690	159
628	past	rate	699	7	833	wear	122	civil	436	390
629	cell	door	731	671	526	wish	633	high	909	451
630	heavy	choice	461	835	547	spend	373	your	856	212
631	certainly	beautiful	56	88	740	interview	100	important	552	397
632	exactly	nice	141	455	407	wrong	487	wait	460	535
633	various	whatever	874	608	38	opportunity	970	play	1000	605
634	record	yourself	461	501	400	tell	935	score	358	795
635	contain	scene	775	178	863	market	185	political	899	795
636	coach	six	29	570	63	building	999	health	951	564
637	computer	call	236	457	871	message	453	professional	344	911
638	law	tell	764	105	398	such	766	without	480	285
639	concern	surface	953	420	477	huge	520	tax	99	169
640	entire	court	411	555	887	market	905	write	910	629
641	often	assume	759	877	490	deal	328	affect	150	359
642	manage	everyone	995	141	626	truth	231	rest	806	831
643	claim	piece	222	909	465	visit	106	meeting	716	106
644	from	product	436	54	465	site	384	when	574	330
645	dog	middle	961	287	408	should	397	return	499	734
646	seek	past	457	309	759	always	660	difference	596	397
647	when	public	321	870	772	media	179	design	103	502
648	blue	within	185	457	158	full	109	vote	552	127
649	season	soldier	550	327	324	rise	975	understand	694	573
650	born	still	958	651	350	individual	576	respond	607	819
651	sense	range	474	332	497	lot	844	own	550	930
652	task	why	224	171	247	back	880	society	609	956
653	audience	difficult	252	53	800	mind	928	show	635	778
654	structure	half	64	337	430	continue	353	institution	369	371
655	see	reason	615	610	903	man	215	sister	806	924
656	grow	anyone	875	296	929	court	322	investment	407	716
657	low	painting	394	686	793	admit	9	according	399	667
658	success	news	924	992	983	worry	619	note	803	799
659	it	all	631	860	916	strong	240	major	68	843
660	situation	picture	627	328	394	nearly	728	drop	893	301
661	trade	even	99	445	5	half	96	sing	828	418
662	hundred	person	975	157	115	above	772	edge	349	148
663	on	difficult	385	448	334	good	965	seat	961	214
664	beat	boy	199	163	169	worker	988	though	992	151
665	economic	medical	123	453	599	strong	442	century	138	871
666	per	ground	342	622	813	into	609	them	141	22
667	yard	represent	368	798	179	challenge	241	star	710	509
668	hospital	go	607	501	36	second	137	according	546	481
669	peace	certain	579	147	215	over	726	recent	142	287
670	happen	few	916	759	357	quickly	393	partner	487	31
671	even	test	542	473	909	wait	737	sense	247	212
672	prove	much	706	931	817	choice	740	leave	714	312
673	spring	sort	44	274	840	question	74	poor	817	109
674	site	economy	833	823	790	outside	888	student	410	340
675	live	region	108	457	736	church	684	say	288	147
676	rule	model	442	381	664	responsibility	955	himself	769	393
677	soldier	benefit	422	447	377	air	201	clearly	67	149
678	nor	my	244	246	22	parent	686	network	404	468
679	office	section	804	632	452	enjoy	56	someone	177	835
680	those	prove	841	839	540	hope	46	radio	441	875
681	example	year	805	286	426	yourself	881	gas	242	712
682	daughter	mouth	791	677	384	third	798	indicate	351	600
683	weight	several	766	49	519	action	133	human	706	942
684	travel	reduce	536	373	599	figure	358	what	121	862
685	investment	speak	883	252	651	for	448	himself	974	153
686	third	relationship	825	20	375	scene	155	mouth	296	26
687	notice	entire	484	654	28	through	69	strong	769	816
688	impact	whether	604	442	95	keep	558	contain	618	514
689	loss	later	100	132	552	system	659	also	617	558
690	research	instead	975	420	248	fish	490	situation	853	752
691	message	get	325	449	120	TV	216	same	607	626
692	help	full	887	715	379	measure	99	back	364	109
693	especially	art	905	929	201	laugh	707	image	670	606
694	air	do	90	4	525	turn	934	meeting	988	241
695	unit	help	94	315	500	month	588	condition	440	574
696	to	up	306	402	644	across	687	enjoy	610	30
697	end	agent	284	931	636	lay	449	during	225	276
698	son	gun	932	891	330	break	453	sure	547	57
699	born	pull	276	527	178	road	467	month	303	600
700	after	behind	605	187	329	capital	778	water	991	683
\.


--
-- Data for Name: relation_60; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_60 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_61; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_61 (promotion_id, coupon_code, order_coupons_custorder_id) FROM stdin;
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
-- Data for Name: relation_62; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_62 (product_id, warehouse_id, bin_id) FROM stdin;
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
-- Data for Name: relation_63; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_63 (supplier_id, product_id) FROM stdin;
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
-- Data for Name: relation_64; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_64 (purchaseorder_id, supplier_pos_supplier_id) FROM stdin;
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
-- Data for Name: relation_65; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_65 (purchaseorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_66; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_66 (custorder_id, shipment_id, courier_shipments_courierpartner_id) FROM stdin;
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
-- Data for Name: relation_67; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_67 (phone_id, bundle_phone_phone_id) FROM stdin;
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
-- Data for Name: relation_68; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_68 (smartwatch_id, bundled_phone_smart_watch_phone_id) FROM stdin;
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
-- Data for Name: relation_69; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_69 (phone_id, single_bundle_phone_bundled_phone_phone_id) FROM stdin;
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

COPY public.relation_7 (tablet_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, screen_size_in) FROM stdin;
701	true	set	710	424	702	grow	489	771
702	across	modern	646	226	314	drop	65	152
703	audience	run	506	997	842	assume	847	369
704	operation	organization	266	866	859	as	809	555
705	sometimes	audience	901	311	142	break	514	142
706	Mrs	sister	467	872	39	weight	481	748
707	physical	term	584	933	334	send	129	729
708	contain	smile	1000	15	551	raise	789	276
709	yourself	tonight	638	830	67	similar	291	13
710	during	reality	663	273	743	last	580	412
711	sort	six	115	101	702	success	620	635
712	relationship	value	653	713	705	long	94	626
713	throughout	attention	511	543	352	how	193	174
714	leave	determine	57	632	120	ready	121	569
715	head	strategy	543	313	772	good	166	547
716	beyond	station	154	234	887	Congress	92	516
717	trade	arrive	362	920	707	contain	274	630
718	decision	let	138	293	592	similar	72	877
719	challenge	series	611	272	59	raise	443	626
720	response	son	989	290	864	decide	433	447
721	activity	together	861	829	70	star	220	787
722	room	no	696	35	954	television	977	870
723	item	want	425	364	964	performance	524	933
724	article	off	152	184	809	which	235	830
725	military	rest	965	61	375	develop	889	458
726	star	peace	330	834	223	side	264	159
727	thing	matter	708	913	722	four	110	490
728	face	day	702	750	921	reality	484	320
729	trouble	design	269	796	813	artist	920	214
730	international	training	818	136	707	education	679	36
731	stay	might	807	787	392	street	549	886
732	about	at	25	135	238	few	661	102
733	dinner	throw	908	304	719	seem	206	529
734	gas	somebody	342	101	255	for	504	589
735	him	degree	119	183	509	region	724	659
736	artist	name	966	610	650	research	410	567
737	already	leg	996	432	858	late	641	409
738	drive	wish	969	890	145	either	131	63
739	there	gas	300	398	632	often	654	98
740	despite	industry	207	613	278	send	610	433
741	street	care	271	521	850	actually	334	802
742	arm	eat	967	157	575	right	967	689
743	deep	kitchen	924	694	26	enter	789	380
744	because	win	466	272	769	product	291	143
745	in	word	823	87	417	type	29	491
746	style	sport	597	737	134	on	504	821
747	require	few	862	791	239	anyone	386	823
748	animal	network	64	421	616	about	256	689
749	decide	politics	41	923	466	knowledge	301	626
750	task	recent	41	356	788	happen	70	75
751	difficult	whether	848	47	599	top	363	316
752	whatever	it	93	551	482	environment	871	335
753	watch	authority	877	788	176	recently	898	539
754	across	crime	256	336	618	explain	255	650
755	range	pass	791	719	223	but	980	314
756	Republican	him	852	550	331	sure	602	5
757	east	relate	673	493	259	include	152	996
758	economy	just	248	882	166	law	266	409
759	bag	safe	208	142	169	research	324	396
760	occur	keep	931	723	217	letter	40	457
761	either	answer	222	411	810	fire	718	919
762	receive	law	319	791	226	make	524	814
763	avoid	officer	668	457	345	field	71	73
764	few	three	844	237	123	detail	732	848
765	wonder	town	570	470	11	American	470	444
766	make	official	554	113	197	surface	250	316
767	send	remember	220	532	622	apply	931	316
768	cold	fine	271	943	358	common	295	49
769	treatment	choose	30	896	11	upon	44	212
770	employee	sense	79	324	464	hear	118	253
771	Mrs	ground	690	891	114	significant	31	200
772	among	job	652	928	139	street	451	747
773	represent	store	30	573	233	anyone	178	858
774	one	through	545	973	939	perhaps	230	142
775	care	expect	65	17	893	century	329	936
776	carry	raise	591	87	530	third	200	408
777	low	degree	9	557	287	this	266	556
778	throw	according	395	895	414	start	286	91
779	very	rather	185	778	491	court	137	924
780	behind	although	633	214	539	discussion	530	53
781	how	join	867	325	149	painting	327	407
782	into	military	42	902	419	difficult	852	515
783	he	own	901	804	67	mention	135	569
784	every	everything	421	560	399	soldier	607	46
785	glass	authority	223	199	312	party	981	307
786	project	under	932	531	24	floor	196	549
787	several	tough	534	759	547	dinner	236	91
788	tonight	until	216	492	169	gun	674	862
789	hear	claim	413	911	290	standard	155	821
790	ability	piece	102	859	969	rich	726	602
791	could	physical	441	487	979	law	965	839
792	avoid	within	224	580	480	to	994	885
793	skill	trial	679	415	894	try	65	131
794	hotel	scene	347	519	487	save	525	677
795	capital	enough	377	444	837	whose	867	975
796	wonder	beyond	454	267	965	teach	365	396
797	imagine	begin	822	580	235	page	924	636
798	doctor	benefit	887	109	186	debate	78	27
799	matter	media	430	897	601	field	63	781
800	sell	include	472	923	113	happy	466	360
\.


--
-- Data for Name: relation_8; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_8 (smartwatch_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, band_size) FROM stdin;
801	oil	country	525	94	910	loss	694	lose
802	itself	who	38	284	863	let	133	become
803	bag	window	586	172	441	deal	734	move
804	force	physical	454	748	250	what	768	station
805	skin	career	393	29	984	yes	124	provide
806	bill	hold	294	266	26	indicate	333	police
807	stay	special	641	527	679	role	225	radio
808	door	among	301	758	83	necessary	467	put
809	have	avoid	381	409	653	any	887	thank
810	government	fact	828	695	484	sense	577	wife
811	few	not	501	577	86	month	61	wear
812	many	offer	20	286	38	Mr	319	beyond
813	enjoy	model	181	551	489	clear	18	statement
814	woman	drop	466	895	351	worker	869	whom
815	several	present	991	232	355	whole	24	well
816	understand	manage	452	525	203	base	157	again
817	which	wife	184	238	84	star	42	few
818	under	business	179	328	5	main	552	still
819	floor	need	836	635	540	exactly	40	across
820	idea	board	858	433	228	answer	690	long
821	bring	news	532	995	982	rock	194	general
822	Republican	race	859	42	620	toward	421	president
823	agency	difficult	409	524	437	letter	454	goal
824	paper	check	346	579	948	star	81	work
825	director	people	484	853	750	sport	166	reduce
826	moment	however	919	441	165	win	274	star
827	more	feel	423	767	493	particularly	981	visit
828	shake	political	356	959	725	letter	892	computer
829	remember	community	408	565	386	describe	246	day
830	show	talk	368	556	558	mouth	272	summer
831	into	part	21	873	674	once	270	represent
832	glass	by	727	898	400	remain	271	skill
833	raise	west	789	820	603	require	503	detail
834	something	history	17	164	841	edge	114	skin
835	threat	visit	225	156	116	be	59	line
836	day	back	177	70	98	draw	563	item
837	collection	bad	748	671	480	claim	60	young
838	realize	deep	278	53	542	heavy	911	blood
839	involve	hotel	760	658	213	news	610	watch
840	tough	front	449	114	347	seat	895	rather
841	scientist	notice	392	959	670	information	298	interview
842	chair	student	85	235	838	another	575	force
843	guess	entire	358	438	442	color	602	himself
844	four	wish	273	192	155	son	339	lot
845	mission	simply	986	361	991	challenge	69	look
846	report	my	647	608	813	in	590	conference
847	field	customer	925	994	182	less	783	music
848	out	student	737	937	862	value	545	culture
849	someone	fund	210	489	970	billion	368	begin
850	eye	city	632	541	934	trade	792	light
851	operation	according	209	307	176	body	663	ability
852	data	husband	410	436	501	pick	721	ask
853	there	billion	799	35	545	somebody	25	what
854	case	successful	377	255	160	century	932	ever
855	marriage	put	406	455	523	lot	437	age
856	movement	during	611	880	347	expert	922	teacher
857	soon	feel	349	84	607	cover	796	control
858	return	agency	143	940	869	newspaper	971	evening
859	PM	blue	181	94	9	upon	25	paper
860	itself	piece	188	286	199	performance	412	rich
861	several	do	731	555	524	stand	715	quality
862	mission	society	997	881	943	figure	571	himself
863	suggest	after	394	890	108	save	475	he
864	daughter	hand	248	73	745	tell	138	summer
865	outside	do	703	619	28	production	653	near
866	animal	since	58	298	354	together	712	government
867	other	forward	636	450	325	media	781	avoid
868	meeting	agent	546	324	942	to	712	appear
869	our	ball	968	778	750	do	598	data
870	month	several	833	700	458	different	434	food
871	today	sport	416	754	127	later	12	measure
872	seek	trip	937	957	794	expect	781	energy
873	body	cup	996	357	180	organization	753	growth
874	political	every	42	147	951	here	529	myself
875	mind	push	718	628	421	dog	808	staff
876	catch	project	584	481	741	trade	597	game
877	great	family	831	610	263	keep	798	much
878	past	run	904	401	553	sign	936	establish
879	herself	line	150	332	175	meet	403	rock
880	type	issue	592	949	937	put	516	prepare
881	outside	fact	917	658	81	music	267	the
882	forward	fact	402	501	747	last	824	wide
883	whom	over	642	758	298	gun	863	all
884	outside	from	649	959	276	understand	281	focus
885	hundred	amount	128	262	989	campaign	994	glass
886	between	end	123	854	688	remain	480	which
887	six	industry	970	155	478	wall	802	money
888	share	action	244	43	231	until	111	firm
889	kind	catch	835	955	99	room	593	himself
890	usually	least	674	117	45	analysis	425	cold
891	kid	enjoy	151	835	356	order	52	forward
892	sure	five	863	818	932	should	999	development
893	about	or	814	629	640	before	164	adult
894	show	return	550	588	502	style	361	much
895	minute	perhaps	849	620	408	member	334	whether
896	let	activity	543	877	73	inside	980	save
897	despite	school	16	828	590	of	102	so
898	commercial	property	462	90	1	husband	760	others
899	sea	consider	288	562	313	onto	470	this
900	development	senior	393	121	832	military	314	energy
\.


--
-- Data for Name: relation_9; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_9 (camera_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, sensor_mp) FROM stdin;
901	she	especially	657	682	798	contain	522	514
902	relationship	add	907	764	962	culture	375	893
903	lay	look	727	458	97	benefit	832	689
904	respond	laugh	160	282	117	investment	259	778
905	fine	some	842	217	337	too	572	229
906	station	quality	963	630	8	adult	725	861
907	consider	commercial	495	368	657	step	419	686
908	scientist	force	352	438	922	radio	115	257
909	open	middle	55	541	303	far	204	214
910	career	full	235	857	754	fast	386	356
911	that	occur	263	893	2	mouth	791	519
912	high	now	144	438	784	case	93	529
913	court	seven	819	853	283	accept	225	112
914	production	peace	437	415	146	especially	683	451
915	agent	beat	843	531	683	exactly	166	221
916	wife	four	280	375	858	the	356	765
917	knowledge	behind	258	581	773	especially	32	227
918	my	piece	264	946	494	behind	351	18
919	before	agreement	932	961	858	blood	715	206
920	green	despite	266	659	931	into	75	437
921	black	air	705	378	705	meeting	771	833
922	job	house	785	195	109	also	956	402
923	tell	learn	348	587	338	political	352	603
924	me	doctor	809	708	264	character	773	630
925	short	television	283	792	362	ok	952	824
926	later	less	946	865	448	service	628	484
927	change	one	903	355	792	brother	735	30
928	forget	hotel	109	609	544	population	176	638
929	determine	science	773	231	792	interest	869	301
930	arrive	food	434	409	637	end	70	407
931	poor	receive	157	749	602	arm	863	935
932	current	sell	486	687	956	through	506	102
933	factor	simple	420	940	803	skin	923	732
934	social	number	676	505	221	simple	992	571
935	choice	strong	798	38	882	beyond	301	807
936	statement	reveal	143	258	843	believe	488	137
937	experience	garden	447	342	534	under	216	285
938	more	never	41	319	515	method	510	307
939	stage	third	271	164	297	better	819	918
940	lawyer	attention	343	998	153	hundred	397	903
941	far	matter	690	453	964	drive	739	173
942	set	daughter	917	908	393	animal	95	597
943	ability	high	211	995	953	lead	53	536
944	say	yard	764	313	42	support	815	112
945	coach	college	979	633	642	anything	133	944
946	new	woman	11	353	248	deep	532	445
947	key	risk	961	730	247	decide	34	343
948	scene	major	20	669	455	operation	173	914
949	century	necessary	828	902	764	identify	824	687
950	wear	land	632	850	215	heart	297	645
951	citizen	sign	169	45	40	include	400	892
952	main	age	978	555	701	answer	390	295
953	stage	speech	447	932	52	trial	342	430
954	itself	could	602	590	499	continue	594	524
955	member	pick	691	92	345	tonight	887	671
956	media	suggest	184	800	967	tonight	530	971
957	free	fish	855	973	497	home	822	655
958	sit	beat	430	695	405	special	262	797
959	ask	company	2	289	34	wife	800	88
960	study	past	185	634	259	plant	711	446
961	blood	idea	313	103	305	what	489	180
962	pass	data	837	261	562	building	130	44
963	each	toward	690	409	565	quality	581	516
964	various	property	305	3	745	spend	349	100
965	commercial	just	263	166	613	hit	75	180
966	second	player	800	719	697	operation	544	581
967	heavy	take	740	24	226	want	699	19
968	down	on	688	5	541	than	783	632
969	energy	fire	818	989	792	factor	55	758
970	produce	finally	940	799	406	week	196	163
971	fly	sometimes	228	94	627	evidence	553	558
972	position	focus	343	873	682	special	197	520
973	staff	standard	611	262	841	cost	254	688
974	receive	alone	300	635	264	against	730	648
975	but	explain	273	371	593	enough	513	657
976	response	voice	225	792	881	thing	550	678
977	card	well	23	108	224	cover	173	756
978	fly	executive	330	225	167	artist	624	225
979	easy	share	398	269	264	toward	651	268
980	majority	others	385	43	787	grow	885	158
981	show	century	737	509	962	without	309	974
982	consumer	heavy	872	376	416	state	633	203
983	however	result	294	937	287	inside	495	633
984	stay	force	157	804	595	food	145	400
985	benefit	begin	63	74	267	become	794	506
986	protect	you	214	465	885	glass	42	276
987	year	need	346	864	5	cup	804	442
988	apply	political	836	893	930	indicate	434	773
989	remember	less	376	956	624	spend	779	199
990	next	effect	760	443	883	write	297	911
991	never	fall	99	83	980	bank	723	346
992	note	hotel	936	375	583	organization	723	392
993	kind	region	127	860	895	wrong	54	445
994	cell	finish	623	206	116	fill	880	705
995	cup	administration	490	393	178	personal	226	635
996	end	baby	99	710	356	rate	518	451
997	alone	forward	830	789	888	study	388	646
998	chance	speak	966	496	577	score	39	516
999	game	nor	204	697	256	example	123	281
1000	western	place	996	967	571	sell	6	381
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
    ADD CONSTRAINT relation_10_pkey PRIMARY KEY (accessories_id);


--
-- Name: relation_11 relation_11_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_11
    ADD CONSTRAINT relation_11_pkey PRIMARY KEY (kitchenappliance_id);


--
-- Name: relation_12 relation_12_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_12
    ADD CONSTRAINT relation_12_pkey PRIMARY KEY (apparel_id);


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
    ADD CONSTRAINT relation_16_pkey PRIMARY KEY (media_id);


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
    ADD CONSTRAINT relation_25_pkey PRIMARY KEY (employee_id);


--
-- Name: relation_26 relation_26_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_26
    ADD CONSTRAINT relation_26_pkey PRIMARY KEY (corporateemployee_id);


--
-- Name: relation_27 relation_27_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_27
    ADD CONSTRAINT relation_27_pkey PRIMARY KEY (engineer_id);


--
-- Name: relation_28 relation_28_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_28
    ADD CONSTRAINT relation_28_pkey PRIMARY KEY (supportagent_id);


--
-- Name: relation_29 relation_29_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_29
    ADD CONSTRAINT relation_29_pkey PRIMARY KEY (fulfillmentassociate_id);


--
-- Name: relation_2 relation_2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_2
    ADD CONSTRAINT relation_2_pkey PRIMARY KEY (product_id, mv_attributes);


--
-- Name: relation_30 relation_30_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_30
    ADD CONSTRAINT relation_30_pkey PRIMARY KEY (categorymanager_id);


--
-- Name: relation_31 relation_31_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_31
    ADD CONSTRAINT relation_31_pkey PRIMARY KEY (product_id, image_id);


--
-- Name: relation_32 relation_32_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_32
    ADD CONSTRAINT relation_32_pkey PRIMARY KEY (product_id, variant_id);


--
-- Name: relation_33 relation_33_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_33
    ADD CONSTRAINT relation_33_pkey PRIMARY KEY (product_id, price_id);


--
-- Name: relation_34 relation_34_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_34
    ADD CONSTRAINT relation_34_pkey PRIMARY KEY (tag_id);


--
-- Name: relation_35 relation_35_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_35
    ADD CONSTRAINT relation_35_pkey PRIMARY KEY (customer_id, address_id);


--
-- Name: relation_36 relation_36_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_36
    ADD CONSTRAINT relation_36_pkey PRIMARY KEY (customer_id, payment_method_id);


--
-- Name: relation_37 relation_37_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_37
    ADD CONSTRAINT relation_37_pkey PRIMARY KEY (customer_id);


--
-- Name: relation_38 relation_38_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_38
    ADD CONSTRAINT relation_38_pkey PRIMARY KEY (customer_id, wishlist_id);


--
-- Name: relation_39 relation_39_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_39
    ADD CONSTRAINT relation_39_pkey PRIMARY KEY (customer_id, review_id);


--
-- Name: relation_3 relation_3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_3
    ADD CONSTRAINT relation_3_pkey PRIMARY KEY (physicalproduct_id);


--
-- Name: relation_40 relation_40_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_40
    ADD CONSTRAINT relation_40_pkey PRIMARY KEY (user_id, session_id);


--
-- Name: relation_41 relation_41_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_41
    ADD CONSTRAINT relation_41_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_42 relation_42_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_42
    ADD CONSTRAINT relation_42_pkey PRIMARY KEY (custorder_id, shipment_id);


--
-- Name: relation_43 relation_43_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_43
    ADD CONSTRAINT relation_43_pkey PRIMARY KEY (promotion_id);


--
-- Name: relation_44 relation_44_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_44
    ADD CONSTRAINT relation_44_pkey PRIMARY KEY (promotion_id, coupon_code);


--
-- Name: relation_45 relation_45_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_45
    ADD CONSTRAINT relation_45_pkey PRIMARY KEY (warehouse_id);


--
-- Name: relation_46 relation_46_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_46
    ADD CONSTRAINT relation_46_pkey PRIMARY KEY (warehouse_id, bin_id);


--
-- Name: relation_47 relation_47_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_47
    ADD CONSTRAINT relation_47_pkey PRIMARY KEY (supplier_id);


--
-- Name: relation_48 relation_48_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_48
    ADD CONSTRAINT relation_48_pkey PRIMARY KEY (supplier_id, contact_id);


--
-- Name: relation_49 relation_49_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_49
    ADD CONSTRAINT relation_49_pkey PRIMARY KEY (purchaseorder_id);


--
-- Name: relation_4 relation_4_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_4
    ADD CONSTRAINT relation_4_pkey PRIMARY KEY (digitalproduct_id);


--
-- Name: relation_50 relation_50_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_50
    ADD CONSTRAINT relation_50_pkey PRIMARY KEY (courierpartner_id);


--
-- Name: relation_51 relation_51_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_51
    ADD CONSTRAINT relation_51_pkey PRIMARY KEY (product_id);


--
-- Name: relation_52 relation_52_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_52
    ADD CONSTRAINT relation_52_pkey PRIMARY KEY (product_id, tag_id);


--
-- Name: relation_53 relation_53_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_53
    ADD CONSTRAINT relation_53_pkey PRIMARY KEY (product_id, bought_together_product_product_id);


--
-- Name: relation_54 relation_54_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_54
    ADD CONSTRAINT relation_54_pkey PRIMARY KEY (customer_id, product_id);


--
-- Name: relation_55 relation_55_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_55
    ADD CONSTRAINT relation_55_pkey PRIMARY KEY (customer_id, wishlist_id, product_id);


--
-- Name: relation_56 relation_56_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_56
    ADD CONSTRAINT relation_56_pkey PRIMARY KEY (customer_id, review_id);


--
-- Name: relation_57 relation_57_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_57
    ADD CONSTRAINT relation_57_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_58 relation_58_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_58
    ADD CONSTRAINT relation_58_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_59 relation_59_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_59
    ADD CONSTRAINT relation_59_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_5 relation_5_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_5
    ADD CONSTRAINT relation_5_pkey PRIMARY KEY (desktop_id);


--
-- Name: relation_60 relation_60_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_60
    ADD CONSTRAINT relation_60_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_61 relation_61_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_61
    ADD CONSTRAINT relation_61_pkey PRIMARY KEY (promotion_id, coupon_code);


--
-- Name: relation_62 relation_62_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_62
    ADD CONSTRAINT relation_62_pkey PRIMARY KEY (product_id, warehouse_id, bin_id);


--
-- Name: relation_63 relation_63_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_63
    ADD CONSTRAINT relation_63_pkey PRIMARY KEY (supplier_id, product_id);


--
-- Name: relation_64 relation_64_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_64
    ADD CONSTRAINT relation_64_pkey PRIMARY KEY (purchaseorder_id);


--
-- Name: relation_65 relation_65_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_65
    ADD CONSTRAINT relation_65_pkey PRIMARY KEY (purchaseorder_id, product_id);


--
-- Name: relation_66 relation_66_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_66
    ADD CONSTRAINT relation_66_pkey PRIMARY KEY (custorder_id, shipment_id);


--
-- Name: relation_67 relation_67_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_67
    ADD CONSTRAINT relation_67_pkey PRIMARY KEY (phone_id, bundle_phone_phone_id);


--
-- Name: relation_68 relation_68_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_68
    ADD CONSTRAINT relation_68_pkey PRIMARY KEY (smartwatch_id);


--
-- Name: relation_69 relation_69_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_69
    ADD CONSTRAINT relation_69_pkey PRIMARY KEY (phone_id);


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
-- PostgreSQL database dump complete
--

