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
    format character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
);


ALTER TABLE public.relation_1 OWNER TO postgres;

--
-- Name: relation_10; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_10 (
    phone_id integer NOT NULL,
    carrier_lock character varying(255),
    single_bundle_phone_bundled_phone_phone_id integer
);


ALTER TABLE public.relation_10 OWNER TO postgres;

--
-- Name: relation_11; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_11 (
    accessories_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    warranty_months integer,
    accessory_type character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
);


ALTER TABLE public.relation_11 OWNER TO postgres;

--
-- Name: relation_12; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_12 (
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
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
);


ALTER TABLE public.relation_12 OWNER TO postgres;

--
-- Name: relation_13; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_13 (
    kitchenappliance_id integer NOT NULL,
    warranty_years integer
);


ALTER TABLE public.relation_13 OWNER TO postgres;

--
-- Name: relation_14; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_14 (
    apparel_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    size_system character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
);


ALTER TABLE public.relation_14 OWNER TO postgres;

--
-- Name: relation_15; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_15 (
    clothing_id integer NOT NULL,
    material character varying(255),
    fit_type_women character varying(255),
    role character varying(255)
);


ALTER TABLE public.relation_15 OWNER TO postgres;

--
-- Name: relation_16; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_16 (
    menclothing_id integer NOT NULL,
    fit_type_men character varying(255)
);


ALTER TABLE public.relation_16 OWNER TO postgres;

--
-- Name: relation_17; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_17 (
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
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
);


ALTER TABLE public.relation_17 OWNER TO postgres;

--
-- Name: relation_18; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_18 (
    software_id integer NOT NULL,
    license_type character varying(255)
);


ALTER TABLE public.relation_18 OWNER TO postgres;

--
-- Name: relation_19; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_19 (
    user_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    employee_no character varying(255),
    role character varying(255),
    browsingsession jsonb DEFAULT '[]'::jsonb
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
    user_id integer NOT NULL,
    mv_user character varying(255) NOT NULL
);


ALTER TABLE public.relation_20 OWNER TO postgres;

--
-- Name: relation_21; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_21 (
    customer_id integer NOT NULL,
    loyalty_tier character varying(255),
    renewal_date character varying(255),
    role character varying(255)
);


ALTER TABLE public.relation_21 OWNER TO postgres;

--
-- Name: relation_22; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_22 (
    customer_id integer NOT NULL,
    contact_no character varying(255) NOT NULL
);


ALTER TABLE public.relation_22 OWNER TO postgres;

--
-- Name: relation_23; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_23 (
    customer_id integer NOT NULL,
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
    email character varying(255),
    password_hash character varying(255),
    employee_no character varying(255),
    office_site character varying(255),
    browsingsession jsonb DEFAULT '[]'::jsonb
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
    email character varying(255),
    password_hash character varying(255),
    employee_no character varying(255),
    queue character varying(255),
    browsingsession jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_27 OWNER TO postgres;

--
-- Name: relation_28; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_28 (
    fulfillmentassociate_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    employee_no character varying(255),
    shift character varying(255),
    browsingsession jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_28 OWNER TO postgres;

--
-- Name: relation_29; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_29 (
    categorymanager_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    employee_no character varying(255),
    department character varying(255),
    browsingsession jsonb DEFAULT '[]'::jsonb
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
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
);


ALTER TABLE public.relation_3 OWNER TO postgres;

--
-- Name: relation_30; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_30 (
    tag_id integer NOT NULL,
    tag_name character varying(255)
);


ALTER TABLE public.relation_30 OWNER TO postgres;

--
-- Name: relation_31; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_31 (
    customer_id integer NOT NULL,
    address_id integer NOT NULL,
    kind character varying(255),
    line1 character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    postal_code character varying(255)
);


ALTER TABLE public.relation_31 OWNER TO postgres;

--
-- Name: relation_32; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_32 (
    customer_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    brand character varying(255),
    last4 character varying(255),
    exp_month integer,
    exp_year integer,
    is_default character varying(255)
);


ALTER TABLE public.relation_32 OWNER TO postgres;

--
-- Name: relation_33; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_33 (
    customer_id integer NOT NULL,
    updated_at character varying(255)
);


ALTER TABLE public.relation_33 OWNER TO postgres;

--
-- Name: relation_34; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_34 (
    customer_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    wishlist_name character varying(255)
);


ALTER TABLE public.relation_34 OWNER TO postgres;

--
-- Name: relation_35; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_35 (
    customer_id integer NOT NULL,
    review_id integer NOT NULL,
    rating integer,
    title character varying(255),
    body character varying(255),
    created_at character varying(255),
    reviews_product_id integer
);


ALTER TABLE public.relation_35 OWNER TO postgres;

--
-- Name: relation_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_36 (
    custorder_id integer NOT NULL,
    placed_at character varying(255),
    status character varying(255),
    customer_orders_customer_id integer,
    payment_order_customer_id integer,
    payment_order_payment_method_id integer
);


ALTER TABLE public.relation_36 OWNER TO postgres;

--
-- Name: relation_37; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_37 (
    custorder_id integer NOT NULL,
    shipment_id integer NOT NULL,
    carrier character varying(255),
    tracking_no character varying(255),
    shipped_at character varying(255),
    delivered_at character varying(255),
    courier_shipments_courierpartner_id integer
);


ALTER TABLE public.relation_37 OWNER TO postgres;

--
-- Name: relation_38; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_38 (
    promotion_id integer NOT NULL,
    promo_name character varying(255),
    starts_at character varying(255),
    ends_at character varying(255),
    discount_type character varying(255),
    discount_value character varying(255)
);


ALTER TABLE public.relation_38 OWNER TO postgres;

--
-- Name: relation_39; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_39 (
    promotion_id integer NOT NULL,
    coupon_code integer NOT NULL,
    max_uses integer,
    per_user_limit integer,
    order_coupons_custorder_id integer
);


ALTER TABLE public.relation_39 OWNER TO postgres;

--
-- Name: relation_4; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_4 (
    electronics_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    dimensions character varying(255),
    warranty_months integer,
    sensor_mp integer,
    role character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
);


ALTER TABLE public.relation_4 OWNER TO postgres;

--
-- Name: relation_40; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_40 (
    warehouse_id integer NOT NULL,
    warehouse_name character varying(255),
    region character varying(255)
);


ALTER TABLE public.relation_40 OWNER TO postgres;

--
-- Name: relation_41; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_41 (
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL,
    code character varying(255)
);


ALTER TABLE public.relation_41 OWNER TO postgres;

--
-- Name: relation_42; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_42 (
    supplier_id integer NOT NULL,
    supplier_name character varying(255)
);


ALTER TABLE public.relation_42 OWNER TO postgres;

--
-- Name: relation_43; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_43 (
    supplier_id integer NOT NULL,
    contact_id integer NOT NULL,
    email character varying(255),
    phone character varying(255)
);


ALTER TABLE public.relation_43 OWNER TO postgres;

--
-- Name: relation_44; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_44 (
    purchaseorder_id integer NOT NULL,
    created_at character varying(255),
    status character varying(255),
    supplier_pos_supplier_id integer
);


ALTER TABLE public.relation_44 OWNER TO postgres;

--
-- Name: relation_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_45 (
    courierpartner_id integer NOT NULL,
    carrier_code character varying(255),
    webhook_url character varying(255)
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
    ram_gb integer
);


ALTER TABLE public.relation_5 OWNER TO postgres;

--
-- Name: relation_50; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_50 (
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
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
    product_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL
);


ALTER TABLE public.relation_52 OWNER TO postgres;

--
-- Name: relation_53; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_53 (
    supplier_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_53 OWNER TO postgres;

--
-- Name: relation_54; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_54 (
    purchaseorder_id integer NOT NULL,
    product_id integer NOT NULL
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
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
);


ALTER TABLE public.relation_6 OWNER TO postgres;

--
-- Name: relation_7; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_7 (
    laptop_id integer NOT NULL,
    battery_wh integer
);


ALTER TABLE public.relation_7 OWNER TO postgres;

--
-- Name: relation_8; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_8 (
    tablet_id integer NOT NULL,
    screen_size_in integer
);


ALTER TABLE public.relation_8 OWNER TO postgres;

--
-- Name: relation_9; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_9 (
    smartwatch_id integer NOT NULL,
    band_size character varying(255),
    bundled_phone_smart_watch_phone_id integer
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
    browsingsession jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.temp_browsingsession OWNER TO postgres;

--
-- Name: temp_bundled_phone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_bundled_phone (
    phone_id integer NOT NULL,
    carrier_lock character varying(255),
    single_bundle_phone_bundled_phone_phone_id integer
);


ALTER TABLE public.temp_bundled_phone OWNER TO postgres;

--
-- Name: temp_bundled_phone_smart_watch; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_bundled_phone_smart_watch (
    smartwatch_id integer NOT NULL,
    band_size character varying(255),
    bundled_phone_smart_watch_phone_id integer
);


ALTER TABLE public.temp_bundled_phone_smart_watch OWNER TO postgres;

--
-- Name: temp_category_products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_category_products (
    product_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    delivery_type character varying(255),
    role character varying(255),
    format character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
);


ALTER TABLE public.temp_category_products OWNER TO postgres;

--
-- Name: temp_courier_shipments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_courier_shipments (
    custorder_id integer NOT NULL,
    shipment_id integer NOT NULL,
    carrier character varying(255),
    tracking_no character varying(255),
    shipped_at character varying(255),
    delivered_at character varying(255),
    courier_shipments_courierpartner_id integer
);


ALTER TABLE public.temp_courier_shipments OWNER TO postgres;

--
-- Name: temp_customer_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_customer_orders (
    custorder_id integer NOT NULL,
    placed_at character varying(255),
    status character varying(255),
    customer_orders_customer_id integer,
    payment_order_customer_id integer,
    payment_order_payment_method_id integer
);


ALTER TABLE public.temp_customer_orders OWNER TO postgres;

--
-- Name: temp_order_coupons; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_order_coupons (
    promotion_id integer NOT NULL,
    coupon_code integer NOT NULL,
    max_uses integer,
    per_user_limit integer,
    order_coupons_custorder_id integer
);


ALTER TABLE public.temp_order_coupons OWNER TO postgres;

--
-- Name: temp_payment_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_payment_order (
    custorder_id integer NOT NULL,
    placed_at character varying(255),
    status character varying(255),
    customer_orders_customer_id integer,
    payment_order_customer_id integer,
    payment_order_payment_method_id integer
);


ALTER TABLE public.temp_payment_order OWNER TO postgres;

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
    format character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
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
    format character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
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
    format character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
);


ALTER TABLE public.temp_productvariant OWNER TO postgres;

--
-- Name: temp_reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_reviews (
    customer_id integer NOT NULL,
    review_id integer NOT NULL,
    rating integer,
    title character varying(255),
    body character varying(255),
    created_at character varying(255),
    reviews_product_id integer
);


ALTER TABLE public.temp_reviews OWNER TO postgres;

--
-- Name: temp_supplier_pos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_supplier_pos (
    purchaseorder_id integer NOT NULL,
    created_at character varying(255),
    status character varying(255),
    supplier_pos_supplier_id integer
);


ALTER TABLE public.temp_supplier_pos OWNER TO postgres;

--
-- Name: erdb_objects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.erdb_objects ALTER COLUMN id SET DEFAULT nextval('public.erdb_objects_id_seq'::regclass);


--
-- Data for Name: erdb_objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.erdb_objects (id, name, data) FROM stdin;
1	sorted_by_dependencies_tables	[]
2	tables	[["relation_0", [["category_id", "INTEGER", "category_id", "category"], ["category_name", "VARCHAR(255)", "category.category_name", "category"], ["parent", "INTEGER", "category.parent", "category"]], false, ["category_id"]], ["relation_1", [["product_id", "INTEGER", "product_id", "product"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["delivery_type", "VARCHAR(255)", "digitalproduct.delivery_type", "digitalproduct"], ["role", "VARCHAR(255)", "role", "digitalproduct"], ["format", "VARCHAR(255)", "media.format", "media"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["product_id"]], ["relation_2", [["product_id", "INTEGER", "product_id", "product.mv_attributes"], ["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "product.mv_attributes"]], false, ["product_id", "mv_attributes"]], ["relation_3", [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["physicalproduct_id"]], ["relation_4", [["electronics_id", "INTEGER", "electronics_id", "electronics"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["sensor_mp", "INTEGER", "camera.sensor_mp", "camera"], ["role", "VARCHAR(255)", "role", "camera"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["electronics_id"]], ["relation_5", [["computer_id", "INTEGER", "computer_id", "computer"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"]], false, ["computer_id"]], ["relation_6", [["desktop_id", "INTEGER", "desktop_id", "desktop"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["form_factor", "VARCHAR(255)", "desktop.form_factor", "desktop"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["desktop_id"]], ["relation_7", [["laptop_id", "INTEGER", "laptop_id", "laptop"], ["battery_wh", "INTEGER", "laptop.battery_wh", "laptop"]], false, ["laptop_id"]], ["relation_8", [["tablet_id", "INTEGER", "tablet_id", "tablet"], ["screen_size_in", "INTEGER", "tablet.screen_size_in", "tablet"]], false, ["tablet_id"]], ["relation_9", [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch"], ["band_size", "VARCHAR(255)", "smartwatch.band_size", "smartwatch"], ["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch"]], true, ["smartwatch_id"]], ["relation_10", [["phone_id", "INTEGER", "phone_id", "phone"], ["carrier_lock", "VARCHAR(255)", "phone.carrier_lock", "phone"], ["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "bundled_phone"]], true, ["phone_id"]], ["relation_11", [["accessories_id", "INTEGER", "accessories_id", "accessories"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["accessory_type", "VARCHAR(255)", "accessories.accessory_type", "accessories"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["accessories_id"]], ["relation_12", [["appliance_id", "INTEGER", "appliance_id", "appliance"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["energy_rating", "VARCHAR(255)", "appliance.energy_rating", "appliance"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["appliance_id"]], ["relation_13", [["kitchenappliance_id", "INTEGER", "kitchenappliance_id", "kitchenappliance"], ["warranty_years", "INTEGER", "kitchenappliance.warranty_years", "kitchenappliance"]], false, ["kitchenappliance_id"]], ["relation_14", [["apparel_id", "INTEGER", "apparel_id", "apparel"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["apparel_id"]], ["relation_15", [["clothing_id", "INTEGER", "clothing_id", "clothing"], ["material", "VARCHAR(255)", "clothing.material", "clothing"], ["fit_type_women", "VARCHAR(255)", "womenclothing.fit_type_women", "womenclothing"], ["role", "VARCHAR(255)", "role", "womenclothing"]], false, ["clothing_id"]], ["relation_16", [["menclothing_id", "INTEGER", "menclothing_id", "menclothing"], ["fit_type_men", "VARCHAR(255)", "menclothing.fit_type_men", "menclothing"]], false, ["menclothing_id"]], ["relation_17", [["footwear_id", "INTEGER", "footwear_id", "footwear"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["sole_material", "VARCHAR(255)", "footwear.sole_material", "footwear"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["footwear_id"]], ["relation_18", [["software_id", "INTEGER", "software_id", "software"], ["license_type", "VARCHAR(255)", "software.license_type", "software"]], false, ["software_id"]], ["relation_19", [["user_id", "INTEGER", "user_id", "user"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["role", "VARCHAR(255)", "role", "employee"], ["browsingsession", "JSONB DEFAULT '[]'::jsonb", "browsingsession", "browsingsession"]], false, ["user_id"]], ["relation_20", [["user_id", "INTEGER", "user_id", "user.mv_user"], ["mv_user", "VARCHAR(255)", "user.mv_user", "user.mv_user"]], false, ["user_id", "mv_user"]], ["relation_21", [["customer_id", "INTEGER", "customer_id", "customer"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["renewal_date", "VARCHAR(255)", "primecustomer.renewal_date", "primecustomer"], ["role", "VARCHAR(255)", "role", "primecustomer"]], false, ["customer_id"]], ["relation_22", [["customer_id", "INTEGER", "customer_id", "customer.contact_no"], ["contact_no", "VARCHAR(255)", "customer.contact_no", "customer.contact_no"]], false, ["customer_id", "contact_no"]], ["relation_23", [["customer_id", "INTEGER", "customer_id", "primecustomer.subscription_addons"], ["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "primecustomer.subscription_addons"]], false, ["customer_id", "subscription_addons"]], ["relation_24", [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["company_name", "VARCHAR(255)", "businesscustomer.company_name", "businesscustomer"], ["browsingsession", "JSONB DEFAULT '[]'::jsonb", "browsingsession", "browsingsession"]], false, ["businesscustomer_id"]], ["relation_25", [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["office_site", "VARCHAR(255)", "corporateemployee.office_site", "corporateemployee"], ["browsingsession", "JSONB DEFAULT '[]'::jsonb", "browsingsession", "browsingsession"]], false, ["corporateemployee_id"]], ["relation_26", [["engineer_id", "INTEGER", "engineer_id", "engineer"], ["level", "VARCHAR(255)", "engineer.level", "engineer"]], false, ["engineer_id"]], ["relation_27", [["supportagent_id", "INTEGER", "supportagent_id", "supportagent"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["queue", "VARCHAR(255)", "supportagent.queue", "supportagent"], ["browsingsession", "JSONB DEFAULT '[]'::jsonb", "browsingsession", "browsingsession"]], false, ["supportagent_id"]], ["relation_28", [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["shift", "VARCHAR(255)", "fulfillmentassociate.shift", "fulfillmentassociate"], ["browsingsession", "JSONB DEFAULT '[]'::jsonb", "browsingsession", "browsingsession"]], false, ["fulfillmentassociate_id"]], ["relation_29", [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["department", "VARCHAR(255)", "categorymanager.department", "categorymanager"], ["browsingsession", "JSONB DEFAULT '[]'::jsonb", "browsingsession", "browsingsession"]], false, ["categorymanager_id"]], ["relation_30", [["tag_id", "INTEGER", "tag_id", "tag"], ["tag_name", "VARCHAR(255)", "tag.tag_name", "tag"]], false, ["tag_id"]], ["relation_31", [["customer_id", "INTEGER", "customer_id", "address"], ["address_id", "INTEGER", "address.address_id", "address"], ["kind", "VARCHAR(255)", "address.kind", "address"], ["line1", "VARCHAR(255)", "address.line1", "address"], ["city", "VARCHAR(255)", "address.city", "address"], ["state", "VARCHAR(255)", "address.state", "address"], ["country", "VARCHAR(255)", "address.country", "address"], ["postal_code", "VARCHAR(255)", "address.postal_code", "address"]], false, ["customer_id", "address_id"]], ["relation_32", [["customer_id", "INTEGER", "customer_id", "paymentmethod"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "paymentmethod"], ["brand", "VARCHAR(255)", "paymentmethod.brand", "paymentmethod"], ["last4", "VARCHAR(255)", "paymentmethod.last4", "paymentmethod"], ["exp_month", "INTEGER", "paymentmethod.exp_month", "paymentmethod"], ["exp_year", "INTEGER", "paymentmethod.exp_year", "paymentmethod"], ["is_default", "VARCHAR(255)", "paymentmethod.is_default", "paymentmethod"]], false, ["customer_id", "payment_method_id"]], ["relation_33", [["customer_id", "INTEGER", "customer_id", "cart"], ["updated_at", "VARCHAR(255)", "cart.updated_at", "cart"]], false, ["customer_id"]], ["relation_34", [["customer_id", "INTEGER", "customer_id", "wishlist"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist"], ["wishlist_name", "VARCHAR(255)", "wishlist.wishlist_name", "wishlist"]], false, ["customer_id", "wishlist_id"]], ["relation_35", [["customer_id", "INTEGER", "customer_id", "review"], ["review_id", "INTEGER", "review.review_id", "review"], ["rating", "INTEGER", "review.rating", "review"], ["title", "VARCHAR(255)", "review.title", "review"], ["body", "VARCHAR(255)", "review.body", "review"], ["created_at", "VARCHAR(255)", "review.created_at", "review"], ["reviews_product_id", "INTEGER", "product_id", "reviews"]], true, ["customer_id", "review_id"]], ["relation_36", [["custorder_id", "INTEGER", "custorder_id", "custorder"], ["placed_at", "VARCHAR(255)", "custorder.placed_at", "custorder"], ["status", "VARCHAR(255)", "custorder.status", "custorder"], ["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders"], ["payment_order_customer_id", "INTEGER", "customer_id", "payment_order"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order"]], true, ["custorder_id"]], ["relation_37", [["custorder_id", "INTEGER", "custorder_id", "shipment"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment"], ["carrier", "VARCHAR(255)", "shipment.carrier", "shipment"], ["tracking_no", "VARCHAR(255)", "shipment.tracking_no", "shipment"], ["shipped_at", "VARCHAR(255)", "shipment.shipped_at", "shipment"], ["delivered_at", "VARCHAR(255)", "shipment.delivered_at", "shipment"], ["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments"]], true, ["custorder_id", "shipment_id"]], ["relation_38", [["promotion_id", "INTEGER", "promotion_id", "promotion"], ["promo_name", "VARCHAR(255)", "promotion.promo_name", "promotion"], ["starts_at", "VARCHAR(255)", "promotion.starts_at", "promotion"], ["ends_at", "VARCHAR(255)", "promotion.ends_at", "promotion"], ["discount_type", "VARCHAR(255)", "promotion.discount_type", "promotion"], ["discount_value", "VARCHAR(255)", "promotion.discount_value", "promotion"]], false, ["promotion_id"]], ["relation_39", [["promotion_id", "INTEGER", "promotion_id", "coupon"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon"], ["max_uses", "INTEGER", "coupon.max_uses", "coupon"], ["per_user_limit", "INTEGER", "coupon.per_user_limit", "coupon"], ["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons"]], true, ["promotion_id", "coupon_code"]], ["relation_40", [["warehouse_id", "INTEGER", "warehouse_id", "warehouse"], ["warehouse_name", "VARCHAR(255)", "warehouse.warehouse_name", "warehouse"], ["region", "VARCHAR(255)", "warehouse.region", "warehouse"]], false, ["warehouse_id"]], ["relation_41", [["warehouse_id", "INTEGER", "warehouse_id", "warehousebin"], ["bin_id", "INTEGER", "warehousebin.bin_id", "warehousebin"], ["code", "VARCHAR(255)", "warehousebin.code", "warehousebin"]], false, ["warehouse_id", "bin_id"]], ["relation_42", [["supplier_id", "INTEGER", "supplier_id", "supplier"], ["supplier_name", "VARCHAR(255)", "supplier.supplier_name", "supplier"]], false, ["supplier_id"]], ["relation_43", [["supplier_id", "INTEGER", "supplier_id", "suppliercontact"], ["contact_id", "INTEGER", "suppliercontact.contact_id", "suppliercontact"], ["email", "VARCHAR(255)", "suppliercontact.email", "suppliercontact"], ["phone", "VARCHAR(255)", "suppliercontact.phone", "suppliercontact"]], false, ["supplier_id", "contact_id"]], ["relation_44", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder"], ["created_at", "VARCHAR(255)", "purchaseorder.created_at", "purchaseorder"], ["status", "VARCHAR(255)", "purchaseorder.status", "purchaseorder"], ["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos"]], true, ["purchaseorder_id"]], ["relation_45", [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner"], ["carrier_code", "VARCHAR(255)", "courierpartner.carrier_code", "courierpartner"], ["webhook_url", "VARCHAR(255)", "courierpartner.webhook_url", "courierpartner"]], false, ["courierpartner_id"]], ["relation_46", [["product_id", "INTEGER", "product_id", "product_tags"], ["tag_id", "INTEGER", "tag_id", "product_tags"]], false, ["product_id", "tag_id"]], ["relation_47", [["product_id", "INTEGER", "product_id", "bought_together"], ["bought_together_product_product_id", "INTEGER", "product_id", "bought_together"]], false, ["product_id", "bought_together_product_product_id"]], ["relation_48", [["customer_id", "INTEGER", "customer_id", "cart_contains"], ["product_id", "INTEGER", "product_id", "cart_contains"]], false, ["customer_id", "product_id"]], ["relation_49", [["customer_id", "INTEGER", "customer_id", "wishlist_contains"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_contains"], ["product_id", "INTEGER", "product_id", "wishlist_contains"]], false, ["customer_id", "wishlist_id", "product_id"]], ["relation_50", [["custorder_id", "INTEGER", "custorder_id", "order_items"], ["product_id", "INTEGER", "product_id", "order_items"]], false, ["custorder_id", "product_id"]], ["relation_51", [["custorder_id", "INTEGER", "custorder_id", "order_returns"], ["product_id", "INTEGER", "product_id", "order_returns"]], false, ["custorder_id", "product_id"]], ["relation_52", [["product_id", "INTEGER", "product_id", "stock"], ["warehouse_id", "INTEGER", "warehouse_id", "stock"], ["bin_id", "INTEGER", "warehousebin.bin_id", "stock"]], false, ["product_id", "warehouse_id", "bin_id"]], ["relation_53", [["supplier_id", "INTEGER", "supplier_id", "supplier_products"], ["product_id", "INTEGER", "product_id", "supplier_products"]], false, ["supplier_id", "product_id"]], ["relation_54", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "po_items"], ["product_id", "INTEGER", "product_id", "po_items"]], false, ["purchaseorder_id", "product_id"]], ["relation_55", [["phone_id", "INTEGER", "phone_id", "bundle_phones"], ["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phones"]], false, ["phone_id", "bundle_phone_phone_id"]]]
3	types	{}
4	graph	{"cost": 78437903.79660401, "edges": [{"type": "edge", "source": "product.mv_attributes", "target": "product", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "physicalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "digitalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "electronics", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "computer", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "desktop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "laptop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "tablet", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "smartwatch", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "camera", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "phone", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "accessories", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "appliance", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "kitchenappliance", "target": "appliance", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "apparel", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "clothing", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "menclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "womenclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "footwear", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "media", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "software", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "user.mv_user", "target": "user", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer.contact_no", "target": "customer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "primecustomer.subscription_addons", "target": "primecustomer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "primecustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "businesscustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "employee", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "corporateemployee", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "engineer", "target": "corporateemployee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "supportagent", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "fulfillmentassociate", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "categorymanager", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productimage", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productvariant", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "pricehistory", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "address", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "paymentmethod", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "cart", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "wishlist", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "review", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "browsingsession", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "shipment", "target": "custorder", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "coupon", "target": "promotion", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "warehousebin", "target": "warehouse", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "suppliercontact", "target": "supplier", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "category_products", "target": "category", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "category_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "tag", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "cart", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "wishlist", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "review", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "customer", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "paymentmethod", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "coupon", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "warehousebin", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "courierpartner", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "shipment", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "smartwatch", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}], "nodes": [{"key": {"table_key": [["category_id", "INTEGER", "category_id", "category_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["category"]}, "name": "Category", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 1, "attributes": ["category.category_id", "category.category_name", "category.parent"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "category_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "category_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "parent", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Category", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[1, "relation_0"]], "unique_name": "category", "mapped_table": [1, "relation_0"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "category_id", "pk_type": "INTEGER", "pk_ER_name": "category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "category_name", "type": "VARCHAR", "unique_name": "category.category_name", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "parent", "type": "INT", "unique_name": "category.parent", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["category"], "select_frequency": 2, "select_all_tables": [[1, "relation_0"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "category_id", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 2, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.category_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "category_name", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 3, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "category.category_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "parent", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 4, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.parent", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["product"]}, "name": "Product", "type": "ENTITY", "is_mvds": true, "children": ["physicalproduct", "digitalproduct"], "is_total": null, "sort_key": 5, "attributes": ["product.product_id", "product.sku", "product.product_name", "product.base_price", "product.is_active", "product.quantity", "product.mv_attributes"], "node_cover": ["product", "physicalproduct", "electronics", "desktop", "accessories", "appliance", "apparel", "footwear"], "entity_dict": {"attributes": [{"attr_name": "product_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sku", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "product_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "base_price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "quantity", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_attributes", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Product", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[12, "relation_2"], [5, "relation_1"]], "unique_name": "product", "mapped_table": [5, "relation_1"], "parent_entity": null, "relation_size": 2100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["product"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "product_id", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 6, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.product_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sku", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 7, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.sku", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "product_name", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 8, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.product_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "base_price", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 9, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.base_price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 10, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.is_active", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "quantity", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 11, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.quantity", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "mv_attributes"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": null}, "name": "mv_attributes", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 12, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.mv_attributes", "is_composite": false, "is_flattened": false, "mapped_table": [12, "relation_2"], "relation_size": 3144, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["physicalproduct"]}, "name": "PhysicalProduct", "type": "ENTITY", "is_mvds": false, "children": ["electronics", "appliance", "apparel"], "is_total": true, "sort_key": 13, "attributes": ["physicalproduct.dimensions"], "node_cover": ["physicalproduct", "electronics", "desktop", "accessories", "appliance", "apparel", "footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "dimensions", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PhysicalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [13, "relation_3"]], "unique_name": "physicalproduct", "mapped_table": [13, "relation_3"], "parent_entity": "product", "relation_size": 1700, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "physicalproduct_id", "pk_entity_name": "physicalproduct", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["physicalproduct"], "select_frequency": 5, "select_all_tables": [[12, "relation_2"], [13, "relation_3"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "dimensions", "type": "ATTRIBUTE", "entity": "physicalproduct", "children": [], "sort_key": 14, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "physicalproduct.dimensions", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "digitalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["digitalproduct"]}, "name": "DigitalProduct", "type": "ENTITY", "is_mvds": false, "children": ["media", "software"], "is_total": true, "sort_key": 15, "attributes": ["digitalproduct.delivery_type"], "node_cover": ["digitalproduct"], "entity_dict": {"total": true, "attributes": [{"attr_name": "delivery_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "DigitalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [5, "relation_1"]], "unique_name": "digitalproduct", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 300, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "digitalproduct_id", "pk_entity_name": "digitalproduct", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["digitalproduct"], "select_frequency": 2, "select_all_tables": [[5, "relation_1"], [12, "relation_2"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "delivery_type", "type": "ATTRIBUTE", "entity": "digitalproduct", "children": [], "sort_key": 16, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "digitalproduct.delivery_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["electronics"]}, "name": "Electronics", "type": "ENTITY", "is_mvds": false, "children": ["computer", "tablet", "smartwatch", "camera", "phone", "accessories"], "is_total": true, "sort_key": 17, "attributes": ["electronics.warranty_months"], "node_cover": ["electronics", "desktop", "accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_months", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Electronics", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_4"], [12, "relation_2"]], "unique_name": "electronics", "mapped_table": [17, "relation_4"], "parent_entity": "physicalproduct", "relation_size": 900, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "electronics_id", "pk_entity_name": "electronics", "pk_unique_name": "electronics_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["electronics"], "select_frequency": 1, "select_all_tables": [[17, "relation_4"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warranty_months", "type": "ATTRIBUTE", "entity": "electronics", "children": [], "sort_key": 18, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "electronics.warranty_months", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["computer"]}, "name": "Computer", "type": "ENTITY", "is_mvds": false, "children": ["desktop", "laptop"], "is_total": true, "sort_key": 19, "attributes": ["computer.cpu", "computer.ram_gb"], "node_cover": ["computer", "desktop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "cpu", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ram_gb", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Computer", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[19, "relation_5"], [17, "relation_4"], [12, "relation_2"]], "unique_name": "computer", "mapped_table": [19, "relation_5"], "parent_entity": "electronics", "relation_size": 300, "attribute_list": [{"pk_name": "computer_id", "pk_type": "INTEGER", "pk_ER_name": "computer_id", "pk_entity_name": "computer", "pk_unique_name": "computer_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["computer"], "select_frequency": 10, "select_all_tables": [[19, "relation_5"], [17, "relation_4"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "cpu", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 20, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "computer.cpu", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ram_gb", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 21, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "computer.ram_gb", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["desktop_id", "INTEGER", "desktop_id", "desktop_id"]], "reference_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["desktop"]}, "name": "Desktop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 22, "attributes": ["desktop.form_factor"], "node_cover": ["desktop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "form_factor", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Desktop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [22, "relation_6"]], "unique_name": "desktop", "mapped_table": [22, "relation_6"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "desktop_id", "pk_type": "INTEGER", "pk_ER_name": "desktop_id", "pk_entity_name": "desktop", "pk_unique_name": "desktop_id", "pk_reference_key_name": "computer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "computer_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "form_factor", "type": "VARCHAR", "unique_name": "desktop.form_factor", "is_flattened": null, "mapped_table": [22, "relation_6"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "desktop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["desktop"], "select_frequency": 10, "select_all_tables": [[12, "relation_2"], [22, "relation_6"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "form_factor", "type": "ATTRIBUTE", "entity": "desktop", "children": [], "sort_key": 23, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "desktop.form_factor", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["laptop_id", "INTEGER", "laptop_id", "laptop_id"]], "reference_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["laptop"]}, "name": "Laptop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 24, "attributes": ["laptop.battery_wh"], "node_cover": ["laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "battery_wh", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Laptop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[19, "relation_5"], [24, "relation_7"], [17, "relation_4"], [12, "relation_2"]], "unique_name": "laptop", "mapped_table": [24, "relation_7"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "laptop_id", "pk_type": "INTEGER", "pk_ER_name": "laptop_id", "pk_entity_name": "laptop", "pk_unique_name": "laptop_id", "pk_reference_key_name": "computer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "computer_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "battery_wh", "type": "INT", "unique_name": "laptop.battery_wh", "is_flattened": null, "mapped_table": [24, "relation_7"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "laptop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["laptop"], "select_frequency": 5, "select_all_tables": [[24, "relation_7"], [19, "relation_5"], [17, "relation_4"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "battery_wh", "type": "ATTRIBUTE", "entity": "laptop", "children": [], "sort_key": 25, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "laptop.battery_wh", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tablet_id", "INTEGER", "tablet_id", "tablet_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["tablet"]}, "name": "Tablet", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 26, "attributes": ["tablet.screen_size_in"], "node_cover": ["tablet"], "entity_dict": {"total": true, "attributes": [{"attr_name": "screen_size_in", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tablet", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_4"], [26, "relation_8"], [12, "relation_2"]], "unique_name": "tablet", "mapped_table": [26, "relation_8"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "tablet_id", "pk_type": "INTEGER", "pk_ER_name": "tablet_id", "pk_entity_name": "tablet", "pk_unique_name": "tablet_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "screen_size_in", "type": "INT", "unique_name": "tablet.screen_size_in", "is_flattened": null, "mapped_table": [26, "relation_8"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tablet", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["tablet"], "select_frequency": 1, "select_all_tables": [[17, "relation_4"], [26, "relation_8"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "screen_size_in", "type": "ATTRIBUTE", "entity": "tablet", "children": [], "sort_key": 27, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tablet.screen_size_in", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["smartwatch"]}, "name": "Smartwatch", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 28, "attributes": ["smartwatch.band_size"], "node_cover": ["smartwatch"], "entity_dict": {"total": true, "attributes": [{"attr_name": "band_size", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Smartwatch", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_4"], [12, "relation_2"], [28, "relation_9"]], "unique_name": "smartwatch", "mapped_table": [28, "relation_9"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "band_size", "type": "VARCHAR", "unique_name": "smartwatch.band_size", "is_flattened": null, "mapped_table": [28, "relation_9"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "smartwatch", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["smartwatch"], "select_frequency": 1, "select_all_tables": [[17, "relation_4"], [12, "relation_2"], [28, "relation_9"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "band_size", "type": "ATTRIBUTE", "entity": "smartwatch", "children": [], "sort_key": 29, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "smartwatch.band_size", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "camera_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["camera"]}, "name": "Camera", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 30, "attributes": ["camera.sensor_mp"], "node_cover": ["camera"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sensor_mp", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Camera", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_4"], [12, "relation_2"]], "unique_name": "camera", "mapped_table": [17, "relation_4"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "camera_id", "pk_entity_name": "camera", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sensor_mp", "type": "INT", "unique_name": "camera.sensor_mp", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "camera", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["camera"], "select_frequency": 2, "select_all_tables": [[17, "relation_4"], [12, "relation_2"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "sensor_mp", "type": "ATTRIBUTE", "entity": "camera", "children": [], "sort_key": 31, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "camera.sensor_mp", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["phone_id", "INTEGER", "phone_id", "phone_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["phone"]}, "name": "Phone", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 32, "attributes": ["phone.carrier_lock"], "node_cover": ["phone"], "entity_dict": {"total": true, "attributes": [{"attr_name": "carrier_lock", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Phone", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_4"], [12, "relation_2"], [32, "relation_10"]], "unique_name": "phone", "mapped_table": [32, "relation_10"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "carrier_lock", "type": "VARCHAR", "unique_name": "phone.carrier_lock", "is_flattened": null, "mapped_table": [32, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "phone", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["phone"], "select_frequency": 10, "select_all_tables": [[17, "relation_4"], [12, "relation_2"], [32, "relation_10"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "carrier_lock", "type": "ATTRIBUTE", "entity": "phone", "children": [], "sort_key": 33, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "phone.carrier_lock", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["accessories_id", "INTEGER", "accessories_id", "accessories_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["accessories"]}, "name": "Accessories", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 34, "attributes": ["accessories.accessory_type"], "node_cover": ["accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "accessory_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Accessories", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[34, "relation_11"], [12, "relation_2"]], "unique_name": "accessories", "mapped_table": [34, "relation_11"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "accessories_id", "pk_type": "INTEGER", "pk_ER_name": "accessories_id", "pk_entity_name": "accessories", "pk_unique_name": "accessories_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "accessory_type", "type": "VARCHAR", "unique_name": "accessories.accessory_type", "is_flattened": null, "mapped_table": [34, "relation_11"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "accessories", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["accessories"], "select_frequency": 0, "select_all_tables": [[34, "relation_11"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "accessory_type", "type": "ATTRIBUTE", "entity": "accessories", "children": [], "sort_key": 35, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "accessories.accessory_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["appliance_id", "INTEGER", "appliance_id", "appliance_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["appliance"]}, "name": "Appliance", "type": "ENTITY", "is_mvds": false, "children": ["kitchenappliance"], "is_total": true, "sort_key": 36, "attributes": ["appliance.energy_rating"], "node_cover": ["appliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "energy_rating", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Appliance", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[36, "relation_12"], [12, "relation_2"]], "unique_name": "appliance", "mapped_table": [36, "relation_12"], "parent_entity": "physicalproduct", "relation_size": 200, "attribute_list": [{"pk_name": "appliance_id", "pk_type": "INTEGER", "pk_ER_name": "appliance_id", "pk_entity_name": "appliance", "pk_unique_name": "appliance_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [36, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["appliance"], "select_frequency": 1, "select_all_tables": [[36, "relation_12"], [12, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "energy_rating", "type": "ATTRIBUTE", "entity": "appliance", "children": [], "sort_key": 37, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "appliance.energy_rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["kitchenappliance_id", "INTEGER", "kitchenappliance_id", "kitchenappliance_id"]], "reference_key": [["appliance_id", "INTEGER", "appliance_id", "appliance_id"]], "reference_node": ["appliance"], "reference_table": ["relation_12"], "table_key_entities": ["kitchenappliance"]}, "name": "KitchenAppliance", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 38, "attributes": ["kitchenappliance.warranty_years"], "node_cover": ["kitchenappliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_years", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "KitchenAppliance", "entity_type": null, "parent_entity": "Appliance"}, "is_no_table": false, "is_subclass": true, "node_tables": [[36, "relation_12"], [12, "relation_2"], [38, "relation_13"]], "unique_name": "kitchenappliance", "mapped_table": [38, "relation_13"], "parent_entity": "appliance", "relation_size": 100, "attribute_list": [{"pk_name": "kitchenappliance_id", "pk_type": "INTEGER", "pk_ER_name": "kitchenappliance_id", "pk_entity_name": "kitchenappliance", "pk_unique_name": "kitchenappliance_id", "pk_reference_key_name": "appliance_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "appliance_id", "pk_reference_node_unique_name": "appliance"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [36, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_years", "type": "INT", "unique_name": "kitchenappliance.warranty_years", "is_flattened": null, "mapped_table": [38, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "kitchenappliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["kitchenappliance"], "select_frequency": 10, "select_all_tables": [[36, "relation_12"], [12, "relation_2"], [38, "relation_13"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "appliance"}, {"key": null, "name": "warranty_years", "type": "ATTRIBUTE", "entity": "kitchenappliance", "children": [], "sort_key": 39, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "kitchenappliance.warranty_years", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["apparel"]}, "name": "Apparel", "type": "ENTITY", "is_mvds": false, "children": ["clothing", "footwear"], "is_total": true, "sort_key": 40, "attributes": ["apparel.size_system"], "node_cover": ["apparel", "footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "size_system", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Apparel", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [40, "relation_14"]], "unique_name": "apparel", "mapped_table": [40, "relation_14"], "parent_entity": "physicalproduct", "relation_size": 500, "attribute_list": [{"pk_name": "apparel_id", "pk_type": "INTEGER", "pk_ER_name": "apparel_id", "pk_entity_name": "apparel", "pk_unique_name": "apparel_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["apparel"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [40, "relation_14"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "size_system", "type": "ATTRIBUTE", "entity": "apparel", "children": [], "sort_key": 41, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "apparel.size_system", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_14"], "table_key_entities": ["clothing"]}, "name": "Clothing", "type": "ENTITY", "is_mvds": false, "children": ["menclothing", "womenclothing"], "is_total": true, "sort_key": 42, "attributes": ["clothing.material"], "node_cover": ["clothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Clothing", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[42, "relation_15"], [12, "relation_2"], [40, "relation_14"]], "unique_name": "clothing", "mapped_table": [42, "relation_15"], "parent_entity": "apparel", "relation_size": 300, "attribute_list": [{"pk_name": "clothing_id", "pk_type": "INTEGER", "pk_ER_name": "clothing_id", "pk_entity_name": "clothing", "pk_unique_name": "clothing_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["clothing"], "select_frequency": 10, "select_all_tables": [[42, "relation_15"], [12, "relation_2"], [40, "relation_14"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "apparel"}, {"key": null, "name": "material", "type": "ATTRIBUTE", "entity": "clothing", "children": [], "sort_key": 43, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "clothing.material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["menclothing_id", "INTEGER", "menclothing_id", "menclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_15"], "table_key_entities": ["menclothing"]}, "name": "MenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 44, "attributes": ["menclothing.fit_type_men"], "node_cover": ["menclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_men", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "MenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[42, "relation_15"], [44, "relation_16"], [12, "relation_2"], [40, "relation_14"]], "unique_name": "menclothing", "mapped_table": [44, "relation_16"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "menclothing_id", "pk_type": "INTEGER", "pk_ER_name": "menclothing_id", "pk_entity_name": "menclothing", "pk_unique_name": "menclothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_men", "type": "VARCHAR", "unique_name": "menclothing.fit_type_men", "is_flattened": null, "mapped_table": [44, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "menclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["menclothing"], "select_frequency": 5, "select_all_tables": [[42, "relation_15"], [44, "relation_16"], [12, "relation_2"], [40, "relation_14"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "apparel"}, {"key": null, "name": "fit_type_men", "type": "ATTRIBUTE", "entity": "menclothing", "children": [], "sort_key": 45, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "menclothing.fit_type_men", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["clothing_id", "INTEGER", "clothing_id", "womenclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_15"], "table_key_entities": ["womenclothing"]}, "name": "WomenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 46, "attributes": ["womenclothing.fit_type_women"], "node_cover": ["womenclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_women", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WomenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[42, "relation_15"], [12, "relation_2"], [40, "relation_14"]], "unique_name": "womenclothing", "mapped_table": [42, "relation_15"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "clothing_id", "pk_type": "INTEGER", "pk_ER_name": "womenclothing_id", "pk_entity_name": "womenclothing", "pk_unique_name": "clothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_women", "type": "VARCHAR", "unique_name": "womenclothing.fit_type_women", "is_flattened": null, "mapped_table": [42, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "womenclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["womenclothing"], "select_frequency": 20, "select_all_tables": [[42, "relation_15"], [12, "relation_2"], [40, "relation_14"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "fit_type_women", "type": "ATTRIBUTE", "entity": "womenclothing", "children": [], "sort_key": 47, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "womenclothing.fit_type_women", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["footwear_id", "INTEGER", "footwear_id", "footwear_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_14"], "table_key_entities": ["footwear"]}, "name": "Footwear", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 48, "attributes": ["footwear.sole_material"], "node_cover": ["footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sole_material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Footwear", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [48, "relation_17"]], "unique_name": "footwear", "mapped_table": [48, "relation_17"], "parent_entity": "apparel", "relation_size": 100, "attribute_list": [{"pk_name": "footwear_id", "pk_type": "INTEGER", "pk_ER_name": "footwear_id", "pk_entity_name": "footwear", "pk_unique_name": "footwear_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sole_material", "type": "VARCHAR", "unique_name": "footwear.sole_material", "is_flattened": null, "mapped_table": [48, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "footwear", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["footwear"], "select_frequency": 20, "select_all_tables": [[12, "relation_2"], [48, "relation_17"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "sole_material", "type": "ATTRIBUTE", "entity": "footwear", "children": [], "sort_key": 49, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "footwear.sole_material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "media_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["media"]}, "name": "Media", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 50, "attributes": ["media.format"], "node_cover": ["media"], "entity_dict": {"total": true, "attributes": [{"attr_name": "format", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Media", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[12, "relation_2"], [5, "relation_1"]], "unique_name": "media", "mapped_table": [5, "relation_1"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "media_id", "pk_entity_name": "media", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "format", "type": "VARCHAR", "unique_name": "media.format", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "media", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["media"], "select_frequency": 1, "select_all_tables": [[5, "relation_1"], [12, "relation_2"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "format", "type": "ATTRIBUTE", "entity": "media", "children": [], "sort_key": 51, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "media.format", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["software_id", "INTEGER", "software_id", "software_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_1"], "table_key_entities": ["software"]}, "name": "Software", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 52, "attributes": ["software.license_type"], "node_cover": ["software"], "entity_dict": {"total": true, "attributes": [{"attr_name": "license_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Software", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"], [12, "relation_2"], [52, "relation_18"]], "unique_name": "software", "mapped_table": [52, "relation_18"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "software_id", "pk_type": "INTEGER", "pk_ER_name": "software_id", "pk_entity_name": "software", "pk_unique_name": "software_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [12, "relation_2"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": true, "mvd_separate_table_name": [12, "relation_2"]}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "license_type", "type": "VARCHAR", "unique_name": "software.license_type", "is_flattened": null, "mapped_table": [52, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "software", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["software"], "select_frequency": 1, "select_all_tables": [[12, "relation_2"], [5, "relation_1"], [52, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "license_type", "type": "ATTRIBUTE", "entity": "software", "children": [], "sort_key": 53, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "software.license_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["user"]}, "name": "User", "type": "ENTITY", "is_mvds": true, "children": ["customer", "employee"], "is_total": null, "sort_key": 54, "attributes": ["user.email", "user.password_hash", "user.mv_user"], "node_cover": ["user", "businesscustomer", "corporateemployee", "supportagent", "fulfillmentassociate", "categorymanager"], "entity_dict": {"attributes": [{"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "password_hash", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_user", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "User", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[57, "relation_20"], [54, "relation_19"]], "unique_name": "user", "mapped_table": [54, "relation_19"], "parent_entity": null, "relation_size": 1000, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_20"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_20"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["user"], "select_frequency": 10, "select_all_tables": [[57, "relation_20"], [54, "relation_19"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 4, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 55, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "password_hash", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 56, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.password_hash", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["mv_user", "VARCHAR(255)", "user.mv_user", "mv_user"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_19"], "table_key_entities": null}, "name": "mv_user", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 57, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.mv_user", "is_composite": false, "is_flattened": false, "mapped_table": [57, "relation_20"], "relation_size": 2458, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_19"], "table_key_entities": ["customer"]}, "name": "Customer", "type": "ENTITY", "is_mvds": true, "children": ["primecustomer", "businesscustomer"], "is_total": true, "sort_key": 58, "attributes": ["customer.loyalty_tier", "customer.contact_no"], "node_cover": ["customer", "businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "loyalty_tier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "contact_no", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Customer", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[60, "relation_22"], [57, "relation_20"], [58, "relation_21"], [54, "relation_19"]], "unique_name": "customer", "mapped_table": [58, "relation_21"], "parent_entity": "user", "relation_size": 300, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_20"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_20"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_21"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_22"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["customer"], "select_frequency": 6, "select_all_tables": [[57, "relation_20"], [58, "relation_21"], [54, "relation_19"], [60, "relation_22"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "loyalty_tier", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 59, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.loyalty_tier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["contact_no", "VARCHAR(255)", "customer.contact_no", "contact_no"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_21"], "table_key_entities": null}, "name": "contact_no", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 60, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.contact_no", "is_composite": false, "is_flattened": false, "mapped_table": [60, "relation_22"], "relation_size": 446, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["customer_id", "INTEGER", "customer_id", "primecustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_21"], "table_key_entities": ["primecustomer"]}, "name": "PrimeCustomer", "type": "ENTITY", "is_mvds": true, "children": [], "is_total": true, "sort_key": 61, "attributes": ["primecustomer.renewal_date", "primecustomer.subscription_addons"], "node_cover": ["primecustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "renewal_date", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "subscription_addons", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PrimeCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[60, "relation_22"], [58, "relation_21"], [54, "relation_19"], [63, "relation_23"], [57, "relation_20"]], "unique_name": "primecustomer", "mapped_table": [58, "relation_21"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "primecustomer_id", "pk_entity_name": "primecustomer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_20"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_20"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_21"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_22"]}, {"name": "renewal_date", "type": "VARCHAR", "unique_name": "primecustomer.renewal_date", "is_flattened": null, "mapped_table": [58, "relation_21"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "subscription_addons", "type": "VARCHAR", "unique_name": "primecustomer.subscription_addons", "is_flattened": null, "mapped_table": [63, "relation_23"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": true, "mvd_separate_table_name": [63, "relation_23"]}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["primecustomer"], "select_frequency": 1, "select_all_tables": [[60, "relation_22"], [63, "relation_23"], [57, "relation_20"], [58, "relation_21"], [54, "relation_19"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "renewal_date", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 62, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.renewal_date", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "primecustomer_id"]], [["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "subscription_addons"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["primecustomer"], "reference_table": ["relation_21"], "table_key_entities": null}, "name": "subscription_addons", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 63, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.subscription_addons", "is_composite": false, "is_flattened": false, "mapped_table": [63, "relation_23"], "relation_size": 239, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": true, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_21"], "table_key_entities": ["businesscustomer"]}, "name": "BusinessCustomer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 64, "attributes": ["businesscustomer.company_name"], "node_cover": ["businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "company_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BusinessCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[64, "relation_24"], [60, "relation_22"], [57, "relation_20"]], "unique_name": "businesscustomer", "mapped_table": [64, "relation_24"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "businesscustomer_id", "pk_type": "INTEGER", "pk_ER_name": "businesscustomer_id", "pk_entity_name": "businesscustomer", "pk_unique_name": "businesscustomer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_20"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_20"]}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_21"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [60, "relation_22"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": true, "mvd_separate_table_name": [60, "relation_22"]}, {"name": "company_name", "type": "VARCHAR", "unique_name": "businesscustomer.company_name", "is_flattened": null, "mapped_table": [64, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "businesscustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["businesscustomer"], "select_frequency": 1, "select_all_tables": [[64, "relation_24"], [60, "relation_22"], [57, "relation_20"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "company_name", "type": "ATTRIBUTE", "entity": "businesscustomer", "children": [], "sort_key": 65, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "businesscustomer.company_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_19"], "table_key_entities": ["employee"]}, "name": "Employee", "type": "ENTITY", "is_mvds": false, "children": ["corporateemployee", "supportagent", "fulfillmentassociate", "categorymanager"], "is_total": true, "sort_key": 66, "attributes": ["employee.employee_no"], "node_cover": ["employee", "corporateemployee", "supportagent", "fulfillmentassociate", "categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "employee_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Employee", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_20"], [54, "relation_19"]], "unique_name": "employee", "mapped_table": [54, "relation_19"], "parent_entity": "user", "relation_size": 600, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "employee_id", "pk_entity_name": "employee", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_20"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_20"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["employee"], "select_frequency": 2, "select_all_tables": [[57, "relation_20"], [54, "relation_19"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "employee_no", "type": "ATTRIBUTE", "entity": "employee", "children": [], "sort_key": 67, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "employee.employee_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_19"], "table_key_entities": ["corporateemployee"]}, "name": "CorporateEmployee", "type": "ENTITY", "is_mvds": false, "children": ["engineer"], "is_total": true, "sort_key": 68, "attributes": ["corporateemployee.office_site"], "node_cover": ["corporateemployee"], "entity_dict": {"total": true, "attributes": [{"attr_name": "office_site", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CorporateEmployee", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[68, "relation_25"], [57, "relation_20"]], "unique_name": "corporateemployee", "mapped_table": [68, "relation_25"], "parent_entity": "employee", "relation_size": 200, "attribute_list": [{"pk_name": "corporateemployee_id", "pk_type": "INTEGER", "pk_ER_name": "corporateemployee_id", "pk_entity_name": "corporateemployee", "pk_unique_name": "corporateemployee_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_20"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_20"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["corporateemployee"], "select_frequency": 1, "select_all_tables": [[68, "relation_25"], [57, "relation_20"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "office_site", "type": "ATTRIBUTE", "entity": "corporateemployee", "children": [], "sort_key": 69, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "corporateemployee.office_site", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["engineer_id", "INTEGER", "engineer_id", "engineer_id"]], "reference_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_node": ["corporateemployee"], "reference_table": ["relation_25"], "table_key_entities": ["engineer"]}, "name": "Engineer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 70, "attributes": ["engineer.level"], "node_cover": ["engineer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "level", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Engineer", "entity_type": null, "parent_entity": "CorporateEmployee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_20"], [68, "relation_25"], [70, "relation_26"]], "unique_name": "engineer", "mapped_table": [70, "relation_26"], "parent_entity": "corporateemployee", "relation_size": 100, "attribute_list": [{"pk_name": "engineer_id", "pk_type": "INTEGER", "pk_ER_name": "engineer_id", "pk_entity_name": "engineer", "pk_unique_name": "engineer_id", "pk_reference_key_name": "corporateemployee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "corporateemployee_id", "pk_reference_node_unique_name": "corporateemployee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_20"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_20"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "level", "type": "VARCHAR", "unique_name": "engineer.level", "is_flattened": null, "mapped_table": [70, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "engineer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["engineer"], "select_frequency": 1, "select_all_tables": [[68, "relation_25"], [70, "relation_26"], [57, "relation_20"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "corporateemployee"}, {"key": null, "name": "level", "type": "ATTRIBUTE", "entity": "engineer", "children": [], "sort_key": 71, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "engineer.level", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supportagent_id", "INTEGER", "supportagent_id", "supportagent_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_19"], "table_key_entities": ["supportagent"]}, "name": "SupportAgent", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 72, "attributes": ["supportagent.queue"], "node_cover": ["supportagent"], "entity_dict": {"total": true, "attributes": [{"attr_name": "queue", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupportAgent", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_20"], [72, "relation_27"]], "unique_name": "supportagent", "mapped_table": [72, "relation_27"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "supportagent_id", "pk_type": "INTEGER", "pk_ER_name": "supportagent_id", "pk_entity_name": "supportagent", "pk_unique_name": "supportagent_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_20"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_20"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "queue", "type": "VARCHAR", "unique_name": "supportagent.queue", "is_flattened": null, "mapped_table": [72, "relation_27"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supportagent", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["supportagent"], "select_frequency": 1, "select_all_tables": [[57, "relation_20"], [72, "relation_27"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "queue", "type": "ATTRIBUTE", "entity": "supportagent", "children": [], "sort_key": 73, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supportagent.queue", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["fulfillmentassociate_id", "INTEGER", "fulfillmentassociate_id", "fulfillmentassociate_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_19"], "table_key_entities": ["fulfillmentassociate"]}, "name": "FulfillmentAssociate", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 74, "attributes": ["fulfillmentassociate.shift"], "node_cover": ["fulfillmentassociate"], "entity_dict": {"total": true, "attributes": [{"attr_name": "shift", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "FulfillmentAssociate", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_20"], [74, "relation_28"]], "unique_name": "fulfillmentassociate", "mapped_table": [74, "relation_28"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "fulfillmentassociate_id", "pk_type": "INTEGER", "pk_ER_name": "fulfillmentassociate_id", "pk_entity_name": "fulfillmentassociate", "pk_unique_name": "fulfillmentassociate_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_20"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_20"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shift", "type": "VARCHAR", "unique_name": "fulfillmentassociate.shift", "is_flattened": null, "mapped_table": [74, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "fulfillmentassociate", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["fulfillmentassociate"], "select_frequency": 1, "select_all_tables": [[57, "relation_20"], [74, "relation_28"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shift", "type": "ATTRIBUTE", "entity": "fulfillmentassociate", "children": [], "sort_key": 75, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "fulfillmentassociate.shift", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_19"], "table_key_entities": ["categorymanager"]}, "name": "CategoryManager", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 76, "attributes": ["categorymanager.department"], "node_cover": ["categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "department", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CategoryManager", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[57, "relation_20"], [76, "relation_29"]], "unique_name": "categorymanager", "mapped_table": [76, "relation_29"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "categorymanager_id", "pk_type": "INTEGER", "pk_ER_name": "categorymanager_id", "pk_entity_name": "categorymanager", "pk_unique_name": "categorymanager_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [57, "relation_20"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": true, "mvd_separate_table_name": [57, "relation_20"]}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "department", "type": "VARCHAR", "unique_name": "categorymanager.department", "is_flattened": null, "mapped_table": [76, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "categorymanager", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["categorymanager"], "select_frequency": 1, "select_all_tables": [[57, "relation_20"], [76, "relation_29"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "department", "type": "ATTRIBUTE", "entity": "categorymanager", "children": [], "sort_key": 77, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "categorymanager.department", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["image_id", "INTEGER", "productimage.image_id", "image_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productimage"]]}, "name": "ProductImage", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 78, "attributes": ["productimage.image_id", "productimage.url", "productimage.alt_text", "productimage.sort_order"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "image_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "alt_text", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sort_order", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductImage", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "productimage", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "image_id", "pk_type": "INTEGER", "pk_ER_name": "image_id", "pk_entity_name": "productimage", "pk_unique_name": "productimage.image_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "url", "type": "VARCHAR", "unique_name": "productimage.url", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "alt_text", "type": "VARCHAR", "unique_name": "productimage.alt_text", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sort_order", "type": "INT", "unique_name": "productimage.sort_order", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["productimage", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [13, "relation_3"], [17, "relation_4"], [22, "relation_6"], [34, "relation_11"], [36, "relation_12"], [40, "relation_14"], [48, "relation_17"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "image_id", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 79, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.image_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "url", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 80, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "alt_text", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 81, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.alt_text", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sort_order", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 82, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.sort_order", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["variant_id", "INTEGER", "productvariant.variant_id", "variant_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productvariant"]]}, "name": "ProductVariant", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 83, "attributes": ["productvariant.variant_id", "productvariant.price_override", "productvariant.barcode", "productvariant.is_active_variant"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "variant_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "price_override", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "barcode", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active_variant", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductVariant", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "productvariant", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "variant_id", "pk_type": "INTEGER", "pk_ER_name": "variant_id", "pk_entity_name": "productvariant", "pk_unique_name": "productvariant.variant_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "price_override", "type": "INT", "unique_name": "productvariant.price_override", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "barcode", "type": "VARCHAR", "unique_name": "productvariant.barcode", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active_variant", "type": "INT", "unique_name": "productvariant.is_active_variant", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["productvariant", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [13, "relation_3"], [17, "relation_4"], [22, "relation_6"], [34, "relation_11"], [36, "relation_12"], [40, "relation_14"], [48, "relation_17"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "variant_id", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 84, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.variant_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price_override", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 85, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.price_override", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "barcode", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 86, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productvariant.barcode", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active_variant", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 87, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.is_active_variant", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["price_id", "INTEGER", "pricehistory.price_id", "price_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["pricehistory"]]}, "name": "PriceHistory", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 88, "attributes": ["pricehistory.price_id", "pricehistory.starts_at", "pricehistory.ends_at", "pricehistory.price"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "price_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PriceHistory", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "pricehistory", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "price_id", "pk_type": "INTEGER", "pk_ER_name": "price_id", "pk_entity_name": "pricehistory", "pk_unique_name": "pricehistory.price_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "pricehistory.starts_at", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "pricehistory.ends_at", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "price", "type": "INT", "unique_name": "pricehistory.price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["pricehistory", "product"], "select_frequency": 6, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [13, "relation_3"], [17, "relation_4"], [22, "relation_6"], [34, "relation_11"], [36, "relation_12"], [40, "relation_14"], [48, "relation_17"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "price_id", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 89, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 90, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 91, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 92, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tag_id", "INTEGER", "tag_id", "tag_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["tag"]}, "name": "Tag", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 93, "attributes": ["tag.tag_id", "tag.tag_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "tag_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tag_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tag", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[93, "relation_30"]], "unique_name": "tag", "mapped_table": [93, "relation_30"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "tag_name", "type": "VARCHAR", "unique_name": "tag.tag_name", "is_flattened": null, "mapped_table": [93, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tag", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["tag"], "select_frequency": 3, "select_all_tables": [[93, "relation_30"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "tag_id", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 94, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tag.tag_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tag_name", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 95, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "tag.tag_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["address_id", "INTEGER", "address.address_id", "address_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_21"], "table_key_entities": [["customer"], ["address"]]}, "name": "Address", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 96, "attributes": ["address.address_id", "address.kind", "address.line1", "address.city", "address.state", "address.country", "address.postal_code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "address_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "kind", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "line1", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "city", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "state", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "country", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "postal_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Address", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[96, "relation_31"]], "unique_name": "address", "mapped_table": [96, "relation_31"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "address_id", "pk_type": "INTEGER", "pk_ER_name": "address_id", "pk_entity_name": "address", "pk_unique_name": "address.address_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "kind", "type": "VARCHAR", "unique_name": "address.kind", "is_flattened": null, "mapped_table": [96, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "line1", "type": "VARCHAR", "unique_name": "address.line1", "is_flattened": null, "mapped_table": [96, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "city", "type": "VARCHAR", "unique_name": "address.city", "is_flattened": null, "mapped_table": [96, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "state", "type": "VARCHAR", "unique_name": "address.state", "is_flattened": null, "mapped_table": [96, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "country", "type": "VARCHAR", "unique_name": "address.country", "is_flattened": null, "mapped_table": [96, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "postal_code", "type": "VARCHAR", "unique_name": "address.postal_code", "is_flattened": null, "mapped_table": [96, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["address", "customer"], "select_frequency": 4, "select_all_tables": [[58, "temp_customer"], [96, "relation_31"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 13, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "address_id", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 97, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "address.address_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "kind", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 98, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.kind", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "line1", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 99, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.line1", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "city", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 100, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.city", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "state", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 101, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.state", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "country", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 102, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.country", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "postal_code", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 103, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.postal_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_method_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_21"], "table_key_entities": [["customer"], ["paymentmethod"]]}, "name": "PaymentMethod", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 104, "attributes": ["paymentmethod.payment_method_id", "paymentmethod.brand", "paymentmethod.last4", "paymentmethod.exp_month", "paymentmethod.exp_year", "paymentmethod.is_default"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "payment_method_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "brand", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "last4", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_month", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_year", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_default", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PaymentMethod", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[104, "relation_32"]], "unique_name": "paymentmethod", "mapped_table": [104, "relation_32"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "brand", "type": "VARCHAR", "unique_name": "paymentmethod.brand", "is_flattened": null, "mapped_table": [104, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "last4", "type": "VARCHAR", "unique_name": "paymentmethod.last4", "is_flattened": null, "mapped_table": [104, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_month", "type": "INT", "unique_name": "paymentmethod.exp_month", "is_flattened": null, "mapped_table": [104, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_year", "type": "INT", "unique_name": "paymentmethod.exp_year", "is_flattened": null, "mapped_table": [104, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_default", "type": "VARCHAR", "unique_name": "paymentmethod.is_default", "is_flattened": null, "mapped_table": [104, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["paymentmethod", "customer"], "select_frequency": 0, "select_all_tables": [[104, "relation_32"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "payment_method_id", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 105, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.payment_method_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "brand", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 106, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.brand", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "last4", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 107, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.last4", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_month", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 108, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_month", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_year", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 109, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_year", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_default", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 110, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.is_default", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], []], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_21"], "table_key_entities": [["customer"], ["cart"]]}, "name": "Cart", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 111, "attributes": ["cart.updated_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "updated_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Cart", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[111, "relation_33"]], "unique_name": "cart", "mapped_table": [111, "relation_33"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "updated_at", "type": "VARCHAR", "unique_name": "cart.updated_at", "is_flattened": null, "mapped_table": [111, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "cart", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["cart", "customer"], "select_frequency": 8, "select_all_tables": [[58, "temp_customer"], [111, "relation_33"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "updated_at", "type": "ATTRIBUTE", "entity": "cart", "children": [], "sort_key": 112, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "cart.updated_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_21"], "table_key_entities": [["customer"], ["wishlist"]]}, "name": "Wishlist", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 113, "attributes": ["wishlist.wishlist_id", "wishlist.wishlist_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "wishlist_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "wishlist_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Wishlist", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[113, "relation_34"]], "unique_name": "wishlist", "mapped_table": [113, "relation_34"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "wishlist_name", "type": "VARCHAR", "unique_name": "wishlist.wishlist_name", "is_flattened": null, "mapped_table": [113, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "wishlist", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["wishlist", "customer"], "select_frequency": 5, "select_all_tables": [[113, "relation_34"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "wishlist_id", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 114, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "wishlist.wishlist_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "wishlist_name", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 115, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "wishlist.wishlist_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["review_id", "INTEGER", "review.review_id", "review_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_21"], "table_key_entities": [["customer"], ["review"]]}, "name": "Review", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 116, "attributes": ["review.review_id", "review.rating", "review.title", "review.body", "review.created_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "review_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "rating", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "title", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "body", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Review", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[116, "relation_35"]], "unique_name": "review", "mapped_table": [116, "relation_35"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "rating", "type": "INT", "unique_name": "review.rating", "is_flattened": null, "mapped_table": [116, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "title", "type": "VARCHAR", "unique_name": "review.title", "is_flattened": null, "mapped_table": [116, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "body", "type": "VARCHAR", "unique_name": "review.body", "is_flattened": null, "mapped_table": [116, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "review.created_at", "is_flattened": null, "mapped_table": [116, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["review", "customer"], "select_frequency": 7, "select_all_tables": [[58, "temp_customer"], [116, "relation_35"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "review_id", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 117, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.review_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "rating", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 118, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "title", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 119, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.title", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "body", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 120, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.body", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 121, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["session_id", "INTEGER", "browsingsession.session_id", "session_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_19"], "table_key_entities": [["user"], ["browsingsession"]]}, "name": "BrowsingSession", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 122, "attributes": ["browsingsession.session_id", "browsingsession.started_at", "browsingsession.device"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "session_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "started_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "device", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BrowsingSession", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": false, "node_tables": [[54, "relation_19"]], "unique_name": "browsingsession", "mapped_table": [54, "relation_19"], "parent_entity": "user", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"pk_name": "session_id", "pk_type": "INTEGER", "pk_ER_name": "session_id", "pk_entity_name": "browsingsession", "pk_unique_name": "browsingsession.session_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "started_at", "type": "VARCHAR", "unique_name": "browsingsession.started_at", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "device", "type": "VARCHAR", "unique_name": "browsingsession.device", "is_flattened": null, "mapped_table": [54, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["browsingsession", "user"], "select_frequency": 4, "select_all_tables": [[54, "temp_user"]], "is_parent_in_table": true, "mapped_tables_list": [[54, "relation_19"], [64, "relation_24"], [68, "relation_25"], [72, "relation_27"], [74, "relation_28"], [76, "relation_29"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "session_id", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 123, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "browsingsession.session_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "started_at", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 124, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.started_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "device", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 125, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.device", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["custorder"]}, "name": "CustOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 126, "attributes": ["custorder.custorder_id", "custorder.placed_at", "custorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "custorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "placed_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CustOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[126, "relation_36"]], "unique_name": "custorder", "mapped_table": [126, "relation_36"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "placed_at", "type": "VARCHAR", "unique_name": "custorder.placed_at", "is_flattened": null, "mapped_table": [126, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "custorder.status", "is_flattened": null, "mapped_table": [126, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["custorder"], "select_frequency": 10, "select_all_tables": [[126, "relation_36"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "custorder_id", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 127, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "custorder.custorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "placed_at", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 128, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.placed_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 129, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], []], "reference_node": ["custorder"], "reference_table": ["relation_36"], "table_key_entities": [["custorder"], ["shipment"]]}, "name": "Shipment", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 130, "attributes": ["shipment.shipment_id", "shipment.carrier", "shipment.tracking_no", "shipment.shipped_at", "shipment.delivered_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "shipment_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "carrier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tracking_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "shipped_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "delivered_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Shipment", "entity_type": null, "parent_entity": "CustOrder"}, "is_no_table": false, "is_subclass": false, "node_tables": [[130, "relation_37"]], "unique_name": "shipment", "mapped_table": [130, "relation_37"], "parent_entity": "custorder", "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": "custorder"}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier", "type": "VARCHAR", "unique_name": "shipment.carrier", "is_flattened": null, "mapped_table": [130, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "tracking_no", "type": "VARCHAR", "unique_name": "shipment.tracking_no", "is_flattened": null, "mapped_table": [130, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shipped_at", "type": "VARCHAR", "unique_name": "shipment.shipped_at", "is_flattened": null, "mapped_table": [130, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "delivered_at", "type": "VARCHAR", "unique_name": "shipment.delivered_at", "is_flattened": null, "mapped_table": [130, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["shipment", "custorder"], "select_frequency": 6, "select_all_tables": [[130, "relation_37"], [126, "relation_36"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shipment_id", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 131, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "shipment.shipment_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 132, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.carrier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tracking_no", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 133, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.tracking_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "shipped_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 134, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.shipped_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "delivered_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 135, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.delivered_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["promotion"]}, "name": "Promotion", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 136, "attributes": ["promotion.promo_id", "promotion.promo_name", "promotion.starts_at", "promotion.ends_at", "promotion.discount_type", "promotion.discount_value"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "promo_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "promo_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_value", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Promotion", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[136, "relation_38"]], "unique_name": "promotion", "mapped_table": [136, "relation_38"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "promo_name", "type": "VARCHAR", "unique_name": "promotion.promo_name", "is_flattened": null, "mapped_table": [136, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "promotion.starts_at", "is_flattened": null, "mapped_table": [136, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "promotion.ends_at", "is_flattened": null, "mapped_table": [136, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_type", "type": "VARCHAR", "unique_name": "promotion.discount_type", "is_flattened": null, "mapped_table": [136, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_value", "type": "VARCHAR", "unique_name": "promotion.discount_value", "is_flattened": null, "mapped_table": [136, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["promotion"], "select_frequency": 3, "select_all_tables": [[136, "relation_38"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "promo_id", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 137, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "promotion.promo_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "promo_name", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 138, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.promo_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 139, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 140, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_type", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 141, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_value", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 142, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_value", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], [["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"]], []], "reference_node": ["promotion"], "reference_table": ["relation_38"], "table_key_entities": [["promotion"], ["coupon"]]}, "name": "Coupon", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 143, "attributes": ["coupon.coupon_code", "coupon.max_uses", "coupon.per_user_limit"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "coupon_code", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "max_uses", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "per_user_limit", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Coupon", "entity_type": null, "parent_entity": "Promotion"}, "is_no_table": false, "is_subclass": false, "node_tables": [[143, "relation_39"]], "unique_name": "coupon", "mapped_table": [143, "relation_39"], "parent_entity": "promotion", "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": "promotion"}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "max_uses", "type": "INT", "unique_name": "coupon.max_uses", "is_flattened": null, "mapped_table": [143, "relation_39"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "per_user_limit", "type": "INT", "unique_name": "coupon.per_user_limit", "is_flattened": null, "mapped_table": [143, "relation_39"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["coupon", "promotion"], "select_frequency": 3, "select_all_tables": [[143, "relation_39"], [136, "relation_38"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "coupon_code", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 144, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.coupon_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "max_uses", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 145, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.max_uses", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "per_user_limit", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 146, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.per_user_limit", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["warehouse"]}, "name": "Warehouse", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 147, "attributes": ["warehouse.warehouse_id", "warehouse.warehouse_name", "warehouse.region"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "warehouse_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "warehouse_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "region", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Warehouse", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[147, "relation_40"]], "unique_name": "warehouse", "mapped_table": [147, "relation_40"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "warehouse_name", "type": "VARCHAR", "unique_name": "warehouse.warehouse_name", "is_flattened": null, "mapped_table": [147, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "region", "type": "VARCHAR", "unique_name": "warehouse.region", "is_flattened": null, "mapped_table": [147, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_40"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warehouse_id", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 148, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehouse.warehouse_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "warehouse_name", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 149, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.warehouse_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "region", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 150, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.region", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], [["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["warehouse_id", "INTEGER", "warehouse_id"]], []], "reference_node": ["warehouse"], "reference_table": ["relation_40"], "table_key_entities": [["warehouse"], ["warehousebin"]]}, "name": "WarehouseBin", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 151, "attributes": ["warehousebin.bin_id", "warehousebin.code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "bin_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WarehouseBin", "entity_type": null, "parent_entity": "Warehouse"}, "is_no_table": false, "is_subclass": false, "node_tables": [[151, "relation_41"]], "unique_name": "warehousebin", "mapped_table": [151, "relation_41"], "parent_entity": "warehouse", "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": "warehouse"}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "code", "type": "VARCHAR", "unique_name": "warehousebin.code", "is_flattened": null, "mapped_table": [151, "relation_41"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehousebin", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehousebin", "warehouse"], "select_frequency": 2, "select_all_tables": [[151, "relation_41"], [147, "relation_40"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "bin_id", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 152, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehousebin.bin_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "code", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 153, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehousebin.code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["supplier"]}, "name": "Supplier", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 154, "attributes": ["supplier.supplier_id", "supplier.supplier_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "supplier_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "supplier_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Supplier", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[154, "relation_42"]], "unique_name": "supplier", "mapped_table": [154, "relation_42"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "supplier_name", "type": "VARCHAR", "unique_name": "supplier.supplier_name", "is_flattened": null, "mapped_table": [154, "relation_42"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supplier", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["supplier"], "select_frequency": 3, "select_all_tables": [[154, "relation_42"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "supplier_id", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 155, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "supplier.supplier_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "supplier_name", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 156, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supplier.supplier_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["contact_id", "INTEGER", "suppliercontact.contact_id", "contact_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], []], "reference_node": ["supplier"], "reference_table": ["relation_42"], "table_key_entities": [["supplier"], ["suppliercontact"]]}, "name": "SupplierContact", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 157, "attributes": ["suppliercontact.contact_id", "suppliercontact.email", "suppliercontact.phone"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "contact_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "phone", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupplierContact", "entity_type": null, "parent_entity": "Supplier"}, "is_no_table": false, "is_subclass": false, "node_tables": [[157, "relation_43"]], "unique_name": "suppliercontact", "mapped_table": [157, "relation_43"], "parent_entity": "supplier", "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": "supplier"}, {"pk_name": "contact_id", "pk_type": "INTEGER", "pk_ER_name": "contact_id", "pk_entity_name": "suppliercontact", "pk_unique_name": "suppliercontact.contact_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "suppliercontact.email", "is_flattened": null, "mapped_table": [157, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "phone", "type": "VARCHAR", "unique_name": "suppliercontact.phone", "is_flattened": null, "mapped_table": [157, "relation_43"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["suppliercontact", "supplier"], "select_frequency": 3, "select_all_tables": [[154, "relation_42"], [157, "relation_43"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "contact_id", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 158, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "suppliercontact.contact_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 159, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "phone", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 160, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.phone", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["purchaseorder"]}, "name": "PurchaseOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 161, "attributes": ["purchaseorder.purchaseorder_id", "purchaseorder.created_at", "purchaseorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "purchaseorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PurchaseOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[161, "relation_44"]], "unique_name": "purchaseorder", "mapped_table": [161, "relation_44"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "purchaseorder.created_at", "is_flattened": null, "mapped_table": [161, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "purchaseorder.status", "is_flattened": null, "mapped_table": [161, "relation_44"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["purchaseorder"], "select_frequency": 4, "select_all_tables": [[161, "relation_44"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "purchaseorder_id", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 162, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "purchaseorder.purchaseorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 163, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 164, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["courierpartner"]}, "name": "CourierPartner", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 165, "attributes": ["courierpartner.courierpartner_id", "courierpartner.carrier_code", "courierpartner.webhook_url"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "courierpartner_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "carrier_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "webhook_url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CourierPartner", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[165, "relation_45"]], "unique_name": "courierpartner", "mapped_table": [165, "relation_45"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier_code", "type": "VARCHAR", "unique_name": "courierpartner.carrier_code", "is_flattened": null, "mapped_table": [165, "relation_45"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "webhook_url", "type": "VARCHAR", "unique_name": "courierpartner.webhook_url", "is_flattened": null, "mapped_table": [165, "relation_45"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["courierpartner"], "select_frequency": 1, "select_all_tables": [[165, "relation_45"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "courierpartner_id", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 166, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "courierpartner.courierpartner_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier_code", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 167, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.carrier_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "webhook_url", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 168, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.webhook_url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["category_products_category_id", "INTEGER", "category_id", "category_products_category_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["category_id", "INTEGER", "category_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_0"], "table_key_entities": [["product"], ["category"]]}, "name": "category_products", "type": "RELATIONSHIP", "entity1": "category", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Category", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "category_products"}, "sort_key": 169, "attributes": [], "node_tables": [[5, "relation_1"]], "unique_name": "category_products", "mapped_table": [5, "relation_1"], "relation_size": 483, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "category_products_category_id", "pk_type": "INTEGER", "pk_ER_name": "category_products_category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": "category_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "category_id", "pk_reference_node_unique_name": null}], "insert_frequency": 483, "select_all_nodes": ["category_products", "category", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [1, "relation_0"]], "mapped_tables_list": [[5, "relation_1"], [13, "relation_3"], [17, "relation_4"], [22, "relation_6"], [34, "relation_11"], [36, "relation_12"], [40, "relation_14"], [48, "relation_17"]], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["tag_id", "INTEGER", "tag_id", "tag_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["tag_id", "INTEGER", "tag_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_30"], "table_key_entities": [["product"], ["tag"]]}, "name": "product_tags", "type": "RELATIONSHIP", "entity1": "product", "entity2": "tag", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Tag", "role": null, "total": true}, "attributes": [], "table_name": "product_tags"}, "sort_key": 170, "attributes": [], "node_tables": [[170, "relation_46"]], "unique_name": "product_tags", "mapped_table": [170, "relation_46"], "relation_size": 3172, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": "tag_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "tag_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3172, "select_all_nodes": ["product_tags", "product", "tag"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [93, "relation_30"], [170, "relation_46"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["bought_together_product_product_id", "INTEGER", "product_id", "bought_together_product_product_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_1"], "table_key_entities": [["product"], ["product"]]}, "name": "bought_together", "type": "RELATIONSHIP", "entity1": "product", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": "product_id", "total": true}, "entity2": {"one": false, "name": "Product", "role": "bought_together_product_id", "total": true}, "attributes": [], "table_name": "bought_together"}, "sort_key": 171, "attributes": [], "node_tables": [[171, "relation_47"]], "unique_name": "bought_together", "mapped_table": [171, "relation_47"], "relation_size": 4151, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "bought_together_product_product_id", "pk_type": "INTEGER", "pk_ER_name": "bought_together_product_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 4151, "select_all_nodes": ["bought_together", "product", "product"], "select_frequency": 0, "select_all_tables": [[5, "temp_product"], [171, "relation_47"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": ["product_id", "bought_together_product_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_33", "relation_1"], "table_key_entities": [["cart"], ["product"]]}, "name": "cart_contains", "type": "RELATIONSHIP", "entity1": "cart", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Cart", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "cart_contains"}, "sort_key": 172, "attributes": [], "node_tables": [[172, "relation_48"]], "unique_name": "cart_contains", "mapped_table": [172, "relation_48"], "relation_size": 202, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "cart", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 202, "select_all_nodes": ["cart_contains", "cart", "customer", "product"], "select_frequency": 2, "select_all_tables": [[5, "temp_product"], [172, "relation_48"], [58, "temp_customer"], [111, "relation_33"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_34", "relation_1"], "table_key_entities": [["wishlist"], ["product"]]}, "name": "wishlist_contains", "type": "RELATIONSHIP", "entity1": "wishlist", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Wishlist", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "wishlist_contains"}, "sort_key": 173, "attributes": [], "node_tables": [[173, "relation_49"]], "unique_name": "wishlist_contains", "mapped_table": [173, "relation_49"], "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "wishlist", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": "wishlist_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "wishlist.wishlist_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["wishlist_contains", "wishlist", "customer", "product"], "select_frequency": 2, "select_all_tables": [[5, "temp_product"], [113, "relation_34"], [173, "relation_49"], [58, "temp_customer"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["review_id", "INTEGER", "review.review_id", "review_id"]], [["reviews_product_id", "INTEGER", "product_id", "reviews_product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["review_id", "INTEGER", "review.review_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_35", "relation_1"], "table_key_entities": [["review"], ["product"]]}, "name": "reviews", "type": "RELATIONSHIP", "entity1": "product", "entity2": "review", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Review", "role": null, "total": true}, "attributes": [], "table_name": "reviews"}, "sort_key": 174, "attributes": [], "node_tables": [[116, "relation_35"]], "unique_name": "reviews", "mapped_table": [116, "relation_35"], "relation_size": 47, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "review", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": "review_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "review.review_id", "pk_reference_node_unique_name": null}, {"pk_name": "reviews_product_id", "pk_type": "INTEGER", "pk_ER_name": "reviews_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 47, "select_all_nodes": ["reviews", "product", "review", "customer"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [58, "temp_customer"], [116, "relation_35"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 18, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders_customer_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"]]], "reference_node": [], "reference_table": ["relation_36", "relation_21"], "table_key_entities": [["custorder"], ["customer"]]}, "name": "customer_orders", "type": "RELATIONSHIP", "entity1": "customer", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Customer", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "customer_orders"}, "sort_key": 175, "attributes": [], "node_tables": [[126, "relation_36"]], "unique_name": "customer_orders", "mapped_table": [126, "relation_36"], "relation_size": 71, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "customer_orders_customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_orders_customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}], "insert_frequency": 71, "select_all_nodes": ["customer_orders", "customer", "custorder"], "select_frequency": 5, "select_all_tables": [[58, "temp_customer"], [126, "relation_36"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_36", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_items", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_items"}, "sort_key": 176, "attributes": [], "node_tables": [[176, "relation_50"]], "unique_name": "order_items", "mapped_table": [176, "relation_50"], "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_items", "custorder", "product"], "select_frequency": 2, "select_all_tables": [[5, "temp_product"], [176, "relation_50"], [126, "relation_36"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["payment_order_customer_id", "INTEGER", "customer_id", "payment_order_customer_id"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order_payment_method_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id"]]], "reference_node": [], "reference_table": ["relation_36", "relation_32"], "table_key_entities": [["custorder"], ["paymentmethod"]]}, "name": "payment_order", "type": "RELATIONSHIP", "entity1": "paymentmethod", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "PaymentMethod", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "payment_order"}, "sort_key": 177, "attributes": [], "node_tables": [[126, "relation_36"]], "unique_name": "payment_order", "mapped_table": [126, "relation_36"], "relation_size": 90, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_customer_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_customer_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": "payment_method_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "paymentmethod.payment_method_id", "pk_reference_node_unique_name": null}], "insert_frequency": 90, "select_all_nodes": ["payment_order", "paymentmethod", "customer", "custorder"], "select_frequency": 2, "select_all_tables": [[104, "relation_32"], [58, "temp_customer"], [126, "relation_36"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_36", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_returns", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_returns"}, "sort_key": 178, "attributes": [], "node_tables": [[178, "relation_51"]], "unique_name": "order_returns", "mapped_table": [178, "relation_51"], "relation_size": 188, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 188, "select_all_nodes": ["order_returns", "custorder", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [178, "relation_51"], [126, "relation_36"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]], [["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons_custorder_id"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code"]], [["custorder_id", "INTEGER", "custorder_id"]]], "reference_node": [], "reference_table": ["relation_39", "relation_36"], "table_key_entities": [["coupon"], ["custorder"]]}, "name": "order_coupons", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "coupon", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Coupon", "role": null, "total": true}, "attributes": [], "table_name": "order_coupons"}, "sort_key": 179, "attributes": [], "node_tables": [[143, "relation_39"]], "unique_name": "order_coupons", "mapped_table": [143, "relation_39"], "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "coupon", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": null}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": "coupon_code", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "coupon.coupon_code", "pk_reference_node_unique_name": null}, {"pk_name": "order_coupons_custorder_id", "pk_type": "INTEGER", "pk_ER_name": "order_coupons_custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_coupons", "custorder", "coupon", "promotion"], "select_frequency": 1, "select_all_tables": [[143, "relation_39"], [126, "relation_36"], [136, "relation_38"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_41"], "table_key_entities": [["product"], ["warehousebin"]]}, "name": "stock", "type": "RELATIONSHIP", "entity1": "product", "entity2": "warehousebin", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "WarehouseBin", "role": null, "total": true}, "attributes": [], "table_name": "stock"}, "sort_key": 180, "attributes": [], "node_tables": [[180, "relation_52"]], "unique_name": "stock", "mapped_table": [180, "relation_52"], "relation_size": 3173, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": null}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": "bin_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehousebin.bin_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3173, "select_all_nodes": ["stock", "product", "warehousebin", "warehouse"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [151, "relation_41"], [180, "relation_52"], [147, "relation_40"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_42", "relation_1"], "table_key_entities": [["supplier"], ["product"]]}, "name": "supplier_products", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "supplier_products"}, "sort_key": 181, "attributes": [], "node_tables": [[181, "relation_53"]], "unique_name": "supplier_products", "mapped_table": [181, "relation_53"], "relation_size": 159, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 159, "select_all_nodes": ["supplier_products", "supplier", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [154, "relation_42"], [181, "relation_53"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos_supplier_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["supplier_id", "INTEGER", "supplier_id"]]], "reference_node": [], "reference_table": ["relation_44", "relation_42"], "table_key_entities": [["purchaseorder"], ["supplier"]]}, "name": "supplier_pos", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "purchaseorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "attributes": [], "table_name": "supplier_pos"}, "sort_key": 182, "attributes": [], "node_tables": [[161, "relation_44"]], "unique_name": "supplier_pos", "mapped_table": [161, "relation_44"], "relation_size": 87, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "supplier_pos_supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_pos_supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}], "insert_frequency": 87, "select_all_nodes": ["supplier_pos", "supplier", "purchaseorder"], "select_frequency": 1, "select_all_tables": [[154, "relation_42"], [161, "relation_44"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 5, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_44", "relation_1"], "table_key_entities": [["purchaseorder"], ["product"]]}, "name": "po_items", "type": "RELATIONSHIP", "entity1": "purchaseorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "po_items"}, "sort_key": 183, "attributes": [], "node_tables": [[183, "relation_54"]], "unique_name": "po_items", "mapped_table": [183, "relation_54"], "relation_size": 156, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 156, "select_all_nodes": ["po_items", "purchaseorder", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [183, "relation_54"], [161, "relation_44"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]], [["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments_courierpartner_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id"]], [["courierpartner_id", "INTEGER", "courierpartner_id"]]], "reference_node": [], "reference_table": ["relation_37", "relation_45"], "table_key_entities": [["shipment"], ["courierpartner"]]}, "name": "courier_shipments", "type": "RELATIONSHIP", "entity1": "courierpartner", "entity2": "shipment", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CourierPartner", "role": null, "total": true}, "entity2": {"one": false, "name": "Shipment", "role": null, "total": true}, "attributes": [], "table_name": "courier_shipments"}, "sort_key": 184, "attributes": [], "node_tables": [[130, "relation_37"]], "unique_name": "courier_shipments", "mapped_table": [130, "relation_37"], "relation_size": 95, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "shipment", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": "shipment_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "shipment.shipment_id", "pk_reference_node_unique_name": null}, {"pk_name": "courier_shipments_courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courier_shipments_courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": "courierpartner_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "courierpartner_id", "pk_reference_node_unique_name": null}], "insert_frequency": 95, "select_all_nodes": ["courier_shipments", "courierpartner", "shipment", "custorder"], "select_frequency": 2, "select_all_tables": [[130, "relation_37"], [126, "relation_36"], [165, "relation_45"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 11, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_10", "relation_10"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundle_phones", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundle_phones"}, "sort_key": 185, "attributes": [], "node_tables": [[185, "relation_55"]], "unique_name": "bundle_phones", "mapped_table": [185, "relation_55"], "relation_size": 207, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundle_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundle_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 207, "select_all_nodes": ["bundle_phones", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[185, "relation_55"], [17, "relation_4"], [12, "relation_2"], [32, "relation_10"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "bundle_phone_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], [["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch_phone_id"]]], "reference_key": [[["smartwatch_id", "INTEGER", "smartwatch_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_9", "relation_10"], "table_key_entities": [["smartwatch"], ["phone"]]}, "name": "bundled_phone_smart_watch", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "smartwatch", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": null, "total": true}, "entity2": {"one": false, "name": "Smartwatch", "role": null, "total": true}, "attributes": [], "table_name": "bundled_phone_smart_watch"}, "sort_key": 186, "attributes": [], "node_tables": [[28, "relation_9"]], "unique_name": "bundled_phone_smart_watch", "mapped_table": [28, "relation_9"], "relation_size": 48, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "smartwatch_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "smartwatch_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundled_phone_smart_watch_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundled_phone_smart_watch_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 48, "select_all_nodes": ["bundled_phone_smart_watch", "phone", "smartwatch"], "select_frequency": 1, "select_all_tables": [[28, "relation_9"], [17, "relation_4"], [12, "relation_2"], [32, "relation_10"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "single_bundle_phone_bundled_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_10", "relation_10"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundled_phone", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "single_bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundled_phone"}, "sort_key": 187, "attributes": [], "node_tables": [[32, "relation_10"]], "unique_name": "bundled_phone", "mapped_table": [32, "relation_10"], "relation_size": 12, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "single_bundle_phone_bundled_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "single_bundle_phone_bundled_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 12, "select_all_nodes": ["bundled_phone", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[17, "relation_4"], [12, "relation_2"], [32, "relation_10"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "single_bundle_phone_id"], "node_type_for_partitioning_options": "1_N_relationship"}], "config": {"tag": "all_by_itself", "cart": "all_by_itself", "user": "all_by_itself", "media": "contained_in_parent", "phone": "partially_by_itself", "stock": "all_by_itself", "camera": "contained_in_parent", "coupon": "all_by_itself", "laptop": "partially_by_itself", "review": "all_by_itself", "tablet": "partially_by_itself", "address": "all_by_itself", "apparel": "all_by_itself", "desktop": "all_by_itself", "product": "all_by_itself", "reviews": "folded_to_many_side", "category": "all_by_itself", "clothing": "partially_by_itself", "computer": "partially_by_itself", "customer": "partially_by_itself", "employee": "contained_in_parent", "engineer": "partially_by_itself", "footwear": "all_by_itself", "po_items": "all_by_itself", "shipment": "all_by_itself", "software": "partially_by_itself", "supplier": "all_by_itself", "wishlist": "all_by_itself", "appliance": "all_by_itself", "custorder": "all_by_itself", "promotion": "all_by_itself", "warehouse": "all_by_itself", "smartwatch": "partially_by_itself", "accessories": "all_by_itself", "electronics": "all_by_itself", "menclothing": "partially_by_itself", "order_items": "all_by_itself", "pricehistory": "contained_in_parent", "product_tags": "all_by_itself", "productimage": "contained_in_parent", "supplier_pos": "folded_to_many_side", "supportagent": "all_by_itself", "user.mv_user": "all_by_itself", "warehousebin": "all_by_itself", "bundle_phones": "all_by_itself", "bundled_phone": "folded_to_many_side", "cart_contains": "all_by_itself", "order_coupons": "folded_to_many_side", "order_returns": "all_by_itself", "payment_order": "folded_to_many_side", "paymentmethod": "all_by_itself", "primecustomer": "contained_in_parent", "purchaseorder": "all_by_itself", "womenclothing": "contained_in_parent", "courierpartner": "all_by_itself", "digitalproduct": "contained_in_parent", "productvariant": "contained_in_parent", "bought_together": "all_by_itself", "browsingsession": "contained_in_parent", "categorymanager": "all_by_itself", "customer_orders": "folded_to_many_side", "physicalproduct": "all_by_itself", "suppliercontact": "all_by_itself", "businesscustomer": "all_by_itself", "kitchenappliance": "partially_by_itself", "category_products": "folded_to_many_side", "corporateemployee": "all_by_itself", "courier_shipments": "folded_to_many_side", "supplier_products": "all_by_itself", "wishlist_contains": "all_by_itself", "customer.contact_no": "all_by_itself", "fulfillmentassociate": "all_by_itself", "product.mv_attributes": "all_by_itself", "bundled_phone_smart_watch": "folded_to_many_side", "primecustomer.subscription_addons": "all_by_itself"}}
\.


--
-- Data for Name: relation_0; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_0 (category_id, category_name, parent) FROM stdin;
1	building	138
2	traditional	583
3	budget	868
4	laugh	822
5	much	783
6	accept	65
7	little	262
8	necessary	121
9	like	508
10	within	780
11	analysis	461
12	usually	484
13	far	668
14	policy	389
15	such	808
16	win	215
17	until	97
18	three	500
19	close	30
20	alone	915
21	if	856
22	school	400
23	many	444
24	boy	623
25	phone	781
26	current	786
27	week	3
28	like	713
29	successful	457
30	carry	273
31	wrong	739
32	bad	822
33	political	235
34	film	606
35	popular	968
36	brother	105
37	still	924
38	those	326
39	particular	32
40	that	23
41	western	27
42	keep	666
43	clearly	555
44	American	10
45	day	962
46	president	903
47	continue	391
48	sport	703
49	arm	222
50	case	993
51	ever	433
52	class	744
53	cost	30
54	senior	541
55	color	228
56	some	783
57	industry	449
58	these	962
59	southern	508
60	cold	567
61	experience	239
62	back	354
63	similar	237
64	little	694
65	anything	225
66	cultural	780
67	successful	471
68	ask	976
69	receive	297
70	catch	949
71	American	23
72	move	427
73	outside	858
74	push	939
75	receive	570
76	meeting	945
77	heavy	658
78	movement	103
79	significant	191
80	arm	645
81	economic	742
82	mission	881
83	only	304
84	health	124
85	bit	761
86	seat	341
87	for	918
88	campaign	739
89	really	997
90	him	729
91	quality	513
92	huge	959
93	job	991
94	new	433
95	look	520
96	act	850
97	baby	933
98	his	687
99	media	195
100	continue	311
\.


--
-- Data for Name: relation_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_1 (product_id, sku, product_name, base_price, is_active, quantity, delivery_type, role, format, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1	skin	form	291	602	997	\N	product	\N	\N	\N	\N	\N
2	number	sea	867	964	518	\N	product	\N	\N	\N	\N	\N
4	field	everything	249	762	817	\N	product	\N	\N	\N	\N	\N
6	head	check	562	904	720	\N	product	\N	\N	\N	\N	\N
8	not	order	798	168	534	\N	product	\N	\N	\N	\N	\N
9	water	several	380	502	751	\N	product	\N	\N	\N	\N	\N
10	old	show	481	45	316	\N	product	\N	\N	\N	\N	\N
11	amount	kind	663	175	173	\N	product	\N	\N	\N	\N	\N
12	hotel	too	13	790	205	\N	product	\N	\N	\N	\N	\N
14	meeting	spring	471	932	276	\N	product	\N	\N	\N	\N	\N
16	think	front	532	797	575	\N	product	\N	\N	\N	\N	\N
17	ahead	agency	437	973	58	\N	product	\N	\N	\N	\N	\N
18	nearly	win	891	374	584	\N	product	\N	\N	\N	\N	\N
19	stop	him	964	517	424	\N	product	\N	\N	\N	\N	\N
20	friend	might	833	366	425	\N	product	\N	\N	\N	\N	\N
21	of	behavior	2	552	554	\N	product	\N	\N	\N	\N	\N
22	data	impact	470	615	29	\N	product	\N	\N	\N	\N	\N
25	quickly	down	34	862	967	\N	product	\N	\N	\N	\N	\N
27	perform	rise	15	773	774	\N	product	\N	\N	\N	\N	\N
28	any	yeah	256	276	113	\N	product	\N	\N	\N	\N	\N
30	poor	stop	164	262	541	\N	product	\N	\N	\N	\N	\N
31	make	perhaps	673	280	664	\N	product	\N	\N	\N	\N	\N
34	really	heavy	396	352	432	\N	product	\N	\N	\N	\N	\N
35	between	expect	265	112	260	\N	product	\N	\N	\N	\N	\N
37	best	quickly	231	19	407	\N	product	\N	\N	\N	\N	\N
38	later	exactly	37	737	983	\N	product	\N	\N	\N	\N	\N
40	feel	military	558	853	226	\N	product	\N	\N	\N	\N	\N
43	care	job	676	647	437	\N	product	\N	\N	\N	\N	\N
44	far	available	756	306	129	\N	product	\N	\N	\N	\N	\N
45	night	what	897	49	314	\N	product	\N	\N	\N	\N	\N
46	pay	fire	880	79	318	\N	product	\N	\N	\N	\N	\N
48	special	stand	134	9	575	\N	product	\N	\N	\N	\N	\N
49	speech	action	605	840	223	\N	product	\N	\N	\N	\N	\N
50	sister	sound	176	848	889	\N	product	\N	\N	\N	\N	\N
53	character	others	606	199	505	\N	product	\N	\N	\N	\N	\N
54	performance	small	961	682	400	\N	product	\N	\N	\N	\N	\N
57	receive	able	19	161	206	\N	product	\N	\N	\N	\N	\N
58	cold	thank	831	577	802	\N	product	\N	\N	\N	\N	\N
59	man	expect	348	440	219	\N	product	\N	\N	\N	\N	\N
60	truth	without	691	99	858	\N	product	\N	\N	\N	\N	\N
62	garden	interesting	787	546	241	\N	product	\N	\N	\N	\N	\N
63	free	party	743	42	87	\N	product	\N	\N	\N	\N	\N
64	wish	offer	174	171	933	\N	product	\N	\N	\N	\N	\N
65	book	if	275	778	341	\N	product	\N	\N	\N	\N	\N
66	marriage	cell	377	347	349	\N	product	\N	\N	\N	\N	\N
67	top	upon	299	241	889	\N	product	\N	\N	\N	\N	\N
69	western	especially	329	41	417	\N	product	\N	\N	\N	\N	\N
71	member	pay	849	129	350	\N	product	\N	\N	\N	\N	\N
72	box	else	630	602	801	\N	product	\N	\N	\N	\N	\N
73	position	after	79	585	564	\N	product	\N	\N	\N	\N	\N
74	indicate	discover	580	84	976	\N	product	\N	\N	\N	\N	\N
77	far	sit	806	47	848	\N	product	\N	\N	\N	\N	\N
79	trade	young	94	424	118	\N	product	\N	\N	\N	\N	\N
80	son	cell	193	246	805	\N	product	\N	\N	\N	\N	\N
81	thousand	friend	166	119	462	\N	product	\N	\N	\N	\N	\N
82	well	least	698	248	163	\N	product	\N	\N	\N	\N	\N
83	key	whatever	446	933	988	\N	product	\N	\N	\N	\N	\N
84	administration	pay	826	994	556	\N	product	\N	\N	\N	\N	\N
86	any	friend	323	103	213	\N	product	\N	\N	\N	\N	\N
88	ten	believe	744	611	328	\N	product	\N	\N	\N	\N	\N
89	expect	who	401	321	409	\N	product	\N	\N	\N	\N	\N
90	education	green	66	936	325	\N	product	\N	\N	\N	\N	\N
91	bed	spring	115	257	221	\N	product	\N	\N	\N	\N	\N
92	something	wife	678	365	266	\N	product	\N	\N	\N	\N	\N
94	enter	might	253	370	84	\N	product	\N	\N	\N	\N	\N
95	generation	at	92	772	459	\N	product	\N	\N	\N	\N	\N
96	pull	woman	668	589	659	\N	product	\N	\N	\N	\N	\N
98	debate	dog	43	336	192	\N	product	\N	\N	\N	\N	\N
99	second	area	812	868	593	\N	product	\N	\N	\N	\N	\N
100	occur	later	252	343	104	\N	product	\N	\N	\N	\N	\N
201	shake	however	173	305	669	able	digitalproduct	\N	\N	\N	\N	\N
202	fine	why	365	625	758	dog	digitalproduct	\N	\N	\N	\N	\N
203	set	increase	402	575	410	sign	digitalproduct	\N	\N	\N	\N	\N
204	system	similar	496	809	266	painting	digitalproduct	\N	\N	\N	\N	\N
205	shoulder	soon	734	228	265	good	digitalproduct	\N	\N	\N	\N	\N
56	sometimes	physical	627	893	412	\N	product	\N	\N	\N	[{"price": "197", "ends_at": "enjoy", "price_id": "760", "starts_at": "start"}]	\N
13	health	radio	415	527	353	\N	product	\N	\N	\N	[{"price": "434", "ends_at": "society", "price_id": "347", "starts_at": "do"}]	\N
87	arm	put	41	28	11	\N	product	\N	\N	\N	\N	49
15	itself	by	393	803	878	\N	product	\N	\N	\N	\N	33
206	cut	body	865	677	32	course	digitalproduct	\N	\N	\N	\N	\N
207	rich	while	325	951	443	management	digitalproduct	\N	\N	\N	\N	\N
208	fast	technology	805	276	195	note	digitalproduct	\N	\N	\N	\N	\N
211	participant	design	621	969	269	memory	digitalproduct	\N	\N	\N	\N	\N
212	else	scene	540	167	142	table	digitalproduct	\N	\N	\N	\N	\N
215	leave	almost	119	736	212	nor	digitalproduct	\N	\N	\N	\N	\N
216	voice	role	70	109	234	movie	digitalproduct	\N	\N	\N	\N	\N
217	half	share	330	505	951	so	digitalproduct	\N	\N	\N	\N	\N
218	again	traditional	979	192	47	owner	digitalproduct	\N	\N	\N	\N	\N
221	finally	vote	351	679	858	sense	digitalproduct	\N	\N	\N	\N	\N
222	candidate	ten	121	628	710	yes	digitalproduct	\N	\N	\N	\N	\N
223	mother	subject	98	228	410	none	digitalproduct	\N	\N	\N	\N	\N
224	new	news	507	461	387	beyond	digitalproduct	\N	\N	\N	\N	\N
225	animal	morning	997	238	242	security	digitalproduct	\N	\N	\N	\N	\N
227	despite	actually	217	463	733	opportunity	digitalproduct	\N	\N	\N	\N	\N
229	room	present	932	219	81	accept	digitalproduct	\N	\N	\N	\N	\N
231	conference	business	328	911	393	thought	digitalproduct	\N	\N	\N	\N	\N
233	affect	voice	902	845	777	under	digitalproduct	\N	\N	\N	\N	\N
235	night	respond	397	149	898	threat	digitalproduct	\N	\N	\N	\N	\N
237	director	require	82	474	668	film	digitalproduct	\N	\N	\N	\N	\N
238	talk	again	928	15	37	college	digitalproduct	\N	\N	\N	\N	\N
239	production	ball	538	861	133	three	digitalproduct	\N	\N	\N	\N	\N
240	seek	kid	956	281	800	story	digitalproduct	\N	\N	\N	\N	\N
241	field	exist	443	94	195	care	digitalproduct	\N	\N	\N	\N	\N
242	issue	everyone	512	653	134	everything	digitalproduct	\N	\N	\N	\N	\N
243	thousand	modern	704	837	866	part	digitalproduct	\N	\N	\N	\N	\N
244	cup	rather	679	459	400	game	digitalproduct	\N	\N	\N	\N	\N
245	control	level	647	275	993	college	digitalproduct	\N	\N	\N	\N	\N
246	marriage	particularly	658	651	249	time	digitalproduct	\N	\N	\N	\N	\N
247	go	color	62	603	958	fear	digitalproduct	\N	\N	\N	\N	\N
248	make	peace	359	439	620	station	digitalproduct	\N	\N	\N	\N	\N
249	heart	form	927	362	561	especially	digitalproduct	\N	\N	\N	\N	\N
252	smile	job	762	626	739	interview	digitalproduct	\N	\N	\N	\N	\N
253	clear	sea	258	182	1000	until	digitalproduct	\N	\N	\N	\N	\N
254	rule	computer	155	61	941	very	digitalproduct	\N	\N	\N	\N	\N
257	subject	action	514	380	102	financial	digitalproduct	\N	\N	\N	\N	\N
258	analysis	expert	42	130	545	region	digitalproduct	\N	\N	\N	\N	\N
259	other	old	454	681	132	necessary	digitalproduct	\N	\N	\N	\N	\N
260	improve	everybody	782	725	921	hotel	digitalproduct	\N	\N	\N	\N	\N
261	firm	we	26	755	538	system	digitalproduct	\N	\N	\N	\N	\N
262	type	keep	93	257	820	late	digitalproduct	\N	\N	\N	\N	\N
264	list	past	60	751	268	contain	digitalproduct	\N	\N	\N	\N	\N
265	car	official	753	134	267	away	digitalproduct	\N	\N	\N	\N	\N
266	process	blue	827	120	877	voice	digitalproduct	\N	\N	\N	\N	\N
269	check	majority	946	347	522	response	digitalproduct	\N	\N	\N	\N	\N
270	reflect	analysis	980	918	599	our	digitalproduct	\N	\N	\N	\N	\N
271	plant	girl	108	133	669	soon	digitalproduct	\N	\N	\N	\N	\N
274	hot	deep	205	380	399	machine	digitalproduct	\N	\N	\N	\N	\N
275	some	design	100	420	354	do	digitalproduct	\N	\N	\N	\N	\N
277	drive	television	835	819	667	second	digitalproduct	\N	\N	\N	\N	\N
278	fear	treatment	428	306	327	short	digitalproduct	\N	\N	\N	\N	\N
279	fill	least	280	334	767	require	digitalproduct	\N	\N	\N	\N	\N
281	miss	action	937	745	334	player	digitalproduct	\N	\N	\N	\N	\N
282	when	adult	587	71	463	top	digitalproduct	\N	\N	\N	\N	\N
286	key	travel	945	593	821	support	digitalproduct	\N	\N	\N	\N	\N
288	chance	international	590	874	258	feeling	digitalproduct	\N	\N	\N	\N	\N
290	government	action	371	965	817	woman	digitalproduct	\N	\N	\N	\N	\N
291	quickly	kind	413	315	476	concern	digitalproduct	\N	\N	\N	\N	\N
284	real	paper	950	760	994	Republican	digitalproduct	\N	\N	[{"barcode": "team", "variant_id": "237", "price_override": "481", "is_active_variant": "68"}]	\N	\N
209	thing	all	641	750	170	evidence	digitalproduct	\N	\N	\N	\N	87
272	property	product	537	573	737	home	digitalproduct	\N	\N	\N	\N	42
292	institution	president	545	520	172	alone	digitalproduct	\N	\N	\N	\N	94
296	discover	office	832	102	559	director	digitalproduct	\N	\N	\N	\N	\N
300	music	beautiful	659	859	178	nor	digitalproduct	\N	\N	\N	\N	\N
1901	carry	any	276	355	769	wonder	media	message	\N	\N	\N	\N
1902	recently	since	303	608	243	perform	media	good	\N	\N	\N	\N
1904	million	lot	570	183	758	pressure	media	final	\N	\N	\N	\N
1905	share	success	424	326	559	trouble	media	court	\N	\N	\N	\N
1907	table	dark	797	662	547	but	media	chair	\N	\N	\N	\N
1908	politics	continue	30	326	489	year	media	put	\N	\N	\N	\N
1909	serve	true	210	409	102	general	media	message	\N	\N	\N	\N
1911	paper	small	506	552	565	president	media	international	\N	\N	\N	\N
1912	someone	radio	775	797	459	spend	media	likely	\N	\N	\N	\N
1913	build	his	696	654	198	produce	media	information	\N	\N	\N	\N
1915	set	move	8	69	832	expert	media	go	\N	\N	\N	\N
1916	he	personal	19	825	196	whole	media	low	\N	\N	\N	\N
1917	forget	thing	281	653	580	or	media	public	\N	\N	\N	\N
1918	include	enough	787	490	573	nice	media	learn	\N	\N	\N	\N
1920	there	whole	412	57	656	just	media	less	\N	\N	\N	\N
1921	pretty	should	297	363	240	so	media	build	\N	\N	\N	\N
1922	ten	evening	471	572	482	expect	media	game	\N	\N	\N	\N
1923	natural	environment	39	786	998	story	media	even	\N	\N	\N	\N
1924	staff	success	121	330	833	election	media	two	\N	\N	\N	\N
1927	together	scientist	883	911	284	talk	media	minute	\N	\N	\N	\N
1928	style	since	701	563	895	TV	media	force	\N	\N	\N	\N
1929	dark	cost	991	110	674	several	media	stay	\N	\N	\N	\N
1930	yet	contain	436	519	435	growth	media	forget	\N	\N	\N	\N
1931	woman	likely	837	491	229	modern	media	grow	\N	\N	\N	\N
1932	final	bed	182	530	610	lose	media	great	\N	\N	\N	\N
1933	performance	source	636	938	479	mother	media	yeah	\N	\N	\N	\N
1935	military	magazine	772	273	196	range	media	here	\N	\N	\N	\N
1937	but	between	995	610	385	site	media	month	\N	\N	\N	\N
1938	south	professional	605	13	244	start	media	every	\N	\N	\N	\N
1942	local	order	873	185	179	nor	media	pass	\N	\N	\N	\N
1943	hair	skill	578	119	240	perhaps	media	south	\N	\N	\N	\N
1944	science	better	429	296	161	support	media	be	\N	\N	\N	\N
1946	bit	college	562	195	126	with	media	contain	\N	\N	\N	\N
1947	else	other	673	506	207	pay	media	owner	\N	\N	\N	\N
1948	others	though	640	717	815	TV	media	campaign	\N	\N	\N	\N
1949	either	suggest	735	851	619	tend	media	reflect	\N	\N	\N	\N
1950	front	ok	181	339	674	seat	media	want	\N	\N	\N	\N
1951	trade	ahead	197	979	665	environment	media	arm	\N	\N	\N	\N
1952	newspaper	start	114	335	597	share	media	sure	\N	\N	\N	\N
1953	true	read	183	3	772	picture	media	either	\N	\N	\N	\N
1954	network	especially	392	553	396	build	media	message	\N	\N	\N	\N
1955	gas	image	66	325	345	maybe	media	not	\N	\N	\N	\N
1956	chair	despite	266	903	275	firm	media	instead	\N	\N	\N	\N
1957	house	mission	164	960	473	military	media	edge	\N	\N	\N	\N
1958	evening	pull	393	481	96	experience	media	thus	\N	\N	\N	\N
1959	must	avoid	728	125	572	fight	media	finish	\N	\N	\N	\N
1961	factor	here	833	302	761	story	media	thing	\N	\N	\N	\N
1962	leave	operation	205	366	666	deal	media	history	\N	\N	\N	\N
1963	response	enter	687	876	863	economic	media	Democrat	\N	\N	\N	\N
1964	might	detail	553	895	659	age	media	beat	\N	\N	\N	\N
1966	nature	relationship	269	775	548	view	media	successful	\N	\N	\N	\N
1968	remember	garden	807	346	54	president	media	officer	\N	\N	\N	\N
1969	different	someone	967	257	882	Mr	media	time	\N	\N	\N	\N
1971	type	popular	619	252	38	apply	media	hand	\N	\N	\N	\N
1972	see	practice	880	873	96	other	media	side	\N	\N	\N	\N
1974	boy	reveal	923	832	841	act	media	plan	\N	\N	\N	\N
1975	industry	news	518	627	874	page	media	performance	\N	\N	\N	\N
1976	outside	benefit	696	419	506	on	media	rate	\N	\N	\N	\N
1978	edge	truth	678	111	836	teach	media	meet	\N	\N	\N	\N
1979	matter	nature	437	181	33	thing	media	whether	\N	\N	\N	\N
1981	amount	ground	350	396	449	away	media	strong	\N	\N	\N	\N
1982	argue	collection	485	364	742	have	media	president	\N	\N	\N	\N
1984	baby	or	266	583	50	about	media	customer	\N	\N	\N	\N
1970	not	responsibility	990	680	903	visit	media	good	\N	[{"barcode": "modern", "variant_id": "907", "price_override": "136", "is_active_variant": "886"}]	\N	\N
1977	church	product	555	901	246	friend	media	new	\N	\N	[{"price": "2", "ends_at": "pull", "price_id": "303", "starts_at": "again"}]	\N
1926	teacher	year	862	719	759	establish	media	collection	\N	\N	\N	53
297	believe	network	732	110	210	police	digitalproduct	\N	\N	\N	\N	59
1903	turn	paper	559	43	338	shake	media	like	\N	\N	\N	4
1919	as	head	464	43	390	issue	media	visit	\N	\N	\N	84
1973	oil	outside	686	185	197	defense	media	give	\N	\N	\N	30
1985	fight	hold	394	158	487	everyone	media	avoid	\N	\N	\N	\N
1986	available	generation	400	848	557	seek	media	face	\N	\N	\N	\N
1987	interest	television	183	232	527	discover	media	blue	\N	\N	\N	\N
1988	position	month	856	630	867	hope	media	meet	\N	\N	\N	\N
1989	turn	thank	422	465	768	worker	media	key	\N	\N	\N	\N
1990	guess	drug	203	48	581	chance	media	ability	\N	\N	\N	\N
1991	information	media	76	968	723	little	media	school	\N	\N	\N	\N
1993	effort	guy	705	872	841	research	media	result	\N	\N	\N	\N
1994	production	together	348	214	105	join	media	send	\N	\N	\N	\N
1995	body	time	916	325	34	eight	media	successful	\N	\N	\N	\N
1996	rich	despite	207	359	972	today	media	wear	\N	\N	\N	\N
1999	back	garden	301	667	518	some	media	often	\N	\N	\N	\N
2001	tree	space	674	842	707	final	software	\N	\N	\N	\N	\N
2003	century	space	813	228	984	could	software	\N	\N	\N	\N	\N
2004	particular	serious	99	8	447	eye	software	\N	\N	\N	\N	\N
2006	fine	increase	971	757	858	instead	software	\N	\N	\N	\N	\N
2007	enough	measure	826	635	587	state	software	\N	\N	\N	\N	\N
2008	picture	similar	197	823	821	dog	software	\N	\N	\N	\N	\N
2009	theory	interesting	325	118	971	clearly	software	\N	\N	\N	\N	\N
2010	end	ready	576	122	496	keep	software	\N	\N	\N	\N	\N
2011	across	whatever	808	569	394	I	software	\N	\N	\N	\N	\N
2013	job	hard	476	917	274	speak	software	\N	\N	\N	\N	\N
2014	save	chance	593	336	741	writer	software	\N	\N	\N	\N	\N
2015	line	face	129	842	319	treat	software	\N	\N	\N	\N	\N
2018	try	already	858	439	441	right	software	\N	\N	\N	\N	\N
2019	fight	impact	434	365	574	institution	software	\N	\N	\N	\N	\N
2020	investment	cover	718	590	505	blood	software	\N	\N	\N	\N	\N
2021	garden	during	735	665	722	finally	software	\N	\N	\N	\N	\N
2022	PM	to	950	301	770	whose	software	\N	\N	\N	\N	\N
2027	clear	east	214	297	905	four	software	\N	\N	\N	\N	\N
2028	treat	him	149	88	937	seem	software	\N	\N	\N	\N	\N
2030	take	boy	175	418	173	price	software	\N	\N	\N	\N	\N
2033	raise	care	862	571	238	part	software	\N	\N	\N	\N	\N
2035	out	level	793	772	768	age	software	\N	\N	\N	\N	\N
2037	opportunity	window	115	232	640	local	software	\N	\N	\N	\N	\N
2039	enough	lead	179	703	811	benefit	software	\N	\N	\N	\N	\N
2040	these	create	822	551	451	court	software	\N	\N	\N	\N	\N
2041	region	relationship	954	645	151	treatment	software	\N	\N	\N	\N	\N
2042	baby	property	411	876	231	heavy	software	\N	\N	\N	\N	\N
2043	ability	century	855	735	927	two	software	\N	\N	\N	\N	\N
2045	third	culture	25	301	649	show	software	\N	\N	\N	\N	\N
2047	order	old	365	118	685	claim	software	\N	\N	\N	\N	\N
2048	cup	player	282	980	728	past	software	\N	\N	\N	\N	\N
2049	stay	rather	57	566	280	well	software	\N	\N	\N	\N	\N
2050	admit	technology	978	358	252	rate	software	\N	\N	\N	\N	\N
2051	yard	reach	1000	804	502	win	software	\N	\N	\N	\N	\N
2052	this	since	779	773	70	example	software	\N	\N	\N	\N	\N
2053	concern	particular	419	390	482	option	software	\N	\N	\N	\N	\N
2055	sell	away	445	227	468	article	software	\N	\N	\N	\N	\N
2057	sure	include	194	206	909	morning	software	\N	\N	\N	\N	\N
2058	not	natural	39	642	147	exist	software	\N	\N	\N	\N	\N
2061	environment	wait	328	318	19	during	software	\N	\N	\N	\N	\N
2063	always	if	801	736	723	deal	software	\N	\N	\N	\N	\N
2066	partner	since	237	848	612	represent	software	\N	\N	\N	\N	\N
2069	so	realize	228	685	123	several	software	\N	\N	\N	\N	\N
2070	bar	south	871	97	198	director	software	\N	\N	\N	\N	\N
2071	price	sound	44	424	903	board	software	\N	\N	\N	\N	\N
2074	partner	ahead	876	63	969	partner	software	\N	\N	\N	\N	\N
2075	push	charge	729	780	103	benefit	software	\N	\N	\N	\N	\N
2076	task	budget	193	362	65	event	software	\N	\N	\N	\N	\N
2078	according	family	998	401	299	break	software	\N	\N	\N	\N	\N
2025	stop	pressure	753	15	784	he	software	\N	\N	[{"barcode": "to", "variant_id": "991", "price_override": "657", "is_active_variant": "83"}]	\N	\N
2044	hit	test	125	515	767	indicate	software	\N	\N	\N	[{"price": "278", "ends_at": "story", "price_id": "802", "starts_at": "police"}]	\N
2054	writer	baby	848	629	423	employee	software	\N	\N	\N	\N	95
2056	pay	around	754	520	405	writer	software	\N	\N	\N	\N	42
2012	six	even	574	917	57	pass	software	\N	\N	\N	\N	16
2079	action	memory	609	300	317	hold	software	\N	\N	\N	\N	\N
2085	toward	finally	93	880	445	thought	software	\N	\N	\N	\N	\N
2086	reduce	choice	847	539	366	particular	software	\N	\N	\N	\N	\N
2087	arm	seek	1000	313	532	turn	software	\N	\N	\N	\N	\N
2089	believe	life	171	153	550	relationship	software	\N	\N	\N	\N	\N
2090	mouth	line	926	677	626	book	software	\N	\N	\N	\N	\N
2091	painting	success	674	228	716	less	software	\N	\N	\N	\N	\N
2092	edge	can	446	433	945	play	software	\N	\N	\N	\N	\N
2093	north	window	516	644	892	whose	software	\N	\N	\N	\N	\N
2094	light	project	952	317	454	unit	software	\N	\N	\N	\N	\N
2096	another	past	1	592	965	sing	software	\N	\N	\N	\N	\N
2097	charge	stage	306	632	514	hold	software	\N	\N	\N	\N	\N
2099	book	always	372	459	376	under	software	\N	\N	\N	\N	\N
2100	first	use	154	285	837	order	software	\N	\N	\N	\N	\N
2081	within	face	226	123	754	plan	software	\N	[{"url": "try", "alt_text": "author", "image_id": "518", "sort_order": "234"}]	\N	\N	\N
55	tax	hundred	517	512	18	\N	product	\N	[{"url": "party", "alt_text": "color", "image_id": "473", "sort_order": "593"}]	\N	\N	\N
298	southern	animal	69	648	585	increase	digitalproduct	\N	[{"url": "avoid", "alt_text": "wrong", "image_id": "798", "sort_order": "609"}]	\N	\N	\N
210	collection	trip	596	936	956	loss	digitalproduct	\N	[{"url": "sure", "alt_text": "morning", "image_id": "793", "sort_order": "271"}]	\N	\N	\N
2064	old	support	722	764	13	author	software	\N	[{"url": "claim", "alt_text": "party", "image_id": "949", "sort_order": "541"}]	\N	\N	\N
1945	east	effect	862	594	137	score	media	at	[{"url": "open", "alt_text": "treatment", "image_id": "768", "sort_order": "815"}]	\N	\N	\N
1992	thus	evening	6	913	145	fish	media	operation	[{"url": "particular", "alt_text": "just", "image_id": "175", "sort_order": "973"}]	\N	\N	\N
2073	trip	hope	478	649	851	tonight	software	\N	[{"url": "hot", "alt_text": "yes", "image_id": "566", "sort_order": "363"}]	\N	\N	\N
2038	until	speech	437	605	5	often	software	\N	[{"url": "part", "alt_text": "industry", "image_id": "67", "sort_order": "334"}]	\N	\N	\N
293	fast	eye	152	257	704	head	digitalproduct	\N	[{"url": "prepare", "alt_text": "bring", "image_id": "688", "sort_order": "422"}]	\N	\N	\N
299	tough	early	876	75	814	establish	digitalproduct	\N	[{"url": "policy", "alt_text": "event", "image_id": "377", "sort_order": "550"}]	\N	\N	\N
75	can	listen	374	913	303	\N	product	\N	[{"url": "western", "alt_text": "smile", "image_id": "52", "sort_order": "392"}]	\N	\N	\N
236	third	every	579	389	261	front	digitalproduct	\N	[{"url": "south", "alt_text": "recently", "image_id": "476", "sort_order": "99"}]	\N	\N	\N
2000	base	meeting	768	173	811	a	media	stay	[{"url": "after", "alt_text": "not", "image_id": "118", "sort_order": "995"}]	\N	\N	\N
2098	do	modern	659	75	116	nor	software	\N	\N	[{"barcode": "traditional", "variant_id": "427", "price_override": "242", "is_active_variant": "850"}]	\N	\N
32	ago	no	466	720	330	\N	product	\N	\N	[{"barcode": "already", "variant_id": "170", "price_override": "968", "is_active_variant": "843"}]	\N	\N
97	reach	statement	964	233	400	\N	product	\N	\N	[{"barcode": "travel", "variant_id": "559", "price_override": "176", "is_active_variant": "921"}]	\N	\N
295	example	mean	190	785	421	heavy	digitalproduct	\N	[{"url": "history", "alt_text": "particular", "image_id": "941", "sort_order": "955"}]	[{"barcode": "guy", "variant_id": "178", "price_override": "522", "is_active_variant": "122"}]	\N	\N
3	benefit	detail	604	874	36	\N	product	\N	\N	[{"barcode": "force", "variant_id": "805", "price_override": "475", "is_active_variant": "616"}]	\N	\N
1983	appear	level	448	63	693	somebody	media	street	\N	[{"barcode": "garden", "variant_id": "218", "price_override": "866", "is_active_variant": "636"}]	\N	\N
1960	direction	night	264	966	317	create	media	leg	\N	\N	[{"price": "449", "ends_at": "eye", "price_id": "191", "starts_at": "base"}]	\N
294	ability	will	577	137	929	lot	digitalproduct	\N	\N	\N	[{"price": "208", "ends_at": "send", "price_id": "261", "starts_at": "hope"}]	\N
1939	page	in	395	270	629	pay	media	build	\N	\N	[{"price": "664", "ends_at": "player", "price_id": "235", "starts_at": "focus"}]	\N
228	most	maybe	339	509	608	evidence	digitalproduct	\N	\N	\N	[{"price": "174", "ends_at": "offer", "price_id": "288", "starts_at": "sit"}]	\N
276	heart	edge	589	67	45	remember	digitalproduct	\N	\N	\N	[{"price": "865", "ends_at": "American", "price_id": "569", "starts_at": "space"}]	\N
273	six	major	919	852	299	cost	digitalproduct	\N	\N	\N	[{"price": "207", "ends_at": "officer", "price_id": "449", "starts_at": "staff"}]	\N
283	learn	city	492	466	935	tree	digitalproduct	\N	\N	\N	\N	51
2080	practice	general	597	903	372	daughter	software	\N	\N	\N	\N	58
78	interest	feeling	13	629	687	\N	product	\N	\N	\N	\N	56
2084	develop	fact	924	54	537	could	software	\N	\N	\N	\N	97
232	recent	pay	941	201	410	economic	digitalproduct	\N	\N	\N	\N	86
2095	party	protect	58	466	574	daughter	software	\N	\N	\N	\N	42
24	compare	health	882	94	818	\N	product	\N	\N	\N	\N	5
47	prove	sport	762	163	427	\N	product	\N	\N	\N	\N	35
2068	mouth	reality	242	559	728	fine	software	\N	\N	\N	\N	96
7	minute	effect	89	450	680	\N	product	\N	\N	\N	\N	18
1936	mention	position	588	686	964	view	media	table	\N	[{"barcode": "husband", "variant_id": "240", "price_override": "863", "is_active_variant": "738"}]	\N	1
39	true	entire	457	722	519	\N	product	\N	\N	\N	\N	88
51	police	between	388	206	356	\N	product	\N	\N	\N	\N	7
61	firm	customer	955	561	353	\N	product	\N	\N	\N	\N	82
1906	assume	television	614	843	932	price	media	them	[{"url": "series", "alt_text": "happy", "image_id": "330", "sort_order": "867"}]	\N	\N	11
2016	course	help	49	130	296	even	software	\N	\N	\N	\N	61
2083	dinner	can	361	612	540	mention	software	\N	\N	\N	\N	41
2029	hope	think	544	93	676	forget	software	\N	\N	\N	\N	17
214	past	film	318	770	411	move	digitalproduct	\N	\N	\N	\N	50
2046	wall	think	294	57	95	reflect	software	\N	\N	\N	\N	47
2017	significant	mission	807	608	126	boy	software	\N	\N	\N	\N	47
2059	its	enjoy	360	361	870	drive	software	\N	\N	\N	\N	90
287	measure	economy	138	50	537	test	digitalproduct	\N	\N	\N	\N	45
33	industry	nothing	486	117	25	\N	product	\N	\N	\N	\N	23
36	perform	stuff	989	621	443	\N	product	\N	\N	\N	\N	84
2065	do	floor	956	436	716	home	software	\N	\N	\N	\N	18
2026	agent	believe	460	987	684	few	software	\N	\N	\N	\N	41
1980	about	can	313	363	32	card	media	continue	\N	\N	\N	80
93	throughout	situation	555	213	315	\N	product	\N	\N	\N	\N	87
251	can	threat	942	679	72	tax	digitalproduct	\N	\N	\N	\N	62
1914	start	recently	651	264	620	police	media	summer	\N	\N	\N	14
255	hundred	arrive	876	439	873	discuss	digitalproduct	\N	\N	\N	\N	52
52	hold	me	211	588	691	\N	product	\N	\N	\N	\N	82
68	art	always	139	594	565	\N	product	\N	\N	\N	\N	41
41	statement	among	229	537	665	\N	product	\N	\N	\N	\N	98
1998	without	human	607	931	314	likely	media	industry	\N	\N	\N	66
23	score	show	651	182	564	\N	product	\N	\N	[{"barcode": "cup", "variant_id": "479", "price_override": "647", "is_active_variant": "864"}]	\N	98
1934	weight	effect	105	87	411	yet	media	trial	\N	\N	\N	86
1967	evidence	remain	136	681	911	enough	media	can	\N	\N	\N	49
70	commercial	condition	390	887	808	\N	product	\N	\N	\N	\N	70
5	sound	man	425	681	178	\N	product	\N	\N	\N	\N	44
2067	forward	officer	834	634	395	middle	software	\N	[{"url": "college", "alt_text": "even", "image_id": "652", "sort_order": "517"}]	\N	\N	1
2031	employee	item	779	432	829	help	software	\N	\N	\N	\N	62
250	approach	ahead	552	205	729	leave	digitalproduct	\N	\N	\N	\N	86
219	because	represent	829	612	24	year	digitalproduct	\N	\N	\N	\N	37
213	adult	American	916	733	452	miss	digitalproduct	\N	\N	\N	\N	18
234	simple	lay	813	936	32	student	digitalproduct	\N	\N	\N	\N	98
267	reality	good	97	436	862	line	digitalproduct	\N	\N	\N	[{"price": "978", "ends_at": "state", "price_id": "620", "starts_at": "sure"}]	73
2062	recent	system	446	466	272	necessary	software	\N	\N	\N	\N	44
1925	building	reality	960	439	750	own	media	blue	\N	\N	\N	34
2002	media	especially	584	1	447	hold	software	\N	\N	\N	\N	4
2036	majority	must	175	648	300	understand	software	\N	\N	\N	\N	65
26	over	rise	86	889	18	\N	product	\N	\N	\N	\N	24
2005	write	together	563	295	529	here	software	\N	\N	\N	\N	57
289	agency	century	720	588	765	pay	digitalproduct	\N	\N	\N	\N	44
220	consider	production	700	36	507	conference	digitalproduct	\N	\N	\N	\N	1
1997	or	toward	715	44	662	natural	media	edge	\N	[{"barcode": "if", "variant_id": "924", "price_override": "652", "is_active_variant": "790"}]	\N	51
85	light	half	564	260	729	\N	product	\N	\N	\N	\N	56
2077	light	attack	586	612	223	along	software	\N	\N	\N	\N	18
2072	discuss	them	148	740	691	just	software	\N	\N	\N	\N	81
2088	apply	put	396	530	559	group	software	\N	\N	\N	\N	52
76	sometimes	likely	469	919	284	\N	product	\N	\N	\N	\N	89
263	bank	finally	88	310	36	improve	digitalproduct	\N	\N	\N	\N	98
29	begin	sea	353	298	72	\N	product	\N	\N	\N	\N	10
280	take	care	539	125	153	seat	digitalproduct	\N	\N	\N	\N	54
230	president	opportunity	16	817	6	while	digitalproduct	\N	\N	\N	\N	65
2082	agency	site	146	369	953	tell	software	\N	\N	\N	\N	62
2032	yeah	what	348	793	676	south	software	\N	\N	\N	\N	79
2060	can	assume	260	875	990	especially	software	\N	\N	\N	\N	30
285	there	family	836	911	948	identify	digitalproduct	\N	\N	\N	\N	35
1940	over	attention	88	167	404	artist	media	majority	\N	\N	\N	41
226	seat	human	474	561	594	clear	digitalproduct	\N	\N	\N	\N	49
2024	television	statement	136	64	972	television	software	\N	[{"url": "tend", "alt_text": "memory", "image_id": "289", "sort_order": "482"}, {"url": "ten", "alt_text": "perhaps", "image_id": "371", "sort_order": "257"}]	\N	[{"price": "998", "ends_at": "throughout", "price_id": "200", "starts_at": "speech"}]	46
1965	piece	hospital	843	816	442	attack	media	interview	\N	\N	\N	94
1941	event	institution	803	53	218	type	media	eight	\N	\N	\N	20
42	possible	treatment	405	692	590	\N	product	\N	\N	[{"barcode": "couple", "variant_id": "910", "price_override": "262", "is_active_variant": "476"}]	\N	29
256	simply	clearly	55	653	94	expect	digitalproduct	\N	\N	\N	\N	81
2023	respond	enter	479	248	214	special	software	\N	\N	\N	\N	14
1910	inside	trial	728	647	817	provide	media	property	\N	\N	\N	97
268	Congress	similar	515	571	211	authority	digitalproduct	\N	\N	\N	\N	40
2034	usually	matter	337	763	782	fight	software	\N	\N	\N	\N	88
\.


--
-- Data for Name: relation_10; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_10 (phone_id, carrier_lock, single_bundle_phone_bundled_phone_phone_id) FROM stdin;
1001	always	\N
1002	building	\N
1003	fly	\N
1004	window	\N
1005	trade	\N
1006	feel	\N
1007	newspaper	\N
1008	side	\N
1010	degree	\N
1011	herself	\N
1013	tough	\N
1014	strong	\N
1015	keep	\N
1016	leader	\N
1018	report	\N
1019	since	\N
1021	issue	\N
1022	tough	\N
1023	meeting	\N
1024	trade	\N
1025	white	\N
1026	high	\N
1027	media	\N
1028	simply	\N
1029	situation	\N
1030	actually	\N
1032	option	\N
1033	task	\N
1034	degree	\N
1035	different	\N
1036	sound	\N
1037	peace	\N
1039	music	\N
1040	do	\N
1041	what	\N
1042	side	\N
1043	prove	\N
1045	short	\N
1046	third	\N
1047	couple	\N
1048	grow	\N
1049	choose	\N
1050	seek	\N
1051	option	\N
1052	traditional	\N
1053	four	\N
1054	draw	\N
1055	close	\N
1056	move	\N
1057	film	\N
1058	friend	\N
1059	mind	\N
1060	give	\N
1061	news	\N
1062	employee	\N
1063	member	\N
1064	get	\N
1065	administration	\N
1066	majority	\N
1067	edge	\N
1068	study	\N
1069	exactly	\N
1070	behavior	\N
1071	there	\N
1072	similar	\N
1073	rock	\N
1074	eat	\N
1075	son	\N
1076	work	\N
1077	business	\N
1078	without	\N
1080	spend	\N
1081	team	\N
1082	impact	\N
1084	minute	\N
1086	land	\N
1087	around	\N
1088	clearly	\N
1089	drop	\N
1090	direction	\N
1091	he	\N
1093	body	\N
1094	worry	\N
1095	building	\N
1096	page	\N
1098	unit	\N
1099	house	\N
1100	serve	\N
1009	sister	1024
1012	market	1004
1017	scientist	1086
1020	receive	1071
1031	including	1005
1038	want	1097
1044	family	1010
1079	often	1092
1083	build	1040
1085	matter	1055
1092	stock	1022
1097	human	1093
\.


--
-- Data for Name: relation_11; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_11 (accessories_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, accessory_type, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1101	be	event	975	695	144	head	285	deal	\N	\N	\N	\N
1102	economic	through	723	522	631	across	167	more	\N	\N	\N	\N
1103	cause	that	864	594	318	third	677	effort	\N	\N	\N	\N
1104	understand	range	114	273	654	person	961	little	\N	\N	\N	\N
1108	ago	parent	299	763	385	speech	580	property	\N	\N	\N	\N
1109	senior	public	448	133	702	forget	439	major	\N	\N	\N	\N
1111	candidate	peace	534	190	64	feeling	195	morning	\N	\N	\N	\N
1112	top	red	20	356	244	term	727	lot	\N	\N	\N	\N
1116	sometimes	save	160	881	562	financial	818	edge	\N	\N	\N	\N
1118	task	set	370	341	749	everyone	97	blood	\N	\N	\N	\N
1119	quite	alone	262	900	996	degree	365	project	\N	\N	\N	\N
1122	nice	base	952	308	692	design	315	remain	\N	\N	\N	\N
1123	size	present	813	395	495	never	689	each	\N	\N	\N	\N
1124	research	design	123	600	977	at	732	research	\N	\N	\N	\N
1125	section	attack	109	435	76	participant	127	herself	\N	\N	\N	\N
1126	window	show	646	10	252	available	936	surface	\N	\N	\N	\N
1127	society	situation	73	968	218	help	220	alone	\N	\N	\N	\N
1129	guy	smile	714	572	587	short	713	act	\N	\N	\N	\N
1130	floor	recognize	474	386	86	western	76	nor	\N	\N	\N	\N
1132	same	if	738	303	835	call	190	quickly	\N	\N	\N	\N
1133	film	bank	658	622	946	ten	385	especially	\N	\N	\N	\N
1134	race	whatever	865	873	746	him	227	discover	\N	\N	\N	\N
1135	send	discussion	253	944	506	plan	300	create	\N	\N	\N	\N
1136	yard	bill	275	486	506	big	773	national	\N	\N	\N	\N
1137	sound	current	113	608	740	put	220	vote	\N	\N	\N	\N
1138	bar	institution	706	458	398	national	432	always	\N	\N	\N	\N
1140	prepare	pick	719	700	396	discover	383	week	\N	\N	\N	\N
1141	author	every	539	146	820	ok	917	former	\N	\N	\N	\N
1142	show	often	525	730	164	investment	597	site	\N	\N	\N	\N
1143	effort	kitchen	795	218	778	admit	671	available	\N	\N	\N	\N
1145	choose	smile	22	725	463	push	685	air	\N	\N	\N	\N
1146	table	boy	691	593	354	agent	729	and	\N	\N	\N	\N
1148	wind	senior	685	473	592	candidate	836	later	\N	\N	\N	\N
1150	able	hair	284	889	455	us	114	heart	\N	\N	\N	\N
1152	social	third	841	912	859	note	522	chair	\N	\N	\N	\N
1153	education	word	926	934	328	apply	159	field	\N	\N	\N	\N
1156	say	stock	231	140	74	color	170	magazine	\N	\N	\N	\N
1157	until	reduce	480	617	745	out	815	financial	\N	\N	\N	\N
1158	wife	audience	816	945	226	enter	619	professor	\N	\N	\N	\N
1159	knowledge	myself	401	275	9	theory	154	majority	\N	\N	\N	\N
1160	wear	could	124	760	442	whose	757	their	\N	\N	\N	\N
1163	make	help	918	792	170	level	835	use	\N	\N	\N	\N
1164	popular	fly	444	114	949	card	368	until	\N	\N	\N	\N
1166	prepare	if	822	463	33	country	292	thank	\N	\N	\N	\N
1168	then	enter	768	281	173	field	524	police	\N	\N	\N	\N
1170	with	senior	713	37	132	century	393	just	\N	\N	\N	\N
1172	heart	authority	300	28	773	bit	19	house	\N	\N	\N	\N
1173	live	consumer	557	654	628	always	431	reality	\N	\N	\N	\N
1176	card	total	128	895	589	catch	811	high	\N	\N	\N	\N
1178	second	how	600	34	848	change	484	term	\N	\N	\N	\N
1179	firm	sign	889	556	327	radio	9	finish	\N	\N	\N	\N
1180	design	everything	131	484	483	performance	443	event	\N	\N	\N	\N
1181	address	medical	647	528	104	because	464	total	\N	\N	\N	\N
1183	follow	be	921	911	434	feel	933	discover	\N	\N	\N	\N
1186	factor	indeed	677	104	892	pull	617	someone	\N	\N	\N	\N
1187	democratic	imagine	326	163	893	ready	339	base	\N	\N	\N	\N
1190	western	worker	473	834	513	several	396	play	\N	\N	\N	\N
1191	as	administration	373	536	789	worker	829	modern	\N	\N	\N	\N
1165	state	key	663	326	315	particularly	314	along	\N	[{"barcode": "movement", "variant_id": "268", "price_override": "697", "is_active_variant": "561"}]	\N	\N
1185	animal	buy	468	371	114	leader	820	character	\N	[{"barcode": "successful", "variant_id": "601", "price_override": "210", "is_active_variant": "212"}]	\N	\N
1161	cover	let	687	309	706	message	568	help	\N	\N	[{"price": "460", "ends_at": "guy", "price_id": "172", "starts_at": "mother"}]	\N
1188	follow	student	790	84	214	benefit	571	relate	\N	\N	[{"price": "904", "ends_at": "military", "price_id": "720", "starts_at": "everything"}]	\N
1147	common	PM	373	877	224	power	209	last	\N	\N	\N	50
1110	stop	bad	499	65	605	look	545	region	\N	\N	\N	97
1149	north	threat	278	704	639	police	292	day	\N	\N	\N	50
1117	American	today	26	146	558	land	236	per	\N	\N	\N	11
1113	project	wrong	540	540	666	fish	572	use	\N	\N	\N	85
1131	difficult	decision	992	309	740	assume	210	start	\N	\N	\N	78
1151	tell	close	965	334	459	production	532	wear	\N	\N	\N	68
1193	admit	test	180	316	182	first	213	physical	\N	\N	\N	\N
1194	Democrat	recognize	880	794	138	later	942	matter	\N	\N	\N	\N
1195	reach	question	469	810	142	already	928	particularly	\N	\N	\N	\N
1196	guess	any	497	519	562	direction	404	simple	\N	\N	\N	\N
1197	need	third	626	655	766	one	558	analysis	\N	\N	\N	\N
1198	economic	administration	980	662	517	compare	482	course	\N	\N	\N	\N
1199	detail	Mrs	287	489	129	beyond	388	wall	\N	\N	\N	\N
1200	laugh	city	37	977	956	result	625	picture	\N	\N	\N	\N
1155	key	campaign	864	31	691	why	408	analysis	[{"url": "government", "alt_text": "company", "image_id": "499", "sort_order": "925"}]	\N	\N	\N
1115	worry	report	225	967	523	free	672	quite	[{"url": "reflect", "alt_text": "describe", "image_id": "673", "sort_order": "580"}]	\N	\N	\N
1192	pretty	cell	179	858	696	direction	1	final	[{"url": "cause", "alt_text": "industry", "image_id": "538", "sort_order": "791"}]	\N	\N	\N
1174	none	what	553	847	476	put	827	thought	[{"url": "into", "alt_text": "choice", "image_id": "18", "sort_order": "601"}]	\N	\N	\N
1107	around	wonder	56	145	505	small	516	cold	[{"url": "each", "alt_text": "tough", "image_id": "837", "sort_order": "554"}]	\N	\N	\N
1121	hour	shoulder	690	470	39	write	319	share	[{"url": "easy", "alt_text": "exist", "image_id": "840", "sort_order": "48"}]	\N	\N	\N
1171	sea	ready	331	348	853	industry	172	lawyer	[{"url": "situation", "alt_text": "lay", "image_id": "178", "sort_order": "748"}]	[{"barcode": "piece", "variant_id": "994", "price_override": "471", "is_active_variant": "421"}]	\N	\N
1189	citizen	agreement	598	976	68	wonder	579	believe	\N	[{"barcode": "travel", "variant_id": "680", "price_override": "906", "is_active_variant": "171"}]	\N	\N
1114	because	mother	425	170	804	interest	1	feel	\N	\N	[{"price": "469", "ends_at": "buy", "price_id": "956", "starts_at": "eye"}]	\N
1128	traditional	responsibility	931	304	293	stay	477	forward	\N	\N	[{"price": "180", "ends_at": "blood", "price_id": "828", "starts_at": "trade"}]	\N
1106	Congress	these	931	254	954	left	442	war	\N	\N	[{"price": "886", "ends_at": "claim", "price_id": "929", "starts_at": "education"}]	16
1105	who	need	185	724	656	cell	584	operation	\N	\N	[{"price": "144", "ends_at": "game", "price_id": "581", "starts_at": "threat"}]	31
1184	keep	letter	941	360	832	grow	85	response	\N	\N	\N	28
1139	we	wall	64	964	747	contain	780	politics	\N	\N	\N	46
1182	shake	military	565	529	303	nearly	54	explain	\N	\N	\N	76
1177	rock	add	393	92	512	unit	363	city	\N	\N	[{"price": "45", "ends_at": "woman", "price_id": "431", "starts_at": "street"}]	25
1120	five	reason	609	891	44	Republican	875	reduce	\N	\N	\N	85
1144	sea	according	947	318	309	above	138	like	\N	\N	\N	51
1167	step	story	573	643	218	forward	984	later	\N	\N	\N	95
1162	together	writer	63	679	764	require	100	represent	\N	\N	\N	26
1175	name	wear	633	522	880	sister	109	experience	\N	\N	\N	4
1154	data	image	161	261	726	finally	422	occur	\N	\N	\N	25
1169	budget	family	347	569	837	purpose	918	create	\N	\N	\N	22
\.


--
-- Data for Name: relation_12; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_12 (appliance_id, sku, product_name, base_price, is_active, quantity, dimensions, energy_rating, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1201	red	fund	802	144	451	own	realize	\N	\N	\N	\N
1202	game	field	159	924	400	idea	language	\N	\N	\N	\N
1204	animal	real	726	232	683	identify	mean	\N	\N	\N	\N
1205	check	interview	293	607	794	place	change	\N	\N	\N	\N
1207	mother	pay	677	844	633	that	reveal	\N	\N	\N	\N
1208	foreign	group	925	687	861	main	page	\N	\N	\N	\N
1209	blue	scene	76	1	877	organization	difference	\N	\N	\N	\N
1210	president	front	683	77	837	car	all	\N	\N	\N	\N
1211	amount	from	899	882	135	decide	history	\N	\N	\N	\N
1213	ok	real	346	699	286	sound	training	\N	\N	\N	\N
1215	election	glass	420	83	363	step	data	\N	\N	\N	\N
1216	probably	figure	433	462	852	safe	result	\N	\N	\N	\N
1218	father	affect	927	677	58	financial	top	\N	\N	\N	\N
1219	administration	security	418	786	929	worry	lead	\N	\N	\N	\N
1220	condition	simply	207	70	889	already	tell	\N	\N	\N	\N
1222	work	cover	335	717	824	onto	arrive	\N	\N	\N	\N
1223	result	group	675	318	808	hear	pay	\N	\N	\N	\N
1224	agency	especially	464	54	45	argue	finally	\N	\N	\N	\N
1225	opportunity	remember	164	783	25	seven	TV	\N	\N	\N	\N
1226	former	another	25	865	152	song	before	\N	\N	\N	\N
1227	husband	single	110	240	263	avoid	everybody	\N	\N	\N	\N
1228	rule	crime	512	197	945	follow	certain	\N	\N	\N	\N
1230	since	heavy	659	864	242	design	college	\N	\N	\N	\N
1232	explain	reveal	607	632	472	road	car	\N	\N	\N	\N
1233	man	research	4	960	836	heart	pretty	\N	\N	\N	\N
1234	eye	society	582	375	668	must	campaign	\N	\N	\N	\N
1237	edge	collection	559	139	945	day	feeling	\N	\N	\N	\N
1238	admit	type	143	305	847	person	industry	\N	\N	\N	\N
1239	again	organization	307	536	103	past	sense	\N	\N	\N	\N
1240	beyond	rate	451	410	656	character	raise	\N	\N	\N	\N
1242	speak	eye	489	989	658	enough	ahead	\N	\N	\N	\N
1243	visit	early	898	301	711	would	whose	\N	\N	\N	\N
1244	important	ability	481	378	185	glass	series	\N	\N	\N	\N
1245	administration	feeling	489	893	562	benefit	debate	\N	\N	\N	\N
1246	arm	decade	532	756	806	easy	western	\N	\N	\N	\N
1247	say	form	142	444	716	analysis	natural	\N	\N	\N	\N
1248	office	catch	735	374	504	four	run	\N	\N	\N	\N
1251	husband	easy	218	443	340	deep	again	\N	\N	\N	\N
1252	do	prepare	461	453	838	sound	life	\N	\N	\N	\N
1254	only	rock	381	41	209	condition	something	\N	\N	\N	\N
1256	task	fall	807	779	905	course	safe	\N	\N	\N	\N
1257	many	floor	859	205	336	together	allow	\N	\N	\N	\N
1258	weight	star	855	6	891	professional	knowledge	\N	\N	\N	\N
1259	score	lawyer	204	964	736	before	may	\N	\N	\N	\N
1260	month	per	200	311	835	indicate	happy	\N	\N	\N	\N
1261	task	Democrat	676	798	384	hundred	simple	\N	\N	\N	\N
1262	rise	responsibility	29	695	913	field	build	\N	\N	\N	\N
1263	describe	outside	611	285	313	in	current	\N	\N	\N	\N
1264	animal	public	818	682	718	pressure	question	\N	\N	\N	\N
1265	truth	tonight	903	16	357	sign	middle	\N	\N	\N	\N
1267	start	year	863	503	467	expert	social	\N	\N	\N	\N
1270	form	view	203	438	144	usually	allow	\N	\N	\N	\N
1271	will	service	411	602	361	stuff	good	\N	\N	\N	\N
1273	program	need	821	871	848	land	man	\N	\N	\N	\N
1274	natural	take	295	720	382	easy	edge	\N	\N	\N	\N
1275	child	me	995	947	384	technology	baby	\N	\N	\N	\N
1276	begin	kitchen	955	876	118	open	often	\N	\N	\N	\N
1278	hit	rather	686	864	780	without	exactly	\N	\N	\N	\N
1279	compare	sea	284	54	504	against	whose	\N	\N	\N	\N
1280	perform	weight	855	722	439	provide	candidate	\N	\N	\N	\N
1282	support	lawyer	175	524	43	approach	contain	\N	\N	\N	\N
1285	report	find	431	432	580	authority	himself	\N	\N	\N	\N
1286	food	senior	622	743	133	indicate	or	\N	\N	\N	\N
1287	big	table	265	246	720	necessary	ten	\N	\N	\N	\N
1290	those	other	313	523	142	use	player	\N	\N	\N	\N
1291	rise	employee	422	38	479	information	dream	\N	\N	\N	\N
1295	building	first	832	888	421	girl	space	\N	\N	\N	\N
1297	article	bank	299	266	334	do	admit	\N	\N	\N	\N
1203	small	my	643	690	64	animal	cut	\N	[{"barcode": "visit", "variant_id": "535", "price_override": "863", "is_active_variant": "230"}]	\N	\N
1292	early	material	875	921	531	believe	win	\N	\N	[{"price": "164", "ends_at": "too", "price_id": "660", "starts_at": "generation"}]	\N
1206	final	prove	959	339	157	himself	name	\N	\N	[{"price": "620", "ends_at": "measure", "price_id": "288", "starts_at": "glass"}]	\N
1231	foreign	chance	787	696	180	according	they	\N	\N	\N	70
1293	seat	determine	397	109	706	whose	among	\N	\N	\N	74
1212	lead	specific	63	214	879	after	perhaps	\N	\N	\N	48
1298	fight	suddenly	144	557	57	religious	out	\N	\N	\N	\N
1301	opportunity	fly	82	999	537	lawyer	none	\N	\N	\N	\N
1303	decide	yeah	946	644	849	particular	wait	\N	\N	\N	\N
1305	something	force	289	511	998	author	old	\N	\N	\N	\N
1307	movement	off	991	211	624	win	catch	\N	\N	\N	\N
1308	foreign	small	528	152	788	myself	open	\N	\N	\N	\N
1310	drug	reveal	365	654	759	behind	idea	\N	\N	\N	\N
1311	involve	letter	258	741	370	population	cultural	\N	\N	\N	\N
1312	modern	attorney	318	417	409	guy	remain	\N	\N	\N	\N
1313	have	whose	378	334	907	play	military	\N	\N	\N	\N
1315	stop	next	653	921	711	other	hundred	\N	\N	\N	\N
1316	attorney	respond	984	592	483	base	win	\N	\N	\N	\N
1317	draw	may	544	825	506	food	again	\N	\N	\N	\N
1318	beat	fight	135	458	149	add	from	\N	\N	\N	\N
1319	benefit	full	866	155	898	recognize	themselves	\N	\N	\N	\N
1320	radio	career	799	72	700	around	scene	\N	\N	\N	\N
1321	do	trial	812	431	641	pass	letter	\N	\N	\N	\N
1322	east	sing	277	227	632	generation	something	\N	\N	\N	\N
1324	watch	rule	270	498	737	fish	dream	\N	\N	\N	\N
1325	authority	several	838	47	438	or	specific	\N	\N	\N	\N
1326	would	hot	543	154	330	detail	region	\N	\N	\N	\N
1328	moment	level	909	915	330	building	tonight	\N	\N	\N	\N
1330	while	than	944	539	159	response	officer	\N	\N	\N	\N
1331	standard	management	160	872	63	public	movie	\N	\N	\N	\N
1333	ground	necessary	297	38	447	within	land	\N	\N	\N	\N
1334	miss	necessary	28	972	590	language	central	\N	\N	\N	\N
1336	blue	voice	443	359	886	pass	day	\N	\N	\N	\N
1337	star	these	333	844	698	better	center	\N	\N	\N	\N
1338	peace	husband	692	381	35	prepare	beautiful	\N	\N	\N	\N
1339	according	one	743	602	112	like	couple	\N	\N	\N	\N
1341	difficult	prove	409	922	472	president	arm	\N	\N	\N	\N
1342	positive	cell	287	382	148	protect	war	\N	\N	\N	\N
1343	minute	machine	107	388	910	yourself	nearly	\N	\N	\N	\N
1344	mention	well	321	912	8	third	region	\N	\N	\N	\N
1345	our	figure	241	140	322	car	kitchen	\N	\N	\N	\N
1346	pay	lay	497	887	176	tell	student	\N	\N	\N	\N
1350	his	thing	482	374	438	account	deal	\N	\N	\N	\N
1351	cell	may	997	965	231	scientist	color	\N	\N	\N	\N
1353	loss	hospital	733	711	512	forget	result	\N	\N	\N	\N
1354	soldier	art	928	208	71	court	save	\N	\N	\N	\N
1355	century	at	906	499	480	career	there	\N	\N	\N	\N
1356	open	newspaper	557	83	505	attorney	school	\N	\N	\N	\N
1360	professional	road	928	835	392	end	indicate	\N	\N	\N	\N
1361	herself	over	942	751	571	design	catch	\N	\N	\N	\N
1363	stop	more	850	104	84	role	front	\N	\N	\N	\N
1364	up	remember	694	597	573	piece	under	\N	\N	\N	\N
1365	research	fine	700	405	77	learn	final	\N	\N	\N	\N
1367	page	everyone	762	798	447	not	argue	\N	\N	\N	\N
1368	environment	choose	638	558	623	article	really	\N	\N	\N	\N
1369	before	land	619	490	397	mean	occur	\N	\N	\N	\N
1370	by	wall	285	642	851	policy	history	\N	\N	\N	\N
1371	cup	development	675	45	97	full	subject	\N	\N	\N	\N
1372	science	general	675	37	5	happy	event	\N	\N	\N	\N
1375	recent	difference	894	696	405	company	lose	\N	\N	\N	\N
1376	would	test	140	246	990	knowledge	million	\N	\N	\N	\N
1380	mouth	according	916	875	204	great	community	\N	\N	\N	\N
1382	morning	painting	373	481	649	anything	hold	\N	\N	\N	\N
1383	piece	house	1	431	917	conference	sense	\N	\N	\N	\N
1384	color	reach	389	849	879	network	public	\N	\N	\N	\N
1385	everybody	wind	959	965	28	friend	city	\N	\N	\N	\N
1386	lot	environment	827	526	879	watch	need	\N	\N	\N	\N
1387	model	each	264	133	905	big	by	\N	\N	\N	\N
1388	statement	address	888	781	561	sister	join	\N	\N	\N	\N
1390	what	person	359	415	453	body	increase	\N	\N	\N	\N
1391	line	adult	940	693	519	section	than	\N	\N	\N	\N
1392	decade	future	386	550	29	sense	skin	\N	\N	\N	\N
1394	stay	receive	21	359	79	rate	happy	\N	\N	\N	\N
1314	toward	occur	819	136	718	particularly	sing	\N	\N	[{"price": "881", "ends_at": "now", "price_id": "757", "starts_at": "executive"}]	\N
1381	difference	day	973	218	502	art	simple	\N	\N	[{"price": "202", "ends_at": "Democrat", "price_id": "230", "starts_at": "forward"}]	\N
1340	entire	stage	265	982	988	simple	mind	\N	\N	[{"price": "80", "ends_at": "after", "price_id": "57", "starts_at": "lay"}]	39
1347	cup	improve	225	664	788	continue	fine	\N	\N	\N	33
1335	vote	drive	832	299	253	thing	happen	\N	\N	\N	52
1374	strategy	director	18	442	563	early	present	\N	\N	\N	58
1398	allow	computer	239	45	300	practice	total	\N	\N	\N	\N
1399	in	real	568	928	465	pressure	section	\N	\N	\N	\N
1400	live	hand	252	12	312	coach	simple	\N	\N	\N	\N
1236	stand	response	308	238	386	kitchen	miss	[{"url": "approach", "alt_text": "learn", "image_id": "993", "sort_order": "729"}]	\N	\N	\N
1377	value	easy	400	967	322	security	decide	[{"url": "true", "alt_text": "most", "image_id": "99", "sort_order": "583"}]	\N	\N	\N
1358	own	story	586	828	836	media	collection	[{"url": "result", "alt_text": "of", "image_id": "892", "sort_order": "291"}]	\N	\N	\N
1397	management	machine	286	775	485	central	city	[{"url": "too", "alt_text": "none", "image_id": "360", "sort_order": "241"}]	\N	\N	\N
1296	system	land	881	269	616	friend	according	[{"url": "easy", "alt_text": "full", "image_id": "252", "sort_order": "522"}]	\N	\N	\N
1283	rest	stuff	263	197	323	agent	Republican	[{"url": "feeling", "alt_text": "brother", "image_id": "206", "sort_order": "439"}]	\N	\N	\N
1357	hour	stage	560	859	661	difficult	call	\N	[{"barcode": "let", "variant_id": "176", "price_override": "432", "is_active_variant": "585"}]	\N	\N
1359	travel	technology	427	96	761	air	year	\N	[{"barcode": "order", "variant_id": "998", "price_override": "145", "is_active_variant": "961"}]	\N	\N
1348	nearly	consider	971	63	619	where	condition	\N	[{"barcode": "option", "variant_id": "917", "price_override": "429", "is_active_variant": "568"}]	\N	\N
1272	arm	candidate	39	981	874	if	experience	[{"url": "system", "alt_text": "cause", "image_id": "737", "sort_order": "938"}]	[{"barcode": "hand", "variant_id": "105", "price_override": "345", "is_active_variant": "349"}]	\N	\N
1302	case	bad	997	534	65	human	first	\N	[{"barcode": "think", "variant_id": "543", "price_override": "186", "is_active_variant": "473"}]	\N	\N
1255	opportunity	loss	134	847	954	natural	already	\N	[{"barcode": "until", "variant_id": "496", "price_override": "231", "is_active_variant": "401"}]	\N	\N
1352	too	central	57	333	107	hospital	fast	\N	[{"barcode": "mother", "variant_id": "238", "price_override": "52", "is_active_variant": "573"}]	\N	\N
1288	prepare	happy	585	896	189	state	material	\N	\N	[{"price": "59", "ends_at": "authority", "price_id": "756", "starts_at": "ahead"}]	\N
1304	save	lay	472	416	627	deep	view	\N	\N	[{"price": "585", "ends_at": "figure", "price_id": "491", "starts_at": "red"}]	\N
1378	identify	only	627	143	583	compare	economic	\N	\N	[{"price": "308", "ends_at": "first", "price_id": "49", "starts_at": "consumer"}]	\N
1395	whatever	future	487	126	237	little	wish	\N	\N	\N	58
1217	contain	popular	515	945	105	mention	green	\N	[{"barcode": "among", "variant_id": "274", "price_override": "640", "is_active_variant": "390"}]	[{"price": "319", "ends_at": "camera", "price_id": "229", "starts_at": "body"}]	62
1281	admit	coach	596	906	576	everybody	method	\N	\N	\N	61
1268	card	quickly	995	232	614	course	lead	\N	\N	\N	96
1249	usually	our	50	252	851	least	whether	\N	\N	\N	87
1221	lawyer	find	467	910	527	clear	lay	\N	\N	\N	3
1349	rest	southern	283	688	694	whole	clearly	\N	\N	\N	53
1393	three	people	500	870	331	goal	pick	\N	[{"barcode": "red", "variant_id": "256", "price_override": "736", "is_active_variant": "760"}]	\N	45
1269	attack	bank	64	85	248	clearly	indeed	\N	\N	\N	53
1362	despite	charge	151	4	574	black	song	\N	\N	\N	5
1294	own	notice	424	475	111	mean	win	\N	\N	\N	69
1289	Democrat	gun	841	436	18	meet	never	\N	\N	\N	2
1299	character	bank	324	760	100	them	pretty	\N	\N	\N	15
1327	majority	military	754	391	125	return	interest	\N	\N	\N	21
1366	director	television	843	869	871	arm	interview	\N	\N	\N	27
1266	respond	argue	712	580	769	field	easy	[{"url": "from", "alt_text": "bag", "image_id": "304", "sort_order": "155"}]	\N	\N	89
1309	quite	education	720	136	435	building	prepare	\N	\N	\N	7
1241	as	kid	32	988	832	drive	six	\N	\N	\N	42
1300	author	identify	310	762	423	travel	record	\N	\N	\N	83
1277	only	describe	309	981	280	reduce	fast	\N	\N	\N	19
1250	travel	business	992	372	69	wish	dark	\N	\N	\N	41
1323	strategy	inside	672	492	367	institution	owner	\N	\N	\N	56
1214	task	factor	206	846	703	travel	condition	\N	[{"barcode": "school", "variant_id": "414", "price_override": "175", "is_active_variant": "732"}]	\N	9
1229	among	long	135	293	921	road	argue	\N	\N	[{"price": "509", "ends_at": "agent", "price_id": "387", "starts_at": "financial"}]	59
1329	agent	themselves	644	534	819	south	shake	\N	\N	\N	31
1253	site	available	902	673	610	business	vote	\N	\N	\N	45
1396	end	suffer	914	759	78	such	some	\N	[{"barcode": "wait", "variant_id": "459", "price_override": "736", "is_active_variant": "443"}, {"barcode": "capital", "variant_id": "614", "price_override": "630", "is_active_variant": "86"}]	\N	22
1379	attention	writer	145	778	150	meet	pretty	\N	\N	\N	67
1332	back	save	409	343	660	music	identify	\N	\N	\N	26
1235	end	particularly	277	836	98	ready	between	\N	\N	\N	44
1373	reason	design	43	166	432	politics	region	\N	\N	\N	53
1389	herself	system	919	125	898	people	family	\N	\N	\N	73
1284	line	land	759	115	628	reveal	available	\N	\N	\N	78
1306	how	these	139	19	648	source	second	\N	\N	\N	23
\.


--
-- Data for Name: relation_13; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_13 (kitchenappliance_id, warranty_years) FROM stdin;
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
-- Data for Name: relation_14; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_14 (apparel_id, sku, product_name, base_price, is_active, quantity, dimensions, size_system, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1401	by	close	204	202	186	room	base	\N	\N	\N	\N
1403	paper	young	402	643	817	part	Republican	\N	\N	\N	\N
1405	ability	husband	912	958	408	party	either	\N	\N	\N	\N
1406	so	we	920	833	977	at	support	\N	\N	\N	\N
1407	organization	against	619	366	237	there	discover	\N	\N	\N	\N
1408	base	book	810	853	554	network	teach	\N	\N	\N	\N
1410	sister	success	948	396	153	year	wrong	\N	\N	\N	\N
1414	even	star	952	1000	664	ok	task	\N	\N	\N	\N
1415	military	leave	879	471	292	necessary	better	\N	\N	\N	\N
1417	system	office	767	80	619	push	give	\N	\N	\N	\N
1418	as	this	874	208	969	benefit	standard	\N	\N	\N	\N
1419	edge	should	910	32	447	remember	other	\N	\N	\N	\N
1421	economy	toward	54	458	634	boy	authority	\N	\N	\N	\N
1422	international	listen	725	294	593	herself	theory	\N	\N	\N	\N
1425	bill	cell	236	527	325	particularly	good	\N	\N	\N	\N
1428	card	play	118	19	979	everybody	government	\N	\N	\N	\N
1431	painting	expect	36	31	268	between	change	\N	\N	\N	\N
1432	other	near	32	743	299	speech	north	\N	\N	\N	\N
1433	similar	goal	738	740	613	vote	economic	\N	\N	\N	\N
1435	box	better	180	360	736	food	take	\N	\N	\N	\N
1436	address	establish	805	379	148	with	information	\N	\N	\N	\N
1437	color	purpose	199	937	473	wrong	system	\N	\N	\N	\N
1438	the	dream	459	356	630	sort	size	\N	\N	\N	\N
1440	put	when	91	749	320	top	majority	\N	\N	\N	\N
1441	forget	issue	84	125	602	environment	month	\N	\N	\N	\N
1442	blue	base	946	256	570	director	east	\N	\N	\N	\N
1443	himself	memory	793	905	936	word	thought	\N	\N	\N	\N
1444	task	message	829	932	128	ask	until	\N	\N	\N	\N
1446	other	account	969	140	794	soldier	his	\N	\N	\N	\N
1447	onto	away	856	82	445	remain	together	\N	\N	\N	\N
1448	some	director	391	158	585	man	black	\N	\N	\N	\N
1449	glass	campaign	948	309	263	prepare	wife	\N	\N	\N	\N
1452	network	anything	494	675	920	history	interview	\N	\N	\N	\N
1456	student	least	949	677	413	whether	consumer	\N	\N	\N	\N
1457	pick	letter	330	828	111	history	believe	\N	\N	\N	\N
1459	nothing	student	647	333	578	before	opportunity	\N	\N	\N	\N
1460	within	by	57	727	470	whose	mention	\N	\N	\N	\N
1461	make	ok	466	511	522	chance	stuff	\N	\N	\N	\N
1462	open	could	822	880	285	quickly	success	\N	\N	\N	\N
1464	pressure	science	996	326	229	money	school	\N	\N	\N	\N
1466	job	go	875	426	217	career	attack	\N	\N	\N	\N
1469	authority	base	143	404	355	report	everything	\N	\N	\N	\N
1470	early	leg	617	150	750	leave	place	\N	\N	\N	\N
1472	listen	morning	773	988	205	full	look	\N	\N	\N	\N
1474	rather	series	259	571	993	ability	try	\N	\N	\N	\N
1479	would	southern	414	936	55	program	indeed	\N	\N	\N	\N
1484	develop	play	248	420	141	four	very	\N	\N	\N	\N
1485	light	process	700	942	411	hair	so	\N	\N	\N	\N
1486	success	fine	253	193	582	memory	professional	\N	\N	\N	\N
1490	key	evidence	884	550	775	these	order	\N	\N	\N	\N
1494	while	oil	132	366	642	feeling	other	\N	\N	\N	\N
1495	loss	interesting	95	475	528	move	region	\N	\N	\N	\N
1496	by	down	387	797	270	standard	seat	\N	\N	\N	\N
1497	future	recognize	469	479	681	simply	pick	\N	\N	\N	\N
1427	participant	have	273	656	430	various	them	\N	[{"barcode": "indeed", "variant_id": "564", "price_override": "688", "is_active_variant": "590"}]	\N	\N
1489	develop	give	54	952	526	ok	seem	\N	[{"barcode": "off", "variant_id": "288", "price_override": "404", "is_active_variant": "340"}]	\N	\N
1477	bar	truth	149	175	626	despite	start	\N	\N	[{"price": "592", "ends_at": "particularly", "price_id": "386", "starts_at": "nearly"}]	\N
1430	change	hot	59	336	163	work	carry	\N	\N	\N	4
1482	impact	minute	626	696	676	might	group	\N	\N	\N	54
1498	poor	from	270	721	967	price	forward	\N	\N	\N	86
1434	particularly	civil	346	602	92	inside	community	\N	\N	\N	51
1492	investment	individual	939	234	359	official	concern	\N	\N	\N	45
1499	evidence	teacher	804	964	541	information	also	\N	\N	\N	\N
1500	minute	name	434	948	243	clear	practice	\N	\N	\N	\N
1501	situation	Republican	721	477	824	mother	wish	\N	\N	\N	\N
1502	just	end	452	533	771	mean	skill	\N	\N	\N	\N
1503	best	field	149	826	736	house	three	\N	\N	\N	\N
1505	her	great	280	374	230	nearly	middle	\N	\N	\N	\N
1507	go	artist	855	716	40	in	spring	\N	\N	\N	\N
1508	build	heavy	399	545	362	past	trouble	\N	\N	\N	\N
1512	defense	pretty	761	318	942	itself	section	\N	\N	\N	\N
1514	section	force	252	286	95	happy	work	\N	\N	\N	\N
1515	drug	mention	402	697	519	candidate	music	\N	\N	\N	\N
1517	bill	turn	423	230	718	responsibility	administration	\N	\N	\N	\N
1518	debate	food	494	125	528	floor	want	\N	\N	\N	\N
1519	customer	sense	867	583	769	edge	growth	\N	\N	\N	\N
1520	person	can	33	84	331	how	sign	\N	\N	\N	\N
1521	every	indicate	881	454	93	role	red	\N	\N	\N	\N
1525	important	never	507	129	707	always	field	\N	\N	\N	\N
1527	purpose	plan	622	257	558	white	film	\N	\N	\N	\N
1528	few	great	612	915	94	each	break	\N	\N	\N	\N
1530	care	each	877	23	770	instead	miss	\N	\N	\N	\N
1531	parent	cover	43	136	342	and	own	\N	\N	\N	\N
1532	before	from	569	824	846	nor	interesting	\N	\N	\N	\N
1533	stand	television	617	798	462	allow	idea	\N	\N	\N	\N
1534	thought	fine	336	212	438	note	fish	\N	\N	\N	\N
1535	institution	involve	66	390	931	church	for	\N	\N	\N	\N
1536	small	mouth	856	803	5	its	industry	\N	\N	\N	\N
1538	act	suffer	581	592	388	defense	event	\N	\N	\N	\N
1539	economic	sometimes	996	401	78	hot	six	\N	\N	\N	\N
1540	community	economic	864	250	65	money	too	\N	\N	\N	\N
1541	sing	behind	881	871	540	control	something	\N	\N	\N	\N
1542	son	first	567	873	319	responsibility	professor	\N	\N	\N	\N
1543	everything	collection	148	506	497	low	I	\N	\N	\N	\N
1544	top	itself	154	561	120	instead	government	\N	\N	\N	\N
1546	there	low	509	641	679	sense	research	\N	\N	\N	\N
1548	much	another	453	280	855	deal	listen	\N	\N	\N	\N
1549	return	teacher	607	979	804	shoulder	wear	\N	\N	\N	\N
1550	cause	economic	723	926	407	medical	manage	\N	\N	\N	\N
1551	leave	budget	23	221	563	through	different	\N	\N	\N	\N
1552	occur	actually	253	625	689	her	will	\N	\N	\N	\N
1553	cover	senior	992	444	571	nothing	alone	\N	\N	\N	\N
1555	company	group	878	662	340	box	prevent	\N	\N	\N	\N
1557	table	challenge	563	87	523	spring	nation	\N	\N	\N	\N
1558	indeed	as	63	308	653	arrive	theory	\N	\N	\N	\N
1560	coach	group	888	910	357	senior	gas	\N	\N	\N	\N
1561	its	physical	381	788	211	everyone	civil	\N	\N	\N	\N
1562	which	society	628	596	512	we	management	\N	\N	\N	\N
1563	news	list	183	391	3	include	test	\N	\N	\N	\N
1564	age	career	18	272	375	throughout	be	\N	\N	\N	\N
1565	coach	option	417	675	194	action	bag	\N	\N	\N	\N
1566	can	now	429	914	678	job	study	\N	\N	\N	\N
1569	check	result	837	643	213	present	north	\N	\N	\N	\N
1570	media	them	59	299	151	near	purpose	\N	\N	\N	\N
1572	dream	opportunity	168	915	525	certainly	west	\N	\N	\N	\N
1573	team	tax	512	879	661	run	game	\N	\N	\N	\N
1574	crime	thought	929	459	188	avoid	clearly	\N	\N	\N	\N
1576	evidence	accept	587	722	45	plan	staff	\N	\N	\N	\N
1578	any	candidate	246	832	767	evidence	two	\N	\N	\N	\N
1579	beautiful	small	849	964	897	majority	break	\N	\N	\N	\N
1580	pretty	safe	734	934	241	nice	rather	\N	\N	\N	\N
1581	product	commercial	864	802	910	past	special	\N	\N	\N	\N
1582	study	see	901	421	826	manager	ready	\N	\N	\N	\N
1583	even	culture	470	526	693	sure	wind	\N	\N	\N	\N
1585	style	bed	434	127	558	commercial	really	\N	\N	\N	\N
1586	beat	treat	780	427	953	build	industry	\N	\N	\N	\N
1587	attention	visit	525	391	616	society	risk	\N	\N	\N	\N
1592	treat	certain	386	652	961	however	mission	\N	\N	\N	\N
1594	give	since	321	877	181	home	budget	\N	\N	\N	\N
1595	above	medical	680	815	556	about	speech	\N	\N	\N	\N
1506	lawyer	else	986	456	367	key	east	\N	[{"barcode": "up", "variant_id": "591", "price_override": "390", "is_active_variant": "268"}]	\N	\N
1513	system	question	438	571	600	success	set	\N	\N	[{"price": "938", "ends_at": "view", "price_id": "447", "starts_at": "decide"}]	\N
1509	group	me	678	835	865	institution	name	\N	\N	\N	73
1510	trouble	pick	310	522	267	they	side	\N	\N	\N	10
1597	she	career	88	261	699	front	early	\N	\N	\N	\N
1598	receive	concern	759	229	505	night	suffer	\N	\N	\N	\N
1599	finish	attorney	882	35	959	century	really	\N	\N	\N	\N
1600	true	few	353	412	945	world	black	\N	\N	\N	\N
1602	boy	certain	940	238	155	cold	worry	\N	\N	\N	\N
1603	professional	goal	958	345	675	professor	organization	\N	\N	\N	\N
1604	forget	plan	626	993	596	lay	sometimes	\N	\N	\N	\N
1605	fear	skill	436	691	309	clear	then	\N	\N	\N	\N
1606	myself	compare	753	321	266	improve	watch	\N	\N	\N	\N
1607	expect	mean	465	404	984	long	yard	\N	\N	\N	\N
1608	good	court	40	593	797	world	game	\N	\N	\N	\N
1609	other	arm	819	796	698	those	hotel	\N	\N	\N	\N
1610	wrong	north	676	641	140	arm	hit	\N	\N	\N	\N
1612	shoulder	project	773	409	257	age	which	\N	\N	\N	\N
1614	loss	kid	327	71	212	activity	similar	\N	\N	\N	\N
1615	give	education	216	410	630	story	east	\N	\N	\N	\N
1618	air	sell	940	115	396	cover	important	\N	\N	\N	\N
1619	war	ahead	479	791	495	same	sign	\N	\N	\N	\N
1620	right	defense	166	773	6	avoid	want	\N	\N	\N	\N
1623	heavy	pay	207	871	745	situation	between	\N	\N	\N	\N
1624	prevent	page	618	63	349	baby	pay	\N	\N	\N	\N
1625	sense	over	491	288	764	type	continue	\N	\N	\N	\N
1627	mean	live	938	50	159	value	student	\N	\N	\N	\N
1629	surface	operation	711	74	189	child	arrive	\N	\N	\N	\N
1630	system	style	386	297	523	poor	factor	\N	\N	\N	\N
1631	would	pass	293	142	175	produce	at	\N	\N	\N	\N
1633	total	event	887	830	460	station	court	\N	\N	\N	\N
1636	many	language	994	365	676	staff	good	\N	\N	\N	\N
1638	better	trouble	91	162	506	summer	let	\N	\N	\N	\N
1640	wrong	threat	42	710	494	education	beyond	\N	\N	\N	\N
1641	actually	manager	365	354	356	hospital	film	\N	\N	\N	\N
1642	study	remember	797	557	137	hope	investment	\N	\N	\N	\N
1644	cost	production	971	246	264	voice	anything	\N	\N	\N	\N
1646	policy	choice	645	454	997	different	hospital	\N	\N	\N	\N
1649	director	color	293	575	706	despite	impact	\N	\N	\N	\N
1650	actually	almost	196	895	606	hold	social	\N	\N	\N	\N
1651	nice	write	823	759	715	newspaper	party	\N	\N	\N	\N
1652	next	long	250	659	496	life	conference	\N	\N	\N	\N
1654	involve	themselves	977	881	60	history	important	\N	\N	\N	\N
1656	early	opportunity	484	248	875	such	likely	\N	\N	\N	\N
1657	tell	her	846	36	15	science	bar	\N	\N	\N	\N
1658	my	throughout	917	470	838	listen	be	\N	\N	\N	\N
1659	security	city	788	440	249	enough	majority	\N	\N	\N	\N
1660	then	perform	181	107	249	sort	common	\N	\N	\N	\N
1662	mean	will	211	440	944	within	certain	\N	\N	\N	\N
1663	onto	address	928	508	773	laugh	side	\N	\N	\N	\N
1664	few	apply	816	966	314	more	piece	\N	\N	\N	\N
1665	suggest	according	647	478	143	choose	picture	\N	\N	\N	\N
1669	foreign	building	773	4	321	watch	officer	\N	\N	\N	\N
1670	sometimes	movie	114	67	437	ready	civil	\N	\N	\N	\N
1671	message	low	259	44	144	herself	fear	\N	\N	\N	\N
1672	wait	beautiful	384	801	352	grow	view	\N	\N	\N	\N
1673	last	race	929	184	886	discover	hear	\N	\N	\N	\N
1674	against	article	480	861	335	after	put	\N	\N	\N	\N
1676	north	say	167	637	437	effect	impact	\N	\N	\N	\N
1678	college	small	628	471	997	federal	thus	\N	\N	\N	\N
1679	something	store	604	966	446	indicate	candidate	\N	\N	\N	\N
1681	knowledge	city	32	572	717	too	oil	\N	\N	\N	\N
1682	difference	letter	585	615	552	according	in	\N	\N	\N	\N
1683	land	will	245	46	921	not	at	\N	\N	\N	\N
1685	modern	window	264	584	358	pick	accept	\N	\N	\N	\N
1686	cup	hour	529	375	581	staff	bag	\N	\N	\N	\N
1687	tend	west	185	438	228	risk	animal	\N	\N	\N	\N
1688	claim	account	836	997	647	must	expect	\N	\N	\N	\N
1689	authority	unit	674	260	744	race	drop	\N	\N	\N	\N
1690	painting	one	68	632	266	state	friend	\N	\N	\N	\N
1691	fill	cell	526	792	35	account	hair	\N	\N	\N	\N
1692	card	contain	490	946	494	fine	eight	\N	\N	\N	\N
1693	own	quite	868	95	690	need	vote	\N	\N	\N	\N
1694	seat	policy	52	586	596	style	same	\N	\N	\N	\N
1637	health	blue	788	46	689	subject	laugh	\N	[{"barcode": "run", "variant_id": "542", "price_override": "513", "is_active_variant": "386"}]	\N	\N
1632	painting	training	955	521	240	individual	I	\N	\N	[{"price": "399", "ends_at": "laugh", "price_id": "382", "starts_at": "according"}]	\N
1661	away	knowledge	312	236	26	but	who	\N	\N	[{"price": "394", "ends_at": "music", "price_id": "199", "starts_at": "when"}]	\N
1677	shake	final	113	320	924	model	plan	\N	\N	\N	69
1613	letter	interesting	427	324	887	significant	dinner	\N	\N	\N	33
1695	defense	current	293	68	569	quickly	economy	\N	\N	\N	\N
1697	involve	on	698	737	444	resource	space	\N	\N	\N	\N
1698	mention	community	649	965	727	among	use	\N	\N	\N	\N
1699	scientist	list	621	961	797	gas	staff	\N	\N	\N	\N
1700	pick	meet	683	943	989	population	open	\N	\N	\N	\N
1702	key	space	52	18	79	heart	theory	\N	\N	\N	\N
1704	character	front	193	938	860	himself	hear	\N	\N	\N	\N
1705	development	many	6	838	437	stuff	travel	\N	\N	\N	\N
1707	thing	happen	116	379	384	term	need	\N	\N	\N	\N
1708	analysis	pressure	876	390	536	my	order	\N	\N	\N	\N
1709	most	manage	763	326	502	cold	age	\N	\N	\N	\N
1711	week	possible	444	869	616	address	together	\N	\N	\N	\N
1712	sister	must	20	353	528	picture	wall	\N	\N	\N	\N
1715	example	beyond	418	621	439	force	region	\N	\N	\N	\N
1717	capital	apply	145	504	936	group	represent	\N	\N	\N	\N
1719	state	right	907	375	382	sometimes	total	\N	\N	\N	\N
1720	thank	street	748	83	803	daughter	service	\N	\N	\N	\N
1722	affect	deal	895	145	51	would	stage	\N	\N	\N	\N
1724	box	company	131	141	246	so	every	\N	\N	\N	\N
1727	training	low	135	319	804	history	year	\N	\N	\N	\N
1728	good	around	472	26	588	share	across	\N	\N	\N	\N
1729	answer	hold	752	970	642	away	president	\N	\N	\N	\N
1730	necessary	exactly	33	765	145	production	too	\N	\N	\N	\N
1731	me	begin	676	299	526	book	need	\N	\N	\N	\N
1733	movie	style	750	275	710	deep	wrong	\N	\N	\N	\N
1737	theory	partner	119	211	184	on	even	\N	\N	\N	\N
1738	name	blood	772	840	912	stay	green	\N	\N	\N	\N
1739	enough	program	649	132	847	near	mouth	\N	\N	\N	\N
1741	memory	kitchen	896	707	602	again	north	\N	\N	\N	\N
1742	rock	somebody	703	990	759	door	federal	\N	\N	\N	\N
1743	girl	forward	393	456	368	staff	who	\N	\N	\N	\N
1744	country	last	980	617	825	real	than	\N	\N	\N	\N
1745	manage	since	653	500	790	hear	commercial	\N	\N	\N	\N
1746	fast	report	256	625	920	hold	husband	\N	\N	\N	\N
1747	once	network	178	519	624	laugh	firm	\N	\N	\N	\N
1748	science	family	70	768	880	drive	analysis	\N	\N	\N	\N
1754	answer	result	631	548	1	establish	important	\N	\N	\N	\N
1755	hair	one	71	774	553	know	lose	\N	\N	\N	\N
1756	tend	fire	944	489	50	health	huge	\N	\N	\N	\N
1757	safe	of	471	466	581	center	central	\N	\N	\N	\N
1759	culture	indicate	356	66	180	something	anyone	\N	\N	\N	\N
1760	performance	improve	776	588	5	have	themselves	\N	\N	\N	\N
1761	learn	contain	199	583	686	next	their	\N	\N	\N	\N
1762	trouble	street	967	159	499	most	difficult	\N	\N	\N	\N
1763	call	sometimes	357	537	879	probably	behavior	\N	\N	\N	\N
1764	ok	team	611	106	737	side	sure	\N	\N	\N	\N
1767	evidence	possible	586	330	551	everything	beat	\N	\N	\N	\N
1768	measure	night	590	758	595	perform	maybe	\N	\N	\N	\N
1770	responsibility	suggest	805	805	933	after	house	\N	\N	\N	\N
1771	with	order	604	154	312	good	concern	\N	\N	\N	\N
1772	worker	why	937	859	80	ball	unit	\N	\N	\N	\N
1775	child	discussion	683	269	979	face	write	\N	\N	\N	\N
1778	sure	fine	412	691	130	answer	per	\N	\N	\N	\N
1779	whose	building	44	699	260	ask	least	\N	\N	\N	\N
1780	either	school	348	83	940	compare	window	\N	\N	\N	\N
1781	day	red	391	107	135	others	sure	\N	\N	\N	\N
1783	may	every	417	795	84	appear	dog	\N	\N	\N	\N
1784	enough	south	999	37	445	might	finally	\N	\N	\N	\N
1786	fish	draw	632	633	776	prove	special	\N	\N	\N	\N
1789	economy	kitchen	452	4	355	color	significant	\N	\N	\N	\N
1791	class	their	716	682	984	pass	step	\N	\N	\N	\N
1792	indicate	worker	744	452	638	appear	research	\N	\N	\N	\N
1721	another	leg	135	733	661	statement	next	\N	[{"barcode": "project", "variant_id": "566", "price_override": "261", "is_active_variant": "927"}]	\N	\N
1696	why	top	607	672	174	know	general	\N	[{"barcode": "treat", "variant_id": "355", "price_override": "636", "is_active_variant": "542"}]	\N	\N
1726	top	evening	455	204	419	case	husband	\N	\N	[{"price": "995", "ends_at": "walk", "price_id": "122", "starts_at": "among"}]	\N
1703	wait	imagine	804	371	922	power	middle	\N	\N	[{"price": "333", "ends_at": "certainly", "price_id": "89", "starts_at": "enjoy"}]	\N
1750	lay	sign	714	832	533	performance	understand	\N	\N	\N	68
1751	kid	get	870	691	133	month	education	\N	\N	\N	31
1753	nor	old	177	682	794	again	mention	\N	\N	\N	85
1752	deep	red	323	82	151	well	note	\N	\N	\N	16
1793	role	situation	678	205	942	building	area	\N	\N	\N	\N
1796	talk	community	687	90	785	include	affect	\N	\N	\N	\N
1797	possible	officer	542	634	492	trade	street	\N	\N	\N	\N
1798	billion	statement	98	512	123	who	life	\N	\N	\N	\N
1799	industry	thought	518	559	171	that	detail	\N	\N	\N	\N
1774	operation	raise	734	134	502	coach	drive	[{"url": "already", "alt_text": "method", "image_id": "92", "sort_order": "843"}]	\N	\N	\N
1725	phone	alone	987	216	773	main	him	[{"url": "vote", "alt_text": "too", "image_id": "985", "sort_order": "536"}]	\N	\N	\N
1547	order	make	148	152	324	doctor	really	[{"url": "short", "alt_text": "above", "image_id": "132", "sort_order": "928"}]	\N	\N	\N
1655	radio	budget	162	140	55	dream	as	[{"url": "information", "alt_text": "no", "image_id": "38", "sort_order": "31"}]	\N	\N	\N
1713	part	should	238	408	509	test	mission	[{"url": "reveal", "alt_text": "tax", "image_id": "557", "sort_order": "409"}]	\N	\N	\N
1554	protect	list	85	30	797	former	attack	[{"url": "create", "alt_text": "parent", "image_id": "260", "sort_order": "499"}]	\N	\N	\N
1471	design	various	783	989	703	media	while	[{"url": "voice", "alt_text": "cultural", "image_id": "330", "sort_order": "892"}]	\N	\N	\N
1596	soldier	car	979	195	77	thing	investment	[{"url": "realize", "alt_text": "save", "image_id": "5", "sort_order": "231"}]	\N	\N	\N
1732	participant	follow	59	920	73	say	lawyer	[{"url": "southern", "alt_text": "drive", "image_id": "482", "sort_order": "416"}]	\N	\N	\N
1648	hold	admit	28	436	397	fact	close	[{"url": "over", "alt_text": "between", "image_id": "511", "sort_order": "120"}]	\N	\N	\N
1647	hour	official	504	721	500	this	forward	[{"url": "guy", "alt_text": "usually", "image_id": "100", "sort_order": "859"}]	\N	\N	\N
1468	six	commercial	904	398	30	financial	everybody	[{"url": "how", "alt_text": "early", "image_id": "174", "sort_order": "581"}]	\N	\N	\N
1409	late	I	466	638	129	set	yeah	[{"url": "former", "alt_text": "some", "image_id": "207", "sort_order": "338"}]	\N	\N	\N
1412	pay	and	897	147	193	moment	good	[{"url": "billion", "alt_text": "somebody", "image_id": "175", "sort_order": "906"}]	\N	\N	\N
1453	federal	chair	909	218	601	toward	art	[{"url": "oil", "alt_text": "magazine", "image_id": "89", "sort_order": "765"}]	\N	\N	\N
1568	indeed	yet	176	599	855	opportunity	decision	[{"url": "financial", "alt_text": "leg", "image_id": "998", "sort_order": "910"}]	\N	\N	\N
1782	country	whether	995	498	332	apply	take	[{"url": "feel", "alt_text": "room", "image_id": "213", "sort_order": "568"}]	[{"barcode": "their", "variant_id": "834", "price_override": "495", "is_active_variant": "759"}]	\N	\N
1556	old	want	744	951	206	talk	camera	\N	[{"barcode": "already", "variant_id": "697", "price_override": "863", "is_active_variant": "30"}]	\N	\N
1639	do	compare	361	918	317	election	risk	\N	[{"barcode": "teacher", "variant_id": "196", "price_override": "354", "is_active_variant": "862"}]	\N	\N
1467	appear	position	799	137	525	political	bad	\N	[{"barcode": "report", "variant_id": "882", "price_override": "128", "is_active_variant": "946"}]	\N	\N
1458	growth	receive	209	951	383	perform	about	\N	[{"barcode": "arrive", "variant_id": "372", "price_override": "234", "is_active_variant": "14"}]	\N	\N
1463	share	hand	631	160	291	upon	our	\N	[{"barcode": "guy", "variant_id": "81", "price_override": "30", "is_active_variant": "584"}]	\N	\N
1404	few	month	764	787	186	wish	save	[{"url": "pass", "alt_text": "establish", "image_id": "872", "sort_order": "44"}]	[{"barcode": "organization", "variant_id": "363", "price_override": "396", "is_active_variant": "120"}]	\N	\N
1706	money	kitchen	252	64	927	television	appear	\N	[{"barcode": "else", "variant_id": "185", "price_override": "835", "is_active_variant": "497"}, {"barcode": "inside", "variant_id": "563", "price_override": "71", "is_active_variant": "197"}]	\N	\N
1675	position	imagine	616	235	835	by	first	\N	[{"barcode": "country", "variant_id": "932", "price_override": "530", "is_active_variant": "631"}]	\N	\N
1483	trip	office	856	365	731	thank	my	\N	[{"barcode": "material", "variant_id": "394", "price_override": "516", "is_active_variant": "160"}]	\N	\N
1526	traditional	top	447	491	302	line	dinner	\N	[{"barcode": "gas", "variant_id": "920", "price_override": "61", "is_active_variant": "509"}]	\N	\N
1643	plan	talk	425	820	685	they	break	\N	[{"barcode": "office", "variant_id": "44", "price_override": "38", "is_active_variant": "493"}]	\N	\N
1445	key	daughter	733	417	217	how	able	\N	\N	[{"price": "441", "ends_at": "interest", "price_id": "172", "starts_at": "system"}]	\N
1402	stage	approach	74	263	969	read	capital	\N	\N	[{"price": "777", "ends_at": "people", "price_id": "398", "starts_at": "generation"}]	\N
1411	treat	eye	352	257	855	son	about	[{"url": "activity", "alt_text": "join", "image_id": "72", "sort_order": "576"}]	\N	[{"price": "299", "ends_at": "act", "price_id": "667", "starts_at": "kitchen"}]	\N
1787	work	growth	137	879	868	five	situation	\N	\N	[{"price": "242", "ends_at": "live", "price_id": "590", "starts_at": "his"}]	\N
1716	fear	our	708	149	339	speech	mind	\N	\N	[{"price": "592", "ends_at": "author", "price_id": "795", "starts_at": "she"}]	\N
1537	box	whom	310	749	837	draw	party	\N	\N	\N	98
1504	between	government	806	709	102	stock	large	\N	\N	\N	10
1475	reach	fall	542	773	537	either	education	\N	\N	[{"price": "705", "ends_at": "first", "price_id": "291", "starts_at": "you"}]	66
1668	whether	build	476	515	741	minute	moment	\N	\N	\N	68
1735	follow	move	579	352	109	east	individual	\N	\N	\N	98
1439	edge	air	253	239	98	staff	light	\N	\N	[{"price": "74", "ends_at": "soon", "price_id": "785", "starts_at": "begin"}]	52
1488	place	arm	925	790	214	imagine	across	\N	\N	\N	23
1795	enter	involve	286	281	166	brother	any	\N	\N	\N	39
1718	respond	four	322	773	791	process	piece	\N	\N	\N	97
1416	available	send	537	772	936	news	model	\N	\N	\N	14
1545	first	discussion	275	556	804	rock	thought	\N	\N	\N	65
1714	in	talk	379	52	863	subject	program	\N	\N	\N	83
1666	end	arrive	321	807	319	capital	bad	\N	\N	\N	53
1450	now	blood	880	396	121	other	identify	\N	\N	\N	91
1491	oil	interview	358	676	725	various	lay	\N	\N	\N	34
1635	dinner	house	211	621	386	member	treat	\N	\N	\N	70
1710	the	dog	479	241	414	south	room	\N	\N	\N	1
1653	event	decide	372	456	317	firm	expert	\N	\N	\N	17
1473	part	particularly	485	388	791	fine	factor	\N	\N	\N	72
1645	size	total	548	923	475	several	court	\N	\N	\N	63
1617	set	sing	116	142	832	sense	movie	\N	\N	\N	54
1621	arrive	note	977	58	971	wide	mean	\N	\N	\N	26
1455	program	break	976	653	201	truth	hot	\N	\N	\N	4
1424	field	prepare	250	117	464	herself	discuss	\N	\N	\N	31
1765	mention	off	513	936	317	push	miss	[{"url": "thus", "alt_text": "continue", "image_id": "114", "sort_order": "612"}]	\N	\N	86
1611	development	bar	361	902	148	fill	issue	\N	\N	\N	29
1794	here	small	340	793	969	guess	hotel	\N	[{"barcode": "ready", "variant_id": "840", "price_override": "184", "is_active_variant": "130"}]	\N	4
1524	eat	cost	813	905	52	yet	main	\N	\N	\N	29
1577	in	no	667	223	876	pick	situation	\N	\N	[{"price": "852", "ends_at": "paper", "price_id": "490", "starts_at": "fast"}]	83
1575	suddenly	whose	274	359	454	write	edge	\N	\N	\N	28
1773	news	station	35	582	891	research	never	\N	\N	\N	36
1493	edge	provide	74	231	930	treat	old	\N	\N	\N	25
1481	traditional	mind	228	925	346	six	seat	\N	\N	\N	78
1523	score	once	88	703	483	collection	network	\N	\N	\N	11
1559	become	no	601	909	727	nice	southern	\N	\N	\N	5
1413	arrive	else	219	642	7	number	tonight	\N	\N	\N	62
1734	should	change	573	452	477	think	tell	\N	\N	\N	97
1454	particular	trial	154	643	275	serve	along	\N	\N	\N	54
1516	where	story	300	620	498	put	today	\N	\N	\N	89
1777	understand	several	250	400	554	watch	view	\N	\N	\N	57
1529	describe	action	35	239	965	bill	about	\N	\N	\N	20
1588	century	case	97	816	208	great	black	\N	\N	\N	20
1788	girl	important	57	19	985	sign	listen	\N	\N	\N	95
1511	role	thank	85	55	107	happen	so	\N	\N	\N	28
1476	cost	hear	25	998	391	manager	under	[{"url": "majority", "alt_text": "include", "image_id": "848", "sort_order": "792"}]	\N	\N	44
1478	small	issue	102	417	117	new	different	\N	\N	\N	95
1622	pay	skill	140	774	512	production	step	\N	\N	\N	31
1723	cultural	level	271	341	42	head	option	\N	\N	\N	74
1584	response	international	48	239	228	there	call	\N	\N	\N	67
1451	item	yes	912	676	369	civil	out	\N	\N	\N	68
1601	happy	prepare	427	210	56	show	season	\N	\N	\N	31
1634	against	current	521	200	719	push	move	\N	\N	\N	7
1616	arm	job	694	653	480	focus	leg	\N	\N	\N	1
1749	scene	time	89	984	852	article	oil	\N	\N	\N	79
1593	both	author	521	815	976	behind	Democrat	\N	\N	\N	37
1785	lay	per	404	580	585	never	board	\N	\N	\N	93
1429	old	finally	937	380	514	above	treat	\N	[{"barcode": "necessary", "variant_id": "478", "price_override": "491", "is_active_variant": "507"}]	\N	1
1522	pattern	break	906	34	452	some	run	\N	\N	\N	80
1766	poor	use	993	308	91	campaign	support	\N	\N	\N	92
1487	miss	race	581	348	192	summer	turn	\N	\N	\N	64
1758	amount	seem	283	365	460	meet	sort	\N	\N	\N	41
1426	effort	left	687	314	959	management	fight	\N	\N	\N	74
1591	throughout	yourself	771	384	656	growth	when	\N	\N	\N	71
1571	whom	strong	625	369	189	mouth	late	\N	\N	\N	18
1776	meeting	stage	592	297	447	happen	tell	\N	\N	\N	55
1740	foreign	material	576	658	212	challenge	air	\N	\N	\N	32
1736	security	field	235	799	46	data	clearly	\N	\N	\N	82
1684	month	remember	424	827	701	none	song	\N	\N	\N	54
1420	all	there	176	451	975	their	husband	\N	\N	\N	48
1701	ahead	sort	906	1	783	contain	too	\N	\N	\N	53
1626	bill	nature	562	510	518	would	must	\N	\N	\N	78
1628	account	none	11	859	315	imagine	member	\N	\N	\N	75
1680	tonight	peace	655	144	760	process	meet	\N	\N	\N	59
1800	between	sure	714	994	661	affect	stop	\N	\N	\N	52
1769	yet	game	451	296	776	heavy	story	\N	\N	\N	64
1480	rich	finish	84	962	578	point	move	\N	\N	\N	26
1423	room	even	995	557	968	most	wide	\N	\N	\N	58
1790	story	race	335	997	823	her	guess	\N	\N	\N	10
1465	rule	total	321	202	778	much	debate	\N	\N	\N	74
1667	there	make	37	305	202	the	friend	\N	\N	\N	60
1590	partner	could	443	539	860	society	at	\N	\N	\N	39
1567	health	yard	426	585	389	direction	their	\N	\N	\N	7
1589	glass	different	401	214	559	event	build	\N	\N	\N	89
\.


--
-- Data for Name: relation_15; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_15 (clothing_id, material, fit_type_women, role) FROM stdin;
1501	town	\N	clothing
1502	individual	\N	clothing
1503	race	\N	clothing
1504	improve	\N	clothing
1505	PM	\N	clothing
1506	military	\N	clothing
1507	explain	\N	clothing
1508	among	\N	clothing
1509	thus	\N	clothing
1510	set	\N	clothing
1511	guess	\N	clothing
1512	glass	\N	clothing
1513	site	\N	clothing
1514	shoulder	\N	clothing
1515	into	\N	clothing
1516	he	\N	clothing
1517	true	\N	clothing
1518	worry	\N	clothing
1519	school	\N	clothing
1520	outside	\N	clothing
1521	attorney	\N	clothing
1522	send	\N	clothing
1523	indicate	\N	clothing
1524	leave	\N	clothing
1525	prepare	\N	clothing
1526	scientist	\N	clothing
1527	across	\N	clothing
1528	letter	\N	clothing
1529	herself	\N	clothing
1530	carry	\N	clothing
1531	role	\N	clothing
1532	against	\N	clothing
1533	community	\N	clothing
1534	his	\N	clothing
1535	state	\N	clothing
1536	on	\N	clothing
1537	rise	\N	clothing
1538	perhaps	\N	clothing
1539	who	\N	clothing
1540	rise	\N	clothing
1541	participant	\N	clothing
1542	actually	\N	clothing
1543	camera	\N	clothing
1544	short	\N	clothing
1545	risk	\N	clothing
1546	popular	\N	clothing
1547	bag	\N	clothing
1548	here	\N	clothing
1549	sing	\N	clothing
1550	course	\N	clothing
1551	bar	\N	clothing
1552	window	\N	clothing
1553	head	\N	clothing
1554	none	\N	clothing
1555	culture	\N	clothing
1556	fill	\N	clothing
1557	picture	\N	clothing
1558	challenge	\N	clothing
1559	camera	\N	clothing
1560	three	\N	clothing
1561	cell	\N	clothing
1562	politics	\N	clothing
1563	somebody	\N	clothing
1564	benefit	\N	clothing
1565	above	\N	clothing
1566	car	\N	clothing
1567	represent	\N	clothing
1568	research	\N	clothing
1569	score	\N	clothing
1570	responsibility	\N	clothing
1571	prepare	\N	clothing
1572	black	\N	clothing
1573	teacher	\N	clothing
1574	turn	\N	clothing
1575	responsibility	\N	clothing
1576	wall	\N	clothing
1577	agency	\N	clothing
1578	current	\N	clothing
1579	who	\N	clothing
1580	test	\N	clothing
1581	concern	\N	clothing
1582	scientist	\N	clothing
1583	group	\N	clothing
1584	beyond	\N	clothing
1585	ahead	\N	clothing
1586	live	\N	clothing
1587	although	\N	clothing
1588	blood	\N	clothing
1589	effect	\N	clothing
1590	color	\N	clothing
1591	include	\N	clothing
1592	action	\N	clothing
1593	together	\N	clothing
1594	marriage	\N	clothing
1595	explain	\N	clothing
1596	our	\N	clothing
1597	might	\N	clothing
1598	even	\N	clothing
1599	customer	\N	clothing
1600	interest	\N	clothing
1601	structure	\N	menclothing
1602	speech	\N	menclothing
1603	town	\N	menclothing
1604	marriage	\N	menclothing
1605	manage	\N	menclothing
1606	model	\N	menclothing
1607	environmental	\N	menclothing
1608	option	\N	menclothing
1609	face	\N	menclothing
1610	moment	\N	menclothing
1611	after	\N	menclothing
1612	practice	\N	menclothing
1613	between	\N	menclothing
1614	sister	\N	menclothing
1615	stay	\N	menclothing
1616	development	\N	menclothing
1617	base	\N	menclothing
1618	media	\N	menclothing
1619	special	\N	menclothing
1620	visit	\N	menclothing
1621	officer	\N	menclothing
1622	agent	\N	menclothing
1623	rise	\N	menclothing
1624	purpose	\N	menclothing
1625	with	\N	menclothing
1626	talk	\N	menclothing
1627	prepare	\N	menclothing
1628	idea	\N	menclothing
1629	marriage	\N	menclothing
1630	likely	\N	menclothing
1631	bed	\N	menclothing
1632	respond	\N	menclothing
1633	last	\N	menclothing
1634	item	\N	menclothing
1635	respond	\N	menclothing
1636	answer	\N	menclothing
1637	development	\N	menclothing
1638	through	\N	menclothing
1639	tax	\N	menclothing
1640	usually	\N	menclothing
1641	whole	\N	menclothing
1642	husband	\N	menclothing
1643	leader	\N	menclothing
1644	need	\N	menclothing
1645	service	\N	menclothing
1646	build	\N	menclothing
1647	choice	\N	menclothing
1648	painting	\N	menclothing
1649	late	\N	menclothing
1650	center	\N	menclothing
1651	really	\N	menclothing
1652	under	\N	menclothing
1653	themselves	\N	menclothing
1654	range	\N	menclothing
1655	south	\N	menclothing
1656	west	\N	menclothing
1657	character	\N	menclothing
1658	affect	\N	menclothing
1659	walk	\N	menclothing
1660	appear	\N	menclothing
1661	person	\N	menclothing
1662	single	\N	menclothing
1663	determine	\N	menclothing
1664	page	\N	menclothing
1665	dream	\N	menclothing
1666	those	\N	menclothing
1667	collection	\N	menclothing
1668	fish	\N	menclothing
1669	Mr	\N	menclothing
1670	money	\N	menclothing
1671	eight	\N	menclothing
1672	evidence	\N	menclothing
1673	or	\N	menclothing
1674	street	\N	menclothing
1675	herself	\N	menclothing
1676	others	\N	menclothing
1677	heavy	\N	menclothing
1678	little	\N	menclothing
1679	power	\N	menclothing
1680	site	\N	menclothing
1681	new	\N	menclothing
1682	pass	\N	menclothing
1683	friend	\N	menclothing
1684	serve	\N	menclothing
1685	character	\N	menclothing
1686	bring	\N	menclothing
1687	week	\N	menclothing
1688	father	\N	menclothing
1689	best	\N	menclothing
1690	together	\N	menclothing
1691	blue	\N	menclothing
1692	fire	\N	menclothing
1693	authority	\N	menclothing
1694	at	\N	menclothing
1695	guy	\N	menclothing
1696	could	\N	menclothing
1697	share	\N	menclothing
1698	operation	\N	menclothing
1699	sign	\N	menclothing
1700	almost	\N	menclothing
1701	democratic	road	womenclothing
1702	defense	bank	womenclothing
1703	evidence	work	womenclothing
1704	try	training	womenclothing
1705	economic	rate	womenclothing
1706	almost	forget	womenclothing
1707	pressure	PM	womenclothing
1708	interesting	painting	womenclothing
1709	treatment	including	womenclothing
1710	majority	develop	womenclothing
1711	civil	girl	womenclothing
1712	between	sport	womenclothing
1713	deep	fire	womenclothing
1714	claim	above	womenclothing
1715	different	similar	womenclothing
1716	report	real	womenclothing
1717	nor	receive	womenclothing
1718	vote	community	womenclothing
1719	off	movement	womenclothing
1720	budget	candidate	womenclothing
1721	yard	source	womenclothing
1722	election	speak	womenclothing
1723	employee	benefit	womenclothing
1724	oil	knowledge	womenclothing
1725	every	deal	womenclothing
1726	recognize	already	womenclothing
1727	will	side	womenclothing
1728	price	person	womenclothing
1729	property	material	womenclothing
1730	situation	head	womenclothing
1731	small	when	womenclothing
1732	business	stand	womenclothing
1733	all	score	womenclothing
1734	address	individual	womenclothing
1735	want	him	womenclothing
1736	allow	for	womenclothing
1737	structure	city	womenclothing
1738	paper	seven	womenclothing
1739	price	too	womenclothing
1740	hand	leg	womenclothing
1741	to	section	womenclothing
1742	capital	word	womenclothing
1743	suggest	cost	womenclothing
1744	road	reveal	womenclothing
1745	still	expert	womenclothing
1746	after	pay	womenclothing
1747	away	two	womenclothing
1748	until	seven	womenclothing
1749	worker	challenge	womenclothing
1750	leader	yet	womenclothing
1751	small	prevent	womenclothing
1752	southern	training	womenclothing
1753	watch	recent	womenclothing
1754	church	leg	womenclothing
1755	education	data	womenclothing
1756	service	like	womenclothing
1757	support	through	womenclothing
1758	suggest	certainly	womenclothing
1759	fill	movement	womenclothing
1760	country	produce	womenclothing
1761	conference	actually	womenclothing
1762	likely	right	womenclothing
1763	beyond	reality	womenclothing
1764	production	issue	womenclothing
1765	where	follow	womenclothing
1766	grow	law	womenclothing
1767	sure	behind	womenclothing
1768	real	forward	womenclothing
1769	set	situation	womenclothing
1770	sister	prevent	womenclothing
1771	teacher	front	womenclothing
1772	report	health	womenclothing
1773	if	store	womenclothing
1774	focus	ground	womenclothing
1775	often	door	womenclothing
1776	trade	have	womenclothing
1777	him	Democrat	womenclothing
1778	source	voice	womenclothing
1779	my	lead	womenclothing
1780	beautiful	Republican	womenclothing
1781	area	seat	womenclothing
1782	decision	likely	womenclothing
1783	it	then	womenclothing
1784	risk	long	womenclothing
1785	test	event	womenclothing
1786	western	government	womenclothing
1787	decide	various	womenclothing
1788	present	news	womenclothing
1789	fish	million	womenclothing
1790	recognize	show	womenclothing
1791	toward	artist	womenclothing
1792	week	raise	womenclothing
1793	man	shoulder	womenclothing
1794	threat	side	womenclothing
1795	evening	sign	womenclothing
1796	might	half	womenclothing
1797	feel	likely	womenclothing
1798	production	stand	womenclothing
1799	suffer	trip	womenclothing
1800	important	head	womenclothing
\.


--
-- Data for Name: relation_16; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_16 (menclothing_id, fit_type_men) FROM stdin;
1601	both
1602	sign
1603	international
1604	marriage
1605	technology
1606	imagine
1607	government
1608	person
1609	real
1610	without
1611	would
1612	book
1613	get
1614	program
1615	act
1616	media
1617	when
1618	air
1619	special
1620	least
1621	structure
1622	commercial
1623	smile
1624	kitchen
1625	watch
1626	answer
1627	again
1628	reveal
1629	response
1630	that
1631	low
1632	which
1633	father
1634	whole
1635	this
1636	lose
1637	brother
1638	too
1639	modern
1640	exactly
1641	ability
1642	behavior
1643	risk
1644	magazine
1645	see
1646	future
1647	art
1648	movie
1649	establish
1650	factor
1651	investment
1652	point
1653	environment
1654	also
1655	American
1656	reality
1657	nice
1658	ready
1659	program
1660	since
1661	Republican
1662	form
1663	film
1664	response
1665	today
1666	very
1667	across
1668	very
1669	laugh
1670	reflect
1671	person
1672	music
1673	meeting
1674	local
1675	according
1676	present
1677	interesting
1678	though
1679	power
1680	reduce
1681	within
1682	century
1683	quality
1684	face
1685	gun
1686	teacher
1687	yet
1688	term
1689	field
1690	ask
1691	despite
1692	thus
1693	wear
1694	sing
1695	but
1696	whether
1697	poor
1698	value
1699	player
1700	face
\.


--
-- Data for Name: relation_17; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_17 (footwear_id, sku, product_name, base_price, is_active, quantity, dimensions, size_system, sole_material, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1802	audience	understand	596	230	534	six	piece	daughter	\N	\N	\N	\N
1803	federal	as	804	462	235	entire	bag	dinner	\N	\N	\N	\N
1805	edge	avoid	258	591	527	economic	color	officer	\N	\N	\N	\N
1806	management	relationship	841	21	342	age	else	think	\N	\N	\N	\N
1809	by	cost	420	757	858	short	stage	perhaps	\N	\N	\N	\N
1811	science	me	957	122	859	produce	by	benefit	\N	\N	\N	\N
1812	thus	beautiful	388	873	33	style	music	near	\N	\N	\N	\N
1813	peace	national	558	353	77	item	this	fish	\N	\N	\N	\N
1814	low	paper	1000	692	482	behavior	middle	control	\N	\N	\N	\N
1816	kid	customer	410	44	268	voice	positive	TV	\N	\N	\N	\N
1817	level	above	692	402	395	investment	realize	forget	\N	\N	\N	\N
1818	condition	design	16	731	693	still	under	reveal	\N	\N	\N	\N
1819	indicate	age	551	134	76	should	stop	dream	\N	\N	\N	\N
1821	though	wife	202	414	651	board	attack	cover	\N	\N	\N	\N
1823	arm	good	23	795	45	support	best	music	\N	\N	\N	\N
1824	standard	pretty	759	429	134	save	speak	majority	\N	\N	\N	\N
1825	culture	short	762	194	517	event	size	rise	\N	\N	\N	\N
1826	bag	truth	846	291	903	feel	majority	my	\N	\N	\N	\N
1828	audience	Democrat	479	163	305	management	outside	important	\N	\N	\N	\N
1829	speak	head	666	308	600	eat	list	threat	\N	\N	\N	\N
1830	change	building	33	630	537	plan	day	both	\N	\N	\N	\N
1831	ask	later	301	33	500	hold	source	against	\N	\N	\N	\N
1832	major	election	960	168	759	citizen	actually	live	\N	\N	\N	\N
1836	paper	something	356	205	351	now	company	effect	\N	\N	\N	\N
1837	yes	past	251	142	967	every	top	program	\N	\N	\N	\N
1840	yard	career	22	395	592	consider	not	enough	\N	\N	\N	\N
1841	bill	watch	241	754	539	these	gun	sort	\N	\N	\N	\N
1842	nearly	important	564	788	939	against	would	nature	\N	\N	\N	\N
1844	free	position	983	571	9	physical	mother	either	\N	\N	\N	\N
1846	into	city	136	448	839	of	several	source	\N	\N	\N	\N
1847	friend	section	113	582	116	song	maintain	explain	\N	\N	\N	\N
1848	already	leave	180	917	361	in	support	action	\N	\N	\N	\N
1850	but	field	905	603	882	program	nature	eight	\N	\N	\N	\N
1851	church	really	656	718	246	weight	able	they	\N	\N	\N	\N
1852	special	window	73	734	878	impact	event	determine	\N	\N	\N	\N
1854	recognize	difficult	270	793	932	condition	commercial	she	\N	\N	\N	\N
1855	very	letter	653	843	135	lay	finish	music	\N	\N	\N	\N
1856	seven	difficult	474	366	133	while	single	see	\N	\N	\N	\N
1859	keep	idea	178	977	574	reveal	quickly	wrong	\N	\N	\N	\N
1860	also	poor	829	684	697	agent	ahead	five	\N	\N	\N	\N
1863	career	my	841	95	776	could	after	figure	\N	\N	\N	\N
1864	according	you	833	249	976	walk	few	view	\N	\N	\N	\N
1865	recent	social	97	960	926	sit	notice	dream	\N	\N	\N	\N
1866	attack	new	249	731	68	environmental	spring	agent	\N	\N	\N	\N
1867	candidate	marriage	973	693	548	information	stuff	growth	\N	\N	\N	\N
1868	individual	federal	45	922	584	society	again	how	\N	\N	\N	\N
1870	want	time	395	676	99	everything	real	media	\N	\N	\N	\N
1872	financial	look	474	112	222	without	into	benefit	\N	\N	\N	\N
1873	hour	movement	69	525	142	let	employee	class	\N	\N	\N	\N
1877	marriage	particularly	124	664	137	heavy	management	experience	\N	\N	\N	\N
1878	those	project	655	960	406	condition	determine	hour	\N	\N	\N	\N
1879	fact	myself	187	230	818	brother	improve	manager	\N	\N	\N	\N
1880	we	candidate	835	874	878	discover	rate	measure	\N	\N	\N	\N
1881	past	change	51	957	617	these	forget	season	\N	\N	\N	\N
1882	board	everything	7	610	713	hospital	agent	option	\N	\N	\N	\N
1885	could	really	305	153	870	drug	relationship	short	\N	\N	\N	\N
1886	power	always	381	633	388	environmental	start	successful	\N	\N	\N	\N
1887	traditional	total	906	832	626	actually	beyond	range	\N	\N	\N	\N
1890	challenge	military	514	270	480	have	nothing	must	\N	\N	\N	\N
1858	very	expert	458	505	892	might	week	to	\N	[{"barcode": "top", "variant_id": "602", "price_override": "347", "is_active_variant": "622"}]	\N	\N
1807	after	serve	250	442	157	chair	keep	far	\N	[{"barcode": "manager", "variant_id": "876", "price_override": "316", "is_active_variant": "284"}]	\N	\N
1871	my	draw	846	3	588	approach	condition	end	\N	\N	[{"price": "228", "ends_at": "avoid", "price_id": "666", "starts_at": "little"}]	\N
1801	tough	glass	535	732	801	green	all	even	\N	\N	\N	56
1838	a	account	857	42	97	garden	attention	wonder	\N	\N	\N	83
1883	matter	kind	13	832	935	ground	start	certainly	\N	\N	\N	3
1804	huge	best	864	784	90	industry	number	personal	\N	\N	\N	37
1891	second	try	903	817	85	care	various	baby	\N	\N	\N	\N
1893	however	at	941	255	809	gas	out	late	\N	\N	\N	\N
1894	establish	box	733	880	559	thus	could	social	\N	\N	\N	\N
1898	life	Mrs	518	937	236	people	already	bank	\N	\N	\N	\N
1899	great	to	58	381	174	born	around	drop	\N	\N	\N	\N
1900	policy	should	442	838	552	always	technology	product	\N	\N	\N	\N
1839	anything	different	315	324	505	idea	people	especially	[{"url": "husband", "alt_text": "score", "image_id": "406", "sort_order": "489"}]	\N	\N	\N
1808	design	government	70	488	906	speech	consumer	piece	[{"url": "amount", "alt_text": "us", "image_id": "258", "sort_order": "900"}]	\N	\N	\N
1861	imagine	bring	670	741	321	never	place	meet	[{"url": "specific", "alt_text": "near", "image_id": "159", "sort_order": "537"}]	\N	\N	\N
1897	then	start	179	421	132	group	job	beautiful	[{"url": "himself", "alt_text": "hundred", "image_id": "235", "sort_order": "719"}]	\N	\N	\N
1874	heart	rate	189	449	870	security	sign	within	[{"url": "major", "alt_text": "front", "image_id": "961", "sort_order": "709"}]	\N	\N	\N
1892	big	employee	221	953	616	paper	compare	itself	\N	[{"barcode": "whom", "variant_id": "326", "price_override": "77", "is_active_variant": "840"}]	\N	\N
1875	wonder	way	528	938	279	performance	represent	shake	[{"url": "responsibility", "alt_text": "art", "image_id": "56", "sort_order": "63"}]	\N	[{"price": "458", "ends_at": "book", "price_id": "767", "starts_at": "reason"}]	\N
1857	set	seven	312	754	43	by	data	second	\N	\N	[{"price": "993", "ends_at": "miss", "price_id": "446", "starts_at": "reflect"}]	\N
1869	light	able	945	910	531	around	ability	even	\N	\N	[{"price": "9", "ends_at": "Republican", "price_id": "765", "starts_at": "cut"}]	\N
1876	building	travel	826	187	384	speech	trial	indeed	\N	\N	[{"price": "794", "ends_at": "right", "price_id": "47", "starts_at": "sometimes"}]	\N
1845	budget	tax	420	813	398	become	arm	capital	\N	\N	\N	86
1827	such	himself	561	44	424	fact	finally	bar	\N	\N	\N	26
1843	outside	particular	428	567	396	a	continue	determine	\N	\N	\N	95
1849	practice	chance	510	788	894	indeed	itself	wrong	\N	\N	\N	99
1822	conference	forward	446	27	820	southern	serious	spend	\N	\N	\N	3
1810	work	throughout	722	126	930	score	party	likely	\N	\N	\N	66
1834	care	nearly	271	835	460	movement	participant	very	\N	\N	\N	35
1896	method	then	461	33	882	billion	forget	camera	\N	\N	\N	26
1820	simple	product	414	215	110	off	statement	throw	\N	\N	\N	29
1853	best	everything	251	672	814	from	create	how	\N	\N	\N	54
1889	task	college	740	198	170	population	no	realize	\N	\N	\N	22
1895	certain	near	534	535	20	happen	town	when	\N	\N	\N	76
1835	itself	fly	431	36	303	attorney	month	store	\N	\N	\N	17
1833	system	large	954	720	646	cell	itself	foreign	\N	\N	\N	21
1862	information	forget	285	163	367	war	similar	effect	\N	\N	\N	60
1815	them	many	765	687	661	building	agreement	enough	\N	\N	\N	17
1888	performance	plan	348	9	433	off	education	on	\N	\N	\N	58
1884	father	success	711	197	630	ever	rule	ahead	\N	\N	\N	59
\.


--
-- Data for Name: relation_18; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_18 (software_id, license_type) FROM stdin;
2001	out
2002	five
2003	usually
2004	child
2005	her
2006	generation
2007	pattern
2008	fill
2009	most
2010	own
2011	around
2012	forget
2013	hotel
2014	call
2015	collection
2016	several
2017	play
2018	election
2019	feel
2020	line
2021	situation
2022	of
2023	oil
2024	down
2025	success
2026	according
2027	activity
2028	throughout
2029	sound
2030	what
2031	leader
2032	plan
2033	interesting
2034	where
2035	success
2036	worker
2037	interesting
2038	matter
2039	detail
2040	guess
2041	family
2042	do
2043	soon
2044	half
2045	manage
2046	personal
2047	assume
2048	loss
2049	ask
2050	trial
2051	prove
2052	evening
2053	life
2054	sense
2055	where
2056	check
2057	television
2058	continue
2059	prevent
2060	shoulder
2061	series
2062	tree
2063	establish
2064	week
2065	financial
2066	here
2067	likely
2068	call
2069	particular
2070	thought
2071	show
2072	cell
2073	whether
2074	city
2075	area
2076	order
2077	wide
2078	evidence
2079	day
2080	better
2081	serious
2082	Republican
2083	character
2084	boy
2085	alone
2086	open
2087	school
2088	question
2089	audience
2090	eat
2091	nice
2092	entire
2093	paper
2094	issue
2095	send
2096	daughter
2097	care
2098	service
2099	red
2100	seat
\.


--
-- Data for Name: relation_19; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_19 (user_id, email, password_hash, employee_no, role, browsingsession) FROM stdin;
1	cookjeffrey@example.com	tell	\N	user	\N
3	wkim@example.net	suffer	\N	user	\N
4	nicholashull@example.org	finish	\N	user	\N
5	kevinnorris@example.org	or	\N	user	\N
6	qmartin@example.org	great	\N	user	\N
8	lbarnett@example.org	training	\N	user	\N
9	andreahudson@example.com	learn	\N	user	\N
10	michaellee@example.org	at	\N	user	\N
12	brendanbrown@example.com	win	\N	user	\N
13	james59@example.com	decide	\N	user	\N
14	briannabarr@example.com	chance	\N	user	\N
15	robert09@example.org	let	\N	user	\N
16	wheelerwhitney@example.net	around	\N	user	\N
17	archerjeffrey@example.org	Mrs	\N	user	\N
18	sabrinabryant@example.com	ready	\N	user	\N
19	moodydenise@example.org	leader	\N	user	\N
20	rhondabryant@example.net	final	\N	user	\N
22	jenniferhill@example.net	send	\N	user	\N
23	ghooper@example.org	develop	\N	user	\N
24	henrymorales@example.net	yes	\N	user	\N
25	twalton@example.com	keep	\N	user	\N
26	janephillips@example.net	community	\N	user	\N
27	pamela75@example.net	space	\N	user	\N
28	richardyoung@example.org	result	\N	user	\N
29	michaeljackson@example.net	including	\N	user	\N
30	aaronporter@example.net	yard	\N	user	\N
31	eric46@example.com	up	\N	user	\N
32	anthonyjohnson@example.net	large	\N	user	\N
33	michelle04@example.org	author	\N	user	\N
34	millerelizabeth@example.net	feel	\N	user	\N
35	lmoyer@example.net	see	\N	user	\N
36	brettlee@example.net	high	\N	user	\N
37	patrickjackson@example.com	government	\N	user	\N
38	josephburnett@example.com	dinner	\N	user	\N
39	gflores@example.com	simple	\N	user	\N
40	matthewmartin@example.org	nice	\N	user	\N
41	phaney@example.net	to	\N	user	\N
42	angela90@example.net	and	\N	user	\N
43	ruthsmith@example.org	that	\N	user	\N
44	johnsonjennifer@example.com	amount	\N	user	\N
45	bradleyjulia@example.net	above	\N	user	\N
46	walshjoanne@example.org	decide	\N	user	\N
47	sierramullins@example.org	future	\N	user	\N
48	thumphrey@example.com	within	\N	user	\N
49	pam02@example.net	computer	\N	user	\N
50	danielcooley@example.net	start	\N	user	\N
51	terrymendoza@example.net	rate	\N	user	\N
52	crystalblair@example.org	position	\N	user	\N
53	cnolan@example.org	throughout	\N	user	\N
54	kevin19@example.com	own	\N	user	\N
55	martinezjennifer@example.net	without	\N	user	\N
56	gwashington@example.net	skill	\N	user	\N
57	leslie23@example.org	expect	\N	user	\N
58	lisajacobs@example.com	these	\N	user	\N
59	anthony36@example.com	purpose	\N	user	\N
60	josephwells@example.com	reason	\N	user	\N
61	ocampbell@example.com	check	\N	user	\N
62	nroberts@example.com	name	\N	user	\N
63	xnunez@example.org	gas	\N	user	\N
64	laura69@example.org	car	\N	user	\N
65	phillipdavidson@example.com	real	\N	user	\N
67	mirandakaren@example.net	material	\N	user	\N
68	gdavis@example.com	herself	\N	user	\N
69	michelemorales@example.net	actually	\N	user	\N
70	megan29@example.org	rate	\N	user	\N
71	bettyperez@example.com	also	\N	user	\N
72	loriperez@example.net	figure	\N	user	\N
73	erin61@example.org	order	\N	user	\N
74	jacqueline66@example.org	threat	\N	user	\N
75	greynolds@example.com	building	\N	user	\N
76	kevin72@example.net	response	\N	user	\N
78	jeffrey82@example.net	other	\N	user	\N
79	bentleykimberly@example.net	clearly	\N	user	\N
80	chad90@example.net	growth	\N	user	\N
81	dunnerin@example.org	yourself	\N	user	\N
82	courtneyandrews@example.com	successful	\N	user	\N
83	lynn29@example.net	movement	\N	user	\N
84	timothy52@example.org	rest	\N	user	\N
85	lanepatricia@example.com	onto	\N	user	\N
86	greenchris@example.net	poor	\N	user	\N
87	henryharold@example.org	at	\N	user	\N
88	youngbrian@example.org	conference	\N	user	\N
89	cherylwhite@example.com	specific	\N	user	\N
90	shill@example.org	or	\N	user	\N
91	palmersierra@example.com	both	\N	user	\N
92	aanderson@example.net	necessary	\N	user	\N
93	courtney32@example.net	ahead	\N	user	\N
94	jchan@example.com	he	\N	user	\N
95	caitlin24@example.org	visit	\N	user	\N
96	callen@example.net	someone	\N	user	\N
97	pjones@example.com	executive	\N	user	\N
98	mooremitchell@example.com	between	\N	user	\N
99	whitescott@example.net	draw	\N	user	\N
100	jwilliams@example.net	feel	\N	user	\N
101	shanerogers@example.net	plan	\N	customer	\N
103	christina91@example.org	born	\N	customer	\N
104	morrisondaniel@example.org	site	\N	customer	\N
105	dustin21@example.org	let	\N	customer	\N
106	edwinbaker@example.net	trip	\N	customer	\N
107	matthewkent@example.net	describe	\N	customer	\N
108	moralessteven@example.com	offer	\N	customer	\N
109	diane21@example.com	now	\N	customer	\N
110	steven38@example.net	actually	\N	customer	\N
111	michael78@example.org	drop	\N	customer	\N
112	gateserin@example.com	decide	\N	customer	\N
115	ryu@example.com	than	\N	customer	\N
117	jeffrey86@example.org	send	\N	customer	\N
118	williamsjohn@example.org	partner	\N	customer	\N
119	davisandrea@example.org	stand	\N	customer	\N
120	xbrowning@example.net	interview	\N	customer	\N
121	ryan51@example.net	everyone	\N	customer	\N
122	travisallen@example.net	reveal	\N	customer	\N
123	marktaylor@example.com	message	\N	customer	\N
124	gwilliams@example.org	behavior	\N	customer	\N
125	steven62@example.com	relationship	\N	customer	\N
126	emily53@example.com	understand	\N	customer	\N
127	kevin53@example.com	once	\N	customer	\N
128	vday@example.com	maintain	\N	customer	\N
129	sara46@example.org	beat	\N	customer	\N
130	andrealucas@example.com	want	\N	customer	\N
131	donald11@example.net	close	\N	customer	\N
133	tuckermary@example.com	eight	\N	customer	\N
134	kross@example.net	foreign	\N	customer	\N
135	gmoreno@example.org	offer	\N	customer	\N
136	daniellecooper@example.net	deep	\N	customer	\N
137	butlerdorothy@example.org	name	\N	customer	\N
138	hawkinscharles@example.net	agent	\N	customer	\N
139	zharris@example.com	grow	\N	customer	\N
140	bridgescorey@example.org	hot	\N	customer	\N
141	melaniesmith@example.net	describe	\N	customer	\N
142	crosbydrew@example.net	level	\N	customer	\N
143	ashleyrobertson@example.com	expert	\N	customer	\N
144	ysmith@example.com	decision	\N	customer	\N
145	katrina23@example.net	letter	\N	customer	\N
146	smithemily@example.org	hair	\N	customer	\N
147	williamskatrina@example.net	both	\N	customer	\N
149	kelly34@example.org	deal	\N	customer	\N
150	courtney21@example.org	value	\N	customer	\N
151	jparks@example.com	hundred	\N	customer	\N
152	sarah56@example.net	suggest	\N	customer	\N
153	jrichards@example.org	give	\N	customer	\N
154	shieldsmichael@example.com	these	\N	customer	\N
155	woodsmary@example.org	foreign	\N	customer	\N
156	josegeorge@example.org	teacher	\N	customer	\N
157	richardrichardson@example.net	check	\N	customer	\N
158	sarah74@example.com	whose	\N	customer	\N
159	harrisonmark@example.com	name	\N	customer	\N
160	lisa79@example.com	stuff	\N	customer	\N
161	alicesullivan@example.com	they	\N	customer	\N
162	craig30@example.org	parent	\N	customer	\N
163	raymond33@example.org	deal	\N	customer	\N
164	tina03@example.org	administration	\N	customer	\N
165	joshuarobertson@example.com	save	\N	customer	\N
166	richard64@example.org	partner	\N	customer	\N
167	rhondaferguson@example.net	industry	\N	customer	\N
168	michaelmccarty@example.com	speech	\N	customer	\N
170	gilmorebrandy@example.com	tend	\N	customer	\N
171	bradyjamie@example.org	wrong	\N	customer	\N
172	kristinagill@example.net	remain	\N	customer	\N
173	ashley61@example.com	ahead	\N	customer	\N
174	thomaschelsea@example.com	firm	\N	customer	\N
175	dennis54@example.org	argue	\N	customer	\N
176	kaitlyn79@example.net	notice	\N	customer	\N
177	elizabethmartin@example.net	base	\N	customer	\N
178	carpentercody@example.net	just	\N	customer	\N
179	dwayne75@example.net	south	\N	customer	\N
180	sbush@example.org	who	\N	customer	\N
181	sharpkayla@example.com	always	\N	customer	\N
182	alexandriacampbell@example.com	know	\N	customer	\N
184	brittanyrichards@example.org	moment	\N	customer	\N
185	stephen57@example.com	recent	\N	customer	\N
186	joshua61@example.org	any	\N	customer	\N
187	milleremily@example.org	cause	\N	customer	\N
188	jennifer58@example.net	father	\N	customer	\N
189	gpayne@example.org	want	\N	customer	\N
190	brandon08@example.org	open	\N	customer	\N
191	kfuentes@example.com	movement	\N	customer	\N
192	clarkjacqueline@example.com	performance	\N	customer	\N
193	jimmy10@example.net	guess	\N	customer	\N
194	joseph29@example.org	thing	\N	customer	\N
195	tgarrison@example.net	science	\N	customer	\N
196	edward45@example.org	yet	\N	customer	\N
198	sandovallaura@example.org	suggest	\N	customer	\N
199	stevenreed@example.net	radio	\N	customer	\N
200	tsalas@example.com	way	\N	customer	\N
201	qduarte@example.com	wife	\N	primecustomer	\N
203	perezzachary@example.org	on	\N	primecustomer	\N
204	john26@example.org	follow	\N	primecustomer	\N
205	kennethbutler@example.com	within	\N	primecustomer	\N
206	jason26@example.net	arrive	\N	primecustomer	\N
207	marcia29@example.com	central	\N	primecustomer	\N
209	tiffany53@example.com	line	\N	primecustomer	\N
210	hhall@example.com	window	\N	primecustomer	\N
211	carrollsara@example.org	should	\N	primecustomer	\N
212	evan23@example.net	collection	\N	primecustomer	\N
213	bryan15@example.net	system	\N	primecustomer	\N
214	ortiztyler@example.com	just	\N	primecustomer	\N
216	austinevans@example.org	rise	\N	primecustomer	\N
217	snydervalerie@example.com	need	\N	primecustomer	\N
218	kbarnett@example.net	meeting	\N	primecustomer	\N
219	gschmidt@example.net	area	\N	primecustomer	\N
220	youngchristopher@example.org	third	\N	primecustomer	\N
221	owensthomas@example.org	north	\N	primecustomer	\N
223	veronica91@example.net	accept	\N	primecustomer	\N
224	jessica54@example.com	cover	\N	primecustomer	\N
225	ethan54@example.org	candidate	\N	primecustomer	\N
226	pricenatalie@example.net	specific	\N	primecustomer	\N
227	dwilliams@example.net	between	\N	primecustomer	\N
228	vlucas@example.com	live	\N	primecustomer	\N
229	lgray@example.org	building	\N	primecustomer	\N
230	kyoung@example.net	billion	\N	primecustomer	\N
231	ramireztracy@example.net	build	\N	primecustomer	\N
232	edavies@example.net	director	\N	primecustomer	\N
233	theodore92@example.org	significant	\N	primecustomer	\N
234	iperry@example.com	move	\N	primecustomer	\N
235	jamesdunn@example.org	any	\N	primecustomer	\N
236	rachelsmith@example.org	author	\N	primecustomer	\N
237	jeffreybrock@example.com	ground	\N	primecustomer	\N
239	jacqueline98@example.com	find	\N	primecustomer	\N
241	jon05@example.net	small	\N	primecustomer	\N
242	dawnhaley@example.net	price	\N	primecustomer	\N
243	hobbstheresa@example.com	class	\N	primecustomer	\N
244	laurenholder@example.com	program	\N	primecustomer	\N
245	qcarney@example.net	responsibility	\N	primecustomer	\N
247	claytondonald@example.net	near	\N	primecustomer	\N
248	rbell@example.org	staff	\N	primecustomer	\N
249	cynthia56@example.net	success	\N	primecustomer	\N
250	fhoffman@example.org	identify	\N	primecustomer	\N
251	christianthompson@example.com	she	\N	primecustomer	\N
252	michael14@example.com	news	\N	primecustomer	\N
253	mendozatimothy@example.net	position	\N	primecustomer	\N
254	xmorgan@example.com	leg	\N	primecustomer	\N
255	tortega@example.com	state	\N	primecustomer	\N
256	tsantos@example.com	exactly	\N	primecustomer	\N
257	curtisbates@example.net	Republican	\N	primecustomer	\N
258	nancywood@example.org	bed	\N	primecustomer	\N
259	ysimon@example.com	small	\N	primecustomer	\N
260	olsonbobby@example.net	firm	\N	primecustomer	\N
261	usmith@example.org	week	\N	primecustomer	\N
262	fredsmith@example.net	effort	\N	primecustomer	\N
263	michelesullivan@example.org	together	\N	primecustomer	\N
264	uschaefer@example.net	car	\N	primecustomer	\N
267	cwatts@example.org	ability	\N	primecustomer	\N
268	petersonmichelle@example.com	offer	\N	primecustomer	\N
269	larry65@example.net	machine	\N	primecustomer	\N
270	williamsjoshua@example.net	indeed	\N	primecustomer	\N
271	rvincent@example.org	fly	\N	primecustomer	\N
272	hillamy@example.com	executive	\N	primecustomer	\N
273	thompsoneric@example.org	some	\N	primecustomer	\N
274	ebrown@example.org	network	\N	primecustomer	\N
275	bruce36@example.org	bill	\N	primecustomer	\N
276	rothnathan@example.com	often	\N	primecustomer	\N
277	uwright@example.org	four	\N	primecustomer	\N
278	michealbrown@example.org	body	\N	primecustomer	\N
279	collinsconnie@example.com	man	\N	primecustomer	\N
280	michaelperez@example.org	environment	\N	primecustomer	\N
281	tsimmons@example.net	onto	\N	primecustomer	\N
282	thendricks@example.org	guess	\N	primecustomer	\N
283	hmiller@example.net	guy	\N	primecustomer	\N
284	thomasphelps@example.com	card	\N	primecustomer	\N
285	davidmarquez@example.org	wish	\N	primecustomer	\N
286	nashkathy@example.net	chair	\N	primecustomer	\N
287	jsilva@example.com	drop	\N	primecustomer	\N
288	tking@example.net	common	\N	primecustomer	\N
289	jrodriguez@example.com	sure	\N	primecustomer	\N
290	irogers@example.org	ball	\N	primecustomer	\N
291	cshaw@example.net	well	\N	primecustomer	\N
292	karenellis@example.org	hold	\N	primecustomer	\N
293	tmeyers@example.org	successful	\N	primecustomer	\N
295	coryhenderson@example.com	thing	\N	primecustomer	\N
296	denise94@example.com	prepare	\N	primecustomer	\N
297	andremercado@example.com	above	\N	primecustomer	\N
298	vking@example.org	power	\N	primecustomer	\N
299	stevenwallace@example.org	long	\N	primecustomer	\N
300	isanders@example.com	discover	\N	primecustomer	\N
401	susan17@example.org	compare	before	employee	\N
402	williamlang@example.com	establish	move	employee	\N
403	kylegardner@example.org	education	staff	employee	\N
404	marykeith@example.com	exactly	somebody	employee	\N
405	erica01@example.org	cover	pretty	employee	\N
406	oholland@example.com	road	strong	employee	\N
407	gregoryperez@example.com	well	person	employee	\N
409	christopher65@example.net	old	popular	employee	\N
410	plopez@example.com	ball	send	employee	\N
411	fernandezhayden@example.com	director	loss	employee	\N
412	rperkins@example.net	gun	just	employee	\N
414	xobrien@example.net	finally	visit	employee	\N
416	richardcourtney@example.net	continue	show	employee	\N
417	brandon16@example.org	necessary	worry	employee	\N
418	lindseygregory@example.com	trade	space	employee	\N
419	brownjulie@example.org	government	message	employee	\N
420	matthew25@example.com	local	baby	employee	\N
421	ofox@example.com	report	turn	employee	\N
422	parkerelizabeth@example.net	so	major	employee	\N
423	wangheidi@example.org	star	sell	employee	\N
425	howardmichelle@example.org	either	coach	employee	\N
426	tyler58@example.com	far	region	employee	\N
427	patrickthompson@example.org	bad	by	employee	\N
428	howellcharles@example.org	feel	to	employee	\N
429	christina26@example.org	professor	series	employee	\N
430	jessica41@example.net	media	significant	employee	\N
431	aramsey@example.net	attorney	look	employee	\N
432	davidpalmer@example.org	loss	husband	employee	\N
433	rosejackie@example.org	eye	forget	employee	\N
434	barbarataylor@example.org	whose	live	employee	\N
435	castroallison@example.net	show	morning	employee	\N
436	thogan@example.com	support	glass	employee	\N
437	dwilliams@example.net	size	official	employee	\N
438	ushields@example.org	similar	camera	employee	\N
439	dana85@example.org	thousand	yet	employee	\N
440	usmith@example.org	traditional	relationship	employee	\N
441	stacygay@example.com	ability	six	employee	\N
442	torreskenneth@example.net	during	drive	employee	\N
443	mindy68@example.com	will	chair	employee	\N
444	martinezronald@example.org	nor	it	employee	\N
445	thomas02@example.net	woman	cell	employee	\N
446	jacquelineortiz@example.org	no	cost	employee	\N
448	tiffanywhite@example.com	concern	sing	employee	\N
449	welchmelissa@example.net	throw	most	employee	\N
450	davidmorales@example.net	north	hand	employee	\N
451	obrienjames@example.net	perform	sister	employee	\N
452	zwhite@example.net	discover	apply	employee	\N
453	gcooley@example.com	try	respond	employee	\N
454	pricedale@example.net	ground	somebody	employee	\N
455	mjohnson@example.net	meet	yard	employee	\N
456	allendiaz@example.com	TV	standard	employee	\N
457	nicholas84@example.net	movie	room	employee	\N
459	jking@example.net	nice	guy	employee	\N
460	raymond62@example.org	exactly	wrong	employee	\N
462	natalieburns@example.com	deal	against	employee	\N
463	jenniferwilliams@example.net	next	outside	employee	\N
464	smithpaul@example.com	institution	involve	employee	\N
468	katherinewilliams@example.net	save	worker	employee	\N
469	theresa72@example.com	go	can	employee	\N
470	annprice@example.net	soon	place	employee	\N
471	brentbowers@example.org	too	indeed	employee	\N
472	mstout@example.org	bad	her	employee	\N
473	lbecker@example.net	born	religious	employee	\N
474	buckleyjames@example.com	myself	into	employee	\N
475	yhanson@example.net	never	maintain	employee	\N
476	vsmith@example.net	year	month	employee	\N
477	meganpatrick@example.net	debate	system	employee	\N
478	david18@example.org	art	type	employee	\N
479	milesstephanie@example.net	since	style	employee	\N
480	steven96@example.com	institution	word	employee	\N
481	michael93@example.com	property	knowledge	employee	\N
482	chavezrobert@example.org	prepare	someone	employee	\N
483	christopherhiggins@example.net	about	front	employee	\N
484	walshmary@example.com	near	expect	employee	\N
485	robert70@example.net	book	place	employee	\N
486	harpermelanie@example.com	anyone	economic	employee	\N
487	trobertson@example.org	social	entire	employee	\N
488	brian02@example.com	letter	individual	employee	\N
489	tmorgan@example.com	staff	bring	employee	\N
490	donaldhill@example.net	season	matter	employee	\N
491	hernandeznatalie@example.org	about	likely	employee	\N
493	taylorralph@example.org	bank	these	employee	\N
494	ernestsmith@example.org	else	PM	employee	\N
495	marcher@example.org	power	win	employee	\N
496	travisalvarez@example.com	discover	tend	employee	\N
497	vperez@example.net	our	blood	employee	\N
498	travis16@example.net	future	campaign	employee	\N
499	sharon30@example.org	difference	my	employee	\N
500	wendy37@example.com	stop	against	employee	\N
7	williamsdominique@example.com	involve	\N	user	[{"device": "pattern", "session_id": "445", "started_at": "debate"}]
183	rowlanddaniel@example.com	check	\N	customer	[{"device": "left", "session_id": "47", "started_at": "the"}]
116	aguilarcameron@example.org	realize	\N	customer	[{"device": "resource", "session_id": "643", "started_at": "public"}]
238	gracejames@example.net	name	\N	primecustomer	[{"device": "attorney", "session_id": "748", "started_at": "sure"}]
113	keith22@example.org	improve	\N	customer	[{"device": "mother", "session_id": "858", "started_at": "share"}]
461	sclark@example.com	from	maintain	employee	[{"device": "shake", "session_id": "322", "started_at": "girl"}]
66	danielle56@example.org	quite	\N	user	[{"device": "history", "session_id": "685", "started_at": "spend"}]
415	butlertheresa@example.com	among	side	employee	[{"device": "guy", "session_id": "630", "started_at": "still"}]
208	cflores@example.org	young	\N	primecustomer	[{"device": "beyond", "session_id": "813", "started_at": "career"}]
77	ashley39@example.org	deal	\N	user	[{"device": "once", "session_id": "899", "started_at": "piece"}]
467	lopezvictoria@example.net	offer	college	employee	[{"device": "appear", "session_id": "40", "started_at": "language"}]
102	allison55@example.com	save	\N	customer	[{"device": "section", "session_id": "577", "started_at": "interesting"}]
21	patrick76@example.org	computer	\N	user	[{"device": "road", "session_id": "430", "started_at": "commercial"}]
169	stephanie41@example.org	officer	\N	customer	[{"device": "work", "session_id": "717", "started_at": "find"}]
246	coxlori@example.net	class	\N	primecustomer	[{"device": "sport", "session_id": "457", "started_at": "subject"}]
266	thomas60@example.com	audience	\N	primecustomer	[{"device": "to", "session_id": "713", "started_at": "public"}]
492	qcline@example.net	name	voice	employee	[{"device": "protect", "session_id": "268", "started_at": "star"}]
197	kburch@example.net	seem	\N	customer	[{"device": "relate", "session_id": "636", "started_at": "director"}]
148	vgomez@example.net	those	\N	customer	[{"device": "positive", "session_id": "931", "started_at": "step"}]
222	stephaniegarcia@example.org	note	\N	primecustomer	[{"device": "sense", "session_id": "366", "started_at": "American"}]
413	michael70@example.com	citizen	guy	employee	[{"device": "number", "session_id": "672", "started_at": "increase"}]
458	stephaniegarcia@example.net	nation	pay	employee	[{"device": "recently", "session_id": "367", "started_at": "culture"}]
11	kwhite@example.net	boy	\N	user	[{"device": "second", "session_id": "421", "started_at": "heart"}]
294	gbrown@example.com	condition	\N	primecustomer	[{"device": "successful", "session_id": "12", "started_at": "style"}]
424	kenneth76@example.net	personal	sit	employee	[{"device": "level", "session_id": "838", "started_at": "security"}]
2	mitchelllinda@example.com	Democrat	\N	user	[{"device": "on", "session_id": "169", "started_at": "beat"}]
202	bakerdaniel@example.org	beautiful	\N	primecustomer	[{"device": "near", "session_id": "463", "started_at": "list"}]
215	ymeadows@example.net	something	\N	primecustomer	[{"device": "person", "session_id": "649", "started_at": "edge"}, {"device": "with", "session_id": "571", "started_at": "forward"}]
465	kelseypittman@example.net	page	candidate	employee	[{"device": "everything", "session_id": "840", "started_at": "magazine"}]
132	phillip04@example.net	one	\N	customer	[{"device": "change", "session_id": "516", "started_at": "produce"}]
240	jhernandez@example.org	way	\N	primecustomer	[{"device": "deal", "session_id": "87", "started_at": "democratic"}]
114	gallegosalyssa@example.org	student	\N	customer	[{"device": "cover", "session_id": "66", "started_at": "want"}]
447	kallen@example.net	house	dog	employee	[{"device": "few", "session_id": "326", "started_at": "science"}]
265	emily99@example.org	magazine	\N	primecustomer	[{"device": "night", "session_id": "35", "started_at": "matter"}]
408	james99@example.net	reality	speak	employee	[{"device": "last", "session_id": "444", "started_at": "attorney"}]
466	taylor95@example.com	various	possible	employee	[{"device": "address", "session_id": "11", "started_at": "ask"}]
\.


--
-- Data for Name: relation_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_2 (product_id, mv_attributes) FROM stdin;
1	upon
1	town
2	recently
2	different
3	time
3	perform
4	with
4	now
5	firm
5	it
6	soon
6	question
7	power
8	over
8	rich
9	fight
10	card
10	many
11	between
12	begin
13	artist
13	page
14	study
15	full
16	sit
17	professional
17	dark
18	debate
19	company
19	national
20	different
20	doctor
21	against
21	the
22	yard
23	process
24	responsibility
24	attention
25	fast
26	send
26	huge
27	collection
27	brother
28	hold
29	production
30	building
31	each
31	your
32	design
32	medical
33	culture
33	research
34	yeah
35	ball
36	ok
37	report
38	build
39	recent
39	degree
40	between
40	knowledge
41	necessary
42	PM
42	black
43	shake
44	enter
45	market
46	wrong
46	your
47	letter
47	including
48	picture
49	better
49	recently
50	bad
51	why
52	five
52	somebody
53	lot
54	team
54	share
55	opportunity
55	daughter
56	doctor
56	TV
57	tough
57	letter
58	check
59	discover
59	or
60	use
60	health
61	world
61	trip
62	practice
63	force
64	list
65	trade
65	foot
66	natural
67	age
67	once
68	manage
69	age
70	camera
71	yard
72	must
72	maintain
73	term
74	attention
74	understand
75	piece
76	suddenly
77	order
77	technology
78	life
79	yes
80	no
80	apply
81	benefit
82	us
83	play
83	behavior
84	feel
84	tend
85	movement
85	magazine
86	Republican
86	mean
87	court
87	table
88	treat
88	carry
89	toward
90	will
90	second
91	main
91	when
92	between
93	movie
94	work
94	fact
95	student
96	kitchen
96	carry
97	how
97	explain
98	money
98	eye
99	commercial
99	street
100	financial
101	message
102	especially
103	sure
104	poor
104	rather
105	clear
106	blood
106	across
107	product
108	word
109	reduce
109	occur
110	stand
110	another
111	remain
112	its
113	director
114	more
115	measure
116	you
116	paper
117	raise
117	development
118	get
118	huge
119	around
119	side
120	southern
121	term
121	team
122	deep
123	song
124	customer
124	important
125	up
125	throw
126	front
127	describe
127	standard
128	speech
128	political
129	kitchen
130	impact
130	serious
131	culture
131	heavy
132	take
132	single
133	anyone
134	find
134	future
135	bill
136	writer
136	level
137	sure
138	side
138	chair
139	fine
140	away
140	doctor
141	he
141	standard
142	ever
143	green
143	partner
144	least
145	including
146	fly
147	herself
148	difficult
149	anything
150	can
150	others
151	after
151	necessary
152	other
152	hour
153	hold
153	turn
154	feel
155	those
156	capital
157	skill
157	business
158	remember
159	him
160	throw
161	then
161	poor
162	thank
163	court
163	west
164	economy
165	generation
166	program
167	light
168	score
169	toward
169	summer
170	manage
170	store
171	there
172	energy
172	memory
173	child
173	head
174	exactly
174	now
175	rest
175	political
176	suffer
177	at
178	generation
178	peace
179	mention
179	language
180	campaign
181	people
181	partner
182	return
182	decide
183	side
184	deal
184	later
185	begin
186	visit
186	happy
187	resource
188	house
189	generation
189	treatment
190	lot
190	sea
191	action
191	goal
192	suffer
193	dark
193	most
194	cold
194	inside
195	however
196	oil
196	write
197	scientist
198	Mr
198	operation
199	catch
199	responsibility
200	suddenly
201	author
201	sure
202	pull
203	kid
204	hope
204	region
205	stop
206	paper
206	need
207	identify
208	produce
209	physical
209	including
210	anything
211	worker
211	account
212	station
213	herself
213	fire
214	after
215	stand
215	during
216	wall
216	conference
217	tend
218	right
219	class
220	you
220	ball
221	water
221	health
222	than
223	left
224	respond
225	role
225	usually
226	recent
226	what
227	PM
227	left
228	several
229	care
230	hundred
230	card
231	away
231	consumer
232	camera
233	effect
234	second
235	someone
236	foreign
237	education
237	someone
238	fact
239	hand
240	mind
241	alone
242	man
242	level
243	nearly
244	agency
244	doctor
245	particularly
245	all
246	require
247	reduce
248	place
249	foreign
249	simple
250	watch
250	official
251	full
251	stage
252	simple
253	before
254	company
255	author
256	some
256	other
257	respond
257	senior
258	among
259	ready
259	particularly
260	institution
260	price
261	boy
261	none
262	else
262	position
263	the
263	thought
264	key
264	sure
265	police
265	clear
266	eye
266	concern
267	water
268	senior
268	environment
269	your
269	represent
270	during
270	simple
271	budget
271	eight
272	sit
273	down
274	feeling
274	save
275	federal
276	pressure
276	put
277	person
277	above
278	everything
278	expect
279	reflect
280	edge
280	economy
281	find
281	born
282	why
282	light
283	man
283	wish
284	report
284	nearly
285	medical
286	play
287	carry
287	half
288	wide
289	drug
289	speech
290	soon
290	per
291	yet
291	pick
292	without
293	second
294	cell
295	suffer
296	throughout
296	focus
297	thing
297	deep
298	able
299	serve
300	treat
300	notice
301	pattern
301	same
302	listen
303	note
304	somebody
305	national
305	phone
306	foot
306	approach
307	public
307	relationship
308	many
308	a
309	dark
310	happy
311	future
311	consider
312	grow
312	without
313	from
313	PM
314	rock
314	either
315	development
316	way
316	say
317	can
318	design
319	former
320	inside
320	hand
321	billion
321	evening
322	from
322	subject
323	first
324	sit
325	to
325	discover
326	bill
326	security
327	more
327	city
328	outside
328	choice
329	his
330	quickly
331	onto
332	support
333	avoid
334	edge
334	always
335	get
336	stage
337	candidate
337	trouble
338	station
339	customer
340	develop
340	where
341	once
341	the
342	themselves
343	every
344	economy
344	once
345	ball
346	executive
346	sure
347	campaign
347	when
348	board
348	arm
349	plan
349	heavy
350	product
351	never
352	young
353	letter
354	soldier
355	simply
355	prepare
356	matter
357	send
358	agent
359	get
359	radio
360	soon
360	indeed
361	wide
362	better
362	weight
363	edge
363	daughter
364	detail
365	alone
366	power
366	leave
367	season
368	share
369	away
369	billion
370	name
370	friend
371	end
372	site
373	agree
374	tonight
374	them
375	section
375	bad
376	support
376	citizen
377	day
378	west
379	first
380	at
381	station
381	group
382	avoid
382	north
383	couple
383	condition
384	call
384	so
385	clear
386	education
386	again
387	apply
387	move
388	do
389	dog
389	real
390	know
391	natural
392	more
393	political
393	give
394	hot
394	despite
395	present
396	unit
396	age
397	mean
397	red
398	individual
399	recognize
400	owner
401	according
401	well
402	help
402	place
403	painting
404	lot
405	be
405	like
406	open
406	ground
407	Democrat
408	final
409	bed
409	care
410	figure
411	gun
411	top
412	end
413	accept
413	successful
414	return
414	nor
415	who
416	cell
417	board
417	sign
418	poor
418	final
419	old
420	cause
420	step
421	head
422	evidence
423	become
423	large
424	still
425	shake
426	senior
427	begin
427	whom
428	structure
429	present
430	assume
431	create
432	energy
433	understand
433	west
434	form
435	cup
435	school
436	southern
436	live
437	church
437	mother
438	capital
438	gas
439	attack
439	necessary
440	article
441	item
441	east
442	answer
442	establish
443	machine
444	center
445	man
446	whom
447	deal
448	wear
449	throughout
450	would
451	boy
451	can
452	successful
453	food
453	relationship
454	same
454	question
455	establish
456	industry
457	yourself
458	want
459	computer
460	suggest
461	present
462	all
463	type
463	majority
464	use
464	sea
465	boy
466	there
466	best
467	letter
468	similar
469	meet
469	total
470	peace
471	bag
472	state
472	could
473	lawyer
474	office
475	low
475	over
476	too
476	heart
477	check
477	conference
478	level
479	fact
480	debate
481	civil
482	American
482	left
483	third
484	friend
484	although
485	technology
486	send
487	senior
488	contain
489	seven
490	early
490	wide
491	shake
492	themselves
492	example
493	father
494	where
494	million
495	total
495	accept
496	road
496	media
497	impact
498	artist
498	drive
499	sound
500	run
501	administration
502	easy
502	start
503	impact
504	half
505	trade
506	price
506	physical
507	him
508	great
509	pick
510	capital
510	fear
511	offer
511	indicate
1515	son
512	give
513	compare
513	yourself
514	successful
515	walk
515	maybe
516	natural
517	section
517	nation
518	with
518	rest
519	animal
519	smile
520	although
520	purpose
521	question
521	almost
522	picture
523	low
524	structure
524	analysis
525	organization
525	summer
526	as
527	sound
527	popular
528	stuff
529	impact
530	suffer
530	maintain
531	have
532	movement
532	career
533	address
533	behind
534	feeling
535	nice
536	perhaps
536	only
537	owner
537	turn
538	lose
538	stand
539	rather
539	billion
540	top
540	option
541	however
541	degree
542	study
543	physical
543	method
544	our
544	no
545	life
546	city
547	itself
548	action
549	receive
549	history
550	inside
551	understand
551	culture
552	fire
553	day
554	sing
555	range
556	behavior
557	tax
558	operation
559	anyone
560	single
561	card
562	picture
563	free
563	home
564	call
564	month
565	cultural
565	report
566	money
566	look
567	a
568	water
569	central
569	response
570	charge
570	hotel
571	book
571	individual
572	purpose
573	moment
574	form
575	buy
576	since
576	language
577	democratic
577	dinner
578	beat
578	natural
579	form
580	build
580	trial
581	control
582	could
582	hard
583	through
583	yet
584	add
584	finally
585	particular
586	require
586	author
587	church
588	challenge
589	shoulder
589	better
590	near
591	between
591	front
592	despite
592	shake
593	just
593	everyone
594	fast
595	before
595	sea
596	clearly
597	remember
598	ok
598	program
599	focus
600	cell
601	guy
601	rather
602	crime
602	door
603	really
603	treat
604	law
604	or
605	wide
605	where
606	hospital
606	rather
607	stuff
607	they
608	deal
609	safe
609	center
610	magazine
610	my
611	military
612	cut
613	dream
614	into
614	child
615	thus
615	social
616	person
616	real
617	hour
617	interest
618	fight
618	court
619	professor
620	social
620	allow
621	he
621	reveal
622	really
623	hotel
623	since
624	drug
625	charge
625	finish
626	yourself
626	not
627	away
628	pay
628	single
629	country
630	table
630	out
631	art
632	nearly
633	those
634	positive
634	family
635	board
635	debate
636	race
637	else
637	how
638	parent
639	chair
639	market
640	magazine
640	western
641	them
642	exactly
643	choose
644	mention
645	while
646	significant
646	three
647	rock
647	try
648	collection
648	local
649	society
649	structure
650	nice
650	level
651	paper
651	and
652	big
653	eat
653	do
654	let
655	last
655	food
656	test
657	different
658	specific
658	good
659	first
660	design
661	hold
661	might
662	deep
663	officer
663	scientist
664	career
665	than
666	always
666	begin
667	make
668	term
669	outside
669	community
670	true
671	seem
672	attention
673	may
674	never
675	tell
675	across
676	nice
676	fire
677	condition
678	design
679	usually
680	service
681	prove
682	body
682	heavy
683	lay
683	reality
684	hour
685	party
686	board
687	spring
687	time
688	reduce
688	threat
689	daughter
689	research
690	help
690	sort
691	free
692	represent
693	than
694	remember
694	cold
695	major
696	anyone
697	measure
697	media
698	know
698	water
699	answer
699	evidence
700	most
700	number
701	campaign
701	whatever
702	heavy
703	event
704	of
704	leader
705	owner
706	bit
706	indeed
707	subject
707	teacher
708	fact
709	indeed
709	wrong
710	outside
711	cost
711	white
712	likely
712	name
713	certainly
714	great
715	themselves
716	better
717	especially
717	war
718	per
719	series
720	note
720	any
721	hear
722	me
722	own
723	wrong
723	drive
724	arrive
725	idea
726	treat
727	mother
727	rise
728	account
729	daughter
729	yet
730	treat
730	father
731	discover
731	so
732	professor
732	theory
733	my
733	share
734	region
735	cup
735	describe
736	however
736	natural
737	including
738	go
738	ask
739	mind
739	season
740	beautiful
740	special
741	prevent
742	later
742	serve
743	clearly
744	upon
745	series
745	education
746	her
746	war
747	bar
748	state
749	performance
750	raise
751	staff
751	low
752	pull
752	tree
753	task
753	interview
754	draw
755	forward
755	TV
756	drive
756	big
757	notice
758	north
759	college
760	now
761	cause
762	nature
762	direction
763	civil
1515	the
764	idea
764	sister
765	particularly
766	property
767	foreign
767	bit
768	list
768	such
769	site
769	age
770	drive
770	close
771	hear
772	ability
773	attack
773	hard
774	her
775	better
776	trial
776	anything
777	challenge
777	law
778	through
778	head
779	hope
779	why
780	may
781	event
782	figure
782	stay
783	reality
784	thousand
784	page
785	guy
785	threat
786	can
786	detail
787	analysis
788	spring
789	many
790	energy
791	option
792	development
793	well
794	interview
794	agreement
795	degree
796	blue
796	compare
797	series
797	it
798	religious
798	pay
799	you
799	leg
800	talk
801	prepare
801	food
802	performance
802	but
803	fear
803	public
804	worker
804	anyone
805	concern
805	American
806	chance
807	back
808	million
809	her
809	beyond
810	firm
811	million
812	child
812	when
813	three
813	Mr
814	loss
815	art
816	finally
816	Republican
817	take
817	whose
818	specific
818	why
819	so
820	sea
820	parent
821	something
821	imagine
822	what
822	foot
823	director
823	man
824	government
825	only
825	alone
826	so
827	step
827	high
828	just
828	consider
829	increase
829	consider
830	record
831	right
832	song
833	hotel
833	technology
834	computer
834	compare
835	weight
835	prepare
836	improve
836	its
837	form
838	explain
838	great
839	mother
839	bill
840	environment
840	food
841	pick
841	despite
842	response
842	fill
843	adult
843	building
844	across
845	ok
845	shake
846	high
846	under
847	him
848	around
849	debate
850	military
851	finish
852	walk
852	easy
853	town
854	responsibility
855	mind
855	investment
856	we
856	me
857	positive
858	vote
858	ready
859	whose
860	go
860	officer
861	future
861	plant
862	minute
862	seem
863	wind
863	measure
864	project
864	which
865	dog
865	score
866	deep
867	ability
868	different
868	increase
869	by
870	mention
871	size
872	fire
872	really
873	message
873	must
874	compare
874	eight
875	production
876	successful
876	pattern
877	smile
878	sure
878	popular
879	what
879	including
880	place
881	wind
881	cultural
882	heart
883	win
884	cut
884	will
885	let
886	discussion
887	he
888	stuff
889	really
890	write
890	mean
891	a
892	laugh
892	continue
893	price
894	security
895	detail
896	senior
897	marriage
897	scene
898	civil
899	have
899	time
900	top
901	build
902	also
903	human
903	write
904	him
904	bit
905	sound
906	partner
907	forward
908	big
908	add
909	city
909	design
910	then
911	society
911	news
912	individual
912	job
913	college
914	sister
915	remain
916	rise
916	building
917	history
918	big
919	worker
920	total
921	away
921	central
922	present
923	best
923	peace
924	loss
924	evening
925	camera
926	why
927	manage
927	debate
928	dark
929	song
929	explain
930	authority
931	hundred
932	sell
932	other
933	main
934	maybe
934	office
935	student
935	indicate
936	movie
936	itself
937	why
937	become
938	range
938	difference
939	baby
939	short
940	peace
940	sure
941	mouth
941	public
942	focus
943	decide
943	actually
944	management
944	better
945	can
945	eight
946	pass
946	indicate
947	public
948	popular
949	possible
949	discover
950	bar
950	owner
951	bed
951	memory
952	own
953	official
954	race
955	indicate
955	most
956	deal
957	yes
958	experience
959	community
959	base
960	man
960	return
961	success
962	huge
963	season
964	series
964	better
965	president
966	girl
966	realize
967	open
967	statement
968	general
968	writer
969	protect
970	nothing
970	deep
971	happen
971	age
972	nor
972	social
973	cost
973	lead
974	hear
975	place
975	trip
976	act
977	career
977	data
978	sea
979	agree
980	call
981	pattern
981	party
982	difficult
982	wish
983	sure
983	light
984	these
984	great
985	walk
986	anything
986	contain
987	sometimes
987	decision
988	us
988	election
989	form
989	south
990	success
990	kind
991	break
992	area
992	indeed
993	thus
993	avoid
994	place
995	central
996	until
996	already
997	third
998	sort
999	result
1000	security
1001	father
1002	hope
1003	one
1003	interesting
1004	final
1005	pretty
1006	office
1006	concern
1007	south
1008	none
1009	treatment
1010	sport
1011	seven
1011	pressure
1012	dog
1013	true
1014	by
1015	mouth
1015	serve
1016	happy
1016	perform
1017	stop
1018	executive
1018	fact
1019	grow
1019	several
1020	difficult
1020	hold
1021	month
1022	old
1023	cultural
1024	of
1025	oil
1026	husband
1027	young
1027	sister
1028	politics
1029	appear
1030	practice
1030	result
1031	either
1031	little
1032	machine
1032	second
1033	poor
1034	history
1035	get
1036	system
1036	war
1037	commercial
1037	explain
1038	edge
1039	dream
1039	member
1040	usually
1040	event
1041	than
1042	firm
1042	door
1043	increase
1043	same
1044	imagine
1045	kitchen
1045	increase
1046	next
1047	say
1048	star
1048	you
1049	simple
1050	tonight
1051	instead
1051	specific
1052	issue
1052	group
1053	lose
1053	increase
1054	beyond
1054	rule
1055	common
1056	likely
1056	office
1057	participant
1058	leg
1059	sense
1060	too
1060	strong
1061	night
1061	person
1062	price
1063	movement
1064	against
1064	individual
1065	firm
1065	ground
1066	plan
1066	find
1067	way
1068	positive
1069	class
1070	career
1071	receive
1072	worker
1072	individual
1073	whatever
1074	draw
1074	cell
1075	rock
1076	usually
1076	year
1077	event
1077	write
1078	walk
1078	I
1079	answer
1079	prepare
1080	blood
1080	present
1081	business
1082	fear
1083	much
1084	blue
1084	discover
1085	organization
1085	reach
1086	behavior
1087	bed
1087	paper
1088	budget
1089	several
1089	student
1090	itself
1090	run
1091	relationship
1092	successful
1093	ahead
1094	magazine
1095	long
1095	nothing
1096	go
1096	technology
1097	call
1098	eye
1098	time
1099	suddenly
1099	baby
1100	board
1100	collection
1101	show
1102	avoid
1103	detail
1104	reduce
1105	employee
1105	natural
1106	word
1106	challenge
1107	property
1107	political
1108	put
1109	truth
1110	ahead
1110	purpose
1111	box
1112	suffer
1113	chance
1113	could
1114	worker
1115	result
1116	true
1117	buy
1117	shoulder
1118	whose
1119	study
1119	share
1120	final
1121	bed
1121	poor
1122	language
1122	treat
1123	clear
1123	lead
1124	training
1125	current
1126	so
1126	inside
1127	these
1127	listen
1128	on
1128	call
1129	age
1130	sort
1131	trade
1131	science
1132	woman
1132	sound
1133	ability
1133	hope
1134	forward
1134	free
1135	organization
1136	car
1136	south
1137	history
1138	street
1139	trial
1140	parent
1140	data
1141	social
1142	leader
1143	former
1143	clear
1144	decide
1144	best
1145	whose
1145	something
1146	necessary
1146	sign
1147	throw
1147	service
1148	number
1148	size
1149	machine
1149	few
1150	hospital
1151	physical
1151	customer
1152	wonder
1153	continue
1154	man
1155	reason
1155	beyond
1156	travel
1157	south
1157	quite
1158	partner
1158	safe
1159	southern
1159	but
1160	machine
1160	apply
1161	point
1161	face
1162	suddenly
1163	increase
1163	tonight
1164	throw
1165	local
1166	seem
1166	same
1167	foreign
1167	beyond
1168	sport
1168	old
1169	cause
1170	painting
1171	others
1171	mind
1172	a
1172	perform
1173	Mrs
1174	group
1175	later
1175	join
1176	stock
1177	reason
1178	enough
1178	affect
1179	fight
1180	relationship
1180	individual
1181	hand
1181	leader
1182	line
1183	attack
1184	before
1185	former
1185	each
1186	rather
1187	must
1188	current
1188	collection
1189	more
1189	seem
1190	any
1190	success
1191	news
1191	left
1192	century
1193	magazine
1194	fund
1195	attention
1196	either
1196	appear
1197	partner
1197	position
1198	of
1198	road
1199	material
1200	describe
1200	point
1201	camera
1202	analysis
1202	wall
1203	very
1203	thus
1204	under
1205	seat
1205	daughter
1206	rest
1207	hold
1207	tend
1208	size
1209	side
1210	where
1211	manager
1211	they
1212	all
1212	imagine
1213	prepare
1213	game
1214	operation
1215	its
1216	early
1216	improve
1217	reach
1218	rule
1219	black
1220	along
1221	lead
1222	husband
1222	financial
1223	explain
1224	thought
1224	somebody
1225	window
1225	current
1226	already
1226	food
1227	lead
1227	short
1228	dark
1229	carry
1230	rest
1231	point
1232	might
1233	course
1234	water
1235	decide
1236	relationship
1236	from
1237	surface
1237	usually
1238	author
1239	chair
1240	home
1241	difference
1241	perhaps
1242	skill
1243	fight
1243	east
1244	lawyer
1245	participant
1246	else
1247	everything
1248	memory
1249	cover
1250	total
1251	majority
1251	eye
1252	next
1252	seem
1253	likely
1253	officer
1254	drive
1254	some
1255	major
1256	mind
1256	reduce
1257	authority
1258	court
1259	boy
1259	daughter
1260	director
1260	eye
1261	each
1262	discussion
1263	those
1264	eat
1265	part
1266	book
1266	put
1267	mission
1268	effort
1268	without
1269	in
1270	financial
1270	within
1271	week
1272	research
1272	huge
1273	often
1273	computer
1274	hear
1274	along
1275	my
1276	now
1276	civil
1277	myself
1278	condition
1278	strategy
1279	a
1279	base
1280	interest
1280	investment
1281	citizen
1282	other
1282	detail
1283	arm
1284	her
1285	attention
1285	than
1286	teach
1287	believe
1287	Congress
1288	together
1288	laugh
1289	develop
1290	individual
1291	away
1291	house
1292	hold
1293	own
1293	traditional
1294	dog
1294	still
1295	nice
1296	debate
1297	bank
1298	chair
1299	measure
1300	particular
1301	order
1301	help
1302	us
1302	hair
1303	owner
1304	occur
1304	home
1305	ok
1306	reduce
1307	identify
1307	word
1308	Congress
1309	policy
1310	policy
1310	clear
1311	sit
1311	theory
1312	security
1312	field
1313	to
1313	material
1314	such
1314	eight
1315	theory
1315	floor
1316	effect
1317	pick
1317	part
1318	now
1318	road
1319	various
1320	ball
1320	all
1321	such
1321	feeling
1322	can
1323	light
1324	eat
1324	history
1325	security
1325	base
1326	fine
1327	realize
1328	notice
1329	challenge
1329	word
1330	since
1330	doctor
1331	side
1332	apply
1332	real
1333	month
1334	assume
1334	usually
1335	food
1335	huge
1336	under
1336	responsibility
1337	behavior
1337	attorney
1338	room
1338	current
1339	seem
1339	city
1340	attorney
1340	hand
1341	ago
1341	democratic
1342	apply
1342	charge
1343	speech
1343	dark
1344	prepare
1344	those
1345	million
1346	fact
1346	mean
1347	wife
1348	line
1348	just
1349	condition
1349	a
1350	by
1350	you
1351	trial
1351	technology
1352	together
1352	executive
1353	strong
1353	PM
1354	left
1354	else
1355	both
1355	where
1356	speak
1356	argue
1357	add
1358	threat
1359	teacher
1360	everyone
1361	father
1362	off
1363	attack
1363	candidate
1364	election
1364	experience
1365	for
1365	same
1366	hard
1366	indicate
1367	project
1367	might
1368	street
1369	live
1370	material
1371	too
1372	guess
1372	middle
1373	thing
1373	performance
1374	sister
1374	let
1375	film
1376	federal
1376	that
1377	him
1378	no
1379	even
1380	stage
1381	understand
1381	available
1382	million
1382	boy
1383	deep
1384	world
1384	however
1385	these
1385	win
1386	good
1387	simply
1387	include
1388	language
1388	represent
1389	true
1390	book
1390	offer
1391	visit
1391	special
1392	discover
1393	himself
1394	assume
1395	among
1396	rise
1397	matter
1397	involve
1398	finally
1398	knowledge
1399	music
1399	newspaper
1400	what
1400	throw
1401	contain
1401	win
1402	mother
1403	take
1403	center
1404	arrive
1404	catch
1405	entire
1406	machine
1406	view
1407	whatever
1408	exist
1409	continue
1409	see
1410	such
1410	place
1411	receive
1412	help
1412	contain
1413	her
1414	person
1415	hope
1416	fly
1417	course
1418	around
1419	majority
1420	during
1420	wide
1421	group
1421	record
1422	something
1423	process
1424	effort
1424	benefit
1425	hope
1426	consumer
1427	would
1427	spend
1428	rate
1429	fall
1430	animal
1431	sure
1432	senior
1432	light
1433	center
1433	her
1434	between
1435	audience
1436	expert
1436	artist
1437	Mr
1437	candidate
1438	put
1439	available
1440	course
1440	help
1441	design
1441	large
1442	fill
1442	nice
1443	public
1443	this
1444	project
1445	police
1445	across
1446	treat
1447	when
1448	anything
1449	discover
1449	tough
1450	in
1451	probably
1451	line
1452	age
1452	rate
1453	mind
1453	president
1454	believe
1454	hospital
1455	eight
1456	gun
1456	cold
1457	others
1458	reach
1458	finish
1459	give
1460	sport
1461	shoulder
1462	popular
1462	scene
1463	strong
1464	sit
1464	easy
1465	situation
1466	space
1466	any
1467	almost
1468	fear
1468	again
1469	draw
1469	sort
1470	carry
1471	task
1472	born
1472	degree
1473	husband
1473	building
1474	approach
1475	threat
1475	benefit
1476	environment
1476	list
1477	heavy
1477	collection
1478	government
1478	wonder
1479	one
1479	up
1480	or
1481	manage
1481	serious
1482	source
1482	business
1483	professor
1483	after
1484	himself
1485	where
1486	go
1487	few
1488	trip
1488	parent
1489	game
1489	current
1490	election
1490	dream
1491	television
1491	each
1492	mean
1492	every
1493	accept
1493	town
1494	us
1494	identify
1495	look
1495	indicate
1496	practice
1497	sport
1498	bring
1499	focus
1499	manage
1500	yourself
1500	reason
1501	kid
1501	protect
1502	catch
1503	miss
1504	avoid
1505	daughter
1506	family
1506	majority
1507	human
1508	already
1508	material
1509	know
1509	debate
1510	claim
1510	total
1511	end
1511	subject
1512	mind
1513	wrong
1514	each
1514	song
1516	when
1517	travel
1518	wonder
1518	realize
1519	night
1520	bag
1521	high
1522	myself
1523	including
1524	dinner
1525	thus
1525	find
1526	similar
1527	increase
1528	leg
1528	road
1529	these
1530	include
1530	customer
1531	the
1531	turn
1532	short
1533	election
1533	little
1534	bit
1534	stand
1535	any
1535	citizen
1536	stand
1537	each
1538	position
1539	better
1540	thing
1540	service
1541	husband
1541	role
1542	choice
1543	very
1543	mind
1544	science
1545	parent
1546	financial
1546	staff
1547	idea
1547	her
1548	determine
1548	thank
1549	decide
1549	middle
1550	help
1551	feel
1552	particularly
1552	hard
1553	voice
1554	forget
1555	third
1556	idea
1557	lead
1558	politics
1558	sell
1559	just
1559	hear
1560	compare
1560	letter
1561	speak
1562	finally
1563	kid
1564	official
1565	stock
1566	tend
1567	scientist
1568	success
1569	service
1570	way
1570	during
1571	along
1572	fast
1573	ago
1574	him
1574	exactly
1575	side
1576	commercial
1577	senior
1577	marriage
1578	record
1578	what
1579	usually
1579	market
1580	answer
1580	second
1581	color
1581	last
1582	I
1583	even
1583	which
1584	its
1585	us
1586	analysis
1586	stand
1587	chance
1587	baby
1588	analysis
1589	edge
1590	institution
1590	whether
1591	it
1592	himself
1592	despite
1593	type
1593	still
1594	myself
1594	radio
1595	author
1596	ground
1597	possible
1597	program
1598	consumer
1598	effort
1599	necessary
1599	seek
1600	image
1600	tree
1601	suggest
1601	science
1602	doctor
1603	test
1603	specific
1604	party
1604	help
1605	rather
1605	certainly
1606	thing
1607	spring
1607	begin
1608	fill
1609	front
1610	view
1611	discussion
1611	bring
1612	think
1613	bill
1614	lot
1614	culture
1615	few
1616	trial
1617	technology
1617	avoid
1618	loss
1619	option
1620	team
1620	also
1621	religious
1621	begin
1622	heart
1622	charge
1623	great
1624	black
1625	within
1626	natural
1626	hotel
1627	into
1628	quality
1628	head
1629	whether
1630	investment
1631	represent
1631	inside
1632	wrong
1632	themselves
1633	standard
1634	laugh
1635	civil
1635	since
1636	what
1636	such
1637	friend
1637	rest
1638	thought
1639	design
1640	southern
1640	enter
1641	process
1642	environmental
1643	easy
1644	will
1644	career
1645	why
1645	role
1646	book
1647	husband
1648	central
1649	degree
1649	agency
1650	central
1650	admit
1651	charge
1652	trouble
1652	how
1653	science
1654	tend
1654	forget
1655	sign
1655	former
1656	sport
1657	thus
1657	try
1658	understand
1658	federal
1659	southern
1659	by
1660	senior
1660	heavy
1661	center
1662	training
1662	behind
1663	machine
1663	maintain
1664	always
1665	eye
1665	fire
1666	popular
1666	light
1667	total
1667	design
1668	sound
1669	small
1669	involve
1670	discuss
1670	security
1671	my
1671	meet
1672	four
1672	have
1673	behavior
1674	degree
1675	cultural
1675	time
1676	everybody
1676	particular
1677	require
1678	road
1679	for
1679	imagine
1680	special
1681	describe
1681	cultural
1682	least
1683	hair
1683	south
1684	claim
1684	decade
1685	teach
1685	level
1686	each
1687	I
1687	door
1688	personal
1688	imagine
1689	commercial
1690	improve
1690	station
1691	ability
1691	rise
1692	court
1693	method
1694	cold
1694	show
1695	shake
1696	fund
1697	suddenly
1697	themselves
1698	themselves
1699	bill
1699	early
1700	but
1701	investment
1702	ability
1702	marriage
1703	simple
1703	skill
1704	pull
1705	among
1706	less
1706	need
1707	enjoy
1708	sometimes
1709	area
1710	must
1711	nearly
1711	performance
1712	along
1712	church
1713	debate
1713	information
1714	benefit
1715	apply
1716	who
1717	kind
1717	key
1718	huge
1719	assume
1719	give
1720	should
1720	increase
1721	drop
1722	image
1722	future
1723	strong
1724	choose
1724	keep
1725	once
1726	whom
1726	free
1727	reason
1728	kitchen
1729	buy
1730	statement
1730	sport
1731	authority
1732	contain
1732	cost
1733	sing
1733	bad
1734	during
1735	manager
1735	attack
1736	return
1737	as
1737	receive
1738	recently
1738	plant
1739	nice
1740	whose
1740	page
1741	but
1742	if
1743	hope
1744	blood
1744	sound
1745	until
1746	eye
1746	operation
1747	smile
1747	these
1748	already
1748	chair
1749	find
1749	them
1750	imagine
1750	authority
1751	campaign
1752	huge
1753	those
1754	sort
1755	pattern
1755	particularly
1756	my
1757	send
1758	majority
1759	into
1760	think
1760	staff
1761	site
1762	behind
1763	key
1763	memory
1764	exist
1765	thousand
1766	because
1767	individual
1767	need
1768	instead
1768	hair
1769	thing
1769	former
1770	quite
1770	relate
1771	population
1771	partner
1772	model
1772	visit
1773	yet
1773	this
1774	thank
1774	seek
1775	per
1776	foot
1777	bag
1778	development
1778	agree
1779	church
1780	my
1780	specific
1781	throw
1782	with
1782	role
1783	fact
1783	attention
1784	Congress
1785	appear
1785	statement
1786	organization
1787	success
1787	today
1788	debate
1789	mother
1789	democratic
1790	enjoy
1791	foot
1792	popular
1793	bag
1793	very
1794	direction
1794	growth
1795	him
1795	teach
1796	affect
1797	magazine
1798	help
1798	current
1799	race
1800	these
1800	become
1801	image
1801	listen
1802	within
1803	important
1804	past
1804	quickly
1805	art
1805	describe
1806	listen
1806	couple
1807	guy
1807	professor
1808	describe
1808	everything
1809	current
1810	business
1810	national
1811	value
1811	build
1812	push
1813	food
1813	agency
1814	husband
1814	sea
1815	writer
1816	first
1816	he
1817	politics
1817	car
1818	history
1819	task
1819	second
1820	tax
1820	center
1821	stop
1821	father
1822	include
1822	might
1823	course
1823	while
1824	agent
1825	site
1825	station
1826	address
1827	magazine
1828	fact
1829	all
1829	son
1830	whom
1830	finish
1831	who
1832	throughout
1832	training
1833	teach
1833	claim
1834	thought
1835	run
1836	candidate
1837	sense
1838	job
1839	recently
1839	resource
1840	news
1840	Democrat
1841	mother
1842	cell
1843	behind
1844	oil
1844	network
1845	customer
1846	strategy
1847	film
1847	camera
1848	beautiful
1848	fire
1849	onto
1850	board
1850	million
1851	nice
1851	rock
1852	hotel
1852	catch
1853	region
1854	home
1855	another
1856	hour
1857	concern
1857	child
1858	alone
1859	customer
1859	baby
1860	art
1860	note
1861	show
1861	purpose
1862	word
1862	feel
1863	simple
1863	others
1864	economy
1864	president
1865	statement
1865	travel
1866	us
1866	difficult
1867	tell
1867	institution
1868	interview
1868	fine
1869	because
1870	push
1871	cell
1872	almost
1872	great
1873	tough
1873	discussion
1874	apply
1875	ability
1875	hard
1876	color
1877	floor
1878	scene
1879	contain
1879	development
1880	style
1881	court
1882	again
1883	range
1883	not
1884	wife
1884	run
1885	debate
1885	green
1886	rest
1887	large
1888	imagine
1888	push
1889	cut
1890	way
1891	by
1892	several
1893	whole
1894	investment
1894	east
1895	few
1896	under
1897	consumer
1897	prove
1898	leader
1899	keep
1900	understand
1901	political
1902	television
1903	a
1903	later
1904	quality
1905	citizen
1905	various
1906	travel
1907	they
1908	your
1909	organization
1909	surface
1910	season
1910	head
1911	then
1912	official
1913	data
1914	game
1914	next
1915	clear
1915	manage
1916	usually
1916	stock
1917	fund
1918	before
1919	window
1919	almost
1920	reflect
1921	traditional
1922	miss
1922	book
1923	color
1924	claim
1924	sure
1925	bag
1926	role
1927	evidence
1927	type
1928	east
1928	note
1929	growth
1929	trip
1930	follow
1930	while
1931	price
1932	cultural
1932	which
1933	through
1934	play
1934	bar
1935	head
1935	medical
1936	operation
1936	per
1937	film
1938	some
1938	itself
1939	suffer
1939	leave
1940	hotel
1941	however
1941	ability
1942	allow
1942	simple
1943	parent
1944	today
1945	industry
1945	Mrs
1946	similar
1946	lose
1947	minute
1947	general
1948	along
1949	chance
1950	program
1951	where
1951	hour
1952	population
1952	would
1953	detail
1953	alone
1954	scientist
1954	TV
1955	development
1956	serve
1956	southern
1957	southern
1958	research
1958	human
1959	garden
1960	success
1960	drive
1961	improve
1961	beautiful
1962	team
1963	opportunity
1964	me
1965	power
1966	across
1967	group
1968	should
1968	something
1969	yet
1970	believe
1971	minute
1971	apply
1972	anyone
1973	election
1974	least
1975	notice
1976	age
1977	moment
1978	alone
1978	training
1979	writer
1979	event
1980	leader
1980	like
1981	every
1981	son
1982	yes
1983	guy
1983	third
1984	however
1985	available
1986	themselves
1986	agreement
1987	new
1988	forward
1989	spring
1990	particularly
1990	effort
1991	class
1991	scientist
1992	foreign
1993	tax
1993	dark
1994	around
1994	project
1995	section
1996	interview
1996	usually
1997	strategy
1997	manager
1998	statement
1998	finish
1999	ball
2000	debate
2001	over
2002	rise
2003	send
2003	follow
2004	practice
2005	stop
2005	detail
2006	lawyer
2007	take
2007	prove
2008	get
2008	plan
2009	leader
2010	relationship
2011	energy
2011	firm
2012	bring
2013	so
2014	traditional
2014	together
2015	technology
2015	street
2016	lose
2017	sign
2018	return
2019	finally
2020	teacher
2020	citizen
2021	television
2021	claim
2022	bad
2022	design
2023	produce
2024	class
2024	as
2025	method
2025	work
2026	local
2027	window
2027	alone
2028	matter
2029	weight
2030	skin
2031	see
2031	whole
2032	according
2033	class
2033	stand
2034	light
2035	billion
2036	table
2037	newspaper
2038	night
2039	leave
2040	will
2040	soon
2041	check
2041	budget
2042	here
2042	purpose
2043	method
2043	rest
2044	whom
2044	arrive
2045	industry
2046	generation
2046	sense
2047	paper
2047	although
2048	pass
2049	fine
2049	kid
2050	value
2050	oil
2051	single
2051	economic
2052	reflect
2053	describe
2054	south
2054	toward
2055	among
2056	provide
2056	military
2057	garden
2058	stock
2058	themselves
2059	coach
2060	understand
2061	structure
2061	pull
2062	peace
2062	yes
2063	seven
2064	measure
2064	around
2065	remember
2066	ability
2066	power
2067	clearly
2068	end
2069	system
2070	billion
2071	wide
2071	join
2072	or
2073	PM
2074	act
2075	Democrat
2076	serious
2076	before
2077	president
2077	service
2078	social
2079	go
2079	agent
2080	pressure
2081	development
2081	within
2082	never
2082	matter
2083	individual
2083	quite
2084	than
2085	give
2085	lead
2086	government
2087	inside
2087	art
2088	management
2088	material
2089	matter
2090	onto
2091	politics
2091	shake
2092	section
2092	move
2093	health
2093	force
2094	attorney
2094	possible
2095	third
2095	total
2096	herself
2097	trouble
2098	environment
2099	he
2099	lot
2100	system
\.


--
-- Data for Name: relation_20; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_20 (user_id, mv_user) FROM stdin;
1	nice
1	small
2	avoid
2	raise
2	television
2	table
3	individual
3	something
3	support
4	former
4	school
5	myself
5	drug
5	thought
6	I
7	least
8	everyone
9	even
9	character
10	stop
10	along
10	tonight
10	both
11	former
11	individual
11	citizen
11	forward
12	situation
13	too
13	deep
13	wish
13	room
14	job
15	traditional
15	different
16	reveal
17	plant
17	occur
17	light
18	attention
19	to
19	his
19	mother
19	than
20	probably
20	else
21	entire
21	close
22	need
22	perhaps
23	key
23	day
24	production
24	very
24	whose
24	like
25	system
25	guy
26	rest
26	pattern
27	go
27	couple
28	year
28	agency
28	north
29	series
30	consider
30	big
30	wrong
31	have
32	manager
32	administration
32	house
32	a
33	might
33	anything
33	guy
33	director
34	friend
35	social
36	expect
36	bring
36	shoulder
36	with
37	produce
37	whose
38	month
38	purpose
38	high
38	others
39	window
39	our
39	store
40	soldier
41	book
42	Mrs
43	issue
43	successful
44	three
44	receive
45	share
45	animal
45	reduce
46	argue
47	anyone
47	above
47	song
48	arm
48	back
49	sing
50	discussion
51	pay
51	movie
51	exist
51	trouble
52	son
52	test
53	ball
53	age
53	theory
54	camera
55	some
56	special
56	before
56	also
57	prevent
57	as
58	mean
58	whole
59	kid
59	option
60	his
60	audience
60	between
61	as
61	case
61	military
61	science
62	he
62	long
62	choice
63	I
64	begin
65	range
65	appear
65	thank
66	performance
66	actually
67	statement
68	region
68	kid
68	provide
69	simply
69	doctor
69	great
70	responsibility
70	question
71	responsibility
72	energy
72	point
72	tax
72	executive
73	article
73	fact
74	tough
74	tree
74	alone
75	off
75	voice
75	entire
76	argue
76	before
76	project
76	open
77	area
77	report
77	movement
77	say
78	reduce
78	similar
78	bill
78	side
79	level
79	provide
79	late
80	individual
80	movement
80	although
80	night
81	benefit
82	common
83	I
84	director
84	hard
85	again
85	stock
85	either
86	hard
86	clearly
87	try
88	hair
89	well
89	main
89	movement
90	fill
90	chair
91	protect
91	suffer
91	professional
91	company
92	close
92	form
92	public
92	feel
93	suddenly
94	student
95	direction
95	serious
95	song
95	machine
96	front
96	manager
96	with
97	board
97	able
97	seek
98	often
99	moment
100	free
100	have
100	herself
101	everyone
101	statement
102	difference
102	since
102	media
102	stage
103	clear
103	us
104	what
104	bag
104	go
104	determine
105	be
105	provide
106	though
106	too
107	other
107	film
108	effort
109	six
109	during
110	bed
110	enough
110	great
111	forward
111	prepare
111	card
111	government
112	room
112	possible
112	marriage
112	begin
113	whose
113	sense
113	clear
113	exist
114	he
115	song
115	finish
116	they
117	indeed
117	specific
117	life
117	other
118	visit
118	challenge
118	each
118	recent
119	oil
119	note
120	prevent
120	clear
120	model
120	watch
121	old
121	happen
121	responsibility
121	fish
122	plan
122	if
122	drive
123	ahead
123	level
123	news
123	less
124	together
124	respond
125	sense
125	week
125	executive
126	picture
127	operation
127	each
128	item
128	cost
128	large
129	player
129	design
129	per
129	I
130	daughter
131	market
131	fill
132	represent
133	that
133	all
133	before
134	each
135	project
136	sing
136	drug
137	entire
137	information
137	message
138	animal
138	he
138	one
139	garden
139	contain
139	idea
139	concern
140	everyone
140	whether
141	little
142	their
142	consumer
143	policy
143	sing
143	measure
144	threat
144	front
144	center
144	trade
145	to
145	apply
145	important
145	prove
146	among
146	try
146	enter
146	career
147	security
147	event
147	spend
148	bag
148	president
149	direction
149	ball
149	someone
150	defense
150	race
150	thing
150	gas
151	lead
151	how
151	pretty
151	standard
152	national
153	appear
153	less
153	fish
153	might
154	into
154	window
154	market
154	herself
155	accept
155	will
156	beautiful
157	worker
157	garden
158	night
158	Mr
158	subject
159	through
159	south
160	consumer
160	answer
160	magazine
161	TV
161	near
161	these
162	local
162	hear
162	similar
163	tend
163	education
163	beat
164	least
164	something
165	exist
166	else
167	these
168	artist
168	meet
168	positive
168	direction
169	begin
169	all
169	whatever
169	nothing
170	small
170	hit
170	another
170	officer
171	can
172	close
172	direction
173	across
173	reflect
173	try
174	charge
175	mother
175	big
176	over
176	together
177	expect
177	military
178	project
178	suffer
178	her
178	camera
179	ability
179	attack
179	piece
179	wind
180	Congress
180	writer
180	and
181	town
181	guy
182	generation
182	night
182	hit
183	well
184	evening
184	should
184	team
184	star
185	activity
186	hundred
187	along
188	against
188	use
188	president
188	body
189	whole
190	ready
190	too
190	moment
190	against
191	stay
191	since
191	benefit
191	evening
192	guy
193	chance
193	dream
193	of
194	weight
195	provide
195	final
195	claim
196	plan
197	call
197	really
198	admit
199	model
199	data
199	yourself
199	ok
200	free
200	other
200	realize
200	term
201	line
202	he
203	large
203	nearly
204	return
205	gas
206	test
206	city
206	not
207	middle
207	stock
208	individual
208	order
209	process
210	wind
211	cold
211	sure
211	happy
212	suddenly
212	like
213	about
214	write
215	business
216	force
216	say
217	staff
217	beat
217	turn
218	coach
218	box
218	our
219	fight
219	follow
219	step
220	food
221	laugh
221	interview
221	same
222	know
222	ground
222	opportunity
223	step
223	difficult
224	threat
224	parent
225	animal
225	soon
225	throughout
226	everyone
227	too
227	discuss
227	series
227	character
228	American
228	discover
228	forward
229	success
229	argue
229	population
230	investment
230	grow
231	poor
231	technology
231	at
231	high
232	idea
232	side
232	there
233	want
233	name
234	too
234	onto
234	sell
234	realize
235	no
235	usually
236	clearly
236	my
236	upon
236	room
237	measure
237	address
238	wide
239	role
239	house
240	idea
240	practice
240	different
241	order
241	could
242	government
242	statement
243	mission
243	bed
244	resource
244	fall
245	system
245	conference
246	front
246	traditional
246	laugh
247	reach
247	former
248	table
249	however
249	still
250	prepare
250	hair
251	ok
252	low
252	be
252	including
253	yeah
253	relationship
254	voice
254	whatever
254	knowledge
254	since
255	south
256	phone
257	friend
257	thus
257	simple
258	court
259	all
259	during
259	increase
260	voice
260	strategy
261	help
261	tend
262	even
262	condition
262	eat
263	every
263	region
263	test
263	college
264	else
265	begin
265	event
265	often
266	within
266	matter
266	goal
266	certainly
267	next
268	matter
268	why
269	night
270	check
270	car
271	kind
271	base
271	enter
272	state
272	large
272	however
272	market
273	foot
274	population
275	parent
275	go
275	model
275	century
276	those
277	realize
277	start
277	beyond
277	computer
278	seek
279	at
279	newspaper
280	air
280	whatever
281	west
282	others
283	tax
283	discussion
284	actually
284	check
284	force
285	that
286	range
286	writer
287	design
287	increase
288	decision
288	what
288	player
289	performance
289	same
290	house
290	at
291	edge
291	south
291	best
291	kitchen
292	environmental
292	movement
292	natural
293	range
293	common
294	book
295	night
295	investment
295	defense
296	bar
296	red
296	positive
296	value
297	until
297	church
297	ago
297	carry
298	result
298	special
298	good
298	television
299	others
299	prepare
299	score
299	health
300	message
300	look
300	between
300	each
301	magazine
302	week
302	enough
302	professional
302	share
303	cup
304	once
304	manage
304	mention
304	sometimes
305	suggest
306	see
307	letter
307	draw
308	wonder
308	never
308	front
309	senior
310	father
310	news
310	worker
310	century
311	mind
311	return
311	peace
311	these
312	after
312	begin
312	that
312	us
313	wear
314	goal
314	present
314	state
314	line
315	today
315	act
315	record
316	establish
316	others
316	mention
316	best
317	personal
317	least
317	politics
318	life
318	training
319	west
320	smile
321	painting
321	piece
321	sign
322	daughter
322	explain
323	site
323	enough
323	since
324	bit
324	reveal
324	upon
325	evidence
325	common
325	cause
326	peace
326	learn
327	left
327	certain
328	treat
329	skill
330	think
330	election
330	someone
330	report
331	wish
331	raise
332	born
332	movie
332	send
332	believe
333	medical
333	system
334	music
334	glass
334	also
335	garden
335	bank
335	perform
336	action
336	capital
337	southern
337	game
338	attack
338	reflect
338	stay
338	population
339	pretty
339	against
339	process
340	likely
340	station
341	happen
341	can
341	get
342	read
342	very
342	writer
342	car
343	risk
343	break
344	recognize
344	direction
345	return
345	data
346	cover
346	may
347	serve
348	really
349	defense
349	as
349	either
349	nice
350	throw
351	usually
351	son
351	four
352	start
352	range
352	fast
353	half
353	himself
353	item
353	form
354	green
355	pay
355	him
355	choice
355	similar
356	campaign
356	responsibility
357	near
357	have
358	citizen
358	light
358	too
359	production
360	apply
360	once
360	player
361	enjoy
361	describe
362	discussion
362	reveal
362	one
363	become
364	positive
364	key
365	consumer
365	however
366	economy
367	through
367	lot
367	seek
367	weight
368	daughter
368	evidence
368	boy
369	person
369	explain
369	or
369	moment
370	smile
370	discussion
370	forget
371	as
371	enough
371	minute
372	protect
373	sport
373	not
374	federal
375	per
375	executive
376	eye
376	community
376	manage
377	remain
378	executive
379	word
380	plant
380	begin
381	Democrat
381	increase
382	century
382	close
383	throw
383	accept
383	act
384	rock
384	top
384	purpose
385	much
385	plan
385	culture
385	far
386	side
387	for
387	appear
388	room
388	response
388	debate
388	main
389	bad
389	real
389	thank
390	soldier
390	key
391	might
391	and
391	relate
391	day
392	item
393	baby
393	plant
393	former
394	alone
394	future
394	produce
395	state
395	rather
395	social
395	reach
396	near
396	sing
396	sea
396	audience
397	single
397	fish
397	imagine
398	these
398	describe
398	raise
398	picture
399	under
400	person
400	mention
401	listen
401	whose
402	beyond
402	look
402	meet
403	structure
403	put
404	simple
404	wind
404	design
405	answer
405	hundred
405	firm
405	door
406	about
407	so
407	tree
408	range
408	government
408	political
408	appear
409	across
410	talk
410	class
410	visit
411	surface
411	message
411	eight
412	rule
412	word
412	song
413	maintain
414	condition
414	sometimes
414	series
414	least
415	center
416	society
417	instead
417	certainly
418	stuff
418	form
418	scene
418	explain
419	for
419	second
420	say
420	reflect
420	turn
420	less
421	growth
421	discover
421	while
422	weight
422	model
422	right
423	eight
423	late
423	production
423	eat
424	contain
424	medical
424	player
425	ready
425	effect
425	choice
426	news
426	sea
427	plant
427	option
427	who
427	weight
428	opportunity
428	often
428	cost
428	our
429	find
429	hold
429	above
429	someone
430	consumer
430	walk
431	final
431	center
432	order
432	reflect
432	upon
432	stuff
433	trip
433	fly
433	check
433	test
434	must
435	room
435	player
435	prepare
435	plant
436	among
437	rich
438	option
438	will
439	south
439	hot
439	record
440	remain
440	sea
441	treatment
442	bit
443	mother
443	why
443	soldier
443	best
444	full
444	around
445	lot
446	smile
446	alone
447	together
447	other
447	much
448	hold
449	how
449	attention
449	return
450	foot
450	western
451	find
451	although
452	send
452	power
452	take
452	event
453	low
454	some
454	clearly
455	drug
455	sign
455	music
456	still
457	as
457	him
458	free
459	find
460	military
460	traditional
461	newspaper
461	go
462	natural
462	human
462	another
463	item
463	others
464	section
464	stuff
465	religious
465	system
465	hot
465	pass
466	individual
467	father
468	beat
468	himself
468	person
469	throw
470	foot
470	policy
471	brother
472	face
472	subject
472	mention
472	dark
473	meeting
473	someone
473	save
473	Democrat
474	report
475	player
475	prepare
476	situation
476	assume
476	doctor
477	represent
478	do
478	pick
478	response
478	thank
479	get
479	government
479	really
480	write
480	collection
481	plant
481	interest
482	dark
482	religious
482	reflect
483	program
484	oil
484	society
484	book
485	base
485	which
485	benefit
486	structure
486	growth
487	military
488	a
489	clear
489	success
489	cover
490	evidence
490	often
491	hit
491	action
492	similar
492	include
493	woman
493	very
494	opportunity
494	charge
494	hotel
494	term
495	training
495	low
495	be
496	though
496	section
496	wind
496	series
497	kitchen
497	night
497	under
497	body
498	seven
499	shoulder
499	age
499	real
500	concern
501	property
501	administration
501	challenge
501	pay
502	test
502	over
502	wind
503	oil
503	conference
503	seven
503	this
504	pressure
505	movie
506	peace
506	stand
506	perhaps
507	you
507	thousand
507	compare
507	field
508	land
509	easy
509	experience
510	perform
510	southern
511	machine
512	trial
512	spend
512	modern
512	actually
513	two
514	return
514	produce
515	indicate
516	art
516	eat
516	process
517	shake
517	stand
517	quite
518	morning
519	yeah
520	whose
520	response
520	decision
521	month
521	alone
521	the
522	life
522	relate
523	not
523	leave
524	real
524	conference
525	it
525	simply
525	oil
525	well
526	area
527	whether
527	be
527	manage
527	near
528	Congress
528	own
528	light
528	last
529	baby
530	ground
531	site
531	require
531	issue
532	same
532	author
532	unit
532	spend
533	article
533	interest
533	college
534	suggest
534	inside
534	reason
534	must
535	black
536	agree
536	sport
536	high
536	dinner
537	scene
537	lot
537	trip
538	method
538	amount
538	offer
538	apply
539	especially
540	shoulder
540	may
541	big
541	represent
541	father
542	go
542	peace
542	by
543	each
543	form
544	wide
545	provide
545	camera
546	per
546	throw
546	easy
547	fund
547	agree
547	white
547	national
548	way
548	PM
548	owner
549	lead
549	government
549	opportunity
550	Congress
550	listen
550	street
551	me
551	run
551	second
551	film
552	or
552	hot
553	research
553	yeah
554	check
554	ahead
554	foot
554	watch
555	word
555	become
556	unit
557	real
558	American
558	real
559	maybe
560	training
561	true
562	sure
562	detail
562	vote
562	newspaper
563	nothing
564	debate
564	give
565	hear
565	Republican
565	my
566	someone
566	daughter
567	tend
567	suddenly
568	deal
568	put
568	year
568	group
569	south
570	staff
570	price
570	land
570	amount
571	million
572	smile
573	measure
573	reduce
573	I
573	player
574	data
574	speak
574	though
575	believe
575	expert
575	let
575	realize
576	peace
576	road
577	water
577	politics
577	oil
578	main
578	subject
579	general
579	wind
580	affect
580	human
580	stock
580	seem
581	analysis
581	before
581	born
582	spring
582	road
583	huge
584	threat
584	although
584	bag
585	improve
585	film
585	major
585	both
586	race
586	design
587	imagine
587	write
587	until
587	practice
588	man
588	reduce
589	society
589	reach
589	guy
590	life
591	several
591	knowledge
592	expect
592	question
593	president
593	help
593	spend
593	happy
594	social
594	production
595	race
596	particular
596	determine
596	fly
596	size
597	source
597	fund
597	its
598	standard
598	natural
598	continue
598	dream
599	woman
599	school
599	officer
599	enjoy
600	within
600	visit
601	ability
601	thousand
602	new
603	with
604	out
604	voice
605	expect
605	power
605	generation
605	analysis
606	over
606	product
607	success
607	evening
607	within
607	skill
608	high
608	get
608	then
609	time
609	challenge
609	cup
609	significant
610	test
611	choice
612	visit
613	key
613	large
613	glass
614	word
614	left
615	car
615	believe
616	international
616	left
616	draw
616	action
617	us
617	thought
617	religious
618	rule
618	cell
618	worker
618	participant
619	like
619	must
619	blood
620	land
620	anything
621	another
621	woman
621	media
621	six
622	accept
622	image
622	why
622	college
623	despite
624	note
625	science
625	institution
626	easy
626	war
626	election
627	follow
627	TV
627	movement
627	care
628	girl
628	seven
628	right
629	alone
629	near
629	share
629	body
630	everything
630	official
630	study
631	room
631	baby
631	wall
631	follow
632	hundred
632	act
632	great
632	staff
633	carry
633	wonder
634	will
634	either
635	star
635	recognize
635	meet
635	seat
636	quality
636	see
636	first
637	knowledge
637	eat
637	meeting
638	event
638	movement
638	finally
639	everyone
639	see
639	involve
639	group
640	life
641	oil
641	Mrs
641	perform
642	will
643	discussion
643	government
643	site
644	score
645	general
645	likely
646	act
646	daughter
646	various
647	represent
647	organization
648	expect
648	face
648	take
649	cut
649	science
649	give
649	Mrs
650	face
650	entire
651	magazine
651	spend
651	trip
651	test
652	bag
652	end
652	phone
653	staff
653	like
653	mention
654	theory
655	quickly
655	size
656	race
656	produce
657	his
657	eat
657	police
658	can
658	realize
658	watch
658	party
659	next
659	special
659	dream
659	for
660	without
660	whose
661	table
662	safe
662	how
662	word
663	coach
664	peace
664	president
664	mind
664	analysis
665	hear
665	notice
666	home
666	fall
666	find
666	adult
667	firm
667	president
667	rate
668	mission
668	receive
668	top
668	represent
669	especially
669	happen
669	you
670	here
671	authority
671	people
672	section
672	wall
672	in
672	account
673	important
674	home
675	professor
676	so
676	create
677	as
677	product
678	together
679	night
679	hundred
679	job
679	third
680	prepare
680	light
680	buy
681	page
681	summer
682	decade
682	to
683	often
684	phone
685	anything
685	white
685	current
686	short
686	happen
686	year
687	finish
688	officer
688	should
689	big
689	other
689	behind
690	upon
690	bill
690	view
690	fact
691	central
691	this
691	best
691	your
692	treat
692	point
692	know
693	physical
694	approach
694	require
694	throw
695	food
696	allow
696	make
696	political
696	including
697	citizen
697	away
698	by
698	memory
699	example
699	reason
700	stock
700	recent
700	news
701	career
701	full
701	father
701	outside
702	baby
702	deal
702	so
703	late
703	clear
703	remain
704	necessary
705	father
705	well
705	administration
706	country
706	wait
707	thousand
707	finally
708	others
708	morning
709	study
709	discover
709	although
709	six
710	time
710	authority
710	reduce
711	detail
711	field
711	measure
711	future
712	shoulder
712	best
712	occur
712	behavior
713	eye
713	toward
714	early
714	who
715	area
715	democratic
715	note
715	argue
716	develop
716	sister
717	water
717	few
717	dark
718	seem
718	respond
719	suffer
719	with
720	quite
720	industry
721	pattern
721	whom
721	hand
722	benefit
723	side
724	research
724	finish
725	economy
726	especially
726	dinner
726	relationship
727	dream
728	station
728	good
729	political
729	number
729	skin
729	country
730	require
730	write
730	whether
730	really
731	action
732	end
733	part
734	direction
734	appear
735	wall
735	happy
735	defense
735	goal
736	car
736	chance
736	phone
736	campaign
737	start
737	cold
737	dark
738	project
738	reflect
739	see
739	policy
740	activity
740	quite
740	fight
740	herself
741	ready
741	occur
742	question
742	cover
743	city
743	view
743	candidate
744	into
744	read
744	position
744	yourself
745	follow
745	role
745	through
745	understand
746	key
746	suggest
746	tonight
747	interview
747	everything
748	she
748	employee
749	able
750	specific
750	particularly
751	life
751	test
752	yes
753	town
753	doctor
753	military
754	system
754	experience
755	responsibility
756	station
756	so
756	over
757	movement
757	they
757	feeling
757	sport
758	citizen
758	boy
759	number
759	down
760	huge
760	even
760	view
761	exactly
761	final
762	scene
762	sing
763	begin
763	green
764	surface
764	food
764	defense
764	civil
765	town
765	fight
766	current
766	hand
767	others
767	important
768	economic
769	various
769	friend
769	agreement
770	worker
770	what
771	eye
771	certainly
771	another
771	school
772	property
772	race
772	mission
772	whole
773	pattern
773	career
773	challenge
774	center
774	consider
775	picture
776	alone
777	health
778	change
779	meet
779	key
779	song
780	book
780	half
780	court
780	give
781	skin
782	voice
783	lay
783	industry
783	left
784	win
784	plant
784	seat
785	huge
785	issue
785	writer
786	few
786	write
787	measure
787	against
788	per
788	physical
788	stock
789	watch
789	create
790	its
790	personal
791	include
791	about
791	car
792	stuff
792	government
792	commercial
793	where
793	view
793	affect
794	sure
794	environment
794	interview
795	again
796	fill
797	bed
797	well
798	across
798	million
799	special
799	food
799	scene
799	movement
800	simple
800	travel
800	purpose
800	character
801	skin
801	yourself
802	less
803	produce
803	arm
803	activity
803	son
804	off
804	yes
804	no
804	player
805	time
805	cup
805	whatever
805	quickly
806	when
806	take
806	improve
807	center
807	old
807	approach
808	speak
808	time
808	during
808	management
809	movie
810	if
810	look
810	gas
811	include
812	station
813	try
813	mother
813	under
813	wait
814	two
814	draw
814	authority
814	easy
815	indeed
815	stay
815	work
816	majority
816	gun
816	wonder
816	hand
817	item
817	decade
818	tough
818	student
818	identify
819	make
819	push
820	western
821	single
821	type
821	purpose
822	arrive
823	information
823	stage
823	possible
823	bit
824	magazine
825	network
825	both
825	compare
825	less
826	different
827	share
827	statement
827	power
827	church
828	nation
828	page
829	minute
829	east
829	environment
829	direction
830	report
830	long
830	else
831	someone
832	population
832	remember
833	involve
833	magazine
834	threat
834	nothing
835	movement
835	young
835	eye
836	woman
836	away
837	his
837	pull
837	them
838	really
838	assume
838	short
839	citizen
840	consumer
840	vote
840	agent
840	strategy
841	reach
841	bad
841	edge
842	window
843	energy
843	hand
843	especially
843	tax
844	upon
845	increase
845	green
845	health
845	institution
846	alone
847	address
848	decide
848	free
849	itself
849	board
850	fact
851	tonight
851	leave
851	list
851	box
852	against
852	admit
852	leader
852	interview
853	defense
853	door
854	north
855	democratic
855	report
856	clear
856	face
857	space
857	community
857	attention
857	past
858	increase
858	lawyer
858	Republican
859	really
859	trade
859	suddenly
860	guy
861	of
861	war
862	not
862	may
863	pick
864	adult
864	city
865	group
865	of
865	chair
866	business
866	two
866	across
867	likely
867	old
867	office
868	hotel
868	that
868	goal
868	baby
869	act
869	positive
869	next
870	join
870	plant
870	kid
870	enough
871	important
871	allow
871	clear
872	inside
872	really
873	simply
874	argue
874	these
874	top
874	present
875	property
875	hit
876	head
876	stand
876	main
877	while
878	hope
878	while
878	sport
879	number
879	actually
880	look
880	young
880	nearly
881	opportunity
881	hair
881	put
882	care
882	price
882	protect
883	address
883	enter
884	wear
884	smile
884	speak
885	develop
885	speak
885	parent
886	certain
886	dark
886	follow
887	others
887	successful
887	media
887	drop
888	industry
889	report
889	physical
889	wind
889	be
890	them
890	meet
891	item
891	lawyer
891	media
891	dinner
892	skill
892	surface
893	surface
893	member
894	address
894	common
894	effort
895	our
895	information
895	think
895	wall
896	people
896	language
896	cultural
896	career
897	do
898	believe
899	everything
899	either
899	miss
900	statement
900	should
901	foot
901	summer
901	beautiful
901	put
902	star
903	exist
903	require
903	center
904	me
904	crime
905	outside
905	evening
905	various
906	social
906	wrong
906	only
907	safe
907	investment
907	door
907	material
908	summer
908	ago
908	artist
908	beat
909	realize
909	light
910	beat
910	again
910	season
911	after
911	subject
912	style
912	apply
913	kitchen
913	politics
913	others
913	return
914	know
914	evidence
914	adult
915	around
916	must
916	itself
916	within
917	decision
917	together
917	themselves
917	conference
918	partner
918	box
918	whole
919	message
920	indicate
920	safe
921	night
921	short
921	boy
921	on
922	card
922	hope
922	future
922	not
923	seven
924	feeling
925	recent
925	there
925	way
925	lose
926	act
926	option
926	deal
926	feeling
927	try
928	rate
928	national
929	paper
929	story
929	last
929	relationship
930	glass
930	sit
930	leave
931	future
931	close
931	like
931	himself
932	company
932	station
932	question
932	idea
933	serve
933	fact
933	real
933	throw
934	decision
934	perhaps
934	dog
934	discussion
935	stand
936	card
936	occur
936	nearly
936	they
937	dream
937	yeah
938	appear
938	quickly
939	four
939	worker
940	lot
941	board
941	southern
941	player
941	space
942	beyond
942	three
942	environmental
943	machine
943	specific
944	maintain
944	bill
945	research
945	pressure
945	stage
945	break
946	way
946	decade
946	report
947	history
947	per
947	physical
948	budget
948	speak
949	decade
949	might
950	treat
950	operation
951	throw
951	product
951	author
952	future
952	feel
953	whose
954	best
955	something
955	final
956	though
956	institution
956	media
956	provide
957	pull
957	degree
957	possible
957	interesting
958	program
959	sound
959	already
959	doctor
960	feel
960	probably
961	machine
962	stop
962	but
962	throughout
962	kid
963	three
964	all
964	doctor
964	economy
965	wrong
965	community
966	record
966	win
966	power
966	scientist
967	soldier
967	help
968	order
968	beautiful
968	each
969	sister
969	indicate
970	can
970	nice
970	quality
971	option
971	little
972	expect
972	action
972	own
972	mean
973	special
974	organization
975	impact
976	minute
976	stock
976	carry
977	open
977	single
977	offer
978	away
979	whose
979	leader
979	hit
980	matter
980	attorney
981	wrong
981	real
981	public
981	carry
982	box
982	letter
983	foreign
984	benefit
984	mean
984	age
984	couple
985	notice
986	any
986	matter
986	tell
987	speak
987	him
987	today
987	including
988	reflect
988	race
988	material
988	each
989	election
989	research
989	growth
989	send
990	continue
990	pretty
991	simply
991	name
991	realize
991	top
992	point
992	choice
992	television
993	baby
993	ok
993	area
993	network
994	reflect
995	fact
995	remember
995	can
995	simply
996	official
996	fight
996	news
996	author
997	talk
998	order
999	war
999	majority
999	measure
1000	court
1000	five
1000	pick
\.


--
-- Data for Name: relation_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_21 (customer_id, loyalty_tier, renewal_date, role) FROM stdin;
101	concern	\N	customer
102	sport	\N	customer
103	drop	\N	customer
104	within	\N	customer
105	official	\N	customer
106	mean	\N	customer
107	near	\N	customer
108	pick	\N	customer
109	reason	\N	customer
110	happy	\N	customer
111	fall	\N	customer
112	foreign	\N	customer
113	important	\N	customer
114	produce	\N	customer
115	something	\N	customer
116	entire	\N	customer
117	magazine	\N	customer
118	skin	\N	customer
119	list	\N	customer
120	throw	\N	customer
121	drive	\N	customer
122	present	\N	customer
123	important	\N	customer
124	serious	\N	customer
125	director	\N	customer
126	term	\N	customer
127	image	\N	customer
128	individual	\N	customer
129	sport	\N	customer
130	let	\N	customer
131	suffer	\N	customer
132	information	\N	customer
133	must	\N	customer
134	interview	\N	customer
135	audience	\N	customer
136	traditional	\N	customer
137	southern	\N	customer
138	world	\N	customer
139	choose	\N	customer
140	mind	\N	customer
141	note	\N	customer
142	throughout	\N	customer
143	tend	\N	customer
144	factor	\N	customer
145	PM	\N	customer
146	bed	\N	customer
147	money	\N	customer
148	explain	\N	customer
149	eight	\N	customer
150	run	\N	customer
151	stock	\N	customer
152	central	\N	customer
153	visit	\N	customer
154	TV	\N	customer
155	represent	\N	customer
156	whose	\N	customer
157	sit	\N	customer
158	there	\N	customer
159	case	\N	customer
160	its	\N	customer
161	able	\N	customer
162	particularly	\N	customer
163	guess	\N	customer
164	cultural	\N	customer
165	mean	\N	customer
166	away	\N	customer
167	treat	\N	customer
168	plan	\N	customer
169	discover	\N	customer
170	compare	\N	customer
171	stay	\N	customer
172	throughout	\N	customer
173	imagine	\N	customer
174	wife	\N	customer
175	force	\N	customer
176	Republican	\N	customer
177	decade	\N	customer
178	live	\N	customer
179	rock	\N	customer
180	about	\N	customer
181	bill	\N	customer
182	firm	\N	customer
183	plan	\N	customer
184	natural	\N	customer
185	increase	\N	customer
186	step	\N	customer
187	military	\N	customer
188	senior	\N	customer
189	try	\N	customer
190	production	\N	customer
191	hope	\N	customer
192	prevent	\N	customer
193	especially	\N	customer
194	trade	\N	customer
195	keep	\N	customer
196	lose	\N	customer
197	glass	\N	customer
198	need	\N	customer
199	section	\N	customer
200	most	\N	customer
201	far	special	primecustomer
202	there	company	primecustomer
203	film	several	primecustomer
204	hold	degree	primecustomer
205	religious	election	primecustomer
206	wrong	help	primecustomer
207	notice	want	primecustomer
208	prepare	clear	primecustomer
209	reveal	join	primecustomer
210	reason	simple	primecustomer
211	treatment	board	primecustomer
212	true	fight	primecustomer
213	should	book	primecustomer
214	artist	office	primecustomer
215	hit	away	primecustomer
216	short	behind	primecustomer
217	newspaper	wait	primecustomer
218	certainly	about	primecustomer
219	yard	go	primecustomer
220	fine	people	primecustomer
221	pretty	value	primecustomer
222	deep	put	primecustomer
223	power	PM	primecustomer
224	material	six	primecustomer
225	represent	smile	primecustomer
226	a	example	primecustomer
227	position	deal	primecustomer
228	and	follow	primecustomer
229	letter	generation	primecustomer
230	mission	scientist	primecustomer
231	increase	buy	primecustomer
232	meet	election	primecustomer
233	room	eat	primecustomer
234	produce	difference	primecustomer
235	perform	strong	primecustomer
236	century	upon	primecustomer
237	career	magazine	primecustomer
238	country	buy	primecustomer
239	spring	week	primecustomer
240	single	pretty	primecustomer
241	fish	able	primecustomer
242	beyond	address	primecustomer
243	seven	better	primecustomer
244	expect	policy	primecustomer
245	across	ever	primecustomer
246	relate	what	primecustomer
247	report	assume	primecustomer
248	movie	old	primecustomer
249	beyond	pass	primecustomer
250	trouble	task	primecustomer
251	white	tend	primecustomer
252	entire	lay	primecustomer
253	suddenly	everybody	primecustomer
254	attack	now	primecustomer
255	feel	rich	primecustomer
256	make	allow	primecustomer
257	business	ready	primecustomer
258	it	level	primecustomer
259	usually	drop	primecustomer
260	member	certain	primecustomer
261	buy	son	primecustomer
262	address	reason	primecustomer
263	discuss	open	primecustomer
264	itself	recently	primecustomer
265	entire	simple	primecustomer
266	pass	until	primecustomer
267	public	notice	primecustomer
268	leave	pay	primecustomer
269	argue	walk	primecustomer
270	region	back	primecustomer
271	class	would	primecustomer
272	tough	director	primecustomer
273	question	reach	primecustomer
274	since	police	primecustomer
275	southern	day	primecustomer
276	possible	phone	primecustomer
277	available	team	primecustomer
278	institution	trial	primecustomer
279	whatever	heart	primecustomer
280	actually	management	primecustomer
281	either	few	primecustomer
282	be	figure	primecustomer
283	defense	consumer	primecustomer
284	TV	wonder	primecustomer
285	debate	close	primecustomer
286	floor	of	primecustomer
287	discussion	doctor	primecustomer
288	organization	senior	primecustomer
289	time	large	primecustomer
290	community	brother	primecustomer
291	part	sport	primecustomer
292	week	indicate	primecustomer
293	street	unit	primecustomer
294	side	know	primecustomer
295	service	still	primecustomer
296	involve	to	primecustomer
297	range	improve	primecustomer
298	relationship	machine	primecustomer
299	leader	myself	primecustomer
300	dinner	growth	primecustomer
\.


--
-- Data for Name: relation_22; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_22 (customer_id, contact_no) FROM stdin;
101	customer
101	tree
102	town
102	doctor
103	challenge
104	tax
104	letter
105	artist
106	involve
107	radio
108	same
109	choose
109	fear
110	talk
111	direction
111	trade
112	truth
113	bit
114	record
115	water
116	ok
117	watch
117	ground
118	must
118	medical
119	time
120	live
121	challenge
121	economy
122	prove
123	fight
124	special
124	past
125	statement
125	accept
126	Republican
127	financial
127	guess
128	response
128	when
129	clear
129	career
130	case
131	issue
131	look
132	option
132	heavy
133	low
134	discover
134	only
135	concern
135	future
136	theory
136	own
137	somebody
138	money
139	return
139	their
140	music
141	blue
142	education
143	movie
144	almost
144	way
145	range
145	bar
146	compare
146	throw
147	wear
147	concern
148	prepare
149	join
150	room
150	line
151	wear
152	nice
153	present
154	beautiful
155	meet
156	try
156	year
157	sort
157	shoulder
158	too
158	voice
159	argue
159	perhaps
160	better
161	according
162	Congress
162	two
163	themselves
164	issue
164	reason
165	property
165	company
166	suggest
167	real
168	address
169	although
169	production
170	finally
171	stock
171	most
172	yard
173	of
173	through
174	animal
175	six
176	around
177	describe
178	hundred
179	experience
179	the
180	shake
180	picture
181	in
181	hour
182	charge
182	tough
183	significant
183	give
184	many
185	reality
186	son
186	focus
187	expert
188	child
188	analysis
189	word
189	official
190	grow
191	official
192	sign
193	people
193	executive
194	employee
194	child
195	student
195	choose
196	alone
196	executive
197	economy
198	argue
199	prevent
200	value
201	reality
202	impact
203	might
204	difference
205	accept
205	especially
206	decide
207	bar
208	four
208	raise
209	represent
210	general
210	later
211	guess
212	discover
213	black
213	rule
214	director
215	role
215	theory
216	market
217	how
217	that
218	skin
218	trade
219	tell
219	card
220	skin
221	magazine
221	else
222	today
222	better
223	hundred
223	great
224	glass
224	letter
225	measure
225	source
226	collection
227	wind
228	final
228	machine
229	although
229	quickly
230	before
230	product
231	leg
231	center
232	environmental
233	one
233	go
234	participant
234	around
235	bank
236	thus
236	record
237	phone
237	north
238	nearly
239	accept
239	officer
240	low
241	board
241	today
242	heart
243	rule
243	each
244	employee
244	but
245	time
246	southern
247	start
248	treat
248	cultural
249	our
249	film
250	fish
250	whether
251	cause
251	cell
252	tough
253	else
253	decade
254	recently
254	break
255	network
256	represent
257	rock
258	property
259	Republican
260	financial
261	series
262	serious
263	write
264	marriage
265	administration
265	firm
266	bit
267	measure
267	contain
268	person
269	account
269	local
270	doctor
270	arrive
271	threat
272	well
273	reason
273	guess
274	go
275	law
276	need
277	require
277	weight
278	audience
279	especially
279	less
280	health
280	seek
281	business
281	statement
282	treat
282	answer
283	into
284	necessary
285	education
285	paper
286	green
286	bring
287	them
287	management
288	spring
288	only
289	rich
289	wife
290	threat
291	address
292	full
293	city
294	page
294	religious
295	opportunity
296	cold
297	manage
297	station
298	charge
298	institution
299	not
299	all
300	man
300	pull
301	character
302	lose
302	require
303	police
304	factor
304	day
305	about
306	lay
306	why
307	recognize
307	to
308	room
308	back
309	each
310	exactly
310	key
311	add
311	standard
312	bed
313	food
314	race
315	people
316	any
317	visit
318	for
318	speak
319	manager
319	condition
320	western
321	bar
321	must
322	political
322	usually
323	because
323	method
324	section
324	population
325	if
326	ok
327	mother
327	many
328	while
329	positive
330	work
331	each
332	region
332	two
333	really
334	student
335	scene
336	laugh
336	instead
337	collection
338	two
339	shake
340	local
340	consider
341	box
341	natural
342	season
343	say
344	administration
344	available
345	light
345	strategy
346	door
347	those
348	heavy
349	place
349	money
350	person
350	same
351	think
351	begin
352	us
352	ready
353	work
354	public
354	news
355	those
355	whole
356	appear
357	product
358	so
359	yard
359	audience
360	lose
361	one
361	decide
362	number
363	treatment
364	speech
364	present
365	guess
366	born
366	thought
367	detail
368	between
369	car
369	watch
370	operation
370	it
371	piece
372	training
373	though
374	report
375	husband
375	appear
376	pick
377	rather
377	film
378	follow
379	best
380	model
380	commercial
381	country
381	in
382	whatever
382	here
383	glass
383	affect
384	girl
385	kitchen
386	get
386	feeling
387	look
387	although
388	window
389	language
389	population
390	family
390	contain
391	western
391	yard
392	bag
392	including
393	push
393	identify
394	Congress
395	yes
395	method
396	item
396	dog
397	one
398	measure
399	happy
399	military
400	child
400	yard
\.


--
-- Data for Name: relation_23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_23 (customer_id, subscription_addons) FROM stdin;
201	side
201	health
201	important
201	hospital
202	last
203	he
204	church
204	simple
204	alone
204	clear
205	item
205	rest
205	development
206	able
206	represent
207	blood
207	describe
208	local
209	approach
209	run
210	than
210	international
210	alone
211	choose
211	practice
212	together
212	statement
212	week
212	message
213	now
213	born
214	opportunity
214	group
214	company
215	late
215	item
215	industry
215	hair
216	out
216	generation
216	article
217	present
217	seat
218	type
218	still
218	couple
218	past
219	benefit
220	grow
221	offer
221	side
221	which
221	rest
222	start
223	receive
223	sure
223	trip
223	what
224	matter
224	later
224	great
224	he
225	each
225	close
226	industry
227	professional
227	begin
227	red
227	able
228	result
229	fight
230	material
231	section
232	his
233	food
233	one
234	interest
235	stage
236	although
236	special
236	well
237	house
237	hear
238	rest
239	wrong
239	class
239	include
239	activity
240	ever
240	author
241	seek
241	grow
242	also
242	me
242	certain
242	your
243	beat
243	partner
243	to
244	news
244	meet
244	especially
245	government
245	wait
246	instead
246	wind
247	tough
247	unit
247	scientist
247	process
248	fly
248	bag
248	somebody
248	window
249	note
249	safe
250	require
250	always
251	capital
251	section
251	note
252	actually
252	success
252	rather
253	argue
254	particularly
255	include
256	woman
256	water
257	nature
257	often
257	sing
257	enjoy
258	serious
258	west
259	most
259	right
260	source
260	sea
260	note
261	must
262	especially
262	fish
262	action
262	service
263	human
263	and
263	instead
263	deep
264	personal
264	center
264	indeed
264	shoulder
265	worker
265	anything
265	each
266	series
267	interview
267	up
267	unit
268	statement
268	form
268	cup
268	them
269	certainly
270	sport
270	benefit
270	name
271	save
271	company
271	figure
271	agree
272	end
272	reduce
273	pick
273	end
273	chair
273	choice
274	get
275	some
275	else
275	impact
276	baby
276	a
277	ground
277	item
277	partner
278	public
278	determine
278	teacher
278	Mr
279	way
280	new
281	trade
282	road
282	health
282	military
282	between
283	discussion
283	box
283	woman
283	sing
284	career
285	painting
286	sound
286	little
286	leave
286	guy
287	future
287	theory
287	again
288	a
288	toward
288	style
288	change
289	quite
290	idea
291	hot
292	leave
292	administration
292	play
293	born
293	son
293	between
294	mouth
295	standard
295	also
295	gas
295	write
296	year
297	during
297	chance
297	performance
298	down
298	himself
298	not
298	accept
299	find
300	often
\.


--
-- Data for Name: relation_24; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_24 (businesscustomer_id, email, password_hash, loyalty_tier, company_name, browsingsession) FROM stdin;
301	adriana45@example.org	not	me	material	\N
302	danielkline@example.com	so	soldier	accept	\N
303	jhicks@example.net	nothing	official	analysis	\N
304	reyessteven@example.com	alone	produce	public	\N
305	michellerivers@example.org	once	message	minute	\N
306	justin60@example.org	thus	produce	policy	\N
307	jacksonwilliam@example.org	international	official	sound	\N
308	lopezgina@example.org	over	sell	land	\N
310	haleholly@example.net	shake	beyond	back	\N
311	dstewart@example.org	Democrat	hard	office	\N
312	ibailey@example.com	threat	finish	enough	\N
313	charlesmiller@example.com	great	property	we	\N
316	huntmackenzie@example.com	kind	themselves	there	\N
317	bgrant@example.net	check	yard	determine	\N
319	normanmatthew@example.com	within	much	newspaper	\N
320	wcarter@example.org	practice	right	begin	\N
321	wturner@example.org	hope	study	and	\N
322	rrichardson@example.net	should	she	wind	\N
323	nvillegas@example.com	special	these	call	\N
324	thomasmorgan@example.net	job	suggest	kid	\N
325	jennifer74@example.net	since	safe	teach	\N
326	vkoch@example.net	actually	worry	pay	\N
327	yhammond@example.com	my	pull	half	\N
328	jenniferbrewer@example.net	season	everybody	human	\N
330	terrygibson@example.org	answer	situation	simple	\N
331	richard23@example.com	letter	administration	collection	\N
332	randy72@example.com	describe	bed	cold	\N
333	veronica01@example.org	turn	activity	above	\N
334	mark14@example.org	lay	product	task	\N
335	jjones@example.net	full	three	woman	\N
336	jefferyjones@example.org	item	list	various	\N
337	arodriguez@example.org	practice	collection	on	\N
338	tamara47@example.org	science	where	court	\N
339	rachel90@example.net	agent	expect	go	\N
340	matthewberg@example.com	beautiful	amount	run	\N
341	taylor21@example.com	see	meet	blue	\N
342	albertscott@example.org	and	interview	voice	\N
343	brightjamie@example.net	myself	well	eat	\N
344	angela29@example.net	participant	trouble	argue	\N
345	linda31@example.net	participant	spend	simple	\N
347	stephenbarrett@example.net	fall	stand	put	\N
348	rodriguezgregory@example.com	already	where	here	\N
349	joel75@example.net	player	bit	culture	\N
350	shanson@example.net	concern	back	treatment	\N
351	jeffjohnson@example.com	member	situation	be	\N
352	donald83@example.net	nature	simply	loss	\N
353	nicholas26@example.com	idea	their	medical	\N
354	awatson@example.net	a	say	local	\N
355	manthony@example.com	tonight	positive	traditional	\N
356	umendoza@example.org	movie	option	technology	\N
359	steven33@example.org	teacher	seven	describe	\N
360	ywilcox@example.com	according	reason	candidate	\N
363	nmedina@example.org	probably	possible	do	\N
364	wrightbethany@example.net	little	almost	quickly	\N
365	weeksdawn@example.org	woman	research	coach	\N
366	xjones@example.org	administration	maintain	rock	\N
367	annaanderson@example.com	bit	appear	finally	\N
368	gbrown@example.net	to	wish	either	\N
369	ajohnson@example.net	least	song	happy	\N
370	michele11@example.org	view	even	now	\N
371	novaksamuel@example.com	main	risk	coach	\N
372	kramerdaniel@example.net	organization	policy	quite	\N
373	jacobmayo@example.org	apply	discover	heart	\N
374	michaelgarcia@example.com	camera	follow	official	\N
376	becky85@example.org	rate	grow	federal	\N
377	wsampson@example.com	billion	indicate	question	\N
378	ulucas@example.org	against	line	benefit	\N
379	deanna64@example.net	clearly	act	feel	\N
380	nancyescobar@example.com	music	term	while	\N
381	ryanhernandez@example.org	ok	bring	even	\N
383	janet56@example.net	day	shoulder	generation	\N
386	fsoto@example.org	learn	recognize	beyond	\N
387	samuel73@example.com	entire	final	car	\N
388	ryangarcia@example.net	shake	put	system	\N
389	ybenson@example.com	experience	interest	house	\N
391	hannahsolis@example.com	film	fly	agent	\N
392	mhawkins@example.net	listen	industry	response	\N
393	usheppard@example.net	task	few	management	\N
394	wagnermark@example.com	marriage	recognize	treat	\N
395	qfrye@example.net	situation	day	adult	\N
396	rhondadickerson@example.net	attention	affect	plan	\N
397	lsoto@example.org	sing	cut	bed	\N
399	vfoster@example.com	thank	administration	degree	\N
400	jacqueline43@example.net	edge	against	mouth	\N
309	sandrahernandez@example.org	city	trade	century	[{"device": "charge", "session_id": "102", "started_at": "small"}]
318	gilbertveronica@example.com	reveal	part	enough	[{"device": "guess", "session_id": "72", "started_at": "worker"}]
329	williamsbrian@example.net	mother	rule	pressure	[{"device": "future", "session_id": "443", "started_at": "under"}]
382	bryancatherine@example.com	with	party	remain	[{"device": "wife", "session_id": "748", "started_at": "born"}, {"device": "generation", "session_id": "657", "started_at": "choice"}]
315	tnewman@example.org	particularly	drug	baby	[{"device": "give", "session_id": "281", "started_at": "natural"}]
357	joshua62@example.org	help	finally	per	[{"device": "like", "session_id": "1", "started_at": "lead"}]
361	vbell@example.net	since	who	program	[{"device": "natural", "session_id": "792", "started_at": "make"}]
346	colealyssa@example.com	store	assume	thank	[{"device": "sometimes", "session_id": "49", "started_at": "thank"}]
384	nelsonrobert@example.net	social	idea	reason	[{"device": "mention", "session_id": "489", "started_at": "cut"}]
375	princeashley@example.com	name	table	dog	[{"device": "maintain", "session_id": "1", "started_at": "forward"}]
314	leslie96@example.net	yourself	news	left	[{"device": "consider", "session_id": "62", "started_at": "politics"}]
385	jaclyn24@example.net	cover	lot	only	[{"device": "last", "session_id": "541", "started_at": "within"}]
362	richard10@example.org	writer	five	teacher	[{"device": "hospital", "session_id": "437", "started_at": "relate"}]
390	elizabethmiller@example.org	week	adult	throughout	[{"device": "move", "session_id": "843", "started_at": "poor"}]
398	ucooper@example.com	measure	until	short	[{"device": "arm", "session_id": "789", "started_at": "low"}]
358	ishaffer@example.net	nation	clear	man	[{"device": "agreement", "session_id": "557", "started_at": "particularly"}]
\.


--
-- Data for Name: relation_25; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_25 (corporateemployee_id, email, password_hash, employee_no, office_site, browsingsession) FROM stdin;
501	youngjudy@example.com	bad	as	catch	\N
502	lmoreno@example.org	accept	close	all	\N
503	theresasheppard@example.net	note	himself	court	\N
504	robertsderrick@example.com	clearly	reduce	skin	\N
505	iyoung@example.com	move	heavy	necessary	\N
506	millerjennifer@example.org	artist	today	building	\N
507	boothmichelle@example.org	step	save	phone	\N
508	fdavis@example.org	back	purpose	particular	\N
509	charlesmccullough@example.com	local	heart	federal	\N
510	emily44@example.net	total	upon	together	\N
511	zwilkerson@example.com	hot	specific	design	\N
512	mary13@example.net	amount	system	take	\N
513	obrientodd@example.org	artist	news	project	\N
514	ricecarlos@example.com	level	time	station	\N
515	sriley@example.net	determine	determine	general	\N
516	sarah35@example.org	total	lot	beyond	\N
517	jeffrey25@example.net	compare	fill	place	\N
519	rsmith@example.org	recent	add	room	\N
520	smarshall@example.com	tax	specific	century	\N
521	kimberly12@example.net	yard	eye	early	\N
522	mejiabonnie@example.org	Democrat	relate	politics	\N
523	tfritz@example.org	contain	her	by	\N
524	kimberly49@example.net	growth	have	war	\N
525	michaelmorgan@example.org	term	give	investment	\N
526	shannoncochran@example.com	another	inside	financial	\N
527	jtaylor@example.net	onto	management	plan	\N
528	fcruz@example.org	down	performance	probably	\N
529	alejandroklein@example.com	election	event	without	\N
530	matthewgriffin@example.org	American	sort	charge	\N
531	terrireed@example.org	human	hear	anything	\N
532	dwest@example.com	far	grow	party	\N
533	taylorlawrence@example.com	morning	give	create	\N
534	timothyashley@example.net	him	party	break	\N
535	mendezryan@example.org	physical	show	air	\N
536	wharper@example.org	time	company	full	\N
538	jthomas@example.org	example	region	ever	\N
539	hugheshayley@example.com	full	eye	school	\N
540	laurenmorrison@example.org	finish	few	card	\N
541	nfisher@example.com	hard	analysis	government	\N
542	martha18@example.net	sense	although	happy	\N
543	victor05@example.org	night	develop	difficult	\N
544	cgilbert@example.com	while	detail	officer	\N
545	elliskayla@example.org	carry	protect	base	\N
546	rbrown@example.net	help	message	determine	\N
547	afields@example.net	remember	woman	plant	\N
548	millerjoel@example.com	form	available	north	\N
549	osborneleah@example.net	forward	site	we	\N
550	powen@example.net	drive	my	another	\N
551	daniel95@example.org	rate	figure	mouth	\N
552	zharrison@example.net	cold	great	morning	\N
553	stuartrichard@example.com	meet	space	it	\N
554	millersarah@example.org	maintain	mouth	never	\N
555	thomas60@example.com	still	production	program	\N
556	rwallace@example.org	instead	relate	song	\N
557	vaguilar@example.com	store	financial	too	\N
558	nelsonmorgan@example.org	story	fill	democratic	\N
559	john01@example.com	best	expect	unit	\N
560	patricia88@example.net	month	hotel	professional	\N
561	martinjoshua@example.net	goal	good	house	\N
562	williamporter@example.com	program	more	region	\N
563	smithsarah@example.com	speak	red	method	\N
564	johncoleman@example.org	first	claim	believe	\N
565	lisa18@example.net	everyone	interest	need	\N
566	newmankara@example.com	difficult	beautiful	friend	\N
567	latoya40@example.com	enough	big	create	\N
568	xwest@example.net	boy	try	child	\N
569	tmorrow@example.com	both	least	green	\N
570	wanderson@example.net	too	feel	four	\N
571	davidrobinson@example.org	lawyer	this	board	\N
572	jamesadams@example.org	whom	pressure	choose	\N
573	jramos@example.net	state	my	act	\N
574	rsmith@example.com	over	face	stay	\N
575	urobles@example.com	indeed	road	knowledge	\N
576	kwalker@example.net	man	how	clearly	\N
577	krichards@example.net	leave	yes	experience	\N
578	bateslisa@example.com	sell	memory	which	\N
580	rachel05@example.com	sport	fall	character	\N
581	barbara13@example.com	finish	resource	page	\N
582	tgarcia@example.com	cost	scene	every	\N
583	ortizmelanie@example.com	eye	answer	floor	\N
584	torresmike@example.com	explain	forward	so	\N
585	vthomas@example.com	growth	see	production	\N
587	sarabrown@example.org	something	yourself	analysis	\N
588	durangilbert@example.net	degree	upon	care	\N
589	mmurphy@example.org	not	though	local	\N
590	lovesydney@example.com	line	exactly	left	\N
591	ydean@example.net	second	thus	door	\N
592	amberblack@example.org	throughout	news	enough	\N
593	thompsondavid@example.com	one	practice	fear	\N
594	usimmons@example.net	to	three	site	\N
595	jeffreybaker@example.com	test	recent	determine	\N
596	linlisa@example.org	degree	fire	major	\N
597	brownpriscilla@example.org	whom	hour	fund	\N
598	westmadison@example.net	successful	federal	international	\N
599	tiffanymills@example.org	never	have	share	\N
600	aaron89@example.org	then	their	whose	\N
601	sandra50@example.org	leave	program	church	\N
602	xcarroll@example.com	avoid	watch	key	\N
603	palmerjohn@example.net	college	blood	institution	\N
604	kevinarmstrong@example.net	wait	show	improve	\N
605	christinacameron@example.com	view	per	fight	\N
606	kristina57@example.net	material	able	property	\N
607	qrobinson@example.net	begin	face	author	\N
608	amberbrooks@example.net	law	art	maybe	\N
609	ugibson@example.com	stock	writer	whether	\N
610	rebekah66@example.com	authority	significant	different	\N
611	burtontroy@example.net	situation	because	success	\N
612	chenstacy@example.com	possible	gun	style	\N
614	angela23@example.org	approach	lot	painting	\N
615	userrano@example.com	set	exactly	though	\N
616	melaniebradley@example.org	with	she	lay	\N
617	petersonkerri@example.net	agreement	plant	name	\N
618	brendasanchez@example.org	care	language	matter	\N
620	christopher00@example.com	rise	look	ahead	\N
621	mhoffman@example.org	major	quickly	within	\N
622	deborah96@example.net	never	inside	majority	\N
623	shernandez@example.com	since	good	whether	\N
624	brian47@example.net	lose	perform	per	\N
625	ybell@example.org	section	stock	wonder	\N
626	carlsonadam@example.com	happy	if	democratic	\N
627	douglas83@example.net	often	step	million	\N
628	maurice62@example.org	discover	away	white	\N
629	gwright@example.net	government	movie	factor	\N
630	freemanrebecca@example.org	myself	compare	fund	\N
631	aguirrejeremy@example.net	poor	note	beyond	\N
632	vevans@example.org	network	teach	old	\N
633	melissatodd@example.org	believe	individual	with	\N
634	christopherjenkins@example.org	up	fall	work	\N
635	conleyjesse@example.com	prove	range	level	\N
638	sarahtorres@example.com	rich	offer	teacher	\N
639	lindajohnson@example.com	computer	hit	out	\N
640	steven75@example.org	if	accept	return	\N
641	zhangeric@example.org	drive	major	light	\N
642	dylan66@example.net	daughter	rather	maintain	\N
643	jennifergriffin@example.com	perform	near	voice	\N
644	richardwoods@example.net	week	safe	side	\N
645	pmiller@example.org	structure	team	whole	\N
646	htaylor@example.net	also	gas	usually	\N
647	vrogers@example.net	say	draw	quality	\N
649	martinwilliam@example.net	push	success	mouth	\N
650	emily38@example.org	important	poor	until	\N
651	sandra95@example.org	culture	citizen	role	\N
652	edickerson@example.org	firm	road	suggest	\N
653	bakerdana@example.org	item	front	add	\N
654	lcollins@example.com	before	cold	moment	\N
655	ehill@example.net	cultural	agreement	fill	\N
656	lisajoseph@example.com	everybody	cause	dark	\N
657	mitchellbrenda@example.net	beat	feel	mind	\N
658	ujackson@example.net	economic	ability	notice	\N
659	kathyreilly@example.org	hand	whole	very	\N
660	jeffrey97@example.com	debate	far	PM	\N
661	pcobb@example.org	measure	garden	attorney	\N
662	maurice01@example.org	business	look	anything	\N
663	cameronannette@example.net	middle	room	wrong	\N
664	vleach@example.net	issue	someone	cultural	\N
665	sweeneyjeff@example.org	organization	friend	get	\N
666	shelia63@example.org	experience	last	see	\N
667	kevin38@example.org	weight	film	vote	\N
668	michael55@example.org	down	really	who	\N
669	millerrandall@example.org	role	it	understand	\N
670	daniel77@example.com	make	establish	watch	\N
671	leah56@example.org	former	medical	spring	\N
672	sbrown@example.org	employee	decade	point	\N
673	nferguson@example.org	economic	situation	eye	\N
674	qstanley@example.org	support	garden	catch	\N
675	sarahrodriguez@example.net	toward	seem	section	\N
676	shermansean@example.com	senior	Congress	sure	\N
677	goodwinalisha@example.com	class	control	money	\N
678	bruce96@example.org	night	bed	join	\N
679	kbrown@example.com	former	focus	way	\N
680	uallen@example.org	human	too	phone	\N
681	melissa89@example.org	hold	tough	at	\N
682	brandiflores@example.net	seek	party	part	\N
683	erica06@example.org	charge	art	feeling	\N
684	maxhayden@example.com	customer	open	rich	\N
685	kevin52@example.org	back	event	ask	\N
686	fbrock@example.org	top	will	story	\N
687	lauriemurphy@example.com	bill	care	gun	\N
688	joannelopez@example.net	condition	population	fear	\N
689	cindymorris@example.org	start	recognize	dog	\N
691	michaelmartin@example.com	recognize	cost	son	\N
692	robert57@example.com	the	phone	door	\N
693	susan05@example.net	key	keep	American	\N
694	gateschris@example.com	major	himself	total	\N
696	carloswelch@example.org	conference	carry	north	\N
697	jamesroberts@example.org	after	necessary	job	\N
698	emartin@example.org	state	record	quality	\N
700	sbrown@example.com	improve	others	too	\N
699	smithtammy@example.org	company	worker	design	[{"device": "direction", "session_id": "641", "started_at": "whatever"}]
619	benjaminmarvin@example.net	rock	perform	almost	[{"device": "better", "session_id": "747", "started_at": "character"}]
518	kelseycook@example.com	inside	sound	next	[{"device": "machine", "session_id": "578", "started_at": "professional"}]
586	wrightrobert@example.org	thousand	same	which	[{"device": "environmental", "session_id": "63", "started_at": "necessary"}]
648	mrowland@example.com	your	determine	north	[{"device": "sea", "session_id": "671", "started_at": "building"}]
537	destrada@example.net	two	total	body	[{"device": "material", "session_id": "314", "started_at": "song"}]
637	brownchristopher@example.com	leg	free	return	[{"device": "crime", "session_id": "447", "started_at": "window"}]
690	jacobgriffith@example.org	simple	night	including	[{"device": "third", "session_id": "792", "started_at": "tree"}]
579	christinabarker@example.org	table	fast	budget	[{"device": "stage", "session_id": "10", "started_at": "big"}]
636	richard34@example.com	fall	air	interview	[{"device": "rather", "session_id": "528", "started_at": "carry"}]
695	pamela87@example.net	protect	two	type	[{"device": "project", "session_id": "301", "started_at": "relate"}]
613	colonphyllis@example.net	magazine	very	store	[{"device": "scientist", "session_id": "103", "started_at": "soon"}]
\.


--
-- Data for Name: relation_26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_26 (engineer_id, level) FROM stdin;
601	decision
602	out
603	perhaps
604	save
605	age
606	sing
607	land
608	present
609	sound
610	event
611	remain
612	property
613	some
614	glass
615	audience
616	of
617	machine
618	indicate
619	theory
620	point
621	different
622	imagine
623	tree
624	want
625	time
626	early
627	upon
628	sing
629	investment
630	one
631	care
632	all
633	low
634	likely
635	interesting
636	town
637	trouble
638	management
639	agency
640	pick
641	institution
642	system
643	election
644	leg
645	third
646	election
647	work
648	economy
649	shake
650	their
651	gun
652	call
653	shoulder
654	everybody
655	support
656	despite
657	glass
658	human
659	evening
660	door
661	central
662	yard
663	tonight
664	air
665	risk
666	ago
667	when
668	life
669	popular
670	part
671	close
672	line
673	try
674	never
675	exactly
676	many
677	bar
678	thought
679	class
680	quickly
681	seven
682	cup
683	you
684	region
685	conference
686	hospital
687	car
688	real
689	conference
690	attorney
691	each
692	significant
693	option
694	fill
695	large
696	toward
697	political
698	difficult
699	seven
700	smile
\.


--
-- Data for Name: relation_27; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_27 (supportagent_id, email, password_hash, employee_no, queue, browsingsession) FROM stdin;
702	james06@example.org	now	note	decade	\N
703	eharris@example.net	probably	out	voice	\N
704	douglas09@example.org	threat	mean	capital	\N
705	jacqueline30@example.org	cover	understand	decision	\N
706	kmay@example.net	charge	owner	look	\N
707	aguirrejacqueline@example.net	remember	five	light	\N
708	ybates@example.org	above	police	think	\N
709	bhall@example.com	partner	page	simple	\N
710	lhall@example.net	knowledge	short	person	\N
711	deanlambert@example.com	thus	contain	particular	\N
712	mpatterson@example.org	method	notice	raise	\N
713	lawrencepeter@example.com	into	federal	role	\N
714	johnsonemily@example.net	six	night	apply	\N
715	jasonpatterson@example.com	safe	whole	standard	\N
716	lesliehill@example.org	especially	rule	yet	\N
717	richard81@example.net	site	girl	food	\N
719	oconnellmariah@example.net	law	couple	at	\N
720	jacob66@example.org	player	evening	leader	\N
721	ryan99@example.com	common	agree	you	\N
722	kenneth81@example.com	off	machine	among	\N
723	sullivanrebecca@example.org	seem	take	fine	\N
725	mmoses@example.com	big	world	newspaper	\N
726	carla56@example.net	almost	career	raise	\N
727	cooperbradley@example.org	people	personal	summer	\N
728	ggarcia@example.com	small	wonder	near	\N
731	jonessandra@example.net	life	box	Mr	\N
732	bmartinez@example.org	west	consumer	activity	\N
733	walvarado@example.net	source	might	clearly	\N
735	daviesmichael@example.org	medical	rule	piece	\N
736	ambergonzalez@example.com	security	their	bank	\N
737	hweaver@example.org	nor	fly	policy	\N
738	ndennis@example.org	could	too	our	\N
739	gomezfrank@example.com	west	it	set	\N
741	lnorton@example.com	experience	range	thank	\N
742	sara14@example.org	under	economy	day	\N
743	kristinfarley@example.net	remember	series	prove	\N
744	gchapman@example.net	perhaps	visit	him	\N
745	lsmith@example.org	general	hot	rather	\N
746	weissrenee@example.net	but	nature	million	\N
747	kristin12@example.net	but	similar	finally	\N
748	patrickdiaz@example.com	guess	last	walk	\N
749	frosario@example.com	public	general	measure	\N
750	tomalexander@example.net	amount	game	president	\N
752	deborahvargas@example.org	certain	send	may	\N
755	daniel90@example.org	order	parent	cover	\N
756	meganvega@example.net	build	medical	herself	\N
757	keithmason@example.net	room	beautiful	purpose	\N
758	fryesara@example.org	smile	tree	maintain	\N
759	kellikemp@example.org	able	executive	traditional	\N
760	mark06@example.net	gun	learn	wear	\N
762	nicholas72@example.net	final	see	push	\N
763	katrina23@example.net	magazine	appear	report	\N
764	katrinagreen@example.net	guy	value	sea	\N
765	julielewis@example.com	all	boy	arrive	\N
766	erica16@example.org	break	author	provide	\N
767	smithfrances@example.org	or	coach	seven	\N
768	rebecca46@example.net	now	service	support	\N
769	william65@example.net	case	fact	seven	\N
770	marissaking@example.net	paper	young	now	\N
771	iweber@example.org	federal	trip	tonight	\N
773	diana05@example.net	officer	too	assume	\N
775	anthonycain@example.net	laugh	democratic	interesting	\N
776	tasha68@example.org	arrive	down	soon	\N
777	gonzalezmichael@example.net	development	human	food	\N
778	wmunoz@example.com	write	travel	long	\N
779	xhernandez@example.org	which	during	himself	\N
780	gina62@example.net	financial	young	fly	\N
781	katherinefernandez@example.net	relate	strong	computer	\N
782	edwardspaul@example.org	herself	key	worry	\N
783	franklinvanessa@example.com	such	the	help	\N
785	jessicabrooks@example.org	politics	simple	opportunity	\N
786	toddjohnson@example.com	majority	past	cold	\N
787	dmiller@example.com	good	turn	next	\N
788	erica06@example.com	myself	development	experience	\N
789	darleneallen@example.com	medical	mouth	available	\N
790	dorismorales@example.net	business	what	arrive	\N
791	millsbrandon@example.com	fill	kitchen	dark	\N
792	charleswebb@example.net	agreement	ever	anything	\N
793	jamesharper@example.com	financial	account	happen	\N
794	margaret11@example.org	media	civil	like	\N
795	triddle@example.net	you	even	year	\N
796	moconnor@example.net	allow	away	industry	\N
797	jbarr@example.org	already	analysis	can	\N
798	christopher35@example.com	choose	capital	certain	\N
799	igonzalez@example.com	man	change	agency	\N
800	hopkinsaaron@example.com	general	agent	military	\N
740	pschneider@example.net	range	agency	rate	[{"device": "contain", "session_id": "702", "started_at": "idea"}]
772	amykelley@example.net	note	anyone	read	[{"device": "wear", "session_id": "361", "started_at": "kid"}]
754	danny10@example.org	leg	back	politics	[{"device": "often", "session_id": "709", "started_at": "piece"}]
730	jaguilar@example.com	human	measure	all	[{"device": "collection", "session_id": "848", "started_at": "always"}]
774	wweeks@example.net	see	social	article	[{"device": "heavy", "session_id": "872", "started_at": "record"}]
753	howardbeth@example.net	carry	sport	describe	[{"device": "politics", "session_id": "264", "started_at": "character"}]
784	whawkins@example.com	good	however	treat	[{"device": "option", "session_id": "748", "started_at": "owner"}]
751	campbelldenise@example.org	establish	bit	after	[{"device": "case", "session_id": "65", "started_at": "be"}]
734	ubrown@example.org	performance	book	event	[{"device": "growth", "session_id": "152", "started_at": "agency"}]
724	jessicamcpherson@example.com	though	really	today	[{"device": "trade", "session_id": "28", "started_at": "small"}]
729	uschmidt@example.net	its	sit	skill	[{"device": "among", "session_id": "889", "started_at": "difference"}]
718	christophergill@example.org	hold	campaign	his	[{"device": "dream", "session_id": "82", "started_at": "democratic"}]
701	oclark@example.org	voice	accept	fine	[{"device": "talk", "session_id": "1000", "started_at": "letter"}]
761	rjones@example.net	physical	not	mother	[{"device": "throw", "session_id": "891", "started_at": "stuff"}]
\.


--
-- Data for Name: relation_28; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_28 (fulfillmentassociate_id, email, password_hash, employee_no, shift, browsingsession) FROM stdin;
802	brandi40@example.org	involve	up	Democrat	\N
804	anthony55@example.net	success	raise	debate	\N
805	michellepeters@example.com	bill	positive	site	\N
806	jacob62@example.com	real	industry	interview	\N
807	michele79@example.org	myself	everybody	election	\N
809	dmitchell@example.net	capital	teach	religious	\N
810	whitejulia@example.net	commercial	fly	lay	\N
811	olsonpeter@example.net	actually	house	four	\N
812	davislori@example.net	space	maintain	new	\N
813	tammy26@example.org	behind	development	news	\N
814	mooreeric@example.net	beautiful	cup	name	\N
816	angela38@example.org	share	marriage	size	\N
817	roberthall@example.net	front	soldier	standard	\N
818	paul21@example.net	culture	change	apply	\N
819	xjones@example.org	share	new	word	\N
820	debra32@example.org	media	rather	often	\N
821	kelleyryan@example.net	himself	data	carry	\N
823	christopherwolfe@example.com	professor	speak	accept	\N
824	uhernandez@example.com	relate	officer	anything	\N
825	thomasstevens@example.org	they	newspaper	goal	\N
826	anthonyevans@example.org	walk	hair	although	\N
827	stephanie21@example.com	yard	another	practice	\N
828	lisagarcia@example.com	necessary	these	product	\N
829	tinaramirez@example.net	strong	north	side	\N
830	evan42@example.net	whom	amount	easy	\N
831	mark42@example.org	fish	baby	stuff	\N
832	trevinovincent@example.net	news	day	throughout	\N
833	angelicaspears@example.net	either	three	whole	\N
834	laura88@example.com	building	agent	center	\N
835	edwardsrachel@example.com	computer	decade	ever	\N
838	jeremiahhart@example.org	answer	together	though	\N
839	andrea97@example.org	age	decision	quality	\N
840	brandonschneider@example.com	matter	receive	phone	\N
841	martineztaylor@example.com	risk	move	indicate	\N
842	ahuynh@example.com	education	need	same	\N
843	mcdonaldrobert@example.com	occur	bar	usually	\N
844	qhuff@example.org	base	teacher	whole	\N
845	andrewmeyer@example.com	answer	certainly	sort	\N
846	ariastara@example.org	safe	purpose	fine	\N
847	ismith@example.org	serve	model	carry	\N
848	josephbates@example.org	know	now	serious	\N
849	piercemichael@example.net	camera	ball	others	\N
850	brose@example.com	source	policy	ground	\N
851	tjones@example.net	decision	improve	kid	\N
852	heidipotter@example.net	same	teach	collection	\N
853	moniquefritz@example.net	agent	develop	response	\N
854	beltrancourtney@example.com	language	law	ever	\N
855	stewartgina@example.com	hotel	letter	provide	\N
856	danielgallegos@example.com	approach	population	next	\N
857	annbrown@example.net	reason	billion	American	\N
858	kennethtaylor@example.net	entire	probably	health	\N
859	thompsonbrandi@example.net	major	lead	situation	\N
860	tracy88@example.org	example	nearly	southern	\N
861	kenneth35@example.com	some	choose	meeting	\N
862	jennifer44@example.net	order	process	throughout	\N
863	hendrixjoshua@example.com	particularly	who	growth	\N
864	jessejensen@example.com	management	third	choice	\N
865	joshua05@example.org	recently	administration	continue	\N
866	karenmorris@example.net	speech	add	drive	\N
867	perkinsnancy@example.com	each	light	reflect	\N
868	taylorelizabeth@example.net	responsibility	positive	thousand	\N
869	qpeters@example.net	to	from	local	\N
870	joshua20@example.net	task	western	pay	\N
871	taylorkevin@example.com	stuff	paper	lose	\N
872	watsonkenneth@example.org	argue	thousand	drug	\N
873	susan72@example.com	no	network	our	\N
874	taylormalone@example.net	month	fall	partner	\N
875	huntethan@example.org	quickly	may	wish	\N
876	jillpeterson@example.com	see	such	debate	\N
877	wgalvan@example.com	president	environmental	institution	\N
878	russellelizabeth@example.org	any	late	I	\N
879	james75@example.net	experience	spring	agency	\N
880	clarkallison@example.net	sense	beyond	offer	\N
881	jasonpierce@example.com	sure	even	beat	\N
882	randy00@example.org	future	relationship	boy	\N
883	vtrujillo@example.org	different	discuss	might	\N
884	jamesthompson@example.com	out	major	including	\N
885	terriwilliams@example.org	newspaper	whole	writer	\N
886	mariahberg@example.com	finish	lead	police	\N
887	cmorris@example.net	election	current	nothing	\N
888	jonathan04@example.com	almost	when	spend	\N
889	barkerscott@example.org	dinner	high	national	\N
890	lcox@example.com	behind	approach	feeling	\N
891	jjohnson@example.net	high	reduce	interview	\N
892	ihaynes@example.org	inside	source	different	\N
893	cdunn@example.net	better	bed	benefit	\N
894	lemisty@example.net	trip	let	paper	\N
895	gmendoza@example.org	network	government	her	\N
896	dixonscott@example.com	impact	course	house	\N
897	jordanmurphy@example.org	new	bill	type	\N
900	michael23@example.org	talk	quickly	ahead	\N
803	mitchellgeorge@example.com	easy	test	tell	[{"device": "speech", "session_id": "783", "started_at": "area"}]
898	timothy65@example.net	blood	off	all	[{"device": "up", "session_id": "778", "started_at": "office"}]
837	rosekenneth@example.org	four	be	again	[{"device": "deal", "session_id": "128", "started_at": "a"}]
815	kathryndavis@example.net	away	technology	miss	[{"device": "each", "session_id": "640", "started_at": "wish"}, {"device": "size", "session_id": "294", "started_at": "quality"}]
801	johnsims@example.com	politics	take	arm	[{"device": "another", "session_id": "607", "started_at": "sometimes"}]
836	sandra18@example.com	coach	lot	last	[{"device": "area", "session_id": "7", "started_at": "require"}]
899	kdavis@example.net	easy	learn	sound	[{"device": "very", "session_id": "157", "started_at": "reason"}]
808	ruizheidi@example.com	ten	hear	partner	[{"device": "on", "session_id": "893", "started_at": "interview"}]
822	victoria91@example.org	dream	born	personal	[{"device": "investment", "session_id": "905", "started_at": "movie"}]
\.


--
-- Data for Name: relation_29; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_29 (categorymanager_id, email, password_hash, employee_no, department, browsingsession) FROM stdin;
901	dholmes@example.net	able	yes	price	\N
902	david01@example.com	allow	evening	strong	\N
903	marshalltoni@example.net	nearly	now	that	\N
904	johnrice@example.com	night	kid	can	\N
905	jlopez@example.net	rest	off	south	\N
906	donaldperez@example.com	oil	about	break	\N
907	kevin93@example.net	dog	argue	meet	\N
908	david99@example.net	attack	throw	last	\N
911	htrujillo@example.net	others	type	prevent	\N
912	nvasquez@example.net	nation	main	prove	\N
913	fweaver@example.net	investment	color	individual	\N
914	barnespaul@example.org	million	agent	create	\N
915	carrollpatricia@example.net	although	member	very	\N
916	deniseharper@example.com	majority	specific	everyone	\N
917	carterkelly@example.com	scientist	catch	need	\N
918	markjacobson@example.org	environmental	some	marriage	\N
919	jennifer07@example.com	program	cut	letter	\N
920	gregorykatie@example.net	fire	kitchen	at	\N
922	phamheather@example.com	health	serve	never	\N
923	jamie65@example.net	possible	measure	daughter	\N
924	fphillips@example.com	claim	debate	bed	\N
925	gdean@example.org	us	present	series	\N
926	benjamin60@example.com	budget	want	could	\N
927	ojackson@example.org	through	the	such	\N
928	amanda31@example.org	begin	condition	what	\N
930	qcrawford@example.net	mention	so	interview	\N
931	matthewhayes@example.com	than	former	according	\N
932	debracarson@example.org	billion	pattern	lawyer	\N
933	fforbes@example.net	staff	billion	bank	\N
934	tammy37@example.com	end	American	I	\N
935	kyleconley@example.org	small	suffer	behavior	\N
936	pwheeler@example.net	produce	fight	above	\N
937	carol58@example.net	southern	property	test	\N
938	roberthill@example.net	front	poor	several	\N
939	iarroyo@example.net	guy	church	program	\N
940	alexander93@example.org	teach	teach	he	\N
941	charles69@example.org	son	million	data	\N
942	donald37@example.org	hospital	member	hour	\N
943	urodriguez@example.net	real	break	page	\N
944	washingtonbreanna@example.org	before	support	establish	\N
945	brandonfisher@example.org	conference	theory	control	\N
947	santostim@example.net	why	century	order	\N
948	ywood@example.org	know	better	impact	\N
949	andresduncan@example.net	seek	interesting	provide	\N
950	brownmichelle@example.net	mother	sit	a	\N
951	ythompson@example.net	never	get	box	\N
952	huberkyle@example.net	daughter	company	nation	\N
953	jacquelinecurtis@example.org	establish	no	on	\N
954	snorman@example.com	government	apply	brother	\N
955	leemichelle@example.net	Democrat	drive	chance	\N
956	olsonmelissa@example.net	staff	fine	left	\N
957	jonathan64@example.com	find	suggest	this	\N
958	mark32@example.net	food	relationship	message	\N
959	kperez@example.org	thank	today	could	\N
960	ballardmelanie@example.com	only	offer	where	\N
961	jerry83@example.net	interview	other	eat	\N
962	mariajohns@example.org	need	may	deal	\N
963	richardsonjonathan@example.com	discussion	page	employee	\N
964	kristendominguez@example.com	human	institution	short	\N
965	tinaduke@example.org	agree	interview	attorney	\N
966	kathleen26@example.org	visit	dream	person	\N
968	mckinneyamy@example.net	once	game	interesting	\N
969	michael30@example.org	either	close	which	\N
970	nicolegraves@example.net	idea	many	ball	\N
971	xcarter@example.org	both	quickly	indicate	\N
972	glennharris@example.net	write	quickly	business	\N
973	christianrichmond@example.net	pretty	moment	entire	\N
974	dclark@example.org	tell	hand	difference	\N
975	justinlewis@example.net	education	benefit	building	\N
976	victoriamason@example.com	late	name	employee	\N
978	thomascarter@example.org	leg	trade	hotel	\N
979	samuel40@example.org	these	former	deal	\N
980	desireelove@example.com	language	partner	above	\N
981	zstewart@example.com	might	wonder	forget	\N
982	bvincent@example.com	discuss	concern	offer	\N
983	hollandjennifer@example.net	consumer	form	third	\N
984	lyonsedward@example.org	central	issue	government	\N
985	christine13@example.net	old	standard	develop	\N
986	kimberly59@example.com	church	citizen	change	\N
987	psummers@example.net	oil	similar	just	\N
988	canderson@example.com	color	magazine	avoid	\N
989	farmeramanda@example.com	choice	set	writer	\N
990	ztaylor@example.org	help	such	opportunity	\N
991	millermary@example.com	least	example	peace	\N
992	wreyes@example.org	keep	process	character	\N
994	watsonjeremy@example.net	especially	present	on	\N
996	jennifer81@example.net	sound	cause	brother	\N
997	khenry@example.org	standard	now	first	\N
998	jduncan@example.net	focus	team	day	\N
999	susanwhite@example.com	paper	possible	lay	\N
1000	zrichard@example.com	heart	budget	style	\N
946	klopez@example.org	something	culture	adult	[{"device": "pressure", "session_id": "38", "started_at": "purpose"}]
967	atorres@example.org	night	move	two	[{"device": "thing", "session_id": "224", "started_at": "our"}]
995	sortega@example.org	only	five	get	[{"device": "throw", "session_id": "975", "started_at": "top"}]
909	jennifer06@example.net	old	southern	commercial	[{"device": "but", "session_id": "377", "started_at": "power"}]
993	davidhines@example.net	audience	many	voice	[{"device": "professor", "session_id": "979", "started_at": "expert"}]
921	martin11@example.net	hold	industry	whatever	[{"device": "style", "session_id": "421", "started_at": "with"}, {"device": "decade", "session_id": "316", "started_at": "customer"}]
977	bspencer@example.net	us	where	figure	[{"device": "small", "session_id": "863", "started_at": "work"}]
910	johngross@example.org	own	identify	try	[{"device": "right", "session_id": "571", "started_at": "easy"}]
929	butlerjessica@example.com	wait	red	around	[{"device": "special", "session_id": "254", "started_at": "police"}]
\.


--
-- Data for Name: relation_3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_3 (physicalproduct_id, sku, product_name, base_price, is_active, quantity, dimensions, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
104	involve	medical	298	769	812	recently	\N	\N	\N	\N
105	concern	computer	506	481	884	respond	\N	\N	\N	\N
106	wind	energy	104	514	797	student	\N	\N	\N	\N
108	six	until	184	795	154	throw	\N	\N	\N	\N
109	town	become	842	887	328	dark	\N	\N	\N	\N
110	around	campaign	110	727	527	myself	\N	\N	\N	\N
112	learn	scene	559	933	740	care	\N	\N	\N	\N
114	individual	reality	183	307	444	idea	\N	\N	\N	\N
116	despite	home	259	797	66	man	\N	\N	\N	\N
118	team	television	555	450	872	carry	\N	\N	\N	\N
119	fund	character	12	406	857	sell	\N	\N	\N	\N
120	rich	stay	176	265	498	despite	\N	\N	\N	\N
121	indicate	government	813	662	956	coach	\N	\N	\N	\N
122	sound	remember	1000	585	20	scientist	\N	\N	\N	\N
123	strategy	note	709	364	594	one	\N	\N	\N	\N
124	conference	contain	608	129	142	event	\N	\N	\N	\N
125	parent	red	849	284	408	smile	\N	\N	\N	\N
126	fish	difference	177	628	92	organization	\N	\N	\N	\N
128	cold	carry	513	915	665	police	\N	\N	\N	\N
129	movie	especially	953	703	655	you	\N	\N	\N	\N
130	song	history	245	321	507	these	\N	\N	\N	\N
131	plant	size	980	231	730	clear	\N	\N	\N	\N
132	wife	spring	346	574	626	season	\N	\N	\N	\N
133	social	operation	996	662	225	artist	\N	\N	\N	\N
134	whom	throw	944	74	782	wall	\N	\N	\N	\N
135	success	quality	164	524	785	sister	\N	\N	\N	\N
136	available	direction	320	306	710	activity	\N	\N	\N	\N
137	us	area	870	566	381	level	\N	\N	\N	\N
138	once	off	719	719	755	tonight	\N	\N	\N	\N
140	similar	relate	919	621	984	would	\N	\N	\N	\N
142	stuff	them	223	965	584	notice	\N	\N	\N	\N
144	draw	dinner	394	528	866	consider	\N	\N	\N	\N
150	wife	rich	995	872	392	speak	\N	\N	\N	\N
151	economic	million	407	169	932	dark	\N	\N	\N	\N
152	white	whatever	449	130	638	TV	\N	\N	\N	\N
155	dog	win	677	303	285	key	\N	\N	\N	\N
157	never	fish	983	195	542	enter	\N	\N	\N	\N
158	culture	very	593	22	32	position	\N	\N	\N	\N
159	in	hope	856	267	212	expert	\N	\N	\N	\N
160	necessary	plan	292	152	556	cost	\N	\N	\N	\N
162	parent	might	853	700	458	message	\N	\N	\N	\N
163	available	stand	559	366	503	born	\N	\N	\N	\N
164	read	find	877	125	788	hard	\N	\N	\N	\N
165	development	information	585	901	393	soon	\N	\N	\N	\N
166	car	analysis	291	831	111	way	\N	\N	\N	\N
168	perhaps	administration	559	304	989	meeting	\N	\N	\N	\N
169	decision	team	77	513	383	drive	\N	\N	\N	\N
171	sing	door	777	542	332	learn	\N	\N	\N	\N
172	great	almost	127	453	736	point	\N	\N	\N	\N
173	top	deep	359	313	553	list	\N	\N	\N	\N
174	manage	city	348	802	749	two	\N	\N	\N	\N
176	game	beyond	392	209	571	however	\N	\N	\N	\N
177	long	study	285	651	613	really	\N	\N	\N	\N
178	different	light	946	473	616	individual	\N	\N	\N	\N
181	again	party	369	539	4	anyone	\N	\N	\N	\N
182	reflect	evening	594	437	994	drive	\N	\N	\N	\N
183	everything	forget	345	882	637	drop	\N	\N	\N	\N
184	population	yeah	505	764	254	understand	\N	\N	\N	\N
185	plan	unit	645	22	417	around	\N	\N	\N	\N
186	far	event	649	798	960	drug	\N	\N	\N	\N
189	machine	nature	358	935	271	sense	\N	\N	\N	\N
190	east	later	895	702	558	window	\N	\N	\N	\N
191	imagine	soon	156	474	853	fine	\N	\N	\N	\N
192	human	significant	497	174	479	firm	\N	\N	\N	\N
193	toward	especially	278	523	101	daughter	\N	\N	\N	\N
194	street	bill	72	364	69	final	\N	\N	\N	\N
195	responsibility	realize	21	169	520	commercial	\N	\N	\N	\N
198	like	hour	243	908	342	city	\N	\N	\N	\N
199	hundred	name	71	77	716	experience	\N	\N	\N	\N
200	chair	sing	480	524	572	class	\N	\N	\N	\N
101	do	machine	251	226	21	at	[{"url": "head", "alt_text": "some", "image_id": "595", "sort_order": "38"}]	\N	\N	\N
113	discussion	think	799	324	841	unit	\N	\N	[{"price": "102", "ends_at": "minute", "price_id": "140", "starts_at": "wall"}]	\N
146	television	much	828	262	644	fill	\N	\N	\N	79
180	wrong	do	720	175	461	direction	\N	\N	\N	37
154	million	money	616	547	419	citizen	\N	\N	\N	27
145	act	quickly	558	748	42	live	\N	\N	\N	50
115	help	happen	50	732	883	sing	\N	\N	\N	58
161	worker	camera	280	319	600	form	\N	\N	\N	59
188	stay	because	786	76	835	program	\N	\N	\N	98
117	ago	pattern	828	441	563	less	\N	\N	[{"price": "72", "ends_at": "resource", "price_id": "656", "starts_at": "adult"}]	\N
102	stock	talk	412	75	275	want	\N	\N	[{"price": "102", "ends_at": "section", "price_id": "540", "starts_at": "either"}]	\N
141	cause	simple	181	160	257	cold	\N	\N	[{"price": "810", "ends_at": "product", "price_id": "335", "starts_at": "worker"}, {"price": "403", "ends_at": "subject", "price_id": "571", "starts_at": "there"}]	\N
149	relationship	person	456	872	947	deal	\N	\N	[{"price": "221", "ends_at": "institution", "price_id": "997", "starts_at": "change"}]	\N
196	plant	knowledge	708	96	412	glass	\N	\N	[{"price": "24", "ends_at": "individual", "price_id": "492", "starts_at": "employee"}]	\N
111	also	police	130	916	212	type	\N	\N	[{"price": "152", "ends_at": "get", "price_id": "839", "starts_at": "owner"}]	60
197	common	would	620	312	214	particular	\N	\N	\N	76
170	firm	source	448	516	694	think	\N	\N	\N	34
107	response	beat	79	522	973	expert	\N	\N	\N	5
143	current	international	507	698	404	memory	\N	\N	\N	92
167	give	kid	121	583	766	list	\N	\N	\N	52
147	their	hair	274	755	935	positive	\N	\N	\N	60
127	management	thank	498	8	182	interview	\N	[{"barcode": "collection", "variant_id": "856", "price_override": "402", "is_active_variant": "115"}]	\N	24
187	use	personal	802	277	867	admit	\N	\N	\N	73
156	structure	shoulder	388	768	573	perform	[{"url": "similar", "alt_text": "rather", "image_id": "694", "sort_order": "769"}]	\N	\N	43
148	opportunity	before	983	999	143	member	\N	\N	\N	92
179	plant	over	960	763	730	statement	\N	\N	\N	71
153	finally	special	983	218	123	effect	\N	\N	\N	50
175	where	try	116	664	940	he	\N	\N	\N	30
139	current	candidate	609	88	877	probably	\N	\N	\N	19
103	whole	firm	747	77	23	value	\N	\N	\N	85
\.


--
-- Data for Name: relation_30; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_30 (tag_id, tag_name) FROM stdin;
1	market
2	ready
3	treat
4	news
5	number
6	red
7	that
8	because
9	civil
10	less
11	business
12	natural
13	college
14	natural
15	peace
16	continue
17	what
18	experience
19	treat
20	four
21	significant
22	manager
23	mother
24	Congress
25	hope
26	argue
27	enjoy
28	player
29	lawyer
30	collection
31	contain
32	great
33	statement
34	four
35	stuff
36	knowledge
37	population
38	couple
39	site
40	establish
41	can
42	like
43	pull
44	general
45	all
46	rate
47	push
48	car
49	quickly
50	agreement
51	return
52	south
53	positive
54	training
55	friend
56	result
57	skill
58	politics
59	have
60	security
61	have
62	if
63	government
64	public
65	maybe
66	near
67	hear
68	group
69	represent
70	lot
71	race
72	determine
73	prepare
74	letter
75	fine
76	heavy
77	along
78	particular
79	these
80	half
81	guy
82	keep
83	side
84	never
85	decision
86	though
87	card
88	recognize
89	later
90	money
91	white
92	event
93	raise
94	through
95	approach
96	style
97	family
98	training
99	sense
100	behind
\.


--
-- Data for Name: relation_31; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_31 (customer_id, address_id, kind, line1, city, state, country, postal_code) FROM stdin;
203	101	room	special	Juliaport	north	receive	our
376	758	dream	contain	Jenniferland	school	again	moment
216	906	want	per	Douglasmouth	everyone	future	court
164	325	administration	action	Port Troy	high	see	left
328	812	kind	give	Reynoldsland	TV	know	training
267	206	now	picture	Lake Rachelfort	strong	job	official
170	357	hundred	along	South Hector	ask	bank	right
308	749	music	doctor	North Gina	heart	water	present
372	164	expert	support	Markside	camera	standard	media
113	857	change	whole	North Aprilbury	find	child	authority
127	712	skin	region	Lake Samuelmouth	visit	coach	care
287	403	key	story	Webbbury	offer	rise	answer
386	383	democratic	project	Longtown	officer	top	own
356	272	know	sense	South Gracebury	pull	training	quite
300	991	participant	line	Townsendhaven	compare	participant	color
382	120	economic	marriage	Wardside	once	lot	campaign
382	629	feel	to	Port Bradley	kitchen	suggest	themselves
285	753	dark	notice	Brockport	various	adult	smile
196	152	front	maintain	South Danielhaven	operation	example	art
342	836	stand	official	Jonesberg	into	little	believe
290	965	senior	difference	Josephton	ground	your	color
171	539	need	of	Jeffreyside	quite	project	last
335	581	decision	their	Georgestad	close	development	which
326	230	majority	allow	Potterchester	daughter	student	attention
139	212	catch	people	Hernandezmouth	after	media	then
329	696	no	third	Lake Amanda	daughter	top	nor
339	670	up	good	Laneburgh	think	figure	determine
152	323	well	light	South Pamela	develop	create	mind
288	378	federal	enjoy	South Mikefurt	effect	image	fire
359	5	check	affect	Jamesland	range	involve	impact
207	544	him	able	Davisberg	nature	consumer	piece
396	774	article	will	Port Jessica	run	ok	school
110	291	practice	indeed	Mccannbury	relationship	memory	Democrat
382	149	Mr	wear	West Austin	specific	direction	point
266	698	bar	pick	Gayborough	name	surface	fish
193	120	late	fear	Janetshire	word	bar	address
244	589	people	chair	Gutierrezview	young	under	what
195	637	probably	reach	New Stacymouth	state	pressure	certain
246	782	hit	something	Campbellton	draw	Democrat	time
254	836	already	writer	Hernandezborough	eat	conference	should
293	230	sport	bad	East Robertport	ago	certain	analysis
385	861	let	realize	Port Davidberg	large	knowledge	value
229	226	ten	show	Lake Douglas	piece	simple	become
390	422	throughout	up	Rodriguezton	add	political	ground
113	800	quality	beautiful	New Paigefurt	film	a	remember
181	260	big	inside	Derekfort	party	born	test
125	400	program	artist	South Jessica	lose	everybody	born
207	938	they	tonight	Perezborough	realize	security	growth
173	948	adult	wrong	West Elizabeth	glass	offer	sell
377	772	support	commercial	Port Allison	really	indicate	student
136	725	defense	economy	Ericberg	we	commercial	movie
194	396	during	dog	Duncanport	dark	write	paper
237	367	ability	wide	Emilyland	small	key	music
198	917	program	race	Martinezland	attention	inside	into
255	359	subject	minute	East Sandraview	stuff	they	move
129	290	activity	return	North Gerald	senior	be	fact
260	433	much	discuss	New Saraton	future	simply	vote
348	806	soldier	exist	Clinetown	sea	although	year
147	444	available	decision	Robertchester	use	doctor	simple
136	148	ground	there	Williamburgh	turn	speech	street
297	810	time	able	Port James	time	treat	answer
392	611	attorney	very	Port Andrew	short	music	ball
297	410	within	turn	Andersonport	million	work	enough
272	531	against	debate	Millerview	use	those	figure
364	33	through	boy	New Patrick	effect	rich	word
287	539	court	he	Williamfurt	level	current	amount
255	79	carry	door	North Rhonda	civil	deal	seek
308	15	laugh	begin	Janetborough	material	machine	cause
149	807	join	last	North Sara	beautiful	summer	city
361	482	important	whatever	North Beverlystad	place	evening	offer
116	177	again	former	Lake Carrie	offer	blue	tough
370	744	his	third	West Jeremyside	agent	check	building
325	864	owner	interest	Brownshire	life	person	hotel
217	794	everyone	lay	Lake Elizabethchester	company	positive	customer
351	862	outside	realize	Port Brendaborough	letter	yet	him
244	26	pressure	look	North Leslieborough	section	point	body
218	6	skin	group	East Michaelborough	according	structure	economic
129	226	movement	allow	Lake John	participant	use	forget
364	323	natural	hear	Sharonbury	whose	artist	person
365	99	exactly	prepare	South Dustin	wrong	hear	early
268	296	through	share	East Sethfurt	same	then	give
336	977	play	end	East Laura	well	wish	protect
186	80	early	continue	New Rita	east	bag	mean
106	889	almost	half	Velasquezfurt	down	expert	subject
363	482	media	visit	Morrisburgh	throw	other	drug
365	180	while	increase	North Sarabury	media	bag	center
191	319	store	see	Smithborough	various	big	very
222	289	change	week	West Aaron	past	movie	close
117	18	policy	business	Ericmouth	teach	compare	candidate
177	568	customer	sure	Dianahaven	class	individual	beyond
309	142	trouble	take	Priceton	sister	know	check
250	744	our	somebody	South Annamouth	space	board	parent
175	596	identify	lay	New Markburgh	official	stock	several
133	780	drop	notice	Lake Kaitlin	property	admit	such
335	952	whether	north	North Christinaville	build	upon	avoid
372	102	involve	support	North Kevin	law	way	smile
254	366	into	here	East Ginaville	hear	edge	mention
116	747	cause	me	Lake Paulhaven	owner	enough	reason
128	444	real	by	East Jason	doctor	mission	use
398	38	business	organization	Manningport	some	green	boy
\.


--
-- Data for Name: relation_32; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_32 (customer_id, payment_method_id, brand, last4, exp_month, exp_year, is_default) FROM stdin;
177	348	research	member	8	980	nor
259	195	sound	cell	398	242	require
351	490	hard	vote	445	698	gun
385	405	around	city	452	467	probably
124	992	list	customer	88	810	law
352	493	power	candidate	299	498	sign
234	159	church	civil	690	96	ability
253	999	American	piece	696	670	organization
172	408	seat	apply	781	183	age
391	795	administration	number	963	188	drop
236	877	conference	prepare	956	973	example
120	535	share	model	942	18	test
317	809	right	respond	790	446	likely
191	187	agency	able	533	833	push
247	841	apply	continue	470	51	film
311	880	word	parent	377	337	hotel
257	146	blood	defense	239	648	often
206	496	training	resource	170	504	total
345	208	experience	respond	584	268	sometimes
189	266	pay	world	465	48	pressure
354	336	around	source	77	494	argue
128	496	force	miss	50	374	part
139	500	government	design	371	19	send
377	940	second	television	202	708	also
279	74	however	later	931	79	although
360	872	large	improve	417	421	difficult
361	271	move	east	702	695	when
165	683	meet	between	277	127	head
398	231	seem	prevent	912	756	economy
243	486	teacher	discussion	808	142	age
292	575	next	would	896	528	art
178	362	which	build	245	290	bad
248	774	hear	subject	778	166	speech
126	377	others	against	778	821	writer
127	222	line	side	406	49	skin
349	266	option	others	3	342	relationship
295	770	project	summer	291	800	huge
395	297	certainly	spend	209	306	to
383	970	let	growth	710	888	easy
152	924	theory	however	291	905	would
332	749	home	bring	455	975	determine
311	794	century	fund	218	210	read
354	392	actually	offer	39	818	modern
202	571	full	certainly	656	115	as
392	397	firm	direction	355	787	party
316	688	across	letter	69	754	later
218	235	leader	some	649	538	need
185	745	believe	sister	383	801	order
112	718	in	pretty	328	999	give
370	850	garden	throughout	559	305	team
230	777	account	but	285	263	hope
133	672	right	environment	386	610	protect
190	399	senior	they	791	36	region
186	886	single	animal	626	996	wife
343	903	common	particular	40	540	size
321	262	page	sit	899	61	letter
395	697	put	happen	223	348	different
133	286	cold	success	985	771	life
396	306	city	happen	99	945	hope
179	966	must	race	533	699	apply
297	809	president	five	169	959	painting
166	455	discover	smile	267	17	write
118	573	sometimes	seat	33	344	heavy
284	327	result	like	55	193	model
114	486	of	our	235	489	ready
187	675	water	available	909	669	option
243	793	dream	different	358	731	option
122	174	address	sell	734	603	different
178	691	key	response	908	359	politics
256	878	movie	audience	339	71	mean
309	52	eight	artist	125	137	catch
261	210	art	million	571	337	take
272	478	letter	could	388	319	likely
206	800	community	audience	791	468	Mr
275	382	if	maintain	488	561	arrive
140	642	accept	voice	490	687	reality
128	979	him	trade	858	413	today
242	40	like	between	572	563	suffer
382	664	move	free	134	335	design
150	852	training	travel	423	3	network
379	126	arrive	marriage	63	978	it
380	256	any	manage	210	699	respond
227	758	summer	series	658	392	scene
350	754	available	knowledge	540	756	behind
107	668	from	science	972	700	item
222	139	quality	whom	48	891	receive
308	876	camera	reduce	935	733	court
316	608	back	apply	911	396	yeah
365	356	send	imagine	997	461	up
389	39	type	might	829	42	management
263	86	model	soldier	890	763	go
236	155	political	cultural	56	983	magazine
214	809	design	walk	101	11	attack
110	790	itself	couple	914	325	spend
325	562	source	wide	538	936	study
321	203	most	significant	475	463	structure
125	409	take	natural	14	56	born
354	210	game	nature	296	707	tough
326	883	still	country	280	327	that
330	599	better	suffer	871	577	high
\.


--
-- Data for Name: relation_33; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_33 (customer_id, updated_at) FROM stdin;
378	customer
238	information
335	audience
176	summer
303	project
113	not
282	serve
198	sport
121	call
275	natural
190	society
314	later
400	happy
206	whole
367	nearly
395	gas
235	month
123	fight
197	home
261	speak
163	see
155	quality
322	season
146	bit
234	bag
290	blood
360	final
191	modern
192	kind
361	trouble
377	say
317	power
186	factor
397	million
258	kind
345	summer
332	give
106	cost
180	ahead
139	defense
343	unit
185	school
299	team
306	piece
291	report
177	collection
300	certain
321	born
359	offer
239	call
319	worker
308	health
388	soon
302	reality
278	argue
279	enter
134	first
233	room
170	day
144	need
136	try
273	he
375	position
229	decide
221	particular
307	item
160	federal
277	walk
268	impact
135	meeting
223	deal
200	add
362	find
245	party
341	society
247	central
212	drive
382	test
166	training
283	all
368	whether
358	article
143	with
141	similar
333	since
254	work
137	field
353	season
385	oil
171	but
311	model
248	nothing
349	report
110	pattern
344	give
257	from
342	question
120	party
380	speech
205	task
\.


--
-- Data for Name: relation_34; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_34 (customer_id, wishlist_id, wishlist_name) FROM stdin;
202	658	new
145	327	factor
263	947	fire
391	729	success
321	567	cold
239	99	adult
256	35	important
112	929	society
358	53	responsibility
191	954	fall
227	363	suddenly
294	342	near
129	334	network
205	660	know
134	38	lay
167	520	skin
229	414	go
256	818	true
117	669	popular
164	817	ask
251	678	government
379	393	since
121	886	like
253	149	movement
354	393	kid
315	877	beyond
395	463	easy
395	756	itself
180	487	effect
112	943	through
285	127	too
227	225	off
263	63	year
145	377	machine
287	752	film
317	603	next
149	989	begin
229	777	popular
114	803	certainly
140	381	eye
197	739	floor
191	922	a
343	728	center
290	216	for
155	932	news
314	475	opportunity
376	879	course
309	128	glass
292	902	strategy
290	55	believe
249	736	policy
124	528	among
255	680	material
298	791	kind
107	227	find
108	80	national
124	382	explain
125	458	whole
181	929	boy
116	621	back
254	822	probably
127	12	above
179	673	team
122	38	door
231	413	consumer
229	870	majority
132	434	Republican
375	60	phone
128	512	foreign
335	941	bring
120	673	church
150	714	exactly
287	982	floor
193	600	low
247	131	really
365	960	talk
242	962	maybe
104	246	rate
226	255	family
375	632	now
355	677	region
309	904	good
390	453	these
298	517	wind
307	127	difficult
257	280	senior
117	642	compare
115	647	year
356	947	eat
328	129	cultural
344	275	weight
321	935	small
208	121	room
224	795	arrive
372	533	author
270	98	decision
134	610	media
365	595	machine
333	65	force
316	894	situation
\.


--
-- Data for Name: relation_35; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_35 (customer_id, review_id, rating, title, body, created_at, reviews_product_id) FROM stdin;
355	171	859	reduce	carry	radio	\N
296	872	668	couple	wonder	defense	\N
349	256	177	word	politics	space	\N
273	979	230	PM	crime	week	\N
145	936	380	lay	well	radio	\N
206	591	349	red	policy	morning	\N
144	25	508	course	contain	sit	\N
234	883	960	church	step	you	\N
126	952	93	book	court	white	\N
386	408	503	either	conference	key	\N
292	511	809	foreign	area	blood	\N
370	551	833	type	itself	rock	\N
113	204	284	guy	ground	radio	\N
385	624	86	government	tree	skin	\N
217	188	618	increase	night	thousand	\N
151	619	507	affect	name	hit	\N
117	507	371	that	worry	create	\N
127	244	23	believe	response	enjoy	\N
264	49	413	provide	degree	but	\N
273	582	400	family	every	respond	\N
334	906	742	national	large	trip	\N
221	186	814	share	quite	international	\N
381	270	564	money	themselves	chair	\N
265	523	959	street	audience	gas	\N
365	990	72	food	look	ball	\N
167	508	149	million	stop	newspaper	\N
381	236	615	design	beat	people	\N
369	128	725	reflect	pay	hard	\N
339	938	411	herself	teach	trip	\N
161	269	446	issue	why	beautiful	\N
365	36	686	day	go	big	\N
385	308	954	professional	institution	everyone	\N
316	755	50	college	traditional	else	\N
301	662	956	continue	east	remain	\N
254	370	499	consider	believe	although	\N
196	798	99	eat	off	its	\N
187	17	208	night	young	part	\N
298	834	359	property	site	card	\N
108	128	218	view	night	process	\N
136	255	239	need	argue	oil	\N
298	550	300	maintain	boy	easy	\N
317	897	785	population	manage	think	\N
150	460	339	different	model	whom	\N
244	780	971	attention	skin	yeah	\N
256	613	789	happy	production	choice	\N
116	443	676	drug	Mrs	reveal	\N
199	405	148	herself	thing	line	\N
319	366	861	forget	suffer	economic	\N
369	887	314	nation	put	level	\N
310	951	34	scientist	similar	civil	\N
120	57	379	front	family	first	\N
188	873	953	commercial	discover	cover	\N
345	433	290	actually	same	conference	\N
353	675	419	three	bank	responsibility	292
140	929	685	marriage	face	why	1120
103	49	379	experience	thing	none	683
323	322	783	peace	or	seem	593
386	532	79	product	accept	keep	2059
274	888	55	full	pay	recognize	1054
391	714	804	nothing	site	north	127
335	248	160	you	report	head	288
331	529	750	require	win	moment	624
105	452	573	affect	challenge	heart	30
245	7	220	war	from	side	1034
400	660	235	beat	why	after	1823
165	773	180	drug	few	American	169
289	477	191	various	table	attack	1893
193	235	953	too	open	situation	1599
165	42	720	development	force	position	197
309	328	136	so	week	learn	615
199	723	205	him	change	low	1485
239	772	152	theory	let	book	1845
127	699	977	Congress	stand	natural	1662
148	383	554	writer	view	hand	869
186	255	734	clearly	threat	professor	375
325	241	221	put	western	provide	1223
366	740	617	likely	indicate	beautiful	42
269	533	278	poor	heart	write	977
274	449	358	sometimes	audience	build	1922
223	471	761	suddenly	off	event	9
225	529	685	fall	hold	simply	2031
336	214	926	wrong	beyond	represent	188
322	870	626	Mrs	gas	share	428
294	815	98	finish	age	enough	914
202	356	30	learn	research	there	471
392	42	177	dog	carry	value	636
244	484	806	move	among	sign	1035
219	259	677	before	need	air	1333
139	22	611	green	work	officer	1300
286	946	525	officer	final	including	567
272	424	949	also	growth	technology	1488
377	587	191	short	fine	others	771
195	629	393	main	before	ball	1791
227	359	97	truth	between	positive	1082
311	1000	462	create	value	answer	923
297	701	62	public	carry	pull	486
230	759	374	purpose	floor	good	1192
373	449	197	cost	decide	throw	1049
353	881	867	only	charge	American	1316
204	496	56	when	like	mouth	2080
\.


--
-- Data for Name: relation_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_36 (custorder_id, placed_at, status, customer_orders_customer_id, payment_order_customer_id, payment_order_payment_method_id) FROM stdin;
97	religious	boy	\N	\N	\N
5	customer	particular	187	\N	\N
7	maybe	against	299	\N	\N
16	force	and	316	\N	\N
17	himself	smile	259	\N	\N
41	cold	girl	261	\N	\N
43	exist	design	228	\N	\N
48	all	draw	273	\N	\N
77	south	many	299	\N	\N
37	per	exactly	170	292	575
71	wall	rate	163	191	187
52	detail	effort	292	236	877
36	me	chance	\N	321	203
79	building	threat	351	133	286
19	onto	local	250	259	195
49	manage	trouble	\N	360	872
66	base	either	364	177	348
32	design	beyond	191	311	794
81	statement	must	111	380	256
3	shake	fast	360	128	979
22	group	figure	\N	206	800
75	wide	parent	305	295	770
80	light	himself	\N	107	668
34	article	instead	213	186	886
35	radio	president	256	110	790
59	writer	common	\N	311	880
40	someone	contain	\N	218	235
56	capital	defense	265	206	496
1	store	candidate	394	218	235
28	degree	claim	260	128	979
84	majority	community	\N	361	271
25	condition	explain	389	127	222
78	study	away	167	243	793
65	interest	among	\N	350	754
21	level	and	123	234	159
8	firm	image	283	385	405
4	thing	might	\N	317	809
39	mother	consumer	190	377	940
64	if	clearly	356	392	397
24	everything	strategy	363	275	382
27	this	wind	179	187	675
87	reduce	town	\N	316	608
9	feeling	support	360	317	809
94	drug	condition	\N	150	852
10	American	draw	338	259	195
12	science	challenge	174	122	174
63	technology	rise	\N	257	146
85	everything	officer	396	152	924
23	truth	simple	\N	227	758
73	plan	no	\N	321	262
58	pay	letter	293	351	490
42	table	it	\N	172	408
13	east	common	160	214	809
92	party	hair	\N	248	774
70	none	follow	\N	150	852
18	claim	successful	\N	236	155
57	drug	boy	188	187	675
46	song	decide	\N	242	40
89	cup	spend	204	382	664
15	everybody	full	201	118	573
68	put	analysis	\N	243	486
98	occur	make	201	\N	\N
96	research	house	236	272	478
95	big	child	299	172	408
93	each	analysis	352	122	174
91	yet	safe	298	120	535
29	me	meet	123	272	478
86	identify	think	154	206	800
61	full	doctor	150	256	878
74	key	reflect	265	222	139
62	market	pay	314	202	571
38	ball	respond	\N	392	397
6	church	tax	204	236	155
14	hotel	organization	226	292	575
31	husband	wind	\N	263	86
2	energy	design	116	234	159
83	hit	bad	338	126	377
100	sound	book	360	389	39
67	information	create	374	349	266
90	agreement	apply	184	214	809
99	have	leg	\N	120	535
60	where	four	348	190	399
54	morning	dog	224	122	174
55	into	continue	270	185	745
30	house	off	391	398	231
76	social	when	\N	311	880
47	child	experience	313	112	718
44	seven	source	249	107	668
51	mean	investment	312	379	126
53	team	might	371	330	599
11	news	happen	\N	272	478
69	after	fish	377	330	599
88	wear	theory	\N	389	39
82	large	past	203	133	672
45	early	each	293	349	266
26	actually	seven	298	122	174
20	up	right	\N	380	256
72	coach	level	128	248	774
50	reflect	all	396	185	745
33	natural	series	\N	107	668
\.


--
-- Data for Name: relation_37; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_37 (custorder_id, shipment_id, carrier, tracking_no, shipped_at, delivered_at, courier_shipments_courierpartner_id) FROM stdin;
53	418	again	provide	right	commercial	\N
71	664	office	try	capital	oil	\N
11	424	movie	fight	friend	baby	\N
84	807	couple	believe	myself	early	\N
64	183	eye	series	glass	maybe	\N
12	202	meet	white	successful	strong	40
2	192	first	senior	real	effort	92
42	67	someone	born	social	have	47
67	944	college	allow	then	little	2
18	658	performance	can	value	begin	94
100	407	recognize	computer	stay	five	74
59	83	usually	decision	individual	sound	4
2	590	foot	high	say	mind	25
68	291	million	brother	focus	class	84
77	47	put	store	upon	believe	79
52	162	its	factor	during	describe	94
78	853	reach	his	speak	grow	4
40	746	reveal	seek	somebody	end	37
51	769	improve	Republican	enough	event	41
35	685	stage	job	put	husband	4
19	173	hope	serve	hold	effort	51
21	410	main	lawyer	family	bad	13
53	426	gas	page	moment	want	94
54	445	top	floor	yeah	weight	67
84	573	sense	energy	federal	term	82
100	317	life	try	camera	candidate	85
72	342	conference	entire	we	kitchen	45
96	71	way	sign	authority	reach	10
96	302	answer	trip	her	could	80
14	42	agent	model	include	certain	28
42	540	pretty	argue	fire	boy	97
44	204	federal	garden	between	line	14
8	929	discussion	window	bring	grow	22
91	971	like	focus	especially	bar	56
50	682	simple	son	relationship	difference	82
16	927	arm	outside	practice	various	92
32	246	prove	because	phone	federal	33
87	925	southern	democratic	product	clearly	62
48	120	rather	nor	meeting	station	97
37	388	practice	which	cost	turn	85
32	170	chance	leader	prevent	car	54
15	93	assume	month	range	practice	23
8	998	be	pressure	economic	set	32
66	796	or	become	sign	standard	73
92	47	catch	tend	former	would	97
3	5	whose	he	while	young	53
86	599	Democrat	hotel	account	option	84
40	30	red	chair	financial	situation	86
88	886	well	to	dinner	put	68
75	839	forward	certainly	husband	similar	38
11	124	soldier	successful	feeling	form	30
92	272	doctor	wish	call	politics	31
69	807	medical	high	smile	name	26
21	578	now	everything	animal	sign	52
62	282	difference	choose	realize	bar	28
75	476	energy	seat	kind	of	73
96	179	present	gas	left	per	42
94	198	community	above	race	moment	84
80	639	responsibility	watch	join	growth	94
38	137	body	often	politics	data	78
61	497	among	like	brother	seek	60
57	243	drive	significant	plant	wait	85
100	587	fast	camera	gun	huge	87
16	479	he	glass	take	data	61
67	61	house	relationship	father	almost	86
6	534	within	writer	PM	similar	82
49	658	concern	strong	simply	rather	51
25	75	fact	child	down	must	50
27	234	single	take	no	fine	43
72	513	if	fear	watch	despite	31
51	819	blue	usually	happen	exactly	77
82	931	Mrs	decide	discuss	sell	19
46	550	debate	example	bag	without	14
64	50	claim	Mrs	scientist	development	94
11	51	quality	it	region	interest	26
61	239	rise	half	act	or	40
21	946	charge	short	series	structure	2
79	170	ok	sort	recognize	organization	100
47	984	person	answer	cut	half	96
54	214	choose	remain	network	who	61
43	78	care	above	offer	administration	36
35	562	get	week	industry	cover	17
85	368	necessary	involve	five	loss	62
75	350	strong	already	seven	nature	40
93	416	kitchen	shake	development	democratic	32
43	473	method	too	prepare	environment	16
73	231	forget	particularly	participant	himself	5
88	794	bed	me	natural	between	27
27	24	assume	though	choose	knowledge	41
66	52	education	truth	fine	room	77
46	279	prevent	ball	rich	church	65
33	610	fear	machine	prepare	physical	77
43	382	kid	need	arrive	media	18
57	984	think	against	among	value	3
60	769	she	among	approach	lawyer	60
17	293	good	others	small	toward	29
71	535	door	international	discussion	third	95
65	19	customer	organization	explain	agree	95
83	891	knowledge	American	peace	data	85
55	342	responsibility	appear	nearly	special	19
\.


--
-- Data for Name: relation_38; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_38 (promotion_id, promo_name, starts_at, ends_at, discount_type, discount_value) FROM stdin;
1	remain	box	amount	field	employee
2	information	thus	reduce	military	husband
3	individual	whether	culture	town	resource
4	simply	rich	expert	art	community
5	deal	whose	stock	understand	within
6	glass	maintain	student	performance	expect
7	artist	behind	effort	group	fast
8	food	board	main	child	difficult
9	camera	each	chair	now	hour
10	director	tend	voice	build	mention
11	tell	movement	use	mention	power
12	good	one	project	according	enjoy
13	pass	analysis	me	interview	eat
14	eye	effort	idea	good	simple
15	today	star	cause	watch	thing
16	outside	too	consider	seat	a
17	certain	material	must	house	why
18	beyond	decide	perhaps	should	increase
19	cut	against	still	house	person
20	to	much	gun	interesting	time
21	able	analysis	who	hit	entire
22	project	low	central	involve	economy
23	sometimes	believe	painting	pay	rest
24	produce	increase	heart	to	art
25	simple	tonight	staff	suggest	rich
26	affect	imagine	note	turn	final
27	major	when	soldier	role	degree
28	model	team	fight	start	cup
29	name	method	check	many	interview
30	pass	choose	action	hospital	already
31	month	prevent	culture	degree	generation
32	drop	glass	window	spend	sound
33	why	explain	family	among	happen
34	attack	senior	involve	respond	seek
35	difference	couple	sure	both	laugh
36	against	final	organization	explain	history
37	bag	follow	attorney	economy	finish
38	though	police	good	career	six
39	see	suggest	sport	develop	imagine
40	begin	center	bad	oil	wrong
41	figure	analysis	ask	purpose	less
42	organization	us	age	on	with
43	appear	other	watch	fire	majority
44	hard	sit	operation	wonder	change
45	available	guess	ok	send	capital
46	ask	pull	second	stay	top
47	recognize	hour	process	good	case
48	young	rest	glass	he	those
49	scientist	long	everything	reason	single
50	home	the	rich	computer	item
51	push	face	wife	accept	family
52	then	watch	still	war	environment
53	big	soldier	other	citizen	suggest
54	technology	arm	coach	avoid	name
55	doctor	near	time	career	drug
56	anything	but	win	drive	lay
57	us	near	they	bad	relationship
58	rule	wish	hear	story	choice
59	how	sign	event	eight	training
60	simply	week	southern	government	wall
61	drop	record	situation	effect	sell
62	win	seek	agree	Mr	husband
63	mind	best	it	woman	identify
64	provide	party	walk	network	decade
65	main	style	trouble	social	create
66	factor	job	business	name	marriage
67	too	performance	perhaps	yet	significant
68	second	page	response	million	land
69	next	age	catch	remember	term
70	argue	want	concern	choose	head
71	site	more	couple	sense	approach
72	television	speech	probably	fire	car
73	program	animal	star	reduce	white
74	attention	will	beautiful	else	not
75	speak	letter	single	against	scene
76	difference	effort	tough	ability	amount
77	network	article	may	fight	news
78	movement	fight	structure	beautiful	less
79	view	group	kid	growth	child
80	father	there	measure	teach	budget
81	expect	discuss	travel	interview	suffer
82	director	middle	present	present	financial
83	where	speak	know	receive	worker
84	sound	each	receive	assume	be
85	identify	thank	collection	maintain	trip
86	find	marriage	exactly	join	decade
87	rest	participant	nothing	before	unit
88	service	environmental	certainly	street	story
89	to	actually	share	five	accept
90	tonight	actually	few	production	him
91	vote	enough	generation	test	both
92	sing	body	west	that	history
93	performance	alone	first	analysis	pay
94	television	owner	rest	try	material
95	focus	over	memory	member	financial
96	wait	no	serious	easy	box
97	change	care	production	administration	spring
98	school	seat	total	hear	behind
99	player	check	enjoy	such	best
100	development	minute	air	ask	budget
\.


--
-- Data for Name: relation_39; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_39 (promotion_id, coupon_code, max_uses, per_user_limit, order_coupons_custorder_id) FROM stdin;
11	690	158	375	83
22	843	903	667	4
15	247	733	482	93
97	466	853	856	80
21	490	651	113	60
9	483	108	537	5
85	361	691	426	98
54	335	842	358	73
5	371	521	340	33
58	36	978	161	1
21	138	108	168	91
39	643	701	359	66
31	681	649	900	98
30	990	617	354	28
4	598	339	961	74
97	855	594	157	71
97	74	86	377	80
73	657	825	544	23
45	961	486	478	75
45	798	655	91	25
59	641	767	430	45
8	393	204	766	18
72	302	39	335	17
29	675	405	748	97
3	875	404	505	10
56	307	455	218	18
81	393	982	585	17
35	92	152	832	27
1	249	877	988	5
63	321	324	86	71
40	988	942	977	18
85	148	916	177	6
1	526	208	520	57
95	524	62	273	19
61	98	268	341	61
39	286	372	654	85
99	234	951	678	7
70	805	198	632	60
59	68	560	594	49
97	711	682	275	68
49	144	564	147	57
13	345	661	124	24
39	149	908	54	11
20	665	967	894	22
73	16	732	663	55
53	733	707	162	8
31	96	205	273	15
59	135	835	485	61
23	435	382	306	91
3	388	87	280	31
18	588	898	898	75
62	869	8	309	41
86	823	829	184	7
47	853	166	76	81
35	7	132	349	88
86	792	850	784	61
47	525	555	672	29
86	835	158	114	65
100	777	208	994	27
58	284	677	643	18
27	956	770	215	68
58	833	206	529	26
10	94	417	417	10
56	627	835	570	14
86	470	178	846	5
64	586	737	267	67
14	966	207	310	23
13	644	383	319	17
45	94	5	219	5
41	99	629	218	13
58	698	410	393	73
99	545	205	255	52
56	437	831	132	69
46	283	642	369	4
16	945	47	968	7
89	735	880	658	69
49	723	384	504	79
74	795	189	328	14
11	619	465	252	75
40	885	748	990	24
69	427	575	593	76
89	872	986	725	30
80	593	549	409	76
52	854	134	885	36
28	198	17	770	5
21	355	978	137	76
39	329	902	84	60
85	26	51	64	64
90	266	520	197	1
25	556	964	241	99
43	960	528	781	53
74	385	223	817	20
11	296	125	222	94
14	997	888	974	14
34	739	384	803	7
73	554	555	131	75
98	710	927	325	69
98	915	17	360	40
53	976	89	218	22
86	595	41	20	14
\.


--
-- Data for Name: relation_4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_4 (electronics_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, sensor_mp, role, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
302	surface	not	827	291	226	want	613	\N	electronics	\N	\N	\N	\N
304	professor	Republican	464	692	376	nor	818	\N	electronics	\N	\N	\N	\N
306	station	program	207	9	765	work	527	\N	electronics	\N	\N	\N	\N
307	against	receive	898	499	79	area	631	\N	electronics	\N	\N	\N	\N
308	old	lay	904	523	816	give	42	\N	electronics	\N	\N	\N	\N
309	conference	many	361	872	470	happy	195	\N	electronics	\N	\N	\N	\N
311	book	career	123	842	310	view	995	\N	electronics	\N	\N	\N	\N
313	every	do	422	556	963	next	618	\N	electronics	\N	\N	\N	\N
314	happy	group	646	596	316	cell	310	\N	electronics	\N	\N	\N	\N
315	opportunity	low	135	519	455	finally	564	\N	electronics	\N	\N	\N	\N
316	town	bar	792	998	167	state	652	\N	electronics	\N	\N	\N	\N
317	than	through	10	435	754	billion	378	\N	electronics	\N	\N	\N	\N
318	increase	green	431	412	289	add	921	\N	electronics	\N	\N	\N	\N
319	out	represent	93	948	93	prevent	393	\N	electronics	\N	\N	\N	\N
321	wall	left	768	873	493	large	398	\N	electronics	\N	\N	\N	\N
322	carry	tonight	468	823	120	reduce	364	\N	electronics	\N	\N	\N	\N
323	while	cultural	149	426	152	or	177	\N	electronics	\N	\N	\N	\N
325	apply	real	806	295	973	energy	265	\N	electronics	\N	\N	\N	\N
326	small	difficult	962	527	295	administration	708	\N	electronics	\N	\N	\N	\N
327	full	should	281	444	344	it	221	\N	electronics	\N	\N	\N	\N
328	world	such	733	850	504	low	734	\N	electronics	\N	\N	\N	\N
329	mean	language	436	94	66	develop	212	\N	electronics	\N	\N	\N	\N
330	truth	determine	990	154	235	election	106	\N	electronics	\N	\N	\N	\N
331	stay	surface	260	160	492	baby	409	\N	electronics	\N	\N	\N	\N
332	no	around	666	741	192	buy	92	\N	electronics	\N	\N	\N	\N
333	blood	often	438	627	978	wear	563	\N	electronics	\N	\N	\N	\N
335	matter	everybody	969	668	993	war	753	\N	electronics	\N	\N	\N	\N
336	too	through	567	696	430	throw	272	\N	electronics	\N	\N	\N	\N
337	thing	maybe	701	286	184	social	825	\N	electronics	\N	\N	\N	\N
341	beyond	thing	699	521	510	tell	119	\N	electronics	\N	\N	\N	\N
342	summer	fear	621	875	491	ahead	153	\N	electronics	\N	\N	\N	\N
343	save	skill	396	629	928	attorney	172	\N	electronics	\N	\N	\N	\N
346	read	food	778	639	346	together	106	\N	electronics	\N	\N	\N	\N
347	example	most	9	776	747	tax	949	\N	electronics	\N	\N	\N	\N
352	network	heart	152	134	263	send	418	\N	electronics	\N	\N	\N	\N
353	occur	rule	575	646	613	much	546	\N	electronics	\N	\N	\N	\N
354	mean	analysis	855	624	522	she	969	\N	electronics	\N	\N	\N	\N
355	cause	itself	424	277	287	between	713	\N	electronics	\N	\N	\N	\N
356	continue	try	314	274	504	know	511	\N	electronics	\N	\N	\N	\N
357	song	travel	377	614	482	friend	347	\N	electronics	\N	\N	\N	\N
358	candidate	and	181	621	778	national	757	\N	electronics	\N	\N	\N	\N
359	table	success	902	595	711	always	548	\N	electronics	\N	\N	\N	\N
362	simple	campaign	638	506	492	small	122	\N	electronics	\N	\N	\N	\N
363	while	special	131	909	144	wonder	231	\N	electronics	\N	\N	\N	\N
364	service	end	91	651	552	color	577	\N	electronics	\N	\N	\N	\N
365	the	lawyer	177	702	119	task	577	\N	electronics	\N	\N	\N	\N
366	allow	mouth	205	516	582	analysis	433	\N	electronics	\N	\N	\N	\N
368	similar	political	313	842	631	strategy	87	\N	electronics	\N	\N	\N	\N
369	town	message	761	230	287	treat	276	\N	electronics	\N	\N	\N	\N
370	news	tough	616	737	531	boy	24	\N	electronics	\N	\N	\N	\N
373	pull	middle	588	43	356	stuff	95	\N	electronics	\N	\N	\N	\N
376	relationship	prevent	81	143	948	trade	381	\N	electronics	\N	\N	\N	\N
377	wall	not	957	738	654	leader	97	\N	electronics	\N	\N	\N	\N
379	speak	couple	910	330	982	throughout	361	\N	electronics	\N	\N	\N	\N
380	race	ready	946	823	810	similar	621	\N	electronics	\N	\N	\N	\N
383	court	much	429	549	957	opportunity	309	\N	electronics	\N	\N	\N	\N
384	any	fall	920	225	648	per	563	\N	electronics	\N	\N	\N	\N
387	before	simple	560	21	257	technology	968	\N	electronics	\N	\N	\N	\N
388	for	remember	543	269	485	rise	413	\N	electronics	\N	\N	\N	\N
386	offer	fight	247	221	919	service	282	\N	electronics	\N	[{"barcode": "early", "variant_id": "228", "price_override": "682", "is_active_variant": "934"}]	\N	\N
360	under	behind	154	60	517	above	542	\N	electronics	\N	[{"barcode": "ago", "variant_id": "554", "price_override": "352", "is_active_variant": "508"}]	\N	\N
338	majority	hope	813	722	879	full	806	\N	electronics	\N	\N	[{"price": "484", "ends_at": "soldier", "price_id": "690", "starts_at": "nothing"}]	\N
349	fall	police	554	641	451	from	779	\N	electronics	\N	\N	\N	25
375	know	home	276	543	51	product	32	\N	electronics	\N	\N	\N	30
348	assume	door	907	992	726	character	58	\N	electronics	\N	\N	\N	43
371	child	mother	125	338	356	star	117	\N	electronics	\N	\N	\N	41
390	air	director	671	558	372	draw	634	\N	electronics	\N	\N	\N	\N
391	very	industry	316	457	699	rich	160	\N	electronics	\N	\N	\N	\N
394	beat	upon	821	869	786	group	374	\N	electronics	\N	\N	\N	\N
395	job	free	910	300	164	cost	870	\N	electronics	\N	\N	\N	\N
396	defense	happy	815	391	854	huge	416	\N	electronics	\N	\N	\N	\N
398	walk	improve	683	704	819	interesting	551	\N	electronics	\N	\N	\N	\N
399	seek	modern	976	10	942	miss	389	\N	electronics	\N	\N	\N	\N
400	skin	moment	765	576	965	benefit	471	\N	electronics	\N	\N	\N	\N
401	crime	check	32	798	443	address	283	\N	computer	\N	\N	\N	\N
404	power	official	852	114	602	open	544	\N	computer	\N	\N	\N	\N
410	politics	score	745	355	260	sign	632	\N	computer	\N	\N	\N	\N
413	great	within	532	148	58	pull	690	\N	computer	\N	\N	\N	\N
414	good	member	913	526	177	there	916	\N	computer	\N	\N	\N	\N
417	morning	whether	234	103	255	of	999	\N	computer	\N	\N	\N	\N
418	foot	read	337	673	252	property	761	\N	computer	\N	\N	\N	\N
419	reflect	first	379	505	668	should	443	\N	computer	\N	\N	\N	\N
421	analysis	least	860	129	154	something	386	\N	computer	\N	\N	\N	\N
422	crime	rock	112	819	27	born	964	\N	computer	\N	\N	\N	\N
423	serve	beat	470	785	387	baby	940	\N	computer	\N	\N	\N	\N
425	try	they	20	476	407	unit	551	\N	computer	\N	\N	\N	\N
426	think	eight	401	6	558	yeah	434	\N	computer	\N	\N	\N	\N
427	fish	improve	163	679	184	area	679	\N	computer	\N	\N	\N	\N
428	agree	thousand	78	794	550	suffer	180	\N	computer	\N	\N	\N	\N
430	international	born	814	42	959	center	718	\N	computer	\N	\N	\N	\N
431	instead	great	708	627	670	detail	254	\N	computer	\N	\N	\N	\N
433	fund	matter	574	97	657	Mrs	47	\N	computer	\N	\N	\N	\N
437	assume	table	652	460	514	popular	568	\N	computer	\N	\N	\N	\N
438	of	dinner	716	405	716	pick	828	\N	computer	\N	\N	\N	\N
440	shake	blood	266	581	287	analysis	800	\N	computer	\N	\N	\N	\N
442	week	budget	147	265	262	contain	358	\N	computer	\N	\N	\N	\N
443	trial	common	286	580	479	contain	153	\N	computer	\N	\N	\N	\N
444	forward	our	134	982	259	send	202	\N	computer	\N	\N	\N	\N
445	capital	red	821	594	551	today	557	\N	computer	\N	\N	\N	\N
446	recent	go	734	893	246	floor	568	\N	computer	\N	\N	\N	\N
448	teacher	owner	80	157	806	include	31	\N	computer	\N	\N	\N	\N
451	give	event	871	391	143	pay	208	\N	computer	\N	\N	\N	\N
452	listen	control	737	407	366	community	231	\N	computer	\N	\N	\N	\N
455	phone	show	475	23	298	effort	630	\N	computer	\N	\N	\N	\N
456	beyond	research	773	455	262	according	54	\N	computer	\N	\N	\N	\N
458	hard	like	645	842	106	when	875	\N	computer	\N	\N	\N	\N
459	book	drive	649	601	252	account	517	\N	computer	\N	\N	\N	\N
460	society	success	407	125	935	upon	839	\N	computer	\N	\N	\N	\N
463	within	important	829	207	782	nearly	679	\N	computer	\N	\N	\N	\N
464	lot	policy	559	629	237	contain	39	\N	computer	\N	\N	\N	\N
466	eight	owner	991	281	788	explain	409	\N	computer	\N	\N	\N	\N
467	executive	skin	506	101	686	degree	192	\N	computer	\N	\N	\N	\N
468	author	assume	17	465	772	inside	501	\N	computer	\N	\N	\N	\N
469	among	fight	404	843	748	head	930	\N	computer	\N	\N	\N	\N
471	everything	coach	854	453	194	tax	610	\N	computer	\N	\N	\N	\N
473	learn	dark	202	239	369	stop	350	\N	computer	\N	\N	\N	\N
474	measure	myself	54	470	46	ground	913	\N	computer	\N	\N	\N	\N
475	board	American	875	929	962	friend	481	\N	computer	\N	\N	\N	\N
476	stock	personal	598	514	67	possible	95	\N	computer	\N	\N	\N	\N
411	positive	it	425	386	368	cause	773	\N	computer	\N	\N	[{"price": "50", "ends_at": "break", "price_id": "77", "starts_at": "generation"}]	\N
432	space	time	799	477	122	force	397	\N	computer	\N	\N	\N	30
449	husband	public	416	392	428	simple	606	\N	computer	\N	\N	\N	60
424	you	treatment	158	996	538	staff	970	\N	computer	\N	\N	\N	85
447	seem	material	401	729	201	his	641	\N	computer	\N	\N	\N	82
436	leave	production	137	576	725	two	790	\N	computer	\N	\N	[{"price": "841", "ends_at": "back", "price_id": "188", "starts_at": "surface"}]	35
480	maintain	somebody	603	767	325	member	611	\N	computer	\N	\N	\N	\N
481	possible	give	570	872	285	doctor	886	\N	computer	\N	\N	\N	\N
482	star	court	807	810	795	approach	426	\N	computer	\N	\N	\N	\N
483	enjoy	oil	533	810	25	expert	38	\N	computer	\N	\N	\N	\N
484	beat	condition	543	15	104	imagine	345	\N	computer	\N	\N	\N	\N
485	some	set	378	769	565	trade	653	\N	computer	\N	\N	\N	\N
486	machine	be	597	76	497	news	868	\N	computer	\N	\N	\N	\N
488	participant	physical	932	333	370	message	150	\N	computer	\N	\N	\N	\N
492	item	research	786	646	253	game	773	\N	computer	\N	\N	\N	\N
493	while	enter	407	564	291	computer	77	\N	computer	\N	\N	\N	\N
494	former	above	175	927	959	what	424	\N	computer	\N	\N	\N	\N
495	end	wind	130	290	565	land	241	\N	computer	\N	\N	\N	\N
496	line	property	102	284	740	drop	49	\N	computer	\N	\N	\N	\N
500	agree	mother	373	819	766	hair	30	\N	computer	\N	\N	\N	\N
602	cell	yard	524	327	681	into	620	\N	laptop	\N	\N	\N	\N
604	together	fast	74	269	65	require	20	\N	laptop	\N	\N	\N	\N
609	quality	surface	670	737	580	apply	590	\N	laptop	\N	\N	\N	\N
610	threat	six	263	692	177	behind	147	\N	laptop	\N	\N	\N	\N
612	share	dark	853	493	995	place	39	\N	laptop	\N	\N	\N	\N
614	fear	whom	483	584	496	direction	940	\N	laptop	\N	\N	\N	\N
615	reason	paper	175	577	726	amount	408	\N	laptop	\N	\N	\N	\N
616	reflect	occur	566	742	576	likely	170	\N	laptop	\N	\N	\N	\N
618	table	large	244	705	661	phone	872	\N	laptop	\N	\N	\N	\N
619	building	significant	777	893	366	seat	166	\N	laptop	\N	\N	\N	\N
620	establish	hand	953	853	47	home	581	\N	laptop	\N	\N	\N	\N
621	instead	measure	828	178	583	appear	490	\N	laptop	\N	\N	\N	\N
622	for	establish	240	906	898	similar	455	\N	laptop	\N	\N	\N	\N
623	investment	rich	522	214	410	nation	127	\N	laptop	\N	\N	\N	\N
624	ask	foreign	142	174	338	talk	185	\N	laptop	\N	\N	\N	\N
625	point	best	760	633	543	rule	240	\N	laptop	\N	\N	\N	\N
626	save	make	438	480	469	single	174	\N	laptop	\N	\N	\N	\N
629	culture	person	731	671	526	task	633	\N	laptop	\N	\N	\N	\N
631	level	debate	56	88	740	local	100	\N	laptop	\N	\N	\N	\N
632	people	science	141	455	407	human	487	\N	laptop	\N	\N	\N	\N
633	miss	then	874	608	38	manage	970	\N	laptop	\N	\N	\N	\N
634	wonder	me	461	501	400	improve	935	\N	laptop	\N	\N	\N	\N
636	compare	thousand	29	570	63	finish	999	\N	laptop	\N	\N	\N	\N
637	six	serve	236	457	871	add	453	\N	laptop	\N	\N	\N	\N
638	economic	there	764	105	398	change	766	\N	laptop	\N	\N	\N	\N
639	down	movie	953	420	477	article	520	\N	laptop	\N	\N	\N	\N
640	choice	billion	411	555	887	start	905	\N	laptop	\N	\N	\N	\N
642	language	break	995	141	626	station	231	\N	laptop	\N	\N	\N	\N
647	always	marriage	321	870	772	heart	179	\N	laptop	\N	\N	\N	\N
649	appear	health	550	327	324	section	975	\N	laptop	\N	\N	\N	\N
650	clearly	small	958	651	350	perform	576	\N	laptop	\N	\N	\N	\N
651	whose	manage	474	332	497	rise	844	\N	laptop	\N	\N	\N	\N
652	yet	a	224	171	247	piece	880	\N	laptop	\N	\N	\N	\N
653	rock	clear	252	53	800	send	928	\N	laptop	\N	\N	\N	\N
654	financial	risk	64	337	430	similar	353	\N	laptop	\N	\N	\N	\N
655	necessary	environmental	615	610	903	technology	215	\N	laptop	\N	\N	\N	\N
656	of	respond	875	296	929	lead	322	\N	laptop	\N	\N	\N	\N
657	break	detail	394	686	793	someone	9	\N	laptop	\N	\N	\N	\N
658	too	short	924	992	983	cell	619	\N	laptop	\N	\N	\N	\N
659	yes	forget	631	860	916	big	240	\N	laptop	\N	\N	\N	\N
660	young	visit	627	328	394	book	728	\N	laptop	\N	\N	\N	\N
661	bad	run	99	445	5	share	96	\N	laptop	\N	\N	\N	\N
662	above	read	975	157	115	region	772	\N	laptop	\N	\N	\N	\N
664	our	first	199	163	169	will	988	\N	laptop	\N	\N	\N	\N
667	population	there	368	798	179	south	241	\N	laptop	\N	\N	\N	\N
479	suggest	still	932	893	489	relate	438	\N	computer	\N	[{"barcode": "kitchen", "variant_id": "310", "price_override": "141", "is_active_variant": "266"}]	\N	\N
635	course	line	775	178	863	serious	185	\N	laptop	\N	\N	[{"price": "335", "ends_at": "dinner", "price_id": "775", "starts_at": "drive"}]	\N
477	home	return	816	525	863	decision	404	\N	computer	\N	\N	[{"price": "4", "ends_at": "service", "price_id": "638", "starts_at": "technology"}]	\N
605	itself	owner	336	232	321	try	855	\N	laptop	\N	\N	\N	55
487	standard	accept	457	343	513	pass	945	\N	computer	\N	\N	\N	74
643	book	past	222	909	465	exist	106	\N	laptop	\N	\N	\N	13
613	protect	affect	254	81	759	world	40	\N	laptop	\N	\N	\N	43
671	have	management	542	473	909	factor	737	\N	laptop	\N	\N	\N	\N
675	blood	key	108	457	736	father	684	\N	laptop	\N	\N	\N	\N
676	magazine	anything	442	381	664	table	955	\N	laptop	\N	\N	\N	\N
677	want	act	422	447	377	record	201	\N	laptop	\N	\N	\N	\N
678	ok	character	244	246	22	campaign	686	\N	laptop	\N	\N	\N	\N
679	human	whose	804	632	452	measure	56	\N	laptop	\N	\N	\N	\N
681	particularly	Mrs	805	286	426	nearly	881	\N	laptop	\N	\N	\N	\N
682	else	majority	791	677	384	important	798	\N	laptop	\N	\N	\N	\N
683	send	develop	766	49	519	meet	133	\N	laptop	\N	\N	\N	\N
684	street	present	536	373	599	thousand	358	\N	laptop	\N	\N	\N	\N
686	few	wide	825	20	375	pull	155	\N	laptop	\N	\N	\N	\N
689	hot	south	100	132	552	whatever	659	\N	laptop	\N	\N	\N	\N
691	rich	simple	325	449	120	and	216	\N	laptop	\N	\N	\N	\N
693	major	good	905	929	201	opportunity	707	\N	laptop	\N	\N	\N	\N
694	responsibility	officer	90	4	525	large	934	\N	laptop	\N	\N	\N	\N
695	whom	begin	94	315	500	office	588	\N	laptop	\N	\N	\N	\N
696	animal	sign	306	402	644	animal	687	\N	laptop	\N	\N	\N	\N
697	since	program	284	931	636	station	449	\N	laptop	\N	\N	\N	\N
699	compare	drug	276	527	178	soon	467	\N	laptop	\N	\N	\N	\N
700	animal	my	605	187	329	TV	778	\N	laptop	\N	\N	\N	\N
701	social	listen	710	424	702	fast	489	\N	tablet	\N	\N	\N	\N
702	while	bed	646	226	314	sister	65	\N	tablet	\N	\N	\N	\N
703	only	child	506	997	842	arrive	847	\N	tablet	\N	\N	\N	\N
704	usually	research	266	866	859	leg	809	\N	tablet	\N	\N	\N	\N
705	PM	entire	901	311	142	push	514	\N	tablet	\N	\N	\N	\N
707	trade	popular	584	933	334	necessary	129	\N	tablet	\N	\N	\N	\N
708	dinner	mission	1000	15	551	shake	789	\N	tablet	\N	\N	\N	\N
709	raise	same	638	830	67	house	291	\N	tablet	\N	\N	\N	\N
713	senior	along	511	543	352	as	193	\N	tablet	\N	\N	\N	\N
714	eight	course	57	632	120	feeling	121	\N	tablet	\N	\N	\N	\N
715	north	million	543	313	772	newspaper	166	\N	tablet	\N	\N	\N	\N
716	agency	future	154	234	887	work	92	\N	tablet	\N	\N	\N	\N
717	live	land	362	920	707	admit	274	\N	tablet	\N	\N	\N	\N
718	full	machine	138	293	592	push	72	\N	tablet	\N	\N	\N	\N
719	watch	specific	611	272	59	easy	443	\N	tablet	\N	\N	\N	\N
720	hit	tough	989	290	864	worry	433	\N	tablet	\N	\N	\N	\N
721	nor	affect	861	829	70	sign	220	\N	tablet	\N	\N	\N	\N
722	beat	between	696	35	954	expert	977	\N	tablet	\N	\N	\N	\N
723	upon	order	425	364	964	much	524	\N	tablet	\N	\N	\N	\N
724	student	institution	152	184	809	exactly	235	\N	tablet	\N	\N	\N	\N
725	direction	thing	965	61	375	admit	889	\N	tablet	\N	\N	\N	\N
726	ask	summer	330	834	223	game	264	\N	tablet	\N	\N	\N	\N
727	hot	get	708	913	722	game	110	\N	tablet	\N	\N	\N	\N
730	through	full	818	136	707	stop	679	\N	tablet	\N	\N	\N	\N
731	call	people	807	787	392	hour	549	\N	tablet	\N	\N	\N	\N
733	dream	maintain	908	304	719	six	206	\N	tablet	\N	\N	\N	\N
736	before	large	966	610	650	there	410	\N	tablet	\N	\N	\N	\N
737	drive	if	996	432	858	radio	641	\N	tablet	\N	\N	\N	\N
738	miss	view	969	890	145	society	131	\N	tablet	\N	\N	\N	\N
739	yourself	talk	300	398	632	modern	654	\N	tablet	\N	\N	\N	\N
740	write	sort	207	613	278	yourself	610	\N	tablet	\N	\N	\N	\N
744	rather	various	466	272	769	store	291	\N	tablet	\N	\N	\N	\N
745	theory	trial	823	87	417	why	29	\N	tablet	\N	\N	\N	\N
746	bar	meet	597	737	134	human	504	\N	tablet	\N	\N	\N	\N
747	threat	process	862	791	239	development	386	\N	tablet	\N	\N	\N	\N
748	news	myself	64	421	616	machine	256	\N	tablet	\N	\N	\N	\N
753	build	election	877	788	176	help	898	\N	tablet	\N	\N	\N	\N
755	at	do	791	719	223	best	980	\N	tablet	\N	\N	\N	\N
756	nation	thousand	852	550	331	PM	602	\N	tablet	\N	\N	\N	\N
758	with	use	248	882	166	concern	266	\N	tablet	\N	\N	\N	\N
759	Mrs	space	208	142	169	body	324	\N	tablet	\N	\N	\N	\N
685	subject	make	883	252	651	seven	448	\N	laptop	\N	[{"barcode": "available", "variant_id": "783", "price_override": "873", "is_active_variant": "709"}]	\N	\N
687	leave	campaign	484	654	28	case	69	\N	laptop	\N	\N	[{"price": "651", "ends_at": "show", "price_id": "163", "starts_at": "improve"}]	\N
706	what	thing	467	872	39	billion	481	\N	tablet	\N	\N	[{"price": "471", "ends_at": "ahead", "price_id": "990", "starts_at": "name"}]	\N
742	radio	traditional	967	157	575	brother	967	\N	tablet	\N	\N	\N	66
757	we	say	673	493	259	raise	152	\N	tablet	\N	\N	\N	86
754	boy	drug	256	336	618	oil	255	\N	tablet	\N	\N	\N	62
762	attorney	traditional	319	791	226	word	524	\N	tablet	\N	\N	\N	\N
763	bar	statement	668	457	345	above	71	\N	tablet	\N	\N	\N	\N
764	professional	better	844	237	123	expert	732	\N	tablet	\N	\N	\N	\N
765	age	around	570	470	11	marriage	470	\N	tablet	\N	\N	\N	\N
766	play	economy	554	113	197	forget	250	\N	tablet	\N	\N	\N	\N
767	improve	appear	220	532	622	sometimes	931	\N	tablet	\N	\N	\N	\N
768	few	identify	271	943	358	name	295	\N	tablet	\N	\N	\N	\N
769	care	film	30	896	11	other	44	\N	tablet	\N	\N	\N	\N
770	clearly	record	79	324	464	perhaps	118	\N	tablet	\N	\N	\N	\N
771	election	sell	690	891	114	three	31	\N	tablet	\N	\N	\N	\N
773	tree	court	30	573	233	realize	178	\N	tablet	\N	\N	\N	\N
774	scientist	trouble	545	973	939	price	230	\N	tablet	\N	\N	\N	\N
775	age	yes	65	17	893	give	329	\N	tablet	\N	\N	\N	\N
776	feeling	want	591	87	530	safe	200	\N	tablet	\N	\N	\N	\N
777	everybody	few	9	557	287	of	266	\N	tablet	\N	\N	\N	\N
778	claim	peace	395	895	414	face	286	\N	tablet	\N	\N	\N	\N
779	thing	agent	185	778	491	product	137	\N	tablet	\N	\N	\N	\N
781	year	give	867	325	149	factor	327	\N	tablet	\N	\N	\N	\N
782	themselves	lawyer	42	902	419	reveal	852	\N	tablet	\N	\N	\N	\N
783	third	generation	901	804	67	leader	135	\N	tablet	\N	\N	\N	\N
784	respond	action	421	560	399	feeling	607	\N	tablet	\N	\N	\N	\N
785	stock	move	223	199	312	use	981	\N	tablet	\N	\N	\N	\N
786	field	recently	932	531	24	visit	196	\N	tablet	\N	\N	\N	\N
787	company	a	534	759	547	drive	236	\N	tablet	\N	\N	\N	\N
790	catch	dinner	102	859	969	probably	726	\N	tablet	\N	\N	\N	\N
791	would	analysis	441	487	979	spring	965	\N	tablet	\N	\N	\N	\N
792	wrong	science	224	580	480	direction	994	\N	tablet	\N	\N	\N	\N
795	speak	available	377	444	837	generation	867	\N	tablet	\N	\N	\N	\N
796	late	child	454	267	965	almost	365	\N	tablet	\N	\N	\N	\N
797	camera	long	822	580	235	perform	924	\N	tablet	\N	\N	\N	\N
800	onto	less	472	923	113	guy	466	\N	tablet	\N	\N	\N	\N
801	area	center	525	94	910	machine	694	\N	smartwatch	\N	\N	\N	\N
803	box	police	586	172	441	risk	734	\N	smartwatch	\N	\N	\N	\N
805	free	media	393	29	984	size	124	\N	smartwatch	\N	\N	\N	\N
806	hold	window	294	266	26	example	333	\N	smartwatch	\N	\N	\N	\N
807	national	amount	641	527	679	community	225	\N	smartwatch	\N	\N	\N	\N
808	spring	tonight	301	758	83	seven	467	\N	smartwatch	\N	\N	\N	\N
813	later	rich	181	551	489	affect	18	\N	smartwatch	\N	\N	\N	\N
814	Congress	worry	466	895	351	include	869	\N	smartwatch	\N	\N	\N	\N
815	agency	beyond	991	232	355	sing	24	\N	smartwatch	\N	\N	\N	\N
817	most	theory	184	238	84	time	42	\N	smartwatch	\N	\N	\N	\N
819	she	budget	836	635	540	during	40	\N	smartwatch	\N	\N	\N	\N
820	magazine	child	858	433	228	plan	690	\N	smartwatch	\N	\N	\N	\N
821	while	interest	532	995	982	air	194	\N	smartwatch	\N	\N	\N	\N
823	imagine	community	409	524	437	during	454	\N	smartwatch	\N	\N	\N	\N
824	just	offer	346	579	948	know	81	\N	smartwatch	\N	\N	\N	\N
825	spring	offer	484	853	750	claim	166	\N	smartwatch	\N	\N	\N	\N
829	available	everything	408	565	386	station	246	\N	smartwatch	\N	\N	\N	\N
830	mean	hard	368	556	558	town	272	\N	smartwatch	\N	\N	\N	\N
831	free	study	21	873	674	agent	270	\N	smartwatch	\N	\N	\N	\N
834	for	whom	17	164	841	court	114	\N	smartwatch	\N	\N	\N	\N
835	with	shoulder	225	156	116	nice	59	\N	smartwatch	\N	\N	\N	\N
836	stuff	manager	177	70	98	key	563	\N	smartwatch	\N	\N	\N	\N
837	fast	prove	748	671	480	beat	60	\N	smartwatch	\N	\N	\N	\N
840	few	social	449	114	347	interview	895	\N	smartwatch	\N	\N	\N	\N
844	at	item	273	192	155	knowledge	339	\N	smartwatch	\N	\N	\N	\N
845	test	project	986	361	991	drug	69	\N	smartwatch	\N	\N	\N	\N
846	sense	short	647	608	813	southern	590	\N	smartwatch	\N	\N	\N	\N
848	effort	those	737	937	862	dark	545	\N	smartwatch	\N	\N	\N	\N
810	somebody	some	828	695	484	ball	577	\N	smartwatch	\N	[{"barcode": "technology", "variant_id": "869", "price_override": "343", "is_active_variant": "478"}]	\N	\N
804	eye	perhaps	454	748	250	but	768	\N	smartwatch	\N	\N	[{"price": "482", "ends_at": "fund", "price_id": "716", "starts_at": "team"}]	\N
788	store	husband	216	492	169	a	674	\N	tablet	\N	\N	\N	23
811	act	blue	501	577	86	technology	61	\N	smartwatch	\N	\N	\N	25
760	night	beautiful	931	723	217	cut	40	\N	tablet	\N	\N	\N	79
850	occur	science	632	541	934	out	792	\N	smartwatch	\N	\N	\N	\N
852	toward	Democrat	410	436	501	today	721	\N	smartwatch	\N	\N	\N	\N
853	too	reveal	799	35	545	order	25	\N	smartwatch	\N	\N	\N	\N
857	true	however	349	84	607	high	796	\N	smartwatch	\N	\N	\N	\N
858	man	speak	143	940	869	couple	971	\N	smartwatch	\N	\N	\N	\N
859	majority	couple	181	94	9	move	25	\N	smartwatch	\N	\N	\N	\N
860	fine	sell	188	286	199	I	412	\N	smartwatch	\N	\N	\N	\N
862	in	court	997	881	943	begin	571	\N	smartwatch	\N	\N	\N	\N
863	throw	really	394	890	108	against	475	\N	smartwatch	\N	\N	\N	\N
864	president	represent	248	73	745	style	138	\N	smartwatch	\N	\N	\N	\N
865	war	arrive	703	619	28	their	653	\N	smartwatch	\N	\N	\N	\N
866	receive	relationship	58	298	354	season	712	\N	smartwatch	\N	\N	\N	\N
867	toward	six	636	450	325	according	781	\N	smartwatch	\N	\N	\N	\N
868	land	idea	546	324	942	thousand	712	\N	smartwatch	\N	\N	\N	\N
869	song	to	968	778	750	eye	598	\N	smartwatch	\N	\N	\N	\N
871	by	pressure	416	754	127	news	12	\N	smartwatch	\N	\N	\N	\N
872	scientist	risk	937	957	794	finally	781	\N	smartwatch	\N	\N	\N	\N
874	anyone	practice	42	147	951	image	529	\N	smartwatch	\N	\N	\N	\N
877	I	action	831	610	263	their	798	\N	smartwatch	\N	\N	\N	\N
879	fight	after	150	332	175	shoulder	403	\N	smartwatch	\N	\N	\N	\N
880	best	notice	592	949	937	first	516	\N	smartwatch	\N	\N	\N	\N
881	actually	health	917	658	81	behavior	267	\N	smartwatch	\N	\N	\N	\N
882	may	through	402	501	747	near	824	\N	smartwatch	\N	\N	\N	\N
883	over	half	642	758	298	away	863	\N	smartwatch	\N	\N	\N	\N
884	trouble	few	649	959	276	develop	281	\N	smartwatch	\N	\N	\N	\N
885	employee	itself	128	262	989	bill	994	\N	smartwatch	\N	\N	\N	\N
886	believe	shake	123	854	688	bag	480	\N	smartwatch	\N	\N	\N	\N
888	step	lead	244	43	231	factor	111	\N	smartwatch	\N	\N	\N	\N
889	some	today	835	955	99	certain	593	\N	smartwatch	\N	\N	\N	\N
890	painting	nothing	674	117	45	very	425	\N	smartwatch	\N	\N	\N	\N
892	particularly	edge	863	818	932	best	999	\N	smartwatch	\N	\N	\N	\N
893	beautiful	resource	814	629	640	very	164	\N	smartwatch	\N	\N	\N	\N
894	rise	account	550	588	502	through	361	\N	smartwatch	\N	\N	\N	\N
895	bag	within	849	620	408	four	334	\N	smartwatch	\N	\N	\N	\N
899	think	building	288	562	313	policy	470	\N	smartwatch	\N	\N	\N	\N
900	apply	important	393	121	832	force	314	\N	smartwatch	\N	\N	\N	\N
901	significant	day	657	682	798	modern	522	514	camera	\N	\N	\N	\N
902	put	accept	907	764	962	population	375	893	camera	\N	\N	\N	\N
903	listen	suggest	727	458	97	perform	832	689	camera	\N	\N	\N	\N
905	student	cultural	842	217	337	visit	572	229	camera	\N	\N	\N	\N
907	particularly	teach	495	368	657	glass	419	686	camera	\N	\N	\N	\N
909	toward	person	55	541	303	mission	204	214	camera	\N	\N	\N	\N
912	matter	research	144	438	784	feeling	93	529	camera	\N	\N	\N	\N
914	lose	first	437	415	146	least	683	451	camera	\N	\N	\N	\N
915	design	outside	843	531	683	kind	166	221	camera	\N	\N	\N	\N
917	grow	institution	258	581	773	build	32	227	camera	\N	\N	\N	\N
918	speak	technology	264	946	494	provide	351	18	camera	\N	\N	\N	\N
919	far	garden	932	961	858	energy	715	206	camera	\N	\N	\N	\N
920	town	break	266	659	931	majority	75	437	camera	\N	\N	\N	\N
921	maybe	reduce	705	378	705	your	771	833	camera	\N	\N	\N	\N
922	such	short	785	195	109	because	956	402	camera	\N	\N	\N	\N
923	camera	else	348	587	338	above	352	603	camera	\N	\N	\N	\N
927	table	check	903	355	792	story	735	30	camera	\N	\N	\N	\N
928	fast	fast	109	609	544	size	176	638	camera	\N	\N	\N	\N
930	yard	wife	434	409	637	especially	70	407	camera	\N	\N	\N	\N
931	form	voice	157	749	602	analysis	863	935	camera	\N	\N	\N	\N
933	thousand	PM	420	940	803	however	923	732	camera	\N	\N	\N	\N
934	model	wrong	676	505	221	simple	992	571	camera	\N	\N	\N	\N
935	across	star	798	38	882	better	301	807	camera	\N	\N	\N	\N
936	thus	yes	143	258	843	several	488	137	camera	\N	\N	\N	\N
925	us	speak	283	792	362	suggest	952	824	camera	\N	[{"barcode": "drop", "variant_id": "796", "price_override": "177", "is_active_variant": "606"}]	\N	\N
911	late	small	263	893	2	recent	791	519	camera	\N	[{"barcode": "black", "variant_id": "844", "price_override": "598", "is_active_variant": "101"}]	\N	\N
897	sense	keep	16	828	590	might	102	\N	smartwatch	\N	\N	[{"price": "750", "ends_at": "raise", "price_id": "921", "starts_at": "certainly"}]	\N
856	yes	learn	611	880	347	difference	922	\N	smartwatch	\N	\N	[{"price": "738", "ends_at": "bad", "price_id": "134", "starts_at": "international"}]	\N
910	into	at	235	857	754	analysis	386	356	camera	\N	\N	[{"price": "259", "ends_at": "father", "price_id": "371", "starts_at": "anyone"}]	\N
932	establish	store	486	687	956	political	506	102	camera	\N	\N	\N	98
870	size	recognize	833	700	458	wear	434	\N	smartwatch	\N	\N	\N	92
929	dog	important	773	231	792	smile	869	301	camera	\N	\N	\N	57
851	wide	say	209	307	176	information	663	\N	smartwatch	\N	\N	\N	79
876	view	black	584	481	741	one	597	\N	smartwatch	\N	\N	\N	26
898	list	ground	462	90	1	type	760	\N	smartwatch	\N	\N	\N	96
937	during	while	447	342	534	base	216	285	camera	\N	\N	\N	\N
938	also	stop	41	319	515	anyone	510	307	camera	\N	\N	\N	\N
939	hospital	nature	271	164	297	road	819	918	camera	\N	\N	\N	\N
940	remember	kind	343	998	153	present	397	903	camera	\N	\N	\N	\N
941	everything	party	690	453	964	again	739	173	camera	\N	\N	\N	\N
942	forget	perform	917	908	393	pay	95	597	camera	\N	\N	\N	\N
943	though	traditional	211	995	953	claim	53	536	camera	\N	\N	\N	\N
945	writer	always	979	633	642	traditional	133	944	camera	\N	\N	\N	\N
948	buy	task	20	669	455	chair	173	914	camera	\N	\N	\N	\N
949	shoulder	at	828	902	764	lot	824	687	camera	\N	\N	\N	\N
950	wall	before	632	850	215	something	297	645	camera	\N	\N	\N	\N
951	house	talk	169	45	40	out	400	892	camera	\N	\N	\N	\N
952	short	show	978	555	701	television	390	295	camera	\N	\N	\N	\N
953	hold	ever	447	932	52	class	342	430	camera	\N	\N	\N	\N
954	network	law	602	590	499	lot	594	524	camera	\N	\N	\N	\N
955	would	employee	691	92	345	everyone	887	671	camera	\N	\N	\N	\N
958	lay	send	430	695	405	success	262	797	camera	\N	\N	\N	\N
959	seek	activity	2	289	34	apply	800	88	camera	\N	\N	\N	\N
960	plant	door	185	634	259	manager	711	446	camera	\N	\N	\N	\N
963	development	cause	690	409	565	federal	581	516	camera	\N	\N	\N	\N
965	individual	sure	263	166	613	against	75	180	camera	\N	\N	\N	\N
966	Mrs	go	800	719	697	inside	544	581	camera	\N	\N	\N	\N
967	soldier	total	740	24	226	maybe	699	19	camera	\N	\N	\N	\N
969	hotel	all	818	989	792	miss	55	758	camera	\N	\N	\N	\N
970	military	prepare	940	799	406	rich	196	163	camera	\N	\N	\N	\N
971	or	else	228	94	627	church	553	558	camera	\N	\N	\N	\N
973	own	fly	611	262	841	happen	254	688	camera	\N	\N	\N	\N
974	culture	story	300	635	264	expect	730	648	camera	\N	\N	\N	\N
977	education	whole	23	108	224	chair	173	756	camera	\N	\N	\N	\N
979	strong	shake	398	269	264	low	651	268	camera	\N	\N	\N	\N
981	common	party	737	509	962	debate	309	974	camera	\N	\N	\N	\N
983	worker	collection	294	937	287	interest	495	633	camera	\N	\N	\N	\N
986	man	no	214	465	885	positive	42	276	camera	\N	\N	\N	\N
987	carry	might	346	864	5	charge	804	442	camera	\N	\N	\N	\N
989	six	activity	376	956	624	individual	779	199	camera	\N	\N	\N	\N
990	recent	education	760	443	883	true	297	911	camera	\N	\N	\N	\N
991	machine	throughout	99	83	980	mouth	723	346	camera	\N	\N	\N	\N
992	threat	reality	936	375	583	defense	723	392	camera	\N	\N	\N	\N
997	receive	continue	830	789	888	through	388	646	camera	\N	\N	\N	\N
998	account	dog	966	496	577	whether	39	516	camera	\N	\N	\N	\N
999	commercial	certainly	204	697	256	form	123	281	camera	\N	\N	\N	\N
1001	even	best	293	852	853	management	56	\N	phone	\N	\N	\N	\N
1003	wear	life	69	736	161	near	275	\N	phone	\N	\N	\N	\N
1004	later	population	784	830	134	house	923	\N	phone	\N	\N	\N	\N
1005	purpose	wish	198	945	783	ready	617	\N	phone	\N	\N	\N	\N
1006	if	never	427	222	801	mouth	555	\N	phone	\N	\N	\N	\N
1008	shake	deep	511	249	209	my	699	\N	phone	\N	\N	\N	\N
1009	talk	four	156	251	922	worry	625	\N	phone	\N	\N	\N	\N
1011	few	investment	266	990	67	compare	81	\N	phone	\N	\N	\N	\N
1014	interest	though	130	568	604	strong	815	\N	phone	\N	\N	\N	\N
1016	six	today	230	455	692	song	341	\N	phone	\N	\N	\N	\N
1019	stock	whom	680	738	478	structure	361	\N	phone	\N	\N	\N	\N
1020	show	involve	160	469	206	school	549	\N	phone	\N	\N	\N	\N
1021	what	production	289	613	214	like	624	\N	phone	\N	\N	\N	\N
1022	away	forward	226	290	109	kid	672	\N	phone	\N	\N	\N	\N
1023	finish	store	233	867	435	maintain	688	\N	phone	\N	\N	\N	\N
1000	tell	scene	996	967	571	three	6	381	camera	\N	[{"barcode": "evidence", "variant_id": "364", "price_override": "352", "is_active_variant": "554"}]	\N	\N
968	vote	couple	688	5	541	positive	783	632	camera	\N	[{"barcode": "ever", "variant_id": "629", "price_override": "769", "is_active_variant": "170"}]	\N	\N
985	himself	seven	63	74	267	already	794	506	camera	\N	\N	[{"price": "195", "ends_at": "box", "price_id": "444", "starts_at": "yet"}]	\N
980	learn	issue	385	43	787	whether	885	158	camera	\N	\N	[{"price": "86", "ends_at": "local", "price_id": "55", "starts_at": "teacher"}]	\N
946	time	occur	11	353	248	business	532	445	camera	\N	\N	\N	50
1002	into	accept	956	320	673	improve	131	\N	phone	\N	\N	\N	14
1010	democratic	garden	629	718	983	hope	562	\N	phone	\N	\N	\N	11
988	treatment	hand	836	893	930	public	434	773	camera	\N	\N	\N	64
1027	water	soldier	13	777	468	whether	430	\N	phone	\N	\N	\N	\N
1028	religious	minute	250	664	108	rate	518	\N	phone	\N	\N	\N	\N
1029	page	recently	53	757	392	turn	956	\N	phone	\N	\N	\N	\N
1031	computer	yard	497	378	563	official	30	\N	phone	\N	\N	\N	\N
1033	the	analysis	986	244	531	support	574	\N	phone	\N	\N	\N	\N
1034	recognize	capital	643	45	989	memory	663	\N	phone	\N	\N	\N	\N
1035	early	wide	859	324	37	beyond	450	\N	phone	\N	\N	\N	\N
1036	Democrat	form	862	720	183	talk	150	\N	phone	\N	\N	\N	\N
1037	network	recognize	148	258	517	street	709	\N	phone	\N	\N	\N	\N
1039	prepare	throughout	970	393	859	discuss	376	\N	phone	\N	\N	\N	\N
1040	field	keep	216	39	543	to	226	\N	phone	\N	\N	\N	\N
1041	address	view	987	493	977	who	173	\N	phone	\N	\N	\N	\N
1043	if	purpose	713	306	952	note	846	\N	phone	\N	\N	\N	\N
1044	school	note	860	824	791	example	778	\N	phone	\N	\N	\N	\N
1046	find	material	993	789	584	everyone	778	\N	phone	\N	\N	\N	\N
1047	consider	community	38	639	323	base	813	\N	phone	\N	\N	\N	\N
1048	voice	growth	541	667	183	some	554	\N	phone	\N	\N	\N	\N
1049	boy	media	83	420	739	admit	839	\N	phone	\N	\N	\N	\N
1050	set	detail	558	45	811	attack	328	\N	phone	\N	\N	\N	\N
1051	well	good	959	684	955	land	463	\N	phone	\N	\N	\N	\N
1055	eight	institution	855	984	641	live	98	\N	phone	\N	\N	\N	\N
1056	building	something	457	816	863	American	315	\N	phone	\N	\N	\N	\N
1057	same	stuff	717	178	307	administration	763	\N	phone	\N	\N	\N	\N
1058	different	federal	338	934	341	drive	991	\N	phone	\N	\N	\N	\N
1059	rich	light	42	53	983	president	725	\N	phone	\N	\N	\N	\N
1060	rise	middle	187	616	474	better	990	\N	phone	\N	\N	\N	\N
1061	movie	somebody	731	38	273	late	988	\N	phone	\N	\N	\N	\N
1062	exist	natural	68	736	656	close	904	\N	phone	\N	\N	\N	\N
1063	worry	although	933	886	13	will	770	\N	phone	\N	\N	\N	\N
1064	defense	build	424	356	277	century	40	\N	phone	\N	\N	\N	\N
1065	hot	remain	396	114	313	natural	770	\N	phone	\N	\N	\N	\N
1068	challenge	clearly	487	726	783	marriage	949	\N	phone	\N	\N	\N	\N
1071	without	forward	660	892	564	because	136	\N	phone	\N	\N	\N	\N
1074	stay	dream	794	35	611	cold	280	\N	phone	\N	\N	\N	\N
1075	country	show	361	8	921	customer	718	\N	phone	\N	\N	\N	\N
1076	still	wrong	856	9	66	citizen	965	\N	phone	\N	\N	\N	\N
1077	relate	administration	734	444	732	generation	317	\N	phone	\N	\N	\N	\N
1078	board	child	702	137	402	continue	774	\N	phone	\N	\N	\N	\N
1079	toward	necessary	369	803	459	southern	300	\N	phone	\N	\N	\N	\N
1081	possible	fall	319	236	712	record	512	\N	phone	\N	\N	\N	\N
1082	son	magazine	62	803	8	administration	609	\N	phone	\N	\N	\N	\N
1083	east	ask	475	3	1000	difficult	136	\N	phone	\N	\N	\N	\N
1084	suddenly	style	729	402	825	process	228	\N	phone	\N	\N	\N	\N
1085	defense	important	608	873	865	he	188	\N	phone	\N	\N	\N	\N
1087	stop	want	925	940	339	trial	89	\N	phone	\N	\N	\N	\N
1088	style	appear	125	955	823	season	210	\N	phone	\N	\N	\N	\N
1090	charge	check	795	723	85	nation	586	\N	phone	\N	\N	\N	\N
1092	win	yourself	633	105	363	dinner	704	\N	phone	\N	\N	\N	\N
1093	cup	woman	896	948	506	challenge	468	\N	phone	\N	\N	\N	\N
1094	current	without	442	224	65	use	682	\N	phone	\N	\N	\N	\N
1095	without	career	650	258	337	memory	860	\N	phone	\N	\N	\N	\N
1096	relationship	put	378	596	335	million	530	\N	phone	\N	\N	\N	\N
1097	recent	well	636	614	667	against	195	\N	phone	\N	\N	\N	\N
1099	feeling	administration	710	123	459	cost	9	\N	phone	\N	\N	\N	\N
1100	near	home	231	977	312	bit	685	\N	phone	\N	\N	\N	\N
344	friend	majority	534	264	427	lay	890	\N	electronics	[{"url": "ago", "alt_text": "factor", "image_id": "659", "sort_order": "221"}]	\N	\N	\N
875	hair	water	718	628	421	local	808	\N	smartwatch	[{"url": "speak", "alt_text": "try", "image_id": "754", "sort_order": "843"}]	\N	\N	\N
361	think	pretty	707	139	661	employee	323	\N	electronics	[{"url": "probably", "alt_text": "already", "image_id": "796", "sort_order": "714"}]	\N	\N	\N
964	bad	make	305	3	745	quickly	349	100	camera	[{"url": "third", "alt_text": "foot", "image_id": "405", "sort_order": "997"}]	\N	\N	\N
641	window	present	759	877	490	truth	328	\N	laptop	[{"url": "continue", "alt_text": "hand", "image_id": "417", "sort_order": "971"}]	\N	\N	\N
728	although	long	702	750	921	pull	484	\N	tablet	[{"url": "military", "alt_text": "player", "image_id": "21", "sort_order": "964"}]	\N	\N	\N
1073	change	station	133	141	623	account	131	\N	phone	\N	\N	[{"price": "9", "ends_at": "ever", "price_id": "626", "starts_at": "practice"}]	\N
1038	measure	let	96	525	127	state	714	\N	phone	\N	\N	\N	72
1066	girl	same	255	235	531	world	581	\N	phone	\N	\N	\N	65
1045	one	eat	926	929	219	join	127	\N	phone	\N	\N	\N	1
1072	though	important	411	143	626	environmental	199	\N	phone	\N	\N	\N	9
1042	tell	box	243	202	543	day	658	\N	phone	\N	\N	\N	18
1067	determine	plant	271	11	6	fast	800	\N	phone	\N	\N	\N	37
1052	catch	huge	766	196	915	they	475	\N	phone	\N	\N	\N	35
1013	child	those	581	481	444	should	950	\N	phone	[{"url": "change", "alt_text": "change", "image_id": "324", "sort_order": "67"}]	\N	\N	\N
372	way	hotel	257	921	789	trouble	698	\N	electronics	[{"url": "include", "alt_text": "you", "image_id": "272", "sort_order": "415"}]	\N	\N	\N
855	half	energy	406	455	523	get	437	\N	smartwatch	[{"url": "impact", "alt_text": "serve", "image_id": "383", "sort_order": "745"}]	\N	\N	\N
798	day	try	887	109	186	skin	78	\N	tablet	[{"url": "fall", "alt_text": "hair", "image_id": "94", "sort_order": "532"}]	\N	\N	\N
453	expect	front	727	148	357	town	549	\N	computer	[{"url": "music", "alt_text": "network", "image_id": "936", "sort_order": "353"}]	\N	\N	\N
924	though	second	809	708	264	contain	773	630	camera	[{"url": "question", "alt_text": "forget", "image_id": "227", "sort_order": "762"}]	\N	\N	\N
1054	military	plan	11	292	217	suddenly	384	\N	phone	[{"url": "green", "alt_text": "under", "image_id": "341", "sort_order": "681"}]	\N	\N	\N
324	buy	little	834	267	377	it	604	\N	electronics	[{"url": "moment", "alt_text": "more", "image_id": "135", "sort_order": "573"}]	\N	\N	\N
976	of	claim	225	792	881	worker	550	678	camera	[{"url": "between", "alt_text": "quality", "image_id": "133", "sort_order": "348"}]	\N	\N	\N
812	degree	I	20	286	38	because	319	\N	smartwatch	[{"url": "police", "alt_text": "event", "image_id": "593", "sort_order": "454"}]	\N	\N	\N
751	summer	Congress	848	47	599	poor	363	\N	tablet	[{"url": "suffer", "alt_text": "white", "image_id": "522", "sort_order": "785"}]	\N	\N	\N
601	stage	money	874	376	512	choose	139	\N	laptop	[{"url": "seven", "alt_text": "nor", "image_id": "809", "sort_order": "701"}]	\N	\N	\N
828	key	without	356	959	725	reality	892	\N	smartwatch	[{"url": "every", "alt_text": "cut", "image_id": "313", "sort_order": "647"}]	\N	\N	\N
1086	enter	rate	741	224	166	him	907	\N	phone	\N	[{"barcode": "help", "variant_id": "222", "price_override": "1", "is_active_variant": "52"}]	\N	\N
1053	I	least	862	823	88	important	375	\N	phone	\N	[{"barcode": "pattern", "variant_id": "554", "price_override": "896", "is_active_variant": "613"}]	\N	\N
735	still	word	119	183	509	expect	724	\N	tablet	\N	[{"barcode": "program", "variant_id": "957", "price_override": "453", "is_active_variant": "489"}]	\N	\N
1080	show	trial	906	487	191	world	9	\N	phone	\N	[{"barcode": "because", "variant_id": "651", "price_override": "899", "is_active_variant": "780"}]	\N	\N
743	yourself	note	924	694	26	be	789	\N	tablet	\N	[{"barcode": "issue", "variant_id": "559", "price_override": "91", "is_active_variant": "144"}]	\N	\N
461	end	tough	394	677	946	green	834	\N	computer	\N	[{"barcode": "reflect", "variant_id": "468", "price_override": "581", "is_active_variant": "700"}]	\N	\N
818	state	everybody	179	328	5	stay	552	\N	smartwatch	\N	[{"barcode": "base", "variant_id": "218", "price_override": "705", "is_active_variant": "776"}]	\N	\N
407	center	trouble	840	715	252	although	109	\N	computer	\N	[{"barcode": "article", "variant_id": "240", "price_override": "327", "is_active_variant": "324"}]	\N	\N
838	economy	color	278	53	542	weight	911	\N	smartwatch	\N	[{"barcode": "boy", "variant_id": "428", "price_override": "484", "is_active_variant": "143"}]	\N	\N
961	story	of	313	103	305	property	489	180	camera	\N	[{"barcode": "describe", "variant_id": "290", "price_override": "737", "is_active_variant": "298"}]	\N	\N
617	pressure	me	383	53	861	glass	842	\N	laptop	\N	[{"barcode": "wall", "variant_id": "779", "price_override": "616", "is_active_variant": "807"}]	\N	\N
1007	property	morning	869	502	178	help	823	\N	phone	\N	[{"barcode": "way", "variant_id": "763", "price_override": "53", "is_active_variant": "201"}]	\N	\N
1017	head	end	686	581	188	both	785	\N	phone	\N	[{"barcode": "cause", "variant_id": "894", "price_override": "674", "is_active_variant": "230"}]	\N	\N
385	somebody	position	137	56	615	office	180	\N	electronics	[{"url": "specific", "alt_text": "sing", "image_id": "143", "sort_order": "439"}]	\N	\N	52
947	recently	brother	961	730	247	out	34	343	camera	[{"url": "break", "alt_text": "series", "image_id": "88", "sort_order": "522"}]	\N	\N	37
896	analysis	probably	543	877	73	indicate	980	\N	smartwatch	[{"url": "method", "alt_text": "fight", "image_id": "652", "sort_order": "369"}]	\N	\N	45
389	capital	design	726	107	763	could	71	\N	electronics	\N	[{"barcode": "effect", "variant_id": "215", "price_override": "477", "is_active_variant": "966"}]	\N	43
772	treat	my	652	928	139	suggest	451	\N	tablet	[{"url": "executive", "alt_text": "design", "image_id": "341", "sort_order": "133"}]	\N	\N	14
665	rich	time	123	453	599	including	442	\N	laptop	[{"url": "author", "alt_text": "bar", "image_id": "667", "sort_order": "725"}]	\N	\N	88
310	mind	add	984	307	713	work	554	\N	electronics	\N	\N	\N	68
873	pull	meet	996	357	180	local	753	\N	smartwatch	\N	[{"barcode": "six", "variant_id": "583", "price_override": "542", "is_active_variant": "131"}]	\N	\N
913	alone	return	819	853	283	whose	225	112	camera	\N	[{"barcode": "because", "variant_id": "457", "price_override": "148", "is_active_variant": "518"}]	\N	\N
303	two	question	506	887	921	do	436	\N	electronics	\N	\N	[{"price": "127", "ends_at": "throw", "price_id": "485", "starts_at": "break"}]	\N
1032	similar	or	950	661	609	month	399	\N	phone	\N	\N	[{"price": "858", "ends_at": "join", "price_id": "918", "starts_at": "position"}]	\N
669	force	PM	579	147	215	daughter	726	\N	laptop	\N	\N	[{"price": "912", "ends_at": "lay", "price_id": "456", "starts_at": "success"}]	\N
374	middle	whole	743	106	308	different	255	\N	electronics	\N	\N	[{"price": "220", "ends_at": "individual", "price_id": "444", "starts_at": "exist"}]	\N
301	memory	thing	23	605	377	skin	728	\N	electronics	\N	\N	[{"price": "38", "ends_at": "assume", "price_id": "988", "starts_at": "people"}]	\N
470	can	every	97	79	695	trade	867	\N	computer	\N	\N	[{"price": "658", "ends_at": "society", "price_id": "316", "starts_at": "now"}]	\N
403	start	check	483	798	39	rest	832	\N	computer	\N	\N	[{"price": "896", "ends_at": "each", "price_id": "655", "starts_at": "business"}]	\N
692	knowledge	statement	887	715	379	easy	99	\N	laptop	\N	\N	[{"price": "880", "ends_at": "item", "price_id": "669", "starts_at": "table"}]	\N
996	nearly	coach	99	710	356	provide	518	451	camera	\N	\N	[{"price": "59", "ends_at": "list", "price_id": "376", "starts_at": "policy"}]	\N
644	test	center	436	54	465	account	384	\N	laptop	\N	\N	[{"price": "932", "ends_at": "since", "price_id": "830", "starts_at": "team"}]	\N
1069	letter	daughter	909	906	359	inside	978	\N	phone	\N	\N	[{"price": "651", "ends_at": "price", "price_id": "285", "starts_at": "deal"}]	\N
698	teach	system	932	891	330	traditional	453	\N	laptop	[{"url": "unit", "alt_text": "wife", "image_id": "679", "sort_order": "728"}]	\N	[{"price": "700", "ends_at": "rich", "price_id": "158", "starts_at": "news"}]	\N
1012	tax	black	365	541	286	check	673	\N	phone	\N	[{"barcode": "heart", "variant_id": "388", "price_override": "601", "is_active_variant": "681"}]	[{"price": "884", "ends_at": "month", "price_id": "976", "starts_at": "its"}]	\N
854	stock	subject	377	255	160	pass	932	\N	smartwatch	\N	\N	[{"price": "181", "ends_at": "live", "price_id": "50", "starts_at": "son"}]	\N
891	still	happen	151	835	356	interest	52	\N	smartwatch	\N	\N	[{"price": "635", "ends_at": "simply", "price_id": "56", "starts_at": "effect"}]	\N
978	everybody	song	330	225	167	these	624	225	camera	[{"url": "site", "alt_text": "sign", "image_id": "827", "sort_order": "212"}, {"url": "style", "alt_text": "simply", "image_id": "831", "sort_order": "676"}]	\N	[{"price": "7", "ends_at": "foreign", "price_id": "560", "starts_at": "amount"}]	\N
630	action	sense	461	835	547	me	373	\N	laptop	\N	[{"barcode": "child", "variant_id": "972", "price_override": "842", "is_active_variant": "152"}, {"barcode": "throw", "variant_id": "582", "price_override": "652", "is_active_variant": "425"}]	[{"price": "14", "ends_at": "black", "price_id": "442", "starts_at": "international"}]	\N
904	Republican	half	160	282	117	environmental	259	778	camera	\N	\N	[{"price": "82", "ends_at": "manage", "price_id": "185", "starts_at": "beyond"}]	\N
816	every	prevent	452	525	203	person	157	\N	smartwatch	\N	\N	[{"price": "521", "ends_at": "other", "price_id": "924", "starts_at": "yard"}]	\N
393	task	page	901	847	222	candidate	862	\N	electronics	[{"url": "close", "alt_text": "avoid", "image_id": "611", "sort_order": "375"}]	\N	[{"price": "711", "ends_at": "or", "price_id": "512", "starts_at": "message"}]	\N
832	these	unit	727	898	400	public	271	\N	smartwatch	\N	\N	\N	39
408	way	gas	975	367	893	call	120	\N	computer	\N	\N	[{"price": "160", "ends_at": "majority", "price_id": "994", "starts_at": "before"}]	7
822	policy	soon	859	42	620	like	421	\N	smartwatch	\N	\N	\N	34
799	meet	pattern	430	897	601	right	63	\N	tablet	\N	\N	\N	30
670	series	back	916	759	357	purpose	393	\N	laptop	\N	\N	\N	7
382	improve	push	696	591	636	whole	578	\N	electronics	\N	\N	\N	70
789	send	institution	413	911	290	then	155	\N	tablet	\N	\N	\N	41
690	see	officer	975	420	248	of	490	\N	laptop	\N	\N	\N	81
340	Mr	travel	400	127	685	apply	302	\N	electronics	\N	\N	\N	4
498	store	price	77	564	324	bring	949	\N	computer	\N	\N	\N	93
392	option	help	77	936	594	time	693	\N	electronics	\N	\N	\N	1
847	stay	minute	925	994	182	order	783	\N	smartwatch	\N	\N	\N	59
409	beyond	source	42	939	721	parent	433	\N	computer	\N	\N	\N	94
843	song	day	358	438	442	near	602	\N	smartwatch	\N	\N	\N	50
729	wear	bit	269	796	813	onto	920	\N	tablet	\N	\N	\N	22
429	of	since	600	23	526	cut	438	\N	computer	\N	\N	\N	27
320	information	walk	276	476	279	care	652	\N	electronics	\N	\N	\N	2
378	care	price	696	337	281	natural	528	\N	electronics	\N	\N	\N	31
457	also	stop	801	324	164	action	980	\N	computer	\N	\N	\N	52
833	argue	whether	789	820	603	make	503	\N	smartwatch	\N	\N	\N	67
648	significant	set	185	457	158	cultural	109	\N	laptop	\N	\N	\N	22
663	take	could	385	448	334	sell	965	\N	laptop	\N	[{"barcode": "shake", "variant_id": "523", "price_override": "584", "is_active_variant": "839"}, {"barcode": "range", "variant_id": "280", "price_override": "592", "is_active_variant": "366"}]	[{"price": "47", "ends_at": "eye", "price_id": "805", "starts_at": "company"}]	55
367	business	feel	336	5	793	increase	842	\N	electronics	\N	\N	\N	13
439	sea	like	508	837	286	many	951	\N	computer	\N	\N	\N	11
994	eat	people	623	206	116	standard	880	705	camera	\N	\N	\N	97
826	who	class	919	441	165	kitchen	274	\N	smartwatch	\N	\N	\N	31
627	executive	especially	520	979	317	bad	290	\N	laptop	\N	[{"barcode": "film", "variant_id": "169", "price_override": "903", "is_active_variant": "200"}]	[{"price": "250", "ends_at": "begin", "price_id": "464", "starts_at": "protect"}]	90
454	someone	should	91	527	848	baby	214	\N	computer	\N	\N	\N	62
412	control	standard	350	452	818	other	651	\N	computer	\N	\N	\N	66
450	agent	tree	133	689	552	drop	950	\N	computer	\N	\N	\N	56
666	kid	throw	342	622	813	size	609	\N	laptop	\N	\N	\N	75
761	similar	agent	222	411	810	actually	718	\N	tablet	\N	\N	\N	45
995	evidence	door	490	393	178	beat	226	635	camera	\N	\N	[{"price": "162", "ends_at": "thousand", "price_id": "462", "starts_at": "test"}]	48
334	free	ten	224	548	433	anything	49	\N	electronics	\N	\N	\N	86
628	rather	cause	699	7	833	science	122	\N	laptop	\N	\N	\N	93
672	bit	just	706	931	817	call	740	\N	laptop	\N	\N	\N	84
435	think	language	320	478	285	standard	171	\N	computer	\N	\N	\N	33
794	take	decide	347	519	487	page	525	\N	tablet	\N	\N	\N	19
499	book	role	881	529	137	simple	453	\N	computer	\N	\N	\N	72
780	high	walk	633	214	539	week	530	\N	tablet	\N	\N	\N	55
802	new	range	38	284	863	choose	133	\N	smartwatch	\N	\N	\N	18
842	public	two	85	235	838	very	575	\N	smartwatch	\N	\N	\N	95
839	less	meeting	760	658	213	moment	610	\N	smartwatch	\N	\N	[{"price": "811", "ends_at": "region", "price_id": "7", "starts_at": "movie"}]	90
734	number	difference	342	101	255	senior	504	\N	tablet	\N	\N	\N	9
878	store	short	904	401	553	fear	936	\N	smartwatch	\N	\N	\N	37
489	above	ten	595	152	604	from	414	\N	computer	\N	\N	\N	7
741	also	hotel	271	521	850	energy	334	\N	tablet	\N	\N	\N	42
434	her	turn	245	797	13	government	979	\N	computer	\N	\N	\N	26
887	enter	commercial	970	155	478	mention	802	\N	smartwatch	\N	\N	\N	76
339	minute	great	220	694	660	economy	888	\N	electronics	\N	\N	\N	35
497	style	recently	525	309	807	rate	842	\N	computer	\N	\N	\N	59
827	political	article	423	767	493	think	981	\N	smartwatch	\N	\N	\N	77
606	light	treat	891	314	975	billion	426	\N	laptop	\N	\N	[{"price": "694", "ends_at": "money", "price_id": "771", "starts_at": "success"}]	51
645	out	campaign	961	287	408	way	397	\N	laptop	\N	\N	\N	32
984	sell	term	157	804	595	moment	145	400	camera	\N	\N	\N	91
1025	foot	through	209	652	716	our	317	\N	phone	\N	\N	\N	96
841	material	fund	392	959	670	Mrs	298	\N	smartwatch	\N	\N	\N	75
668	space	race	607	501	36	sing	137	\N	laptop	\N	\N	\N	49
680	thing	behind	841	839	540	majority	46	\N	laptop	\N	\N	\N	89
926	unit	ground	946	865	448	still	628	484	camera	\N	[{"barcode": "card", "variant_id": "408", "price_override": "931", "is_active_variant": "118"}]	\N	93
916	fight	senior	280	375	858	line	356	765	camera	\N	[{"barcode": "lead", "variant_id": "946", "price_override": "678", "is_active_variant": "180"}]	\N	76
1026	movement	western	765	307	637	look	439	\N	phone	\N	\N	\N	72
732	top	peace	25	135	238	subject	661	\N	tablet	\N	\N	\N	5
611	south	figure	407	366	535	lawyer	406	\N	laptop	\N	\N	\N	84
405	chair	much	782	365	565	section	802	\N	computer	\N	\N	\N	32
1098	poor	question	915	422	356	painting	355	\N	phone	\N	\N	\N	65
1089	rate	least	337	815	574	network	812	\N	phone	\N	[{"barcode": "task", "variant_id": "862", "price_override": "230", "is_active_variant": "844"}]	\N	44
711	success	great	115	101	702	training	620	\N	tablet	\N	\N	\N	56
345	test	send	505	649	917	his	808	\N	electronics	\N	\N	\N	89
688	seven	wait	604	442	95	challenge	558	\N	laptop	\N	\N	\N	83
972	tough	improve	343	873	682	scientist	197	520	camera	\N	\N	\N	72
397	accept	once	121	616	149	skin	303	\N	electronics	\N	\N	\N	93
402	note	manager	380	419	416	visit	55	\N	computer	\N	\N	\N	43
441	onto	write	637	86	749	network	345	\N	computer	\N	\N	\N	21
608	north	yeah	441	950	628	put	285	\N	laptop	\N	\N	\N	95
603	student	television	803	587	92	town	347	\N	laptop	\N	\N	\N	64
490	live	success	888	521	431	feeling	350	\N	computer	\N	\N	\N	37
351	save	value	282	277	724	school	422	\N	electronics	\N	\N	\N	2
1024	sing	family	858	308	505	outside	385	\N	phone	\N	\N	\N	19
849	detail	right	210	489	970	lay	368	\N	smartwatch	\N	\N	\N	55
982	within	note	872	376	416	surface	633	203	camera	\N	\N	\N	63
646	institution	concern	457	309	759	step	660	\N	laptop	\N	\N	\N	26
944	affect	turn	764	313	42	dark	815	112	camera	\N	\N	\N	16
1030	before	character	855	18	527	cut	950	\N	phone	\N	\N	[{"price": "260", "ends_at": "throw", "price_id": "648", "starts_at": "you"}]	82
957	free	staff	855	973	497	table	822	655	camera	\N	\N	\N	46
381	fear	interview	950	892	278	operation	94	\N	electronics	\N	\N	\N	27
908	win	receive	352	438	922	professional	115	257	camera	\N	\N	\N	28
420	away	include	409	556	124	keep	950	\N	computer	\N	\N	\N	16
749	without	police	41	923	466	smile	301	\N	tablet	\N	\N	\N	53
712	player	meet	653	713	705	exist	94	\N	tablet	\N	\N	\N	56
710	there	effort	663	273	743	nice	580	\N	tablet	\N	\N	\N	80
350	yard	possible	926	863	104	stuff	521	\N	electronics	\N	\N	\N	9
1070	seek	live	613	951	866	nothing	571	\N	phone	\N	\N	\N	42
674	offer	letter	833	823	790	carry	888	\N	laptop	\N	\N	\N	25
472	herself	build	195	868	522	hundred	535	\N	computer	\N	\N	[{"price": "848", "ends_at": "suddenly", "price_id": "326", "starts_at": "name"}]	90
906	church	today	963	630	8	land	725	861	camera	\N	[{"barcode": "forward", "variant_id": "190", "price_override": "910", "is_active_variant": "582"}]	\N	63
809	alone	make	381	409	653	way	887	\N	smartwatch	\N	\N	\N	19
415	statement	parent	776	728	125	training	492	\N	computer	\N	\N	\N	88
673	size	different	44	274	840	price	74	\N	laptop	\N	\N	\N	29
962	million	simply	837	261	562	owner	130	44	camera	\N	\N	\N	69
406	finally	general	931	992	671	business	822	\N	computer	\N	\N	\N	5
793	cup	push	679	415	894	though	65	\N	tablet	\N	\N	\N	97
465	president	space	172	688	687	almost	876	\N	computer	\N	\N	\N	44
1018	best	usually	940	50	377	against	166	\N	phone	\N	\N	\N	62
478	together	man	928	361	482	evening	566	\N	computer	\N	\N	\N	71
1091	pull	ground	365	966	915	school	186	\N	phone	\N	\N	\N	48
462	lawyer	which	593	261	743	win	735	\N	computer	\N	\N	\N	95
416	hot	responsibility	215	393	647	voice	407	\N	computer	\N	\N	\N	61
312	prepare	with	796	557	661	social	539	\N	electronics	\N	\N	\N	31
861	activity	look	731	555	524	too	715	\N	smartwatch	\N	\N	\N	13
607	some	main	302	167	649	force	50	\N	laptop	\N	\N	\N	87
1015	relate	your	906	446	760	color	377	\N	phone	\N	\N	\N	60
993	out	economic	127	860	895	pay	54	445	camera	\N	\N	\N	1
752	clear	cup	93	551	482	car	871	\N	tablet	\N	\N	\N	81
305	already	act	494	744	75	serious	418	\N	electronics	\N	\N	\N	22
975	nice	long	273	371	593	glass	513	657	camera	\N	\N	[{"price": "964", "ends_at": "push", "price_id": "465", "starts_at": "operation"}]	49
491	modern	political	267	624	378	whole	729	\N	computer	\N	\N	\N	78
956	tree	important	184	800	967	carry	530	971	camera	\N	\N	\N	37
750	government	capital	41	356	788	stand	70	\N	tablet	\N	\N	\N	57
\.


--
-- Data for Name: relation_40; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_40 (warehouse_id, warehouse_name, region) FROM stdin;
1	miss	then
2	success	American
3	offer	coach
4	deal	everybody
5	others	someone
6	send	option
7	recognize	old
8	firm	idea
9	term	green
10	key	once
11	growth	first
12	them	head
13	cup	customer
14	expert	since
15	research	avoid
16	wonder	exactly
17	effort	today
18	car	me
19	prevent	expect
20	itself	them
21	prevent	middle
22	care	walk
23	many	perhaps
24	go	father
25	key	sell
26	possible	art
27	glass	simply
28	blood	hair
29	machine	claim
30	after	marriage
31	big	bag
32	movie	house
33	interest	hard
34	hour	wonder
35	court	garden
36	majority	also
37	out	nature
38	cold	product
39	visit	worry
40	cup	black
41	once	reduce
42	hour	resource
43	answer	property
44	blood	hard
45	lot	road
46	similar	anyone
47	community	recent
48	long	visit
49	black	old
50	role	particular
51	safe	identify
52	mention	wall
53	actually	than
54	specific	civil
55	statement	side
56	quite	maybe
57	rather	owner
58	picture	you
59	lay	physical
60	form	those
61	chance	without
62	audience	still
63	scientist	any
64	capital	teacher
65	receive	account
66	sea	himself
67	since	fight
68	message	yet
69	business	important
70	foot	image
71	improve	remain
72	continue	ball
73	he	fill
74	without	share
75	job	offer
76	question	common
77	sing	pattern
78	magazine	it
79	voice	even
80	can	author
81	shoulder	room
82	difficult	crime
83	response	parent
84	design	prepare
85	base	past
86	then	some
87	woman	stay
88	future	point
89	man	full
90	mother	billion
91	success	side
92	few	cold
93	then	land
94	white	threat
95	federal	kid
96	study	fine
97	none	available
98	prevent	national
99	everything	film
100	shake	southern
\.


--
-- Data for Name: relation_41; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_41 (warehouse_id, bin_id, code) FROM stdin;
58	789	economy
40	943	house
72	244	out
65	777	Mr
3	398	whose
59	180	less
57	823	clear
94	989	late
69	35	yes
2	134	career
39	489	statement
79	496	necessary
81	661	yeah
83	790	though
71	727	activity
5	766	parent
58	253	early
26	74	major
2	441	put
19	5	evidence
8	549	street
35	331	hand
9	227	although
1	556	high
18	99	yourself
45	961	even
82	205	seem
36	493	but
23	845	town
96	679	they
60	639	which
19	991	actually
69	325	ahead
21	995	consider
51	961	voice
76	214	between
39	611	follow
87	677	cold
33	469	budget
57	140	western
24	180	style
21	511	across
53	765	prepare
42	173	Congress
80	791	onto
18	272	large
70	665	write
93	676	laugh
83	24	none
52	818	Mrs
69	279	customer
84	954	practice
23	557	above
46	750	power
96	112	whole
69	257	use
6	180	source
82	709	herself
55	25	home
9	661	various
3	591	also
70	9	future
60	552	impact
56	375	alone
78	789	daughter
19	922	list
23	57	very
2	378	east
93	602	who
84	831	also
91	85	people
8	126	sort
19	159	recognize
3	262	method
29	586	occur
95	580	civil
25	693	while
10	353	owner
53	353	realize
95	506	evening
50	521	must
25	276	else
93	565	class
25	742	dinner
53	812	cause
31	390	officer
28	103	list
52	694	avoid
31	325	hundred
70	951	she
48	826	about
5	213	just
21	329	dinner
39	635	create
59	103	marriage
2	192	interest
97	732	position
70	377	drive
26	163	break
36	796	entire
\.


--
-- Data for Name: relation_42; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_42 (supplier_id, supplier_name) FROM stdin;
1	enough
2	answer
3	sell
4	position
5	he
6	lot
7	low
8	crime
9	question
10	his
11	past
12	drug
13	everyone
14	clearly
15	majority
16	detail
17	issue
18	maybe
19	two
20	assume
21	option
22	military
23	structure
24	determine
25	most
26	develop
27	college
28	plant
29	federal
30	them
31	short
32	street
33	structure
34	billion
35	human
36	discuss
37	color
38	marriage
39	certain
40	plan
41	under
42	close
43	wind
44	church
45	throughout
46	turn
47	and
48	a
49	difference
50	special
51	thousand
52	tough
53	assume
54	from
55	trial
56	across
57	memory
58	past
59	campaign
60	according
61	bit
62	red
63	past
64	big
65	go
66	I
67	final
68	bit
69	old
70	hit
71	system
72	side
73	material
74	benefit
75	me
76	support
77	middle
78	along
79	life
80	impact
81	alone
82	street
83	defense
84	energy
85	possible
86	rule
87	loss
88	team
89	interest
90	American
91	view
92	every
93	fear
94	easy
95	television
96	finish
97	through
98	doctor
99	set
100	coach
\.


--
-- Data for Name: relation_43; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_43 (supplier_id, contact_id, email, phone) FROM stdin;
21	114	clarkbrandon@example.com	child
25	386	tiffanymitchell@example.com	apply
72	443	ericalloyd@example.net	study
40	212	tranmichael@example.com	best
9	290	patriciagonzalez@example.org	way
64	515	hunterrobert@example.com	point
60	233	nfreeman@example.net	listen
80	742	hornbrittany@example.com	pattern
7	892	frypaul@example.com	in
34	333	emosley@example.org	sometimes
51	589	susanmaldonado@example.com	challenge
95	865	shawn85@example.org	PM
20	946	joshua75@example.net	ten
84	346	davidwright@example.org	contain
43	463	ryanmoore@example.net	many
22	535	ashley50@example.net	or
13	825	lscott@example.org	while
59	130	gwest@example.org	knowledge
20	962	pierceallison@example.net	measure
1	393	davisbailey@example.com	some
22	135	sosajames@example.com	throw
14	570	daniel13@example.org	design
82	212	michaelwebster@example.com	itself
81	882	jennifergreen@example.net	position
15	927	qcowan@example.com	evening
8	797	diane83@example.org	study
74	778	stanleywilliams@example.com	book
63	229	harrisnancy@example.com	friend
70	408	eaguilar@example.net	also
92	357	michelleday@example.net	employee
38	93	dwaynehill@example.net	which
29	378	shannonstevens@example.com	bed
96	25	kgarcia@example.com	piece
13	270	bradley21@example.net	member
36	297	victoriapetersen@example.net	marriage
71	318	robert37@example.com	simple
24	442	dcastillo@example.net	specific
89	502	duncanrachel@example.com	nature
42	883	lbrewer@example.net	sound
49	288	samanthagonzales@example.org	someone
71	790	wilsonbrandi@example.org	six
52	928	bbaxter@example.net	significant
27	428	jacobjohnson@example.com	white
45	73	gmartinez@example.org	opportunity
90	547	ykane@example.org	half
58	312	nashley@example.org	happy
40	406	ewood@example.net	decide
45	725	graychristopher@example.com	military
85	30	robert65@example.org	medical
37	133	zamoralaura@example.com	evening
15	766	qnichols@example.org	artist
42	243	kelseysmith@example.com	reduce
86	910	walkerscott@example.com	seat
32	529	stuart31@example.com	memory
76	704	autumn80@example.com	certainly
44	144	laura83@example.net	store
77	999	lisaross@example.net	field
6	968	vwarren@example.com	answer
45	172	brownjodi@example.net	them
75	258	mking@example.org	factor
68	952	reneebutler@example.com	role
83	880	jennifer21@example.com	break
52	730	duanemendez@example.com	top
8	743	laura88@example.com	section
80	232	michelle18@example.org	song
39	909	uodom@example.org	condition
44	996	asmith@example.net	answer
44	527	tonysullivan@example.net	newspaper
96	617	qbarrera@example.org	drug
95	869	matthew56@example.org	throw
6	3	gonzaleztanya@example.org	same
53	952	baileymitchell@example.org	company
37	838	sophia91@example.net	listen
1	102	reginacline@example.net	go
18	599	yhoover@example.org	nice
37	112	fcombs@example.net	more
6	280	davidmontgomery@example.com	former
7	884	thiggins@example.org	rule
78	489	ryaningram@example.org	wide
64	54	peter55@example.org	service
27	878	rgutierrez@example.net	sure
25	756	tracimccoy@example.org	interesting
7	865	rcooke@example.com	fly
45	288	kathleen48@example.org	cold
48	526	oscar37@example.com	push
29	329	hardyadrian@example.org	everybody
42	505	qromero@example.net	message
5	606	jburns@example.org	civil
81	820	zamoraderek@example.com	amount
18	132	cody25@example.org	season
73	194	melissathomas@example.org	Congress
84	241	brownbrian@example.com	three
92	56	robertwalker@example.com	make
12	36	deborahwashington@example.org	situation
7	196	blopez@example.com	outside
97	368	morrisvalerie@example.org	baby
53	803	kyleweaver@example.net	win
93	162	brandy04@example.com	rock
25	831	markromero@example.org	expert
100	214	mcdanielkristin@example.org	human
\.


--
-- Data for Name: relation_44; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_44 (purchaseorder_id, created_at, status, supplier_pos_supplier_id) FROM stdin;
6	perhaps	opportunity	\N
11	thought	effect	\N
12	eight	its	\N
21	never	gun	\N
27	these	high	\N
32	director	establish	\N
36	American	rise	\N
46	attorney	tend	\N
48	be	summer	\N
51	the	task	\N
63	himself	early	\N
72	difference	mention	\N
87	national	summer	\N
30	six	address	25
97	call	general	38
24	size	sometimes	93
34	difficult	however	69
4	for	guess	25
73	together	expect	94
8	response	go	57
93	this	particularly	6
86	three	history	85
17	pattern	itself	38
90	training	already	85
18	recent	yeah	77
66	stop	eye	21
49	loss	offer	85
16	former	become	2
81	hour	live	3
20	peace	white	77
69	consumer	energy	57
5	what	shake	10
85	past	of	24
76	rock	imagine	18
95	land	game	66
79	red	also	73
67	across	know	72
50	card	never	44
84	listen	moment	77
45	big	capital	14
96	plan	thousand	96
60	voice	writer	57
94	history	collection	93
65	short	report	24
56	above	herself	68
35	exist	teach	62
39	all	identify	90
82	particularly	center	74
2	include	change	53
15	month	operation	84
89	professional	that	35
42	keep	south	16
61	information	imagine	73
74	newspaper	money	33
7	manage	see	24
64	painting	month	43
10	blue	century	59
80	support	report	4
33	explain	move	24
25	wrong	space	13
43	seven	become	21
83	production	finish	61
75	order	thank	91
13	south	trouble	66
59	nature	mission	38
68	least	compare	31
9	little	serious	44
99	family	voice	64
55	cost	behavior	12
1	language	purpose	90
40	memory	service	29
14	produce	but	7
92	nor	his	58
26	lead	change	15
77	call	question	34
52	television	save	35
57	look	address	49
78	relationship	house	33
54	church	read	83
22	speak	after	49
53	deep	buy	16
19	ground	design	92
62	American	behavior	94
98	that	seat	30
70	tell	each	7
71	this	miss	21
47	people	particularly	31
100	end	spring	35
29	that	card	15
3	stage	program	99
23	north	north	98
41	main	send	97
91	law	last	63
37	media	remain	27
88	beat	child	97
58	bar	true	81
44	similar	western	43
38	person	resource	30
28	instead	art	68
31	lay	half	3
\.


--
-- Data for Name: relation_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_45 (courierpartner_id, carrier_code, webhook_url) FROM stdin;
1	organization	business
2	guess	nice
3	body	seat
4	fund	suggest
5	south	many
6	coach	her
7	increase	age
8	rich	child
9	all	off
10	pattern	receive
11	give	show
12	in	side
13	card	wear
14	others	foreign
15	before	green
16	up	professional
17	middle	happen
18	where	nor
19	thought	his
20	once	agree
21	any	garden
22	industry	describe
23	kind	paper
24	inside	theory
25	area	develop
26	information	southern
27	capital	form
28	once	health
29	media	rate
30	campaign	turn
31	yeah	money
32	doctor	sound
33	manager	on
34	available	data
35	factor	magazine
36	former	sense
37	moment	difference
38	arrive	wonder
39	hope	future
40	up	fear
41	build	again
42	before	indeed
43	step	low
44	able	democratic
45	agency	participant
46	foreign	any
47	drop	ground
48	after	between
49	go	me
50	smile	live
51	ago	case
52	difference	environment
53	each	fly
54	book	within
55	office	develop
56	long	second
57	city	summer
58	bad	way
59	nearly	her
60	without	represent
61	social	computer
62	ground	similar
63	top	program
64	hot	deal
65	director	their
66	structure	fund
67	must	network
68	sure	heart
69	what	difference
70	everyone	something
71	across	eight
72	practice	lot
73	as	six
74	move	account
75	year	upon
76	sign	staff
77	often	girl
78	north	become
79	along	alone
80	write	on
81	describe	never
82	entire	boy
83	treat	include
84	radio	tree
85	according	than
86	your	stuff
87	film	material
88	official	drop
89	remember	home
90	happen	left
91	about	short
92	among	out
93	trouble	move
94	chair	decade
95	should	budget
96	media	almost
97	among	well
98	these	stop
99	there	trip
100	myself	admit
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

COPY public.relation_5 (computer_id, cpu, ram_gb) FROM stdin;
401	research	956
402	discover	102
403	of	44
404	spend	521
405	whom	582
406	same	486
407	pull	576
408	perform	796
409	yes	901
410	of	446
411	fear	836
412	music	625
413	although	117
414	career	350
415	different	919
416	American	734
417	every	994
418	get	483
419	help	452
420	wish	273
421	decide	425
422	how	188
423	crime	160
424	including	261
425	agent	713
426	policy	930
427	detail	245
428	race	385
429	real	242
430	employee	517
431	know	408
432	majority	92
433	measure	531
434	certain	880
435	theory	610
436	summer	548
437	lose	172
438	seven	206
439	there	156
440	general	739
441	shake	951
442	health	394
443	vote	977
444	relationship	73
445	though	440
446	bit	472
447	ball	958
448	first	765
449	should	612
450	sort	248
451	bill	678
452	enjoy	305
453	eight	299
454	history	723
455	dinner	382
456	mother	849
457	both	946
458	ground	446
459	general	520
460	ability	970
461	become	734
462	later	124
463	though	494
464	each	654
465	art	421
466	student	279
467	arrive	573
468	group	220
469	focus	250
470	unit	433
471	claim	515
472	even	370
473	compare	928
474	much	152
475	develop	45
476	media	410
477	wall	275
478	prove	971
479	war	312
480	event	604
481	fund	622
482	score	401
483	off	588
484	total	956
485	lawyer	380
486	product	553
487	education	165
488	raise	918
489	worry	325
490	decision	873
491	behavior	65
492	natural	993
493	court	726
494	design	86
495	top	216
496	sister	756
497	identify	557
498	skin	304
499	student	834
500	boy	324
601	budget	500
602	particular	326
603	be	426
604	matter	185
605	song	838
606	scene	974
607	charge	119
608	store	366
609	sing	289
610	campaign	361
611	drop	461
612	read	748
613	production	532
614	opportunity	533
615	answer	14
616	lead	608
617	total	362
618	career	91
619	exist	138
620	blood	346
621	force	9
622	paper	671
623	simply	323
624	natural	825
625	ground	568
626	drug	533
627	data	690
628	add	436
629	a	909
630	try	856
631	per	552
632	eye	460
633	our	1000
634	whose	358
635	appear	899
636	road	951
637	travel	344
638	top	480
639	fine	99
640	Congress	910
641	type	150
642	economic	806
643	method	716
644	action	574
645	wide	499
646	floor	596
647	her	103
648	owner	552
649	development	694
650	herself	607
651	officer	550
652	rate	609
653	pick	635
654	market	369
655	green	806
656	store	407
657	individual	399
658	exist	803
659	after	68
660	maybe	893
661	same	828
662	weight	349
663	audience	961
664	hope	992
665	girl	138
666	American	141
667	you	710
668	white	546
669	again	142
670	bank	487
671	leg	247
672	service	714
673	position	817
674	call	410
675	reach	288
676	theory	769
677	win	67
678	wear	404
679	attack	177
680	subject	441
681	second	242
682	different	351
683	call	706
684	buy	121
685	ground	974
686	American	296
687	Mr	769
688	allow	618
689	item	617
690	wish	853
691	report	607
692	door	364
693	deal	670
694	each	988
695	charge	440
696	research	610
697	because	225
698	mouth	547
699	into	303
700	Mr	991
\.


--
-- Data for Name: relation_50; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_50 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_51; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_51 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_52; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_52 (product_id, warehouse_id, bin_id) FROM stdin;
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
-- Data for Name: relation_53; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_53 (supplier_id, product_id) FROM stdin;
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
-- Data for Name: relation_54; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_54 (purchaseorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_6; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_6 (desktop_id, sku, product_name, base_price, is_active, quantity, dimensions, warranty_months, cpu, ram_gb, form_factor, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
501	fly	cause	428	768	168	difference	724	skill	603	whom	\N	\N	\N	\N
503	first	reality	925	203	239	southern	602	official	134	gun	\N	\N	\N	\N
505	statement	rise	470	202	801	officer	370	final	986	officer	\N	\N	\N	\N
507	more	year	955	651	10	opportunity	501	occur	34	send	\N	\N	\N	\N
508	then	stuff	169	260	921	look	10	why	236	remain	\N	\N	\N	\N
509	major	east	784	909	87	make	36	reduce	969	positive	\N	\N	\N	\N
511	world	computer	503	519	381	their	402	hot	968	minute	\N	\N	\N	\N
513	professor	develop	639	305	979	drop	629	cause	486	letter	\N	\N	\N	\N
514	game	table	373	24	500	me	953	probably	108	show	\N	\N	\N	\N
516	unit	must	597	352	348	significant	663	avoid	431	subject	\N	\N	\N	\N
517	other	left	200	719	527	she	975	issue	863	food	\N	\N	\N	\N
519	cup	foreign	757	590	927	Republican	619	computer	483	town	\N	\N	\N	\N
520	pay	mother	170	853	275	me	577	star	784	hot	\N	\N	\N	\N
522	beat	wrong	16	620	776	fly	801	quite	469	agreement	\N	\N	\N	\N
524	law	mission	215	717	488	thing	713	including	641	office	\N	\N	\N	\N
525	say	mean	149	394	884	option	56	expect	658	address	\N	\N	\N	\N
528	she	seek	333	347	317	common	214	at	734	popular	\N	\N	\N	\N
529	blue	wear	84	337	123	appear	132	should	800	response	\N	\N	\N	\N
530	study	wrong	708	302	983	size	623	first	349	program	\N	\N	\N	\N
531	positive	deal	239	28	986	not	774	when	785	east	\N	\N	\N	\N
533	resource	best	388	431	950	guy	831	language	888	join	\N	\N	\N	\N
536	condition	last	250	731	405	on	216	tend	637	trouble	\N	\N	\N	\N
537	forward	open	156	738	307	education	2	degree	730	marriage	\N	\N	\N	\N
539	someone	production	692	150	32	practice	448	close	568	four	\N	\N	\N	\N
540	production	include	351	896	821	meet	326	have	962	area	\N	\N	\N	\N
541	whole	vote	619	115	598	which	830	either	562	test	\N	\N	\N	\N
542	water	heavy	679	283	440	issue	863	marriage	319	improve	\N	\N	\N	\N
543	take	system	771	89	655	certainly	118	course	514	art	\N	\N	\N	\N
544	condition	tax	226	892	621	office	448	use	382	onto	\N	\N	\N	\N
545	great	open	804	237	56	worker	612	result	528	expert	\N	\N	\N	\N
546	huge	act	527	524	167	peace	300	rate	945	ball	\N	\N	\N	\N
547	news	relationship	50	906	70	power	4	single	689	situation	\N	\N	\N	\N
552	that	seek	188	216	401	wind	245	effect	994	opportunity	\N	\N	\N	\N
554	least	food	417	123	17	nothing	518	past	656	start	\N	\N	\N	\N
555	notice	would	96	780	190	discussion	231	edge	181	describe	\N	\N	\N	\N
556	thank	series	312	928	826	fill	61	rest	814	recently	\N	\N	\N	\N
562	money	blood	806	832	761	visit	961	begin	293	magazine	\N	\N	\N	\N
563	camera	realize	732	259	540	ground	893	skill	255	involve	\N	\N	\N	\N
564	with	sound	740	34	742	reveal	784	poor	200	office	\N	\N	\N	\N
567	visit	force	396	92	437	new	852	although	851	contain	\N	\N	\N	\N
569	tax	occur	117	246	75	them	907	let	284	there	\N	\N	\N	\N
571	southern	role	380	420	468	mind	361	hour	324	administration	\N	\N	\N	\N
572	tonight	one	406	982	483	city	380	compare	131	social	\N	\N	\N	\N
573	story	easy	310	173	310	job	893	tax	562	impact	\N	\N	\N	\N
574	how	condition	729	745	154	police	469	camera	661	watch	\N	\N	\N	\N
576	bill	new	627	260	242	century	661	team	323	day	\N	\N	\N	\N
577	bed	send	176	284	877	scene	318	in	80	down	\N	\N	\N	\N
580	enough	guy	71	702	192	well	548	cell	36	understand	\N	\N	\N	\N
581	service	collection	48	744	978	moment	666	east	365	strategy	\N	\N	\N	\N
521	sea	activity	826	406	622	enter	262	apply	318	citizen	\N	[{"barcode": "such", "variant_id": "524", "price_override": "479", "is_active_variant": "504"}]	\N	\N
568	glass	open	502	899	352	program	620	power	665	animal	\N	\N	[{"price": "799", "ends_at": "seem", "price_id": "826", "starts_at": "material"}]	\N
512	western	such	670	76	200	western	193	sell	701	win	\N	\N	\N	3
548	impact	design	64	434	750	develop	68	candidate	57	window	\N	\N	\N	51
550	car	else	20	627	10	quickly	481	pay	205	country	\N	\N	\N	98
532	her	few	775	517	768	play	310	answer	301	south	\N	\N	\N	10
518	country	tough	853	623	578	agreement	615	mouth	697	blue	\N	\N	\N	16
506	citizen	push	468	343	950	I	226	student	948	rest	\N	\N	\N	91
549	product	first	10	36	551	charge	341	fill	804	hundred	\N	\N	\N	74
584	or	pull	124	190	972	fact	34	tell	278	star	\N	\N	\N	\N
585	late	share	907	629	729	result	64	six	253	race	\N	\N	\N	\N
586	onto	chair	858	869	312	few	577	take	413	side	\N	\N	\N	\N
587	herself	action	251	369	791	value	238	cell	965	glass	\N	\N	\N	\N
589	or	society	1000	139	229	even	519	western	912	far	\N	\N	\N	\N
590	amount	subject	273	145	167	war	78	cell	319	phone	\N	\N	\N	\N
591	man	night	588	523	522	teach	884	girl	893	education	\N	\N	\N	\N
594	someone	door	284	211	235	again	137	suddenly	792	discover	\N	\N	\N	\N
596	your	building	51	803	369	feel	625	mother	244	air	\N	\N	\N	\N
597	already	turn	695	713	889	term	90	recent	452	floor	\N	\N	\N	\N
598	song	sort	660	672	202	avoid	169	same	589	policy	\N	\N	\N	\N
599	opportunity	suffer	708	859	856	learn	223	back	324	brother	\N	\N	\N	\N
557	what	specific	322	900	744	reason	65	order	853	it	[{"url": "though", "alt_text": "daughter", "image_id": "588", "sort_order": "868"}]	\N	\N	\N
570	all	treatment	546	312	943	before	773	hour	852	number	[{"url": "edge", "alt_text": "face", "image_id": "478", "sort_order": "460"}]	\N	\N	\N
560	sit	himself	813	234	681	which	123	yet	59	represent	[{"url": "ask", "alt_text": "friend", "image_id": "267", "sort_order": "782"}]	\N	\N	\N
510	word	threat	541	206	215	nation	296	choice	249	finish	[{"url": "measure", "alt_text": "of", "image_id": "128", "sort_order": "143"}]	\N	\N	\N
565	tough	answer	334	359	366	price	783	hair	896	lose	[{"url": "once", "alt_text": "teacher", "image_id": "399", "sort_order": "150"}]	\N	\N	\N
551	four	cost	273	303	596	open	911	myself	240	last	[{"url": "president", "alt_text": "both", "image_id": "935", "sort_order": "970"}]	\N	\N	\N
588	start	measure	298	715	583	government	201	oil	100	collection	[{"url": "develop", "alt_text": "nor", "image_id": "427", "sort_order": "945"}]	\N	\N	\N
553	lawyer	from	569	718	464	onto	340	industry	335	ever	\N	[{"barcode": "skill", "variant_id": "418", "price_override": "825", "is_active_variant": "833"}]	\N	\N
582	stock	good	754	986	375	agent	879	story	872	final	\N	[{"barcode": "until", "variant_id": "151", "price_override": "185", "is_active_variant": "192"}]	\N	\N
578	lawyer	daughter	439	158	564	measure	908	list	461	major	\N	[{"barcode": "baby", "variant_id": "13", "price_override": "127", "is_active_variant": "178"}]	\N	\N
592	including	pattern	450	595	525	none	188	treat	525	morning	\N	[{"barcode": "rule", "variant_id": "373", "price_override": "883", "is_active_variant": "507"}]	\N	\N
575	risk	hot	643	156	139	social	82	write	833	budget	\N	[{"barcode": "until", "variant_id": "2", "price_override": "275", "is_active_variant": "767"}]	\N	\N
600	opportunity	free	912	492	566	center	923	recently	54	fill	\N	\N	\N	65
523	task	test	469	914	365	for	521	him	455	food	\N	[{"barcode": "we", "variant_id": "329", "price_override": "136", "is_active_variant": "518"}]	\N	28
583	loss	job	801	516	643	thousand	351	himself	670	daughter	\N	\N	\N	46
566	concern	out	945	676	889	bad	886	particularly	696	probably	\N	[{"barcode": "lose", "variant_id": "635", "price_override": "478", "is_active_variant": "183"}]	\N	10
595	very	better	214	22	168	stage	372	series	189	check	[{"url": "eat", "alt_text": "purpose", "image_id": "903", "sort_order": "221"}, {"url": "do", "alt_text": "collection", "image_id": "578", "sort_order": "194"}]	\N	\N	51
593	join	agency	885	365	201	rich	824	herself	76	reality	\N	[{"barcode": "hear", "variant_id": "243", "price_override": "156", "is_active_variant": "735"}]	\N	65
559	letter	phone	985	353	60	strong	454	specific	206	country	\N	\N	\N	32
538	this	perhaps	722	704	315	everything	510	city	175	best	\N	\N	\N	88
534	exactly	ever	879	76	963	free	418	stock	961	full	\N	\N	\N	10
502	military	research	719	680	645	reason	189	he	997	trip	\N	\N	\N	52
579	school	significant	939	111	866	cut	701	across	324	eat	\N	\N	\N	6
561	break	policy	208	56	765	miss	90	leader	976	purpose	\N	\N	\N	80
515	before	lawyer	675	641	592	rock	848	movement	725	agency	\N	\N	\N	74
526	analysis	public	114	365	893	everything	262	film	770	management	\N	\N	\N	87
535	represent	then	238	623	44	people	645	tough	230	appear	\N	\N	\N	86
527	rule	describe	555	760	56	chance	388	I	16	image	\N	[{"barcode": "same", "variant_id": "193", "price_override": "341", "is_active_variant": "197"}]	\N	45
504	Democrat	institution	998	601	519	available	739	without	273	close	\N	\N	\N	31
558	side	activity	454	154	237	image	766	a	294	car	\N	\N	\N	99
\.


--
-- Data for Name: relation_7; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_7 (laptop_id, battery_wh) FROM stdin;
601	70
602	912
603	872
604	931
605	259
606	13
607	442
608	787
609	624
610	97
611	154
612	656
613	520
614	815
615	396
616	603
617	449
618	453
619	453
620	994
621	590
622	168
623	269
624	934
625	724
626	631
627	159
628	390
629	451
630	212
631	397
632	535
633	605
634	795
635	795
636	564
637	911
638	285
639	169
640	629
641	359
642	831
643	106
644	330
645	734
646	397
647	502
648	127
649	573
650	819
651	930
652	956
653	778
654	371
655	924
656	716
657	667
658	799
659	843
660	301
661	418
662	148
663	214
664	151
665	871
666	22
667	509
668	481
669	287
670	31
671	212
672	312
673	109
674	340
675	147
676	393
677	149
678	468
679	835
680	875
681	712
682	600
683	942
684	862
685	153
686	26
687	816
688	514
689	558
690	752
691	626
692	109
693	606
694	241
695	574
696	30
697	276
698	57
699	600
700	683
\.


--
-- Data for Name: relation_8; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_8 (tablet_id, screen_size_in) FROM stdin;
701	771
702	152
703	369
704	555
705	142
706	748
707	729
708	276
709	13
710	412
711	635
712	626
713	174
714	569
715	547
716	516
717	630
718	877
719	626
720	447
721	787
722	870
723	933
724	830
725	458
726	159
727	490
728	320
729	214
730	36
731	886
732	102
733	529
734	589
735	659
736	567
737	409
738	63
739	98
740	433
741	802
742	689
743	380
744	143
745	491
746	821
747	823
748	689
749	626
750	75
751	316
752	335
753	539
754	650
755	314
756	5
757	996
758	409
759	396
760	457
761	919
762	814
763	73
764	848
765	444
766	316
767	316
768	49
769	212
770	253
771	200
772	747
773	858
774	142
775	936
776	408
777	556
778	91
779	924
780	53
781	407
782	515
783	569
784	46
785	307
786	549
787	91
788	862
789	821
790	602
791	839
792	885
793	131
794	677
795	975
796	396
797	636
798	27
799	781
800	360
\.


--
-- Data for Name: relation_9; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_9 (smartwatch_id, band_size, bundled_phone_smart_watch_phone_id) FROM stdin;
801	party	\N
802	concern	\N
803	last	\N
804	shoulder	\N
805	upon	\N
808	as	\N
809	point	\N
812	activity	\N
813	such	\N
815	decision	\N
819	like	\N
820	least	\N
823	front	\N
825	car	\N
834	some	\N
835	decision	\N
836	several	\N
837	data	\N
838	son	\N
839	finally	\N
840	sister	\N
841	change	\N
843	strategy	\N
844	we	\N
845	child	\N
848	each	\N
851	important	\N
852	war	\N
857	low	\N
858	tell	\N
859	true	\N
860	popular	\N
861	chair	\N
862	your	\N
867	cause	\N
868	baby	\N
871	put	\N
874	parent	\N
875	anything	\N
876	any	\N
878	couple	\N
879	policy	\N
882	town	\N
883	computer	\N
885	loss	\N
886	discover	\N
889	popular	\N
890	election	\N
893	explain	\N
894	low	\N
896	plant	\N
898	small	\N
806	choose	1063
807	race	1018
810	teacher	1001
811	never	1034
814	analysis	1060
816	major	1090
817	wonder	1019
818	around	1022
821	like	1081
822	pretty	1052
824	trade	1026
826	usually	1071
827	wall	1032
828	could	1082
829	gun	1018
830	live	1045
831	interest	1044
832	price	1091
833	arrive	1037
842	remember	1064
846	require	1036
847	through	1091
849	painting	1063
850	least	1066
853	special	1009
854	official	1078
855	impact	1081
856	sport	1098
863	he	1018
864	three	1041
865	level	1043
866	challenge	1038
869	scene	1050
870	cell	1014
872	among	1056
873	series	1037
877	face	1064
880	knowledge	1046
881	threat	1093
884	write	1078
887	civil	1034
888	first	1100
891	appear	1071
892	third	1011
895	half	1066
897	look	1075
899	expert	1070
900	sell	1044
\.


--
-- Data for Name: temp_browsingsession; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_browsingsession (user_id, email, password_hash, employee_no, role, browsingsession) FROM stdin;
7	\N	\N	\N	\N	[{"device": "pattern", "session_id": "445", "started_at": "debate"}]
740	\N	\N	\N	\N	[{"device": "contain", "session_id": "702", "started_at": "idea"}]
183	\N	\N	\N	\N	[{"device": "left", "session_id": "47", "started_at": "the"}]
699	\N	\N	\N	\N	[{"device": "direction", "session_id": "641", "started_at": "whatever"}]
116	\N	\N	\N	\N	[{"device": "resource", "session_id": "643", "started_at": "public"}]
238	\N	\N	\N	\N	[{"device": "attorney", "session_id": "748", "started_at": "sure"}]
113	\N	\N	\N	\N	[{"device": "mother", "session_id": "858", "started_at": "share"}]
309	\N	\N	\N	\N	[{"device": "charge", "session_id": "102", "started_at": "small"}]
946	\N	\N	\N	\N	[{"device": "pressure", "session_id": "38", "started_at": "purpose"}]
461	\N	\N	\N	\N	[{"device": "shake", "session_id": "322", "started_at": "girl"}]
967	\N	\N	\N	\N	[{"device": "thing", "session_id": "224", "started_at": "our"}]
619	\N	\N	\N	\N	[{"device": "better", "session_id": "747", "started_at": "character"}]
518	\N	\N	\N	\N	[{"device": "machine", "session_id": "578", "started_at": "professional"}]
586	\N	\N	\N	\N	[{"device": "environmental", "session_id": "63", "started_at": "necessary"}]
66	\N	\N	\N	\N	[{"device": "history", "session_id": "685", "started_at": "spend"}]
995	\N	\N	\N	\N	[{"device": "throw", "session_id": "975", "started_at": "top"}]
648	\N	\N	\N	\N	[{"device": "sea", "session_id": "671", "started_at": "building"}]
318	\N	\N	\N	\N	[{"device": "guess", "session_id": "72", "started_at": "worker"}]
415	\N	\N	\N	\N	[{"device": "guy", "session_id": "630", "started_at": "still"}]
803	\N	\N	\N	\N	[{"device": "speech", "session_id": "783", "started_at": "area"}]
208	\N	\N	\N	\N	[{"device": "beyond", "session_id": "813", "started_at": "career"}]
77	\N	\N	\N	\N	[{"device": "once", "session_id": "899", "started_at": "piece"}]
909	\N	\N	\N	\N	[{"device": "but", "session_id": "377", "started_at": "power"}]
772	\N	\N	\N	\N	[{"device": "wear", "session_id": "361", "started_at": "kid"}]
898	\N	\N	\N	\N	[{"device": "up", "session_id": "778", "started_at": "office"}]
467	\N	\N	\N	\N	[{"device": "appear", "session_id": "40", "started_at": "language"}]
329	\N	\N	\N	\N	[{"device": "future", "session_id": "443", "started_at": "under"}]
382	\N	\N	\N	\N	[{"device": "wife", "session_id": "748", "started_at": "born"}, {"device": "generation", "session_id": "657", "started_at": "choice"}]
315	\N	\N	\N	\N	[{"device": "give", "session_id": "281", "started_at": "natural"}]
993	\N	\N	\N	\N	[{"device": "professor", "session_id": "979", "started_at": "expert"}]
921	\N	\N	\N	\N	[{"device": "style", "session_id": "421", "started_at": "with"}, {"device": "decade", "session_id": "316", "started_at": "customer"}]
357	\N	\N	\N	\N	[{"device": "like", "session_id": "1", "started_at": "lead"}]
102	\N	\N	\N	\N	[{"device": "section", "session_id": "577", "started_at": "interesting"}]
21	\N	\N	\N	\N	[{"device": "road", "session_id": "430", "started_at": "commercial"}]
537	\N	\N	\N	\N	[{"device": "material", "session_id": "314", "started_at": "song"}]
977	\N	\N	\N	\N	[{"device": "small", "session_id": "863", "started_at": "work"}]
637	\N	\N	\N	\N	[{"device": "crime", "session_id": "447", "started_at": "window"}]
361	\N	\N	\N	\N	[{"device": "natural", "session_id": "792", "started_at": "make"}]
754	\N	\N	\N	\N	[{"device": "often", "session_id": "709", "started_at": "piece"}]
169	\N	\N	\N	\N	[{"device": "work", "session_id": "717", "started_at": "find"}]
837	\N	\N	\N	\N	[{"device": "deal", "session_id": "128", "started_at": "a"}]
346	\N	\N	\N	\N	[{"device": "sometimes", "session_id": "49", "started_at": "thank"}]
246	\N	\N	\N	\N	[{"device": "sport", "session_id": "457", "started_at": "subject"}]
266	\N	\N	\N	\N	[{"device": "to", "session_id": "713", "started_at": "public"}]
730	\N	\N	\N	\N	[{"device": "collection", "session_id": "848", "started_at": "always"}]
774	\N	\N	\N	\N	[{"device": "heavy", "session_id": "872", "started_at": "record"}]
492	\N	\N	\N	\N	[{"device": "protect", "session_id": "268", "started_at": "star"}]
197	\N	\N	\N	\N	[{"device": "relate", "session_id": "636", "started_at": "director"}]
910	\N	\N	\N	\N	[{"device": "right", "session_id": "571", "started_at": "easy"}]
384	\N	\N	\N	\N	[{"device": "mention", "session_id": "489", "started_at": "cut"}]
148	\N	\N	\N	\N	[{"device": "positive", "session_id": "931", "started_at": "step"}]
375	\N	\N	\N	\N	[{"device": "maintain", "session_id": "1", "started_at": "forward"}]
753	\N	\N	\N	\N	[{"device": "politics", "session_id": "264", "started_at": "character"}]
314	\N	\N	\N	\N	[{"device": "consider", "session_id": "62", "started_at": "politics"}]
784	\N	\N	\N	\N	[{"device": "option", "session_id": "748", "started_at": "owner"}]
385	\N	\N	\N	\N	[{"device": "last", "session_id": "541", "started_at": "within"}]
222	\N	\N	\N	\N	[{"device": "sense", "session_id": "366", "started_at": "American"}]
413	\N	\N	\N	\N	[{"device": "number", "session_id": "672", "started_at": "increase"}]
751	\N	\N	\N	\N	[{"device": "case", "session_id": "65", "started_at": "be"}]
815	\N	\N	\N	\N	[{"device": "each", "session_id": "640", "started_at": "wish"}, {"device": "size", "session_id": "294", "started_at": "quality"}]
801	\N	\N	\N	\N	[{"device": "another", "session_id": "607", "started_at": "sometimes"}]
836	\N	\N	\N	\N	[{"device": "area", "session_id": "7", "started_at": "require"}]
458	\N	\N	\N	\N	[{"device": "recently", "session_id": "367", "started_at": "culture"}]
734	\N	\N	\N	\N	[{"device": "growth", "session_id": "152", "started_at": "agency"}]
724	\N	\N	\N	\N	[{"device": "trade", "session_id": "28", "started_at": "small"}]
729	\N	\N	\N	\N	[{"device": "among", "session_id": "889", "started_at": "difference"}]
362	\N	\N	\N	\N	[{"device": "hospital", "session_id": "437", "started_at": "relate"}]
690	\N	\N	\N	\N	[{"device": "third", "session_id": "792", "started_at": "tree"}]
579	\N	\N	\N	\N	[{"device": "stage", "session_id": "10", "started_at": "big"}]
11	\N	\N	\N	\N	[{"device": "second", "session_id": "421", "started_at": "heart"}]
718	\N	\N	\N	\N	[{"device": "dream", "session_id": "82", "started_at": "democratic"}]
294	\N	\N	\N	\N	[{"device": "successful", "session_id": "12", "started_at": "style"}]
390	\N	\N	\N	\N	[{"device": "move", "session_id": "843", "started_at": "poor"}]
424	\N	\N	\N	\N	[{"device": "level", "session_id": "838", "started_at": "security"}]
636	\N	\N	\N	\N	[{"device": "rather", "session_id": "528", "started_at": "carry"}]
695	\N	\N	\N	\N	[{"device": "project", "session_id": "301", "started_at": "relate"}]
2	\N	\N	\N	\N	[{"device": "on", "session_id": "169", "started_at": "beat"}]
929	\N	\N	\N	\N	[{"device": "special", "session_id": "254", "started_at": "police"}]
202	\N	\N	\N	\N	[{"device": "near", "session_id": "463", "started_at": "list"}]
215	\N	\N	\N	\N	[{"device": "person", "session_id": "649", "started_at": "edge"}, {"device": "with", "session_id": "571", "started_at": "forward"}]
465	\N	\N	\N	\N	[{"device": "everything", "session_id": "840", "started_at": "magazine"}]
398	\N	\N	\N	\N	[{"device": "arm", "session_id": "789", "started_at": "low"}]
132	\N	\N	\N	\N	[{"device": "change", "session_id": "516", "started_at": "produce"}]
899	\N	\N	\N	\N	[{"device": "very", "session_id": "157", "started_at": "reason"}]
808	\N	\N	\N	\N	[{"device": "on", "session_id": "893", "started_at": "interview"}]
240	\N	\N	\N	\N	[{"device": "deal", "session_id": "87", "started_at": "democratic"}]
114	\N	\N	\N	\N	[{"device": "cover", "session_id": "66", "started_at": "want"}]
613	\N	\N	\N	\N	[{"device": "scientist", "session_id": "103", "started_at": "soon"}]
447	\N	\N	\N	\N	[{"device": "few", "session_id": "326", "started_at": "science"}]
701	\N	\N	\N	\N	[{"device": "talk", "session_id": "1000", "started_at": "letter"}]
265	\N	\N	\N	\N	[{"device": "night", "session_id": "35", "started_at": "matter"}]
822	\N	\N	\N	\N	[{"device": "investment", "session_id": "905", "started_at": "movie"}]
408	\N	\N	\N	\N	[{"device": "last", "session_id": "444", "started_at": "attorney"}]
466	\N	\N	\N	\N	[{"device": "address", "session_id": "11", "started_at": "ask"}]
358	\N	\N	\N	\N	[{"device": "agreement", "session_id": "557", "started_at": "particularly"}]
761	\N	\N	\N	\N	[{"device": "throw", "session_id": "891", "started_at": "stuff"}]
\.


--
-- Data for Name: temp_bundled_phone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_bundled_phone (phone_id, carrier_lock, single_bundle_phone_bundled_phone_phone_id) FROM stdin;
1009	\N	1024
1092	\N	1022
1012	\N	1004
1097	\N	1093
1031	\N	1005
1044	\N	1010
1020	\N	1071
1085	\N	1055
1079	\N	1092
1083	\N	1040
1017	\N	1086
1038	\N	1097
\.


--
-- Data for Name: temp_bundled_phone_smart_watch; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_bundled_phone_smart_watch (smartwatch_id, band_size, bundled_phone_smart_watch_phone_id) FROM stdin;
866	\N	1038
863	\N	1018
842	\N	1064
849	\N	1063
869	\N	1050
806	\N	1063
827	\N	1032
828	\N	1082
832	\N	1091
895	\N	1066
833	\N	1037
814	\N	1060
873	\N	1037
899	\N	1070
900	\N	1044
854	\N	1078
855	\N	1081
880	\N	1046
888	\N	1100
810	\N	1001
821	\N	1081
811	\N	1034
865	\N	1043
829	\N	1018
817	\N	1019
831	\N	1044
884	\N	1078
816	\N	1090
881	\N	1093
853	\N	1009
877	\N	1064
892	\N	1011
891	\N	1071
856	\N	1098
897	\N	1075
872	\N	1056
826	\N	1071
847	\N	1091
830	\N	1045
846	\N	1036
824	\N	1026
850	\N	1066
807	\N	1018
818	\N	1022
870	\N	1014
864	\N	1041
887	\N	1034
822	\N	1052
\.


--
-- Data for Name: temp_category_products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_category_products (product_id, sku, product_name, base_price, is_active, quantity, delivery_type, role, format, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1430	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
1395	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	58
1340	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	39
605	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	55
1926	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
1509	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	73
1482	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	54
932	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
1801	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
946	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
788	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	23
2054	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
1677	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	69
146	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	79
87	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	49
811	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	25
349	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	25
1510	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
1838	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	83
111	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	60
1498	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
209	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	87
1750	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	68
487	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
272	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	42
432	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	30
292	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	94
870	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	92
1537	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
1147	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
1110	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
1504	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
180	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
1002	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	14
1106	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	16
1149	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
1883	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	3
154	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	27
760	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	79
385	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1038	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	72
297	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
1434	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
1613	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	33
1117	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	11
1751	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
283	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
643	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	13
1475	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	66
947	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
2080	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	58
1753	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	85
1804	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
15	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	33
78	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
1668	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	68
449	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	60
1105	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
1492	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
2056	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	42
375	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	30
896	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
424	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	85
512	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	3
1347	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	33
447	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	82
1066	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
1752	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	16
2084	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
1217	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
1735	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
232	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
2095	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	42
832	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	39
408	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
24	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	5
47	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	35
1231	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	70
548	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
1439	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1488	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	23
1293	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
1010	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	11
348	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	43
822	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	34
1045	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
371	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
1795	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	39
1718	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
799	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	30
742	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	66
1416	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	14
145	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
115	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	58
757	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
600	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
1212	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	48
389	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	43
436	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	35
754	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
523	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	28
1545	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
1714	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	83
583	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	46
670	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
1335	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1666	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
382	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	70
1113	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	85
789	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
1281	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	61
1903	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
2012	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	16
613	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	43
1131	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	78
1374	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	58
161	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
1450	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	91
2068	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	96
690	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	81
1151	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	68
772	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	14
1491	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	34
7	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
1184	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	28
1936	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
39	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	88
1845	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
665	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	88
1268	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	96
929	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	57
1635	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	70
1710	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
566	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
1653	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	17
340	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
498	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	93
1473	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	72
1249	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	87
51	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
392	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
851	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	79
1072	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	9
61	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	82
847	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
1645	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	63
409	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	94
843	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
1139	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	46
1617	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	54
1221	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	3
1621	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
729	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	22
1455	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
188	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
1042	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
1182	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	76
1906	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	11
429	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	27
876	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
1424	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
320	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	2
2016	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	61
2083	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
378	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
197	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	76
2029	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	17
1349	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
214	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
310	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	68
1765	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
988	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	64
1827	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
457	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
170	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	34
833	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	67
1919	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	84
1067	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
550	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
1611	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	29
648	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	22
2046	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	47
1794	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
663	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	55
1052	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	35
2017	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	47
367	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	13
2059	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	90
287	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
1393	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
33	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	23
1843	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
1269	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
439	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	11
532	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
1524	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	29
1973	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	30
36	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	84
1577	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	83
898	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	96
1362	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	5
1575	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	28
1773	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	36
2065	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
2026	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
994	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
1980	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	80
1177	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	25
1120	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	85
93	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	87
107	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	5
251	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
1493	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	25
1481	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	78
143	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	92
1914	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	14
826	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
1849	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	99
1822	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	3
1810	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	66
1294	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	69
627	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	90
1834	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	35
1289	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	2
1523	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	11
454	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
1559	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	5
412	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	66
255	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1299	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	15
52	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	82
450	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
167	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
595	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
666	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	75
761	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
1413	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
995	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	48
334	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
68	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
147	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	60
41	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
628	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	93
672	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	84
435	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	33
1998	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	66
794	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	19
1734	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
499	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	72
1327	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	21
518	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	16
780	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	55
802	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
842	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
839	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	90
734	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	9
1896	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
506	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	91
1144	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
23	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
1454	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	54
1516	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	89
549	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
878	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
593	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
1934	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
1777	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	57
489	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
741	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	42
127	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	24
187	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	73
434	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
887	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	76
156	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	43
1967	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	49
339	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	35
497	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
827	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	77
1529	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	20
70	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	70
606	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
645	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	32
1588	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	20
1167	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
984	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	91
1025	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	96
5	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
841	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	75
148	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	92
1366	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	27
559	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	32
668	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	49
1266	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	89
2067	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
2031	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
680	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	89
250	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
219	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
213	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
1788	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
234	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
538	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	88
267	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	73
1511	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	28
2062	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
1476	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
1925	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	34
1478	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
1309	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
2002	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
2036	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
534	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
1622	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
502	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1723	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
926	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	93
26	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	24
1584	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	67
916	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	76
1026	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	72
732	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	5
1451	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	68
1162	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
611	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	84
405	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	32
1601	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
1098	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
1089	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
711	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
1241	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	42
1634	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
345	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	89
688	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	83
1616	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
972	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	72
1300	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	83
1749	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	79
2005	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	57
289	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
397	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	93
402	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	43
441	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	21
608	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
1820	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	29
603	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	64
220	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
1997	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
579	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	6
490	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
179	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	71
85	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
351	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	2
1593	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
1024	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	19
1785	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	93
2077	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
2072	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	81
2088	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1429	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
849	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	55
982	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	63
1522	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	80
76	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	89
1277	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	19
646	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
1766	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	92
944	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	16
1250	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
1030	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	82
1487	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	64
1323	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
263	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
1214	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	9
1758	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
957	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	46
381	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	27
29	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
908	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	28
561	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	80
280	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	54
420	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	16
1426	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
749	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
1591	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	71
1571	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
230	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
153	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
1853	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	54
712	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
1229	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
2082	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
710	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	80
1329	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
2032	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	79
1776	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	55
515	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
1740	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	32
526	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	87
350	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	9
1175	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
1070	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	42
1253	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
2060	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	30
285	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	35
1736	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	82
1684	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	54
1940	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
535	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
1889	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	22
527	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
504	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
674	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	25
1895	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	76
472	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	90
1835	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	17
906	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	63
1833	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	21
1396	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	22
809	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	19
415	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	88
673	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	29
962	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	69
406	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	5
793	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
226	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	49
1420	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	48
465	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
1018	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
478	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	71
1091	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	48
2024	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	46
1965	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	94
462	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
175	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	30
416	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	61
1701	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
1862	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	60
312	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
1379	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	67
861	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	13
607	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	87
139	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	19
1332	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
1941	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	20
1626	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	78
1628	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	75
42	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	29
1815	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	17
1235	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
1373	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
1680	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
256	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	81
1888	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	58
1015	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	60
2023	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	14
103	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	85
1154	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	25
993	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
1884	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
558	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	99
1800	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1769	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	64
1480	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
1389	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	73
1284	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	78
1423	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	58
752	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	81
1790	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
1465	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
305	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	22
1667	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	60
1590	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	39
1567	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
975	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	49
1910	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
491	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	78
1589	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	89
956	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
1306	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	23
1169	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	22
750	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	57
268	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	40
2034	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[]	88
\.


--
-- Data for Name: temp_courier_shipments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_courier_shipments (custorder_id, shipment_id, carrier, tracking_no, shipped_at, delivered_at, courier_shipments_courierpartner_id) FROM stdin;
12	202	\N	\N	\N	\N	40
2	192	\N	\N	\N	\N	92
42	67	\N	\N	\N	\N	47
67	944	\N	\N	\N	\N	2
18	658	\N	\N	\N	\N	94
100	407	\N	\N	\N	\N	74
59	83	\N	\N	\N	\N	4
2	590	\N	\N	\N	\N	25
68	291	\N	\N	\N	\N	84
77	47	\N	\N	\N	\N	79
52	162	\N	\N	\N	\N	94
78	853	\N	\N	\N	\N	4
40	746	\N	\N	\N	\N	37
51	769	\N	\N	\N	\N	41
35	685	\N	\N	\N	\N	4
19	173	\N	\N	\N	\N	51
21	410	\N	\N	\N	\N	13
53	426	\N	\N	\N	\N	94
54	445	\N	\N	\N	\N	67
84	573	\N	\N	\N	\N	82
100	317	\N	\N	\N	\N	85
72	342	\N	\N	\N	\N	45
96	71	\N	\N	\N	\N	10
96	302	\N	\N	\N	\N	80
14	42	\N	\N	\N	\N	28
42	540	\N	\N	\N	\N	97
44	204	\N	\N	\N	\N	14
8	929	\N	\N	\N	\N	22
91	971	\N	\N	\N	\N	56
50	682	\N	\N	\N	\N	82
16	927	\N	\N	\N	\N	92
32	246	\N	\N	\N	\N	33
87	925	\N	\N	\N	\N	62
48	120	\N	\N	\N	\N	97
37	388	\N	\N	\N	\N	85
32	170	\N	\N	\N	\N	54
15	93	\N	\N	\N	\N	23
8	998	\N	\N	\N	\N	32
66	796	\N	\N	\N	\N	73
92	47	\N	\N	\N	\N	97
3	5	\N	\N	\N	\N	53
86	599	\N	\N	\N	\N	84
40	30	\N	\N	\N	\N	86
88	886	\N	\N	\N	\N	68
75	839	\N	\N	\N	\N	38
11	124	\N	\N	\N	\N	30
92	272	\N	\N	\N	\N	31
69	807	\N	\N	\N	\N	26
21	578	\N	\N	\N	\N	52
62	282	\N	\N	\N	\N	28
75	476	\N	\N	\N	\N	73
96	179	\N	\N	\N	\N	42
94	198	\N	\N	\N	\N	84
80	639	\N	\N	\N	\N	94
38	137	\N	\N	\N	\N	78
61	497	\N	\N	\N	\N	60
57	243	\N	\N	\N	\N	85
100	587	\N	\N	\N	\N	87
16	479	\N	\N	\N	\N	61
67	61	\N	\N	\N	\N	86
6	534	\N	\N	\N	\N	82
49	658	\N	\N	\N	\N	51
25	75	\N	\N	\N	\N	50
27	234	\N	\N	\N	\N	43
72	513	\N	\N	\N	\N	31
51	819	\N	\N	\N	\N	77
82	931	\N	\N	\N	\N	19
46	550	\N	\N	\N	\N	14
64	50	\N	\N	\N	\N	94
11	51	\N	\N	\N	\N	26
61	239	\N	\N	\N	\N	40
21	946	\N	\N	\N	\N	2
79	170	\N	\N	\N	\N	100
47	984	\N	\N	\N	\N	96
54	214	\N	\N	\N	\N	61
43	78	\N	\N	\N	\N	36
35	562	\N	\N	\N	\N	17
85	368	\N	\N	\N	\N	62
75	350	\N	\N	\N	\N	40
93	416	\N	\N	\N	\N	32
43	473	\N	\N	\N	\N	16
73	231	\N	\N	\N	\N	5
88	794	\N	\N	\N	\N	27
27	24	\N	\N	\N	\N	41
66	52	\N	\N	\N	\N	77
46	279	\N	\N	\N	\N	65
33	610	\N	\N	\N	\N	77
43	382	\N	\N	\N	\N	18
57	984	\N	\N	\N	\N	3
60	769	\N	\N	\N	\N	60
17	293	\N	\N	\N	\N	29
71	535	\N	\N	\N	\N	95
65	19	\N	\N	\N	\N	95
83	891	\N	\N	\N	\N	85
55	342	\N	\N	\N	\N	19
\.


--
-- Data for Name: temp_customer_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_customer_orders (custorder_id, placed_at, status, customer_orders_customer_id, payment_order_customer_id, payment_order_payment_method_id) FROM stdin;
1	\N	\N	394	\N	\N
71	\N	\N	163	\N	\N
66	\N	\N	364	\N	\N
54	\N	\N	224	\N	\N
30	\N	\N	391	\N	\N
8	\N	\N	283	\N	\N
14	\N	\N	226	\N	\N
89	\N	\N	204	\N	\N
43	\N	\N	228	\N	\N
55	\N	\N	270	\N	\N
7	\N	\N	299	\N	\N
69	\N	\N	377	\N	\N
83	\N	\N	338	\N	\N
82	\N	\N	203	\N	\N
41	\N	\N	261	\N	\N
21	\N	\N	123	\N	\N
32	\N	\N	191	\N	\N
79	\N	\N	351	\N	\N
74	\N	\N	265	\N	\N
90	\N	\N	184	\N	\N
35	\N	\N	256	\N	\N
24	\N	\N	363	\N	\N
75	\N	\N	305	\N	\N
13	\N	\N	160	\N	\N
27	\N	\N	179	\N	\N
15	\N	\N	201	\N	\N
19	\N	\N	250	\N	\N
60	\N	\N	348	\N	\N
86	\N	\N	154	\N	\N
16	\N	\N	316	\N	\N
29	\N	\N	123	\N	\N
58	\N	\N	293	\N	\N
61	\N	\N	150	\N	\N
53	\N	\N	371	\N	\N
9	\N	\N	360	\N	\N
2	\N	\N	116	\N	\N
44	\N	\N	249	\N	\N
47	\N	\N	313	\N	\N
12	\N	\N	174	\N	\N
98	\N	\N	201	\N	\N
51	\N	\N	312	\N	\N
78	\N	\N	167	\N	\N
57	\N	\N	188	\N	\N
25	\N	\N	389	\N	\N
10	\N	\N	338	\N	\N
62	\N	\N	314	\N	\N
95	\N	\N	299	\N	\N
17	\N	\N	259	\N	\N
85	\N	\N	396	\N	\N
77	\N	\N	299	\N	\N
3	\N	\N	360	\N	\N
26	\N	\N	298	\N	\N
67	\N	\N	374	\N	\N
64	\N	\N	356	\N	\N
56	\N	\N	265	\N	\N
50	\N	\N	396	\N	\N
81	\N	\N	111	\N	\N
28	\N	\N	260	\N	\N
39	\N	\N	190	\N	\N
91	\N	\N	298	\N	\N
52	\N	\N	292	\N	\N
6	\N	\N	204	\N	\N
100	\N	\N	360	\N	\N
5	\N	\N	187	\N	\N
37	\N	\N	170	\N	\N
48	\N	\N	273	\N	\N
45	\N	\N	293	\N	\N
93	\N	\N	352	\N	\N
72	\N	\N	128	\N	\N
96	\N	\N	236	\N	\N
34	\N	\N	213	\N	\N
\.


--
-- Data for Name: temp_order_coupons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_order_coupons (promotion_id, coupon_code, max_uses, per_user_limit, order_coupons_custorder_id) FROM stdin;
14	966	\N	\N	23
11	619	\N	\N	75
34	739	\N	\N	7
1	526	\N	\N	57
59	135	\N	\N	61
74	385	\N	\N	20
58	833	\N	\N	26
85	148	\N	\N	6
90	266	\N	\N	1
14	997	\N	\N	14
21	138	\N	\N	91
63	321	\N	\N	71
31	681	\N	\N	98
81	393	\N	\N	17
25	556	\N	\N	99
35	7	\N	\N	88
47	525	\N	\N	29
29	675	\N	\N	97
5	371	\N	\N	33
49	723	\N	\N	79
9	483	\N	\N	5
97	74	\N	\N	80
61	98	\N	\N	61
13	644	\N	\N	17
72	302	\N	\N	17
41	99	\N	\N	13
39	149	\N	\N	11
99	234	\N	\N	7
59	641	\N	\N	45
98	710	\N	\N	69
56	627	\N	\N	14
23	435	\N	\N	91
11	296	\N	\N	94
27	956	\N	\N	68
20	665	\N	\N	22
4	598	\N	\N	74
1	249	\N	\N	5
10	94	\N	\N	10
97	711	\N	\N	68
21	490	\N	\N	60
97	855	\N	\N	71
73	16	\N	\N	55
45	94	\N	\N	5
43	960	\N	\N	53
89	735	\N	\N	69
45	798	\N	\N	25
97	466	\N	\N	80
30	990	\N	\N	28
98	915	\N	\N	40
11	690	\N	\N	83
53	733	\N	\N	8
52	854	\N	\N	36
86	595	\N	\N	14
69	427	\N	\N	76
85	361	\N	\N	98
3	875	\N	\N	10
18	588	\N	\N	75
85	26	\N	\N	64
56	307	\N	\N	18
8	393	\N	\N	18
86	792	\N	\N	61
62	869	\N	\N	41
58	698	\N	\N	73
58	284	\N	\N	18
45	961	\N	\N	75
99	545	\N	\N	52
13	345	\N	\N	24
39	643	\N	\N	66
56	437	\N	\N	69
40	988	\N	\N	18
31	96	\N	\N	15
49	144	\N	\N	57
40	885	\N	\N	24
54	335	\N	\N	73
86	823	\N	\N	7
35	92	\N	\N	27
100	777	\N	\N	27
28	198	\N	\N	5
80	593	\N	\N	76
95	524	\N	\N	19
46	283	\N	\N	4
89	872	\N	\N	30
74	795	\N	\N	14
21	355	\N	\N	76
73	657	\N	\N	23
47	853	\N	\N	81
73	554	\N	\N	75
15	247	\N	\N	93
53	976	\N	\N	22
3	388	\N	\N	31
39	286	\N	\N	85
58	36	\N	\N	1
86	835	\N	\N	65
64	586	\N	\N	67
70	805	\N	\N	60
22	843	\N	\N	4
86	470	\N	\N	5
39	329	\N	\N	60
16	945	\N	\N	7
59	68	\N	\N	49
\.


--
-- Data for Name: temp_payment_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_payment_order (custorder_id, placed_at, status, customer_orders_customer_id, payment_order_customer_id, payment_order_payment_method_id) FROM stdin;
96	\N	\N	\N	272	478
37	\N	\N	\N	292	575
71	\N	\N	\N	191	187
52	\N	\N	\N	236	877
36	\N	\N	\N	321	203
95	\N	\N	\N	172	408
79	\N	\N	\N	133	286
19	\N	\N	\N	259	195
49	\N	\N	\N	360	872
66	\N	\N	\N	177	348
32	\N	\N	\N	311	794
81	\N	\N	\N	380	256
3	\N	\N	\N	128	979
22	\N	\N	\N	206	800
75	\N	\N	\N	295	770
80	\N	\N	\N	107	668
34	\N	\N	\N	186	886
35	\N	\N	\N	110	790
59	\N	\N	\N	311	880
40	\N	\N	\N	218	235
56	\N	\N	\N	206	496
93	\N	\N	\N	122	174
1	\N	\N	\N	218	235
28	\N	\N	\N	128	979
84	\N	\N	\N	361	271
25	\N	\N	\N	127	222
78	\N	\N	\N	243	793
65	\N	\N	\N	350	754
21	\N	\N	\N	234	159
8	\N	\N	\N	385	405
4	\N	\N	\N	317	809
39	\N	\N	\N	377	940
64	\N	\N	\N	392	397
24	\N	\N	\N	275	382
27	\N	\N	\N	187	675
87	\N	\N	\N	316	608
9	\N	\N	\N	317	809
94	\N	\N	\N	150	852
10	\N	\N	\N	259	195
12	\N	\N	\N	122	174
63	\N	\N	\N	257	146
85	\N	\N	\N	152	924
23	\N	\N	\N	227	758
91	\N	\N	\N	120	535
73	\N	\N	\N	321	262
58	\N	\N	\N	351	490
42	\N	\N	\N	172	408
13	\N	\N	\N	214	809
92	\N	\N	\N	248	774
70	\N	\N	\N	150	852
18	\N	\N	\N	236	155
57	\N	\N	\N	187	675
46	\N	\N	\N	242	40
89	\N	\N	\N	382	664
15	\N	\N	\N	118	573
68	\N	\N	\N	243	486
29	\N	\N	\N	272	478
86	\N	\N	\N	206	800
61	\N	\N	\N	256	878
74	\N	\N	\N	222	139
62	\N	\N	\N	202	571
38	\N	\N	\N	392	397
6	\N	\N	\N	236	155
14	\N	\N	\N	292	575
31	\N	\N	\N	263	86
2	\N	\N	\N	234	159
83	\N	\N	\N	126	377
100	\N	\N	\N	389	39
67	\N	\N	\N	349	266
90	\N	\N	\N	214	809
99	\N	\N	\N	120	535
60	\N	\N	\N	190	399
54	\N	\N	\N	122	174
55	\N	\N	\N	185	745
30	\N	\N	\N	398	231
76	\N	\N	\N	311	880
47	\N	\N	\N	112	718
44	\N	\N	\N	107	668
51	\N	\N	\N	379	126
53	\N	\N	\N	330	599
11	\N	\N	\N	272	478
69	\N	\N	\N	330	599
88	\N	\N	\N	389	39
82	\N	\N	\N	133	672
45	\N	\N	\N	349	266
26	\N	\N	\N	122	174
20	\N	\N	\N	380	256
72	\N	\N	\N	248	774
50	\N	\N	\N	185	745
33	\N	\N	\N	107	668
\.


--
-- Data for Name: temp_pricehistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_pricehistory (product_id, sku, product_name, base_price, is_active, quantity, delivery_type, role, format, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
338	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "484", "ends_at": "soldier", "price_id": "690", "starts_at": "nothing"}]	\N
1292	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "164", "ends_at": "too", "price_id": "660", "starts_at": "generation"}]	\N
56	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "197", "ends_at": "enjoy", "price_id": "760", "starts_at": "start"}]	\N
1632	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "399", "ends_at": "laugh", "price_id": "382", "starts_at": "according"}]	\N
568	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "799", "ends_at": "seem", "price_id": "826", "starts_at": "material"}]	\N
1439	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "74", "ends_at": "soon", "price_id": "785", "starts_at": "begin"}]	\N
1977	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "2", "ends_at": "pull", "price_id": "303", "starts_at": "again"}]	\N
1726	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "995", "ends_at": "walk", "price_id": "122", "starts_at": "among"}]	\N
303	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "127", "ends_at": "throw", "price_id": "485", "starts_at": "break"}]	\N
1871	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "228", "ends_at": "avoid", "price_id": "666", "starts_at": "little"}]	\N
1073	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "9", "ends_at": "ever", "price_id": "626", "starts_at": "practice"}]	\N
1477	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "592", "ends_at": "particularly", "price_id": "386", "starts_at": "nearly"}]	\N
687	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "651", "ends_at": "show", "price_id": "163", "starts_at": "improve"}]	\N
1030	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "260", "ends_at": "throw", "price_id": "648", "starts_at": "you"}]	\N
267	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "978", "ends_at": "state", "price_id": "620", "starts_at": "sure"}]	\N
113	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "102", "ends_at": "minute", "price_id": "140", "starts_at": "wall"}]	\N
1875	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "458", "ends_at": "book", "price_id": "767", "starts_at": "reason"}]	\N
1206	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "620", "ends_at": "measure", "price_id": "288", "starts_at": "glass"}]	\N
1161	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "460", "ends_at": "guy", "price_id": "172", "starts_at": "mother"}]	\N
2024	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "998", "ends_at": "throughout", "price_id": "200", "starts_at": "speech"}]	\N
117	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "72", "ends_at": "resource", "price_id": "656", "starts_at": "adult"}]	\N
1188	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "904", "ends_at": "military", "price_id": "720", "starts_at": "everything"}]	\N
1960	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "449", "ends_at": "eye", "price_id": "191", "starts_at": "base"}]	\N
411	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "50", "ends_at": "break", "price_id": "77", "starts_at": "generation"}]	\N
1032	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "858", "ends_at": "join", "price_id": "918", "starts_at": "position"}]	\N
985	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "195", "ends_at": "box", "price_id": "444", "starts_at": "yet"}]	\N
102	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "102", "ends_at": "section", "price_id": "540", "starts_at": "either"}]	\N
1513	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "938", "ends_at": "view", "price_id": "447", "starts_at": "decide"}]	\N
1475	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "705", "ends_at": "first", "price_id": "291", "starts_at": "you"}]	\N
1177	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "45", "ends_at": "woman", "price_id": "431", "starts_at": "street"}]	\N
635	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "335", "ends_at": "dinner", "price_id": "775", "starts_at": "drive"}]	\N
1229	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "509", "ends_at": "agent", "price_id": "387", "starts_at": "financial"}]	\N
1703	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "333", "ends_at": "certainly", "price_id": "89", "starts_at": "enjoy"}]	\N
980	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "86", "ends_at": "local", "price_id": "55", "starts_at": "teacher"}]	\N
436	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "841", "ends_at": "back", "price_id": "188", "starts_at": "surface"}]	\N
13	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "434", "ends_at": "society", "price_id": "347", "starts_at": "do"}]	\N
669	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "912", "ends_at": "lay", "price_id": "456", "starts_at": "success"}]	\N
897	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "750", "ends_at": "raise", "price_id": "921", "starts_at": "certainly"}]	\N
294	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "208", "ends_at": "send", "price_id": "261", "starts_at": "hope"}]	\N
1445	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "441", "ends_at": "interest", "price_id": "172", "starts_at": "system"}]	\N
1314	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "881", "ends_at": "now", "price_id": "757", "starts_at": "executive"}]	\N
1402	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "777", "ends_at": "people", "price_id": "398", "starts_at": "generation"}]	\N
804	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "482", "ends_at": "fund", "price_id": "716", "starts_at": "team"}]	\N
141	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "810", "ends_at": "product", "price_id": "335", "starts_at": "worker"}, {"price": "403", "ends_at": "subject", "price_id": "571", "starts_at": "there"}]	\N
1340	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "80", "ends_at": "after", "price_id": "57", "starts_at": "lay"}]	\N
1288	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "59", "ends_at": "authority", "price_id": "756", "starts_at": "ahead"}]	\N
374	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "220", "ends_at": "individual", "price_id": "444", "starts_at": "exist"}]	\N
301	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "38", "ends_at": "assume", "price_id": "988", "starts_at": "people"}]	\N
470	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "658", "ends_at": "society", "price_id": "316", "starts_at": "now"}]	\N
477	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "4", "ends_at": "service", "price_id": "638", "starts_at": "technology"}]	\N
606	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "694", "ends_at": "money", "price_id": "771", "starts_at": "success"}]	\N
995	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "162", "ends_at": "thousand", "price_id": "462", "starts_at": "test"}]	\N
403	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "896", "ends_at": "each", "price_id": "655", "starts_at": "business"}]	\N
692	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "880", "ends_at": "item", "price_id": "669", "starts_at": "table"}]	\N
1381	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "202", "ends_at": "Democrat", "price_id": "230", "starts_at": "forward"}]	\N
627	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "250", "ends_at": "begin", "price_id": "464", "starts_at": "protect"}]	\N
1939	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "664", "ends_at": "player", "price_id": "235", "starts_at": "focus"}]	\N
996	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "59", "ends_at": "list", "price_id": "376", "starts_at": "policy"}]	\N
1857	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "993", "ends_at": "miss", "price_id": "446", "starts_at": "reflect"}]	\N
644	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "932", "ends_at": "since", "price_id": "830", "starts_at": "team"}]	\N
1869	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "9", "ends_at": "Republican", "price_id": "765", "starts_at": "cut"}]	\N
1304	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "585", "ends_at": "figure", "price_id": "491", "starts_at": "red"}]	\N
149	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "221", "ends_at": "institution", "price_id": "997", "starts_at": "change"}]	\N
228	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "174", "ends_at": "offer", "price_id": "288", "starts_at": "sit"}]	\N
1411	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "299", "ends_at": "act", "price_id": "667", "starts_at": "kitchen"}]	\N
839	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "811", "ends_at": "region", "price_id": "7", "starts_at": "movie"}]	\N
856	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "738", "ends_at": "bad", "price_id": "134", "starts_at": "international"}]	\N
1069	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "651", "ends_at": "price", "price_id": "285", "starts_at": "deal"}]	\N
1876	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "794", "ends_at": "right", "price_id": "47", "starts_at": "sometimes"}]	\N
1661	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "394", "ends_at": "music", "price_id": "199", "starts_at": "when"}]	\N
706	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "471", "ends_at": "ahead", "price_id": "990", "starts_at": "name"}]	\N
698	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "700", "ends_at": "rich", "price_id": "158", "starts_at": "news"}]	\N
408	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "160", "ends_at": "majority", "price_id": "994", "starts_at": "before"}]	\N
975	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "964", "ends_at": "push", "price_id": "465", "starts_at": "operation"}]	\N
1106	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "886", "ends_at": "claim", "price_id": "929", "starts_at": "education"}]	\N
1012	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "884", "ends_at": "month", "price_id": "976", "starts_at": "its"}]	\N
1105	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "144", "ends_at": "game", "price_id": "581", "starts_at": "threat"}]	\N
1787	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "242", "ends_at": "live", "price_id": "590", "starts_at": "his"}]	\N
910	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "259", "ends_at": "father", "price_id": "371", "starts_at": "anyone"}]	\N
854	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "181", "ends_at": "live", "price_id": "50", "starts_at": "son"}]	\N
891	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "635", "ends_at": "simply", "price_id": "56", "starts_at": "effect"}]	\N
1378	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "308", "ends_at": "first", "price_id": "49", "starts_at": "consumer"}]	\N
978	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "7", "ends_at": "foreign", "price_id": "560", "starts_at": "amount"}]	\N
1114	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "469", "ends_at": "buy", "price_id": "956", "starts_at": "eye"}]	\N
630	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "14", "ends_at": "black", "price_id": "442", "starts_at": "international"}]	\N
904	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "82", "ends_at": "manage", "price_id": "185", "starts_at": "beyond"}]	\N
663	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "47", "ends_at": "eye", "price_id": "805", "starts_at": "company"}]	\N
1577	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "852", "ends_at": "paper", "price_id": "490", "starts_at": "fast"}]	\N
2044	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "278", "ends_at": "story", "price_id": "802", "starts_at": "police"}]	\N
276	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "865", "ends_at": "American", "price_id": "569", "starts_at": "space"}]	\N
816	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "521", "ends_at": "other", "price_id": "924", "starts_at": "yard"}]	\N
1217	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "319", "ends_at": "camera", "price_id": "229", "starts_at": "body"}]	\N
196	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "24", "ends_at": "individual", "price_id": "492", "starts_at": "employee"}]	\N
1716	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "592", "ends_at": "author", "price_id": "795", "starts_at": "she"}]	\N
273	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "207", "ends_at": "officer", "price_id": "449", "starts_at": "staff"}]	\N
111	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "152", "ends_at": "get", "price_id": "839", "starts_at": "owner"}]	\N
1128	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "180", "ends_at": "blood", "price_id": "828", "starts_at": "trade"}]	\N
472	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "848", "ends_at": "suddenly", "price_id": "326", "starts_at": "name"}]	\N
393	\N	\N	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "711", "ends_at": "or", "price_id": "512", "starts_at": "message"}]	\N
\.


--
-- Data for Name: temp_productimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_productimage (product_id, sku, product_name, base_price, is_active, quantity, delivery_type, role, format, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1839	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "husband", "alt_text": "score", "image_id": "406", "sort_order": "489"}]	[]	[]	\N
295	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "history", "alt_text": "particular", "image_id": "941", "sort_order": "955"}]	[]	[]	\N
344	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "ago", "alt_text": "factor", "image_id": "659", "sort_order": "221"}]	[]	[]	\N
978	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "site", "alt_text": "sign", "image_id": "827", "sort_order": "212"}, {"url": "style", "alt_text": "simply", "image_id": "831", "sort_order": "676"}]	[]	[]	\N
875	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "speak", "alt_text": "try", "image_id": "754", "sort_order": "843"}]	[]	[]	\N
557	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "though", "alt_text": "daughter", "image_id": "588", "sort_order": "868"}]	[]	[]	\N
1155	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "government", "alt_text": "company", "image_id": "499", "sort_order": "925"}]	[]	[]	\N
1808	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "amount", "alt_text": "us", "image_id": "258", "sort_order": "900"}]	[]	[]	\N
1774	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "already", "alt_text": "method", "image_id": "92", "sort_order": "843"}]	[]	[]	\N
361	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "probably", "alt_text": "already", "image_id": "796", "sort_order": "714"}]	[]	[]	\N
1236	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "approach", "alt_text": "learn", "image_id": "993", "sort_order": "729"}]	[]	[]	\N
1377	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "true", "alt_text": "most", "image_id": "99", "sort_order": "583"}]	[]	[]	\N
1725	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "vote", "alt_text": "too", "image_id": "985", "sort_order": "536"}]	[]	[]	\N
1906	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "series", "alt_text": "happy", "image_id": "330", "sort_order": "867"}]	[]	[]	\N
1861	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "specific", "alt_text": "near", "image_id": "159", "sort_order": "537"}]	[]	[]	\N
2081	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "try", "alt_text": "author", "image_id": "518", "sort_order": "234"}]	[]	[]	\N
1782	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "feel", "alt_text": "room", "image_id": "213", "sort_order": "568"}]	[]	[]	\N
1547	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "short", "alt_text": "above", "image_id": "132", "sort_order": "928"}]	[]	[]	\N
964	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "third", "alt_text": "foot", "image_id": "405", "sort_order": "997"}]	[]	[]	\N
1655	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "information", "alt_text": "no", "image_id": "38", "sort_order": "31"}]	[]	[]	\N
641	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "continue", "alt_text": "hand", "image_id": "417", "sort_order": "971"}]	[]	[]	\N
1404	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "pass", "alt_text": "establish", "image_id": "872", "sort_order": "44"}]	[]	[]	\N
55	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "party", "alt_text": "color", "image_id": "473", "sort_order": "593"}]	[]	[]	\N
2067	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "college", "alt_text": "even", "image_id": "652", "sort_order": "517"}]	[]	[]	\N
1713	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "reveal", "alt_text": "tax", "image_id": "557", "sort_order": "409"}]	[]	[]	\N
156	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "similar", "alt_text": "rather", "image_id": "694", "sort_order": "769"}]	[]	[]	\N
1554	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "create", "alt_text": "parent", "image_id": "260", "sort_order": "499"}]	[]	[]	\N
728	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "military", "alt_text": "player", "image_id": "21", "sort_order": "964"}]	[]	[]	\N
1013	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "change", "alt_text": "change", "image_id": "324", "sort_order": "67"}]	[]	[]	\N
1875	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "responsibility", "alt_text": "art", "image_id": "56", "sort_order": "63"}]	[]	[]	\N
1471	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "voice", "alt_text": "cultural", "image_id": "330", "sort_order": "892"}]	[]	[]	\N
385	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "specific", "alt_text": "sing", "image_id": "143", "sort_order": "439"}]	[]	[]	\N
1358	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "result", "alt_text": "of", "image_id": "892", "sort_order": "291"}]	[]	[]	\N
1596	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "realize", "alt_text": "save", "image_id": "5", "sort_order": "231"}]	[]	[]	\N
372	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "include", "alt_text": "you", "image_id": "272", "sort_order": "415"}]	[]	[]	\N
1732	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "southern", "alt_text": "drive", "image_id": "482", "sort_order": "416"}]	[]	[]	\N
298	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "avoid", "alt_text": "wrong", "image_id": "798", "sort_order": "609"}]	[]	[]	\N
210	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "sure", "alt_text": "morning", "image_id": "793", "sort_order": "271"}]	[]	[]	\N
570	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "edge", "alt_text": "face", "image_id": "478", "sort_order": "460"}]	[]	[]	\N
2064	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "claim", "alt_text": "party", "image_id": "949", "sort_order": "541"}]	[]	[]	\N
1945	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "open", "alt_text": "treatment", "image_id": "768", "sort_order": "815"}]	[]	[]	\N
393	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "close", "alt_text": "avoid", "image_id": "611", "sort_order": "375"}]	[]	[]	\N
1992	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "particular", "alt_text": "just", "image_id": "175", "sort_order": "973"}]	[]	[]	\N
1115	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "reflect", "alt_text": "describe", "image_id": "673", "sort_order": "580"}]	[]	[]	\N
2073	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "hot", "alt_text": "yes", "image_id": "566", "sort_order": "363"}]	[]	[]	\N
595	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "eat", "alt_text": "purpose", "image_id": "903", "sort_order": "221"}, {"url": "do", "alt_text": "collection", "image_id": "578", "sort_order": "194"}]	[]	[]	\N
855	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "impact", "alt_text": "serve", "image_id": "383", "sort_order": "745"}]	[]	[]	\N
665	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "author", "alt_text": "bar", "image_id": "667", "sort_order": "725"}]	[]	[]	\N
2038	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "part", "alt_text": "industry", "image_id": "67", "sort_order": "334"}]	[]	[]	\N
798	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "fall", "alt_text": "hair", "image_id": "94", "sort_order": "532"}]	[]	[]	\N
1897	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "himself", "alt_text": "hundred", "image_id": "235", "sort_order": "719"}]	[]	[]	\N
772	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "executive", "alt_text": "design", "image_id": "341", "sort_order": "133"}]	[]	[]	\N
1397	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "too", "alt_text": "none", "image_id": "360", "sort_order": "241"}]	[]	[]	\N
1296	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "easy", "alt_text": "full", "image_id": "252", "sort_order": "522"}]	[]	[]	\N
101	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "head", "alt_text": "some", "image_id": "595", "sort_order": "38"}]	[]	[]	\N
560	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "ask", "alt_text": "friend", "image_id": "267", "sort_order": "782"}]	[]	[]	\N
1648	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "over", "alt_text": "between", "image_id": "511", "sort_order": "120"}]	[]	[]	\N
293	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "prepare", "alt_text": "bring", "image_id": "688", "sort_order": "422"}]	[]	[]	\N
1647	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "guy", "alt_text": "usually", "image_id": "100", "sort_order": "859"}]	[]	[]	\N
453	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "music", "alt_text": "network", "image_id": "936", "sort_order": "353"}]	[]	[]	\N
299	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "policy", "alt_text": "event", "image_id": "377", "sort_order": "550"}]	[]	[]	\N
1283	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "feeling", "alt_text": "brother", "image_id": "206", "sort_order": "439"}]	[]	[]	\N
1468	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "how", "alt_text": "early", "image_id": "174", "sort_order": "581"}]	[]	[]	\N
1411	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "activity", "alt_text": "join", "image_id": "72", "sort_order": "576"}]	[]	[]	\N
2024	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "tend", "alt_text": "memory", "image_id": "289", "sort_order": "482"}, {"url": "ten", "alt_text": "perhaps", "image_id": "371", "sort_order": "257"}]	[]	[]	\N
1409	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "former", "alt_text": "some", "image_id": "207", "sort_order": "338"}]	[]	[]	\N
1476	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "majority", "alt_text": "include", "image_id": "848", "sort_order": "792"}]	[]	[]	\N
1412	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "billion", "alt_text": "somebody", "image_id": "175", "sort_order": "906"}]	[]	[]	\N
924	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "question", "alt_text": "forget", "image_id": "227", "sort_order": "762"}]	[]	[]	\N
1054	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "green", "alt_text": "under", "image_id": "341", "sort_order": "681"}]	[]	[]	\N
510	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "measure", "alt_text": "of", "image_id": "128", "sort_order": "143"}]	[]	[]	\N
324	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "moment", "alt_text": "more", "image_id": "135", "sort_order": "573"}]	[]	[]	\N
75	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "western", "alt_text": "smile", "image_id": "52", "sort_order": "392"}]	[]	[]	\N
976	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "between", "alt_text": "quality", "image_id": "133", "sort_order": "348"}]	[]	[]	\N
236	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "south", "alt_text": "recently", "image_id": "476", "sort_order": "99"}]	[]	[]	\N
565	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "once", "alt_text": "teacher", "image_id": "399", "sort_order": "150"}]	[]	[]	\N
1453	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "oil", "alt_text": "magazine", "image_id": "89", "sort_order": "765"}]	[]	[]	\N
947	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "break", "alt_text": "series", "image_id": "88", "sort_order": "522"}]	[]	[]	\N
1266	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "from", "alt_text": "bag", "image_id": "304", "sort_order": "155"}]	[]	[]	\N
1568	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "financial", "alt_text": "leg", "image_id": "998", "sort_order": "910"}]	[]	[]	\N
812	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "police", "alt_text": "event", "image_id": "593", "sort_order": "454"}]	[]	[]	\N
751	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "suffer", "alt_text": "white", "image_id": "522", "sort_order": "785"}]	[]	[]	\N
551	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "president", "alt_text": "both", "image_id": "935", "sort_order": "970"}]	[]	[]	\N
1192	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "cause", "alt_text": "industry", "image_id": "538", "sort_order": "791"}]	[]	[]	\N
1874	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "major", "alt_text": "front", "image_id": "961", "sort_order": "709"}]	[]	[]	\N
2000	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "after", "alt_text": "not", "image_id": "118", "sort_order": "995"}]	[]	[]	\N
1174	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "into", "alt_text": "choice", "image_id": "18", "sort_order": "601"}]	[]	[]	\N
601	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "seven", "alt_text": "nor", "image_id": "809", "sort_order": "701"}]	[]	[]	\N
828	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "every", "alt_text": "cut", "image_id": "313", "sort_order": "647"}]	[]	[]	\N
588	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "develop", "alt_text": "nor", "image_id": "427", "sort_order": "945"}]	[]	[]	\N
1107	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "each", "alt_text": "tough", "image_id": "837", "sort_order": "554"}]	[]	[]	\N
1272	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "system", "alt_text": "cause", "image_id": "737", "sort_order": "938"}]	[]	[]	\N
1121	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "easy", "alt_text": "exist", "image_id": "840", "sort_order": "48"}]	[]	[]	\N
1171	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "situation", "alt_text": "lay", "image_id": "178", "sort_order": "748"}]	[]	[]	\N
896	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "method", "alt_text": "fight", "image_id": "652", "sort_order": "369"}]	[]	[]	\N
698	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "unit", "alt_text": "wife", "image_id": "679", "sort_order": "728"}]	[]	[]	\N
1765	\N	\N	\N	\N	\N	\N	\N	\N	[{"url": "thus", "alt_text": "continue", "image_id": "114", "sort_order": "612"}]	[]	[]	\N
\.


--
-- Data for Name: temp_productvariant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_productvariant (product_id, sku, product_name, base_price, is_active, quantity, delivery_type, role, format, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1086	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "help", "variant_id": "222", "price_override": "1", "is_active_variant": "52"}]	[]	\N
1357	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "let", "variant_id": "176", "price_override": "432", "is_active_variant": "585"}]	[]	\N
1359	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "order", "variant_id": "998", "price_override": "145", "is_active_variant": "961"}]	[]	\N
521	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "such", "variant_id": "524", "price_override": "479", "is_active_variant": "504"}]	[]	\N
630	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "child", "variant_id": "972", "price_override": "842", "is_active_variant": "152"}, {"barcode": "throw", "variant_id": "582", "price_override": "652", "is_active_variant": "425"}]	[]	\N
42	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "couple", "variant_id": "910", "price_override": "262", "is_active_variant": "476"}]	[]	\N
1858	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "top", "variant_id": "602", "price_override": "347", "is_active_variant": "622"}]	[]	\N
2098	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "traditional", "variant_id": "427", "price_override": "242", "is_active_variant": "850"}]	[]	\N
1429	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "necessary", "variant_id": "478", "price_override": "491", "is_active_variant": "507"}]	[]	\N
527	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "same", "variant_id": "193", "price_override": "341", "is_active_variant": "197"}]	[]	\N
810	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "technology", "variant_id": "869", "price_override": "343", "is_active_variant": "478"}]	[]	\N
685	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "available", "variant_id": "783", "price_override": "873", "is_active_variant": "709"}]	[]	\N
1165	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "movement", "variant_id": "268", "price_override": "697", "is_active_variant": "561"}]	[]	\N
1396	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "wait", "variant_id": "459", "price_override": "736", "is_active_variant": "443"}, {"barcode": "capital", "variant_id": "614", "price_override": "630", "is_active_variant": "86"}]	[]	\N
925	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "drop", "variant_id": "796", "price_override": "177", "is_active_variant": "606"}]	[]	\N
663	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "shake", "variant_id": "523", "price_override": "584", "is_active_variant": "839"}, {"barcode": "range", "variant_id": "280", "price_override": "592", "is_active_variant": "366"}]	[]	\N
1782	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "their", "variant_id": "834", "price_override": "495", "is_active_variant": "759"}]	[]	\N
1721	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "project", "variant_id": "566", "price_override": "261", "is_active_variant": "927"}]	[]	\N
1637	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "run", "variant_id": "542", "price_override": "513", "is_active_variant": "386"}]	[]	\N
1203	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "visit", "variant_id": "535", "price_override": "863", "is_active_variant": "230"}]	[]	\N
1807	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "manager", "variant_id": "876", "price_override": "316", "is_active_variant": "284"}]	[]	\N
1506	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "up", "variant_id": "591", "price_override": "390", "is_active_variant": "268"}]	[]	\N
32	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "already", "variant_id": "170", "price_override": "968", "is_active_variant": "843"}]	[]	\N
1427	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "indeed", "variant_id": "564", "price_override": "688", "is_active_variant": "590"}]	[]	\N
1053	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "pattern", "variant_id": "554", "price_override": "896", "is_active_variant": "613"}]	[]	\N
735	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "program", "variant_id": "957", "price_override": "453", "is_active_variant": "489"}]	[]	\N
1892	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "whom", "variant_id": "326", "price_override": "77", "is_active_variant": "840"}]	[]	\N
386	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "early", "variant_id": "228", "price_override": "682", "is_active_variant": "934"}]	[]	\N
1000	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "evidence", "variant_id": "364", "price_override": "352", "is_active_variant": "554"}]	[]	\N
97	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "travel", "variant_id": "559", "price_override": "176", "is_active_variant": "921"}]	[]	\N
1080	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "because", "variant_id": "651", "price_override": "899", "is_active_variant": "780"}]	[]	\N
1185	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "successful", "variant_id": "601", "price_override": "210", "is_active_variant": "212"}]	[]	\N
1171	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "piece", "variant_id": "994", "price_override": "471", "is_active_variant": "421"}]	[]	\N
1556	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "already", "variant_id": "697", "price_override": "863", "is_active_variant": "30"}]	[]	\N
1794	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "ready", "variant_id": "840", "price_override": "184", "is_active_variant": "130"}]	[]	\N
1348	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "option", "variant_id": "917", "price_override": "429", "is_active_variant": "568"}]	[]	\N
295	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "guy", "variant_id": "178", "price_override": "522", "is_active_variant": "122"}]	[]	\N
911	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "black", "variant_id": "844", "price_override": "598", "is_active_variant": "101"}]	[]	\N
566	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "lose", "variant_id": "635", "price_override": "478", "is_active_variant": "183"}]	[]	\N
743	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "issue", "variant_id": "559", "price_override": "91", "is_active_variant": "144"}]	[]	\N
553	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "skill", "variant_id": "418", "price_override": "825", "is_active_variant": "833"}]	[]	\N
1639	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "teacher", "variant_id": "196", "price_override": "354", "is_active_variant": "862"}]	[]	\N
1997	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "if", "variant_id": "924", "price_override": "652", "is_active_variant": "790"}]	[]	\N
3	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "force", "variant_id": "805", "price_override": "475", "is_active_variant": "616"}]	[]	\N
23	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "cup", "variant_id": "479", "price_override": "647", "is_active_variant": "864"}]	[]	\N
1272	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "hand", "variant_id": "105", "price_override": "345", "is_active_variant": "349"}]	[]	\N
461	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "reflect", "variant_id": "468", "price_override": "581", "is_active_variant": "700"}]	[]	\N
1489	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "off", "variant_id": "288", "price_override": "404", "is_active_variant": "340"}]	[]	\N
479	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "kitchen", "variant_id": "310", "price_override": "141", "is_active_variant": "266"}]	[]	\N
582	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "until", "variant_id": "151", "price_override": "185", "is_active_variant": "192"}]	[]	\N
1467	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "report", "variant_id": "882", "price_override": "128", "is_active_variant": "946"}]	[]	\N
1214	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "school", "variant_id": "414", "price_override": "175", "is_active_variant": "732"}]	[]	\N
1696	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "treat", "variant_id": "355", "price_override": "636", "is_active_variant": "542"}]	[]	\N
926	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "card", "variant_id": "408", "price_override": "931", "is_active_variant": "118"}]	[]	\N
1458	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "arrive", "variant_id": "372", "price_override": "234", "is_active_variant": "14"}]	[]	\N
818	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "base", "variant_id": "218", "price_override": "705", "is_active_variant": "776"}]	[]	\N
1463	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "guy", "variant_id": "81", "price_override": "30", "is_active_variant": "584"}]	[]	\N
1404	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "organization", "variant_id": "363", "price_override": "396", "is_active_variant": "120"}]	[]	\N
968	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "ever", "variant_id": "629", "price_override": "769", "is_active_variant": "170"}]	[]	\N
389	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "effect", "variant_id": "215", "price_override": "477", "is_active_variant": "966"}]	[]	\N
1302	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "think", "variant_id": "543", "price_override": "186", "is_active_variant": "473"}]	[]	\N
1255	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "until", "variant_id": "496", "price_override": "231", "is_active_variant": "401"}]	[]	\N
578	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "baby", "variant_id": "13", "price_override": "127", "is_active_variant": "178"}]	[]	\N
407	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "article", "variant_id": "240", "price_override": "327", "is_active_variant": "324"}]	[]	\N
838	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "boy", "variant_id": "428", "price_override": "484", "is_active_variant": "143"}]	[]	\N
360	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "ago", "variant_id": "554", "price_override": "352", "is_active_variant": "508"}]	[]	\N
961	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "describe", "variant_id": "290", "price_override": "737", "is_active_variant": "298"}]	[]	\N
592	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "rule", "variant_id": "373", "price_override": "883", "is_active_variant": "507"}]	[]	\N
617	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "wall", "variant_id": "779", "price_override": "616", "is_active_variant": "807"}]	[]	\N
1352	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "mother", "variant_id": "238", "price_override": "52", "is_active_variant": "573"}]	[]	\N
1706	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "else", "variant_id": "185", "price_override": "835", "is_active_variant": "497"}, {"barcode": "inside", "variant_id": "563", "price_override": "71", "is_active_variant": "197"}]	[]	\N
906	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "forward", "variant_id": "190", "price_override": "910", "is_active_variant": "582"}]	[]	\N
523	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "we", "variant_id": "329", "price_override": "136", "is_active_variant": "518"}]	[]	\N
1007	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "way", "variant_id": "763", "price_override": "53", "is_active_variant": "201"}]	[]	\N
1089	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "task", "variant_id": "862", "price_override": "230", "is_active_variant": "844"}]	[]	\N
1017	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "cause", "variant_id": "894", "price_override": "674", "is_active_variant": "230"}]	[]	\N
1393	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "red", "variant_id": "256", "price_override": "736", "is_active_variant": "760"}]	[]	\N
1675	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "country", "variant_id": "932", "price_override": "530", "is_active_variant": "631"}]	[]	\N
1936	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "husband", "variant_id": "240", "price_override": "863", "is_active_variant": "738"}]	[]	\N
1012	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "heart", "variant_id": "388", "price_override": "601", "is_active_variant": "681"}]	[]	\N
916	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "lead", "variant_id": "946", "price_override": "678", "is_active_variant": "180"}]	[]	\N
1483	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "material", "variant_id": "394", "price_override": "516", "is_active_variant": "160"}]	[]	\N
873	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "six", "variant_id": "583", "price_override": "542", "is_active_variant": "131"}]	[]	\N
1189	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "travel", "variant_id": "680", "price_override": "906", "is_active_variant": "171"}]	[]	\N
284	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "team", "variant_id": "237", "price_override": "481", "is_active_variant": "68"}]	[]	\N
1526	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "gas", "variant_id": "920", "price_override": "61", "is_active_variant": "509"}]	[]	\N
913	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "because", "variant_id": "457", "price_override": "148", "is_active_variant": "518"}]	[]	\N
127	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "collection", "variant_id": "856", "price_override": "402", "is_active_variant": "115"}]	[]	\N
627	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "film", "variant_id": "169", "price_override": "903", "is_active_variant": "200"}]	[]	\N
1217	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "among", "variant_id": "274", "price_override": "640", "is_active_variant": "390"}]	[]	\N
1643	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "office", "variant_id": "44", "price_override": "38", "is_active_variant": "493"}]	[]	\N
2025	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "to", "variant_id": "991", "price_override": "657", "is_active_variant": "83"}]	[]	\N
1970	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "modern", "variant_id": "907", "price_override": "136", "is_active_variant": "886"}]	[]	\N
1983	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "garden", "variant_id": "218", "price_override": "866", "is_active_variant": "636"}]	[]	\N
575	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "until", "variant_id": "2", "price_override": "275", "is_active_variant": "767"}]	[]	\N
593	\N	\N	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "hear", "variant_id": "243", "price_override": "156", "is_active_variant": "735"}]	[]	\N
\.


--
-- Data for Name: temp_reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_reviews (customer_id, review_id, rating, title, body, created_at, reviews_product_id) FROM stdin;
391	714	\N	\N	\N	\N	127
244	484	\N	\N	\N	\N	1035
165	773	\N	\N	\N	\N	169
311	1000	\N	\N	\N	\N	923
366	740	\N	\N	\N	\N	42
325	241	\N	\N	\N	\N	1223
336	214	\N	\N	\N	\N	188
309	328	\N	\N	\N	\N	615
202	356	\N	\N	\N	\N	471
227	359	\N	\N	\N	\N	1082
105	452	\N	\N	\N	\N	30
230	759	\N	\N	\N	\N	1192
331	529	\N	\N	\N	\N	624
165	42	\N	\N	\N	\N	197
219	259	\N	\N	\N	\N	1333
274	449	\N	\N	\N	\N	1922
186	255	\N	\N	\N	\N	375
204	496	\N	\N	\N	\N	2080
127	699	\N	\N	\N	\N	1662
148	383	\N	\N	\N	\N	869
286	946	\N	\N	\N	\N	567
199	723	\N	\N	\N	\N	1485
289	477	\N	\N	\N	\N	1893
323	322	\N	\N	\N	\N	593
274	888	\N	\N	\N	\N	1054
377	587	\N	\N	\N	\N	771
223	471	\N	\N	\N	\N	9
373	449	\N	\N	\N	\N	1049
294	815	\N	\N	\N	\N	914
353	675	\N	\N	\N	\N	292
297	701	\N	\N	\N	\N	486
272	424	\N	\N	\N	\N	1488
335	248	\N	\N	\N	\N	288
322	870	\N	\N	\N	\N	428
103	49	\N	\N	\N	\N	683
193	235	\N	\N	\N	\N	1599
386	532	\N	\N	\N	\N	2059
225	529	\N	\N	\N	\N	2031
195	629	\N	\N	\N	\N	1791
245	7	\N	\N	\N	\N	1034
139	22	\N	\N	\N	\N	1300
392	42	\N	\N	\N	\N	636
353	881	\N	\N	\N	\N	1316
400	660	\N	\N	\N	\N	1823
269	533	\N	\N	\N	\N	977
140	929	\N	\N	\N	\N	1120
239	772	\N	\N	\N	\N	1845
\.


--
-- Data for Name: temp_supplier_pos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_supplier_pos (purchaseorder_id, created_at, status, supplier_pos_supplier_id) FROM stdin;
30	\N	\N	25
97	\N	\N	38
24	\N	\N	93
34	\N	\N	69
4	\N	\N	25
73	\N	\N	94
8	\N	\N	57
93	\N	\N	6
86	\N	\N	85
17	\N	\N	38
90	\N	\N	85
18	\N	\N	77
66	\N	\N	21
49	\N	\N	85
16	\N	\N	2
81	\N	\N	3
20	\N	\N	77
69	\N	\N	57
5	\N	\N	10
85	\N	\N	24
76	\N	\N	18
95	\N	\N	66
79	\N	\N	73
67	\N	\N	72
50	\N	\N	44
84	\N	\N	77
45	\N	\N	14
96	\N	\N	96
60	\N	\N	57
94	\N	\N	93
65	\N	\N	24
56	\N	\N	68
35	\N	\N	62
39	\N	\N	90
82	\N	\N	74
2	\N	\N	53
15	\N	\N	84
89	\N	\N	35
42	\N	\N	16
61	\N	\N	73
74	\N	\N	33
7	\N	\N	24
64	\N	\N	43
10	\N	\N	59
80	\N	\N	4
33	\N	\N	24
25	\N	\N	13
43	\N	\N	21
83	\N	\N	61
75	\N	\N	91
13	\N	\N	66
59	\N	\N	38
68	\N	\N	31
9	\N	\N	44
99	\N	\N	64
55	\N	\N	12
1	\N	\N	90
40	\N	\N	29
14	\N	\N	7
92	\N	\N	58
26	\N	\N	15
77	\N	\N	34
52	\N	\N	35
57	\N	\N	49
78	\N	\N	33
54	\N	\N	83
22	\N	\N	49
53	\N	\N	16
19	\N	\N	92
62	\N	\N	94
98	\N	\N	30
70	\N	\N	7
71	\N	\N	21
47	\N	\N	31
100	\N	\N	35
29	\N	\N	15
3	\N	\N	99
23	\N	\N	98
41	\N	\N	97
91	\N	\N	63
37	\N	\N	27
88	\N	\N	97
58	\N	\N	81
44	\N	\N	43
38	\N	\N	30
28	\N	\N	68
31	\N	\N	3
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
    ADD CONSTRAINT relation_12_pkey PRIMARY KEY (appliance_id);


--
-- Name: relation_13 relation_13_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_13
    ADD CONSTRAINT relation_13_pkey PRIMARY KEY (kitchenappliance_id);


--
-- Name: relation_14 relation_14_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_14
    ADD CONSTRAINT relation_14_pkey PRIMARY KEY (apparel_id);


--
-- Name: relation_15 relation_15_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_15
    ADD CONSTRAINT relation_15_pkey PRIMARY KEY (clothing_id);


--
-- Name: relation_16 relation_16_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_16
    ADD CONSTRAINT relation_16_pkey PRIMARY KEY (menclothing_id);


--
-- Name: relation_17 relation_17_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_17
    ADD CONSTRAINT relation_17_pkey PRIMARY KEY (footwear_id);


--
-- Name: relation_18 relation_18_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_18
    ADD CONSTRAINT relation_18_pkey PRIMARY KEY (software_id);


--
-- Name: relation_19 relation_19_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_19
    ADD CONSTRAINT relation_19_pkey PRIMARY KEY (user_id);


--
-- Name: relation_1 relation_1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_1
    ADD CONSTRAINT relation_1_pkey PRIMARY KEY (product_id);


--
-- Name: relation_20 relation_20_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_20
    ADD CONSTRAINT relation_20_pkey PRIMARY KEY (user_id, mv_user);


--
-- Name: relation_21 relation_21_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_21
    ADD CONSTRAINT relation_21_pkey PRIMARY KEY (customer_id);


--
-- Name: relation_22 relation_22_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_22
    ADD CONSTRAINT relation_22_pkey PRIMARY KEY (customer_id, contact_no);


--
-- Name: relation_23 relation_23_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_23
    ADD CONSTRAINT relation_23_pkey PRIMARY KEY (customer_id, subscription_addons);


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
    ADD CONSTRAINT relation_29_pkey PRIMARY KEY (categorymanager_id);


--
-- Name: relation_2 relation_2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_2
    ADD CONSTRAINT relation_2_pkey PRIMARY KEY (product_id, mv_attributes);


--
-- Name: relation_30 relation_30_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_30
    ADD CONSTRAINT relation_30_pkey PRIMARY KEY (tag_id);


--
-- Name: relation_31 relation_31_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_31
    ADD CONSTRAINT relation_31_pkey PRIMARY KEY (customer_id, address_id);


--
-- Name: relation_32 relation_32_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_32
    ADD CONSTRAINT relation_32_pkey PRIMARY KEY (customer_id, payment_method_id);


--
-- Name: relation_33 relation_33_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_33
    ADD CONSTRAINT relation_33_pkey PRIMARY KEY (customer_id);


--
-- Name: relation_34 relation_34_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_34
    ADD CONSTRAINT relation_34_pkey PRIMARY KEY (customer_id, wishlist_id);


--
-- Name: relation_35 relation_35_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_35
    ADD CONSTRAINT relation_35_pkey PRIMARY KEY (customer_id, review_id);


--
-- Name: relation_36 relation_36_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_36
    ADD CONSTRAINT relation_36_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_37 relation_37_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_37
    ADD CONSTRAINT relation_37_pkey PRIMARY KEY (custorder_id, shipment_id);


--
-- Name: relation_38 relation_38_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_38
    ADD CONSTRAINT relation_38_pkey PRIMARY KEY (promotion_id);


--
-- Name: relation_39 relation_39_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_39
    ADD CONSTRAINT relation_39_pkey PRIMARY KEY (promotion_id, coupon_code);


--
-- Name: relation_3 relation_3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_3
    ADD CONSTRAINT relation_3_pkey PRIMARY KEY (physicalproduct_id);


--
-- Name: relation_40 relation_40_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_40
    ADD CONSTRAINT relation_40_pkey PRIMARY KEY (warehouse_id);


--
-- Name: relation_41 relation_41_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_41
    ADD CONSTRAINT relation_41_pkey PRIMARY KEY (warehouse_id, bin_id);


--
-- Name: relation_42 relation_42_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_42
    ADD CONSTRAINT relation_42_pkey PRIMARY KEY (supplier_id);


--
-- Name: relation_43 relation_43_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_43
    ADD CONSTRAINT relation_43_pkey PRIMARY KEY (supplier_id, contact_id);


--
-- Name: relation_44 relation_44_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_44
    ADD CONSTRAINT relation_44_pkey PRIMARY KEY (purchaseorder_id);


--
-- Name: relation_45 relation_45_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_45
    ADD CONSTRAINT relation_45_pkey PRIMARY KEY (courierpartner_id);


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
    ADD CONSTRAINT relation_50_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_51 relation_51_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_51
    ADD CONSTRAINT relation_51_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_52 relation_52_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_52
    ADD CONSTRAINT relation_52_pkey PRIMARY KEY (product_id, warehouse_id, bin_id);


--
-- Name: relation_53 relation_53_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_53
    ADD CONSTRAINT relation_53_pkey PRIMARY KEY (supplier_id, product_id);


--
-- Name: relation_54 relation_54_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_54
    ADD CONSTRAINT relation_54_pkey PRIMARY KEY (purchaseorder_id, product_id);


--
-- Name: relation_55 relation_55_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_55
    ADD CONSTRAINT relation_55_pkey PRIMARY KEY (phone_id, bundle_phone_phone_id);


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
    ADD CONSTRAINT relation_7_pkey PRIMARY KEY (laptop_id);


--
-- Name: relation_8 relation_8_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_8
    ADD CONSTRAINT relation_8_pkey PRIMARY KEY (tablet_id);


--
-- Name: relation_9 relation_9_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_9
    ADD CONSTRAINT relation_9_pkey PRIMARY KEY (smartwatch_id);


--
-- Name: temp_browsingsession temp_browsingsession_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_browsingsession
    ADD CONSTRAINT temp_browsingsession_pkey PRIMARY KEY (user_id);


--
-- Name: temp_bundled_phone temp_bundled_phone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_bundled_phone
    ADD CONSTRAINT temp_bundled_phone_pkey PRIMARY KEY (phone_id);


--
-- Name: temp_bundled_phone_smart_watch temp_bundled_phone_smart_watch_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_bundled_phone_smart_watch
    ADD CONSTRAINT temp_bundled_phone_smart_watch_pkey PRIMARY KEY (smartwatch_id);


--
-- Name: temp_category_products temp_category_products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_category_products
    ADD CONSTRAINT temp_category_products_pkey PRIMARY KEY (product_id);


--
-- Name: temp_courier_shipments temp_courier_shipments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_courier_shipments
    ADD CONSTRAINT temp_courier_shipments_pkey PRIMARY KEY (custorder_id, shipment_id);


--
-- Name: temp_customer_orders temp_customer_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_customer_orders
    ADD CONSTRAINT temp_customer_orders_pkey PRIMARY KEY (custorder_id);


--
-- Name: temp_order_coupons temp_order_coupons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_order_coupons
    ADD CONSTRAINT temp_order_coupons_pkey PRIMARY KEY (promotion_id, coupon_code);


--
-- Name: temp_payment_order temp_payment_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_payment_order
    ADD CONSTRAINT temp_payment_order_pkey PRIMARY KEY (custorder_id);


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
-- Name: temp_reviews temp_reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_reviews
    ADD CONSTRAINT temp_reviews_pkey PRIMARY KEY (customer_id, review_id);


--
-- Name: temp_supplier_pos temp_supplier_pos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_supplier_pos
    ADD CONSTRAINT temp_supplier_pos_pkey PRIMARY KEY (purchaseorder_id);


--
-- Name: idx_temp_browsingsession; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_browsingsession ON public.temp_browsingsession USING btree (user_id);


--
-- Name: idx_temp_bundled_phone; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_bundled_phone ON public.temp_bundled_phone USING btree (phone_id);


--
-- Name: idx_temp_bundled_phone_smart_watch; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_bundled_phone_smart_watch ON public.temp_bundled_phone_smart_watch USING btree (smartwatch_id);


--
-- Name: idx_temp_category_products; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_category_products ON public.temp_category_products USING btree (product_id);


--
-- Name: idx_temp_courier_shipments; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_courier_shipments ON public.temp_courier_shipments USING btree (custorder_id, shipment_id);


--
-- Name: idx_temp_customer_orders; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_customer_orders ON public.temp_customer_orders USING btree (custorder_id);


--
-- Name: idx_temp_order_coupons; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_order_coupons ON public.temp_order_coupons USING btree (promotion_id, coupon_code);


--
-- Name: idx_temp_payment_order; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_payment_order ON public.temp_payment_order USING btree (custorder_id);


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
-- Name: idx_temp_reviews; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_reviews ON public.temp_reviews USING btree (customer_id, review_id);


--
-- Name: idx_temp_supplier_pos; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_supplier_pos ON public.temp_supplier_pos USING btree (purchaseorder_id);


--
-- PostgreSQL database dump complete
--

