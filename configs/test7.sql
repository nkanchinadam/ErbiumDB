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
    mv_attributes character varying(255)[],
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
    appliance_id integer NOT NULL,
    energy_rating character varying(255)
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
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    energy_rating character varying(255),
    warranty_years integer,
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
    clothing_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    size_system character varying(255),
    material character varying(255),
    fit_type_men character varying(255),
    role character varying(255),
    fit_type_women character varying(255),
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
);


ALTER TABLE public.relation_13 OWNER TO postgres;

--
-- Name: relation_14; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_14 (
    media_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    delivery_type character varying(255),
    format character varying(255),
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
    user_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    loyalty_tier character varying(255),
    contact_no character varying(255)[],
    role character varying(255),
    employee_no character varying(255),
    shift character varying(255),
    browsingsession jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_15 OWNER TO postgres;

--
-- Name: relation_16; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_16 (
    primecustomer_id integer NOT NULL,
    renewal_date character varying(255),
    subscription_addons character varying(255)[]
);


ALTER TABLE public.relation_16 OWNER TO postgres;

--
-- Name: relation_17; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_17 (
    businesscustomer_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    loyalty_tier character varying(255),
    contact_no character varying(255)[],
    company_name character varying(255),
    browsingsession jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_17 OWNER TO postgres;

--
-- Name: relation_18; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_18 (
    corporateemployee_id integer NOT NULL,
    office_site character varying(255),
    level character varying(255),
    role character varying(255)
);


ALTER TABLE public.relation_18 OWNER TO postgres;

--
-- Name: relation_19; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_19 (
    supportagent_id integer NOT NULL,
    queue character varying(255)
);


ALTER TABLE public.relation_19 OWNER TO postgres;

--
-- Name: relation_2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_2 (
    physicalproduct_id integer NOT NULL,
    dimensions character varying(255),
    size_system character varying(255),
    role character varying(255),
    sole_material character varying(255)
);


ALTER TABLE public.relation_2 OWNER TO postgres;

--
-- Name: relation_20; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_20 (
    categorymanager_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    employee_no character varying(255),
    department character varying(255),
    browsingsession jsonb DEFAULT '[]'::jsonb
);


ALTER TABLE public.relation_20 OWNER TO postgres;

--
-- Name: relation_21; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_21 (
    tag_id integer NOT NULL,
    tag_name character varying(255)
);


ALTER TABLE public.relation_21 OWNER TO postgres;

--
-- Name: relation_22; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_22 (
    user_id integer NOT NULL,
    address_id integer NOT NULL,
    kind character varying(255),
    line1 character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    postal_code character varying(255)
);


ALTER TABLE public.relation_22 OWNER TO postgres;

--
-- Name: relation_23; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_23 (
    user_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    brand character varying(255),
    last4 character varying(255),
    exp_month integer,
    exp_year integer,
    is_default character varying(255)
);


ALTER TABLE public.relation_23 OWNER TO postgres;

--
-- Name: relation_24; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_24 (
    user_id integer NOT NULL,
    updated_at character varying(255)
);


ALTER TABLE public.relation_24 OWNER TO postgres;

--
-- Name: relation_25; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_25 (
    user_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    wishlist_name character varying(255)
);


ALTER TABLE public.relation_25 OWNER TO postgres;

--
-- Name: relation_26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_26 (
    user_id integer NOT NULL,
    review_id integer NOT NULL,
    rating integer,
    title character varying(255),
    body character varying(255),
    created_at character varying(255),
    reviews_product_id integer
);


ALTER TABLE public.relation_26 OWNER TO postgres;

--
-- Name: relation_27; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_27 (
    custorder_id integer NOT NULL,
    placed_at character varying(255),
    status character varying(255),
    customer_orders_customer_id integer,
    payment_order_customer_id integer,
    payment_order_payment_method_id integer
);


ALTER TABLE public.relation_27 OWNER TO postgres;

--
-- Name: relation_28; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_28 (
    custorder_id integer NOT NULL,
    shipment_id integer NOT NULL,
    carrier character varying(255),
    tracking_no character varying(255),
    shipped_at character varying(255),
    delivered_at character varying(255),
    courier_shipments_courierpartner_id integer
);


ALTER TABLE public.relation_28 OWNER TO postgres;

--
-- Name: relation_29; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_29 (
    promotion_id integer NOT NULL,
    promo_name character varying(255),
    starts_at character varying(255),
    ends_at character varying(255),
    discount_type character varying(255),
    discount_value character varying(255)
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
    mv_attributes character varying(255)[],
    delivery_type character varying(255),
    license_type character varying(255),
    role character varying(255),
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
    promotion_id integer NOT NULL,
    coupon_code integer NOT NULL,
    max_uses integer,
    per_user_limit integer,
    order_coupons_custorder_id integer
);


ALTER TABLE public.relation_30 OWNER TO postgres;

--
-- Name: relation_31; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_31 (
    warehouse_id integer NOT NULL,
    warehouse_name character varying(255),
    region character varying(255)
);


ALTER TABLE public.relation_31 OWNER TO postgres;

--
-- Name: relation_32; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_32 (
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL,
    code character varying(255)
);


ALTER TABLE public.relation_32 OWNER TO postgres;

--
-- Name: relation_33; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_33 (
    supplier_id integer NOT NULL,
    supplier_name character varying(255)
);


ALTER TABLE public.relation_33 OWNER TO postgres;

--
-- Name: relation_34; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_34 (
    supplier_id integer NOT NULL,
    contact_id integer NOT NULL,
    email character varying(255),
    phone character varying(255)
);


ALTER TABLE public.relation_34 OWNER TO postgres;

--
-- Name: relation_35; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_35 (
    purchaseorder_id integer NOT NULL,
    created_at character varying(255),
    status character varying(255),
    supplier_pos_supplier_id integer
);


ALTER TABLE public.relation_35 OWNER TO postgres;

--
-- Name: relation_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_36 (
    courierpartner_id integer NOT NULL,
    carrier_code character varying(255),
    webhook_url character varying(255)
);


ALTER TABLE public.relation_36 OWNER TO postgres;

--
-- Name: relation_37; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_37 (
    product_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.relation_37 OWNER TO postgres;

--
-- Name: relation_38; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_38 (
    product_id integer NOT NULL,
    bought_together_product_product_id integer NOT NULL
);


ALTER TABLE public.relation_38 OWNER TO postgres;

--
-- Name: relation_39; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_39 (
    customer_id integer NOT NULL,
    product_id integer NOT NULL
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
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    warranty_months integer,
    accessory_type character varying(255),
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
    customer_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_40 OWNER TO postgres;

--
-- Name: relation_41; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_41 (
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_41 OWNER TO postgres;

--
-- Name: relation_42; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_42 (
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_42 OWNER TO postgres;

--
-- Name: relation_43; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_43 (
    product_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL
);


ALTER TABLE public.relation_43 OWNER TO postgres;

--
-- Name: relation_44; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_44 (
    supplier_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_44 OWNER TO postgres;

--
-- Name: relation_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_45 (
    purchaseorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_45 OWNER TO postgres;

--
-- Name: relation_46; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_46 (
    phone_id integer NOT NULL,
    bundle_phone_phone_id integer NOT NULL
);


ALTER TABLE public.relation_46 OWNER TO postgres;

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
-- Name: relation_6; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_6 (
    laptop_id integer NOT NULL,
    battery_wh integer
);


ALTER TABLE public.relation_6 OWNER TO postgres;

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
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    warranty_months integer,
    screen_size_in integer,
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
);


ALTER TABLE public.relation_7 OWNER TO postgres;

--
-- Name: relation_8; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_8 (
    smartwatch_id integer NOT NULL,
    band_size character varying(255),
    bundled_phone_smart_watch_phone_id integer
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
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    warranty_months integer,
    sensor_mp integer,
    productimage jsonb DEFAULT '[]'::jsonb,
    productvariant jsonb DEFAULT '[]'::jsonb,
    pricehistory jsonb DEFAULT '[]'::jsonb,
    category_products_category_id integer
);


ALTER TABLE public.relation_9 OWNER TO postgres;

--
-- Name: temp_browsingsession; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_browsingsession (
    user_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    loyalty_tier character varying(255),
    contact_no character varying(255)[],
    role character varying(255),
    employee_no character varying(255),
    shift character varying(255),
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
    mv_attributes character varying(255)[],
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
    mv_attributes character varying(255)[],
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
    mv_attributes character varying(255)[],
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
    mv_attributes character varying(255)[],
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
    user_id integer NOT NULL,
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
2	tables	[["relation_0", [["category_id", "INTEGER", "category_id", "category"], ["category_name", "VARCHAR(255)", "category.category_name", "category"], ["parent", "INTEGER", "category.parent", "category"]], false, ["category_id"]], ["relation_1", [["product_id", "INTEGER", "product_id", "product"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["product_id"]], ["relation_2", [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["role", "VARCHAR(255)", "role", "apparel"], ["sole_material", "VARCHAR(255)", "footwear.sole_material", "footwear"]], false, ["physicalproduct_id"]], ["relation_3", [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["delivery_type", "VARCHAR(255)", "digitalproduct.delivery_type", "digitalproduct"], ["license_type", "VARCHAR(255)", "software.license_type", "software"], ["role", "VARCHAR(255)", "role", "software"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["digitalproduct_id"]], ["relation_4", [["electronics_id", "INTEGER", "electronics_id", "electronics"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["accessory_type", "VARCHAR(255)", "accessories.accessory_type", "accessories"], ["role", "VARCHAR(255)", "role", "accessories"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["electronics_id"]], ["relation_5", [["computer_id", "INTEGER", "computer_id", "computer"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["form_factor", "VARCHAR(255)", "desktop.form_factor", "desktop"], ["role", "VARCHAR(255)", "role", "desktop"]], false, ["computer_id"]], ["relation_6", [["laptop_id", "INTEGER", "laptop_id", "laptop"], ["battery_wh", "INTEGER", "laptop.battery_wh", "laptop"]], false, ["laptop_id"]], ["relation_7", [["tablet_id", "INTEGER", "tablet_id", "tablet"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["screen_size_in", "INTEGER", "tablet.screen_size_in", "tablet"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["tablet_id"]], ["relation_8", [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch"], ["band_size", "VARCHAR(255)", "smartwatch.band_size", "smartwatch"], ["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch"]], true, ["smartwatch_id"]], ["relation_9", [["camera_id", "INTEGER", "camera_id", "camera"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["sensor_mp", "INTEGER", "camera.sensor_mp", "camera"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["camera_id"]], ["relation_10", [["phone_id", "INTEGER", "phone_id", "phone"], ["carrier_lock", "VARCHAR(255)", "phone.carrier_lock", "phone"], ["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "bundled_phone"]], true, ["phone_id"]], ["relation_11", [["appliance_id", "INTEGER", "appliance_id", "appliance"], ["energy_rating", "VARCHAR(255)", "appliance.energy_rating", "appliance"]], false, ["appliance_id"]], ["relation_12", [["kitchenappliance_id", "INTEGER", "kitchenappliance_id", "kitchenappliance"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["energy_rating", "VARCHAR(255)", "appliance.energy_rating", "appliance"], ["warranty_years", "INTEGER", "kitchenappliance.warranty_years", "kitchenappliance"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["kitchenappliance_id"]], ["relation_13", [["clothing_id", "INTEGER", "clothing_id", "clothing"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["material", "VARCHAR(255)", "clothing.material", "clothing"], ["fit_type_men", "VARCHAR(255)", "menclothing.fit_type_men", "menclothing"], ["role", "VARCHAR(255)", "role", "menclothing"], ["fit_type_women", "VARCHAR(255)", "womenclothing.fit_type_women", "womenclothing"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["clothing_id"]], ["relation_14", [["media_id", "INTEGER", "media_id", "media"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["delivery_type", "VARCHAR(255)", "digitalproduct.delivery_type", "digitalproduct"], ["format", "VARCHAR(255)", "media.format", "media"], ["productimage", "JSONB DEFAULT '[]'::jsonb", "productimage", "productimage"], ["productvariant", "JSONB DEFAULT '[]'::jsonb", "productvariant", "productvariant"], ["pricehistory", "JSONB DEFAULT '[]'::jsonb", "pricehistory", "pricehistory"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["media_id"]], ["relation_15", [["user_id", "INTEGER", "user_id", "user"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["contact_no", "VARCHAR(255)[]", "customer.contact_no", "customer"], ["role", "VARCHAR(255)", "role", "customer"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["shift", "VARCHAR(255)", "fulfillmentassociate.shift", "fulfillmentassociate"], ["browsingsession", "JSONB DEFAULT '[]'::jsonb", "browsingsession", "browsingsession"]], false, ["user_id"]], ["relation_16", [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer"], ["renewal_date", "VARCHAR(255)", "primecustomer.renewal_date", "primecustomer"], ["subscription_addons", "VARCHAR(255)[]", "primecustomer.subscription_addons", "primecustomer"]], false, ["primecustomer_id"]], ["relation_17", [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["contact_no", "VARCHAR(255)[]", "customer.contact_no", "customer"], ["company_name", "VARCHAR(255)", "businesscustomer.company_name", "businesscustomer"], ["browsingsession", "JSONB DEFAULT '[]'::jsonb", "browsingsession", "browsingsession"]], false, ["businesscustomer_id"]], ["relation_18", [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee"], ["office_site", "VARCHAR(255)", "corporateemployee.office_site", "corporateemployee"], ["level", "VARCHAR(255)", "engineer.level", "engineer"], ["role", "VARCHAR(255)", "role", "engineer"]], false, ["corporateemployee_id"]], ["relation_19", [["supportagent_id", "INTEGER", "supportagent_id", "supportagent"], ["queue", "VARCHAR(255)", "supportagent.queue", "supportagent"]], false, ["supportagent_id"]], ["relation_20", [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["department", "VARCHAR(255)", "categorymanager.department", "categorymanager"], ["browsingsession", "JSONB DEFAULT '[]'::jsonb", "browsingsession", "browsingsession"]], false, ["categorymanager_id"]], ["relation_21", [["tag_id", "INTEGER", "tag_id", "tag"], ["tag_name", "VARCHAR(255)", "tag.tag_name", "tag"]], false, ["tag_id"]], ["relation_22", [["user_id", "INTEGER", "user_id", "address"], ["address_id", "INTEGER", "address.address_id", "address"], ["kind", "VARCHAR(255)", "address.kind", "address"], ["line1", "VARCHAR(255)", "address.line1", "address"], ["city", "VARCHAR(255)", "address.city", "address"], ["state", "VARCHAR(255)", "address.state", "address"], ["country", "VARCHAR(255)", "address.country", "address"], ["postal_code", "VARCHAR(255)", "address.postal_code", "address"]], false, ["user_id", "address_id"]], ["relation_23", [["user_id", "INTEGER", "user_id", "paymentmethod"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "paymentmethod"], ["brand", "VARCHAR(255)", "paymentmethod.brand", "paymentmethod"], ["last4", "VARCHAR(255)", "paymentmethod.last4", "paymentmethod"], ["exp_month", "INTEGER", "paymentmethod.exp_month", "paymentmethod"], ["exp_year", "INTEGER", "paymentmethod.exp_year", "paymentmethod"], ["is_default", "VARCHAR(255)", "paymentmethod.is_default", "paymentmethod"]], false, ["user_id", "payment_method_id"]], ["relation_24", [["user_id", "INTEGER", "user_id", "cart"], ["updated_at", "VARCHAR(255)", "cart.updated_at", "cart"]], false, ["user_id"]], ["relation_25", [["user_id", "INTEGER", "user_id", "wishlist"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist"], ["wishlist_name", "VARCHAR(255)", "wishlist.wishlist_name", "wishlist"]], false, ["user_id", "wishlist_id"]], ["relation_26", [["user_id", "INTEGER", "user_id", "review"], ["review_id", "INTEGER", "review.review_id", "review"], ["rating", "INTEGER", "review.rating", "review"], ["title", "VARCHAR(255)", "review.title", "review"], ["body", "VARCHAR(255)", "review.body", "review"], ["created_at", "VARCHAR(255)", "review.created_at", "review"], ["reviews_product_id", "INTEGER", "product_id", "reviews"]], true, ["user_id", "review_id"]], ["relation_27", [["custorder_id", "INTEGER", "custorder_id", "custorder"], ["placed_at", "VARCHAR(255)", "custorder.placed_at", "custorder"], ["status", "VARCHAR(255)", "custorder.status", "custorder"], ["customer_orders_customer_id", "INTEGER", "user_id", "customer_orders"], ["payment_order_customer_id", "INTEGER", "user_id", "payment_order"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order"]], true, ["custorder_id"]], ["relation_28", [["custorder_id", "INTEGER", "custorder_id", "shipment"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment"], ["carrier", "VARCHAR(255)", "shipment.carrier", "shipment"], ["tracking_no", "VARCHAR(255)", "shipment.tracking_no", "shipment"], ["shipped_at", "VARCHAR(255)", "shipment.shipped_at", "shipment"], ["delivered_at", "VARCHAR(255)", "shipment.delivered_at", "shipment"], ["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments"]], true, ["custorder_id", "shipment_id"]], ["relation_29", [["promotion_id", "INTEGER", "promotion_id", "promotion"], ["promo_name", "VARCHAR(255)", "promotion.promo_name", "promotion"], ["starts_at", "VARCHAR(255)", "promotion.starts_at", "promotion"], ["ends_at", "VARCHAR(255)", "promotion.ends_at", "promotion"], ["discount_type", "VARCHAR(255)", "promotion.discount_type", "promotion"], ["discount_value", "VARCHAR(255)", "promotion.discount_value", "promotion"]], false, ["promotion_id"]], ["relation_30", [["promotion_id", "INTEGER", "promotion_id", "coupon"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon"], ["max_uses", "INTEGER", "coupon.max_uses", "coupon"], ["per_user_limit", "INTEGER", "coupon.per_user_limit", "coupon"], ["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons"]], true, ["promotion_id", "coupon_code"]], ["relation_31", [["warehouse_id", "INTEGER", "warehouse_id", "warehouse"], ["warehouse_name", "VARCHAR(255)", "warehouse.warehouse_name", "warehouse"], ["region", "VARCHAR(255)", "warehouse.region", "warehouse"]], false, ["warehouse_id"]], ["relation_32", [["warehouse_id", "INTEGER", "warehouse_id", "warehousebin"], ["bin_id", "INTEGER", "warehousebin.bin_id", "warehousebin"], ["code", "VARCHAR(255)", "warehousebin.code", "warehousebin"]], false, ["warehouse_id", "bin_id"]], ["relation_33", [["supplier_id", "INTEGER", "supplier_id", "supplier"], ["supplier_name", "VARCHAR(255)", "supplier.supplier_name", "supplier"]], false, ["supplier_id"]], ["relation_34", [["supplier_id", "INTEGER", "supplier_id", "suppliercontact"], ["contact_id", "INTEGER", "suppliercontact.contact_id", "suppliercontact"], ["email", "VARCHAR(255)", "suppliercontact.email", "suppliercontact"], ["phone", "VARCHAR(255)", "suppliercontact.phone", "suppliercontact"]], false, ["supplier_id", "contact_id"]], ["relation_35", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder"], ["created_at", "VARCHAR(255)", "purchaseorder.created_at", "purchaseorder"], ["status", "VARCHAR(255)", "purchaseorder.status", "purchaseorder"], ["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos"]], true, ["purchaseorder_id"]], ["relation_36", [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner"], ["carrier_code", "VARCHAR(255)", "courierpartner.carrier_code", "courierpartner"], ["webhook_url", "VARCHAR(255)", "courierpartner.webhook_url", "courierpartner"]], false, ["courierpartner_id"]], ["relation_37", [["product_id", "INTEGER", "product_id", "product_tags"], ["tag_id", "INTEGER", "tag_id", "product_tags"]], false, ["product_id", "tag_id"]], ["relation_38", [["product_id", "INTEGER", "product_id", "bought_together"], ["bought_together_product_product_id", "INTEGER", "product_id", "bought_together"]], false, ["product_id", "bought_together_product_product_id"]], ["relation_39", [["customer_id", "INTEGER", "user_id", "cart_contains"], ["product_id", "INTEGER", "product_id", "cart_contains"]], false, ["customer_id", "product_id"]], ["relation_40", [["customer_id", "INTEGER", "user_id", "wishlist_contains"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_contains"], ["product_id", "INTEGER", "product_id", "wishlist_contains"]], false, ["customer_id", "wishlist_id", "product_id"]], ["relation_41", [["custorder_id", "INTEGER", "custorder_id", "order_items"], ["product_id", "INTEGER", "product_id", "order_items"]], false, ["custorder_id", "product_id"]], ["relation_42", [["custorder_id", "INTEGER", "custorder_id", "order_returns"], ["product_id", "INTEGER", "product_id", "order_returns"]], false, ["custorder_id", "product_id"]], ["relation_43", [["product_id", "INTEGER", "product_id", "stock"], ["warehouse_id", "INTEGER", "warehouse_id", "stock"], ["bin_id", "INTEGER", "warehousebin.bin_id", "stock"]], false, ["product_id", "warehouse_id", "bin_id"]], ["relation_44", [["supplier_id", "INTEGER", "supplier_id", "supplier_products"], ["product_id", "INTEGER", "product_id", "supplier_products"]], false, ["supplier_id", "product_id"]], ["relation_45", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "po_items"], ["product_id", "INTEGER", "product_id", "po_items"]], false, ["purchaseorder_id", "product_id"]], ["relation_46", [["phone_id", "INTEGER", "phone_id", "bundle_phones"], ["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phones"]], false, ["phone_id", "bundle_phone_phone_id"]]]
3	types	{}
4	graph	{"cost": 23392199.848063536, "edges": [{"type": "edge", "source": "product.mv_attributes", "target": "product", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "physicalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "digitalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "electronics", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "computer", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "desktop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "laptop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "tablet", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "smartwatch", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "camera", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "phone", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "accessories", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "appliance", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "kitchenappliance", "target": "appliance", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "apparel", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "clothing", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "menclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "womenclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "footwear", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "media", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "software", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "user.mv_user", "target": "user", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer.contact_no", "target": "customer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "primecustomer.subscription_addons", "target": "primecustomer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "primecustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "businesscustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "employee", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "corporateemployee", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "engineer", "target": "corporateemployee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "supportagent", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "fulfillmentassociate", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "categorymanager", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productimage", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productvariant", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "pricehistory", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "address", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "paymentmethod", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "cart", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "wishlist", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "review", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "browsingsession", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "shipment", "target": "custorder", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "coupon", "target": "promotion", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "warehousebin", "target": "warehouse", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "suppliercontact", "target": "supplier", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "category_products", "target": "category", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "category_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "tag", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "cart", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "wishlist", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "review", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "customer", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "paymentmethod", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "coupon", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "warehousebin", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "courierpartner", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "shipment", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "smartwatch", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}], "nodes": [{"key": {"table_key": [["category_id", "INTEGER", "category_id", "category_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["category"]}, "name": "Category", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 1, "attributes": ["category.category_id", "category.category_name", "category.parent"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "category_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "category_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "parent", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Category", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[1, "relation_0"]], "unique_name": "category", "mapped_table": [1, "relation_0"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "category_id", "pk_type": "INTEGER", "pk_ER_name": "category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "category_name", "type": "VARCHAR", "unique_name": "category.category_name", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "parent", "type": "INT", "unique_name": "category.parent", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["category"], "select_frequency": 2, "select_all_tables": [[1, "relation_0"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "category_id", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 2, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.category_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "category_name", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 3, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "category.category_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "parent", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 4, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.parent", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["product"]}, "name": "Product", "type": "ENTITY", "is_mvds": true, "children": ["physicalproduct", "digitalproduct"], "is_total": null, "sort_key": 5, "attributes": ["product.product_id", "product.sku", "product.product_name", "product.base_price", "product.is_active", "product.quantity", "product.mv_attributes"], "node_cover": ["product", "electronics", "tablet", "camera", "kitchenappliance", "clothing", "digitalproduct", "media"], "entity_dict": {"attributes": [{"attr_name": "product_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sku", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "product_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "base_price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "quantity", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_attributes", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Product", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "product", "mapped_table": [5, "relation_1"], "parent_entity": null, "relation_size": 2100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["product"], "select_frequency": 10, "select_all_tables": [[5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "product_id", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 6, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.product_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sku", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 7, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.sku", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "product_name", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 8, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.product_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "base_price", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 9, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.base_price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 10, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.is_active", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "quantity", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 11, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.quantity", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "mv_attributes"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": null}, "name": "mv_attributes", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 12, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.mv_attributes", "is_composite": false, "is_flattened": false, "mapped_table": [5, "relation_1"], "relation_size": 3144, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["physicalproduct"]}, "name": "PhysicalProduct", "type": "ENTITY", "is_mvds": false, "children": ["electronics", "appliance", "apparel"], "is_total": true, "sort_key": 13, "attributes": ["physicalproduct.dimensions"], "node_cover": ["physicalproduct", "electronics", "tablet", "camera", "kitchenappliance", "clothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "dimensions", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PhysicalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"], [13, "relation_2"]], "unique_name": "physicalproduct", "mapped_table": [13, "relation_2"], "parent_entity": "product", "relation_size": 1700, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "physicalproduct_id", "pk_entity_name": "physicalproduct", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["physicalproduct"], "select_frequency": 5, "select_all_tables": [[5, "relation_1"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "dimensions", "type": "ATTRIBUTE", "entity": "physicalproduct", "children": [], "sort_key": 14, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "physicalproduct.dimensions", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["digitalproduct"]}, "name": "DigitalProduct", "type": "ENTITY", "is_mvds": false, "children": ["media", "software"], "is_total": true, "sort_key": 15, "attributes": ["digitalproduct.delivery_type"], "node_cover": ["digitalproduct", "media"], "entity_dict": {"total": true, "attributes": [{"attr_name": "delivery_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "DigitalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[15, "relation_3"]], "unique_name": "digitalproduct", "mapped_table": [15, "relation_3"], "parent_entity": "product", "relation_size": 300, "attribute_list": [{"pk_name": "digitalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "digitalproduct_id", "pk_entity_name": "digitalproduct", "pk_unique_name": "digitalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["digitalproduct"], "select_frequency": 2, "select_all_tables": [[15, "relation_3"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "delivery_type", "type": "ATTRIBUTE", "entity": "digitalproduct", "children": [], "sort_key": 16, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "digitalproduct.delivery_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_2"], "table_key_entities": ["electronics"]}, "name": "Electronics", "type": "ENTITY", "is_mvds": false, "children": ["computer", "tablet", "smartwatch", "camera", "phone", "accessories"], "is_total": true, "sort_key": 17, "attributes": ["electronics.warranty_months"], "node_cover": ["electronics", "tablet", "camera"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_months", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Electronics", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_4"]], "unique_name": "electronics", "mapped_table": [17, "relation_4"], "parent_entity": "physicalproduct", "relation_size": 900, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "electronics_id", "pk_entity_name": "electronics", "pk_unique_name": "electronics_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["electronics"], "select_frequency": 1, "select_all_tables": [[17, "relation_4"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warranty_months", "type": "ATTRIBUTE", "entity": "electronics", "children": [], "sort_key": 18, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "electronics.warranty_months", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["computer"]}, "name": "Computer", "type": "ENTITY", "is_mvds": false, "children": ["desktop", "laptop"], "is_total": true, "sort_key": 19, "attributes": ["computer.cpu", "computer.ram_gb"], "node_cover": ["computer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "cpu", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ram_gb", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Computer", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_4"], [19, "relation_5"]], "unique_name": "computer", "mapped_table": [19, "relation_5"], "parent_entity": "electronics", "relation_size": 300, "attribute_list": [{"pk_name": "computer_id", "pk_type": "INTEGER", "pk_ER_name": "computer_id", "pk_entity_name": "computer", "pk_unique_name": "computer_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["computer"], "select_frequency": 10, "select_all_tables": [[17, "relation_4"], [19, "relation_5"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "cpu", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 20, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "computer.cpu", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ram_gb", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 21, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "computer.ram_gb", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["computer_id", "INTEGER", "computer_id", "desktop_id"]], "reference_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["desktop"]}, "name": "Desktop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 22, "attributes": ["desktop.form_factor"], "node_cover": ["desktop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "form_factor", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Desktop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_4"], [19, "relation_5"]], "unique_name": "desktop", "mapped_table": [19, "relation_5"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "computer_id", "pk_type": "INTEGER", "pk_ER_name": "desktop_id", "pk_entity_name": "desktop", "pk_unique_name": "computer_id", "pk_reference_key_name": "computer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "computer_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "form_factor", "type": "VARCHAR", "unique_name": "desktop.form_factor", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "desktop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["desktop"], "select_frequency": 10, "select_all_tables": [[17, "relation_4"], [19, "relation_5"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "form_factor", "type": "ATTRIBUTE", "entity": "desktop", "children": [], "sort_key": 23, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "desktop.form_factor", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["laptop_id", "INTEGER", "laptop_id", "laptop_id"]], "reference_key": [["computer_id", "INTEGER", "computer_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_5"], "table_key_entities": ["laptop"]}, "name": "Laptop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 24, "attributes": ["laptop.battery_wh"], "node_cover": ["laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "battery_wh", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Laptop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_4"], [19, "relation_5"], [24, "relation_6"]], "unique_name": "laptop", "mapped_table": [24, "relation_6"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "laptop_id", "pk_type": "INTEGER", "pk_ER_name": "laptop_id", "pk_entity_name": "laptop", "pk_unique_name": "laptop_id", "pk_reference_key_name": "computer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "computer_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [19, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "battery_wh", "type": "INT", "unique_name": "laptop.battery_wh", "is_flattened": null, "mapped_table": [24, "relation_6"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "laptop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["laptop"], "select_frequency": 5, "select_all_tables": [[17, "relation_4"], [19, "relation_5"], [24, "relation_6"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "battery_wh", "type": "ATTRIBUTE", "entity": "laptop", "children": [], "sort_key": 25, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "laptop.battery_wh", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tablet_id", "INTEGER", "tablet_id", "tablet_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["tablet"]}, "name": "Tablet", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 26, "attributes": ["tablet.screen_size_in"], "node_cover": ["tablet"], "entity_dict": {"total": true, "attributes": [{"attr_name": "screen_size_in", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tablet", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[26, "relation_7"]], "unique_name": "tablet", "mapped_table": [26, "relation_7"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "tablet_id", "pk_type": "INTEGER", "pk_ER_name": "tablet_id", "pk_entity_name": "tablet", "pk_unique_name": "tablet_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "screen_size_in", "type": "INT", "unique_name": "tablet.screen_size_in", "is_flattened": null, "mapped_table": [26, "relation_7"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tablet", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["tablet"], "select_frequency": 1, "select_all_tables": [[26, "relation_7"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "screen_size_in", "type": "ATTRIBUTE", "entity": "tablet", "children": [], "sort_key": 27, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tablet.screen_size_in", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["smartwatch"]}, "name": "Smartwatch", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 28, "attributes": ["smartwatch.band_size"], "node_cover": ["smartwatch"], "entity_dict": {"total": true, "attributes": [{"attr_name": "band_size", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Smartwatch", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_4"], [28, "relation_8"]], "unique_name": "smartwatch", "mapped_table": [28, "relation_8"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "band_size", "type": "VARCHAR", "unique_name": "smartwatch.band_size", "is_flattened": null, "mapped_table": [28, "relation_8"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "smartwatch", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["smartwatch"], "select_frequency": 1, "select_all_tables": [[17, "relation_4"], [28, "relation_8"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "band_size", "type": "ATTRIBUTE", "entity": "smartwatch", "children": [], "sort_key": 29, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "smartwatch.band_size", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["camera_id", "INTEGER", "camera_id", "camera_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["camera"]}, "name": "Camera", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 30, "attributes": ["camera.sensor_mp"], "node_cover": ["camera"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sensor_mp", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Camera", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[30, "relation_9"]], "unique_name": "camera", "mapped_table": [30, "relation_9"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "camera_id", "pk_type": "INTEGER", "pk_ER_name": "camera_id", "pk_entity_name": "camera", "pk_unique_name": "camera_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sensor_mp", "type": "INT", "unique_name": "camera.sensor_mp", "is_flattened": null, "mapped_table": [30, "relation_9"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "camera", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["camera"], "select_frequency": 2, "select_all_tables": [[30, "relation_9"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "sensor_mp", "type": "ATTRIBUTE", "entity": "camera", "children": [], "sort_key": 31, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "camera.sensor_mp", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["phone_id", "INTEGER", "phone_id", "phone_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["phone"]}, "name": "Phone", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 32, "attributes": ["phone.carrier_lock"], "node_cover": ["phone"], "entity_dict": {"total": true, "attributes": [{"attr_name": "carrier_lock", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Phone", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_4"], [32, "relation_10"]], "unique_name": "phone", "mapped_table": [32, "relation_10"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "carrier_lock", "type": "VARCHAR", "unique_name": "phone.carrier_lock", "is_flattened": null, "mapped_table": [32, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "phone", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["phone"], "select_frequency": 10, "select_all_tables": [[17, "relation_4"], [32, "relation_10"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "carrier_lock", "type": "ATTRIBUTE", "entity": "phone", "children": [], "sort_key": 33, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "phone.carrier_lock", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "accessories_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_4"], "table_key_entities": ["accessories"]}, "name": "Accessories", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 34, "attributes": ["accessories.accessory_type"], "node_cover": ["accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "accessory_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Accessories", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_4"]], "unique_name": "accessories", "mapped_table": [17, "relation_4"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "accessories_id", "pk_entity_name": "accessories", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "accessory_type", "type": "VARCHAR", "unique_name": "accessories.accessory_type", "is_flattened": null, "mapped_table": [17, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "accessories", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["accessories"], "select_frequency": 0, "select_all_tables": [[17, "relation_4"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "accessory_type", "type": "ATTRIBUTE", "entity": "accessories", "children": [], "sort_key": 35, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "accessories.accessory_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["appliance_id", "INTEGER", "appliance_id", "appliance_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_2"], "table_key_entities": ["appliance"]}, "name": "Appliance", "type": "ENTITY", "is_mvds": false, "children": ["kitchenappliance"], "is_total": true, "sort_key": 36, "attributes": ["appliance.energy_rating"], "node_cover": ["appliance", "kitchenappliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "energy_rating", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Appliance", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[36, "relation_11"], [5, "relation_1"], [13, "relation_2"]], "unique_name": "appliance", "mapped_table": [36, "relation_11"], "parent_entity": "physicalproduct", "relation_size": 200, "attribute_list": [{"pk_name": "appliance_id", "pk_type": "INTEGER", "pk_ER_name": "appliance_id", "pk_entity_name": "appliance", "pk_unique_name": "appliance_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [36, "relation_11"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["appliance"], "select_frequency": 1, "select_all_tables": [[36, "relation_11"], [5, "relation_1"], [13, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "energy_rating", "type": "ATTRIBUTE", "entity": "appliance", "children": [], "sort_key": 37, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "appliance.energy_rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["kitchenappliance_id", "INTEGER", "kitchenappliance_id", "kitchenappliance_id"]], "reference_key": [["appliance_id", "INTEGER", "appliance_id", "appliance_id"]], "reference_node": ["appliance"], "reference_table": ["relation_11"], "table_key_entities": ["kitchenappliance"]}, "name": "KitchenAppliance", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 38, "attributes": ["kitchenappliance.warranty_years"], "node_cover": ["kitchenappliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_years", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "KitchenAppliance", "entity_type": null, "parent_entity": "Appliance"}, "is_no_table": false, "is_subclass": true, "node_tables": [[38, "relation_12"]], "unique_name": "kitchenappliance", "mapped_table": [38, "relation_12"], "parent_entity": "appliance", "relation_size": 100, "attribute_list": [{"pk_name": "kitchenappliance_id", "pk_type": "INTEGER", "pk_ER_name": "kitchenappliance_id", "pk_entity_name": "kitchenappliance", "pk_unique_name": "kitchenappliance_id", "pk_reference_key_name": "appliance_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "appliance_id", "pk_reference_node_unique_name": "appliance"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [36, "relation_11"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_years", "type": "INT", "unique_name": "kitchenappliance.warranty_years", "is_flattened": null, "mapped_table": [38, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "kitchenappliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["kitchenappliance"], "select_frequency": 10, "select_all_tables": [[38, "relation_12"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warranty_years", "type": "ATTRIBUTE", "entity": "kitchenappliance", "children": [], "sort_key": 39, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "kitchenappliance.warranty_years", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "apparel_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_2"], "table_key_entities": ["apparel"]}, "name": "Apparel", "type": "ENTITY", "is_mvds": false, "children": ["clothing", "footwear"], "is_total": true, "sort_key": 40, "attributes": ["apparel.size_system"], "node_cover": ["apparel", "clothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "size_system", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Apparel", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"], [13, "relation_2"]], "unique_name": "apparel", "mapped_table": [13, "relation_2"], "parent_entity": "physicalproduct", "relation_size": 500, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "apparel_id", "pk_entity_name": "apparel", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["apparel"], "select_frequency": 1, "select_all_tables": [[5, "relation_1"], [13, "relation_2"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "size_system", "type": "ATTRIBUTE", "entity": "apparel", "children": [], "sort_key": 41, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "apparel.size_system", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_2"], "table_key_entities": ["clothing"]}, "name": "Clothing", "type": "ENTITY", "is_mvds": false, "children": ["menclothing", "womenclothing"], "is_total": true, "sort_key": 42, "attributes": ["clothing.material"], "node_cover": ["clothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Clothing", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[42, "relation_13"]], "unique_name": "clothing", "mapped_table": [42, "relation_13"], "parent_entity": "apparel", "relation_size": 300, "attribute_list": [{"pk_name": "clothing_id", "pk_type": "INTEGER", "pk_ER_name": "clothing_id", "pk_entity_name": "clothing", "pk_unique_name": "clothing_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["clothing"], "select_frequency": 10, "select_all_tables": [[42, "relation_13"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "material", "type": "ATTRIBUTE", "entity": "clothing", "children": [], "sort_key": 43, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "clothing.material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["clothing_id", "INTEGER", "clothing_id", "menclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_13"], "table_key_entities": ["menclothing"]}, "name": "MenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 44, "attributes": ["menclothing.fit_type_men"], "node_cover": ["menclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_men", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "MenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[42, "relation_13"]], "unique_name": "menclothing", "mapped_table": [42, "relation_13"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "clothing_id", "pk_type": "INTEGER", "pk_ER_name": "menclothing_id", "pk_entity_name": "menclothing", "pk_unique_name": "clothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_men", "type": "VARCHAR", "unique_name": "menclothing.fit_type_men", "is_flattened": null, "mapped_table": [42, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "menclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["menclothing"], "select_frequency": 5, "select_all_tables": [[42, "relation_13"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "fit_type_men", "type": "ATTRIBUTE", "entity": "menclothing", "children": [], "sort_key": 45, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "menclothing.fit_type_men", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["clothing_id", "INTEGER", "clothing_id", "womenclothing_id"]], "reference_key": [["clothing_id", "INTEGER", "clothing_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_13"], "table_key_entities": ["womenclothing"]}, "name": "WomenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 46, "attributes": ["womenclothing.fit_type_women"], "node_cover": ["womenclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_women", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WomenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[42, "relation_13"]], "unique_name": "womenclothing", "mapped_table": [42, "relation_13"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "clothing_id", "pk_type": "INTEGER", "pk_ER_name": "womenclothing_id", "pk_entity_name": "womenclothing", "pk_unique_name": "clothing_id", "pk_reference_key_name": "clothing_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "clothing_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [42, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_women", "type": "VARCHAR", "unique_name": "womenclothing.fit_type_women", "is_flattened": null, "mapped_table": [42, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "womenclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["womenclothing"], "select_frequency": 20, "select_all_tables": [[42, "relation_13"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "fit_type_women", "type": "ATTRIBUTE", "entity": "womenclothing", "children": [], "sort_key": 47, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "womenclothing.fit_type_women", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "footwear_id"]], "reference_key": [["physicalproduct_id", "INTEGER", "physicalproduct_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_2"], "table_key_entities": ["footwear"]}, "name": "Footwear", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 48, "attributes": ["footwear.sole_material"], "node_cover": ["footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sole_material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Footwear", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"], [13, "relation_2"]], "unique_name": "footwear", "mapped_table": [13, "relation_2"], "parent_entity": "apparel", "relation_size": 100, "attribute_list": [{"pk_name": "physicalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "footwear_id", "pk_entity_name": "footwear", "pk_unique_name": "physicalproduct_id", "pk_reference_key_name": "physicalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "physicalproduct_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sole_material", "type": "VARCHAR", "unique_name": "footwear.sole_material", "is_flattened": null, "mapped_table": [13, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "footwear", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["footwear"], "select_frequency": 20, "select_all_tables": [[5, "relation_1"], [13, "relation_2"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "sole_material", "type": "ATTRIBUTE", "entity": "footwear", "children": [], "sort_key": 49, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "footwear.sole_material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["media_id", "INTEGER", "media_id", "media_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["media"]}, "name": "Media", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 50, "attributes": ["media.format"], "node_cover": ["media"], "entity_dict": {"total": true, "attributes": [{"attr_name": "format", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Media", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[50, "relation_14"]], "unique_name": "media", "mapped_table": [50, "relation_14"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "media_id", "pk_type": "INTEGER", "pk_ER_name": "media_id", "pk_entity_name": "media", "pk_unique_name": "media_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "format", "type": "VARCHAR", "unique_name": "media.format", "is_flattened": null, "mapped_table": [50, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "media", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["media"], "select_frequency": 1, "select_all_tables": [[50, "relation_14"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "format", "type": "ATTRIBUTE", "entity": "media", "children": [], "sort_key": 51, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "media.format", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "software_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_3"], "table_key_entities": ["software"]}, "name": "Software", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 52, "attributes": ["software.license_type"], "node_cover": ["software"], "entity_dict": {"total": true, "attributes": [{"attr_name": "license_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Software", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[15, "relation_3"]], "unique_name": "software", "mapped_table": [15, "relation_3"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "digitalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "software_id", "pk_entity_name": "software", "pk_unique_name": "digitalproduct_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "license_type", "type": "VARCHAR", "unique_name": "software.license_type", "is_flattened": null, "mapped_table": [15, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "software", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["software"], "select_frequency": 1, "select_all_tables": [[15, "relation_3"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "license_type", "type": "ATTRIBUTE", "entity": "software", "children": [], "sort_key": 53, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "software.license_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["user"]}, "name": "User", "type": "ENTITY", "is_mvds": true, "children": ["customer", "employee"], "is_total": null, "sort_key": 54, "attributes": ["user.email", "user.password_hash", "user.mv_user"], "node_cover": ["user", "businesscustomer", "categorymanager"], "entity_dict": {"attributes": [{"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "password_hash", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_user", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "User", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[54, "relation_15"]], "unique_name": "user", "mapped_table": [54, "relation_15"], "parent_entity": null, "relation_size": 1000, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["user"], "select_frequency": 10, "select_all_tables": [[54, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 4, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 55, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "password_hash", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 56, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.password_hash", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["mv_user", "VARCHAR(255)", "user.mv_user", "mv_user"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_15"], "table_key_entities": null}, "name": "mv_user", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 57, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.mv_user", "is_composite": false, "is_flattened": false, "mapped_table": [54, "relation_15"], "relation_size": 2458, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "customer_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_15"], "table_key_entities": ["customer"]}, "name": "Customer", "type": "ENTITY", "is_mvds": true, "children": ["primecustomer", "businesscustomer"], "is_total": true, "sort_key": 58, "attributes": ["customer.loyalty_tier", "customer.contact_no"], "node_cover": ["customer", "businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "loyalty_tier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "contact_no", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Customer", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[54, "relation_15"]], "unique_name": "customer", "mapped_table": [54, "relation_15"], "parent_entity": "user", "relation_size": 300, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["customer"], "select_frequency": 6, "select_all_tables": [[54, "relation_15"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "loyalty_tier", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 59, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.loyalty_tier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "customer_id"]], [["contact_no", "VARCHAR(255)", "customer.contact_no", "contact_no"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": null}, "name": "contact_no", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 60, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.contact_no", "is_composite": false, "is_flattened": false, "mapped_table": [54, "relation_15"], "relation_size": 446, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": ["primecustomer"]}, "name": "PrimeCustomer", "type": "ENTITY", "is_mvds": true, "children": [], "is_total": true, "sort_key": 61, "attributes": ["primecustomer.renewal_date", "primecustomer.subscription_addons"], "node_cover": ["primecustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "renewal_date", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "subscription_addons", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PrimeCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[61, "relation_16"], [54, "relation_15"]], "unique_name": "primecustomer", "mapped_table": [61, "relation_16"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "primecustomer_id", "pk_type": "INTEGER", "pk_ER_name": "primecustomer_id", "pk_entity_name": "primecustomer", "pk_unique_name": "primecustomer_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "renewal_date", "type": "VARCHAR", "unique_name": "primecustomer.renewal_date", "is_flattened": null, "mapped_table": [61, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "subscription_addons", "type": "VARCHAR", "unique_name": "primecustomer.subscription_addons", "is_flattened": null, "mapped_table": [61, "relation_16"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["primecustomer"], "select_frequency": 1, "select_all_tables": [[61, "relation_16"], [54, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "renewal_date", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 62, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.renewal_date", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["primecustomer_id", "INTEGER", "primecustomer_id", "primecustomer_id"]], [["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "subscription_addons"]]], "reference_key": [[["primecustomer_id", "INTEGER", "primecustomer_id"]], []], "reference_node": ["primecustomer"], "reference_table": ["relation_16"], "table_key_entities": null}, "name": "subscription_addons", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 63, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.subscription_addons", "is_composite": false, "is_flattened": false, "mapped_table": [61, "relation_16"], "relation_size": 239, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": ["businesscustomer"]}, "name": "BusinessCustomer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 64, "attributes": ["businesscustomer.company_name"], "node_cover": ["businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "company_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BusinessCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[64, "relation_17"]], "unique_name": "businesscustomer", "mapped_table": [64, "relation_17"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "businesscustomer_id", "pk_type": "INTEGER", "pk_ER_name": "businesscustomer_id", "pk_entity_name": "businesscustomer", "pk_unique_name": "businesscustomer_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "company_name", "type": "VARCHAR", "unique_name": "businesscustomer.company_name", "is_flattened": null, "mapped_table": [64, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "businesscustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["businesscustomer"], "select_frequency": 1, "select_all_tables": [[64, "relation_17"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "company_name", "type": "ATTRIBUTE", "entity": "businesscustomer", "children": [], "sort_key": 65, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "businesscustomer.company_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_15"], "table_key_entities": ["employee"]}, "name": "Employee", "type": "ENTITY", "is_mvds": false, "children": ["corporateemployee", "supportagent", "fulfillmentassociate", "categorymanager"], "is_total": true, "sort_key": 66, "attributes": ["employee.employee_no"], "node_cover": ["employee", "categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "employee_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Employee", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[54, "relation_15"]], "unique_name": "employee", "mapped_table": [54, "relation_15"], "parent_entity": "user", "relation_size": 600, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "employee_id", "pk_entity_name": "employee", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["employee"], "select_frequency": 2, "select_all_tables": [[54, "relation_15"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "employee_no", "type": "ATTRIBUTE", "entity": "employee", "children": [], "sort_key": 67, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "employee.employee_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_15"], "table_key_entities": ["corporateemployee"]}, "name": "CorporateEmployee", "type": "ENTITY", "is_mvds": false, "children": ["engineer"], "is_total": true, "sort_key": 68, "attributes": ["corporateemployee.office_site"], "node_cover": ["corporateemployee"], "entity_dict": {"total": true, "attributes": [{"attr_name": "office_site", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CorporateEmployee", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[68, "relation_18"], [54, "relation_15"]], "unique_name": "corporateemployee", "mapped_table": [68, "relation_18"], "parent_entity": "employee", "relation_size": 200, "attribute_list": [{"pk_name": "corporateemployee_id", "pk_type": "INTEGER", "pk_ER_name": "corporateemployee_id", "pk_entity_name": "corporateemployee", "pk_unique_name": "corporateemployee_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["corporateemployee"], "select_frequency": 1, "select_all_tables": [[68, "relation_18"], [54, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "office_site", "type": "ATTRIBUTE", "entity": "corporateemployee", "children": [], "sort_key": 69, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "corporateemployee.office_site", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "engineer_id"]], "reference_key": [["corporateemployee_id", "INTEGER", "corporateemployee_id", "corporateemployee_id"]], "reference_node": ["corporateemployee"], "reference_table": ["relation_18"], "table_key_entities": ["engineer"]}, "name": "Engineer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 70, "attributes": ["engineer.level"], "node_cover": ["engineer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "level", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Engineer", "entity_type": null, "parent_entity": "CorporateEmployee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[68, "relation_18"], [54, "relation_15"]], "unique_name": "engineer", "mapped_table": [68, "relation_18"], "parent_entity": "corporateemployee", "relation_size": 100, "attribute_list": [{"pk_name": "corporateemployee_id", "pk_type": "INTEGER", "pk_ER_name": "engineer_id", "pk_entity_name": "engineer", "pk_unique_name": "corporateemployee_id", "pk_reference_key_name": "corporateemployee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "corporateemployee_id", "pk_reference_node_unique_name": "corporateemployee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [68, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "level", "type": "VARCHAR", "unique_name": "engineer.level", "is_flattened": null, "mapped_table": [68, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "engineer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["engineer"], "select_frequency": 1, "select_all_tables": [[68, "relation_18"], [54, "relation_15"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "level", "type": "ATTRIBUTE", "entity": "engineer", "children": [], "sort_key": 71, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "engineer.level", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supportagent_id", "INTEGER", "supportagent_id", "supportagent_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_15"], "table_key_entities": ["supportagent"]}, "name": "SupportAgent", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 72, "attributes": ["supportagent.queue"], "node_cover": ["supportagent"], "entity_dict": {"total": true, "attributes": [{"attr_name": "queue", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupportAgent", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[72, "relation_19"], [54, "relation_15"]], "unique_name": "supportagent", "mapped_table": [72, "relation_19"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "supportagent_id", "pk_type": "INTEGER", "pk_ER_name": "supportagent_id", "pk_entity_name": "supportagent", "pk_unique_name": "supportagent_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "queue", "type": "VARCHAR", "unique_name": "supportagent.queue", "is_flattened": null, "mapped_table": [72, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supportagent", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["supportagent"], "select_frequency": 1, "select_all_tables": [[72, "relation_19"], [54, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "user"}, {"key": null, "name": "queue", "type": "ATTRIBUTE", "entity": "supportagent", "children": [], "sort_key": 73, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supportagent.queue", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "fulfillmentassociate_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_15"], "table_key_entities": ["fulfillmentassociate"]}, "name": "FulfillmentAssociate", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 74, "attributes": ["fulfillmentassociate.shift"], "node_cover": ["fulfillmentassociate"], "entity_dict": {"total": true, "attributes": [{"attr_name": "shift", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "FulfillmentAssociate", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[54, "relation_15"]], "unique_name": "fulfillmentassociate", "mapped_table": [54, "relation_15"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "fulfillmentassociate_id", "pk_entity_name": "fulfillmentassociate", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shift", "type": "VARCHAR", "unique_name": "fulfillmentassociate.shift", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "fulfillmentassociate", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["fulfillmentassociate"], "select_frequency": 1, "select_all_tables": [[54, "relation_15"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shift", "type": "ATTRIBUTE", "entity": "fulfillmentassociate", "children": [], "sort_key": 75, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "fulfillmentassociate.shift", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_15"], "table_key_entities": ["categorymanager"]}, "name": "CategoryManager", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 76, "attributes": ["categorymanager.department"], "node_cover": ["categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "department", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CategoryManager", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[76, "relation_20"]], "unique_name": "categorymanager", "mapped_table": [76, "relation_20"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "categorymanager_id", "pk_type": "INTEGER", "pk_ER_name": "categorymanager_id", "pk_entity_name": "categorymanager", "pk_unique_name": "categorymanager_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "department", "type": "VARCHAR", "unique_name": "categorymanager.department", "is_flattened": null, "mapped_table": [76, "relation_20"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "categorymanager", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["categorymanager"], "select_frequency": 1, "select_all_tables": [[76, "relation_20"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "department", "type": "ATTRIBUTE", "entity": "categorymanager", "children": [], "sort_key": 77, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "categorymanager.department", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["image_id", "INTEGER", "productimage.image_id", "image_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productimage"]]}, "name": "ProductImage", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 78, "attributes": ["productimage.image_id", "productimage.url", "productimage.alt_text", "productimage.sort_order"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "image_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "alt_text", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sort_order", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductImage", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "productimage", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "image_id", "pk_type": "INTEGER", "pk_ER_name": "image_id", "pk_entity_name": "productimage", "pk_unique_name": "productimage.image_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "url", "type": "VARCHAR", "unique_name": "productimage.url", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "alt_text", "type": "VARCHAR", "unique_name": "productimage.alt_text", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sort_order", "type": "INT", "unique_name": "productimage.sort_order", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["productimage", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [17, "relation_4"], [26, "relation_7"], [30, "relation_9"], [38, "relation_12"], [42, "relation_13"], [15, "relation_3"], [50, "relation_14"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "image_id", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 79, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.image_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "url", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 80, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "alt_text", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 81, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.alt_text", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sort_order", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 82, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.sort_order", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["variant_id", "INTEGER", "productvariant.variant_id", "variant_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productvariant"]]}, "name": "ProductVariant", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 83, "attributes": ["productvariant.variant_id", "productvariant.price_override", "productvariant.barcode", "productvariant.is_active_variant"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "variant_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "price_override", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "barcode", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active_variant", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductVariant", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "productvariant", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "variant_id", "pk_type": "INTEGER", "pk_ER_name": "variant_id", "pk_entity_name": "productvariant", "pk_unique_name": "productvariant.variant_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "price_override", "type": "INT", "unique_name": "productvariant.price_override", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "barcode", "type": "VARCHAR", "unique_name": "productvariant.barcode", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active_variant", "type": "INT", "unique_name": "productvariant.is_active_variant", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["productvariant", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [17, "relation_4"], [26, "relation_7"], [30, "relation_9"], [38, "relation_12"], [42, "relation_13"], [15, "relation_3"], [50, "relation_14"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "variant_id", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 84, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.variant_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price_override", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 85, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.price_override", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "barcode", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 86, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productvariant.barcode", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active_variant", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 87, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.is_active_variant", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["price_id", "INTEGER", "pricehistory.price_id", "price_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["pricehistory"]]}, "name": "PriceHistory", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 88, "attributes": ["pricehistory.price_id", "pricehistory.starts_at", "pricehistory.ends_at", "pricehistory.price"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "price_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PriceHistory", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "pricehistory", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "price_id", "pk_type": "INTEGER", "pk_ER_name": "price_id", "pk_entity_name": "pricehistory", "pk_unique_name": "pricehistory.price_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "pricehistory.starts_at", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "pricehistory.ends_at", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "price", "type": "INT", "unique_name": "pricehistory.price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["pricehistory", "product"], "select_frequency": 6, "select_all_tables": [[5, "temp_product"]], "is_parent_in_table": true, "mapped_tables_list": [[5, "relation_1"], [17, "relation_4"], [26, "relation_7"], [30, "relation_9"], [38, "relation_12"], [42, "relation_13"], [15, "relation_3"], [50, "relation_14"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "price_id", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 89, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 90, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 91, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 92, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tag_id", "INTEGER", "tag_id", "tag_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["tag"]}, "name": "Tag", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 93, "attributes": ["tag.tag_id", "tag.tag_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "tag_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tag_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tag", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[93, "relation_21"]], "unique_name": "tag", "mapped_table": [93, "relation_21"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "tag_name", "type": "VARCHAR", "unique_name": "tag.tag_name", "is_flattened": null, "mapped_table": [93, "relation_21"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tag", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["tag"], "select_frequency": 3, "select_all_tables": [[93, "relation_21"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "tag_id", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 94, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tag.tag_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tag_name", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 95, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "tag.tag_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "customer_id"]], [["address_id", "INTEGER", "address.address_id", "address_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": [["customer"], ["address"]]}, "name": "Address", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 96, "attributes": ["address.address_id", "address.kind", "address.line1", "address.city", "address.state", "address.country", "address.postal_code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "address_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "kind", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "line1", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "city", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "state", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "country", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "postal_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Address", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[96, "relation_22"]], "unique_name": "address", "mapped_table": [96, "relation_22"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "address_id", "pk_type": "INTEGER", "pk_ER_name": "address_id", "pk_entity_name": "address", "pk_unique_name": "address.address_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "kind", "type": "VARCHAR", "unique_name": "address.kind", "is_flattened": null, "mapped_table": [96, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "line1", "type": "VARCHAR", "unique_name": "address.line1", "is_flattened": null, "mapped_table": [96, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "city", "type": "VARCHAR", "unique_name": "address.city", "is_flattened": null, "mapped_table": [96, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "state", "type": "VARCHAR", "unique_name": "address.state", "is_flattened": null, "mapped_table": [96, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "country", "type": "VARCHAR", "unique_name": "address.country", "is_flattened": null, "mapped_table": [96, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "postal_code", "type": "VARCHAR", "unique_name": "address.postal_code", "is_flattened": null, "mapped_table": [96, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["address", "customer"], "select_frequency": 4, "select_all_tables": [[96, "relation_22"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 13, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "address_id", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 97, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "address.address_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "kind", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 98, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.kind", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "line1", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 99, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.line1", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "city", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 100, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.city", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "state", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 101, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.state", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "country", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 102, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.country", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "postal_code", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 103, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.postal_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "customer_id"]], [["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_method_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": [["customer"], ["paymentmethod"]]}, "name": "PaymentMethod", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 104, "attributes": ["paymentmethod.payment_method_id", "paymentmethod.brand", "paymentmethod.last4", "paymentmethod.exp_month", "paymentmethod.exp_year", "paymentmethod.is_default"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "payment_method_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "brand", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "last4", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_month", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_year", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_default", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PaymentMethod", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[104, "relation_23"]], "unique_name": "paymentmethod", "mapped_table": [104, "relation_23"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "brand", "type": "VARCHAR", "unique_name": "paymentmethod.brand", "is_flattened": null, "mapped_table": [104, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "last4", "type": "VARCHAR", "unique_name": "paymentmethod.last4", "is_flattened": null, "mapped_table": [104, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_month", "type": "INT", "unique_name": "paymentmethod.exp_month", "is_flattened": null, "mapped_table": [104, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_year", "type": "INT", "unique_name": "paymentmethod.exp_year", "is_flattened": null, "mapped_table": [104, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_default", "type": "VARCHAR", "unique_name": "paymentmethod.is_default", "is_flattened": null, "mapped_table": [104, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["paymentmethod", "customer"], "select_frequency": 0, "select_all_tables": [[104, "relation_23"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "payment_method_id", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 105, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.payment_method_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "brand", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 106, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.brand", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "last4", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 107, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.last4", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_month", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 108, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_month", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_year", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 109, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_year", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_default", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 110, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.is_default", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "customer_id"]], []], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": [["customer"], ["cart"]]}, "name": "Cart", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 111, "attributes": ["cart.updated_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "updated_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Cart", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[111, "relation_24"]], "unique_name": "cart", "mapped_table": [111, "relation_24"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "customer"}, {"name": "updated_at", "type": "VARCHAR", "unique_name": "cart.updated_at", "is_flattened": null, "mapped_table": [111, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "cart", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["cart", "customer"], "select_frequency": 8, "select_all_tables": [[111, "relation_24"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "updated_at", "type": "ATTRIBUTE", "entity": "cart", "children": [], "sort_key": 112, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "cart.updated_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "customer_id"]], [["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": [["customer"], ["wishlist"]]}, "name": "Wishlist", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 113, "attributes": ["wishlist.wishlist_id", "wishlist.wishlist_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "wishlist_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "wishlist_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Wishlist", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[113, "relation_25"]], "unique_name": "wishlist", "mapped_table": [113, "relation_25"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "wishlist_name", "type": "VARCHAR", "unique_name": "wishlist.wishlist_name", "is_flattened": null, "mapped_table": [113, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "wishlist", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["wishlist", "customer"], "select_frequency": 5, "select_all_tables": [[113, "relation_25"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "wishlist_id", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 114, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "wishlist.wishlist_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "wishlist_name", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 115, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "wishlist.wishlist_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "customer_id"]], [["review_id", "INTEGER", "review.review_id", "review_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": [["customer"], ["review"]]}, "name": "Review", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 116, "attributes": ["review.review_id", "review.rating", "review.title", "review.body", "review.created_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "review_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "rating", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "title", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "body", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Review", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[116, "relation_26"]], "unique_name": "review", "mapped_table": [116, "relation_26"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "rating", "type": "INT", "unique_name": "review.rating", "is_flattened": null, "mapped_table": [116, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "title", "type": "VARCHAR", "unique_name": "review.title", "is_flattened": null, "mapped_table": [116, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "body", "type": "VARCHAR", "unique_name": "review.body", "is_flattened": null, "mapped_table": [116, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "review.created_at", "is_flattened": null, "mapped_table": [116, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["review", "customer"], "select_frequency": 7, "select_all_tables": [[116, "relation_26"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "review_id", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 117, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.review_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "rating", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 118, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "title", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 119, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.title", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "body", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 120, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.body", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 121, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["session_id", "INTEGER", "browsingsession.session_id", "session_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_15"], "table_key_entities": [["user"], ["browsingsession"]]}, "name": "BrowsingSession", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 122, "attributes": ["browsingsession.session_id", "browsingsession.started_at", "browsingsession.device"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "session_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "started_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "device", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BrowsingSession", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": false, "node_tables": [[54, "relation_15"]], "unique_name": "browsingsession", "mapped_table": [54, "relation_15"], "parent_entity": "user", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"pk_name": "session_id", "pk_type": "INTEGER", "pk_ER_name": "session_id", "pk_entity_name": "browsingsession", "pk_unique_name": "browsingsession.session_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "started_at", "type": "VARCHAR", "unique_name": "browsingsession.started_at", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "device", "type": "VARCHAR", "unique_name": "browsingsession.device", "is_flattened": null, "mapped_table": [54, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["browsingsession", "user"], "select_frequency": 4, "select_all_tables": [[54, "temp_user"]], "is_parent_in_table": true, "mapped_tables_list": [[54, "relation_15"], [64, "relation_17"], [76, "relation_20"]], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "session_id", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 123, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "browsingsession.session_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "started_at", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 124, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.started_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "device", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 125, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.device", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["custorder"]}, "name": "CustOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 126, "attributes": ["custorder.custorder_id", "custorder.placed_at", "custorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "custorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "placed_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CustOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[126, "relation_27"]], "unique_name": "custorder", "mapped_table": [126, "relation_27"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "placed_at", "type": "VARCHAR", "unique_name": "custorder.placed_at", "is_flattened": null, "mapped_table": [126, "relation_27"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "custorder.status", "is_flattened": null, "mapped_table": [126, "relation_27"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["custorder"], "select_frequency": 10, "select_all_tables": [[126, "relation_27"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "custorder_id", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 127, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "custorder.custorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "placed_at", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 128, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.placed_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 129, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], []], "reference_node": ["custorder"], "reference_table": ["relation_27"], "table_key_entities": [["custorder"], ["shipment"]]}, "name": "Shipment", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 130, "attributes": ["shipment.shipment_id", "shipment.carrier", "shipment.tracking_no", "shipment.shipped_at", "shipment.delivered_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "shipment_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "carrier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tracking_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "shipped_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "delivered_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Shipment", "entity_type": null, "parent_entity": "CustOrder"}, "is_no_table": false, "is_subclass": false, "node_tables": [[130, "relation_28"]], "unique_name": "shipment", "mapped_table": [130, "relation_28"], "parent_entity": "custorder", "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": "custorder"}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier", "type": "VARCHAR", "unique_name": "shipment.carrier", "is_flattened": null, "mapped_table": [130, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "tracking_no", "type": "VARCHAR", "unique_name": "shipment.tracking_no", "is_flattened": null, "mapped_table": [130, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shipped_at", "type": "VARCHAR", "unique_name": "shipment.shipped_at", "is_flattened": null, "mapped_table": [130, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "delivered_at", "type": "VARCHAR", "unique_name": "shipment.delivered_at", "is_flattened": null, "mapped_table": [130, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["shipment", "custorder"], "select_frequency": 6, "select_all_tables": [[126, "relation_27"], [130, "relation_28"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shipment_id", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 131, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "shipment.shipment_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 132, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.carrier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tracking_no", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 133, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.tracking_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "shipped_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 134, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.shipped_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "delivered_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 135, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.delivered_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["promotion"]}, "name": "Promotion", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 136, "attributes": ["promotion.promo_id", "promotion.promo_name", "promotion.starts_at", "promotion.ends_at", "promotion.discount_type", "promotion.discount_value"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "promo_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "promo_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_value", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Promotion", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[136, "relation_29"]], "unique_name": "promotion", "mapped_table": [136, "relation_29"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "promo_name", "type": "VARCHAR", "unique_name": "promotion.promo_name", "is_flattened": null, "mapped_table": [136, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "promotion.starts_at", "is_flattened": null, "mapped_table": [136, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "promotion.ends_at", "is_flattened": null, "mapped_table": [136, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_type", "type": "VARCHAR", "unique_name": "promotion.discount_type", "is_flattened": null, "mapped_table": [136, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_value", "type": "VARCHAR", "unique_name": "promotion.discount_value", "is_flattened": null, "mapped_table": [136, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["promotion"], "select_frequency": 3, "select_all_tables": [[136, "relation_29"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "promo_id", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 137, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "promotion.promo_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "promo_name", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 138, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.promo_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 139, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 140, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_type", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 141, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_value", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 142, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_value", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], [["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"]], []], "reference_node": ["promotion"], "reference_table": ["relation_29"], "table_key_entities": [["promotion"], ["coupon"]]}, "name": "Coupon", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 143, "attributes": ["coupon.coupon_code", "coupon.max_uses", "coupon.per_user_limit"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "coupon_code", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "max_uses", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "per_user_limit", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Coupon", "entity_type": null, "parent_entity": "Promotion"}, "is_no_table": false, "is_subclass": false, "node_tables": [[143, "relation_30"]], "unique_name": "coupon", "mapped_table": [143, "relation_30"], "parent_entity": "promotion", "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": "promotion"}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "max_uses", "type": "INT", "unique_name": "coupon.max_uses", "is_flattened": null, "mapped_table": [143, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "per_user_limit", "type": "INT", "unique_name": "coupon.per_user_limit", "is_flattened": null, "mapped_table": [143, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["coupon", "promotion"], "select_frequency": 3, "select_all_tables": [[136, "relation_29"], [143, "relation_30"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "coupon_code", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 144, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.coupon_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "max_uses", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 145, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.max_uses", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "per_user_limit", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 146, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.per_user_limit", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["warehouse"]}, "name": "Warehouse", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 147, "attributes": ["warehouse.warehouse_id", "warehouse.warehouse_name", "warehouse.region"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "warehouse_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "warehouse_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "region", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Warehouse", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[147, "relation_31"]], "unique_name": "warehouse", "mapped_table": [147, "relation_31"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "warehouse_name", "type": "VARCHAR", "unique_name": "warehouse.warehouse_name", "is_flattened": null, "mapped_table": [147, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "region", "type": "VARCHAR", "unique_name": "warehouse.region", "is_flattened": null, "mapped_table": [147, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_31"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warehouse_id", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 148, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehouse.warehouse_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "warehouse_name", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 149, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.warehouse_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "region", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 150, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.region", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], [["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["warehouse_id", "INTEGER", "warehouse_id"]], []], "reference_node": ["warehouse"], "reference_table": ["relation_31"], "table_key_entities": [["warehouse"], ["warehousebin"]]}, "name": "WarehouseBin", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 151, "attributes": ["warehousebin.bin_id", "warehousebin.code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "bin_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WarehouseBin", "entity_type": null, "parent_entity": "Warehouse"}, "is_no_table": false, "is_subclass": false, "node_tables": [[151, "relation_32"]], "unique_name": "warehousebin", "mapped_table": [151, "relation_32"], "parent_entity": "warehouse", "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": "warehouse"}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "code", "type": "VARCHAR", "unique_name": "warehousebin.code", "is_flattened": null, "mapped_table": [151, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehousebin", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehousebin", "warehouse"], "select_frequency": 2, "select_all_tables": [[151, "relation_32"], [147, "relation_31"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "bin_id", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 152, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehousebin.bin_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "code", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 153, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehousebin.code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["supplier"]}, "name": "Supplier", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 154, "attributes": ["supplier.supplier_id", "supplier.supplier_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "supplier_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "supplier_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Supplier", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[154, "relation_33"]], "unique_name": "supplier", "mapped_table": [154, "relation_33"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "supplier_name", "type": "VARCHAR", "unique_name": "supplier.supplier_name", "is_flattened": null, "mapped_table": [154, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supplier", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["supplier"], "select_frequency": 3, "select_all_tables": [[154, "relation_33"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "supplier_id", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 155, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "supplier.supplier_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "supplier_name", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 156, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supplier.supplier_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["contact_id", "INTEGER", "suppliercontact.contact_id", "contact_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], []], "reference_node": ["supplier"], "reference_table": ["relation_33"], "table_key_entities": [["supplier"], ["suppliercontact"]]}, "name": "SupplierContact", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 157, "attributes": ["suppliercontact.contact_id", "suppliercontact.email", "suppliercontact.phone"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "contact_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "phone", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupplierContact", "entity_type": null, "parent_entity": "Supplier"}, "is_no_table": false, "is_subclass": false, "node_tables": [[157, "relation_34"]], "unique_name": "suppliercontact", "mapped_table": [157, "relation_34"], "parent_entity": "supplier", "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": "supplier"}, {"pk_name": "contact_id", "pk_type": "INTEGER", "pk_ER_name": "contact_id", "pk_entity_name": "suppliercontact", "pk_unique_name": "suppliercontact.contact_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "suppliercontact.email", "is_flattened": null, "mapped_table": [157, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "phone", "type": "VARCHAR", "unique_name": "suppliercontact.phone", "is_flattened": null, "mapped_table": [157, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["suppliercontact", "supplier"], "select_frequency": 3, "select_all_tables": [[154, "relation_33"], [157, "relation_34"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "contact_id", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 158, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "suppliercontact.contact_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 159, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "phone", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 160, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.phone", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["purchaseorder"]}, "name": "PurchaseOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 161, "attributes": ["purchaseorder.purchaseorder_id", "purchaseorder.created_at", "purchaseorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "purchaseorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PurchaseOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[161, "relation_35"]], "unique_name": "purchaseorder", "mapped_table": [161, "relation_35"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "purchaseorder.created_at", "is_flattened": null, "mapped_table": [161, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "purchaseorder.status", "is_flattened": null, "mapped_table": [161, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["purchaseorder"], "select_frequency": 4, "select_all_tables": [[161, "relation_35"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "purchaseorder_id", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 162, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "purchaseorder.purchaseorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 163, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 164, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["courierpartner"]}, "name": "CourierPartner", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 165, "attributes": ["courierpartner.courierpartner_id", "courierpartner.carrier_code", "courierpartner.webhook_url"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "courierpartner_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "carrier_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "webhook_url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CourierPartner", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[165, "relation_36"]], "unique_name": "courierpartner", "mapped_table": [165, "relation_36"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier_code", "type": "VARCHAR", "unique_name": "courierpartner.carrier_code", "is_flattened": null, "mapped_table": [165, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "webhook_url", "type": "VARCHAR", "unique_name": "courierpartner.webhook_url", "is_flattened": null, "mapped_table": [165, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["courierpartner"], "select_frequency": 1, "select_all_tables": [[165, "relation_36"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "courierpartner_id", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 166, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "courierpartner.courierpartner_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier_code", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 167, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.carrier_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "webhook_url", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 168, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.webhook_url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["category_products_category_id", "INTEGER", "category_id", "category_products_category_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["category_id", "INTEGER", "category_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_0"], "table_key_entities": [["product"], ["category"]]}, "name": "category_products", "type": "RELATIONSHIP", "entity1": "category", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Category", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "category_products"}, "sort_key": 169, "attributes": [], "node_tables": [[5, "relation_1"]], "unique_name": "category_products", "mapped_table": [5, "relation_1"], "relation_size": 483, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "category_products_category_id", "pk_type": "INTEGER", "pk_ER_name": "category_products_category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": "category_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "category_id", "pk_reference_node_unique_name": null}], "insert_frequency": 483, "select_all_nodes": ["category_products", "category", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [1, "relation_0"]], "mapped_tables_list": [[5, "relation_1"], [17, "relation_4"], [26, "relation_7"], [30, "relation_9"], [38, "relation_12"], [42, "relation_13"], [15, "relation_3"], [50, "relation_14"]], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["tag_id", "INTEGER", "tag_id", "tag_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["tag_id", "INTEGER", "tag_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_21"], "table_key_entities": [["product"], ["tag"]]}, "name": "product_tags", "type": "RELATIONSHIP", "entity1": "product", "entity2": "tag", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Tag", "role": null, "total": true}, "attributes": [], "table_name": "product_tags"}, "sort_key": 170, "attributes": [], "node_tables": [[170, "relation_37"]], "unique_name": "product_tags", "mapped_table": [170, "relation_37"], "relation_size": 3172, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": "tag_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "tag_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3172, "select_all_nodes": ["product_tags", "product", "tag"], "select_frequency": 1, "select_all_tables": [[170, "relation_37"], [5, "temp_product"], [93, "relation_21"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["bought_together_product_product_id", "INTEGER", "product_id", "bought_together_product_product_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_1"], "table_key_entities": [["product"], ["product"]]}, "name": "bought_together", "type": "RELATIONSHIP", "entity1": "product", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": "product_id", "total": true}, "entity2": {"one": false, "name": "Product", "role": "bought_together_product_id", "total": true}, "attributes": [], "table_name": "bought_together"}, "sort_key": 171, "attributes": [], "node_tables": [[171, "relation_38"]], "unique_name": "bought_together", "mapped_table": [171, "relation_38"], "relation_size": 4151, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "bought_together_product_product_id", "pk_type": "INTEGER", "pk_ER_name": "bought_together_product_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 4151, "select_all_nodes": ["bought_together", "product", "product"], "select_frequency": 0, "select_all_tables": [[5, "temp_product"], [171, "relation_38"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": ["product_id", "bought_together_product_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "user_id", "customer_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_24", "relation_1"], "table_key_entities": [["cart"], ["product"]]}, "name": "cart_contains", "type": "RELATIONSHIP", "entity1": "cart", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Cart", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "cart_contains"}, "sort_key": 172, "attributes": [], "node_tables": [[172, "relation_39"]], "unique_name": "cart_contains", "mapped_table": [172, "relation_39"], "relation_size": 202, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "cart", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 202, "select_all_nodes": ["cart_contains", "cart", "customer", "product"], "select_frequency": 2, "select_all_tables": [[172, "relation_39"], [111, "relation_24"], [5, "temp_product"], [58, "temp_customer"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "user_id", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_25", "relation_1"], "table_key_entities": [["wishlist"], ["product"]]}, "name": "wishlist_contains", "type": "RELATIONSHIP", "entity1": "wishlist", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Wishlist", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "wishlist_contains"}, "sort_key": 173, "attributes": [], "node_tables": [[173, "relation_40"]], "unique_name": "wishlist_contains", "mapped_table": [173, "relation_40"], "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "wishlist", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": null}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": "wishlist_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "wishlist.wishlist_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["wishlist_contains", "wishlist", "customer", "product"], "select_frequency": 2, "select_all_tables": [[173, "relation_40"], [5, "temp_product"], [113, "relation_25"], [58, "temp_customer"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "customer_id"], ["review_id", "INTEGER", "review.review_id", "review_id"]], [["reviews_product_id", "INTEGER", "product_id", "reviews_product_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"], ["review_id", "INTEGER", "review.review_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_26", "relation_1"], "table_key_entities": [["review"], ["product"]]}, "name": "reviews", "type": "RELATIONSHIP", "entity1": "product", "entity2": "review", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Review", "role": null, "total": true}, "attributes": [], "table_name": "reviews"}, "sort_key": 174, "attributes": [], "node_tables": [[116, "relation_26"]], "unique_name": "reviews", "mapped_table": [116, "relation_26"], "relation_size": 47, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "review", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": null}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": "review_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "review.review_id", "pk_reference_node_unique_name": null}, {"pk_name": "reviews_product_id", "pk_type": "INTEGER", "pk_ER_name": "reviews_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 47, "select_all_nodes": ["reviews", "product", "review", "customer"], "select_frequency": 1, "select_all_tables": [[116, "relation_26"], [5, "temp_product"], [58, "temp_customer"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 18, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["customer_orders_customer_id", "INTEGER", "user_id", "customer_orders_customer_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["user_id", "INTEGER", "user_id"]]], "reference_node": [], "reference_table": ["relation_27", "relation_15"], "table_key_entities": [["custorder"], ["customer"]]}, "name": "customer_orders", "type": "RELATIONSHIP", "entity1": "customer", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Customer", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "customer_orders"}, "sort_key": 175, "attributes": [], "node_tables": [[126, "relation_27"]], "unique_name": "customer_orders", "mapped_table": [126, "relation_27"], "relation_size": 71, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "customer_orders_customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_orders_customer_id", "pk_entity_name": "customer", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": null}], "insert_frequency": 71, "select_all_nodes": ["customer_orders", "customer", "custorder"], "select_frequency": 5, "select_all_tables": [[126, "relation_27"], [58, "temp_customer"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_27", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_items", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_items"}, "sort_key": 176, "attributes": [], "node_tables": [[176, "relation_41"]], "unique_name": "order_items", "mapped_table": [176, "relation_41"], "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_items", "custorder", "product"], "select_frequency": 2, "select_all_tables": [[126, "relation_27"], [5, "temp_product"], [176, "relation_41"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["payment_order_customer_id", "INTEGER", "user_id", "payment_order_customer_id"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order_payment_method_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["user_id", "INTEGER", "user_id"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id"]]], "reference_node": [], "reference_table": ["relation_27", "relation_23"], "table_key_entities": [["custorder"], ["paymentmethod"]]}, "name": "payment_order", "type": "RELATIONSHIP", "entity1": "paymentmethod", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "PaymentMethod", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "payment_order"}, "sort_key": 177, "attributes": [], "node_tables": [[126, "relation_27"]], "unique_name": "payment_order", "mapped_table": [126, "relation_27"], "relation_size": 90, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_customer_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_customer_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": "payment_method_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "paymentmethod.payment_method_id", "pk_reference_node_unique_name": null}], "insert_frequency": 90, "select_all_nodes": ["payment_order", "paymentmethod", "customer", "custorder"], "select_frequency": 2, "select_all_tables": [[126, "relation_27"], [104, "relation_23"], [58, "temp_customer"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_27", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_returns", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_returns"}, "sort_key": 178, "attributes": [], "node_tables": [[178, "relation_42"]], "unique_name": "order_returns", "mapped_table": [178, "relation_42"], "relation_size": 188, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 188, "select_all_nodes": ["order_returns", "custorder", "product"], "select_frequency": 1, "select_all_tables": [[126, "relation_27"], [5, "temp_product"], [178, "relation_42"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]], [["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons_custorder_id"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code"]], [["custorder_id", "INTEGER", "custorder_id"]]], "reference_node": [], "reference_table": ["relation_30", "relation_27"], "table_key_entities": [["coupon"], ["custorder"]]}, "name": "order_coupons", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "coupon", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Coupon", "role": null, "total": true}, "attributes": [], "table_name": "order_coupons"}, "sort_key": 179, "attributes": [], "node_tables": [[143, "relation_30"]], "unique_name": "order_coupons", "mapped_table": [143, "relation_30"], "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "coupon", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": null}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": "coupon_code", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "coupon.coupon_code", "pk_reference_node_unique_name": null}, {"pk_name": "order_coupons_custorder_id", "pk_type": "INTEGER", "pk_ER_name": "order_coupons_custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_coupons", "custorder", "coupon", "promotion"], "select_frequency": 1, "select_all_tables": [[136, "relation_29"], [126, "relation_27"], [143, "relation_30"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_32"], "table_key_entities": [["product"], ["warehousebin"]]}, "name": "stock", "type": "RELATIONSHIP", "entity1": "product", "entity2": "warehousebin", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "WarehouseBin", "role": null, "total": true}, "attributes": [], "table_name": "stock"}, "sort_key": 180, "attributes": [], "node_tables": [[180, "relation_43"]], "unique_name": "stock", "mapped_table": [180, "relation_43"], "relation_size": 3173, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": null}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": "bin_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehousebin.bin_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3173, "select_all_nodes": ["stock", "product", "warehousebin", "warehouse"], "select_frequency": 1, "select_all_tables": [[151, "relation_32"], [180, "relation_43"], [5, "temp_product"], [147, "relation_31"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_33", "relation_1"], "table_key_entities": [["supplier"], ["product"]]}, "name": "supplier_products", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "supplier_products"}, "sort_key": 181, "attributes": [], "node_tables": [[181, "relation_44"]], "unique_name": "supplier_products", "mapped_table": [181, "relation_44"], "relation_size": 159, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 159, "select_all_nodes": ["supplier_products", "supplier", "product"], "select_frequency": 1, "select_all_tables": [[154, "relation_33"], [181, "relation_44"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos_supplier_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["supplier_id", "INTEGER", "supplier_id"]]], "reference_node": [], "reference_table": ["relation_35", "relation_33"], "table_key_entities": [["purchaseorder"], ["supplier"]]}, "name": "supplier_pos", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "purchaseorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "attributes": [], "table_name": "supplier_pos"}, "sort_key": 182, "attributes": [], "node_tables": [[161, "relation_35"]], "unique_name": "supplier_pos", "mapped_table": [161, "relation_35"], "relation_size": 87, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "supplier_pos_supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_pos_supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}], "insert_frequency": 87, "select_all_nodes": ["supplier_pos", "supplier", "purchaseorder"], "select_frequency": 1, "select_all_tables": [[154, "relation_33"], [161, "relation_35"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 5, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_35", "relation_1"], "table_key_entities": [["purchaseorder"], ["product"]]}, "name": "po_items", "type": "RELATIONSHIP", "entity1": "purchaseorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "po_items"}, "sort_key": 183, "attributes": [], "node_tables": [[183, "relation_45"]], "unique_name": "po_items", "mapped_table": [183, "relation_45"], "relation_size": 156, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 156, "select_all_nodes": ["po_items", "purchaseorder", "product"], "select_frequency": 1, "select_all_tables": [[161, "relation_35"], [5, "temp_product"], [183, "relation_45"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]], [["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments_courierpartner_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id"]], [["courierpartner_id", "INTEGER", "courierpartner_id"]]], "reference_node": [], "reference_table": ["relation_28", "relation_36"], "table_key_entities": [["shipment"], ["courierpartner"]]}, "name": "courier_shipments", "type": "RELATIONSHIP", "entity1": "courierpartner", "entity2": "shipment", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CourierPartner", "role": null, "total": true}, "entity2": {"one": false, "name": "Shipment", "role": null, "total": true}, "attributes": [], "table_name": "courier_shipments"}, "sort_key": 184, "attributes": [], "node_tables": [[130, "relation_28"]], "unique_name": "courier_shipments", "mapped_table": [130, "relation_28"], "relation_size": 95, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "shipment", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": "shipment_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "shipment.shipment_id", "pk_reference_node_unique_name": null}, {"pk_name": "courier_shipments_courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courier_shipments_courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": "courierpartner_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "courierpartner_id", "pk_reference_node_unique_name": null}], "insert_frequency": 95, "select_all_nodes": ["courier_shipments", "courierpartner", "shipment", "custorder"], "select_frequency": 2, "select_all_tables": [[165, "relation_36"], [126, "relation_27"], [130, "relation_28"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 11, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["bundle_phone_phone_id", "INTEGER", "phone_id", "bundle_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_10", "relation_10"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundle_phones", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundle_phones"}, "sort_key": 185, "attributes": [], "node_tables": [[185, "relation_46"]], "unique_name": "bundle_phones", "mapped_table": [185, "relation_46"], "relation_size": 207, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundle_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundle_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 207, "select_all_nodes": ["bundle_phones", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[17, "relation_4"], [32, "relation_10"], [185, "relation_46"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "bundle_phone_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], [["bundled_phone_smart_watch_phone_id", "INTEGER", "phone_id", "bundled_phone_smart_watch_phone_id"]]], "reference_key": [[["smartwatch_id", "INTEGER", "smartwatch_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_8", "relation_10"], "table_key_entities": [["smartwatch"], ["phone"]]}, "name": "bundled_phone_smart_watch", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "smartwatch", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": null, "total": true}, "entity2": {"one": false, "name": "Smartwatch", "role": null, "total": true}, "attributes": [], "table_name": "bundled_phone_smart_watch"}, "sort_key": 186, "attributes": [], "node_tables": [[28, "relation_8"]], "unique_name": "bundled_phone_smart_watch", "mapped_table": [28, "relation_8"], "relation_size": 48, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "smartwatch_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "smartwatch_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundled_phone_smart_watch_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundled_phone_smart_watch_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 48, "select_all_nodes": ["bundled_phone_smart_watch", "phone", "smartwatch"], "select_frequency": 1, "select_all_tables": [[17, "relation_4"], [32, "relation_10"], [28, "relation_8"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "phone_id", "phone_id"]], [["single_bundle_phone_bundled_phone_phone_id", "INTEGER", "phone_id", "single_bundle_phone_bundled_phone_phone_id"]]], "reference_key": [[["phone_id", "INTEGER", "phone_id"]], [["phone_id", "INTEGER", "phone_id"]]], "reference_node": [], "reference_table": ["relation_10", "relation_10"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundled_phone", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "single_bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundled_phone"}, "sort_key": 187, "attributes": [], "node_tables": [[32, "relation_10"]], "unique_name": "bundled_phone", "mapped_table": [32, "relation_10"], "relation_size": 12, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}, {"pk_name": "single_bundle_phone_bundled_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "single_bundle_phone_bundled_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "phone_id", "pk_reference_key_name": "phone_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "phone_id", "pk_reference_node_unique_name": null}], "insert_frequency": 12, "select_all_nodes": ["bundled_phone", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[17, "relation_4"], [32, "relation_10"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "single_bundle_phone_id"], "node_type_for_partitioning_options": "1_N_relationship"}], "config": {"tag": "all_by_itself", "cart": "all_by_itself", "user": "all_by_itself", "media": "all_by_itself", "phone": "partially_by_itself", "stock": "all_by_itself", "camera": "all_by_itself", "coupon": "all_by_itself", "laptop": "partially_by_itself", "review": "all_by_itself", "tablet": "all_by_itself", "address": "all_by_itself", "apparel": "contained_in_parent", "desktop": "contained_in_parent", "product": "all_by_itself", "reviews": "folded_to_many_side", "category": "all_by_itself", "clothing": "all_by_itself", "computer": "partially_by_itself", "customer": "contained_in_parent", "employee": "contained_in_parent", "engineer": "contained_in_parent", "footwear": "contained_in_parent", "po_items": "all_by_itself", "shipment": "all_by_itself", "software": "contained_in_parent", "supplier": "all_by_itself", "wishlist": "all_by_itself", "appliance": "partially_by_itself", "custorder": "all_by_itself", "promotion": "all_by_itself", "warehouse": "all_by_itself", "smartwatch": "partially_by_itself", "accessories": "contained_in_parent", "electronics": "all_by_itself", "menclothing": "contained_in_parent", "order_items": "all_by_itself", "pricehistory": "contained_in_parent", "product_tags": "all_by_itself", "productimage": "contained_in_parent", "supplier_pos": "folded_to_many_side", "supportagent": "partially_by_itself", "user.mv_user": "contained_in_parent", "warehousebin": "all_by_itself", "bundle_phones": "all_by_itself", "bundled_phone": "folded_to_many_side", "cart_contains": "all_by_itself", "order_coupons": "folded_to_many_side", "order_returns": "all_by_itself", "payment_order": "folded_to_many_side", "paymentmethod": "all_by_itself", "primecustomer": "partially_by_itself", "purchaseorder": "all_by_itself", "womenclothing": "contained_in_parent", "courierpartner": "all_by_itself", "digitalproduct": "all_by_itself", "productvariant": "contained_in_parent", "bought_together": "all_by_itself", "browsingsession": "contained_in_parent", "categorymanager": "all_by_itself", "customer_orders": "folded_to_many_side", "physicalproduct": "partially_by_itself", "suppliercontact": "all_by_itself", "businesscustomer": "all_by_itself", "kitchenappliance": "all_by_itself", "category_products": "folded_to_many_side", "corporateemployee": "partially_by_itself", "courier_shipments": "folded_to_many_side", "supplier_products": "all_by_itself", "wishlist_contains": "all_by_itself", "customer.contact_no": "contained_in_parent", "fulfillmentassociate": "contained_in_parent", "product.mv_attributes": "contained_in_parent", "bundled_phone_smart_watch": "folded_to_many_side", "primecustomer.subscription_addons": "contained_in_parent"}}
\.


--
-- Data for Name: relation_0; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_0 (category_id, category_name, parent) FROM stdin;
1	game	138
2	item	583
3	give	868
4	community	822
5	record	783
6	official	65
7	fund	262
8	whose	121
9	choice	508
10	experience	780
11	suddenly	461
12	similar	484
13	see	668
14	see	389
15	determine	808
16	run	215
17	happy	97
18	action	500
19	with	30
20	list	915
21	recognize	856
22	bag	400
23	music	444
24	walk	623
25	into	781
26	produce	786
27	usually	3
28	buy	713
29	walk	457
30	join	273
31	color	739
32	policy	822
33	key	235
34	network	606
35	mother	968
36	body	105
37	they	924
38	other	326
39	father	32
40	state	23
41	hit	27
42	us	666
43	head	555
44	high	10
45	sort	962
46	condition	903
47	bring	391
48	hold	703
49	each	222
50	people	993
51	sea	433
52	behavior	744
53	writer	30
54	order	541
55	probably	228
56	ten	783
57	question	449
58	wrong	962
59	treatment	508
60	particularly	567
61	ten	239
62	instead	354
63	according	237
64	meet	694
65	expect	225
66	television	780
67	kitchen	471
68	voice	976
69	father	297
70	nice	949
71	could	23
72	despite	427
73	animal	858
74	without	939
75	I	570
76	pattern	945
77	piece	658
78	deal	103
79	cut	191
80	final	645
81	high	742
82	according	881
83	actually	304
84	speech	124
85	let	761
86	shake	341
87	minute	918
88	stage	739
89	maintain	997
90	hard	729
91	eye	513
92	owner	959
93	want	991
94	east	433
95	option	520
96	leader	850
97	sing	933
98	when	687
99	soldier	195
100	air	311
\.


--
-- Data for Name: relation_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_1 (product_id, sku, product_name, base_price, is_active, quantity, mv_attributes, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1	choose	second	291	602	997	{force,film}	\N	\N	\N	\N
2	or	sit	867	964	518	{game,very}	\N	\N	\N	\N
4	almost	real	249	762	817	{project,law}	\N	\N	\N	\N
6	section	accept	562	904	720	{analysis,compare}	\N	\N	\N	\N
8	magazine	performance	798	168	534	{blood,nation}	\N	\N	\N	\N
9	inside	again	380	502	751	{determine}	\N	\N	\N	\N
10	nearly	senior	481	45	316	{and,voice}	\N	\N	\N	\N
11	point	without	663	175	173	{win}	\N	\N	\N	\N
12	speak	assume	13	790	205	{visit}	\N	\N	\N	\N
14	half	seat	471	932	276	{investment}	\N	\N	\N	\N
16	instead	upon	532	797	575	{hand}	\N	\N	\N	\N
17	likely	group	437	973	58	{card,discover}	\N	\N	\N	\N
18	standard	us	891	374	584	{speak}	\N	\N	\N	\N
19	green	newspaper	964	517	424	{current,could}	\N	\N	\N	\N
20	site	born	833	366	425	{attention,life}	\N	\N	\N	\N
21	pass	body	2	552	554	{kid,maintain}	\N	\N	\N	\N
22	water	those	470	615	29	{likely}	\N	\N	\N	\N
25	final	alone	34	862	967	{against}	\N	\N	\N	\N
27	type	exist	15	773	774	{try,past}	\N	\N	\N	\N
28	service	actually	256	276	113	{letter}	\N	\N	\N	\N
30	artist	individual	164	262	541	{into}	\N	\N	\N	\N
31	ball	product	673	280	664	{budget,dog}	\N	\N	\N	\N
34	hold	together	396	352	432	{person}	\N	\N	\N	\N
35	particular	wide	265	112	260	{sign}	\N	\N	\N	\N
37	why	shake	231	19	407	{in}	\N	\N	\N	\N
38	into	career	37	737	983	{whom}	\N	\N	\N	\N
40	born	season	558	853	226	{respond,word}	\N	\N	\N	\N
43	here	general	676	647	437	{stay}	\N	\N	\N	\N
44	show	capital	756	306	129	{stock}	\N	\N	\N	\N
45	soldier	character	897	49	314	{we}	\N	\N	\N	\N
46	live	lay	880	79	318	{adult,analysis}	\N	\N	\N	\N
48	realize	provide	134	9	575	{remember}	\N	\N	\N	\N
49	seem	design	605	840	223	{but,house}	\N	\N	\N	\N
50	might	Mr	176	848	889	{some}	\N	\N	\N	\N
53	drug	majority	606	199	505	{man}	\N	\N	\N	\N
54	by	common	961	682	400	{skin,share}	\N	\N	\N	\N
57	than	environmental	19	161	206	{special,news}	\N	\N	\N	\N
58	perform	pass	831	577	802	{find}	\N	\N	\N	\N
59	thing	rule	348	440	219	{network,adult}	\N	\N	\N	\N
60	system	officer	691	99	858	{challenge,you}	\N	\N	\N	\N
62	detail	guess	787	546	241	{by}	\N	\N	\N	\N
63	remember	attorney	743	42	87	{picture}	\N	\N	\N	\N
64	successful	produce	174	171	933	{should}	\N	\N	\N	\N
65	our	the	275	778	341	{adult,account}	\N	\N	\N	\N
66	house	leave	377	347	349	{field}	\N	\N	\N	\N
67	establish	detail	299	241	889	{heavy,tend}	\N	\N	\N	\N
69	guess	tree	329	41	417	{no}	\N	\N	\N	\N
71	management	color	849	129	350	{watch}	\N	\N	\N	\N
72	behind	difficult	630	602	801	{thousand,skin}	\N	\N	\N	\N
73	spend	three	79	585	564	{body}	\N	\N	\N	\N
74	position	not	580	84	976	{everybody,staff}	\N	\N	\N	\N
56	read	arrive	627	893	412	{knowledge,adult}	\N	\N	[{"price": "197", "ends_at": "among", "price_id": "760", "starts_at": "stuff"}]	\N
13	feeling	lay	415	527	353	{successful,add}	\N	\N	[{"price": "434", "ends_at": "campaign", "price_id": "347", "starts_at": "natural"}]	\N
15	live	market	393	803	878	{begin}	\N	\N	\N	33
24	method	born	882	94	818	{interesting,already}	\N	\N	\N	5
77	benefit	three	806	47	848	{third,employee}	\N	\N	\N	\N
79	true	reality	94	424	118	{shake}	\N	\N	\N	\N
80	trial	upon	193	246	805	{and,true}	\N	\N	\N	\N
81	once	young	166	119	462	{white}	\N	\N	\N	\N
82	child	market	698	248	163	{scene}	\N	\N	\N	\N
83	career	population	446	933	988	{also,fund}	\N	\N	\N	\N
84	religious	individual	826	994	556	{general,at}	\N	\N	\N	\N
86	likely	area	323	103	213	{figure,over}	\N	\N	\N	\N
88	evening	son	744	611	328	{hand,because}	\N	\N	\N	\N
89	voice	nothing	401	321	409	{rest}	\N	\N	\N	\N
90	situation	his	66	936	325	{pay,budget}	\N	\N	\N	\N
91	this	matter	115	257	221	{assume,strong}	\N	\N	\N	\N
92	since	doctor	678	365	266	{school}	\N	\N	\N	\N
94	small	social	253	370	84	{trade,international}	\N	\N	\N	\N
95	power	less	92	772	459	{over}	\N	\N	\N	\N
96	parent	sing	668	589	659	{discover,believe}	\N	\N	\N	\N
98	national	nor	43	336	192	{discuss,during}	\N	\N	\N	\N
99	clearly	over	812	868	593	{note,try}	\N	\N	\N	\N
100	scene	what	252	343	104	{budget}	\N	\N	\N	\N
104	avoid	dream	298	769	812	{figure,truth}	\N	\N	\N	\N
105	whose	describe	506	481	884	{hospital}	\N	\N	\N	\N
106	strong	card	104	514	797	{stuff,reach}	\N	\N	\N	\N
108	what	big	184	795	154	{late}	\N	\N	\N	\N
109	plan	pay	842	887	328	{stock,story}	\N	\N	\N	\N
110	strategy	own	110	727	527	{here,popular}	\N	\N	\N	\N
112	air	finish	559	933	740	{pick}	\N	\N	\N	\N
114	ever	compare	183	307	444	{scene}	\N	\N	\N	\N
116	significant	parent	259	797	66	{pattern,defense}	\N	\N	\N	\N
118	ball	charge	555	450	872	{yard,easy}	\N	\N	\N	\N
119	experience	me	12	406	857	{operation,worker}	\N	\N	\N	\N
120	despite	better	176	265	498	{nor}	\N	\N	\N	\N
121	contain	participant	813	662	956	{any,probably}	\N	\N	\N	\N
122	security	act	1000	585	20	{item}	\N	\N	\N	\N
123	can	Mrs	709	364	594	{actually}	\N	\N	\N	\N
124	although	civil	608	129	142	{eight,allow}	\N	\N	\N	\N
125	different	shoulder	849	284	408	{move,court}	\N	\N	\N	\N
126	base	usually	177	628	92	{challenge}	\N	\N	\N	\N
128	society	should	513	915	665	{there,property}	\N	\N	\N	\N
129	care	spend	953	703	655	{many}	\N	\N	\N	\N
130	accept	his	245	321	507	{team,professional}	\N	\N	\N	\N
131	east	exist	980	231	730	{society,major}	\N	\N	\N	\N
132	that	quite	346	574	626	{cup,include}	\N	\N	\N	\N
133	represent	best	996	662	225	{possible}	\N	\N	\N	\N
134	strong	oil	944	74	782	{likely,notice}	\N	\N	\N	\N
135	old	must	164	524	785	{concern}	\N	\N	\N	\N
136	long	reflect	320	306	710	{within,magazine}	\N	\N	\N	\N
137	technology	his	870	566	381	{same}	\N	\N	\N	\N
138	chair	long	719	719	755	{start,also}	\N	\N	\N	\N
140	animal	not	919	621	984	{capital,be}	\N	\N	\N	\N
142	upon	before	223	965	584	{share}	\N	\N	\N	\N
144	low	evening	394	528	866	{place}	\N	\N	\N	\N
150	street	future	995	872	392	{tax,which}	\N	\N	\N	\N
113	area	same	799	324	841	{business}	\N	\N	[{"price": "102", "ends_at": "reality", "price_id": "140", "starts_at": "support"}]	\N
146	today	behavior	828	262	644	{cause}	\N	\N	\N	79
87	discussion	although	41	28	11	{only,pay}	\N	\N	\N	49
78	go	might	13	629	687	{person}	\N	\N	\N	56
145	majority	expect	558	748	42	{indicate}	\N	\N	\N	50
115	position	be	50	732	883	{article}	\N	\N	\N	58
93	few	red	555	213	315	{bar}	\N	\N	\N	87
148	fish	eye	983	999	143	{hand}	\N	\N	\N	92
151	take	lose	407	169	932	{stuff,pay}	\N	\N	\N	\N
152	sometimes	see	449	130	638	{system,measure}	\N	\N	\N	\N
155	pick	left	677	303	285	{list}	\N	\N	\N	\N
157	board	central	983	195	542	{school,attention}	\N	\N	\N	\N
158	garden	level	593	22	32	{success}	\N	\N	\N	\N
159	hotel	final	856	267	212	{simply}	\N	\N	\N	\N
160	see	father	292	152	556	{point}	\N	\N	\N	\N
162	sister	popular	853	700	458	{build}	\N	\N	\N	\N
163	moment	police	559	366	503	{page,particularly}	\N	\N	\N	\N
164	nice	happy	877	125	788	{authority}	\N	\N	\N	\N
165	have	power	585	901	393	{blood}	\N	\N	\N	\N
166	anyone	into	291	831	111	{rock}	\N	\N	\N	\N
168	surface	Mr	559	304	989	{employee}	\N	\N	\N	\N
169	between	value	77	513	383	{discover,note}	\N	\N	\N	\N
171	task	provide	777	542	332	{oil}	\N	\N	\N	\N
172	outside	doctor	127	453	736	{certain,case}	\N	\N	\N	\N
173	score	today	359	313	553	{keep,anything}	\N	\N	\N	\N
174	school	however	348	802	749	{property,later}	\N	\N	\N	\N
176	always	prepare	392	209	571	{stage}	\N	\N	\N	\N
177	quickly	face	285	651	613	{not}	\N	\N	\N	\N
178	style	edge	946	473	616	{finish,south}	\N	\N	\N	\N
181	space	company	369	539	4	{hope,occur}	\N	\N	\N	\N
182	process	company	594	437	994	{size,wide}	\N	\N	\N	\N
183	add	visit	345	882	637	{approach}	\N	\N	\N	\N
184	art	should	505	764	254	{two,week}	\N	\N	\N	\N
185	small	senior	645	22	417	{knowledge}	\N	\N	\N	\N
186	hundred	final	649	798	960	{next,fund}	\N	\N	\N	\N
189	key	war	358	935	271	{quickly,cause}	\N	\N	\N	\N
190	growth	car	895	702	558	{brother,involve}	\N	\N	\N	\N
191	important	study	156	474	853	{conference,might}	\N	\N	\N	\N
192	door	trial	497	174	479	{garden}	\N	\N	\N	\N
193	dream	too	278	523	101	{news,short}	\N	\N	\N	\N
194	message	cold	72	364	69	{continue,personal}	\N	\N	\N	\N
195	never	yard	21	169	520	{his}	\N	\N	\N	\N
198	hard	best	243	908	342	{want,do}	\N	\N	\N	\N
199	particularly	worry	71	77	716	{center,avoid}	\N	\N	\N	\N
200	water	enjoy	480	524	572	{whatever}	\N	\N	\N	\N
1201	product	probably	802	144	451	{yeah}	\N	\N	\N	\N
1202	office	pull	159	924	400	{nature,loss}	\N	\N	\N	\N
1204	despite	score	726	232	683	{ground}	\N	\N	\N	\N
1205	shake	down	293	607	794	{country,sure}	\N	\N	\N	\N
1207	agency	report	677	844	633	{song,policy}	\N	\N	\N	\N
1208	describe	trouble	925	687	861	{may}	\N	\N	\N	\N
1209	against	her	76	1	877	{feeling}	\N	\N	\N	\N
1210	knowledge	play	683	77	837	{production}	\N	\N	\N	\N
1211	he	nice	899	882	135	{certainly,indeed}	\N	\N	\N	\N
1213	on	realize	346	699	286	{somebody,by}	\N	\N	\N	\N
1215	eight	follow	420	83	363	{there}	\N	\N	\N	\N
1216	miss	add	433	462	852	{possible,science}	\N	\N	\N	\N
1218	whatever	expect	927	677	58	{expert}	\N	\N	\N	\N
1219	system	lose	418	786	929	{product}	\N	\N	\N	\N
1220	treatment	where	207	70	889	{everyone}	\N	\N	\N	\N
1222	Mr	wrong	335	717	824	{popular,wait}	\N	\N	\N	\N
1223	page	amount	675	318	808	{specific}	\N	\N	\N	\N
1224	special	yeah	464	54	45	{laugh,current}	\N	\N	\N	\N
1225	up	artist	164	783	25	{Republican,news}	\N	\N	\N	\N
1206	public	rest	959	339	157	{keep}	\N	\N	[{"price": "620", "ends_at": "participant", "price_id": "288", "starts_at": "choice"}]	\N
196	rest	billion	708	96	412	{Republican,simple}	\N	\N	[{"price": "24", "ends_at": "vote", "price_id": "492", "starts_at": "goal"}]	\N
180	morning	others	720	175	461	{forward}	\N	\N	\N	37
154	pay	right	616	547	419	{risk}	\N	\N	\N	27
1226	ability	next	25	865	152	{decide,most}	\N	\N	\N	\N
1227	western	light	110	240	263	{seat,development}	\N	\N	\N	\N
1228	gun	race	512	197	945	{six}	\N	\N	\N	\N
1230	allow	north	659	864	242	{trouble}	\N	\N	\N	\N
1232	term	inside	607	632	472	{point}	\N	\N	\N	\N
1233	member	bit	4	960	836	{everybody}	\N	\N	\N	\N
1234	specific	itself	582	375	668	{begin}	\N	\N	\N	\N
1237	often	history	559	139	945	{baby,hold}	\N	\N	\N	\N
1238	simple	include	143	305	847	{sport}	\N	\N	\N	\N
1239	pattern	play	307	536	103	{entire}	\N	\N	\N	\N
1240	wonder	bank	451	410	656	{each}	\N	\N	\N	\N
1242	star	buy	489	989	658	{address}	\N	\N	\N	\N
1243	fast	somebody	898	301	711	{magazine,himself}	\N	\N	\N	\N
1244	vote	hotel	481	378	185	{fire}	\N	\N	\N	\N
1245	medical	people	489	893	562	{gas}	\N	\N	\N	\N
1246	popular	business	532	756	806	{real}	\N	\N	\N	\N
1247	range	simply	142	444	716	{fast}	\N	\N	\N	\N
1248	first	enjoy	735	374	504	{skin}	\N	\N	\N	\N
1251	water	Democrat	218	443	340	{bring,wear}	\N	\N	\N	\N
1252	argue	century	461	453	838	{specific,structure}	\N	\N	\N	\N
1254	able	word	381	41	209	{usually,wish}	\N	\N	\N	\N
1256	address	view	807	779	905	{enjoy,phone}	\N	\N	\N	\N
1257	ground	decision	859	205	336	{mean}	\N	\N	\N	\N
1258	up	administration	855	6	891	{away}	\N	\N	\N	\N
1259	money	ok	204	964	736	{season,prove}	\N	\N	\N	\N
1260	participant	agent	200	311	835	{see,thus}	\N	\N	\N	\N
1261	fire	hundred	676	798	384	{charge}	\N	\N	\N	\N
1262	question	on	29	695	913	{everybody}	\N	\N	\N	\N
1263	prevent	performance	611	285	313	{blue}	\N	\N	\N	\N
1264	system	notice	818	682	718	{back}	\N	\N	\N	\N
1265	technology	serious	903	16	357	{fish}	\N	\N	\N	\N
1267	person	sea	863	503	467	{hit}	\N	\N	\N	\N
1270	answer	including	203	438	144	{media,we}	\N	\N	\N	\N
1271	successful	pattern	411	602	361	{recognize}	\N	\N	\N	\N
1273	hand	continue	821	871	848	{not,house}	\N	\N	\N	\N
1274	reality	same	295	720	382	{participant,painting}	\N	\N	\N	\N
1275	third	main	995	947	384	{nor}	\N	\N	\N	\N
1276	its	assume	955	876	118	{apply,she}	\N	\N	\N	\N
1278	quickly	clear	686	864	780	{nothing,television}	\N	\N	\N	\N
1279	sign	responsibility	284	54	504	{help,article}	\N	\N	\N	\N
1280	growth	down	855	722	439	{wife,office}	\N	\N	\N	\N
1282	identify	available	175	524	43	{store,firm}	\N	\N	\N	\N
1285	authority	piece	431	432	580	{arrive,personal}	\N	\N	\N	\N
1286	direction	vote	622	743	133	{wife}	\N	\N	\N	\N
1287	near	win	265	246	720	{gas,strong}	\N	\N	\N	\N
1290	less	middle	313	523	142	{majority}	\N	\N	\N	\N
1291	way	old	422	38	479	{blood,address}	\N	\N	\N	\N
1295	personal	entire	832	888	421	{would}	\N	\N	\N	\N
1297	ability	door	299	266	334	{language}	\N	\N	\N	\N
1298	west	next	144	557	57	{six}	\N	\N	\N	\N
1255	pull	degree	134	847	954	{professional}	\N	[{"barcode": "well", "variant_id": "496", "price_override": "231", "is_active_variant": "401"}]	\N	\N
1292	million	or	875	921	531	{force}	\N	\N	[{"price": "164", "ends_at": "civil", "price_id": "660", "starts_at": "word"}]	\N
1231	peace	know	787	696	180	{surface}	\N	\N	\N	70
1293	look	firm	397	109	706	{civil,show}	\N	\N	\N	74
1281	leg	treat	596	906	576	{east}	\N	\N	\N	61
1277	open	add	309	981	280	{TV}	\N	\N	\N	19
1401	wonder	might	204	202	186	{prevent,idea}	\N	\N	\N	\N
1403	manage	once	402	643	817	{hit,without}	\N	\N	\N	\N
1405	discussion	guess	912	958	408	{program}	\N	\N	\N	\N
1406	issue	rise	920	833	977	{watch,read}	\N	\N	\N	\N
1407	member	name	619	366	237	{once}	\N	\N	\N	\N
1408	against	true	810	853	554	{hour}	\N	\N	\N	\N
1410	part	language	948	396	153	{pressure,return}	\N	\N	\N	\N
1414	entire	four	952	1000	664	{never}	\N	\N	\N	\N
1415	south	give	879	471	292	{management}	\N	\N	\N	\N
1417	west	kid	767	80	619	{hear}	\N	\N	\N	\N
1418	stand	popular	874	208	969	{wide}	\N	\N	\N	\N
1419	ahead	her	910	32	447	{this}	\N	\N	\N	\N
1421	unit	hard	54	458	634	{my,attack}	\N	\N	\N	\N
1422	window	fly	725	294	593	{serve}	\N	\N	\N	\N
1425	dog	miss	236	527	325	{public}	\N	\N	\N	\N
1428	hope	man	118	19	979	{foreign}	\N	\N	\N	\N
1431	example	professor	36	31	268	{several}	\N	\N	\N	\N
1432	several	common	32	743	299	{become,body}	\N	\N	\N	\N
1433	exist	art	738	740	613	{unit,star}	\N	\N	\N	\N
1435	of	course	180	360	736	{try}	\N	\N	\N	\N
1436	participant	suggest	805	379	148	{collection,together}	\N	\N	\N	\N
1437	person	certainly	199	937	473	{look,appear}	\N	\N	\N	\N
1438	party	successful	459	356	630	{perform}	\N	\N	\N	\N
1440	blood	though	91	749	320	{understand,president}	\N	\N	\N	\N
1441	real	break	84	125	602	{take,build}	\N	\N	\N	\N
1442	staff	cold	946	256	570	{around,black}	\N	\N	\N	\N
1443	study	authority	793	905	936	{into,set}	\N	\N	\N	\N
1444	another	matter	829	932	128	{general}	\N	\N	\N	\N
1446	relate	concern	969	140	794	{idea}	\N	\N	\N	\N
1447	board	take	856	82	445	{accept}	\N	\N	\N	\N
1448	hotel	lay	391	158	585	{space}	\N	\N	\N	\N
1449	more	although	948	309	263	{matter,others}	\N	\N	\N	\N
1452	research	reveal	494	675	920	{natural,sure}	\N	\N	\N	\N
1456	woman	world	949	677	413	{race,morning}	\N	\N	\N	\N
1457	international	television	330	828	111	{friend}	\N	\N	\N	\N
1459	several	range	647	333	578	{piece}	\N	\N	\N	\N
1460	from	want	57	727	470	{according}	\N	\N	\N	\N
1461	describe	our	466	511	522	{range}	\N	\N	\N	\N
1462	yet	now	822	880	285	{large,sure}	\N	\N	\N	\N
1464	industry	in	996	326	229	{environment,always}	\N	\N	\N	\N
1466	give	finally	875	426	217	{during,blue}	\N	\N	\N	\N
1469	discussion	hear	143	404	355	{ground,alone}	\N	\N	\N	\N
1470	agent	color	617	150	750	{send}	\N	\N	\N	\N
1472	and	easy	773	988	205	{more,use}	\N	\N	\N	\N
1474	edge	news	259	571	993	{whose}	\N	\N	\N	\N
1427	degree	raise	273	656	430	{adult,front}	\N	[{"barcode": "best", "variant_id": "564", "price_override": "688", "is_active_variant": "590"}]	\N	\N
1467	just	machine	799	137	525	{difficult}	\N	[{"barcode": "never", "variant_id": "882", "price_override": "128", "is_active_variant": "946"}]	\N	\N
1445	drug	large	733	417	217	{agree,recognize}	\N	\N	[{"price": "441", "ends_at": "keep", "price_id": "172", "starts_at": "start"}]	\N
1430	family	business	59	336	163	{in}	\N	\N	\N	4
1434	everyone	piece	346	602	92	{above}	\N	\N	\N	51
1475	people	eye	542	773	537	{join,hospital}	\N	\N	[{"price": "705", "ends_at": "forget", "price_id": "291", "starts_at": "religious"}]	66
1479	tonight	economic	414	936	55	{through,break}	\N	\N	\N	\N
1484	while	discover	248	420	141	{someone}	\N	\N	\N	\N
1485	sort	job	700	942	411	{will}	\N	\N	\N	\N
1486	ready	bad	253	193	582	{walk}	\N	\N	\N	\N
1490	once	at	884	550	775	{nature,quality}	\N	\N	\N	\N
1494	theory	those	132	366	642	{American,night}	\N	\N	\N	\N
1495	table	Mrs	95	475	528	{no,which}	\N	\N	\N	\N
1496	once	ever	387	797	270	{toward}	\N	\N	\N	\N
1497	seat	community	469	479	681	{car}	\N	\N	\N	\N
1499	cultural	human	804	964	541	{old,rule}	\N	\N	\N	\N
1500	hold	over	434	948	243	{admit,investment}	\N	\N	\N	\N
1802	window	seven	596	230	534	{bag}	\N	\N	\N	\N
1803	clear	attention	804	462	235	{foreign}	\N	\N	\N	\N
1805	eat	chance	258	591	527	{compare,get}	\N	\N	\N	\N
1806	want	red	841	21	342	{yes,argue}	\N	\N	\N	\N
1809	relate	prove	420	757	858	{bar}	\N	\N	\N	\N
1811	really	four	957	122	859	{knowledge,six}	\N	\N	\N	\N
1812	rich	young	388	873	33	{table}	\N	\N	\N	\N
1813	set	cold	558	353	77	{view,data}	\N	\N	\N	\N
1814	certainly	outside	1000	692	482	{blue,message}	\N	\N	\N	\N
1816	recently	stuff	410	44	268	{outside,word}	\N	\N	\N	\N
1817	body	party	692	402	395	{plan,rather}	\N	\N	\N	\N
1818	sit	much	16	731	693	{consider}	\N	\N	\N	\N
1819	star	then	551	134	76	{difficult,may}	\N	\N	\N	\N
1821	cut	south	202	414	651	{hand,environment}	\N	\N	\N	\N
1823	father	walk	23	795	45	{city,course}	\N	\N	\N	\N
1824	so	possible	759	429	134	{recent}	\N	\N	\N	\N
1825	lose	back	762	194	517	{question,authority}	\N	\N	\N	\N
1826	challenge	buy	846	291	903	{second}	\N	\N	\N	\N
1828	political	yard	479	163	305	{include}	\N	\N	\N	\N
1829	reason	position	666	308	600	{beyond,official}	\N	\N	\N	\N
1830	practice	adult	33	630	537	{treatment,although}	\N	\N	\N	\N
1831	vote	move	301	33	500	{mother}	\N	\N	\N	\N
1832	explain	law	960	168	759	{fish,watch}	\N	\N	\N	\N
1836	join	southern	356	205	351	{anything}	\N	\N	\N	\N
1837	break	see	251	142	967	{some}	\N	\N	\N	\N
1840	stuff	rise	22	395	592	{seven,still}	\N	\N	\N	\N
1841	game	poor	241	754	539	{produce}	\N	\N	\N	\N
1842	charge	service	564	788	939	{paper}	\N	\N	\N	\N
1844	history	maybe	983	571	9	{expect,society}	\N	\N	\N	\N
1846	condition	school	136	448	839	{dream}	\N	\N	\N	\N
1847	fast	rest	113	582	116	{third,ready}	\N	\N	\N	\N
1848	best	ready	180	917	361	{choice,single}	\N	\N	\N	\N
1807	shake	nearly	250	442	157	{weight,throw}	\N	[{"barcode": "high", "variant_id": "876", "price_override": "316", "is_active_variant": "284"}]	\N	\N
1477	region	level	149	175	626	{health,soldier}	\N	\N	[{"price": "592", "ends_at": "one", "price_id": "386", "starts_at": "would"}]	\N
1482	beautiful	picture	626	696	676	{statement,project}	\N	\N	\N	54
1801	onto	before	535	732	801	{maintain,hear}	\N	\N	\N	56
1838	deal	western	857	42	97	{allow}	\N	\N	\N	83
1850	front	second	905	603	882	{high,message}	\N	\N	\N	\N
1851	despite	year	656	718	246	{program,force}	\N	\N	\N	\N
1852	pressure	sing	73	734	878	{treat,behind}	\N	\N	\N	\N
1854	other	much	270	793	932	{week}	\N	\N	\N	\N
1855	public	year	653	843	135	{consumer}	\N	\N	\N	\N
1856	two	song	474	366	133	{white}	\N	\N	\N	\N
1859	few	power	178	977	574	{bed,require}	\N	\N	\N	\N
1860	action	only	829	684	697	{compare,world}	\N	\N	\N	\N
1863	life	dog	841	95	776	{weight,bad}	\N	\N	\N	\N
1864	point	style	833	249	976	{field,traditional}	\N	\N	\N	\N
1865	year	test	97	960	926	{recently,official}	\N	\N	\N	\N
1866	place	meeting	249	731	68	{training,bill}	\N	\N	\N	\N
1867	believe	dog	973	693	548	{time,behind}	\N	\N	\N	\N
1868	road	add	45	922	584	{heart,hundred}	\N	\N	\N	\N
1870	quickly	investment	395	676	99	{language}	\N	\N	\N	\N
1872	choose	employee	474	112	222	{stock,study}	\N	\N	\N	\N
1873	deal	wear	69	525	142	{street,full}	\N	\N	\N	\N
1877	or	size	124	664	137	{understand}	\N	\N	\N	\N
1878	even	stock	655	960	406	{summer}	\N	\N	\N	\N
1879	ground	cultural	187	230	818	{hour,then}	\N	\N	\N	\N
1880	final	southern	835	874	878	{card}	\N	\N	\N	\N
1881	newspaper	future	51	957	617	{Congress}	\N	\N	\N	\N
1882	build	father	7	610	713	{happen}	\N	\N	\N	\N
1885	defense	natural	305	153	870	{bit,particular}	\N	\N	\N	\N
1886	floor	heavy	381	633	388	{drive}	\N	\N	\N	\N
1887	find	staff	906	832	626	{let}	\N	\N	\N	\N
1890	relate	star	514	270	480	{south}	\N	\N	\N	\N
1891	direction	success	903	817	85	{I}	\N	\N	\N	\N
1893	gas	myself	941	255	809	{surface}	\N	\N	\N	\N
1894	most	enjoy	733	880	559	{thousand,about}	\N	\N	\N	\N
1898	actually	take	518	937	236	{ten}	\N	\N	\N	\N
1899	very	list	58	381	174	{conference}	\N	\N	\N	\N
1900	next	step	442	838	552	{who}	\N	\N	\N	\N
1839	consumer	century	315	324	505	{reality,economic}	[{"url": "adult", "alt_text": "building", "image_id": "406", "sort_order": "489"}]	\N	\N	\N
1808	feeling	listen	70	488	906	{speak,financial}	[{"url": "level", "alt_text": "news", "image_id": "258", "sort_order": "900"}]	\N	\N	\N
1236	different	table	308	238	386	{close,daughter}	[{"url": "at", "alt_text": "true", "image_id": "993", "sort_order": "729"}]	\N	\N	\N
1861	second	road	670	741	321	{word,experience}	[{"url": "walk", "alt_text": "those", "image_id": "159", "sort_order": "537"}]	\N	\N	\N
55	serious	computer	517	512	18	{evidence,sing}	[{"url": "there", "alt_text": "admit", "image_id": "473", "sort_order": "593"}]	\N	\N	\N
1883	so	light	13	832	935	{carry,statement}	\N	\N	\N	3
1471	health	recently	783	989	703	{environmental}	[{"url": "yes", "alt_text": "future", "image_id": "330", "sort_order": "892"}]	\N	\N	\N
1897	poor	she	179	421	132	{live,available}	[{"url": "spring", "alt_text": "item", "image_id": "235", "sort_order": "719"}]	\N	\N	\N
1296	threat	who	881	269	616	{might}	[{"url": "world", "alt_text": "bed", "image_id": "252", "sort_order": "522"}]	\N	\N	\N
101	participant	society	251	226	21	{Republican}	[{"url": "data", "alt_text": "idea", "image_id": "595", "sort_order": "38"}]	\N	\N	\N
1858	able	tell	458	505	892	{particular}	\N	[{"barcode": "whom", "variant_id": "602", "price_override": "347", "is_active_variant": "622"}]	\N	\N
1892	coach	she	221	953	616	{often}	\N	[{"barcode": "quickly", "variant_id": "326", "price_override": "77", "is_active_variant": "840"}]	\N	\N
1871	about	enough	846	3	588	{Democrat}	\N	\N	[{"price": "228", "ends_at": "middle", "price_id": "666", "starts_at": "both"}]	\N
1875	challenge	your	528	938	279	{sort,group}	[{"url": "become", "alt_text": "close", "image_id": "56", "sort_order": "63"}]	\N	[{"price": "458", "ends_at": "billion", "price_id": "767", "starts_at": "part"}]	\N
1896	community	prepare	461	33	882	{rich}	\N	\N	\N	26
156	keep	most	388	768	573	{offer}	[{"url": "window", "alt_text": "range", "image_id": "694", "sort_order": "769"}]	\N	\N	43
1853	positive	remember	251	672	814	{meeting}	\N	\N	\N	54
1889	American	until	740	198	170	{plant}	\N	\N	\N	22
1283	necessary	make	263	197	323	{instead}	[{"url": "ball", "alt_text": "media", "image_id": "206", "sort_order": "439"}]	\N	\N	\N
1468	yet	box	904	398	30	{simply,son}	[{"url": "professor", "alt_text": "front", "image_id": "174", "sort_order": "581"}]	\N	\N	\N
1409	air	want	466	638	129	{why,blood}	[{"url": "plant", "alt_text": "available", "image_id": "207", "sort_order": "338"}]	\N	\N	\N
1412	rich	challenge	897	147	193	{authority,gun}	[{"url": "meeting", "alt_text": "sometimes", "image_id": "175", "sort_order": "906"}]	\N	\N	\N
75	enjoy	serious	374	913	303	{form}	[{"url": "wait", "alt_text": "miss", "image_id": "52", "sort_order": "392"}]	\N	\N	\N
1453	let	commercial	909	218	601	{say,see}	[{"url": "necessary", "alt_text": "fight", "image_id": "89", "sort_order": "765"}]	\N	\N	\N
1874	son	conference	189	449	870	{production}	[{"url": "section", "alt_text": "two", "image_id": "961", "sort_order": "709"}]	\N	\N	\N
1203	read	among	643	690	64	{people,hotel}	\N	[{"barcode": "both", "variant_id": "535", "price_override": "863", "is_active_variant": "230"}]	\N	\N
32	Congress	turn	466	720	330	{reach,fill}	\N	[{"barcode": "threat", "variant_id": "170", "price_override": "968", "is_active_variant": "843"}]	\N	\N
97	everybody	full	964	233	400	{data,sort}	\N	[{"barcode": "move", "variant_id": "559", "price_override": "176", "is_active_variant": "921"}]	\N	\N
3	six	kid	604	874	36	{head,sort}	\N	[{"barcode": "her", "variant_id": "805", "price_override": "475", "is_active_variant": "616"}]	\N	\N
1272	suggest	out	39	981	874	{learn,very}	[{"url": "letter", "alt_text": "play", "image_id": "737", "sort_order": "938"}]	[{"barcode": "develop", "variant_id": "105", "price_override": "345", "is_active_variant": "349"}]	\N	\N
1489	opportunity	result	54	952	526	{million,far}	\N	[{"barcode": "doctor", "variant_id": "288", "price_override": "404", "is_active_variant": "340"}]	\N	\N
1458	break	such	209	951	383	{my,deal}	\N	[{"barcode": "time", "variant_id": "372", "price_override": "234", "is_active_variant": "14"}]	\N	\N
1463	issue	soldier	631	160	291	{room}	\N	[{"barcode": "red", "variant_id": "81", "price_override": "30", "is_active_variant": "584"}]	\N	\N
1404	list	the	764	787	186	{daughter,situation}	[{"url": "business", "alt_text": "field", "image_id": "872", "sort_order": "44"}]	[{"barcode": "common", "variant_id": "363", "price_override": "396", "is_active_variant": "120"}]	\N	\N
1483	benefit	front	856	365	731	{member,life}	\N	[{"barcode": "bill", "variant_id": "394", "price_override": "516", "is_active_variant": "160"}]	\N	\N
117	human	that	828	441	563	{fund,resource}	\N	\N	[{"price": "72", "ends_at": "usually", "price_id": "656", "starts_at": "color"}]	\N
102	require	sign	412	75	275	{cup}	\N	\N	[{"price": "102", "ends_at": "everything", "price_id": "540", "starts_at": "appear"}]	\N
1402	series	push	74	263	969	{result}	\N	\N	[{"price": "777", "ends_at": "story", "price_id": "398", "starts_at": "lawyer"}]	\N
141	home	represent	181	160	257	{generation,until}	\N	\N	[{"price": "810", "ends_at": "successful", "price_id": "335", "starts_at": "require"}, {"price": "403", "ends_at": "evening", "price_id": "571", "starts_at": "consumer"}]	\N
1288	science	prove	585	896	189	{usually,task}	\N	\N	[{"price": "59", "ends_at": "and", "price_id": "756", "starts_at": "draw"}]	\N
1857	Mrs	movement	312	754	43	{talk,daughter}	\N	\N	[{"price": "993", "ends_at": "line", "price_id": "446", "starts_at": "knowledge"}]	\N
1869	again	environment	945	910	531	{purpose}	\N	\N	[{"price": "9", "ends_at": "major", "price_id": "765", "starts_at": "wear"}]	\N
149	fill	near	456	872	947	{happy}	\N	\N	[{"price": "221", "ends_at": "similar", "price_id": "997", "starts_at": "party"}]	\N
1411	there	coach	352	257	855	{your}	[{"url": "both", "alt_text": "meeting", "image_id": "72", "sort_order": "576"}]	\N	[{"price": "299", "ends_at": "prevent", "price_id": "667", "starts_at": "gun"}]	\N
1876	indeed	eight	826	187	384	{speech}	\N	\N	[{"price": "794", "ends_at": "use", "price_id": "47", "starts_at": "reality"}]	\N
111	certainly	race	130	916	212	{student}	\N	\N	[{"price": "152", "ends_at": "consider", "price_id": "839", "starts_at": "world"}]	60
1498	benefit	kind	270	721	967	{college}	\N	\N	\N	86
1804	add	hard	864	784	90	{news,speech}	\N	\N	\N	37
1492	meeting	none	939	234	359	{individual,group}	\N	\N	\N	45
1217	cell	week	515	945	105	{most}	\N	[{"barcode": "must", "variant_id": "274", "price_override": "640", "is_active_variant": "390"}]	[{"price": "319", "ends_at": "woman", "price_id": "229", "starts_at": "agree"}]	62
47	picture	there	762	163	427	{relate,look}	\N	\N	\N	35
1439	less	whose	253	239	98	{nation}	\N	\N	[{"price": "74", "ends_at": "national", "price_id": "785", "starts_at": "long"}]	52
1488	direction	director	925	790	214	{collection,over}	\N	\N	\N	23
1416	real	bad	537	772	936	{sister}	\N	\N	\N	14
1212	letter	nice	63	214	879	{model,sing}	\N	\N	\N	48
161	and	decision	280	319	600	{church,cover}	\N	\N	\N	59
1450	training	director	880	396	121	{Mr}	\N	\N	\N	91
1491	wish	participant	358	676	725	{now,identify}	\N	\N	\N	34
7	collection	garden	89	450	680	{common}	\N	\N	\N	18
39	continue	peace	457	722	519	{bank,ahead}	\N	\N	\N	88
1845	five	name	420	813	398	{star}	\N	\N	\N	86
1268	pay	space	995	232	614	{forget,explain}	\N	\N	\N	96
1473	should	stop	485	388	791	{would,grow}	\N	\N	\N	72
1249	road	nothing	50	252	851	{cup}	\N	\N	\N	87
51	ball	scene	388	206	356	{and}	\N	\N	\N	7
61	sometimes	specific	955	561	353	{interesting,learn}	\N	\N	\N	82
1221	senior	court	467	910	527	{pass}	\N	\N	\N	3
1455	southern	business	976	653	201	{action}	\N	\N	\N	4
188	forget	resource	786	76	835	{move}	\N	\N	\N	98
1424	team	feel	250	117	464	{coach,memory}	\N	\N	\N	31
197	claim	speak	620	312	214	{high}	\N	\N	\N	76
1827	simply	company	561	44	424	{them}	\N	\N	\N	26
170	know	story	448	516	694	{car,wrong}	\N	\N	\N	34
33	product	color	486	117	25	{forget,dog}	\N	\N	\N	23
1843	method	traditional	428	567	396	{drop}	\N	\N	\N	95
1269	cold	yourself	64	85	248	{dog}	\N	\N	\N	53
36	white	away	989	621	443	{star}	\N	\N	\N	84
107	blue	story	79	522	973	{prove}	\N	\N	\N	5
1493	education	minute	74	231	930	{thing,city}	\N	\N	\N	25
1481	possible	the	228	925	346	{type,her}	\N	\N	\N	78
143	hot	learn	507	698	404	{goal,other}	\N	\N	\N	92
1849	technology	power	510	788	894	{matter}	\N	\N	\N	99
1822	while	source	446	27	820	{house,picture}	\N	\N	\N	3
1810	sport	defense	722	126	930	{hair,hot}	\N	\N	\N	66
1294	once	catch	424	475	111	{join,yard}	\N	\N	\N	69
1834	daughter	hour	271	835	460	{catch}	\N	\N	\N	35
1289	change	find	841	436	18	{activity}	\N	\N	\N	2
1299	land	country	324	760	100	{thought}	\N	\N	\N	15
52	south	record	211	588	691	{film,water}	\N	\N	\N	82
167	resource	water	121	583	766	{center}	\N	\N	\N	52
1413	interesting	term	219	642	7	{myself}	\N	\N	\N	62
68	without	hear	139	594	565	{huge}	\N	\N	\N	41
147	identify	all	274	755	935	{know}	\N	\N	\N	60
41	compare	watch	229	537	665	{risk}	\N	\N	\N	98
23	create	during	651	182	564	{matter}	\N	[{"barcode": "task", "variant_id": "479", "price_override": "647", "is_active_variant": "864"}]	\N	98
1454	floor	much	154	643	275	{a,after}	\N	\N	\N	54
127	do	alone	498	8	182	{paper,scientist}	\N	[{"barcode": "down", "variant_id": "856", "price_override": "402", "is_active_variant": "115"}]	\N	24
187	make	project	802	277	867	{purpose}	\N	\N	\N	73
70	take	least	390	887	808	{without}	\N	\N	\N	70
5	activity	to	425	681	178	{power,staff}	\N	\N	\N	44
1266	conference	think	712	580	769	{tree,book}	[{"url": "family", "alt_text": "another", "image_id": "304", "sort_order": "155"}]	\N	\N	89
1476	fact	guess	25	998	391	{right,hotel}	[{"url": "study", "alt_text": "why", "image_id": "848", "sort_order": "792"}]	\N	\N	44
1478	food	choice	102	417	117	{west,voice}	\N	\N	\N	95
26	teacher	billion	86	889	18	{story,kitchen}	\N	\N	\N	24
1451	bank	soon	912	676	369	{do,very}	\N	\N	\N	68
1241	growth	there	32	988	832	{light,career}	\N	\N	\N	42
1300	usually	just	310	762	423	{feel}	\N	\N	\N	83
1820	while	decade	414	215	110	{road,paper}	\N	\N	\N	29
179	whether	less	960	763	730	{high,stay}	\N	\N	\N	71
85	into	medical	564	260	729	{keep,thank}	\N	\N	\N	56
1429	various	street	937	380	514	{tough}	\N	[{"barcode": "story", "variant_id": "478", "price_override": "491", "is_active_variant": "507"}]	\N	1
76	few	born	469	919	284	{friend}	\N	\N	\N	89
1250	international	believe	992	372	69	{industry}	\N	\N	\N	41
1487	agent	wish	581	348	192	{join}	\N	\N	\N	64
1214	agree	stage	206	846	703	{together}	\N	[{"barcode": "themselves", "variant_id": "414", "price_override": "175", "is_active_variant": "732"}]	\N	9
29	alone	attack	353	298	72	{collection}	\N	\N	\N	10
1426	interest	east	687	314	959	{else}	\N	\N	\N	74
153	history	require	983	218	123	{find,phone}	\N	\N	\N	50
1229	accept	indicate	135	293	921	{admit}	\N	\N	[{"price": "509", "ends_at": "cold", "price_id": "387", "starts_at": "father"}]	59
1253	away	your	902	673	610	{himself,area}	\N	\N	\N	45
1895	concern	environmental	534	535	20	{worker}	\N	\N	\N	76
1835	series	quite	431	36	303	{themselves}	\N	\N	\N	17
1833	wait	voice	954	720	646	{both,trip}	\N	\N	\N	21
1420	behavior	every	176	451	975	{pretty,government}	\N	\N	\N	48
175	father	center	116	664	940	{responsibility,black}	\N	\N	\N	30
1862	agency	bar	285	163	367	{identify,serious}	\N	\N	\N	60
139	including	prepare	609	88	877	{southern}	\N	\N	\N	19
42	newspaper	one	405	692	590	{million,argue}	\N	[{"barcode": "talk", "variant_id": "910", "price_override": "262", "is_active_variant": "476"}]	\N	29
1815	artist	office	765	687	661	{big}	\N	\N	\N	17
1235	statement	later	277	836	98	{both}	\N	\N	\N	44
1888	threat	investment	348	9	433	{him,increase}	\N	\N	\N	58
103	case	interesting	747	77	23	{green}	\N	\N	\N	85
1884	strong	collection	711	197	630	{skin,dinner}	\N	\N	\N	59
1480	recent	space	84	962	578	{blue}	\N	\N	\N	26
1284	without	speech	759	115	628	{democratic}	\N	\N	\N	78
1423	movie	conference	995	557	968	{more}	\N	\N	\N	58
1465	note	former	321	202	778	{yes}	\N	\N	\N	74
\.


--
-- Data for Name: relation_10; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_10 (phone_id, carrier_lock, single_bundle_phone_bundled_phone_phone_id) FROM stdin;
1001	look	\N
1002	eight	\N
1003	receive	\N
1004	only	\N
1005	manage	\N
1006	certainly	\N
1007	gun	\N
1008	hope	\N
1010	girl	\N
1011	PM	\N
1013	garden	\N
1014	future	\N
1015	war	\N
1016	see	\N
1018	sit	\N
1019	but	\N
1021	wind	\N
1022	season	\N
1023	front	\N
1024	few	\N
1025	take	\N
1026	poor	\N
1027	industry	\N
1028	parent	\N
1029	difficult	\N
1030	head	\N
1032	may	\N
1033	couple	\N
1034	exactly	\N
1035	throughout	\N
1036	only	\N
1037	project	\N
1039	become	\N
1040	activity	\N
1041	there	\N
1042	month	\N
1043	sometimes	\N
1045	water	\N
1046	follow	\N
1047	statement	\N
1048	development	\N
1049	protect	\N
1050	war	\N
1051	without	\N
1052	age	\N
1053	cold	\N
1054	require	\N
1055	able	\N
1056	sound	\N
1057	write	\N
1058	whom	\N
1059	parent	\N
1060	black	\N
1061	follow	\N
1062	wish	\N
1063	usually	\N
1064	exist	\N
1065	adult	\N
1066	language	\N
1067	within	\N
1068	call	\N
1069	partner	\N
1070	successful	\N
1071	catch	\N
1072	reflect	\N
1073	reveal	\N
1074	finally	\N
1075	structure	\N
1076	Mr	\N
1077	century	\N
1078	close	\N
1080	audience	\N
1081	reach	\N
1082	two	\N
1084	sometimes	\N
1086	option	\N
1087	Congress	\N
1088	peace	\N
1089	happen	\N
1090	staff	\N
1091	light	\N
1093	just	\N
1094	daughter	\N
1095	support	\N
1096	difficult	\N
1098	audience	\N
1099	should	\N
1100	interview	\N
1009	few	1024
1012	environment	1004
1017	summer	1086
1020	though	1071
1031	several	1005
1038	we	1097
1044	soon	1010
1079	fall	1092
1083	today	1040
1085	fine	1055
1092	any	1022
1097	you	1093
\.


--
-- Data for Name: relation_11; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_11 (appliance_id, energy_rating) FROM stdin;
1201	example
1202	school
1203	laugh
1204	Mr
1205	experience
1206	cover
1207	buy
1208	this
1209	training
1210	finish
1211	expect
1212	far
1213	body
1214	old
1215	imagine
1216	individual
1217	court
1218	wrong
1219	service
1220	mother
1221	arrive
1222	stay
1223	hot
1224	fill
1225	form
1226	entire
1227	tonight
1228	central
1229	market
1230	leader
1231	only
1232	society
1233	only
1234	spring
1235	according
1236	together
1237	bar
1238	newspaper
1239	look
1240	while
1241	share
1242	stay
1243	five
1244	develop
1245	beat
1246	party
1247	still
1248	senior
1249	individual
1250	field
1251	across
1252	property
1253	debate
1254	form
1255	picture
1256	civil
1257	result
1258	watch
1259	central
1260	news
1261	professional
1262	walk
1263	off
1264	idea
1265	card
1266	us
1267	wonder
1268	condition
1269	red
1270	mention
1271	wonder
1272	agreement
1273	change
1274	view
1275	process
1276	staff
1277	drop
1278	brother
1279	pretty
1280	green
1281	feeling
1282	within
1283	himself
1284	bank
1285	right
1286	story
1287	pressure
1288	west
1289	call
1290	present
1291	yet
1292	full
1293	employee
1294	describe
1295	list
1296	set
1297	nature
1298	well
1299	finally
1300	TV
\.


--
-- Data for Name: relation_12; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_12 (kitchenappliance_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, energy_rating, warranty_years, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1301	government	nor	82	999	537	{finish,one}	time	nor	933	\N	\N	\N	\N
1303	front	road	946	644	849	{research}	traditional	middle	801	\N	\N	\N	\N
1305	but	law	289	511	998	{region}	I	final	543	\N	\N	\N	\N
1307	reach	while	991	211	624	{prepare,wonder}	walk	hotel	492	\N	\N	\N	\N
1308	service	education	528	152	788	{generation}	affect	heavy	929	\N	\N	\N	\N
1310	keep	say	365	654	759	{audience,nice}	employee	garden	702	\N	\N	\N	\N
1311	protect	benefit	258	741	370	{father,need}	join	project	955	\N	\N	\N	\N
1312	worry	worry	318	417	409	{staff,whether}	line	management	449	\N	\N	\N	\N
1313	writer	either	378	334	907	{feel,boy}	must	order	156	\N	\N	\N	\N
1315	many	myself	653	921	711	{many,national}	project	as	438	\N	\N	\N	\N
1316	analysis	will	984	592	483	{thing}	dog	model	302	\N	\N	\N	\N
1317	meeting	because	544	825	506	{possible,center}	age	institution	507	\N	\N	\N	\N
1318	contain	ball	135	458	149	{center,available}	trial	watch	978	\N	\N	\N	\N
1319	police	card	866	155	898	{arrive}	debate	crime	342	\N	\N	\N	\N
1320	step	impact	799	72	700	{team,entire}	either	technology	175	\N	\N	\N	\N
1321	seek	leave	812	431	641	{produce,generation}	religious	across	312	\N	\N	\N	\N
1322	establish	manage	277	227	632	{election}	explain	machine	877	\N	\N	\N	\N
1324	discussion	little	270	498	737	{dog,within}	allow	whom	471	\N	\N	\N	\N
1325	college	after	838	47	438	{simple,attorney}	occur	put	500	\N	\N	\N	\N
1326	look	hot	543	154	330	{serious}	air	run	211	\N	\N	\N	\N
1328	teach	our	909	915	330	{difference}	may	speak	481	\N	\N	\N	\N
1330	mention	travel	944	539	159	{policy,should}	respond	determine	863	\N	\N	\N	\N
1331	out	place	160	872	63	{firm}	price	morning	722	\N	\N	\N	\N
1333	wide	free	297	38	447	{claim}	fall	air	220	\N	\N	\N	\N
1334	time	southern	28	972	590	{feeling,middle}	marriage	expect	415	\N	\N	\N	\N
1336	quality	use	443	359	886	{management,describe}	these	later	913	\N	\N	\N	\N
1337	do	whole	333	844	698	{sit,work}	loss	sit	124	\N	\N	\N	\N
1338	real	century	692	381	35	{market,remain}	no	camera	209	\N	\N	\N	\N
1339	down	character	743	602	112	{film,might}	country	shake	18	\N	\N	\N	\N
1341	reduce	life	409	922	472	{look,instead}	watch	specific	560	\N	\N	\N	\N
1342	oil	no	287	382	148	{recognize,article}	gun	professor	60	\N	\N	\N	\N
1343	thus	both	107	388	910	{environment,if}	together	serious	942	\N	\N	\N	\N
1344	around	office	321	912	8	{religious,design}	loss	future	645	\N	\N	\N	\N
1345	both	whole	241	140	322	{because}	together	lot	209	\N	\N	\N	\N
1346	choice	international	497	887	176	{summer,five}	should	protect	353	\N	\N	\N	\N
1350	pattern	fly	482	374	438	{sometimes,individual}	effort	through	70	\N	\N	\N	\N
1351	tough	participant	997	965	231	{present,east}	fight	sport	964	\N	\N	\N	\N
1353	play	race	733	711	512	{in,its}	certain	unit	146	\N	\N	\N	\N
1354	better	fact	928	208	71	{wait,then}	enjoy	church	509	\N	\N	\N	\N
1355	scientist	hospital	906	499	480	{dog,perhaps}	tell	certainly	477	\N	\N	\N	\N
1356	challenge	ever	557	83	505	{strategy,catch}	marriage	we	746	\N	\N	\N	\N
1360	food	deal	928	835	392	{side}	action	network	434	\N	\N	\N	\N
1361	right	around	942	751	571	{decade}	forward	soldier	970	\N	\N	\N	\N
1363	set	thousand	850	104	84	{my,ago}	international	give	128	\N	\N	\N	\N
1364	production	table	694	597	573	{talk,quite}	professor	but	427	\N	\N	\N	\N
1314	fear	tax	819	136	718	{leader,field}	away	yeah	257	\N	\N	[{"price": "881", "ends_at": "various", "price_id": "757", "starts_at": "language"}]	\N
1304	growth	throw	472	416	627	{course,southern}	less	anything	698	\N	\N	[{"price": "585", "ends_at": "there", "price_id": "491", "starts_at": "per"}]	\N
1340	single	no	265	982	988	{fund,mother}	front	stop	114	\N	\N	[{"price": "80", "ends_at": "what", "price_id": "57", "starts_at": "prove"}]	39
1347	single	mission	225	664	788	{near}	sing	cold	630	\N	\N	\N	33
1335	stuff	red	832	299	253	{machine,real}	even	wall	847	\N	\N	\N	52
1365	organization	short	700	405	77	{you,suffer}	account	impact	880	\N	\N	\N	\N
1367	act	reflect	762	798	447	{themselves,in}	fill	know	408	\N	\N	\N	\N
1368	just	defense	638	558	623	{life}	camera	program	469	\N	\N	\N	\N
1369	trip	provide	619	490	397	{wrong}	matter	pay	341	\N	\N	\N	\N
1370	grow	popular	285	642	851	{charge}	main	under	272	\N	\N	\N	\N
1371	make	draw	675	45	97	{century}	it	leader	750	\N	\N	\N	\N
1372	oil	hour	675	37	5	{possible,add}	final	nice	347	\N	\N	\N	\N
1375	young	time	894	696	405	{pretty}	culture	place	29	\N	\N	\N	\N
1376	try	better	140	246	990	{former,her}	condition	compare	665	\N	\N	\N	\N
1380	me	up	916	875	204	{court}	number	available	853	\N	\N	\N	\N
1382	safe	term	373	481	649	{outside,TV}	lead	reflect	544	\N	\N	\N	\N
1383	phone	one	1	431	917	{president}	particularly	here	728	\N	\N	\N	\N
1384	close	defense	389	849	879	{benefit,clearly}	nearly	my	634	\N	\N	\N	\N
1385	central	order	959	965	28	{note,newspaper}	if	century	112	\N	\N	\N	\N
1386	evening	environment	827	526	879	{leader}	new	total	439	\N	\N	\N	\N
1387	throughout	fear	264	133	905	{official,resource}	food	father	582	\N	\N	\N	\N
1388	media	school	888	781	561	{movie,people}	quality	worry	258	\N	\N	\N	\N
1390	big	strategy	359	415	453	{tell,however}	score	week	432	\N	\N	\N	\N
1391	authority	effect	940	693	519	{society,wear}	career	minute	512	\N	\N	\N	\N
1392	president	guess	386	550	29	{war}	service	wait	848	\N	\N	\N	\N
1394	big	well	21	359	79	{partner}	fund	certainly	710	\N	\N	\N	\N
1398	piece	range	239	45	300	{brother,our}	wrong	list	557	\N	\N	\N	\N
1399	hair	gas	568	928	465	{establish,administration}	specific	final	842	\N	\N	\N	\N
1400	thank	out	252	12	312	{tax,boy}	decade	me	153	\N	\N	\N	\N
1377	customer	crime	400	967	322	{to}	over	successful	296	[{"url": "might", "alt_text": "house", "image_id": "99", "sort_order": "583"}]	\N	\N	\N
1358	place	quality	586	828	836	{game}	charge	forward	914	[{"url": "group", "alt_text": "age", "image_id": "892", "sort_order": "291"}]	\N	\N	\N
1397	local	democratic	286	775	485	{mean,focus}	box	of	192	[{"url": "glass", "alt_text": "against", "image_id": "360", "sort_order": "241"}]	\N	\N	\N
1357	suggest	anything	560	859	661	{Mrs}	other	determine	725	\N	[{"barcode": "worker", "variant_id": "176", "price_override": "432", "is_active_variant": "585"}]	\N	\N
1359	organization	risk	427	96	761	{cup}	really	recent	936	\N	[{"barcode": "including", "variant_id": "998", "price_override": "145", "is_active_variant": "961"}]	\N	\N
1348	mouth	church	971	63	619	{age,force}	identify	vote	813	\N	[{"barcode": "understand", "variant_id": "917", "price_override": "429", "is_active_variant": "568"}]	\N	\N
1302	vote	move	997	534	65	{plan,quality}	law	network	375	\N	[{"barcode": "shake", "variant_id": "543", "price_override": "186", "is_active_variant": "473"}]	\N	\N
1352	though	off	57	333	107	{itself,phone}	speak	feeling	559	\N	[{"barcode": "table", "variant_id": "238", "price_override": "52", "is_active_variant": "573"}]	\N	\N
1381	vote	without	973	218	502	{look,event}	movement	current	807	\N	\N	[{"price": "202", "ends_at": "television", "price_id": "230", "starts_at": "into"}]	\N
1378	interesting	show	627	143	583	{computer}	population	war	568	\N	\N	[{"price": "308", "ends_at": "high", "price_id": "49", "starts_at": "mission"}]	\N
1395	above	choose	487	126	237	{rock}	according	relationship	471	\N	\N	\N	58
1374	hot	manager	18	442	563	{economic,picture}	catch	west	126	\N	\N	\N	58
1349	unit	piece	283	688	694	{writer,by}	none	late	473	\N	\N	\N	53
1393	coach	create	500	870	331	{crime}	ask	leader	106	\N	[{"barcode": "agent", "variant_id": "256", "price_override": "736", "is_active_variant": "760"}]	\N	45
1362	already	bad	151	4	574	{bed}	until	face	958	\N	\N	\N	5
1327	phone	artist	754	391	125	{seven}	company	each	804	\N	\N	\N	21
1366	special	budget	843	869	871	{late,quite}	ten	stand	308	\N	\N	\N	27
1309	fund	only	720	136	435	{pick}	exactly	manager	77	\N	\N	\N	7
1323	bill	guess	672	492	367	{before}	red	because	852	\N	\N	\N	56
1329	sound	manage	644	534	819	{somebody,hear}	environment	century	887	\N	\N	\N	31
1396	term	prove	914	759	78	{series}	decision	cost	644	\N	[{"barcode": "remember", "variant_id": "459", "price_override": "736", "is_active_variant": "443"}, {"barcode": "activity", "variant_id": "614", "price_override": "630", "is_active_variant": "86"}]	\N	22
1379	perform	program	145	778	150	{standard}	vote	every	744	\N	\N	\N	67
1332	eat	available	409	343	660	{such,dog}	chair	player	500	\N	\N	\N	26
1373	something	true	43	166	432	{reason,end}	risk	service	634	\N	\N	\N	53
1389	fill	pressure	919	125	898	{research}	ready	town	729	\N	\N	\N	73
1306	rise	why	139	19	648	{claim}	security	tonight	905	\N	\N	\N	23
\.


--
-- Data for Name: relation_13; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_13 (clothing_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, size_system, material, fit_type_men, role, fit_type_women, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1501	however	certain	721	477	824	{approach,fact}	effect	support	election	\N	clothing	\N	\N	\N	\N	\N
1502	customer	commercial	452	533	771	{dark}	act	away	last	\N	clothing	\N	\N	\N	\N	\N
1503	sometimes	real	149	826	736	{anything}	nation	local	cause	\N	clothing	\N	\N	\N	\N	\N
1505	the	everyone	280	374	230	{street}	enjoy	focus	well	\N	clothing	\N	\N	\N	\N	\N
1507	firm	food	855	716	40	{person}	anyone	television	low	\N	clothing	\N	\N	\N	\N	\N
1508	ago	lose	399	545	362	{buy,Democrat}	music	standard	establish	\N	clothing	\N	\N	\N	\N	\N
1512	hotel	price	761	318	942	{skill}	sense	contain	parent	\N	clothing	\N	\N	\N	\N	\N
1514	bar	two	252	286	95	{reality,find}	difference	employee	throughout	\N	clothing	\N	\N	\N	\N	\N
1515	popular	industry	402	697	519	{look,interesting}	blue	million	during	\N	clothing	\N	\N	\N	\N	\N
1517	scientist	eight	423	230	718	{sport}	production	much	value	\N	clothing	\N	\N	\N	\N	\N
1518	race	Democrat	494	125	528	{PM,walk}	run	spend	adult	\N	clothing	\N	\N	\N	\N	\N
1519	project	opportunity	867	583	769	{my}	president	bag	each	\N	clothing	\N	\N	\N	\N	\N
1520	job	seek	33	84	331	{little}	give	little	similar	\N	clothing	\N	\N	\N	\N	\N
1521	half	in	881	454	93	{wide}	run	girl	future	\N	clothing	\N	\N	\N	\N	\N
1525	trial	stuff	507	129	707	{effort,natural}	prevent	vote	six	\N	clothing	\N	\N	\N	\N	\N
1527	child	pick	622	257	558	{director}	necessary	human	dog	\N	clothing	\N	\N	\N	\N	\N
1528	some	red	612	915	94	{rich,affect}	travel	economy	the	\N	clothing	\N	\N	\N	\N	\N
1530	piece	successful	877	23	770	{line,manage}	produce	after	everybody	\N	clothing	\N	\N	\N	\N	\N
1531	family	else	43	136	342	{force,him}	before	community	off	\N	clothing	\N	\N	\N	\N	\N
1532	southern	short	569	824	846	{challenge}	according	control	even	\N	clothing	\N	\N	\N	\N	\N
1533	fish	recognize	617	798	462	{Democrat,possible}	order	then	dog	\N	clothing	\N	\N	\N	\N	\N
1534	include	design	336	212	438	{project,town}	cup	former	start	\N	clothing	\N	\N	\N	\N	\N
1535	citizen	project	66	390	931	{stop,popular}	none	scene	describe	\N	clothing	\N	\N	\N	\N	\N
1536	city	war	856	803	5	{move}	claim	include	discuss	\N	clothing	\N	\N	\N	\N	\N
1538	option	course	581	592	388	{near}	maintain	floor	or	\N	clothing	\N	\N	\N	\N	\N
1539	collection	major	996	401	78	{cut}	morning	study	my	\N	clothing	\N	\N	\N	\N	\N
1540	head	its	864	250	65	{human,must}	another	force	true	\N	clothing	\N	\N	\N	\N	\N
1541	left	finally	881	871	540	{again,could}	generation	behavior	professional	\N	clothing	\N	\N	\N	\N	\N
1542	money	firm	567	873	319	{capital}	sure	even	listen	\N	clothing	\N	\N	\N	\N	\N
1543	next	meet	148	506	497	{region,bill}	quality	have	call	\N	clothing	\N	\N	\N	\N	\N
1544	measure	film	154	561	120	{admit}	cost	professor	major	\N	clothing	\N	\N	\N	\N	\N
1546	security	bit	509	641	679	{everyone,you}	vote	by	sell	\N	clothing	\N	\N	\N	\N	\N
1548	technology	event	453	280	855	{from,message}	his	reach	concern	\N	clothing	\N	\N	\N	\N	\N
1549	father	remember	607	979	804	{soldier,collection}	think	step	learn	\N	clothing	\N	\N	\N	\N	\N
1550	last	special	723	926	407	{find}	finally	or	imagine	\N	clothing	\N	\N	\N	\N	\N
1551	several	blood	23	221	563	{physical}	force	big	military	\N	clothing	\N	\N	\N	\N	\N
1552	none	end	253	625	689	{explain,wonder}	miss	later	unit	\N	clothing	\N	\N	\N	\N	\N
1553	nor	defense	992	444	571	{still}	step	thousand	five	\N	clothing	\N	\N	\N	\N	\N
1555	fill	quality	878	662	340	{others}	message	heart	bill	\N	clothing	\N	\N	\N	\N	\N
1557	usually	issue	563	87	523	{minute}	two	compare	happen	\N	clothing	\N	\N	\N	\N	\N
1558	despite	city	63	308	653	{we,pass}	stand	figure	reflect	\N	clothing	\N	\N	\N	\N	\N
1560	or	my	888	910	357	{student,manager}	husband	buy	than	\N	clothing	\N	\N	\N	\N	\N
1506	while	realize	986	456	367	{late,your}	probably	perhaps	author	\N	clothing	\N	\N	[{"barcode": "grow", "variant_id": "591", "price_override": "390", "is_active_variant": "268"}]	\N	\N
1513	region	approach	438	571	600	{management}	number	seem	represent	\N	clothing	\N	\N	\N	[{"price": "938", "ends_at": "season", "price_id": "447", "starts_at": "reveal"}]	\N
1509	civil	walk	678	835	865	{take,us}	consider	loss	science	\N	clothing	\N	\N	\N	\N	73
1510	man	operation	310	522	267	{hand,middle}	wide	science	skill	\N	clothing	\N	\N	\N	\N	10
1561	recent	arm	381	788	211	{garden}	represent	popular	however	\N	clothing	\N	\N	\N	\N	\N
1562	stop	we	628	596	512	{nice}	player	interest	white	\N	clothing	\N	\N	\N	\N	\N
1563	them	just	183	391	3	{science}	more	seat	instead	\N	clothing	\N	\N	\N	\N	\N
1564	painting	sing	18	272	375	{court}	age	small	enough	\N	clothing	\N	\N	\N	\N	\N
1565	every	late	417	675	194	{seek}	admit	success	later	\N	clothing	\N	\N	\N	\N	\N
1566	concern	tax	429	914	678	{effort}	reason	same	stay	\N	clothing	\N	\N	\N	\N	\N
1569	single	explain	837	643	213	{actually}	machine	back	space	\N	clothing	\N	\N	\N	\N	\N
1570	radio	arrive	59	299	151	{security,reveal}	Mrs	skin	suffer	\N	clothing	\N	\N	\N	\N	\N
1572	adult	bring	168	915	525	{election}	western	pattern	show	\N	clothing	\N	\N	\N	\N	\N
1573	where	contain	512	879	661	{only}	Congress	peace	conference	\N	clothing	\N	\N	\N	\N	\N
1574	she	school	929	459	188	{later,strategy}	natural	drug	increase	\N	clothing	\N	\N	\N	\N	\N
1576	future	write	587	722	45	{him}	boy	operation	yet	\N	clothing	\N	\N	\N	\N	\N
1578	continue	add	246	832	767	{himself,civil}	another	style	work	\N	clothing	\N	\N	\N	\N	\N
1579	main	sister	849	964	897	{truth,option}	stage	then	everybody	\N	clothing	\N	\N	\N	\N	\N
1580	strong	black	734	934	241	{idea,short}	sing	court	type	\N	clothing	\N	\N	\N	\N	\N
1581	successful	too	864	802	910	{east,law}	fly	old	himself	\N	clothing	\N	\N	\N	\N	\N
1582	rate	travel	901	421	826	{poor}	upon	himself	on	\N	clothing	\N	\N	\N	\N	\N
1583	full	large	470	526	693	{understand,offer}	public	green	community	\N	clothing	\N	\N	\N	\N	\N
1585	anyone	back	434	127	558	{gun}	leader	leader	write	\N	clothing	\N	\N	\N	\N	\N
1586	either	five	780	427	953	{act,southern}	case	example	team	\N	clothing	\N	\N	\N	\N	\N
1587	TV	form	525	391	616	{play,end}	often	result	unit	\N	clothing	\N	\N	\N	\N	\N
1592	seven	Mr	386	652	961	{easy,product}	almost	agree	give	\N	clothing	\N	\N	\N	\N	\N
1594	weight	message	321	877	181	{turn,herself}	standard	travel	need	\N	clothing	\N	\N	\N	\N	\N
1595	ask	would	680	815	556	{positive}	could	level	school	\N	clothing	\N	\N	\N	\N	\N
1597	another	different	88	261	699	{wear,operation}	station	know	west	\N	clothing	\N	\N	\N	\N	\N
1598	top	listen	759	229	505	{manage,commercial}	Congress	each	believe	\N	clothing	\N	\N	\N	\N	\N
1599	it	responsibility	882	35	959	{move,environmental}	him	interesting	place	\N	clothing	\N	\N	\N	\N	\N
1600	rest	ready	353	412	945	{may,across}	enough	somebody	good	\N	clothing	\N	\N	\N	\N	\N
1602	low	will	940	238	155	{billion}	try	us	success	me	menclothing	\N	\N	\N	\N	\N
1603	this	specific	958	345	675	{dinner,remain}	threat	both	occur	out	menclothing	\N	\N	\N	\N	\N
1604	after	what	626	993	596	{have,order}	music	structure	term	include	menclothing	\N	\N	\N	\N	\N
1605	name	anyone	436	691	309	{manage,play}	ability	hotel	avoid	draw	menclothing	\N	\N	\N	\N	\N
1606	believe	me	753	321	266	{allow}	hotel	set	as	many	menclothing	\N	\N	\N	\N	\N
1607	industry	month	465	404	984	{instead,reach}	them	develop	thing	order	menclothing	\N	\N	\N	\N	\N
1608	example	apply	40	593	797	{live}	spend	reflect	compare	member	menclothing	\N	\N	\N	\N	\N
1609	value	music	819	796	698	{teacher}	eat	determine	rate	magazine	menclothing	\N	\N	\N	\N	\N
1610	agreement	interview	676	641	140	{technology}	tend	security	case	though	menclothing	\N	\N	\N	\N	\N
1612	back	find	773	409	257	{activity}	pull	common	determine	political	menclothing	\N	\N	\N	\N	\N
1614	safe	most	327	71	212	{goal,night}	decision	rock	help	catch	menclothing	\N	\N	\N	\N	\N
1615	time	create	216	410	630	{generation}	here	race	fish	beyond	menclothing	\N	\N	\N	\N	\N
1618	amount	article	940	115	396	{letter}	size	wind	late	federal	menclothing	\N	\N	\N	\N	\N
1619	question	eye	479	791	495	{can}	question	significant	body	safe	menclothing	\N	\N	\N	\N	\N
1613	responsibility	wrong	427	324	887	{myself}	ball	represent	happen	because	menclothing	\N	\N	\N	\N	33
1620	consumer	always	166	773	6	{study,military}	exactly	hard	difficult	American	menclothing	\N	\N	\N	\N	\N
1623	scene	long	207	871	745	{race}	your	board	anything	scientist	menclothing	\N	\N	\N	\N	\N
1624	threat	decision	618	63	349	{arrive}	drug	change	past	consider	menclothing	\N	\N	\N	\N	\N
1625	stuff	everything	491	288	764	{lot}	community	walk	be	wrong	menclothing	\N	\N	\N	\N	\N
1627	fund	authority	938	50	159	{although}	rule	ago	decision	treat	menclothing	\N	\N	\N	\N	\N
1629	they	democratic	711	74	189	{thank}	hundred	structure	already	however	menclothing	\N	\N	\N	\N	\N
1630	seat	officer	386	297	523	{ten}	off	bed	day	section	menclothing	\N	\N	\N	\N	\N
1631	personal	everything	293	142	175	{eye,likely}	store	only	ever	trial	menclothing	\N	\N	\N	\N	\N
1633	stop	including	887	830	460	{beyond}	particular	everything	their	daughter	menclothing	\N	\N	\N	\N	\N
1636	mind	one	994	365	676	{hospital,model}	maybe	medical	consider	trade	menclothing	\N	\N	\N	\N	\N
1638	serve	though	91	162	506	{current}	food	word	explain	look	menclothing	\N	\N	\N	\N	\N
1640	hit	may	42	710	494	{ok,know}	outside	heart	capital	memory	menclothing	\N	\N	\N	\N	\N
1641	art	improve	365	354	356	{own}	head	black	answer	across	menclothing	\N	\N	\N	\N	\N
1642	window	way	797	557	137	{another}	management	level	particularly	happy	menclothing	\N	\N	\N	\N	\N
1644	all	career	971	246	264	{star,air}	nor	none	education	lot	menclothing	\N	\N	\N	\N	\N
1646	forget	myself	645	454	997	{guess}	than	firm	man	without	menclothing	\N	\N	\N	\N	\N
1649	soldier	appear	293	575	706	{fear,at}	strong	by	few	enter	menclothing	\N	\N	\N	\N	\N
1650	administration	one	196	895	606	{significant,able}	tough	mission	care	dog	menclothing	\N	\N	\N	\N	\N
1651	deal	good	823	759	715	{ground}	rate	whole	health	call	menclothing	\N	\N	\N	\N	\N
1652	study	guess	250	659	496	{clearly,throughout}	dark	into	method	affect	menclothing	\N	\N	\N	\N	\N
1654	place	shoulder	977	881	60	{free,among}	ten	spring	wall	something	menclothing	\N	\N	\N	\N	\N
1656	reason	fund	484	248	875	{especially}	hotel	collection	past	hair	menclothing	\N	\N	\N	\N	\N
1657	you	room	846	36	15	{control,long}	yard	later	religious	organization	menclothing	\N	\N	\N	\N	\N
1658	sport	inside	917	470	838	{might,get}	above	family	town	game	menclothing	\N	\N	\N	\N	\N
1659	else	usually	788	440	249	{soldier,go}	behind	discuss	hundred	goal	menclothing	\N	\N	\N	\N	\N
1660	under	with	181	107	249	{hit,avoid}	myself	movement	take	if	menclothing	\N	\N	\N	\N	\N
1662	campaign	nearly	211	440	944	{media,charge}	herself	owner	these	arrive	menclothing	\N	\N	\N	\N	\N
1663	player	candidate	928	508	773	{find,stop}	risk	research	recent	computer	menclothing	\N	\N	\N	\N	\N
1664	better	operation	816	966	314	{area}	relationship	effect	interesting	current	menclothing	\N	\N	\N	\N	\N
1665	training	increase	647	478	143	{remember,tree}	rest	look	maintain	deep	menclothing	\N	\N	\N	\N	\N
1669	interest	keep	773	4	321	{until,box}	chair	last	consumer	but	menclothing	\N	\N	\N	\N	\N
1670	Democrat	conference	114	67	437	{doctor,meet}	sound	team	toward	matter	menclothing	\N	\N	\N	\N	\N
1671	if	consider	259	44	144	{activity,quickly}	campaign	line	they	early	menclothing	\N	\N	\N	\N	\N
1672	black	leader	384	801	352	{party,throughout}	quality	theory	scene	like	menclothing	\N	\N	\N	\N	\N
1673	head	these	929	184	886	{land}	high	heavy	fund	decide	menclothing	\N	\N	\N	\N	\N
1674	why	teacher	480	861	335	{eat}	sell	pretty	thus	fly	menclothing	\N	\N	\N	\N	\N
1637	black	moment	788	46	689	{film,race}	her	ago	rise	increase	menclothing	\N	\N	[{"barcode": "why", "variant_id": "542", "price_override": "513", "is_active_variant": "386"}]	\N	\N
1632	man	Congress	955	521	240	{film,hope}	mind	wrong	until	right	menclothing	\N	\N	\N	[{"price": "399", "ends_at": "condition", "price_id": "382", "starts_at": "performance"}]	\N
1661	I	painting	312	236	26	{thousand}	mouth	indeed	manage	argue	menclothing	\N	\N	\N	[{"price": "394", "ends_at": "admit", "price_id": "199", "starts_at": "minute"}]	\N
1668	example	thus	476	515	741	{positive}	nor	girl	financial	past	menclothing	\N	\N	\N	\N	68
1666	about	any	321	807	319	{tax,outside}	stock	live	happy	three	menclothing	\N	\N	\N	\N	53
1635	couple	drug	211	621	386	{example,prove}	yeah	against	what	call	menclothing	\N	\N	\N	\N	70
1676	source	house	167	637	437	{church,school}	edge	office	event	manage	menclothing	\N	\N	\N	\N	\N
1678	majority	song	628	471	997	{through}	build	child	individual	writer	menclothing	\N	\N	\N	\N	\N
1679	response	continue	604	966	446	{plant,west}	story	politics	movie	quickly	menclothing	\N	\N	\N	\N	\N
1681	century	Mr	32	572	717	{story,conference}	modern	near	next	either	menclothing	\N	\N	\N	\N	\N
1682	red	it	585	615	552	{cell}	well	once	training	her	menclothing	\N	\N	\N	\N	\N
1683	any	art	245	46	921	{fish,plant}	movie	main	support	off	menclothing	\N	\N	\N	\N	\N
1685	wonder	save	264	584	358	{next,middle}	front	body	within	member	menclothing	\N	\N	\N	\N	\N
1686	trouble	fund	529	375	581	{work}	describe	show	chair	west	menclothing	\N	\N	\N	\N	\N
1687	sport	better	185	438	228	{suffer,speech}	every	concern	too	hit	menclothing	\N	\N	\N	\N	\N
1688	need	employee	836	997	647	{certainly,technology}	standard	pass	draw	lead	menclothing	\N	\N	\N	\N	\N
1689	now	country	674	260	744	{role}	single	child	company	within	menclothing	\N	\N	\N	\N	\N
1690	always	rule	68	632	266	{lead,realize}	travel	film	meeting	yes	menclothing	\N	\N	\N	\N	\N
1691	report	represent	526	792	35	{week,draw}	young	speech	him	property	menclothing	\N	\N	\N	\N	\N
1692	pressure	hit	490	946	494	{wife}	among	campaign	them	recently	menclothing	\N	\N	\N	\N	\N
1693	job	moment	868	95	690	{treatment}	popular	set	where	specific	menclothing	\N	\N	\N	\N	\N
1694	want	the	52	586	596	{affect,onto}	expect	mother	standard	mouth	menclothing	\N	\N	\N	\N	\N
1695	free	structure	293	68	569	{top}	care	military	site	they	menclothing	\N	\N	\N	\N	\N
1697	even	provide	698	737	444	{tough,theory}	talk	want	discussion	send	menclothing	\N	\N	\N	\N	\N
1698	accept	senior	649	965	727	{recent}	then	entire	again	because	menclothing	\N	\N	\N	\N	\N
1699	culture	board	621	961	797	{this,more}	identify	hard	sister	high	menclothing	\N	\N	\N	\N	\N
1700	respond	quality	683	943	989	{very}	present	matter	method	pull	menclothing	\N	\N	\N	\N	\N
1702	seek	travel	52	18	79	{hit,out}	together	media	road	\N	womenclothing	soon	\N	\N	\N	\N
1704	unit	new	193	938	860	{identify}	someone	first	kid	\N	womenclothing	level	\N	\N	\N	\N
1705	yet	claim	6	838	437	{especially}	everyone	woman	size	\N	womenclothing	notice	\N	\N	\N	\N
1707	talk	cause	116	379	384	{song}	main	toward	drive	\N	womenclothing	discussion	\N	\N	\N	\N
1708	seat	happy	876	390	536	{single}	where	respond	practice	\N	womenclothing	professor	\N	\N	\N	\N
1709	here	others	763	326	502	{none}	trip	human	Democrat	\N	womenclothing	yard	\N	\N	\N	\N
1711	social	debate	444	869	616	{task,build}	miss	old	game	\N	womenclothing	cell	\N	\N	\N	\N
1712	side	point	20	353	528	{because,stock}	behind	make	once	\N	womenclothing	arrive	\N	\N	\N	\N
1715	loss	step	418	621	439	{meet}	arm	child	dog	\N	womenclothing	ball	\N	\N	\N	\N
1717	operation	fill	145	504	936	{focus,it}	energy	goal	art	\N	womenclothing	us	\N	\N	\N	\N
1719	soldier	want	907	375	382	{always,drop}	officer	sometimes	may	\N	womenclothing	much	\N	\N	\N	\N
1720	interest	most	748	83	803	{total,short}	design	factor	recently	\N	womenclothing	small	\N	\N	\N	\N
1722	after	win	895	145	51	{necessary,firm}	and	behavior	painting	\N	womenclothing	kitchen	\N	\N	\N	\N
1724	seven	its	131	141	246	{four,environmental}	carry	purpose	where	\N	womenclothing	each	\N	\N	\N	\N
1727	commercial	himself	135	319	804	{possible}	traditional	fear	financial	\N	womenclothing	let	\N	\N	\N	\N
1728	six	along	472	26	588	{deep}	mind	task	some	\N	womenclothing	bill	\N	\N	\N	\N
1729	attorney	forget	752	970	642	{surface}	sit	quite	behavior	\N	womenclothing	organization	\N	\N	\N	\N
1730	movie	gas	33	765	145	{ten,reason}	according	may	spend	\N	womenclothing	smile	\N	\N	\N	\N
1721	around	raise	135	733	661	{relate}	source	condition	life	\N	womenclothing	guess	\N	[{"barcode": "imagine", "variant_id": "566", "price_override": "261", "is_active_variant": "927"}]	\N	\N
1726	camera	remain	455	204	419	{spend,successful}	take	ball	ahead	\N	womenclothing	claim	\N	\N	[{"price": "995", "ends_at": "born", "price_id": "122", "starts_at": "put"}]	\N
1703	simply	book	804	371	922	{life,player}	hand	about	price	\N	womenclothing	seek	\N	\N	[{"price": "333", "ends_at": "who", "price_id": "89", "starts_at": "power"}]	\N
1677	strong	tonight	113	320	924	{consider}	friend	country	possible	new	menclothing	\N	\N	\N	\N	69
1718	partner	where	322	773	791	{pattern}	material	painting	receive	\N	womenclothing	explain	\N	\N	\N	97
1714	quite	issue	379	52	863	{fly}	vote	fund	individual	\N	womenclothing	similar	\N	\N	\N	83
1731	talk	student	676	299	526	{project}	study	however	discuss	\N	womenclothing	note	\N	\N	\N	\N
1733	forward	heart	750	275	710	{let,foreign}	break	structure	yard	\N	womenclothing	least	\N	\N	\N	\N
1737	price	article	119	211	184	{play,suffer}	them	single	kid	\N	womenclothing	technology	\N	\N	\N	\N
1738	assume	sort	772	840	912	{college,Mr}	head	bed	by	\N	womenclothing	stop	\N	\N	\N	\N
1739	through	affect	649	132	847	{would}	property	believe	goal	\N	womenclothing	record	\N	\N	\N	\N
1741	compare	sure	896	707	602	{impact}	including	listen	face	\N	womenclothing	government	\N	\N	\N	\N
1742	up	represent	703	990	759	{decade}	south	leg	though	\N	womenclothing	former	\N	\N	\N	\N
1743	enjoy	degree	393	456	368	{door}	major	though	wish	\N	womenclothing	clearly	\N	\N	\N	\N
1744	old	person	980	617	825	{leg,try}	stock	former	care	\N	womenclothing	beat	\N	\N	\N	\N
1745	impact	tough	653	500	790	{carry}	west	notice	method	\N	womenclothing	politics	\N	\N	\N	\N
1746	bad	whether	256	625	920	{near,everyone}	democratic	manager	well	\N	womenclothing	newspaper	\N	\N	\N	\N
1747	perform	father	178	519	624	{event,person}	job	contain	see	\N	womenclothing	someone	\N	\N	\N	\N
1748	gas	spend	70	768	880	{may,that}	provide	go	hope	\N	womenclothing	manager	\N	\N	\N	\N
1754	respond	relationship	631	548	1	{keep}	painting	them	cover	\N	womenclothing	audience	\N	\N	\N	\N
1755	certainly	choose	71	774	553	{customer,author}	every	personal	purpose	\N	womenclothing	this	\N	\N	\N	\N
1756	every	talk	944	489	50	{inside}	product	property	person	\N	womenclothing	three	\N	\N	\N	\N
1757	street	wide	471	466	581	{right}	each	concern	war	\N	womenclothing	deep	\N	\N	\N	\N
1759	number	author	356	66	180	{positive}	seek	couple	stock	\N	womenclothing	hundred	\N	\N	\N	\N
1760	partner	time	776	588	5	{conference,number}	interview	else	let	\N	womenclothing	while	\N	\N	\N	\N
1761	those	both	199	583	686	{control}	democratic	for	condition	\N	womenclothing	able	\N	\N	\N	\N
1762	parent	much	967	159	499	{ability}	owner	result	half	\N	womenclothing	possible	\N	\N	\N	\N
1763	take	difference	357	537	879	{new,bar}	something	college	page	\N	womenclothing	experience	\N	\N	\N	\N
1764	interesting	form	611	106	737	{herself}	simple	hard	onto	\N	womenclothing	around	\N	\N	\N	\N
1767	throughout	very	586	330	551	{blood,career}	fill	also	interest	\N	womenclothing	nothing	\N	\N	\N	\N
1768	science	wrong	590	758	595	{main,enjoy}	information	member	standard	\N	womenclothing	truth	\N	\N	\N	\N
1770	later	increase	805	805	933	{ever,himself}	to	analysis	same	\N	womenclothing	great	\N	\N	\N	\N
1771	condition	billion	604	154	312	{remain,occur}	but	talk	south	\N	womenclothing	best	\N	\N	\N	\N
1772	more	opportunity	937	859	80	{doctor,different}	contain	nearly	factor	\N	womenclothing	idea	\N	\N	\N	\N
1775	scientist	the	683	269	979	{risk}	night	kind	method	\N	womenclothing	stage	\N	\N	\N	\N
1778	them	produce	412	691	130	{age,south}	character	water	night	\N	womenclothing	total	\N	\N	\N	\N
1779	hold	common	44	699	260	{across}	ask	deep	particular	\N	womenclothing	dog	\N	\N	\N	\N
1780	catch	money	348	83	940	{life,son}	factor	inside	mouth	\N	womenclothing	reach	\N	\N	\N	\N
1781	seem	many	391	107	135	{determine}	administration	yard	field	\N	womenclothing	open	\N	\N	\N	\N
1783	impact	federal	417	795	84	{today,site}	direction	foot	seven	\N	womenclothing	focus	\N	\N	\N	\N
1784	impact	bring	999	37	445	{book}	trial	field	go	\N	womenclothing	American	\N	\N	\N	\N
1750	leave	before	714	832	533	{live,bed}	later	according	most	\N	womenclothing	century	\N	\N	\N	68
1751	for	parent	870	691	133	{debate}	indicate	public	player	\N	womenclothing	second	\N	\N	\N	31
1753	work	way	177	682	794	{describe}	current	I	else	\N	womenclothing	walk	\N	\N	\N	85
1752	feel	drive	323	82	151	{happy}	issue	seem	president	\N	womenclothing	organization	\N	\N	\N	16
1786	may	station	632	633	776	{new}	report	will	huge	\N	womenclothing	big	\N	\N	\N	\N
1789	hit	activity	452	4	355	{whatever,measure}	open	social	speak	\N	womenclothing	light	\N	\N	\N	\N
1791	summer	outside	716	682	984	{choose}	image	skin	father	\N	womenclothing	bring	\N	\N	\N	\N
1792	clear	eye	744	452	638	{whole}	year	visit	easy	\N	womenclothing	standard	\N	\N	\N	\N
1793	state	than	678	205	942	{kid,already}	whom	peace	by	\N	womenclothing	wait	\N	\N	\N	\N
1796	enjoy	buy	687	90	785	{visit}	order	admit	open	\N	womenclothing	common	\N	\N	\N	\N
1797	skill	research	542	634	492	{happen}	detail	entire	scientist	\N	womenclothing	unit	\N	\N	\N	\N
1798	leader	value	98	512	123	{tree,me}	find	marriage	radio	\N	womenclothing	according	\N	\N	\N	\N
1799	answer	her	518	559	171	{have}	environmental	will	foot	\N	womenclothing	that	\N	\N	\N	\N
1774	leader	now	734	134	502	{live,analysis}	floor	improve	woman	\N	womenclothing	simply	[{"url": "outside", "alt_text": "benefit", "image_id": "92", "sort_order": "843"}]	\N	\N	\N
1725	card	at	987	216	773	{nice}	per	mouth	watch	\N	womenclothing	ready	[{"url": "professional", "alt_text": "writer", "image_id": "985", "sort_order": "536"}]	\N	\N	\N
1547	over	political	148	152	324	{themselves,reveal}	strategy	everybody	everybody	\N	clothing	\N	[{"url": "form", "alt_text": "mind", "image_id": "132", "sort_order": "928"}]	\N	\N	\N
1655	when	policy	162	140	55	{real,think}	admit	factor	wide	southern	menclothing	\N	[{"url": "kitchen", "alt_text": "ball", "image_id": "38", "sort_order": "31"}]	\N	\N	\N
1713	wonder	new	238	408	509	{tend,particularly}	add	among	him	\N	womenclothing	or	[{"url": "station", "alt_text": "particular", "image_id": "557", "sort_order": "409"}]	\N	\N	\N
1554	make	compare	85	30	797	{seek}	end	true	rather	\N	clothing	\N	[{"url": "thousand", "alt_text": "administration", "image_id": "260", "sort_order": "499"}]	\N	\N	\N
1596	read	although	979	195	77	{her}	could	form	ever	\N	clothing	\N	[{"url": "there", "alt_text": "against", "image_id": "5", "sort_order": "231"}]	\N	\N	\N
1732	law	for	59	920	73	{kitchen,beat}	eight	send	fund	\N	womenclothing	increase	[{"url": "budget", "alt_text": "hand", "image_id": "482", "sort_order": "416"}]	\N	\N	\N
1648	listen	owner	28	436	397	{very}	design	Republican	trip	clear	menclothing	\N	[{"url": "try", "alt_text": "southern", "image_id": "511", "sort_order": "120"}]	\N	\N	\N
1647	worry	now	504	721	500	{always}	month	reveal	town	despite	menclothing	\N	[{"url": "very", "alt_text": "stuff", "image_id": "100", "sort_order": "859"}]	\N	\N	\N
1568	foreign	would	176	599	855	{summer}	build	black	hit	\N	clothing	\N	[{"url": "entire", "alt_text": "far", "image_id": "998", "sort_order": "910"}]	\N	\N	\N
1782	a	message	995	498	332	{memory,measure}	real	seem	food	\N	womenclothing	trade	[{"url": "house", "alt_text": "finally", "image_id": "213", "sort_order": "568"}]	[{"barcode": "give", "variant_id": "834", "price_override": "495", "is_active_variant": "759"}]	\N	\N
1556	cover	their	744	951	206	{work}	adult	time	sing	\N	clothing	\N	\N	[{"barcode": "participant", "variant_id": "697", "price_override": "863", "is_active_variant": "30"}]	\N	\N
1639	near	get	361	918	317	{scientist}	nation	clearly	man	upon	menclothing	\N	\N	[{"barcode": "serious", "variant_id": "196", "price_override": "354", "is_active_variant": "862"}]	\N	\N
1696	within	partner	607	672	174	{year}	participant	development	yeah	work	menclothing	\N	\N	[{"barcode": "kid", "variant_id": "355", "price_override": "636", "is_active_variant": "542"}]	\N	\N
1706	kid	task	252	64	927	{claim,six}	offer	mother	big	\N	womenclothing	sport	\N	[{"barcode": "media", "variant_id": "185", "price_override": "835", "is_active_variant": "497"}, {"barcode": "including", "variant_id": "563", "price_override": "71", "is_active_variant": "197"}]	\N	\N
1675	understand	short	616	235	835	{nearly,organization}	building	effort	black	behavior	menclothing	\N	\N	[{"barcode": "game", "variant_id": "932", "price_override": "530", "is_active_variant": "631"}]	\N	\N
1526	start	just	447	491	302	{indicate}	affect	capital	explain	\N	clothing	\N	\N	[{"barcode": "your", "variant_id": "920", "price_override": "61", "is_active_variant": "509"}]	\N	\N
1643	plant	what	425	820	685	{address}	hope	right	family	low	menclothing	\N	\N	[{"barcode": "those", "variant_id": "44", "price_override": "38", "is_active_variant": "493"}]	\N	\N
1787	behind	value	137	879	868	{daughter,not}	say	appear	dream	\N	womenclothing	enter	\N	\N	[{"price": "242", "ends_at": "up", "price_id": "590", "starts_at": "go"}]	\N
1716	event	machine	708	149	339	{particular}	current	determine	common	\N	womenclothing	involve	\N	\N	[{"price": "592", "ends_at": "free", "price_id": "795", "starts_at": "research"}]	\N
1537	without	ball	310	749	837	{white}	force	tree	ten	\N	clothing	\N	\N	\N	\N	98
1504	maybe	maintain	806	709	102	{anything}	price	add	leave	\N	clothing	\N	\N	\N	\N	10
1735	clear	wear	579	352	109	{change,strong}	travel	life	this	\N	womenclothing	if	\N	\N	\N	98
1795	everybody	relationship	286	281	166	{forget,part}	dark	grow	loss	\N	womenclothing	along	\N	\N	\N	39
1545	car	reduce	275	556	804	{huge}	ok	plant	whose	\N	clothing	\N	\N	\N	\N	65
1710	two	sell	479	241	414	{drop}	despite	consumer	artist	\N	womenclothing	leg	\N	\N	\N	1
1653	claim	despite	372	456	317	{threat}	reason	brother	every	information	menclothing	\N	\N	\N	\N	17
1645	mind	particularly	548	923	475	{them,administration}	fund	window	national	west	menclothing	\N	\N	\N	\N	63
1617	service	hundred	116	142	832	{wide,clear}	sign	test	parent	measure	menclothing	\N	\N	\N	\N	54
1621	him	pick	977	58	971	{agency,I}	middle	quite	cost	gas	menclothing	\N	\N	\N	\N	26
1765	room	green	513	936	317	{explain}	center	executive	start	\N	womenclothing	daughter	[{"url": "race", "alt_text": "discover", "image_id": "114", "sort_order": "612"}]	\N	\N	86
1611	only	discover	361	902	148	{sea,carry}	party	present	officer	view	menclothing	\N	\N	\N	\N	29
1794	reality	buy	340	793	969	{particularly,none}	specific	operation	course	\N	womenclothing	produce	\N	[{"barcode": "plan", "variant_id": "840", "price_override": "184", "is_active_variant": "130"}]	\N	4
1524	fact	early	813	905	52	{citizen}	amount	start	movie	\N	clothing	\N	\N	\N	\N	29
1577	point	surface	667	223	876	{contain,story}	design	him	good	\N	clothing	\N	\N	\N	[{"price": "852", "ends_at": "personal", "price_id": "490", "starts_at": "score"}]	83
1575	western	whatever	274	359	454	{seat}	debate	religious	dream	\N	clothing	\N	\N	\N	\N	28
1773	significant	support	35	582	891	{begin,control}	once	together	about	\N	womenclothing	partner	\N	\N	\N	36
1523	walk	deal	88	703	483	{accept}	medical	animal	Mr	\N	clothing	\N	\N	\N	\N	11
1559	game	yet	601	909	727	{smile,forward}	data	point	cost	\N	clothing	\N	\N	\N	\N	5
1734	art	light	573	452	477	{stage}	seek	short	around	\N	womenclothing	same	\N	\N	\N	97
1516	growth	he	300	620	498	{arrive}	several	positive	cut	\N	clothing	\N	\N	\N	\N	89
1777	he	among	250	400	554	{data}	popular	book	American	\N	womenclothing	fine	\N	\N	\N	57
1529	remember	PM	35	239	965	{especially}	story	million	it	\N	clothing	\N	\N	\N	\N	20
1588	show	happy	97	816	208	{avoid}	who	message	begin	\N	clothing	\N	\N	\N	\N	20
1788	environment	future	57	19	985	{room}	past	Republican	factor	\N	womenclothing	far	\N	\N	\N	95
1511	late	none	85	55	107	{hard,throw}	strategy	should	four	\N	clothing	\N	\N	\N	\N	28
1622	avoid	firm	140	774	512	{bit,loss}	air	easy	enjoy	near	menclothing	\N	\N	\N	\N	31
1723	fall	light	271	341	42	{give}	himself	speech	purpose	\N	womenclothing	camera	\N	\N	\N	74
1584	affect	four	48	239	228	{either}	environment	order	best	\N	clothing	\N	\N	\N	\N	67
1601	their	yourself	427	210	56	{case,push}	allow	food	possible	argue	menclothing	\N	\N	\N	\N	31
1634	again	argue	521	200	719	{west}	north	late	face	movie	menclothing	\N	\N	\N	\N	7
1616	soldier	design	694	653	480	{none}	market	grow	experience	body	menclothing	\N	\N	\N	\N	1
1749	mission	fly	89	984	852	{group,space}	find	compare	section	\N	womenclothing	anyone	\N	\N	\N	79
1593	push	image	521	815	976	{everybody,base}	condition	sell	window	\N	clothing	\N	\N	\N	\N	37
1785	resource	or	404	580	585	{every,author}	reason	money	hour	\N	womenclothing	case	\N	\N	\N	93
1522	some	others	906	34	452	{least}	reach	at	news	\N	clothing	\N	\N	\N	\N	80
1766	shake	nor	993	308	91	{benefit}	measure	rich	major	\N	womenclothing	environmental	\N	\N	\N	92
1758	region	traditional	283	365	460	{themselves}	every	sell	civil	\N	womenclothing	rate	\N	\N	\N	41
1591	pattern	tough	771	384	656	{might}	mission	able	medical	\N	clothing	\N	\N	\N	\N	71
1571	computer	million	625	369	189	{talk}	program	her	policy	\N	clothing	\N	\N	\N	\N	18
1776	source	treatment	592	297	447	{network}	short	physical	note	\N	womenclothing	do	\N	\N	\N	55
1740	stay	baby	576	658	212	{skill,interesting}	four	difference	fast	\N	womenclothing	model	\N	\N	\N	32
1736	indicate	guess	235	799	46	{affect}	morning	best	knowledge	\N	womenclothing	treatment	\N	\N	\N	82
1684	so	employee	424	827	701	{relationship,challenge}	can	such	west	enough	menclothing	\N	\N	\N	\N	54
1701	meet	seem	906	1	783	{catch}	remember	he	probably	\N	womenclothing	book	\N	\N	\N	53
1626	show	employee	562	510	518	{really,hit}	budget	focus	down	style	menclothing	\N	\N	\N	\N	78
1628	practice	least	11	859	315	{majority,where}	front	drug	film	animal	menclothing	\N	\N	\N	\N	75
1680	month	camera	655	144	760	{mouth}	adult	board	decision	describe	menclothing	\N	\N	\N	\N	59
1800	politics	suffer	714	994	661	{us,away}	strong	speak	coach	\N	womenclothing	back	\N	\N	\N	52
1769	or	every	451	296	776	{a,skin}	woman	hot	fear	\N	womenclothing	fight	\N	\N	\N	64
1790	since	eight	335	997	823	{place}	over	theory	bill	\N	womenclothing	determine	\N	\N	\N	10
1667	time	bring	37	305	202	{pattern,across}	nor	many	too	determine	menclothing	\N	\N	\N	\N	60
1590	threat	bed	443	539	860	{why,discussion}	staff	individual	car	\N	clothing	\N	\N	\N	\N	39
1567	no	conference	426	585	389	{technology}	thank	director	address	\N	clothing	\N	\N	\N	\N	7
1589	begin	those	401	214	559	{its}	modern	people	item	\N	clothing	\N	\N	\N	\N	89
\.


--
-- Data for Name: relation_14; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_14 (media_id, sku, product_name, base_price, is_active, quantity, mv_attributes, delivery_type, format, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1901	rest	the	276	355	769	{expect}	drive	exactly	\N	\N	\N	\N
1902	whatever	major	303	608	243	{hope}	ten	live	\N	\N	\N	\N
1904	fish	usually	570	183	758	{up}	help	or	\N	\N	\N	\N
1905	school	middle	424	326	559	{white,so}	human	head	\N	\N	\N	\N
1907	tend	south	797	662	547	{spring}	investment	spend	\N	\N	\N	\N
1908	act	imagine	30	326	489	{painting}	pass	record	\N	\N	\N	\N
1909	modern	down	210	409	102	{discover,church}	raise	hard	\N	\N	\N	\N
1911	those	short	506	552	565	{according}	whether	range	\N	\N	\N	\N
1912	room	certainly	775	797	459	{size}	leg	discuss	\N	\N	\N	\N
1913	blood	recently	696	654	198	{partner}	half	all	\N	\N	\N	\N
1915	customer	place	8	69	832	{care,between}	main	trade	\N	\N	\N	\N
1916	crime	recent	19	825	196	{share,amount}	teach	financial	\N	\N	\N	\N
1917	wide	meeting	281	653	580	{check}	ability	turn	\N	\N	\N	\N
1918	training	manager	787	490	573	{learn}	prevent	reveal	\N	\N	\N	\N
1920	cultural	player	412	57	656	{hospital}	fight	usually	\N	\N	\N	\N
1921	each	big	297	363	240	{lay}	as	dream	\N	\N	\N	\N
1922	resource	sell	471	572	482	{fall,degree}	mission	language	\N	\N	\N	\N
1923	sound	catch	39	786	998	{factor}	they	information	\N	\N	\N	\N
1924	world	standard	121	330	833	{former,customer}	during	stand	\N	\N	\N	\N
1927	minute	five	883	911	284	{table,wall}	inside	figure	\N	\N	\N	\N
1928	outside	buy	701	563	895	{community,evidence}	Mr	matter	\N	\N	\N	\N
1929	degree	me	991	110	674	{mean,its}	argue	leg	\N	\N	\N	\N
1930	nation	history	436	519	435	{evidence,though}	assume	guess	\N	\N	\N	\N
1931	at	word	837	491	229	{since}	hundred	cold	\N	\N	\N	\N
1932	man	fish	182	530	610	{ten,bar}	possible	face	\N	\N	\N	\N
1933	less	reality	636	938	479	{physical}	together	player	\N	\N	\N	\N
1935	easy	including	772	273	196	{woman,even}	around	on	\N	\N	\N	\N
1937	meet	across	995	610	385	{amount}	risk	good	\N	\N	\N	\N
1938	eye	together	605	13	244	{personal,attack}	peace	skin	\N	\N	\N	\N
1942	conference	hand	873	185	179	{indeed,next}	easy	else	\N	\N	\N	\N
1943	attack	control	578	119	240	{soon}	sing	care	\N	\N	\N	\N
1944	two	sport	429	296	161	{data}	his	find	\N	\N	\N	\N
1946	outside	real	562	195	126	{service,trip}	want	inside	\N	\N	\N	\N
1947	attention	plan	673	506	207	{next,fall}	read	interesting	\N	\N	\N	\N
1948	pull	tree	640	717	815	{suggest}	since	necessary	\N	\N	\N	\N
1949	collection	city	735	851	619	{beyond}	control	occur	\N	\N	\N	\N
1950	cell	official	181	339	674	{system}	good	individual	\N	\N	\N	\N
1951	lead	but	197	979	665	{ask,section}	analysis	share	\N	\N	\N	\N
1952	ground	who	114	335	597	{wife,police}	drug	assume	\N	\N	\N	\N
1953	discover	fish	183	3	772	{although,especially}	hit	line	\N	\N	\N	\N
1954	and	three	392	553	396	{state,during}	I	black	\N	\N	\N	\N
1955	begin	research	66	325	345	{hope}	standard	get	\N	\N	\N	\N
1956	treat	seat	266	903	275	{until,population}	sort	current	\N	\N	\N	\N
1957	player	artist	164	960	473	{though}	practice	attack	\N	\N	\N	\N
1958	trial	pretty	393	481	96	{group,somebody}	daughter	likely	\N	\N	\N	\N
1959	process	truth	728	125	572	{change}	beat	different	\N	\N	\N	\N
1961	anyone	moment	833	302	761	{boy,can}	walk	kid	\N	\N	\N	\N
1962	often	seek	205	366	666	{base}	half	mind	\N	\N	\N	\N
1963	skill	imagine	687	876	863	{specific}	mouth	rock	\N	\N	\N	\N
1964	picture	commercial	553	895	659	{realize}	series	probably	\N	\N	\N	\N
1966	collection	view	269	775	548	{lot}	standard	here	\N	\N	\N	\N
1968	inside	voice	807	346	54	{appear,mission}	grow	information	\N	\N	\N	\N
1960	pay	scene	264	966	317	{prevent,time}	population	second	\N	\N	[{"price": "449", "ends_at": "trouble", "price_id": "191", "starts_at": "against"}]	\N
1926	morning	half	862	719	759	{system}	down	list	\N	\N	\N	53
1903	local	maybe	559	43	338	{audience,story}	true	address	\N	\N	\N	4
1919	window	new	464	43	390	{need,reality}	daughter	bank	\N	\N	\N	84
1969	offer	thus	967	257	882	{note}	per	once	\N	\N	\N	\N
1971	watch	region	619	252	38	{consumer,management}	side	style	\N	\N	\N	\N
1972	example	doctor	880	873	96	{something}	short	miss	\N	\N	\N	\N
1974	down	head	923	832	841	{but}	factor	despite	\N	\N	\N	\N
1975	social	garden	518	627	874	{only}	role	summer	\N	\N	\N	\N
1976	happy	walk	696	419	506	{guy}	media	happen	\N	\N	\N	\N
1978	particularly	ok	678	111	836	{avoid,little}	size	indeed	\N	\N	\N	\N
1979	middle	heart	437	181	33	{detail,know}	reason	relate	\N	\N	\N	\N
1981	nice	owner	350	396	449	{team,guy}	huge	hold	\N	\N	\N	\N
1982	catch	hear	485	364	742	{speech}	focus	any	\N	\N	\N	\N
1984	too	science	266	583	50	{do}	order	already	\N	\N	\N	\N
1985	candidate	although	394	158	487	{before}	require	around	\N	\N	\N	\N
1986	appear	nothing	400	848	557	{expert,imagine}	interview	knowledge	\N	\N	\N	\N
1987	remember	measure	183	232	527	{individual}	do	run	\N	\N	\N	\N
1988	police	office	856	630	867	{center}	heavy	soldier	\N	\N	\N	\N
1989	address	store	422	465	768	{blue}	same	speech	\N	\N	\N	\N
1990	admit	red	203	48	581	{seem,answer}	bag	season	\N	\N	\N	\N
1991	modern	all	76	968	723	{sit,pattern}	general	test	\N	\N	\N	\N
1993	however	community	705	872	841	{new,development}	leave	crime	\N	\N	\N	\N
1994	day	care	348	214	105	{onto,thank}	much	instead	\N	\N	\N	\N
1995	clearly	new	916	325	34	{important}	turn	sure	\N	\N	\N	\N
1996	idea	picture	207	359	972	{will,behavior}	chance	who	\N	\N	\N	\N
1999	too	note	301	667	518	{those}	size	night	\N	\N	\N	\N
1945	year	its	862	594	137	{discussion,on}	mother	save	[{"url": "nearly", "alt_text": "responsibility", "image_id": "768", "sort_order": "815"}]	\N	\N	\N
1992	this	military	6	913	145	{make}	book	morning	[{"url": "fall", "alt_text": "computer", "image_id": "175", "sort_order": "973"}]	\N	\N	\N
2000	expect	hotel	768	173	811	{toward}	hospital	protect	[{"url": "mind", "alt_text": "it", "image_id": "118", "sort_order": "995"}]	\N	\N	\N
1970	mean	present	990	680	903	{food}	around	discover	\N	[{"barcode": "worry", "variant_id": "907", "price_override": "136", "is_active_variant": "886"}]	\N	\N
1983	or	real	448	63	693	{about,six}	according	project	\N	[{"barcode": "likely", "variant_id": "218", "price_override": "866", "is_active_variant": "636"}]	\N	\N
1977	impact	among	555	901	246	{stand}	director	admit	\N	\N	[{"price": "2", "ends_at": "even", "price_id": "303", "starts_at": "authority"}]	\N
1939	someone	to	395	270	629	{of,difference}	agree	five	\N	\N	[{"price": "664", "ends_at": "bad", "price_id": "235", "starts_at": "operation"}]	\N
1936	least	later	588	686	964	{feeling,condition}	any	accept	\N	[{"barcode": "sort", "variant_id": "240", "price_override": "863", "is_active_variant": "738"}]	\N	1
1906	modern	type	614	843	932	{campaign}	try	itself	[{"url": "position", "alt_text": "open", "image_id": "330", "sort_order": "867"}]	\N	\N	11
1973	stop	strategy	686	185	197	{become}	heart	everybody	\N	\N	\N	30
1980	whom	such	313	363	32	{weight,effect}	present	approach	\N	\N	\N	80
1914	measure	art	651	264	620	{check,view}	debate	news	\N	\N	\N	14
1998	interview	require	607	931	314	{expert,write}	system	offer	\N	\N	\N	66
1934	despite	general	105	87	411	{so,husband}	bit	leader	\N	\N	\N	86
1967	wrong	leg	136	681	911	{sing}	coach	mother	\N	\N	\N	49
1925	month	on	960	439	750	{heart}	physical	choose	\N	\N	\N	34
1997	answer	week	715	44	662	{a,product}	cultural	successful	\N	[{"barcode": "adult", "variant_id": "924", "price_override": "652", "is_active_variant": "790"}]	\N	51
1940	avoid	answer	88	167	404	{they}	hard	international	\N	\N	\N	41
1965	service	role	843	816	442	{deal}	part	page	\N	\N	\N	94
1941	law	mouth	803	53	218	{just,citizen}	serve	manager	\N	\N	\N	20
1910	security	institution	728	647	817	{social,face}	light	sell	\N	\N	\N	97
\.


--
-- Data for Name: relation_15; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_15 (user_id, email, password_hash, mv_user, loyalty_tier, contact_no, role, employee_no, shift, browsingsession) FROM stdin;
1	richard62@example.com	tonight	{among,many}	\N	\N	user	\N	\N	\N
3	umedina@example.com	until	{into,under,matter}	\N	\N	user	\N	\N	\N
4	edgar92@example.net	popular	{near,political}	\N	\N	user	\N	\N	\N
5	shelby05@example.net	contain	{vote,place,himself}	\N	\N	user	\N	\N	\N
6	hyoung@example.com	would	{open}	\N	\N	user	\N	\N	\N
8	johnsondonald@example.org	both	{usually}	\N	\N	user	\N	\N	\N
9	collinsscott@example.org	stuff	{low,care}	\N	\N	user	\N	\N	\N
10	jeremypace@example.org	whatever	{bar,information,green,sort}	\N	\N	user	\N	\N	\N
12	hthomas@example.net	include	{true}	\N	\N	user	\N	\N	\N
13	sarahsanders@example.org	loss	{cell,certain,question,personal}	\N	\N	user	\N	\N	\N
14	sara26@example.com	somebody	{early}	\N	\N	user	\N	\N	\N
15	itate@example.org	meeting	{court,kid}	\N	\N	user	\N	\N	\N
16	alexandertara@example.org	few	{sure}	\N	\N	user	\N	\N	\N
17	michelle60@example.net	population	{everything,last,have}	\N	\N	user	\N	\N	\N
18	davisalyssa@example.com	act	{grow}	\N	\N	user	\N	\N	\N
19	christophermacdonald@example.org	director	{move,practice,would,focus}	\N	\N	user	\N	\N	\N
20	adamsjerry@example.com	large	{add,security}	\N	\N	user	\N	\N	\N
22	kevin84@example.net	respond	{available,machine}	\N	\N	user	\N	\N	\N
23	richard97@example.org	loss	{view,look}	\N	\N	user	\N	\N	\N
24	pdickerson@example.org	place	{turn,cell,contain,plant}	\N	\N	user	\N	\N	\N
25	dvasquez@example.org	daughter	{risk,ahead}	\N	\N	user	\N	\N	\N
26	donald74@example.com	type	{accept,behind}	\N	\N	user	\N	\N	\N
27	brandon50@example.net	part	{around,blood}	\N	\N	user	\N	\N	\N
28	andersonpatricia@example.com	economy	{general,share,far}	\N	\N	user	\N	\N	\N
29	kevinkane@example.org	size	{serious}	\N	\N	user	\N	\N	\N
30	kduncan@example.org	she	{four,stuff,send}	\N	\N	user	\N	\N	\N
31	aspencer@example.org	end	{end}	\N	\N	user	\N	\N	\N
32	strongregina@example.net	edge	{service,interest,surface,sort}	\N	\N	user	\N	\N	\N
33	cantuterry@example.org	heavy	{law,face,weight,oil}	\N	\N	user	\N	\N	\N
34	hoffmanheather@example.net	management	{anyone}	\N	\N	user	\N	\N	\N
35	kvazquez@example.org	through	{determine}	\N	\N	user	\N	\N	\N
36	bhall@example.org	itself	{account,reduce,religious,service}	\N	\N	user	\N	\N	\N
37	fhall@example.org	personal	{chair,believe}	\N	\N	user	\N	\N	\N
38	ssutton@example.org	wrong	{lose,should,leave,sing}	\N	\N	user	\N	\N	\N
39	kathleenmartinez@example.net	foreign	{wind,success,kitchen}	\N	\N	user	\N	\N	\N
40	laura79@example.org	lose	{growth}	\N	\N	user	\N	\N	\N
41	bkelley@example.org	ten	{cultural}	\N	\N	user	\N	\N	\N
42	jaime56@example.net	meeting	{now}	\N	\N	user	\N	\N	\N
43	sarapage@example.net	dinner	{idea,bank}	\N	\N	user	\N	\N	\N
44	brownjulie@example.org	expect	{visit,pass}	\N	\N	user	\N	\N	\N
45	brandon69@example.net	about	{eight,shake,since}	\N	\N	user	\N	\N	\N
46	tsalazar@example.net	safe	{today}	\N	\N	user	\N	\N	\N
47	edavis@example.org	place	{indicate,season,college}	\N	\N	user	\N	\N	\N
48	dwalls@example.org	put	{now,art}	\N	\N	user	\N	\N	\N
49	jamesprice@example.org	camera	{very}	\N	\N	user	\N	\N	\N
50	joanpearson@example.org	citizen	{democratic}	\N	\N	user	\N	\N	\N
51	usherman@example.org	serve	{reveal,claim,order,begin}	\N	\N	user	\N	\N	\N
52	millerbradley@example.net	article	{board,candidate}	\N	\N	user	\N	\N	\N
53	ggill@example.org	role	{cause,recognize,agency}	\N	\N	user	\N	\N	\N
54	andrea08@example.com	same	{training}	\N	\N	user	\N	\N	\N
55	gabriel73@example.net	ago	{while}	\N	\N	user	\N	\N	\N
56	huynhdennis@example.net	market	{worker,tree,itself}	\N	\N	user	\N	\N	\N
57	georgephelps@example.com	western	{exist,magazine}	\N	\N	user	\N	\N	\N
58	cruzanita@example.net	maybe	{program,none}	\N	\N	user	\N	\N	\N
59	williamkane@example.com	range	{leave,side}	\N	\N	user	\N	\N	\N
60	xvaldez@example.net	want	{computer,make,police}	\N	\N	user	\N	\N	\N
61	sarah36@example.net	score	{owner,market,really,put}	\N	\N	user	\N	\N	\N
62	browndominique@example.org	open	{past,remain,experience}	\N	\N	user	\N	\N	\N
63	qgonzales@example.net	source	{step}	\N	\N	user	\N	\N	\N
64	michaelwiley@example.com	lay	{bed}	\N	\N	user	\N	\N	\N
65	meghansmith@example.com	the	{number,forget,and}	\N	\N	user	\N	\N	\N
67	christy97@example.org	day	{apply}	\N	\N	user	\N	\N	\N
68	kristengutierrez@example.com	term	{same,visit,rest}	\N	\N	user	\N	\N	\N
69	greenlisa@example.net	toward	{play,lose,management}	\N	\N	user	\N	\N	\N
70	pricejeffery@example.org	day	{sea,thing}	\N	\N	user	\N	\N	\N
71	charles00@example.net	center	{fish}	\N	\N	user	\N	\N	\N
72	dcole@example.com	market	{would,sometimes,near,free}	\N	\N	user	\N	\N	\N
73	kcochran@example.net	media	{just,point}	\N	\N	user	\N	\N	\N
74	yanglindsey@example.com	stop	{fly,still,federal}	\N	\N	user	\N	\N	\N
75	morgan34@example.com	black	{total,forward,reason}	\N	\N	user	\N	\N	\N
76	walvarado@example.org	father	{enough,hope,audience,prevent}	\N	\N	user	\N	\N	\N
78	lovemary@example.org	Mr	{civil,really,shoulder,top}	\N	\N	user	\N	\N	\N
79	oliverdominique@example.net	factor	{will,defense,prepare}	\N	\N	user	\N	\N	\N
80	michaelmcmillan@example.net	contain	{part,politics,also,religious}	\N	\N	user	\N	\N	\N
81	albertmooney@example.org	reflect	{building}	\N	\N	user	\N	\N	\N
82	wrightjason@example.net	seven	{deep}	\N	\N	user	\N	\N	\N
83	knapprobert@example.net	economy	{million}	\N	\N	user	\N	\N	\N
84	james09@example.net	ground	{set,bit}	\N	\N	user	\N	\N	\N
85	madelinescott@example.org	trip	{change,develop,evening}	\N	\N	user	\N	\N	\N
86	randallmorgan@example.net	economy	{small,bad}	\N	\N	user	\N	\N	\N
87	smatthews@example.com	contain	{kid}	\N	\N	user	\N	\N	\N
88	joan63@example.net	paper	{decade}	\N	\N	user	\N	\N	\N
89	twebb@example.net	company	{success,together,range}	\N	\N	user	\N	\N	\N
90	kellybrett@example.com	value	{garden,suddenly}	\N	\N	user	\N	\N	\N
91	wpotts@example.net	social	{available,parent,decision,organization}	\N	\N	user	\N	\N	\N
92	bdavis@example.com	TV	{long,something,bag,gas}	\N	\N	user	\N	\N	\N
93	cindymendez@example.org	reveal	{decide}	\N	\N	user	\N	\N	\N
94	lmurphy@example.org	always	{pick}	\N	\N	user	\N	\N	\N
95	whitenancy@example.org	his	{break,top,image,share}	\N	\N	user	\N	\N	\N
96	odavis@example.org	energy	{nation,reduce,smile}	\N	\N	user	\N	\N	\N
97	johnfrederick@example.net	in	{radio,charge,point}	\N	\N	user	\N	\N	\N
98	martinezjustin@example.org	interesting	{type}	\N	\N	user	\N	\N	\N
99	dillondavid@example.com	month	{support}	\N	\N	user	\N	\N	\N
100	laura85@example.com	party	{have,explain,sport}	\N	\N	user	\N	\N	\N
101	sara47@example.net	other	{daughter,international}	group	{would,letter}	customer	\N	\N	\N
103	robert76@example.org	close	{although,standard}	use	{step}	customer	\N	\N	\N
104	dcooper@example.net	director	{door,again,religious,shoulder}	spring	{Mrs,be}	customer	\N	\N	\N
105	jessica14@example.net	condition	{hope,civil}	shoulder	{growth}	customer	\N	\N	\N
106	anthony17@example.com	traditional	{radio,arm}	know	{large}	customer	\N	\N	\N
107	markpetersen@example.net	front	{real,less}	material	{southern}	customer	\N	\N	\N
108	alexander34@example.com	leader	{interest}	will	{church}	customer	\N	\N	\N
109	eric04@example.net	here	{couple,by}	stand	{watch,training}	customer	\N	\N	\N
110	pamelasuarez@example.net	all	{fast,here,carry}	improve	{under}	customer	\N	\N	\N
111	scott98@example.net	fly	{throughout,possible,forward,change}	single	{leader,heart}	customer	\N	\N	\N
112	juliachen@example.com	lead	{rich,price,huge,put}	trouble	{thing}	customer	\N	\N	\N
115	ledwards@example.com	story	{while,item}	not	{bad}	customer	\N	\N	\N
117	zwhite@example.org	painting	{for,force,development,protect}	environmental	{medical,baby}	customer	\N	\N	\N
118	waynejohnson@example.net	leave	{without,it,somebody,trouble}	wait	{hand,population}	customer	\N	\N	\N
119	morrisstephanie@example.org	again	{hope,low}	budget	{consumer}	customer	\N	\N	\N
120	jjohnson@example.org	on	{result,goal,specific,home}	name	{lot}	customer	\N	\N	\N
121	boyddavid@example.com	record	{better,hour,sound,have}	your	{prove,half}	customer	\N	\N	\N
122	gabriellerose@example.org	meeting	{if,air,citizen}	this	{current}	customer	\N	\N	\N
123	kbrowning@example.net	often	{front,some,can,activity}	time	{in}	customer	\N	\N	\N
124	danielholmes@example.net	interest	{gun,concern}	different	{say,build}	customer	\N	\N	\N
125	anthony42@example.org	bit	{political,degree,require}	player	{hard,watch}	customer	\N	\N	\N
126	tombaldwin@example.com	natural	{carry}	society	{everyone}	customer	\N	\N	\N
127	antonio57@example.net	education	{likely,body}	break	{common,hour}	customer	\N	\N	\N
128	bradley53@example.net	culture	{table,war,thousand}	plant	{week,gas}	customer	\N	\N	\N
129	christina23@example.org	anything	{meet,remember,add,design}	simple	{claim,gun}	customer	\N	\N	\N
130	hamiltonrick@example.net	group	{find}	claim	{whether}	customer	\N	\N	\N
131	markstafford@example.org	remember	{stop,thus}	card	{not,drop}	customer	\N	\N	\N
133	carolynyu@example.com	term	{goal,once,down}	someone	{put}	customer	\N	\N	\N
134	williamsonalexandra@example.org	head	{hair}	site	{site,hold}	customer	\N	\N	\N
135	andersonnicole@example.org	again	{upon}	star	{same,plan}	customer	\N	\N	\N
136	hlopez@example.net	agent	{until,space}	movement	{western,marriage}	customer	\N	\N	\N
137	timothyacevedo@example.com	toward	{but,task,run}	news	{American}	customer	\N	\N	\N
138	briancunningham@example.com	statement	{she,rate,wait}	toward	{staff}	customer	\N	\N	\N
139	wallrobert@example.net	teacher	{recently,owner,pay,star}	letter	{race,morning}	customer	\N	\N	\N
140	nicole54@example.org	price	{short,compare}	field	{charge}	customer	\N	\N	\N
141	qgomez@example.net	risk	{hard}	or	{race}	customer	\N	\N	\N
142	vfarmer@example.com	form	{something,woman}	past	{character}	customer	\N	\N	\N
143	krodriguez@example.net	conference	{should,charge,lead}	once	{movie}	customer	\N	\N	\N
144	ralphmiller@example.net	fact	{him,worry,item,enough}	early	{might,relate}	customer	\N	\N	\N
145	richardbrown@example.com	series	{stock,character,represent,power}	easy	{term,thus}	customer	\N	\N	\N
146	craiglaura@example.org	health	{another,always,with,yes}	they	{get,town}	customer	\N	\N	\N
147	xwatson@example.com	local	{movement,report,tree}	under	{present,drop}	customer	\N	\N	\N
149	yrodriguez@example.net	letter	{where,explain,pull}	democratic	{point}	customer	\N	\N	\N
150	johnsonkaylee@example.net	street	{population,ground,close,test}	allow	{hope,hold}	customer	\N	\N	\N
151	taylorpaula@example.net	under	{know,south,occur,operation}	view	{to}	customer	\N	\N	\N
152	cannonjeremy@example.net	crime	{maybe}	physical	{specific}	customer	\N	\N	\N
153	lauraayers@example.org	off	{unit,bag,garden,subject}	one	{common}	customer	\N	\N	\N
154	qsimon@example.org	paper	{dog,official,role,film}	the	{why}	customer	\N	\N	\N
155	holly45@example.com	chance	{big,first}	where	{pretty}	customer	\N	\N	\N
156	garciareginald@example.com	quite	{leader}	line	{arrive,return}	customer	\N	\N	\N
157	amandagibson@example.com	yeah	{research,sit}	she	{development,again}	customer	\N	\N	\N
158	breed@example.org	indeed	{indeed,with,nation}	citizen	{away,magazine}	customer	\N	\N	\N
159	burtonrhonda@example.com	girl	{only,phone}	degree	{series,blood}	customer	\N	\N	\N
160	brownjeffrey@example.org	whose	{soldier,activity,know}	range	{speech}	customer	\N	\N	\N
161	sarahoward@example.net	expert	{break,place,often}	say	{toward}	customer	\N	\N	\N
162	joseph84@example.com	likely	{PM,camera,middle}	enough	{thus,final}	customer	\N	\N	\N
163	kathy28@example.org	could	{close,condition,out}	peace	{traditional}	customer	\N	\N	\N
164	megan64@example.net	environment	{better,significant}	war	{drug,agency}	customer	\N	\N	\N
165	meganmorales@example.com	collection	{take}	resource	{available,brother}	customer	\N	\N	\N
166	thomas46@example.net	because	{under}	home	{during}	customer	\N	\N	\N
167	alilaura@example.org	box	{treat}	yard	{east}	customer	\N	\N	\N
168	david99@example.org	during	{conference,tend,manage,morning}	minute	{phone}	customer	\N	\N	\N
216	zherrera@example.net	research	{party,put}	western	{cup}	primecustomer	\N	\N	\N
170	ewallace@example.net	against	{foreign,step,serious,floor}	continue	{standard}	customer	\N	\N	\N
171	randallmiller@example.com	fact	{also}	spring	{benefit,case}	customer	\N	\N	\N
172	gibsonbernard@example.net	kind	{maybe,others}	nation	{him}	customer	\N	\N	\N
173	mary31@example.net	member	{drive,force,TV}	give	{west,yet}	customer	\N	\N	\N
174	jensenjoshua@example.com	until	{evening}	everybody	{pretty}	customer	\N	\N	\N
175	yhall@example.org	short	{population,respond}	between	{wonder}	customer	\N	\N	\N
176	kevin21@example.com	provide	{avoid,leg}	consumer	{also}	customer	\N	\N	\N
177	seanmeyers@example.net	design	{behind,single}	industry	{million}	customer	\N	\N	\N
178	pinedadiane@example.net	hear	{five,investment,expect,memory}	ahead	{sound}	customer	\N	\N	\N
179	devans@example.net	early	{to,mother,still,sit}	laugh	{she,mouth}	customer	\N	\N	\N
180	joseph91@example.org	market	{like,structure,serious}	create	{group,western}	customer	\N	\N	\N
181	davidcook@example.com	as	{stuff,bed}	hour	{American,leave}	customer	\N	\N	\N
182	kturner@example.com	need	{third,black,opportunity}	seem	{develop,consumer}	customer	\N	\N	\N
184	fgolden@example.com	matter	{shake,respond,just,week}	its	{newspaper}	customer	\N	\N	\N
185	gmitchell@example.com	push	{gun}	budget	{sure}	customer	\N	\N	\N
186	anthony08@example.org	behavior	{practice}	mission	{carry,work}	customer	\N	\N	\N
187	joshua25@example.com	side	{ten}	or	{crime}	customer	\N	\N	\N
188	orrsharon@example.com	treatment	{modern,deep,whole,learn}	teacher	{hear,father}	customer	\N	\N	\N
189	svillanueva@example.net	attack	{key}	they	{manage,notice}	customer	\N	\N	\N
190	sandrahuff@example.org	commercial	{energy,others,avoid,along}	detail	{cover}	customer	\N	\N	\N
191	macdonalddawn@example.net	far	{bed,individual,without,chair}	clearly	{structure}	customer	\N	\N	\N
192	mooredeborah@example.org	form	{story}	detail	{little}	customer	\N	\N	\N
193	harrisjames@example.org	actually	{concern,road,one}	three	{interest,help}	customer	\N	\N	\N
194	kwhite@example.org	artist	{local}	wide	{space,represent}	customer	\N	\N	\N
195	rebecca09@example.org	pay	{physical,tend,yard}	serve	{join,hold}	customer	\N	\N	\N
196	christopherfrazier@example.org	radio	{whatever}	deep	{pretty,style}	customer	\N	\N	\N
198	michael25@example.net	policy	{report}	almost	{individual}	customer	\N	\N	\N
199	pwoods@example.org	would	{want,tree,score,main}	hair	{change}	customer	\N	\N	\N
200	james09@example.com	themselves	{environmental,seat,feel,individual}	some	{involve}	customer	\N	\N	\N
201	icole@example.com	create	{although}	peace	{majority}	primecustomer	\N	\N	\N
203	cynthiagardner@example.org	professional	{boy,determine}	when	{write}	primecustomer	\N	\N	\N
204	johncervantes@example.com	doctor	{carry}	individual	{three}	primecustomer	\N	\N	\N
205	ryanstephanie@example.net	between	{series}	home	{past,option}	primecustomer	\N	\N	\N
206	scott97@example.com	over	{wait,bar,beat}	various	{fine}	primecustomer	\N	\N	\N
207	megan21@example.net	think	{common,bill}	lead	{edge}	primecustomer	\N	\N	\N
209	ebell@example.com	fall	{read}	officer	{bit}	primecustomer	\N	\N	\N
210	charles75@example.org	partner	{reach}	then	{scene,student}	primecustomer	\N	\N	\N
211	jacobclark@example.net	actually	{strong,lay,happen}	describe	{however}	primecustomer	\N	\N	\N
212	kwright@example.org	job	{account,decision}	where	{learn}	primecustomer	\N	\N	\N
213	sbrewer@example.com	carry	{member}	scene	{stage,million}	primecustomer	\N	\N	\N
214	ashleymcdaniel@example.net	government	{guess}	energy	{training}	primecustomer	\N	\N	\N
217	kcollins@example.com	behavior	{certainly,as,data}	most	{little,already}	primecustomer	\N	\N	\N
218	rebeccacarter@example.com	despite	{successful,go,argue}	mother	{young,media}	primecustomer	\N	\N	\N
219	gturner@example.net	wall	{religious,article,build}	game	{involve,history}	primecustomer	\N	\N	\N
220	brittany51@example.net	year	{rock}	who	{response}	primecustomer	\N	\N	\N
221	jeremy15@example.com	happy	{man,test,poor}	outside	{scene,speak}	primecustomer	\N	\N	\N
223	prichardson@example.com	cause	{manager,dream}	up	{candidate,day}	primecustomer	\N	\N	\N
224	isnyder@example.net	meeting	{peace,in}	through	{dinner,month}	primecustomer	\N	\N	\N
225	alexander91@example.net	yet	{here,purpose,act}	care	{will,thousand}	primecustomer	\N	\N	\N
226	phillipking@example.org	individual	{summer}	begin	{toward}	primecustomer	\N	\N	\N
227	yvonnewatson@example.org	continue	{property,woman,bed,run}	would	{standard}	primecustomer	\N	\N	\N
228	amysharp@example.org	maintain	{language,consider,debate}	many	{create,social}	primecustomer	\N	\N	\N
229	snyderkristina@example.net	realize	{green,call,administration}	but	{thing,number}	primecustomer	\N	\N	\N
230	edwardnelson@example.com	worry	{dog,attention}	always	{prepare,police}	primecustomer	\N	\N	\N
231	arthur89@example.net	class	{environment,speech,hard,news}	boy	{visit,issue}	primecustomer	\N	\N	\N
232	ericawalters@example.com	game	{as,your,early}	instead	{pass}	primecustomer	\N	\N	\N
233	tfleming@example.org	itself	{marriage,seven}	under	{free,decide}	primecustomer	\N	\N	\N
234	jasonhartman@example.net	property	{mother,those,these,upon}	movie	{public,despite}	primecustomer	\N	\N	\N
235	tclark@example.org	agreement	{think,candidate}	range	{member}	primecustomer	\N	\N	\N
236	amandarodriguez@example.org	health	{police,structure,every,economy}	daughter	{school,design}	primecustomer	\N	\N	\N
237	igould@example.org	both	{tree,note}	throughout	{great,head}	primecustomer	\N	\N	\N
239	jillianpalmer@example.com	hundred	{group,production}	field	{receive,soon}	primecustomer	\N	\N	\N
241	nicolewilliams@example.net	contain	{tell,lead}	person	{adult,teacher}	primecustomer	\N	\N	\N
242	walshian@example.org	push	{military,draw}	thought	{almost}	primecustomer	\N	\N	\N
243	eric95@example.org	claim	{level,growth}	dinner	{near,development}	primecustomer	\N	\N	\N
244	robin34@example.com	point	{character,throughout}	hope	{he,adult}	primecustomer	\N	\N	\N
245	dking@example.com	phone	{sell,because}	central	{throw}	primecustomer	\N	\N	\N
247	lori47@example.com	movie	{pass,cause}	family	{down}	primecustomer	\N	\N	\N
248	wilkinsjoshua@example.com	lead	{anything}	hundred	{history,west}	primecustomer	\N	\N	\N
249	jermaine35@example.com	student	{available,board}	able	{today,only}	primecustomer	\N	\N	\N
250	hrussell@example.com	by	{special,lawyer}	door	{stock,second}	primecustomer	\N	\N	\N
251	robertspamela@example.net	little	{work}	clearly	{how,apply}	primecustomer	\N	\N	\N
252	sanchezrobert@example.net	easy	{begin,than,family}	tax	{school}	primecustomer	\N	\N	\N
253	ugoodman@example.org	well	{whom,her}	manage	{particular,suggest}	primecustomer	\N	\N	\N
254	carpenterdennis@example.com	save	{sign,safe,whom,while}	deep	{tax,remain}	primecustomer	\N	\N	\N
255	elizabeth62@example.net	perform	{necessary}	oil	{understand}	primecustomer	\N	\N	\N
256	colinadams@example.com	place	{expect}	between	{write}	primecustomer	\N	\N	\N
257	vjoseph@example.org	task	{wrong,world,rule}	few	{necessary}	primecustomer	\N	\N	\N
258	jonestiffany@example.org	director	{indeed}	several	{bed}	primecustomer	\N	\N	\N
259	wilsonjaime@example.com	site	{method,media,mission}	year	{through}	primecustomer	\N	\N	\N
260	kennethwilkinson@example.org	skill	{concern,daughter}	much	{economy}	primecustomer	\N	\N	\N
261	ashley84@example.com	tend	{morning,top}	technology	{civil}	primecustomer	\N	\N	\N
262	bakerkevin@example.net	analysis	{course,point,each}	young	{big}	primecustomer	\N	\N	\N
263	nhoffman@example.net	nothing	{officer,total,current,final}	stop	{campaign}	primecustomer	\N	\N	\N
264	jeanlarson@example.com	chair	{race}	common	{pick}	primecustomer	\N	\N	\N
267	ttorres@example.com	pretty	{must}	officer	{child,special}	primecustomer	\N	\N	\N
268	victoria75@example.com	should	{fire,capital}	property	{information}	primecustomer	\N	\N	\N
269	elliottedward@example.com	officer	{with}	side	{what,politics}	primecustomer	\N	\N	\N
270	nrobles@example.org	entire	{today,at}	right	{lawyer,realize}	primecustomer	\N	\N	\N
271	nkim@example.com	experience	{reason,process,rate}	exactly	{gun}	primecustomer	\N	\N	\N
272	amy91@example.com	goal	{enter,father,share,maybe}	already	{before}	primecustomer	\N	\N	\N
273	ronald40@example.net	table	{director}	half	{just,set}	primecustomer	\N	\N	\N
274	jesse25@example.org	child	{capital}	law	{lot}	primecustomer	\N	\N	\N
275	laura77@example.com	general	{right,gun,research,plan}	fire	{indicate}	primecustomer	\N	\N	\N
276	kcarroll@example.com	just	{act}	crime	{between}	primecustomer	\N	\N	\N
277	deantina@example.net	seven	{sound,than,memory,fill}	hundred	{drug,important}	primecustomer	\N	\N	\N
278	briansmith@example.org	reality	{kid}	available	{prevent}	primecustomer	\N	\N	\N
279	michael01@example.org	adult	{foreign,special}	real	{fact,stock}	primecustomer	\N	\N	\N
280	apriltaylor@example.net	economic	{red,four}	move	{early,area}	primecustomer	\N	\N	\N
281	qnash@example.com	want	{a}	marriage	{strategy,cost}	primecustomer	\N	\N	\N
282	vickie75@example.net	system	{red}	mind	{floor,item}	primecustomer	\N	\N	\N
283	kyledunn@example.com	southern	{term,image}	check	{behavior}	primecustomer	\N	\N	\N
284	adam95@example.com	cost	{weight,watch,everyone}	certainly	{itself}	primecustomer	\N	\N	\N
285	garciakeith@example.org	old	{different}	little	{interview,his}	primecustomer	\N	\N	\N
286	nicholas38@example.net	music	{issue,girl}	method	{expert,here}	primecustomer	\N	\N	\N
287	paul94@example.org	player	{training,process}	Republican	{over,agency}	primecustomer	\N	\N	\N
288	whiteleah@example.com	medical	{yes,reality,every}	morning	{everyone,I}	primecustomer	\N	\N	\N
289	zjones@example.org	voice	{check,such}	factor	{week,student}	primecustomer	\N	\N	\N
290	suttonemily@example.net	leg	{challenge,art}	democratic	{result}	primecustomer	\N	\N	\N
291	alicia75@example.com	side	{price,increase,today,stay}	even	{help}	primecustomer	\N	\N	\N
292	rogersalyssa@example.com	employee	{party,after,lot}	daughter	{when}	primecustomer	\N	\N	\N
293	caitlyn75@example.net	step	{they,western}	reduce	{with}	primecustomer	\N	\N	\N
295	aaron20@example.com	current	{policy,certainly,focus}	Congress	{land}	primecustomer	\N	\N	\N
296	ccampbell@example.net	social	{position,possible,chair,measure}	understand	{physical}	primecustomer	\N	\N	\N
297	terrencecaldwell@example.org	answer	{college,buy,describe,practice}	nice	{explain,use}	primecustomer	\N	\N	\N
298	ljames@example.net	provide	{how,card,mean,rest}	himself	{author,relationship}	primecustomer	\N	\N	\N
299	fmcguire@example.org	two	{matter,usually,way,oil}	traditional	{suffer,agree}	primecustomer	\N	\N	\N
300	morganlori@example.org	front	{stay,defense,young,enter}	when	{scientist,either}	primecustomer	\N	\N	\N
401	jonesjeffery@example.net	then	{require,coach}	\N	\N	employee	politics	\N	\N
402	danielleingram@example.com	size	{really,worry,talk}	\N	\N	employee	fire	\N	\N
403	leah35@example.org	ago	{piece,early}	\N	\N	employee	within	\N	\N
404	joshua89@example.net	road	{maintain,suggest,tax}	\N	\N	employee	attorney	\N	\N
405	eharris@example.net	particularly	{police,popular,record,adult}	\N	\N	employee	yeah	\N	\N
406	natalie21@example.net	soon	{story}	\N	\N	employee	natural	\N	\N
407	hmurray@example.com	work	{inside,forward}	\N	\N	employee	PM	\N	\N
409	laura16@example.org	likely	{bring}	\N	\N	employee	city	\N	\N
410	lewissheila@example.org	accept	{difference,at,already}	\N	\N	employee	eat	\N	\N
411	elizabeth99@example.org	decision	{deep,girl,will}	\N	\N	employee	movie	\N	\N
412	gonzalesalyssa@example.net	father	{population,support,wish}	\N	\N	employee	break	\N	\N
414	debra21@example.org	interest	{someone,discuss,suggest,society}	\N	\N	employee	onto	\N	\N
416	underwooddavid@example.net	present	{certainly}	\N	\N	employee	however	\N	\N
417	dawn88@example.com	suggest	{spring,play}	\N	\N	employee	approach	\N	\N
418	forbesshirley@example.com	true	{several,hair,toward,during}	\N	\N	employee	within	\N	\N
419	julieperry@example.org	social	{their,unit}	\N	\N	employee	story	\N	\N
420	reesejeffrey@example.com	country	{hour,test,safe,instead}	\N	\N	employee	grow	\N	\N
421	kyle39@example.org	view	{time,way,president}	\N	\N	employee	very	\N	\N
422	nicholas48@example.org	red	{among,fish,college}	\N	\N	employee	under	\N	\N
423	jessicamoreno@example.net	point	{memory,stage,list,clear}	\N	\N	employee	past	\N	\N
425	fnichols@example.org	exist	{reflect,another,director}	\N	\N	employee	eight	\N	\N
426	timothygreen@example.org	herself	{sound,sister}	\N	\N	employee	class	\N	\N
427	gcantu@example.org	order	{good,task,professional,property}	\N	\N	employee	Republican	\N	\N
428	amy33@example.org	option	{produce,watch,factor,available}	\N	\N	employee	road	\N	\N
429	mannamanda@example.net	father	{dream,hot,left,city}	\N	\N	employee	next	\N	\N
430	icarrillo@example.org	concern	{research,be}	\N	\N	employee	knowledge	\N	\N
431	eric82@example.net	yeah	{article,hard}	\N	\N	employee	black	\N	\N
432	owensjason@example.org	anyone	{gas,work,five,guess}	\N	\N	employee	recent	\N	\N
433	stacy02@example.org	rather	{should,word,few,treatment}	\N	\N	employee	action	\N	\N
434	jvargas@example.com	different	{ability}	\N	\N	employee	billion	\N	\N
435	breannapalmer@example.net	bed	{test,could,down,million}	\N	\N	employee	foreign	\N	\N
436	adamgibson@example.net	theory	{quite}	\N	\N	employee	already	\N	\N
437	kaiserlisa@example.org	book	{imagine}	\N	\N	employee	example	\N	\N
438	laura82@example.net	arrive	{major,soon}	\N	\N	employee	yourself	\N	\N
439	wilkinsbrian@example.org	author	{actually,big,perhaps}	\N	\N	employee	nature	\N	\N
440	bryanarmstrong@example.net	common	{her,present}	\N	\N	employee	make	\N	\N
441	sierra93@example.org	keep	{late}	\N	\N	employee	note	\N	\N
442	dmurphy@example.org	foreign	{issue}	\N	\N	employee	within	\N	\N
443	phyllis69@example.com	determine	{attack,surface,mean,especially}	\N	\N	employee	bit	\N	\N
444	miranda22@example.com	point	{then,across}	\N	\N	employee	agency	\N	\N
445	pvasquez@example.com	thought	{same}	\N	\N	employee	current	\N	\N
446	william26@example.org	before	{company,be}	\N	\N	employee	but	\N	\N
448	dianahuang@example.org	close	{strong}	\N	\N	employee	opportunity	\N	\N
449	gateskathleen@example.com	positive	{ground,western,training}	\N	\N	employee	modern	\N	\N
450	johnyoung@example.net	speak	{relationship,explain}	\N	\N	employee	miss	\N	\N
451	davisrebecca@example.org	tax	{take,Democrat}	\N	\N	employee	cup	\N	\N
452	hamiltonlori@example.com	over	{many,turn,study,month}	\N	\N	employee	quality	\N	\N
453	miranda58@example.net	money	{health}	\N	\N	employee	behavior	\N	\N
454	jamessims@example.org	scene	{discussion,successful}	\N	\N	employee	seven	\N	\N
455	bryanwood@example.net	shake	{movie,sort,traditional}	\N	\N	employee	weight	\N	\N
456	blackdebbie@example.net	look	{risk}	\N	\N	employee	whom	\N	\N
457	tiffanystrickland@example.net	past	{kid,international}	\N	\N	employee	could	\N	\N
459	rdavis@example.com	interview	{each}	\N	\N	employee	camera	\N	\N
460	taylorjorge@example.net	way	{area,all}	\N	\N	employee	fear	\N	\N
462	tylersmall@example.com	field	{key,argue,and}	\N	\N	employee	scientist	\N	\N
463	gstokes@example.org	then	{cell,term}	\N	\N	employee	analysis	\N	\N
464	tracey51@example.net	sure	{bag,discussion}	\N	\N	employee	radio	\N	\N
468	melissalewis@example.net	safe	{southern,color,body}	\N	\N	employee	tend	\N	\N
469	karentaylor@example.com	ball	{kid}	\N	\N	employee	big	\N	\N
470	robbinsjeremy@example.org	although	{cell,money}	\N	\N	employee	join	\N	\N
471	kristen29@example.org	admit	{become}	\N	\N	employee	economic	\N	\N
472	steven96@example.org	rich	{full,determine,yard,house}	\N	\N	employee	animal	\N	\N
473	mooretimothy@example.com	nor	{with,month,available,century}	\N	\N	employee	value	\N	\N
474	washingtontimothy@example.org	month	{lose}	\N	\N	employee	hotel	\N	\N
475	hrogers@example.org	benefit	{see,provide}	\N	\N	employee	federal	\N	\N
476	uanderson@example.org	table	{feeling,already,arrive}	\N	\N	employee	bar	\N	\N
477	samantha20@example.com	base	{treatment}	\N	\N	employee	hot	\N	\N
478	sextonrandy@example.com	news	{go,foreign,seven,worry}	\N	\N	employee	production	\N	\N
479	jhill@example.net	national	{whose,pick,line}	\N	\N	employee	research	\N	\N
480	tonyaperry@example.com	gun	{whole,analysis}	\N	\N	employee	mother	\N	\N
481	owilkerson@example.net	develop	{method,military}	\N	\N	employee	whom	\N	\N
482	watersamy@example.net	quite	{TV,itself,more}	\N	\N	employee	everything	\N	\N
483	michaelfox@example.net	maintain	{drive}	\N	\N	employee	drug	\N	\N
484	cookbill@example.com	tend	{city,responsibility,painting}	\N	\N	employee	your	\N	\N
485	martinrobinson@example.com	successful	{mention,necessary,help}	\N	\N	employee	election	\N	\N
486	maria05@example.net	task	{nearly,born}	\N	\N	employee	get	\N	\N
487	jhayden@example.com	heavy	{air}	\N	\N	employee	science	\N	\N
488	deannarobbins@example.net	story	{hotel}	\N	\N	employee	media	\N	\N
489	iestes@example.org	yourself	{especially,to,sometimes}	\N	\N	employee	any	\N	\N
490	kaitlyn38@example.net	true	{compare,laugh}	\N	\N	employee	very	\N	\N
491	derek56@example.net	wrong	{pull,though}	\N	\N	employee	hold	\N	\N
493	phillipserin@example.net	likely	{paper,when}	\N	\N	employee	staff	\N	\N
494	uramos@example.net	ball	{stage,challenge,physical,today}	\N	\N	employee	visit	\N	\N
495	collindavis@example.com	art	{value,arm,argue}	\N	\N	employee	human	\N	\N
496	carrollbrittany@example.net	same	{realize,end,have,main}	\N	\N	employee	dog	\N	\N
497	brianhernandez@example.org	reason	{conference,drive,think,finish}	\N	\N	employee	rule	\N	\N
498	howellmichael@example.net	know	{popular}	\N	\N	employee	against	\N	\N
499	emily84@example.com	may	{those,able,million}	\N	\N	employee	job	\N	\N
500	daniel21@example.com	eight	{leave}	\N	\N	employee	end	\N	\N
501	johnsonnicole@example.org	new	{common,case,those,north}	\N	\N	corporateemployee	shoulder	\N	\N
502	griffinmatthew@example.org	rest	{he,attorney,its}	\N	\N	corporateemployee	goal	\N	\N
503	douglas11@example.org	gun	{television,factor,tell,understand}	\N	\N	corporateemployee	art	\N	\N
504	carlos52@example.com	try	{travel}	\N	\N	corporateemployee	ball	\N	\N
505	lbailey@example.net	cold	{doctor}	\N	\N	corporateemployee	point	\N	\N
506	rbraun@example.net	like	{think,agreement,second}	\N	\N	corporateemployee	meeting	\N	\N
507	robert66@example.net	room	{free,page,data,low}	\N	\N	corporateemployee	owner	\N	\N
508	hdonaldson@example.org	himself	{guess}	\N	\N	corporateemployee	avoid	\N	\N
509	riverajennifer@example.com	between	{listen,although}	\N	\N	corporateemployee	huge	\N	\N
510	scottbowman@example.org	key	{president,magazine}	\N	\N	corporateemployee	upon	\N	\N
511	pstout@example.net	eat	{skin}	\N	\N	corporateemployee	expect	\N	\N
512	wtrujillo@example.net	however	{base,phone,me,table}	\N	\N	corporateemployee	method	\N	\N
513	fmurray@example.com	contain	{somebody}	\N	\N	corporateemployee	become	\N	\N
514	sydneyrasmussen@example.org	special	{trade,time}	\N	\N	corporateemployee	commercial	\N	\N
515	melliott@example.org	without	{career}	\N	\N	corporateemployee	more	\N	\N
516	greenecourtney@example.com	line	{price,like,partner}	\N	\N	corporateemployee	candidate	\N	\N
517	cunninghammichael@example.org	late	{camera,husband,sometimes}	\N	\N	corporateemployee	surface	\N	\N
519	walkermichelle@example.com	accept	{week}	\N	\N	corporateemployee	authority	\N	\N
520	ykrause@example.com	like	{among,common,war}	\N	\N	corporateemployee	car	\N	\N
521	ccowan@example.com	production	{many,card,race}	\N	\N	corporateemployee	center	\N	\N
522	emilyhernandez@example.com	task	{face,develop}	\N	\N	corporateemployee	watch	\N	\N
523	tamaraschmidt@example.com	world	{beat,really}	\N	\N	corporateemployee	laugh	\N	\N
524	harrishoward@example.net	thus	{event,politics}	\N	\N	corporateemployee	account	\N	\N
525	christophermoore@example.com	door	{bit,body,shake,what}	\N	\N	corporateemployee	while	\N	\N
526	christopherrussell@example.com	blood	{player}	\N	\N	corporateemployee	surface	\N	\N
527	qjones@example.net	way	{admit,different,affect,station}	\N	\N	corporateemployee	lawyer	\N	\N
528	nancydavis@example.org	car	{full,word,husband,list}	\N	\N	corporateemployee	fill	\N	\N
529	david47@example.org	walk	{entire}	\N	\N	corporateemployee	common	\N	\N
530	jamie95@example.org	property	{age}	\N	\N	corporateemployee	security	\N	\N
531	jamesharrison@example.net	apply	{food,language,quite}	\N	\N	corporateemployee	full	\N	\N
532	paulbrittany@example.org	suddenly	{answer,recognize,bed,particular}	\N	\N	corporateemployee	lose	\N	\N
533	lisa41@example.net	why	{dark,really,memory}	\N	\N	corporateemployee	example	\N	\N
534	kayladeleon@example.net	I	{suggest,short,officer,himself}	\N	\N	corporateemployee	college	\N	\N
535	bryanburch@example.com	how	{realize}	\N	\N	corporateemployee	finally	\N	\N
536	andrew96@example.org	job	{support,than,read,oil}	\N	\N	corporateemployee	movie	\N	\N
538	sholder@example.net	generation	{service,could,above,blood}	\N	\N	corporateemployee	cultural	\N	\N
539	nicole16@example.com	threat	{difficult}	\N	\N	corporateemployee	red	\N	\N
540	ngomez@example.com	nothing	{culture,one}	\N	\N	corporateemployee	quickly	\N	\N
541	kellytara@example.net	owner	{catch,teach,us}	\N	\N	corporateemployee	change	\N	\N
542	robin16@example.com	rock	{once,page,bit}	\N	\N	corporateemployee	rise	\N	\N
543	jthomas@example.org	last	{far,term}	\N	\N	corporateemployee	wife	\N	\N
544	brian17@example.net	skill	{to}	\N	\N	corporateemployee	them	\N	\N
545	kristen89@example.com	on	{right,end}	\N	\N	corporateemployee	night	\N	\N
546	nancy92@example.org	bad	{heart,out,plant}	\N	\N	corporateemployee	that	\N	\N
547	casey60@example.org	true	{chance,much,change,care}	\N	\N	corporateemployee	drug	\N	\N
548	megan14@example.org	whatever	{black,peace,law}	\N	\N	corporateemployee	you	\N	\N
549	xfernandez@example.net	agree	{consumer,treatment,share}	\N	\N	corporateemployee	accept	\N	\N
550	smithstephen@example.org	account	{art,week,eat}	\N	\N	corporateemployee	catch	\N	\N
551	gibsonjoann@example.net	beyond	{nature,within,individual,minute}	\N	\N	corporateemployee	center	\N	\N
552	tammymeyers@example.com	civil	{rich,mother}	\N	\N	corporateemployee	use	\N	\N
553	tyler81@example.com	lose	{such,off}	\N	\N	corporateemployee	add	\N	\N
554	dianehernandez@example.org	use	{home,matter,economic,major}	\N	\N	corporateemployee	about	\N	\N
555	jenkinskristen@example.net	rest	{oil,vote}	\N	\N	corporateemployee	level	\N	\N
556	powelljustin@example.org	reveal	{strong}	\N	\N	corporateemployee	control	\N	\N
557	gcortez@example.com	civil	{himself}	\N	\N	corporateemployee	deal	\N	\N
558	perezdavid@example.org	car	{majority,which}	\N	\N	corporateemployee	commercial	\N	\N
559	nicole44@example.net	send	{hand}	\N	\N	corporateemployee	adult	\N	\N
560	aarnold@example.net	PM	{radio}	\N	\N	corporateemployee	record	\N	\N
561	qrodriguez@example.org	cold	{gas}	\N	\N	corporateemployee	sing	\N	\N
562	martindaniel@example.net	class	{floor,body,six,reflect}	\N	\N	corporateemployee	region	\N	\N
563	rileyemily@example.net	sea	{everyone}	\N	\N	corporateemployee	station	\N	\N
564	maria35@example.org	particular	{television,board}	\N	\N	corporateemployee	produce	\N	\N
565	coliver@example.org	son	{newspaper,top,season}	\N	\N	corporateemployee	just	\N	\N
566	xdillon@example.net	research	{rule,floor}	\N	\N	corporateemployee	that	\N	\N
567	peterssandra@example.net	far	{heavy,act}	\N	\N	corporateemployee	administration	\N	\N
568	ross44@example.org	upon	{sit,main,government,certainly}	\N	\N	corporateemployee	sometimes	\N	\N
569	cmorrison@example.org	guy	{theory}	\N	\N	corporateemployee	last	\N	\N
570	sluna@example.org	water	{work,write,lead,window}	\N	\N	corporateemployee	window	\N	\N
571	lopezmonique@example.net	cell	{know}	\N	\N	corporateemployee	music	\N	\N
572	khull@example.org	necessary	{dog}	\N	\N	corporateemployee	trouble	\N	\N
573	heathercurtis@example.com	read	{your,wall,trade,discover}	\N	\N	corporateemployee	control	\N	\N
574	ericharris@example.org	late	{can,book,individual}	\N	\N	corporateemployee	attention	\N	\N
575	cheryl76@example.org	bank	{year,look,onto,full}	\N	\N	corporateemployee	prepare	\N	\N
576	alexchang@example.org	everybody	{increase,tend}	\N	\N	corporateemployee	likely	\N	\N
577	lfields@example.net	statement	{campaign,shoulder,which}	\N	\N	corporateemployee	player	\N	\N
578	egordon@example.com	process	{worry,film}	\N	\N	corporateemployee	base	\N	\N
580	jennifersmith@example.org	environment	{seat,of,send,order}	\N	\N	corporateemployee	mother	\N	\N
581	brianvelazquez@example.net	policy	{room,building,note}	\N	\N	corporateemployee	art	\N	\N
582	jamesclark@example.net	something	{board,never}	\N	\N	corporateemployee	huge	\N	\N
583	poolebrian@example.org	mouth	{research}	\N	\N	corporateemployee	raise	\N	\N
584	chavezcourtney@example.net	movie	{half,last,central}	\N	\N	corporateemployee	serious	\N	\N
585	shaneberger@example.org	economy	{play,seem,ground,military}	\N	\N	corporateemployee	mention	\N	\N
587	ghammond@example.org	late	{hour,condition,wife,eye}	\N	\N	corporateemployee	type	\N	\N
588	tlopez@example.net	call	{southern,successful}	\N	\N	corporateemployee	believe	\N	\N
589	lisa08@example.org	son	{street,race,team}	\N	\N	corporateemployee	speak	\N	\N
590	heatherbush@example.net	focus	{help}	\N	\N	corporateemployee	will	\N	\N
591	cobbmary@example.org	find	{paper,example}	\N	\N	corporateemployee	religious	\N	\N
592	rossalicia@example.net	yourself	{enter,door}	\N	\N	corporateemployee	in	\N	\N
593	zwilliams@example.com	remain	{full,drive,value,realize}	\N	\N	corporateemployee	piece	\N	\N
594	mark57@example.com	get	{rock,tree}	\N	\N	corporateemployee	until	\N	\N
595	danielholloway@example.org	even	{per}	\N	\N	corporateemployee	enjoy	\N	\N
596	jowen@example.org	everyone	{claim,out,budget,record}	\N	\N	corporateemployee	public	\N	\N
597	stephen23@example.net	agent	{parent,again,than}	\N	\N	corporateemployee	whatever	\N	\N
598	joel64@example.org	table	{remember,address,we,hand}	\N	\N	corporateemployee	watch	\N	\N
599	nicholas30@example.com	interest	{address,weight,industry,deep}	\N	\N	corporateemployee	brother	\N	\N
600	colleenrobertson@example.org	however	{drop,friend}	\N	\N	corporateemployee	good	\N	\N
601	sextonlisa@example.org	service	{just,long}	\N	\N	engineer	force	\N	\N
602	mlandry@example.com	allow	{watch}	\N	\N	engineer	hour	\N	\N
603	pgonzales@example.net	position	{skin}	\N	\N	engineer	edge	\N	\N
604	qcampbell@example.org	station	{sit,surface}	\N	\N	engineer	security	\N	\N
605	ryansmith@example.org	personal	{finish,history,here,indicate}	\N	\N	engineer	nearly	\N	\N
606	sholt@example.org	experience	{window,responsibility}	\N	\N	engineer	push	\N	\N
607	qwatson@example.com	discover	{data,world,seven,edge}	\N	\N	engineer	plant	\N	\N
608	jnguyen@example.com	leave	{indeed,care,late}	\N	\N	engineer	we	\N	\N
609	hurleydavid@example.net	citizen	{part,east,policy,international}	\N	\N	engineer	side	\N	\N
610	perezsarah@example.org	few	{paper}	\N	\N	engineer	walk	\N	\N
611	kristen51@example.net	dream	{responsibility}	\N	\N	engineer	fear	\N	\N
612	garzamaria@example.com	key	{itself}	\N	\N	engineer	pay	\N	\N
614	bgarner@example.net	course	{a,community}	\N	\N	engineer	push	\N	\N
615	vhorn@example.net	marriage	{drop,data}	\N	\N	engineer	note	\N	\N
616	oking@example.com	spring	{two,couple,education,himself}	\N	\N	engineer	suddenly	\N	\N
617	qwright@example.net	body	{call,mission,argue}	\N	\N	engineer	sell	\N	\N
618	jarvisclarence@example.net	at	{once,mother,should,main}	\N	\N	engineer	enjoy	\N	\N
620	alexanderheather@example.net	two	{past,behind}	\N	\N	engineer	middle	\N	\N
621	donna08@example.net	area	{strong,apply,PM,tonight}	\N	\N	engineer	particular	\N	\N
622	riveraandrew@example.org	mean	{place,cup,great,popular}	\N	\N	engineer	evidence	\N	\N
623	christina45@example.com	job	{some}	\N	\N	engineer	themselves	\N	\N
624	zperez@example.org	stay	{think}	\N	\N	engineer	at	\N	\N
625	mollymurray@example.net	send	{before,receive}	\N	\N	engineer	make	\N	\N
626	yvonnewhite@example.com	draw	{western,however,than}	\N	\N	engineer	several	\N	\N
627	moseschristopher@example.com	ever	{mention,there,recent,affect}	\N	\N	engineer	couple	\N	\N
628	williamsglenn@example.net	mother	{couple,rise,recognize}	\N	\N	engineer	fast	\N	\N
629	bradleygarrett@example.com	wish	{doctor,positive,probably,former}	\N	\N	engineer	agency	\N	\N
630	jamesmartin@example.net	whether	{enjoy,general,special}	\N	\N	engineer	risk	\N	\N
631	robert49@example.org	here	{official,foot,skin,along}	\N	\N	engineer	anyone	\N	\N
632	lkirk@example.com	news	{sometimes,sport,bed,animal}	\N	\N	engineer	serve	\N	\N
633	williamsrobert@example.org	believe	{commercial,value}	\N	\N	engineer	anyone	\N	\N
634	mullenantonio@example.net	item	{company,form}	\N	\N	engineer	meet	\N	\N
635	denise89@example.net	condition	{huge,indeed,involve,age}	\N	\N	engineer	too	\N	\N
638	monicamoss@example.com	near	{provide,road,investment}	\N	\N	engineer	stop	\N	\N
639	ochandler@example.com	voice	{much,quality,wind,wonder}	\N	\N	engineer	son	\N	\N
640	jacksonjennifer@example.net	outside	{end}	\N	\N	engineer	do	\N	\N
641	simondouglas@example.org	article	{cup,operation,down}	\N	\N	engineer	something	\N	\N
642	zsullivan@example.com	carry	{against}	\N	\N	engineer	bit	\N	\N
643	alexishughes@example.net	include	{peace,carry,response}	\N	\N	engineer	nature	\N	\N
644	delgadojohn@example.net	mother	{TV}	\N	\N	engineer	degree	\N	\N
645	latoyagreen@example.com	during	{up,practice}	\N	\N	engineer	budget	\N	\N
646	osmith@example.org	amount	{also,brother,player}	\N	\N	engineer	within	\N	\N
647	ortegalisa@example.org	could	{send,we}	\N	\N	engineer	poor	\N	\N
649	michael93@example.com	marriage	{deal,focus,child,his}	\N	\N	engineer	rock	\N	\N
650	yboone@example.org	mean	{door,scene}	\N	\N	engineer	young	\N	\N
651	hillmartha@example.net	various	{environment,between,clearly,account}	\N	\N	engineer	lot	\N	\N
652	stephaniethomas@example.net	in	{address,on,responsibility}	\N	\N	engineer	campaign	\N	\N
653	kimberly36@example.com	wait	{born,structure,collection}	\N	\N	engineer	spring	\N	\N
654	padams@example.com	better	{boy}	\N	\N	engineer	the	\N	\N
655	ericasantos@example.com	deal	{cut,cup}	\N	\N	engineer	entire	\N	\N
656	danielramos@example.net	base	{man,increase}	\N	\N	engineer	against	\N	\N
657	kdelgado@example.net	officer	{cover,top,tend}	\N	\N	engineer	man	\N	\N
658	allendanny@example.com	billion	{hot,probably,do,those}	\N	\N	engineer	relationship	\N	\N
659	brian06@example.org	day	{medical,traditional,it,clearly}	\N	\N	engineer	reduce	\N	\N
660	htrevino@example.net	daughter	{hour,understand}	\N	\N	engineer	look	\N	\N
661	bennettmadison@example.com	human	{gun}	\N	\N	engineer	history	\N	\N
662	vincentball@example.com	pass	{resource,another,couple}	\N	\N	engineer	contain	\N	\N
663	isaac16@example.com	reason	{skin}	\N	\N	engineer	base	\N	\N
664	gilmoredavid@example.com	paper	{only,pass,step,others}	\N	\N	engineer	executive	\N	\N
665	clarkgabriel@example.org	or	{according,often}	\N	\N	engineer	possible	\N	\N
666	fwilliams@example.org	scene	{computer,Republican,conference,color}	\N	\N	engineer	player	\N	\N
667	edwardellis@example.com	threat	{purpose,Mrs,meeting}	\N	\N	engineer	adult	\N	\N
668	mejiazachary@example.net	firm	{new,tell,economic,still}	\N	\N	engineer	customer	\N	\N
669	zboyd@example.org	he	{employee,break,political}	\N	\N	engineer	analysis	\N	\N
670	bobbywaller@example.com	manage	{energy}	\N	\N	engineer	research	\N	\N
671	arobinson@example.com	message	{compare,voice}	\N	\N	engineer	manage	\N	\N
672	linda43@example.net	down	{out,not,enjoy,final}	\N	\N	engineer	deal	\N	\N
673	davidjacob@example.net	baby	{lay}	\N	\N	engineer	scene	\N	\N
674	lmartin@example.net	staff	{bill}	\N	\N	engineer	crime	\N	\N
675	dtorres@example.net	environment	{since}	\N	\N	engineer	song	\N	\N
676	dnichols@example.net	local	{either,pattern}	\N	\N	engineer	doctor	\N	\N
677	james58@example.com	story	{network,many}	\N	\N	engineer	again	\N	\N
678	josephleon@example.org	make	{care}	\N	\N	engineer	off	\N	\N
679	nallen@example.net	stay	{six,break,past,story}	\N	\N	engineer	general	\N	\N
680	iortiz@example.net	goal	{order,western,would}	\N	\N	engineer	accept	\N	\N
681	jeffreythompson@example.net	indicate	{home,able}	\N	\N	engineer	interesting	\N	\N
682	ashleyrogers@example.org	issue	{ever,pay}	\N	\N	engineer	process	\N	\N
683	desireeclark@example.org	form	{new}	\N	\N	engineer	box	\N	\N
684	jamie15@example.org	challenge	{listen}	\N	\N	engineer	doctor	\N	\N
685	hernandezchristopher@example.org	environment	{boy,past,serious}	\N	\N	engineer	story	\N	\N
686	ngarcia@example.com	bed	{even,morning,relate}	\N	\N	engineer	describe	\N	\N
687	beverlyandrews@example.com	year	{exactly}	\N	\N	engineer	attorney	\N	\N
688	steven53@example.net	then	{see,must}	\N	\N	engineer	all	\N	\N
689	xmcintosh@example.net	probably	{nothing,very,end}	\N	\N	engineer	production	\N	\N
691	williamsmegan@example.net	board	{federal,small,worker,picture}	\N	\N	engineer	hope	\N	\N
692	brownjohn@example.com	I	{watch,them,reveal}	\N	\N	engineer	myself	\N	\N
693	krausepatricia@example.com	body	{such}	\N	\N	engineer	stage	\N	\N
694	raymondzachary@example.org	really	{cold,price,apply}	\N	\N	engineer	on	\N	\N
696	coleheather@example.org	trip	{watch,service,career,audience}	\N	\N	engineer	hundred	\N	\N
697	jennifer53@example.org	sing	{cell,street}	\N	\N	engineer	stage	\N	\N
698	benjamin87@example.net	strategy	{movie,bed}	\N	\N	engineer	evidence	\N	\N
700	daniel12@example.net	level	{speech,your,until}	\N	\N	engineer	name	\N	\N
702	cmccoy@example.org	take	{sister,find,least}	\N	\N	supportagent	member	\N	\N
703	leonardthomas@example.com	yes	{author,word,piece}	\N	\N	supportagent	move	\N	\N
704	bhill@example.org	under	{thing}	\N	\N	supportagent	simple	\N	\N
705	jacksonlinda@example.com	feel	{partner,goal,rock}	\N	\N	supportagent	great	\N	\N
706	munozmichael@example.net	month	{hard,maintain}	\N	\N	supportagent	none	\N	\N
707	kent27@example.net	short	{mention,never}	\N	\N	supportagent	take	\N	\N
708	ambermendoza@example.net	perhaps	{true,teach}	\N	\N	supportagent	wife	\N	\N
709	schultzhannah@example.org	American	{rich,natural,ahead,best}	\N	\N	supportagent	relate	\N	\N
710	grantstacy@example.com	when	{loss,pattern,kind}	\N	\N	supportagent	less	\N	\N
711	snolan@example.com	strategy	{surface,hope,plan,none}	\N	\N	supportagent	word	\N	\N
712	davidsmith@example.net	name	{nice,couple,ever,identify}	\N	\N	supportagent	not	\N	\N
713	lwalker@example.com	hit	{foot,general}	\N	\N	supportagent	business	\N	\N
714	kathy72@example.com	station	{remain,spend}	\N	\N	supportagent	area	\N	\N
715	kgarcia@example.com	want	{day,organization,here,sport}	\N	\N	supportagent	able	\N	\N
716	qmurphy@example.org	skin	{art,find}	\N	\N	supportagent	experience	\N	\N
717	ellisbailey@example.org	simply	{leader,pay,project}	\N	\N	supportagent	story	\N	\N
719	danamurray@example.com	nation	{those,dinner}	\N	\N	supportagent	eight	\N	\N
720	stephenlee@example.net	know	{citizen,design}	\N	\N	supportagent	full	\N	\N
721	michellewheeler@example.net	impact	{peace,learn,country}	\N	\N	supportagent	past	\N	\N
722	marellano@example.com	card	{huge}	\N	\N	supportagent	great	\N	\N
723	robert69@example.com	red	{standard}	\N	\N	supportagent	writer	\N	\N
725	anthony60@example.com	PM	{quite}	\N	\N	supportagent	too	\N	\N
726	william30@example.net	reveal	{rich,see,important}	\N	\N	supportagent	sure	\N	\N
727	xsmith@example.org	bit	{traditional}	\N	\N	supportagent	image	\N	\N
728	ojohnson@example.com	wife	{brother,national}	\N	\N	supportagent	program	\N	\N
731	todd06@example.net	opportunity	{break}	\N	\N	supportagent	send	\N	\N
732	whutchinson@example.net	simply	{thus}	\N	\N	supportagent	do	\N	\N
733	kyle72@example.net	determine	{today}	\N	\N	supportagent	federal	\N	\N
735	wilsonalexander@example.net	class	{bag,talk,step,culture}	\N	\N	supportagent	production	\N	\N
736	reedderrick@example.org	rather	{just,everybody,occur,floor}	\N	\N	supportagent	present	\N	\N
737	nleblanc@example.org	health	{recently,anything,establish}	\N	\N	supportagent	chance	\N	\N
738	christopher67@example.org	my	{room,reduce}	\N	\N	supportagent	allow	\N	\N
739	emack@example.net	head	{general,approach}	\N	\N	supportagent	country	\N	\N
741	alvarezchristopher@example.net	early	{task,change}	\N	\N	supportagent	over	\N	\N
742	lisabrewer@example.org	state	{move,you}	\N	\N	supportagent	three	\N	\N
743	paulmarshall@example.org	red	{dream,rock,along}	\N	\N	supportagent	stand	\N	\N
744	oallen@example.com	option	{loss,perhaps,walk,same}	\N	\N	supportagent	remain	\N	\N
745	olivia68@example.org	not	{last,would,cultural,next}	\N	\N	supportagent	serious	\N	\N
746	tyler57@example.net	American	{word,create,thus}	\N	\N	supportagent	physical	\N	\N
747	jwright@example.net	drop	{off,market}	\N	\N	supportagent	person	\N	\N
748	stephensandrew@example.net	nothing	{accept,yard}	\N	\N	supportagent	oil	\N	\N
749	jay53@example.net	know	{raise}	\N	\N	supportagent	politics	\N	\N
750	rhodesjonathan@example.com	argue	{your,late}	\N	\N	supportagent	here	\N	\N
752	smithdavid@example.com	this	{record}	\N	\N	supportagent	week	\N	\N
755	nwelch@example.com	without	{listen}	\N	\N	supportagent	they	\N	\N
756	philliphall@example.org	politics	{next,choose,according}	\N	\N	supportagent	son	\N	\N
757	leejames@example.com	age	{international,security,often,drug}	\N	\N	supportagent	enjoy	\N	\N
758	bsanders@example.net	community	{foot,including}	\N	\N	supportagent	to	\N	\N
759	tamara48@example.com	much	{government,home}	\N	\N	supportagent	easy	\N	\N
760	lbaker@example.net	woman	{my,material,series}	\N	\N	supportagent	itself	\N	\N
762	burnsteresa@example.com	by	{why,look}	\N	\N	supportagent	fire	\N	\N
763	codymalone@example.org	system	{out,south}	\N	\N	supportagent	school	\N	\N
764	princedebra@example.com	human	{figure,blood,change,serve}	\N	\N	supportagent	product	\N	\N
765	cindynelson@example.com	forget	{entire,about}	\N	\N	supportagent	defense	\N	\N
766	carneytrevor@example.net	stop	{trade,whole}	\N	\N	supportagent	agent	\N	\N
767	dowens@example.com	the	{century,charge}	\N	\N	supportagent	present	\N	\N
768	kevin41@example.org	hold	{push}	\N	\N	supportagent	song	\N	\N
769	gconley@example.org	your	{audience,operation,industry}	\N	\N	supportagent	between	\N	\N
770	amcgrath@example.org	seem	{government,owner}	\N	\N	supportagent	partner	\N	\N
771	odonnellcarrie@example.org	total	{positive,protect,character,major}	\N	\N	supportagent	end	\N	\N
773	christina38@example.org	senior	{lawyer,doctor,strong}	\N	\N	supportagent	page	\N	\N
775	erinnoble@example.net	see	{activity}	\N	\N	supportagent	language	\N	\N
776	coreynavarro@example.com	lose	{data}	\N	\N	supportagent	campaign	\N	\N
777	stevenriley@example.net	learn	{up}	\N	\N	supportagent	nearly	\N	\N
778	derrickparker@example.net	recent	{technology}	\N	\N	supportagent	rise	\N	\N
779	richardcraig@example.net	edge	{choose,lot,baby}	\N	\N	supportagent	language	\N	\N
780	david58@example.org	early	{a,go,election,option}	\N	\N	supportagent	throughout	\N	\N
781	xreid@example.com	little	{low}	\N	\N	supportagent	lot	\N	\N
782	frank76@example.com	rate	{speak}	\N	\N	supportagent	scientist	\N	\N
783	julia01@example.com	subject	{person,during,likely}	\N	\N	supportagent	professor	\N	\N
785	ywarren@example.net	husband	{he,suffer,against}	\N	\N	supportagent	investment	\N	\N
786	brownaaron@example.com	president	{film,popular}	\N	\N	supportagent	this	\N	\N
787	kristen48@example.com	close	{hot,us}	\N	\N	supportagent	sort	\N	\N
788	romancarlos@example.net	almost	{their,scene,since}	\N	\N	supportagent	statement	\N	\N
789	vcampbell@example.com	dream	{painting,prepare}	\N	\N	supportagent	level	\N	\N
790	cglass@example.com	service	{note,game}	\N	\N	supportagent	week	\N	\N
791	qlivingston@example.net	body	{more,when,picture}	\N	\N	supportagent	education	\N	\N
792	leachmartha@example.org	across	{research,be,big}	\N	\N	supportagent	seven	\N	\N
793	scotthernandez@example.com	its	{up,knowledge,trial}	\N	\N	supportagent	college	\N	\N
794	vickimartin@example.org	but	{scientist,spend,paper}	\N	\N	supportagent	structure	\N	\N
795	kristenriggs@example.org	bar	{type}	\N	\N	supportagent	mean	\N	\N
796	wcarter@example.com	size	{tend}	\N	\N	supportagent	purpose	\N	\N
797	ktaylor@example.org	a	{finish,when}	\N	\N	supportagent	upon	\N	\N
798	danielhunt@example.org	plant	{since,peace}	\N	\N	supportagent	red	\N	\N
799	carterlindsey@example.org	item	{century,sing,response,effort}	\N	\N	supportagent	item	\N	\N
800	steve24@example.com	almost	{range,character,head,last}	\N	\N	supportagent	north	\N	\N
802	veronica09@example.org	feel	{identify}	\N	\N	fulfillmentassociate	news	amount	\N
804	carolynhayes@example.org	staff	{mention,clearly,argue,among}	\N	\N	fulfillmentassociate	beat	write	\N
805	kleinashley@example.org	edge	{network,change,radio,late}	\N	\N	fulfillmentassociate	part	doctor	\N
806	dominiqueerickson@example.net	decade	{thousand,campaign,view}	\N	\N	fulfillmentassociate	recently	could	\N
807	lhooper@example.net	bad	{make,happy,job}	\N	\N	fulfillmentassociate	choose	in	\N
809	tracy83@example.com	field	{company}	\N	\N	fulfillmentassociate	page	gun	\N
810	dannyhunt@example.org	out	{street,amount,standard}	\N	\N	fulfillmentassociate	ability	spend	\N
811	amy62@example.com	there	{until}	\N	\N	fulfillmentassociate	free	race	\N
812	sara51@example.com	modern	{professor}	\N	\N	fulfillmentassociate	growth	agency	\N
813	scuevas@example.org	yet	{member,discuss,PM,student}	\N	\N	fulfillmentassociate	measure	lead	\N
814	qparker@example.net	draw	{prepare,news,partner,teacher}	\N	\N	fulfillmentassociate	pretty	speech	\N
816	sbeck@example.net	these	{public,black,so,speech}	\N	\N	fulfillmentassociate	least	expert	\N
817	katherinehall@example.org	item	{nothing,bar}	\N	\N	fulfillmentassociate	affect	too	\N
818	marybarber@example.com	operation	{fact,wish,result}	\N	\N	fulfillmentassociate	run	culture	\N
819	amandayoung@example.org	moment	{their,short}	\N	\N	fulfillmentassociate	collection	pattern	\N
820	simpsonjennifer@example.com	worry	{tough}	\N	\N	fulfillmentassociate	ready	war	\N
821	ucarroll@example.org	happy	{service,especially,you}	\N	\N	fulfillmentassociate	ground	whatever	\N
823	adamsamy@example.net	ten	{moment,election,end,middle}	\N	\N	fulfillmentassociate	exist	television	\N
824	wsimpson@example.com	term	{should}	\N	\N	fulfillmentassociate	fear	light	\N
825	mistyhernandez@example.net	home	{college,huge,argue,attack}	\N	\N	fulfillmentassociate	employee	them	\N
826	wongjonathan@example.com	big	{college}	\N	\N	fulfillmentassociate	force	mean	\N
827	heather60@example.com	sell	{seven,recognize,shoulder,leave}	\N	\N	fulfillmentassociate	modern	which	\N
828	gregory63@example.org	sister	{drug,bag}	\N	\N	fulfillmentassociate	according	career	\N
829	brianromero@example.com	offer	{quality,however,sister,meeting}	\N	\N	fulfillmentassociate	agreement	mouth	\N
830	christine72@example.com	point	{require,cup,owner}	\N	\N	fulfillmentassociate	sometimes	teacher	\N
831	williamsrichard@example.net	military	{fact}	\N	\N	fulfillmentassociate	official	risk	\N
832	perkinslinda@example.com	popular	{college,four}	\N	\N	fulfillmentassociate	focus	kind	\N
833	tranjoseph@example.net	card	{focus,point}	\N	\N	fulfillmentassociate	six	expect	\N
834	odurham@example.com	walk	{money,crime}	\N	\N	fulfillmentassociate	successful	talk	\N
835	brian26@example.org	smile	{relationship,ever,service}	\N	\N	fulfillmentassociate	bad	very	\N
838	cspencer@example.net	often	{window,beat,where}	\N	\N	fulfillmentassociate	computer	serious	\N
839	maryharris@example.com	area	{bed}	\N	\N	fulfillmentassociate	order	media	\N
840	jasonjordan@example.org	across	{visit,family,knowledge,left}	\N	\N	fulfillmentassociate	guy	no	\N
841	belindaesparza@example.com	it	{interest,concern,remain}	\N	\N	fulfillmentassociate	movie	among	\N
842	robert56@example.org	fight	{help}	\N	\N	fulfillmentassociate	travel	middle	\N
843	ywilliams@example.com	himself	{activity,eight,cut,establish}	\N	\N	fulfillmentassociate	one	left	\N
844	susan83@example.com	positive	{learn}	\N	\N	fulfillmentassociate	lawyer	born	\N
845	amanda34@example.org	pick	{capital,movement,difference,take}	\N	\N	fulfillmentassociate	hit	finally	\N
846	krystal96@example.net	Democrat	{upon}	\N	\N	fulfillmentassociate	culture	politics	\N
847	alexanderrobert@example.net	hit	{leader}	\N	\N	fulfillmentassociate	research	hotel	\N
848	brownronald@example.net	phone	{fact,news}	\N	\N	fulfillmentassociate	example	onto	\N
849	imendoza@example.net	organization	{company,bit}	\N	\N	fulfillmentassociate	leg	brother	\N
850	ypark@example.net	do	{four}	\N	\N	fulfillmentassociate	yeah	reflect	\N
851	kristopher53@example.org	able	{it,industry,commercial,strong}	\N	\N	fulfillmentassociate	fall	peace	\N
852	lesterlucas@example.org	poor	{later,write,from,protect}	\N	\N	fulfillmentassociate	easy	for	\N
853	kimberlyhenderson@example.com	trouble	{low,name}	\N	\N	fulfillmentassociate	particularly	exist	\N
854	johndorsey@example.org	measure	{interest}	\N	\N	fulfillmentassociate	politics	go	\N
855	hwright@example.org	development	{such,policy}	\N	\N	fulfillmentassociate	stop	treat	\N
856	saundersdaniel@example.com	design	{citizen,travel}	\N	\N	fulfillmentassociate	book	certainly	\N
857	sheltonkevin@example.com	finish	{so,language,myself,relate}	\N	\N	fulfillmentassociate	character	contain	\N
858	amandahernandez@example.net	heart	{shake,performance,home}	\N	\N	fulfillmentassociate	serve	learn	\N
859	zperry@example.net	present	{start,hot,necessary}	\N	\N	fulfillmentassociate	later	election	\N
860	ndunn@example.net	huge	{accept}	\N	\N	fulfillmentassociate	dog	west	\N
861	keithbrown@example.net	technology	{window,he}	\N	\N	fulfillmentassociate	itself	beat	\N
862	chavezterry@example.com	occur	{beat,bit}	\N	\N	fulfillmentassociate	accept	understand	\N
863	whitebrent@example.com	off	{price}	\N	\N	fulfillmentassociate	build	tend	\N
864	stephaniegay@example.net	financial	{lawyer,never}	\N	\N	fulfillmentassociate	word	return	\N
865	rebecca83@example.com	affect	{answer,major,maintain}	\N	\N	fulfillmentassociate	talk	when	\N
866	nboyd@example.com	high	{participant,citizen,energy}	\N	\N	fulfillmentassociate	level	himself	\N
867	toddwilliams@example.org	into	{determine,between,into}	\N	\N	fulfillmentassociate	similar	record	\N
868	rhanson@example.com	method	{marriage,head,answer,front}	\N	\N	fulfillmentassociate	develop	trip	\N
869	jonathan51@example.org	charge	{black,truth,time}	\N	\N	fulfillmentassociate	method	stay	\N
870	chiggins@example.com	guess	{sister,after,film,board}	\N	\N	fulfillmentassociate	professor	mission	\N
871	mhoward@example.com	another	{growth,animal,front}	\N	\N	fulfillmentassociate	culture	item	\N
872	tammymaddox@example.com	require	{experience,lay}	\N	\N	fulfillmentassociate	eat	financial	\N
873	jchavez@example.com	responsibility	{stand}	\N	\N	fulfillmentassociate	finally	change	\N
874	zavalapaul@example.org	station	{visit,pass,more,minute}	\N	\N	fulfillmentassociate	less	I	\N
875	scottbyrd@example.org	still	{chair,figure}	\N	\N	fulfillmentassociate	behind	base	\N
876	jill92@example.org	chair	{leader,item,field}	\N	\N	fulfillmentassociate	knowledge	force	\N
877	hallkathryn@example.org	find	{hot}	\N	\N	fulfillmentassociate	factor	reveal	\N
878	courtneyadams@example.com	discussion	{rate,detail,employee}	\N	\N	fulfillmentassociate	job	international	\N
879	johnlong@example.org	fight	{age,front}	\N	\N	fulfillmentassociate	toward	his	\N
880	wcasey@example.com	mission	{service,process,fine}	\N	\N	fulfillmentassociate	face	focus	\N
881	astephens@example.com	open	{pressure,individual,off}	\N	\N	fulfillmentassociate	budget	deep	\N
882	sharpraymond@example.org	different	{truth,whom,head}	\N	\N	fulfillmentassociate	poor	between	\N
883	samanthamayer@example.com	become	{eye,summer}	\N	\N	fulfillmentassociate	wind	score	\N
884	tnichols@example.org	nice	{feel,throughout,ok}	\N	\N	fulfillmentassociate	well	with	\N
885	elizabeth01@example.com	shake	{especially,response,trip}	\N	\N	fulfillmentassociate	try	public	\N
886	carlachandler@example.org	recognize	{structure,thought,low}	\N	\N	fulfillmentassociate	walk	wrong	\N
887	mcclurekevin@example.net	change	{lose,off,series,Congress}	\N	\N	fulfillmentassociate	dinner	more	\N
888	carla02@example.net	middle	{politics}	\N	\N	fulfillmentassociate	doctor	tax	\N
889	mdennis@example.org	interest	{customer,recognize,value,go}	\N	\N	fulfillmentassociate	picture	up	\N
890	suareztyler@example.com	team	{affect,sort}	\N	\N	fulfillmentassociate	store	could	\N
891	smartin@example.com	fast	{single,hit,why,stay}	\N	\N	fulfillmentassociate	low	reason	\N
892	rmoreno@example.org	important	{doctor,federal}	\N	\N	fulfillmentassociate	audience	phone	\N
893	barbarasellers@example.net	have	{rich,area}	\N	\N	fulfillmentassociate	two	all	\N
894	melissa93@example.com	popular	{article,this,another}	\N	\N	fulfillmentassociate	safe	front	\N
895	kariheath@example.com	analysis	{source,least,plant,wide}	\N	\N	fulfillmentassociate	put	measure	\N
896	marvintrevino@example.com	still	{heavy,lawyer,live,fight}	\N	\N	fulfillmentassociate	conference	tonight	\N
897	john57@example.com	worker	{up}	\N	\N	fulfillmentassociate	possible	notice	\N
900	joshua01@example.org	half	{bag,point}	\N	\N	fulfillmentassociate	accept	development	\N
7	linda77@example.org	their	{level}	\N	\N	user	\N	\N	[{"device": "travel", "session_id": "445", "started_at": "young"}]
740	fmiller@example.com	those	{TV,energy,both,investment}	\N	\N	supportagent	above	\N	[{"device": "chance", "session_id": "702", "started_at": "woman"}]
183	wadeamanda@example.org	indeed	{common}	condition	{ever,religious}	customer	\N	\N	[{"device": "cultural", "session_id": "47", "started_at": "new"}]
699	mcdanielsean@example.com	more	{let,soldier}	\N	\N	engineer	firm	\N	[{"device": "home", "session_id": "641", "started_at": "order"}]
116	dscott@example.net	test	{coach}	safe	{our}	customer	\N	\N	[{"device": "rock", "session_id": "643", "started_at": "million"}]
238	michaeljones@example.net	garden	{guess}	be	{space}	primecustomer	\N	\N	[{"device": "capital", "session_id": "748", "started_at": "state"}]
113	emorales@example.net	discover	{someone,nor,space,because}	election	{avoid}	customer	\N	\N	[{"device": "marriage", "session_id": "858", "started_at": "yeah"}]
461	josephmcdaniel@example.net	anyone	{management,last}	\N	\N	employee	old	\N	[{"device": "short", "session_id": "322", "started_at": "personal"}]
619	jamie06@example.org	food	{study,TV,sing}	\N	\N	engineer	industry	\N	[{"device": "see", "session_id": "747", "started_at": "energy"}]
518	cunninghamanthony@example.org	city	{fly}	\N	\N	corporateemployee	cup	\N	[{"device": "night", "session_id": "578", "started_at": "join"}]
586	victoria81@example.com	agent	{deep,into}	\N	\N	corporateemployee	kitchen	\N	[{"device": "material", "session_id": "63", "started_at": "wear"}]
66	marshallyvonne@example.com	season	{yourself,set}	\N	\N	user	\N	\N	[{"device": "talk", "session_id": "685", "started_at": "how"}]
648	kristinagarcia@example.com	anyone	{method,old,factor}	\N	\N	engineer	question	\N	[{"device": "doctor", "session_id": "671", "started_at": "color"}]
415	lauraburch@example.net	collection	{forward}	\N	\N	employee	drop	\N	[{"device": "education", "session_id": "630", "started_at": "wide"}]
803	josephstewart@example.com	be	{center,major,no,plan}	\N	\N	fulfillmentassociate	wall	evening	[{"device": "blood", "session_id": "783", "started_at": "simply"}]
208	amber77@example.net	available	{give,follow}	investment	{rate,plan}	primecustomer	\N	\N	[{"device": "why", "session_id": "813", "started_at": "home"}]
77	dblevins@example.com	student	{important,college,catch,interest}	\N	\N	user	\N	\N	[{"device": "quite", "session_id": "899", "started_at": "author"}]
772	murillosydney@example.net	throughout	{star,wrong,right,tax}	\N	\N	supportagent	remember	\N	[{"device": "girl", "session_id": "361", "started_at": "able"}]
898	adamvaldez@example.org	suggest	{science}	\N	\N	fulfillmentassociate	able	time	[{"device": "particular", "session_id": "778", "started_at": "newspaper"}]
467	prattkristin@example.org	fast	{recent}	\N	\N	employee	record	\N	[{"device": "window", "session_id": "40", "started_at": "room"}]
102	john29@example.net	film	{seek,ten,budget,current}	affect	{teach,hand}	customer	\N	\N	[{"device": "claim", "session_id": "577", "started_at": "some"}]
21	howardmark@example.com	in	{item,more}	\N	\N	user	\N	\N	[{"device": "believe", "session_id": "430", "started_at": "move"}]
537	greg60@example.org	north	{class,mother,administration}	\N	\N	corporateemployee	inside	\N	[{"device": "brother", "session_id": "314", "started_at": "front"}]
637	rebecca78@example.net	book	{above,table,likely}	\N	\N	engineer	them	\N	[{"device": "relationship", "session_id": "447", "started_at": "into"}]
754	jeffery71@example.net	actually	{cost,near}	\N	\N	supportagent	particular	\N	[{"device": "western", "session_id": "709", "started_at": "game"}]
169	nicoleburton@example.net	west	{son,concern,bed,another}	understand	{drug,into}	customer	\N	\N	[{"device": "avoid", "session_id": "717", "started_at": "social"}]
837	christina95@example.org	Mrs	{show,believe,about}	\N	\N	fulfillmentassociate	which	environment	[{"device": "somebody", "session_id": "128", "started_at": "unit"}]
246	larryrivas@example.net	sport	{scientist,reason,hand}	sit	{president}	primecustomer	\N	\N	[{"device": "huge", "session_id": "457", "started_at": "research"}]
266	taylornicole@example.org	key	{skill,accept,star,actually}	partner	{push}	primecustomer	\N	\N	[{"device": "outside", "session_id": "713", "started_at": "really"}]
730	galvanshannon@example.com	service	{keep,no,boy,without}	\N	\N	supportagent	last	\N	[{"device": "voice", "session_id": "848", "started_at": "institution"}]
774	jenniferalvarez@example.org	character	{food,carry}	\N	\N	supportagent	offer	\N	[{"device": "meet", "session_id": "872", "started_at": "mean"}]
492	asaunders@example.net	class	{effort,task}	\N	\N	employee	alone	\N	[{"device": "or", "session_id": "268", "started_at": "over"}]
197	mtaylor@example.net	focus	{end,for}	least	{perhaps}	customer	\N	\N	[{"device": "form", "session_id": "636", "started_at": "could"}]
148	billy34@example.org	half	{performance,sport}	two	{ahead}	customer	\N	\N	[{"device": "focus", "session_id": "931", "started_at": "finally"}]
753	aaron03@example.net	imagine	{though,Republican,difficult}	\N	\N	supportagent	pay	\N	[{"device": "value", "session_id": "264", "started_at": "occur"}]
784	barbara26@example.org	sense	{whole,treat,difference}	\N	\N	supportagent	design	\N	[{"device": "forward", "session_id": "748", "started_at": "south"}]
222	thomasprice@example.org	source	{fire,energy,us}	major	{wall,boy}	primecustomer	\N	\N	[{"device": "between", "session_id": "366", "started_at": "between"}]
413	lgreen@example.net	last	{charge}	\N	\N	employee	need	\N	[{"device": "close", "session_id": "672", "started_at": "white"}]
751	mmills@example.org	seven	{cover,have}	\N	\N	supportagent	teacher	\N	[{"device": "chance", "session_id": "65", "started_at": "early"}]
815	taylorwilliams@example.net	inside	{effort,financial,number}	\N	\N	fulfillmentassociate	against	pressure	[{"device": "four", "session_id": "640", "started_at": "along"}, {"device": "student", "session_id": "294", "started_at": "wear"}]
801	scottkaren@example.net	subject	{make,out}	\N	\N	fulfillmentassociate	score	compare	[{"device": "example", "session_id": "607", "started_at": "thought"}]
836	thomasanthony@example.com	stuff	{trip,usually}	\N	\N	fulfillmentassociate	total	great	[{"device": "language", "session_id": "7", "started_at": "PM"}]
458	xcohen@example.com	final	{force}	\N	\N	employee	cup	\N	[{"device": "that", "session_id": "367", "started_at": "fear"}]
734	amandaosborne@example.org	fight	{edge,might}	\N	\N	supportagent	buy	\N	[{"device": "article", "session_id": "152", "started_at": "society"}]
724	blake26@example.org	I	{we,identify}	\N	\N	supportagent	detail	\N	[{"device": "laugh", "session_id": "28", "started_at": "program"}]
729	andersonjennifer@example.net	yes	{would,simple,war,thing}	\N	\N	supportagent	hard	\N	[{"device": "Democrat", "session_id": "889", "started_at": "account"}]
690	michaelhunt@example.com	cost	{animal,enter,determine,forward}	\N	\N	engineer	blue	\N	[{"device": "end", "session_id": "792", "started_at": "clearly"}]
579	walkerjamie@example.org	middle	{north,serve}	\N	\N	corporateemployee	program	\N	[{"device": "suddenly", "session_id": "10", "started_at": "sound"}]
11	gonzalezchris@example.com	mention	{you,but,power,song}	\N	\N	user	\N	\N	[{"device": "because", "session_id": "421", "started_at": "walk"}]
718	boyerstephanie@example.com	drop	{hour,defense}	\N	\N	supportagent	blood	\N	[{"device": "back", "session_id": "82", "started_at": "north"}]
294	susan69@example.org	choice	{performance}	rise	{everybody,bar}	primecustomer	\N	\N	[{"device": "trouble", "session_id": "12", "started_at": "instead"}]
424	bhenderson@example.org	read	{language,you,add}	\N	\N	employee	significant	\N	[{"device": "long", "session_id": "838", "started_at": "school"}]
636	laurie91@example.net	two	{indicate,purpose,network}	\N	\N	engineer	again	\N	[{"device": "executive", "session_id": "528", "started_at": "game"}]
695	douglascastaneda@example.com	music	{charge}	\N	\N	engineer	throw	\N	[{"device": "seat", "session_id": "301", "started_at": "term"}]
2	nward@example.com	seven	{hear,prove,black,cup}	\N	\N	user	\N	\N	[{"device": "financial", "session_id": "169", "started_at": "table"}]
202	jenniferclarke@example.net	board	{stand}	exactly	{program}	primecustomer	\N	\N	[{"device": "practice", "session_id": "463", "started_at": "interest"}]
215	moorejacqueline@example.net	her	{large}	indicate	{evidence,pay}	primecustomer	\N	\N	[{"device": "sea", "session_id": "649", "started_at": "walk"}, {"device": "surface", "session_id": "571", "started_at": "charge"}]
465	yruiz@example.com	wind	{while,result,he,box}	\N	\N	employee	among	\N	[{"device": "executive", "session_id": "840", "started_at": "tough"}]
132	pwalker@example.com	exist	{suddenly}	standard	{these,traditional}	customer	\N	\N	[{"device": "perhaps", "session_id": "516", "started_at": "television"}]
899	qramirez@example.org	reality	{result,bill,record}	\N	\N	fulfillmentassociate	value	similar	[{"device": "leave", "session_id": "157", "started_at": "instead"}]
808	garrettrivas@example.net	sell	{us,who,news,manager}	\N	\N	fulfillmentassociate	affect	plant	[{"device": "me", "session_id": "893", "started_at": "by"}]
240	austincarter@example.org	relate	{he,travel,son}	sister	{husband}	primecustomer	\N	\N	[{"device": "television", "session_id": "87", "started_at": "sit"}]
114	vbaird@example.com	whatever	{effect}	back	{professor}	customer	\N	\N	[{"device": "marriage", "session_id": "66", "started_at": "sell"}]
613	adam10@example.org	fall	{get,sea,small}	\N	\N	engineer	clear	\N	[{"device": "begin", "session_id": "103", "started_at": "how"}]
447	mortonjonathan@example.com	which	{cause,party,nothing}	\N	\N	employee	her	\N	[{"device": "family", "session_id": "326", "started_at": "care"}]
701	mcclurejennifer@example.org	amount	{catch,spend,southern,sound}	\N	\N	supportagent	quite	\N	[{"device": "foreign", "session_id": "1000", "started_at": "phone"}]
265	tiffanynichols@example.com	security	{final,make,check}	power	{example,require}	primecustomer	\N	\N	[{"device": "year", "session_id": "35", "started_at": "college"}]
822	pamela44@example.net	look	{no}	\N	\N	fulfillmentassociate	forget	already	[{"device": "air", "session_id": "905", "started_at": "again"}]
408	angela00@example.net	difference	{feel,itself,source,mother}	\N	\N	employee	last	\N	[{"device": "fund", "session_id": "444", "started_at": "team"}]
466	michelle77@example.net	standard	{idea}	\N	\N	employee	argue	\N	[{"device": "there", "session_id": "11", "started_at": "early"}]
761	rosscarolyn@example.net	car	{pick,sing}	\N	\N	supportagent	available	\N	[{"device": "network", "session_id": "891", "started_at": "administration"}]
\.


--
-- Data for Name: relation_16; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_16 (primecustomer_id, renewal_date, subscription_addons) FROM stdin;
201	name	{trial,occur,buy,bag}
202	check	{decide}
203	sure	{result}
204	writer	{less,wife,such,line}
205	thank	{win,set,time}
206	serious	{executive,cause}
207	full	{exactly,beat}
208	how	{particular}
209	agreement	{out,late}
210	memory	{practice,environmental,pretty}
211	stock	{start,suffer}
212	fund	{Mr,guess,discussion,sense}
213	reflect	{join,candidate}
214	well	{play,respond,candidate}
215	citizen	{be,where,pick,sit}
216	court	{down,model,wife}
217	set	{bit,produce}
218	drive	{officer,whatever,throw,its}
219	analysis	{ago}
220	happy	{cost}
221	at	{from,detail,feel,music}
222	think	{information}
223	once	{represent,bed,soldier,seem}
224	region	{break,challenge,vote,occur}
225	his	{him,whose}
226	center	{reveal}
227	even	{same,choice,take,mind}
228	commercial	{money}
229	hour	{away}
230	my	{company}
231	strong	{notice}
232	serious	{raise}
233	church	{season,this}
234	mouth	{city}
235	everybody	{nice}
236	choice	{hope,on,lay}
237	wish	{eye,some}
238	individual	{place}
239	way	{letter,new,thousand,full}
240	economic	{billion,present}
241	difference	{gun,floor}
242	spring	{still,technology,live,long}
243	spring	{position,suffer,since}
244	similar	{box,situation,commercial}
245	marriage	{yard,participant}
246	suggest	{develop,society}
247	western	{trade,guy,set,forward}
248	rather	{rich,oil,how,worker}
249	body	{list,produce}
250	garden	{add,few}
251	sign	{on,manager,seat}
252	more	{follow,thought,various}
253	safe	{tax}
254	happen	{number}
255	benefit	{view}
256	follow	{term,cover}
257	light	{until,half,my,our}
258	while	{in,wind}
259	which	{shake,beat}
260	stop	{miss,mention,science}
261	let	{can}
262	image	{word,response,behavior,voice}
263	later	{age,consider,us,likely}
264	southern	{test,film,cover,measure}
265	account	{across,around,must}
266	lose	{enough}
267	throw	{hold,subject,reach}
268	community	{process,parent,class,machine}
269	style	{night}
270	another	{personal,soldier,recently}
271	maybe	{clear,notice,material,both}
272	firm	{account,human}
273	yeah	{treat,north,trial,detail}
274	under	{green}
275	training	{receive,board,perhaps}
276	pick	{water,stay}
277	cell	{lawyer,Republican,energy}
278	officer	{party,front,home,similar}
279	morning	{us}
280	college	{figure}
281	save	{activity}
282	whose	{idea,be,time,fill}
283	everybody	{guess,ready,evening,could}
284	chair	{interview}
285	around	{ready}
286	skill	{skill,source,write,add}
287	fill	{machine,painting,student}
288	political	{behind,why,whole,along}
289	trial	{single}
290	fire	{dinner}
291	something	{thank}
292	force	{serve,risk,example}
293	give	{organization,finally,experience}
294	sit	{radio}
295	result	{mention,everyone,food,coach}
296	structure	{listen}
297	anyone	{although,black,likely}
298	something	{direction,power,adult,indicate}
299	position	{lay}
300	anything	{meeting}
\.


--
-- Data for Name: relation_17; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_17 (businesscustomer_id, email, password_hash, mv_user, loyalty_tier, contact_no, company_name, browsingsession) FROM stdin;
301	sophiaspencer@example.com	test	{politics}	blue	{return}	standard	\N
302	linda80@example.net	school	{little,success,own,note}	heavy	{bank,me}	practice	\N
303	jefferychan@example.com	point	{environment}	officer	{fish}	democratic	\N
304	ybrown@example.net	need	{pull,himself,system,describe}	dinner	{security,as}	religious	\N
305	jessica62@example.com	decision	{lawyer}	difficult	{foot}	bad	\N
306	mcphersonamber@example.net	reality	{movement}	goal	{family,thought}	sell	\N
307	jeffrey84@example.org	they	{machine,nothing}	family	{political,before}	carry	\N
308	jerryfarmer@example.com	appear	{instead,end,left}	upon	{enough,weight}	relate	\N
310	kellietaylor@example.net	else	{Democrat,reality,add,trouble}	politics	{analysis,that}	why	\N
311	tranalison@example.com	oil	{happy,especially,wall,kitchen}	there	{drop,between}	exactly	\N
312	davismiranda@example.com	sit	{remember,performance,him,development}	four	{claim}	policy	\N
313	aaronrobinson@example.org	manage	{avoid}	picture	{likely}	by	\N
316	kathryn44@example.net	far	{fly,each,third,pretty}	author	{already}	available	\N
317	udiaz@example.net	its	{ten,space,require}	yeah	{yourself}	message	\N
319	codypayne@example.org	picture	{voice}	although	{bad,parent}	admit	\N
320	zimmermanmichael@example.com	suffer	{they}	president	{identify}	word	\N
321	valerie75@example.org	enough	{industry,white,agree}	person	{a,money}	onto	\N
322	rhonda10@example.com	institution	{available,you}	parent	{test,gun}	particular	\N
323	malonetodd@example.org	collection	{science,recent,community}	least	{likely,available}	maybe	\N
324	mathewsdanny@example.com	yeah	{stay,cup,business}	opportunity	{degree,movement}	what	\N
325	reillymichael@example.net	however	{hotel,decide,recognize}	participant	{step}	million	\N
326	mcneilkatherine@example.com	economy	{modern,thus}	avoid	{station}	daughter	\N
327	jenniferstein@example.org	whole	{especially,job}	star	{town,suggest}	final	\N
328	wendy73@example.org	theory	{sort}	operation	{true}	manage	\N
330	michelle80@example.net	memory	{official,report,main,him}	data	{majority}	war	\N
331	shannonanderson@example.net	read	{majority,heavy}	almost	{concern}	win	\N
332	kellybarbara@example.net	reality	{pretty,fish,rather,if}	boy	{politics,more}	support	\N
333	combsjennifer@example.net	green	{paper,audience}	impact	{would}	mention	\N
334	davidsontracy@example.net	relationship	{quite,sense,really}	thing	{picture}	program	\N
335	daviddavidson@example.org	perhaps	{system,whether,someone}	middle	{continue}	join	\N
336	kramerkenneth@example.org	imagine	{I,appear}	so	{pass,rather}	ball	\N
337	sgrant@example.org	middle	{ask,tend}	after	{leg}	support	\N
338	fnunez@example.org	onto	{attention,spend,what,between}	couple	{large}	plan	\N
339	uweaver@example.net	someone	{treatment,learn,next}	account	{standard}	trip	\N
340	zsmith@example.org	onto	{land,of}	run	{teach,moment}	prevent	\N
341	christinaescobar@example.org	concern	{office,just,response}	foreign	{somebody,send}	push	\N
342	walkerjennifer@example.com	century	{TV,water,mean,article}	time	{still}	once	\N
343	robert83@example.net	wonder	{find,sometimes}	must	{sister}	tax	\N
344	richard34@example.net	college	{turn,speech}	miss	{red,teach}	control	\N
345	michael59@example.net	road	{would,game}	increase	{successful,oil}	difference	\N
347	vegatracy@example.org	likely	{choose}	side	{cup}	sure	\N
348	icoleman@example.org	pay	{thing}	health	{wrong}	hit	\N
349	leemichael@example.com	direction	{memory,hot,through,animal}	laugh	{such,Democrat}	answer	\N
350	mwood@example.net	nature	{spend}	believe	{hundred,bank}	our	\N
351	cameron61@example.org	should	{hair,anyone,dream}	exist	{day,relate}	whole	\N
352	knappchristine@example.org	receive	{will,realize,more}	everyone	{million,strong}	participant	\N
353	kelseywilson@example.net	keep	{it,deep,wish,find}	arrive	{much}	current	\N
354	jacob20@example.net	outside	{require}	us	{number,sort}	style	\N
355	boyddonald@example.com	after	{sing,method,community,late}	speak	{seek,great}	wall	\N
356	christophergaines@example.org	personal	{whose,method}	fall	{protect}	these	\N
359	melissa15@example.com	peace	{collection}	guess	{reach,policy}	glass	\N
360	annewalters@example.net	quite	{begin,win,pay}	teach	{call}	customer	\N
363	proth@example.net	reveal	{sea}	quickly	{later}	cut	\N
364	mnewton@example.com	speech	{hand,store}	fly	{travel,financial}	less	\N
365	hansenrobert@example.org	agreement	{institution,language}	bank	{some}	bill	\N
366	vrodriguez@example.com	six	{candidate}	billion	{several,have}	statement	\N
367	bwilliams@example.com	site	{part,current,chair,enough}	season	{pretty}	real	\N
368	kimelizabeth@example.org	short	{run,company,debate}	whatever	{all}	current	\N
369	brownsusan@example.com	ask	{service,else,that,range}	season	{media,production}	thousand	\N
370	harrisdeborah@example.net	people	{performance,ten,could}	debate	{foreign,check}	value	\N
371	morrisamanda@example.net	week	{deal,entire,once}	paper	{news}	appear	\N
372	tony42@example.com	white	{wait}	current	{alone}	after	\N
373	donald33@example.net	paper	{affect,magazine}	finish	{end}	top	\N
374	robert90@example.org	whose	{stuff}	child	{reach}	article	\N
376	svega@example.net	never	{we,teach,watch}	sea	{few}	smile	\N
377	ffischer@example.net	education	{prepare}	main	{no,plan}	week	\N
378	dustin56@example.com	check	{training}	exist	{ball}	but	\N
379	jacksonchristopher@example.org	worker	{pull}	poor	{total}	boy	\N
380	leeerica@example.com	sound	{imagine,perhaps}	economy	{open,near}	single	\N
381	keithgardner@example.org	already	{seat,nation}	author	{international,carry}	character	\N
383	barry60@example.com	through	{seek,state,day}	write	{city,lawyer}	air	\N
386	sbrown@example.com	economic	{size}	include	{lay,laugh}	approach	\N
387	jennifermendoza@example.com	dream	{her,main}	deal	{figure,career}	produce	\N
388	bruce42@example.net	material	{traditional,under,yourself,attention}	along	{magazine}	part	\N
389	kwilliams@example.com	who	{kind,box,successful}	trip	{grow,cell}	card	\N
391	anthony98@example.net	floor	{three,room,material,ahead}	last	{out,establish}	it	\N
392	chad58@example.net	environmental	{sea}	various	{federal,relationship}	nature	\N
393	craigfoster@example.com	fire	{listen,law,recognize}	or	{affect,such}	despite	\N
394	dixonmario@example.com	leader	{painting,arm,lot}	people	{involve}	analysis	\N
395	tmoore@example.net	very	{plant,now,traditional,court}	small	{head,stuff}	plan	\N
396	emily48@example.com	ever	{game,well,move,two}	everybody	{other,around}	appear	\N
397	lholmes@example.net	already	{as,perform,yourself}	fill	{set}	across	\N
399	jenniferwilliams@example.com	old	{decade}	able	{allow,interesting}	necessary	\N
400	kenneth74@example.org	they	{week,old}	start	{information,assume}	lot	\N
309	nathan46@example.com	social	{front}	series	{develop}	long	[{"device": "space", "session_id": "102", "started_at": "way"}]
318	yhicks@example.com	sport	{decision,market}	reflect	{his,become}	truth	[{"device": "north", "session_id": "72", "started_at": "camera"}]
329	raymonddavis@example.com	focus	{way}	break	{vote}	main	[{"device": "hit", "session_id": "443", "started_at": "choice"}]
382	parkernathan@example.org	rock	{blood,military}	increase	{help,quickly}	among	[{"device": "perform", "session_id": "748", "started_at": "fill"}, {"device": "recognize", "session_id": "657", "started_at": "water"}]
315	julian16@example.net	long	{part,suddenly,face}	tough	{hard}	together	[{"device": "build", "session_id": "281", "started_at": "watch"}]
357	jill54@example.net	decide	{nothing,east}	society	{entire}	away	[{"device": "song", "session_id": "1", "started_at": "here"}]
361	pmueller@example.org	small	{entire,south}	rather	{first,whom}	away	[{"device": "interest", "session_id": "792", "started_at": "trip"}]
346	lisamcdonald@example.com	time	{easy,walk}	hand	{hospital}	magazine	[{"device": "while", "session_id": "49", "started_at": "either"}]
384	ydorsey@example.net	hope	{film,return,simply}	loss	{simple}	movement	[{"device": "politics", "session_id": "489", "started_at": "exist"}]
375	romerokimberly@example.org	conference	{concern,day}	the	{compare,tax}	executive	[{"device": "away", "session_id": "1", "started_at": "wrong"}]
314	iphillips@example.org	life	{fly,if,data,man}	accept	{page}	behind	[{"device": "increase", "session_id": "62", "started_at": "across"}]
385	calebgarcia@example.net	either	{future,choice,general,real}	federal	{floor}	college	[{"device": "ready", "session_id": "541", "started_at": "structure"}]
362	nicholsonmichael@example.com	current	{avoid,space,oil}	suggest	{avoid}	turn	[{"device": "son", "session_id": "437", "started_at": "remain"}]
390	moraleschristine@example.com	produce	{end,born}	authority	{long,attention}	majority	[{"device": "professor", "session_id": "843", "started_at": "painting"}]
398	juanharris@example.org	matter	{small,record,challenge,forward}	per	{lead}	by	[{"device": "anything", "session_id": "789", "started_at": "work"}]
358	edward59@example.org	painting	{remember,budget,his}	thing	{reflect}	person	[{"device": "director", "session_id": "557", "started_at": "a"}]
\.


--
-- Data for Name: relation_18; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_18 (corporateemployee_id, office_site, level, role) FROM stdin;
501	benefit	\N	corporateemployee
502	main	\N	corporateemployee
503	near	\N	corporateemployee
504	group	\N	corporateemployee
505	church	\N	corporateemployee
506	century	\N	corporateemployee
507	test	\N	corporateemployee
508	behind	\N	corporateemployee
509	real	\N	corporateemployee
510	arm	\N	corporateemployee
511	several	\N	corporateemployee
512	growth	\N	corporateemployee
513	recent	\N	corporateemployee
514	specific	\N	corporateemployee
515	huge	\N	corporateemployee
516	over	\N	corporateemployee
517	professional	\N	corporateemployee
518	production	\N	corporateemployee
519	daughter	\N	corporateemployee
520	in	\N	corporateemployee
521	half	\N	corporateemployee
522	pressure	\N	corporateemployee
523	somebody	\N	corporateemployee
524	animal	\N	corporateemployee
525	front	\N	corporateemployee
526	yourself	\N	corporateemployee
527	above	\N	corporateemployee
528	trade	\N	corporateemployee
529	once	\N	corporateemployee
530	culture	\N	corporateemployee
531	easy	\N	corporateemployee
532	physical	\N	corporateemployee
533	mother	\N	corporateemployee
534	can	\N	corporateemployee
535	discuss	\N	corporateemployee
536	middle	\N	corporateemployee
537	employee	\N	corporateemployee
538	most	\N	corporateemployee
539	yeah	\N	corporateemployee
540	still	\N	corporateemployee
541	book	\N	corporateemployee
542	find	\N	corporateemployee
543	step	\N	corporateemployee
544	lawyer	\N	corporateemployee
545	election	\N	corporateemployee
546	return	\N	corporateemployee
547	us	\N	corporateemployee
548	meet	\N	corporateemployee
549	everybody	\N	corporateemployee
550	try	\N	corporateemployee
551	bill	\N	corporateemployee
552	soldier	\N	corporateemployee
553	parent	\N	corporateemployee
554	others	\N	corporateemployee
555	western	\N	corporateemployee
556	fall	\N	corporateemployee
557	discover	\N	corporateemployee
558	several	\N	corporateemployee
559	citizen	\N	corporateemployee
560	single	\N	corporateemployee
561	reality	\N	corporateemployee
562	painting	\N	corporateemployee
563	travel	\N	corporateemployee
564	situation	\N	corporateemployee
565	three	\N	corporateemployee
566	have	\N	corporateemployee
567	generation	\N	corporateemployee
568	building	\N	corporateemployee
569	collection	\N	corporateemployee
570	perform	\N	corporateemployee
571	treat	\N	corporateemployee
572	industry	\N	corporateemployee
573	spend	\N	corporateemployee
574	everybody	\N	corporateemployee
575	song	\N	corporateemployee
576	serve	\N	corporateemployee
577	quality	\N	corporateemployee
578	rise	\N	corporateemployee
579	his	\N	corporateemployee
580	technology	\N	corporateemployee
581	painting	\N	corporateemployee
582	must	\N	corporateemployee
583	position	\N	corporateemployee
584	Republican	\N	corporateemployee
585	have	\N	corporateemployee
586	listen	\N	corporateemployee
587	finally	\N	corporateemployee
588	easy	\N	corporateemployee
589	baby	\N	corporateemployee
590	by	\N	corporateemployee
591	better	\N	corporateemployee
592	prevent	\N	corporateemployee
593	general	\N	corporateemployee
594	easy	\N	corporateemployee
595	relationship	\N	corporateemployee
596	arm	\N	corporateemployee
597	itself	\N	corporateemployee
598	day	\N	corporateemployee
599	our	\N	corporateemployee
600	TV	\N	corporateemployee
601	street	realize	engineer
602	loss	fund	engineer
603	on	price	engineer
604	suffer	half	engineer
605	exactly	just	engineer
606	trial	market	engineer
607	those	official	engineer
608	too	about	engineer
609	sell	out	engineer
610	system	election	engineer
611	remember	must	engineer
612	drop	of	engineer
613	note	dinner	engineer
614	whatever	suggest	engineer
615	which	perform	engineer
616	fight	over	engineer
617	grow	certainly	engineer
618	test	weight	engineer
619	professional	whatever	engineer
620	century	message	engineer
621	space	director	engineer
622	financial	population	engineer
623	war	company	engineer
624	can	herself	engineer
625	teacher	enjoy	engineer
626	other	onto	engineer
627	special	thank	engineer
628	win	watch	engineer
629	call	somebody	engineer
630	hour	member	engineer
631	next	traditional	engineer
632	even	law	engineer
633	job	at	engineer
634	draw	attention	engineer
635	side	draw	engineer
636	yourself	three	engineer
637	medical	end	engineer
638	attention	beautiful	engineer
639	fact	do	engineer
640	enter	one	engineer
641	catch	agency	engineer
642	public	already	engineer
643	certainly	social	engineer
644	recognize	grow	engineer
645	argue	trial	engineer
646	occur	really	engineer
647	under	threat	engineer
648	impact	young	engineer
649	sense	campaign	engineer
650	happy	our	engineer
651	run	society	engineer
652	strong	still	engineer
653	agency	seven	engineer
654	authority	inside	engineer
655	economy	long	engineer
656	offer	outside	engineer
657	gun	above	engineer
658	body	whole	engineer
659	mention	executive	engineer
660	popular	prevent	engineer
661	their	likely	engineer
662	matter	hand	engineer
663	become	those	engineer
664	card	thus	engineer
665	natural	say	engineer
666	step	shoulder	engineer
667	whole	college	engineer
668	race	indicate	engineer
669	star	follow	engineer
670	agree	unit	engineer
671	occur	sense	engineer
672	along	great	engineer
673	five	ask	engineer
674	skill	method	engineer
675	animal	particular	engineer
676	health	sit	engineer
677	argue	human	engineer
678	none	gun	engineer
679	personal	evening	engineer
680	race	cover	engineer
681	up	cost	engineer
682	ground	for	engineer
683	outside	some	engineer
684	surface	compare	engineer
685	this	leg	engineer
686	water	three	engineer
687	part	improve	engineer
688	understand	ahead	engineer
689	public	tax	engineer
690	property	dream	engineer
691	authority	thing	engineer
692	court	candidate	engineer
693	work	business	engineer
694	continue	interview	engineer
695	throughout	line	engineer
696	population	reach	engineer
697	live	just	engineer
698	spend	he	engineer
699	law	model	engineer
700	while	choice	engineer
\.


--
-- Data for Name: relation_19; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_19 (supportagent_id, queue) FROM stdin;
701	region
702	red
703	sister
704	feeling
705	you
706	indeed
707	life
708	majority
709	while
710	require
711	number
712	beyond
713	clearly
714	response
715	name
716	hand
717	or
718	rate
719	property
720	wide
721	author
722	control
723	Mrs
724	white
725	them
726	successful
727	job
728	after
729	of
730	student
731	develop
732	wait
733	meeting
734	perform
735	occur
736	hold
737	when
738	just
739	century
740	drive
741	list
742	response
743	place
744	sort
745	television
746	pay
747	analysis
748	show
749	town
750	doctor
751	major
752	learn
753	opportunity
754	hot
755	past
756	mother
757	create
758	six
759	television
760	pretty
761	present
762	we
763	such
764	physical
765	structure
766	law
767	fine
768	view
769	consider
770	side
771	nation
772	likely
773	sport
774	hit
775	old
776	finally
777	Congress
778	democratic
779	store
780	according
781	maybe
782	tree
783	him
784	executive
785	economy
786	customer
787	president
788	daughter
789	nice
790	reach
791	action
792	resource
793	reach
794	picture
795	whole
796	something
797	old
798	sell
799	usually
800	series
\.


--
-- Data for Name: relation_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_2 (physicalproduct_id, dimensions, size_system, role, sole_material) FROM stdin;
101	give	\N	physicalproduct	\N
102	know	\N	physicalproduct	\N
103	information	\N	physicalproduct	\N
104	seven	\N	physicalproduct	\N
105	court	\N	physicalproduct	\N
106	all	\N	physicalproduct	\N
107	head	\N	physicalproduct	\N
108	firm	\N	physicalproduct	\N
109	you	\N	physicalproduct	\N
110	big	\N	physicalproduct	\N
111	year	\N	physicalproduct	\N
112	employee	\N	physicalproduct	\N
113	nation	\N	physicalproduct	\N
114	pay	\N	physicalproduct	\N
115	factor	\N	physicalproduct	\N
116	media	\N	physicalproduct	\N
117	campaign	\N	physicalproduct	\N
118	low	\N	physicalproduct	\N
119	still	\N	physicalproduct	\N
120	letter	\N	physicalproduct	\N
121	it	\N	physicalproduct	\N
122	situation	\N	physicalproduct	\N
123	material	\N	physicalproduct	\N
124	could	\N	physicalproduct	\N
125	family	\N	physicalproduct	\N
126	compare	\N	physicalproduct	\N
127	fact	\N	physicalproduct	\N
128	deal	\N	physicalproduct	\N
129	project	\N	physicalproduct	\N
130	exactly	\N	physicalproduct	\N
131	set	\N	physicalproduct	\N
132	read	\N	physicalproduct	\N
133	dark	\N	physicalproduct	\N
134	fund	\N	physicalproduct	\N
135	short	\N	physicalproduct	\N
136	personal	\N	physicalproduct	\N
137	spring	\N	physicalproduct	\N
138	truth	\N	physicalproduct	\N
139	including	\N	physicalproduct	\N
140	energy	\N	physicalproduct	\N
141	himself	\N	physicalproduct	\N
142	safe	\N	physicalproduct	\N
143	state	\N	physicalproduct	\N
144	again	\N	physicalproduct	\N
145	explain	\N	physicalproduct	\N
146	sense	\N	physicalproduct	\N
147	responsibility	\N	physicalproduct	\N
148	side	\N	physicalproduct	\N
149	choice	\N	physicalproduct	\N
150	air	\N	physicalproduct	\N
151	anything	\N	physicalproduct	\N
152	her	\N	physicalproduct	\N
153	low	\N	physicalproduct	\N
154	somebody	\N	physicalproduct	\N
155	long	\N	physicalproduct	\N
156	still	\N	physicalproduct	\N
157	sea	\N	physicalproduct	\N
158	especially	\N	physicalproduct	\N
159	choice	\N	physicalproduct	\N
160	interest	\N	physicalproduct	\N
161	activity	\N	physicalproduct	\N
162	position	\N	physicalproduct	\N
163	of	\N	physicalproduct	\N
164	building	\N	physicalproduct	\N
165	manager	\N	physicalproduct	\N
166	worry	\N	physicalproduct	\N
167	personal	\N	physicalproduct	\N
168	or	\N	physicalproduct	\N
169	among	\N	physicalproduct	\N
170	success	\N	physicalproduct	\N
171	gas	\N	physicalproduct	\N
172	under	\N	physicalproduct	\N
173	according	\N	physicalproduct	\N
174	power	\N	physicalproduct	\N
175	soldier	\N	physicalproduct	\N
176	summer	\N	physicalproduct	\N
177	until	\N	physicalproduct	\N
178	well	\N	physicalproduct	\N
179	purpose	\N	physicalproduct	\N
180	agree	\N	physicalproduct	\N
181	name	\N	physicalproduct	\N
182	woman	\N	physicalproduct	\N
183	up	\N	physicalproduct	\N
184	beautiful	\N	physicalproduct	\N
185	eye	\N	physicalproduct	\N
186	respond	\N	physicalproduct	\N
187	power	\N	physicalproduct	\N
188	quite	\N	physicalproduct	\N
189	sea	\N	physicalproduct	\N
190	could	\N	physicalproduct	\N
191	look	\N	physicalproduct	\N
192	kitchen	\N	physicalproduct	\N
193	small	\N	physicalproduct	\N
194	clearly	\N	physicalproduct	\N
195	scene	\N	physicalproduct	\N
196	threat	\N	physicalproduct	\N
197	organization	\N	physicalproduct	\N
198	stand	\N	physicalproduct	\N
199	near	\N	physicalproduct	\N
200	certainly	\N	physicalproduct	\N
1201	drop	\N	appliance	\N
1202	must	\N	appliance	\N
1203	receive	\N	appliance	\N
1204	customer	\N	appliance	\N
1205	where	\N	appliance	\N
1206	listen	\N	appliance	\N
1207	through	\N	appliance	\N
1208	treatment	\N	appliance	\N
1209	realize	\N	appliance	\N
1210	necessary	\N	appliance	\N
1211	his	\N	appliance	\N
1212	floor	\N	appliance	\N
1213	lawyer	\N	appliance	\N
1214	or	\N	appliance	\N
1215	drug	\N	appliance	\N
1216	yourself	\N	appliance	\N
1217	father	\N	appliance	\N
1218	computer	\N	appliance	\N
1219	key	\N	appliance	\N
1220	business	\N	appliance	\N
1221	line	\N	appliance	\N
1222	response	\N	appliance	\N
1223	ability	\N	appliance	\N
1224	look	\N	appliance	\N
1225	mind	\N	appliance	\N
1226	specific	\N	appliance	\N
1227	century	\N	appliance	\N
1228	way	\N	appliance	\N
1229	call	\N	appliance	\N
1230	by	\N	appliance	\N
1231	family	\N	appliance	\N
1232	safe	\N	appliance	\N
1233	always	\N	appliance	\N
1234	mother	\N	appliance	\N
1235	idea	\N	appliance	\N
1236	success	\N	appliance	\N
1237	similar	\N	appliance	\N
1238	discuss	\N	appliance	\N
1239	up	\N	appliance	\N
1240	friend	\N	appliance	\N
1241	dream	\N	appliance	\N
1242	color	\N	appliance	\N
1243	avoid	\N	appliance	\N
1244	city	\N	appliance	\N
1245	scene	\N	appliance	\N
1246	model	\N	appliance	\N
1247	product	\N	appliance	\N
1248	traditional	\N	appliance	\N
1249	bed	\N	appliance	\N
1250	prevent	\N	appliance	\N
1251	well	\N	appliance	\N
1252	today	\N	appliance	\N
1253	also	\N	appliance	\N
1254	child	\N	appliance	\N
1255	least	\N	appliance	\N
1256	child	\N	appliance	\N
1257	raise	\N	appliance	\N
1258	drop	\N	appliance	\N
1259	life	\N	appliance	\N
1260	government	\N	appliance	\N
1261	growth	\N	appliance	\N
1262	building	\N	appliance	\N
1263	memory	\N	appliance	\N
1264	class	\N	appliance	\N
1265	she	\N	appliance	\N
1266	whether	\N	appliance	\N
1267	choice	\N	appliance	\N
1268	light	\N	appliance	\N
1269	those	\N	appliance	\N
1270	just	\N	appliance	\N
1271	nothing	\N	appliance	\N
1272	leave	\N	appliance	\N
1273	public	\N	appliance	\N
1274	son	\N	appliance	\N
1275	language	\N	appliance	\N
1276	born	\N	appliance	\N
1277	animal	\N	appliance	\N
1278	figure	\N	appliance	\N
1279	director	\N	appliance	\N
1280	response	\N	appliance	\N
1281	stay	\N	appliance	\N
1282	piece	\N	appliance	\N
1283	race	\N	appliance	\N
1284	especially	\N	appliance	\N
1285	who	\N	appliance	\N
1286	fish	\N	appliance	\N
1287	hit	\N	appliance	\N
1288	great	\N	appliance	\N
1289	law	\N	appliance	\N
1290	analysis	\N	appliance	\N
1291	tough	\N	appliance	\N
1292	address	\N	appliance	\N
1293	among	\N	appliance	\N
1294	little	\N	appliance	\N
1295	consider	\N	appliance	\N
1296	half	\N	appliance	\N
1297	truth	\N	appliance	\N
1298	morning	\N	appliance	\N
1299	which	\N	appliance	\N
1300	believe	\N	appliance	\N
1401	eye	ready	apparel	\N
1402	character	best	apparel	\N
1403	appear	baby	apparel	\N
1404	including	democratic	apparel	\N
1405	practice	almost	apparel	\N
1406	simple	how	apparel	\N
1407	staff	traditional	apparel	\N
1408	adult	unit	apparel	\N
1409	allow	if	apparel	\N
1410	standard	pick	apparel	\N
1411	nor	explain	apparel	\N
1412	bill	bar	apparel	\N
1413	send	significant	apparel	\N
1414	begin	about	apparel	\N
1415	main	certain	apparel	\N
1416	but	I	apparel	\N
1417	modern	identify	apparel	\N
1418	mission	court	apparel	\N
1419	role	rate	apparel	\N
1420	industry	those	apparel	\N
1421	none	tree	apparel	\N
1422	guess	argue	apparel	\N
1423	certain	particular	apparel	\N
1424	see	simply	apparel	\N
1425	former	cost	apparel	\N
1426	list	space	apparel	\N
1427	former	like	apparel	\N
1428	fight	candidate	apparel	\N
1429	expert	study	apparel	\N
1430	customer	trouble	apparel	\N
1431	difference	heavy	apparel	\N
1432	player	would	apparel	\N
1433	investment	field	apparel	\N
1434	customer	beyond	apparel	\N
1435	win	rich	apparel	\N
1436	fall	main	apparel	\N
1437	ok	current	apparel	\N
1438	side	job	apparel	\N
1439	air	state	apparel	\N
1440	former	foot	apparel	\N
1441	act	open	apparel	\N
1442	character	threat	apparel	\N
1443	thought	gun	apparel	\N
1444	still	after	apparel	\N
1445	final	answer	apparel	\N
1446	address	level	apparel	\N
1447	from	bad	apparel	\N
1448	how	me	apparel	\N
1449	ready	change	apparel	\N
1450	compare	common	apparel	\N
1451	house	source	apparel	\N
1452	view	college	apparel	\N
1453	reason	beautiful	apparel	\N
1454	always	add	apparel	\N
1455	she	support	apparel	\N
1456	our	smile	apparel	\N
1457	notice	budget	apparel	\N
1458	mouth	must	apparel	\N
1459	scene	push	apparel	\N
1460	you	since	apparel	\N
1461	thus	ten	apparel	\N
1462	dream	piece	apparel	\N
1463	east	this	apparel	\N
1464	team	bring	apparel	\N
1465	watch	walk	apparel	\N
1466	already	each	apparel	\N
1467	policy	hit	apparel	\N
1468	despite	wear	apparel	\N
1469	into	subject	apparel	\N
1470	how	see	apparel	\N
1471	ask	expect	apparel	\N
1472	old	unit	apparel	\N
1473	moment	foot	apparel	\N
1474	enter	own	apparel	\N
1475	officer	choose	apparel	\N
1476	heavy	raise	apparel	\N
1477	generation	actually	apparel	\N
1478	thought	field	apparel	\N
1479	enter	few	apparel	\N
1480	group	power	apparel	\N
1481	she	pull	apparel	\N
1482	win	possible	apparel	\N
1483	reveal	politics	apparel	\N
1484	rock	exactly	apparel	\N
1485	can	often	apparel	\N
1486	different	wear	apparel	\N
1487	whatever	happy	apparel	\N
1488	wear	low	apparel	\N
1489	family	huge	apparel	\N
1490	technology	heavy	apparel	\N
1491	produce	result	apparel	\N
1492	air	foot	apparel	\N
1493	someone	later	apparel	\N
1494	task	benefit	apparel	\N
1495	begin	seem	apparel	\N
1496	arrive	position	apparel	\N
1497	ever	whether	apparel	\N
1498	my	president	apparel	\N
1499	hear	describe	apparel	\N
1500	north	something	apparel	\N
1801	respond	area	footwear	season
1802	manager	social	footwear	where
1803	look	where	footwear	voice
1804	win	place	footwear	black
1805	people	air	footwear	first
1806	effect	bad	footwear	best
1807	magazine	language	footwear	serious
1808	hand	church	footwear	drop
1809	sing	board	footwear	relate
1810	them	machine	footwear	forward
1811	most	culture	footwear	section
1812	middle	reality	footwear	production
1813	name	professor	footwear	laugh
1814	dog	finally	footwear	husband
1815	explain	baby	footwear	myself
1816	source	movie	footwear	contain
1817	against	even	footwear	his
1818	seem	size	footwear	someone
1819	Congress	fish	footwear	century
1820	control	almost	footwear	family
1821	space	market	footwear	full
1822	over	ever	footwear	war
1823	bank	either	footwear	soldier
1824	teacher	realize	footwear	month
1825	red	none	footwear	oil
1826	bad	cost	footwear	statement
1827	without	news	footwear	list
1828	thus	safe	footwear	step
1829	color	argue	footwear	difficult
1830	fear	sign	footwear	number
1831	ok	million	footwear	happy
1832	church	less	footwear	air
1833	without	interview	footwear	leader
1834	child	fish	footwear	wear
1835	evidence	south	footwear	strong
1836	thus	point	footwear	also
1837	smile	somebody	footwear	car
1838	yourself	minute	footwear	include
1839	friend	hope	footwear	police
1840	population	nothing	footwear	or
1841	fish	everything	footwear	thought
1842	everything	environment	footwear	decision
1843	but	brother	footwear	at
1844	available	he	footwear	month
1845	ahead	various	footwear	fill
1846	hot	course	footwear	middle
1847	back	worker	footwear	past
1848	though	future	footwear	ground
1849	good	drug	footwear	hot
1850	move	effect	footwear	apply
1851	popular	rise	footwear	reach
1852	two	above	footwear	market
1853	television	doctor	footwear	push
1854	energy	pressure	footwear	son
1855	fill	young	footwear	especially
1856	indicate	reduce	footwear	message
1857	movie	main	footwear	notice
1858	political	speak	footwear	sense
1859	than	base	footwear	have
1860	left	culture	footwear	outside
1861	student	however	footwear	clear
1862	police	give	footwear	lay
1863	anyone	use	footwear	garden
1864	fine	conference	footwear	price
1865	cut	everybody	footwear	administration
1866	across	turn	footwear	risk
1867	wish	source	footwear	long
1868	appear	interesting	footwear	deal
1869	study	expect	footwear	meeting
1870	wonder	listen	footwear	me
1871	sport	point	footwear	international
1872	behavior	center	footwear	national
1873	goal	interest	footwear	other
1874	benefit	beat	footwear	southern
1875	free	air	footwear	institution
1876	career	only	footwear	open
1877	similar	wife	footwear	thousand
1878	side	company	footwear	ten
1879	conference	finally	footwear	plan
1880	during	nice	footwear	growth
1881	third	former	footwear	instead
1882	red	success	footwear	style
1883	first	she	footwear	plan
1884	head	with	footwear	phone
1885	section	appear	footwear	explain
1886	despite	bill	footwear	process
1887	appear	mother	footwear	simply
1888	ability	likely	footwear	sister
1889	strategy	behavior	footwear	role
1890	several	parent	footwear	we
1891	level	fact	footwear	answer
1892	difficult	when	footwear	age
1893	stay	wish	footwear	establish
1894	miss	plant	footwear	world
1895	central	skill	footwear	sense
1896	writer	design	footwear	moment
1897	be	man	footwear	law
1898	short	require	footwear	house
1899	green	any	footwear	establish
1900	cold	improve	footwear	describe
\.


--
-- Data for Name: relation_20; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_20 (categorymanager_id, email, password_hash, mv_user, employee_no, department, browsingsession) FROM stdin;
901	bridget86@example.com	whom	{group,finish,beyond,side}	cover	growth	\N
902	frances36@example.com	far	{bring}	parent	stop	\N
903	zachary40@example.org	resource	{network,a,final}	should	suggest	\N
904	preyes@example.org	factor	{quite,page}	next	under	\N
905	wrobertson@example.com	television	{five,daughter,care}	could	edge	\N
906	yfrazier@example.com	federal	{surface,drive,decide}	long	chance	\N
907	denisedrake@example.com	old	{already,difference,sort,can}	fight	better	\N
908	ronald07@example.com	should	{control,yourself,expect,authority}	forget	clearly	\N
911	johnsoncindy@example.com	myself	{check,scientist}	condition	drug	\N
912	garzashawn@example.net	risk	{fact,stay}	happy	mission	\N
913	linda69@example.com	play	{church,respond,in,stop}	or	science	\N
914	cookamber@example.org	our	{claim,day,score}	great	beautiful	\N
915	maldonadojennifer@example.org	free	{bag}	tell	serious	\N
916	ubrady@example.com	measure	{town,operation,exist}	way	article	\N
917	petersonkenneth@example.org	southern	{big,crime,design,modern}	pass	difficult	\N
918	guzmanjames@example.net	name	{minute,see,force}	yet	let	\N
919	brian82@example.net	often	{degree}	per	Mr	\N
920	brandongarcia@example.com	join	{though,whether}	young	statement	\N
922	mbarrera@example.com	ten	{international,media,make,place}	outside	president	\N
923	cathyayers@example.net	itself	{task}	we	agent	\N
924	omaxwell@example.com	only	{opportunity}	budget	protect	\N
925	robinsonjohnny@example.org	think	{including,effort,create,use}	clear	three	\N
926	laura81@example.com	goal	{thing,voice,plant,money}	check	item	\N
927	martinchad@example.net	yourself	{themselves}	increase	itself	\N
928	gonzalezclaudia@example.net	near	{heart,true}	require	have	\N
930	andrewfreeman@example.org	she	{officer,senior,performance}	Mr	your	\N
931	charleswelch@example.com	many	{relate,enough,since,act}	board	structure	\N
932	johnwilliams@example.org	war	{how,recently,real,hospital}	war	fact	\N
933	amanda96@example.org	power	{member,in,south,choose}	center	five	\N
934	eperez@example.com	spring	{national,across,possible,reality}	magazine	brother	\N
935	elizabethtucker@example.org	attention	{agent}	guess	information	\N
936	jeffrey53@example.org	ok	{night,quality,itself,fire}	even	money	\N
937	moralesmallory@example.org	evening	{budget,health}	early	certain	\N
938	berryandrew@example.org	travel	{PM,would}	artist	police	\N
939	tmoreno@example.org	great	{election,rich}	final	hard	\N
940	davidcoleman@example.org	structure	{listen}	clear	others	\N
941	ssteele@example.com	skill	{water,establish,worker,rich}	agency	paper	\N
942	veronica05@example.net	bit	{despite,now,single}	certainly	a	\N
943	heididiaz@example.org	expect	{common,car}	create	both	\N
944	jonesjames@example.net	within	{speak,change}	push	read	\N
945	qwallace@example.net	single	{management,help,week,concern}	chance	clearly	\N
947	allison04@example.net	hotel	{include,north,chair}	only	candidate	\N
948	paul04@example.net	down	{safe,adult}	near	policy	\N
949	jackbrown@example.com	material	{central,evidence}	tonight	prevent	\N
950	sstewart@example.org	bill	{agree,throw}	growth	upon	\N
951	rosariodaniel@example.com	yet	{lead,pretty,know}	the	soon	\N
952	wardanthony@example.org	walk	{training,give}	building	food	\N
953	hernandezstephanie@example.com	think	{eat}	event	yet	\N
954	eric41@example.net	white	{show}	truth	tell	\N
955	normaespinoza@example.net	method	{majority,throw}	central	city	\N
956	kelly97@example.net	hope	{open,visit,however,arm}	fine	cost	\N
957	karen80@example.net	summer	{opportunity,important,some,family}	day	set	\N
958	jesse12@example.net	now	{community}	most	remember	\N
959	adamcook@example.net	national	{white,clear,case}	day	produce	\N
960	juanmcmahon@example.com	serve	{reason,market}	girl	family	\N
961	lori80@example.org	can	{attack}	including	southern	\N
962	david81@example.org	charge	{newspaper,according,stock,science}	well	service	\N
963	davidharris@example.net	group	{compare}	fine	east	\N
964	lonnie82@example.org	or	{owner,step,only}	goal	may	\N
965	htate@example.com	north	{base,put}	less	arrive	\N
966	gbaker@example.com	notice	{everyone,whether,tax,degree}	available	care	\N
968	underwoodjacob@example.com	success	{or,company,region}	imagine	recent	\N
969	catherine76@example.com	difference	{series,fight}	describe	at	\N
970	chanshelby@example.com	concern	{federal,military,quickly}	wife	perhaps	\N
971	rachel33@example.com	discuss	{every,cultural}	lay	rate	\N
972	hherrera@example.org	research	{could,character,rise,against}	both	positive	\N
973	taylormichael@example.com	prove	{international}	only	under	\N
974	catherinesmith@example.com	into	{almost}	guess	center	\N
975	wyoung@example.net	conference	{front}	behind	recent	\N
976	lynnashley@example.com	describe	{a,box,campaign}	later	data	\N
978	scottbrooks@example.net	condition	{pretty}	model	author	\N
979	david85@example.org	laugh	{inside,laugh,or}	direction	all	\N
980	mooredaniel@example.com	where	{rate,everyone}	area	actually	\N
981	qmills@example.org	brother	{change,four,room,board}	city	such	\N
982	brewerdawn@example.com	customer	{check,debate}	already	now	\N
983	wesleymitchell@example.org	hundred	{let}	like	feel	\N
984	gonzalezkatherine@example.net	at	{Democrat,feel,debate,machine}	worker	air	\N
985	johnpearson@example.org	north	{team}	expert	perhaps	\N
986	smithjason@example.net	air	{one,lose,ten}	art	gas	\N
987	vaughanjeffrey@example.net	window	{bag,something,rate,lose}	talk	recognize	\N
988	omccann@example.org	time	{sit,child,question,course}	glass	list	\N
989	sara87@example.com	we	{rest,yes,enter,sit}	cold	loss	\N
990	melissa37@example.com	model	{deal,race}	east	college	\N
991	marcuspatterson@example.net	education	{thus,election,let,school}	campaign	natural	\N
992	orojas@example.com	air	{simply,federal,pattern}	weight	stop	\N
994	timothy11@example.com	chair	{term}	save	office	\N
996	gayvictoria@example.net	eat	{less,dream,leader,ground}	key	throughout	\N
997	elizabethpeters@example.org	movement	{in}	third	school	\N
998	brandywhite@example.org	manager	{arrive}	deal	top	\N
999	rmontgomery@example.com	phone	{majority,six,camera}	stuff	image	\N
1000	riverasusan@example.org	record	{late,establish,stage}	movie	house	\N
946	wflores@example.org	vote	{thing,moment,local}	market	billion	[{"device": "I", "session_id": "38", "started_at": "state"}]
967	lzamora@example.org	machine	{you,work}	some	cost	[{"device": "street", "session_id": "224", "started_at": "foot"}]
995	scott86@example.org	pattern	{full,peace,voice,bad}	join	security	[{"device": "religious", "session_id": "975", "started_at": "executive"}]
909	ejohnson@example.org	two	{painting,account}	media	break	[{"device": "organization", "session_id": "377", "started_at": "these"}]
993	vernonking@example.org	us	{drop,understand,task,stand}	watch	true	[{"device": "true", "session_id": "979", "started_at": "reflect"}]
921	chapmanjessica@example.org	happen	{into,also,wonder,decade}	final	performance	[{"device": "just", "session_id": "421", "started_at": "this"}, {"device": "continue", "session_id": "316", "started_at": "language"}]
977	christinacollins@example.org	trial	{treat,house,shake}	team	half	[{"device": "many", "session_id": "863", "started_at": "challenge"}]
910	josephmartinez@example.com	market	{democratic,yet,item}	quality	generation	[{"device": "western", "session_id": "571", "started_at": "century"}]
929	rileymelissa@example.org	culture	{begin,huge,husband,several}	up	police	[{"device": "program", "session_id": "254", "started_at": "million"}]
\.


--
-- Data for Name: relation_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_21 (tag_id, tag_name) FROM stdin;
1	chance
2	wide
3	maybe
4	care
5	forget
6	manager
7	outside
8	among
9	only
10	policy
11	newspaper
12	condition
13	anyone
14	although
15	single
16	meeting
17	range
18	future
19	would
20	improve
21	agreement
22	move
23	local
24	dog
25	character
26	hour
27	main
28	idea
29	according
30	discuss
31	bank
32	difference
33	bank
34	recognize
35	important
36	after
37	throw
38	father
39	keep
40	environmental
41	else
42	space
43	bad
44	term
45	sit
46	such
47	operation
48	interesting
49	large
50	Mr
51	large
52	just
53	effect
54	especially
55	during
56	none
57	professor
58	admit
59	painting
60	another
61	partner
62	move
63	us
64	table
65	able
66	character
67	suggest
68	model
69	experience
70	they
71	else
72	must
73	wrong
74	whatever
75	race
76	direction
77	development
78	report
79	early
80	relate
81	race
82	decade
83	be
84	pass
85	feeling
86	political
87	government
88	probably
89	kitchen
90	Democrat
91	low
92	social
93	network
94	line
95	listen
96	since
97	born
98	stock
99	home
100	everybody
\.


--
-- Data for Name: relation_22; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_22 (user_id, address_id, kind, line1, city, state, country, postal_code) FROM stdin;
203	101	teacher	reality	Morenobury	lot	federal	modern
376	758	moment	drug	North Carlos	give	level	religious
216	906	clear	some	Cynthiaport	PM	company	trade
164	325	power	project	North Lisamouth	his	national	center
328	812	character	look	North Johnhaven	heart	suddenly	air
267	206	agreement	answer	West Jonathan	heart	threat	mouth
170	357	air	for	North Racheltown	wait	start	social
308	749	bed	bring	Maldonadoshire	until	new	only
372	164	watch	than	South Andrea	car	his	office
113	857	family	voice	Port Kyleport	they	this	trouble
127	712	history	attack	South Brianfort	soon	national	worry
287	403	prove	religious	West Racheltown	opportunity	security	purpose
386	383	country	feeling	Port Veronica	political	stand	research
356	272	cover	cost	New James	speak	defense	our
300	991	shake	tend	Cummingsmouth	option	sometimes	manage
382	120	attack	floor	New Timothy	source	big	receive
382	629	place	of	Kanebury	whom	sell	claim
285	753	wish	production	New Michelle	yet	time	artist
196	152	imagine	alone	Sharonbury	part	national	nature
342	836	world	open	New Maria	care	religious	perform
290	965	build	question	Lake Jamesview	to	where	join
171	539	very	nor	Rileyside	back	central	present
335	581	go	nor	Port Angelaborough	indeed	expert	surface
326	230	case	difference	New Jacobbury	figure	people	offer
139	212	film	grow	Andersonmouth	daughter	debate	during
329	696	however	on	West Richard	research	four	allow
339	670	personal	wish	Allenland	language	good	American
152	323	recognize	value	East Jenniferborough	list	skill	party
288	378	suddenly	road	West Jonathan	scientist	with	common
359	5	occur	fly	Jacksonbury	generation	write	current
207	544	no	official	Graceshire	walk	board	will
396	774	environmental	door	Port Mary	challenge	rate	exist
110	291	watch	me	Wrightview	spring	baby	coach
382	149	next	kind	East David	difficult	use	billion
266	698	outside	wear	Port Leslie	seek	card	gun
193	120	eat	today	Lake Theresaside	stock	citizen	myself
244	589	student	watch	North Belinda	career	support	sort
195	637	sometimes	street	West Cynthialand	success	hair	who
246	782	answer	maybe	Chandlerfurt	door	much	hundred
254	836	deep	someone	New Anthony	pattern	whatever	thank
293	230	account	participant	North Jasonburgh	lawyer	probably	son
385	861	side	specific	Lake Daniel	Mr	rock	lead
229	226	call	operation	Lawrencemouth	citizen	in	information
390	422	call	join	New Alexander	coach	company	price
113	800	garden	kitchen	Derekton	pick	scene	foreign
181	260	sure	degree	East Courtney	police	talk	fire
125	400	live	win	Nelsonville	act	create	away
207	938	include	along	North Connorbury	nature	center	reach
173	948	increase	suddenly	North Brianfort	small	avoid	which
377	772	international	project	Lake Sandrastad	degree	work	crime
136	725	hospital	town	South Robert	strategy	PM	again
194	396	never	so	Jamesville	group	personal	window
237	367	consumer	start	Barbarafort	include	establish	sell
198	917	another	public	Lindachester	return	major	test
255	359	indeed	democratic	Barajashaven	direction	image	house
129	290	at	three	New Jonmouth	administration	skill	risk
260	433	music	too	Lake Dennisville	later	traditional	market
348	806	through	reason	Jonesfort	receive	direction	star
147	444	help	work	West David	recognize	least	military
136	148	wonder	authority	Hernandeztown	magazine	myself	computer
297	810	mission	its	Johnsonmouth	thought	whom	reflect
392	611	determine	strong	Brownport	central	attack	organization
297	410	television	effort	North Lisabury	forget	project	positive
272	531	our	off	South Tiffany	analysis	process	race
364	33	why	dinner	Howardbury	as	far	teach
287	539	wide	company	New Bonnie	community	size	ten
255	79	right	matter	East Rachelborough	player	clear	smile
308	15	much	letter	New Erikaville	real	likely	report
149	807	move	likely	Josephside	place	lead	environment
361	482	five	because	East Nicholasshire	race	always	might
116	177	anything	money	Brittanyhaven	land	see	bill
370	744	three	research	Thomasside	total	picture	resource
325	864	wish	meeting	Sergiobury	state	argue	success
217	794	couple	a	Whiteville	force	family	near
351	862	establish	worry	Kevinland	appear	person	boy
244	26	war	doctor	Parkhaven	turn	little	choose
218	6	clear	own	Edwardview	almost	trip	space
129	226	able	dream	New Angela	occur	fight	me
364	323	two	season	Lorifurt	fact	support	pass
365	99	four	air	New Joseph	structure	performance	test
268	296	understand	push	Caitlinborough	low	me	subject
336	977	such	dream	Lake Frank	list	various	member
186	80	grow	investment	East Shariside	arm	chair	room
106	889	experience	enough	West Wyattborough	significant	card	travel
363	482	child	mission	Johnburgh	bring	break	police
365	180	national	figure	New Markview	always	early	each
191	319	air	business	North Tammy	house	one	wait
222	289	police	somebody	Port Sean	return	indicate	available
117	18	manage	current	Kevinfurt	son	certainly	concern
177	568	bank	lawyer	East Elizabeth	year	realize	better
309	142	thought	question	Sawyerberg	heart	question	western
250	744	wall	state	West Jerryfurt	street	yes	prepare
175	596	ok	music	Adamsfurt	house	forward	realize
133	780	month	million	Jameschester	you	team	reason
335	952	doctor	spend	New Jeremiah	decision	stage	spring
372	102	keep	win	Darrylside	rise	edge	last
254	366	company	interview	Jasmineton	six	option	use
116	747	same	clear	Martinezville	article	put	summer
128	444	meet	deep	Johnsonfort	cell	something	way
398	38	style	without	Singhburgh	car	property	collection
\.


--
-- Data for Name: relation_23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_23 (user_id, payment_method_id, brand, last4, exp_month, exp_year, is_default) FROM stdin;
177	348	happy	foot	8	980	mean
259	195	letter	so	398	242	movement
351	490	evidence	like	445	698	kitchen
385	405	south	yeah	452	467	fast
124	992	camera	agreement	88	810	then
352	493	rich	do	299	498	lay
234	159	suggest	around	690	96	station
253	999	painting	very	696	670	or
172	408	eat	particular	781	183	policy
391	795	happen	everything	963	188	training
236	877	sing	wear	956	973	resource
120	535	partner	hope	942	18	be
317	809	politics	unit	790	446	commercial
191	187	some	series	533	833	total
247	841	economy	cold	470	51	arm
311	880	benefit	fall	377	337	answer
257	146	worry	law	239	648	today
206	496	beat	four	170	504	stock
345	208	soon	today	584	268	trial
189	266	establish	state	465	48	remember
354	336	example	again	77	494	listen
128	496	shake	television	50	374	record
139	500	unit	event	371	19	simply
377	940	agent	candidate	202	708	more
279	74	exist	require	931	79	section
360	872	face	red	417	421	figure
361	271	political	that	702	695	station
165	683	success	product	277	127	key
398	231	always	laugh	912	756	by
243	486	site	to	808	142	wife
292	575	attorney	likely	896	528	later
178	362	table	miss	245	290	ask
248	774	professor	entire	778	166	stock
126	377	learn	concern	778	821	build
127	222	support	base	406	49	drop
349	266	Congress	project	3	342	discover
295	770	our	follow	291	800	issue
395	297	good	own	209	306	box
383	970	often	suggest	710	888	often
152	924	individual	Congress	291	905	trouble
332	749	country	best	455	975	mission
311	794	join	forget	218	210	organization
354	392	finally	including	39	818	own
202	571	edge	loss	656	115	time
392	397	street	more	355	787	own
316	688	cup	himself	69	754	main
218	235	final	culture	649	538	model
185	745	part	explain	383	801	treatment
112	718	born	clearly	328	999	guess
370	850	remember	PM	559	305	raise
230	777	hotel	like	285	263	stand
133	672	range	former	386	610	avoid
190	399	happen	truth	791	36	either
186	886	by	allow	626	996	sort
343	903	wind	later	40	540	provide
321	262	those	report	899	61	clearly
395	697	pressure	fast	223	348	mother
133	286	Republican	measure	985	771	fight
396	306	doctor	each	99	945	include
179	966	out	sometimes	533	699	federal
297	809	few	easy	169	959	break
166	455	time	describe	267	17	several
118	573	maybe	produce	33	344	side
284	327	degree	plant	55	193	live
114	486	people	office	235	489	out
187	675	set	guy	909	669	increase
243	793	current	difficult	358	731	chance
122	174	computer	lay	734	603	now
178	691	best	scientist	908	359	stay
256	878	care	culture	339	71	discuss
309	52	never	agency	125	137	technology
261	210	three	tell	571	337	medical
272	478	economy	ago	388	319	let
206	800	reality	college	791	468	care
275	382	because	nice	488	561	worry
140	642	box	same	490	687	particular
128	979	again	health	858	413	blue
242	40	effect	these	572	563	though
382	664	business	central	134	335	civil
150	852	system	artist	423	3	very
379	126	give	always	63	978	attention
380	256	seat	generation	210	699	involve
227	758	young	one	658	392	science
350	754	of	movement	540	756	follow
107	668	over	film	972	700	total
222	139	executive	each	48	891	west
308	876	test	wife	935	733	chair
316	608	enter	compare	911	396	learn
365	356	rich	in	997	461	staff
389	39	left	interest	829	42	above
263	86	course	decide	890	763	machine
236	155	national	night	56	983	time
214	809	thing	well	101	11	upon
110	790	speech	power	914	325	former
325	562	today	when	538	936	gun
321	203	than	finally	475	463	nation
125	409	step	structure	14	56	author
354	210	for	bill	296	707	compare
326	883	best	wall	280	327	test
330	599	would	young	871	577	parent
\.


--
-- Data for Name: relation_24; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_24 (user_id, updated_at) FROM stdin;
378	down
238	develop
335	exist
176	task
303	play
113	blood
282	board
198	certainly
121	space
275	teacher
190	mean
314	lead
400	thought
206	various
367	method
395	choose
235	begin
123	against
197	human
261	message
163	American
155	agent
322	why
146	three
234	goal
290	southern
360	Mr
191	few
192	record
361	else
377	series
317	already
186	you
397	series
258	boy
345	low
332	data
106	key
180	popular
139	wrong
343	your
185	provide
299	social
306	born
291	attention
177	choose
300	win
321	since
359	everyone
239	work
319	experience
308	bring
388	cost
302	ball
278	center
279	relate
134	author
233	you
170	picture
144	door
136	to
273	research
375	provide
229	degree
221	agree
307	event
160	military
277	stop
268	why
135	wish
223	would
200	series
362	government
245	there
341	old
247	one
212	onto
382	fear
166	candidate
283	consumer
368	bank
358	state
143	go
141	yourself
333	various
254	office
137	party
353	number
385	join
171	myself
311	from
248	maintain
349	sing
110	business
344	sell
257	force
342	about
120	source
380	participant
205	soon
\.


--
-- Data for Name: relation_25; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_25 (user_id, wishlist_id, wishlist_name) FROM stdin;
202	658	budget
145	327	happen
263	947	man
391	729	couple
321	567	might
239	99	major
256	35	probably
112	929	deep
358	53	simple
191	954	still
227	363	us
294	342	use
129	334	soldier
205	660	but
134	38	yourself
167	520	professional
229	414	company
256	818	garden
117	669	field
164	817	main
251	678	yeah
379	393	maybe
121	886	well
253	149	involve
354	393	prove
315	877	kid
395	463	kid
395	756	huge
180	487	however
112	943	claim
285	127	subject
227	225	situation
263	63	imagine
145	377	accept
287	752	someone
317	603	customer
149	989	rule
229	777	require
114	803	benefit
140	381	day
197	739	whether
191	922	democratic
343	728	thank
290	216	only
155	932	image
314	475	late
376	879	among
309	128	top
292	902	stay
290	55	city
249	736	agreement
124	528	place
255	680	improve
298	791	song
107	227	music
108	80	the
124	382	budget
125	458	edge
181	929	around
116	621	style
254	822	young
127	12	actually
179	673	upon
122	38	leg
231	413	prevent
229	870	current
132	434	gun
375	60	paper
128	512	lawyer
335	941	state
120	673	him
150	714	safe
287	982	contain
193	600	pattern
247	131	appear
365	960	table
242	962	impact
104	246	hot
226	255	others
375	632	sport
355	677	skill
309	904	upon
390	453	down
298	517	huge
307	127	hospital
257	280	position
117	642	side
115	647	series
356	947	charge
328	129	message
344	275	evening
321	935	speech
208	121	state
224	795	type
372	533	see
270	98	term
134	610	quality
365	595	believe
333	65	information
316	894	rich
\.


--
-- Data for Name: relation_26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_26 (user_id, review_id, rating, title, body, created_at, reviews_product_id) FROM stdin;
355	171	859	offer	quickly	there	\N
296	872	668	employee	clear	thing	\N
349	256	177	in	capital	can	\N
273	979	230	cultural	remain	reality	\N
145	936	380	PM	someone	body	\N
206	591	349	school	easy	person	\N
144	25	508	usually	relate	yard	\N
234	883	960	check	listen	character	\N
126	952	93	series	trial	southern	\N
386	408	503	with	building	example	\N
292	511	809	apply	thought	happy	\N
370	551	833	friend	guy	while	\N
113	204	284	phone	trial	occur	\N
385	624	86	oil	simple	standard	\N
217	188	618	affect	fast	successful	\N
151	619	507	success	thus	also	\N
117	507	371	best	local	concern	\N
127	244	23	parent	fast	oil	\N
264	49	413	consumer	natural	dream	\N
273	582	400	make	center	conference	\N
334	906	742	cause	beat	field	\N
221	186	814	something	certain	skin	\N
381	270	564	exist	of	finally	\N
265	523	959	become	must	data	\N
365	990	72	what	or	day	\N
167	508	149	role	hot	nature	\N
381	236	615	exist	between	on	\N
369	128	725	perform	nation	watch	\N
339	938	411	travel	system	theory	\N
161	269	446	space	beat	law	\N
365	36	686	our	air	leg	\N
385	308	954	challenge	along	foot	\N
316	755	50	administration	almost	really	\N
301	662	956	late	thousand	not	\N
254	370	499	various	team	full	\N
196	798	99	newspaper	science	enough	\N
187	17	208	dream	describe	morning	\N
298	834	359	occur	first	step	\N
108	128	218	ready	sort	since	\N
136	255	239	reach	say	effect	\N
298	550	300	despite	but	network	\N
317	897	785	affect	find	price	\N
150	460	339	book	college	town	\N
244	780	971	size	their	effort	\N
256	613	789	anything	white	human	\N
116	443	676	indeed	character	government	\N
199	405	148	outside	available	most	\N
319	366	861	nor	pass	fact	\N
369	887	314	western	soldier	movement	\N
310	951	34	recent	foreign	positive	\N
120	57	379	per	design	old	\N
188	873	953	enjoy	main	hope	\N
345	433	290	cell	nature	prepare	\N
353	675	419	camera	fast	soon	292
140	929	685	process	student	talk	1120
103	49	379	place	enough	floor	683
323	322	783	now	north	sing	593
386	532	79	once	anyone	offer	2059
274	888	55	feeling	let	free	1054
391	714	804	account	blood	prepare	127
335	248	160	note	why	level	288
331	529	750	clearly	guy	board	624
105	452	573	memory	here	follow	30
245	7	220	right	left	threat	1034
400	660	235	season	way	away	1823
165	773	180	particularly	image	several	169
289	477	191	foot	successful	protect	1893
193	235	953	unit	ground	fish	1599
165	42	720	sea	individual	official	197
309	328	136	apply	pay	chair	615
199	723	205	order	stuff	the	1485
239	772	152	population	room	game	1845
127	699	977	society	never	me	1662
148	383	554	sure	main	assume	869
186	255	734	act	car	hear	375
325	241	221	policy	surface	author	1223
366	740	617	without	teach	very	42
269	533	278	color	identify	major	977
274	449	358	go	do	try	1922
223	471	761	power	exist	total	9
225	529	685	yes	world	note	2031
336	214	926	send	these	fast	188
322	870	626	drop	identify	policy	428
294	815	98	artist	defense	yet	914
202	356	30	city	sea	network	471
392	42	177	name	north	year	636
244	484	806	clearly	night	value	1035
219	259	677	line	letter	side	1333
139	22	611	expect	pick	check	1300
286	946	525	discussion	plan	yes	567
272	424	949	middle	how	citizen	1488
377	587	191	herself	whom	save	771
195	629	393	Mrs	half	mean	1791
227	359	97	every	require	it	1082
311	1000	462	city	ago	behavior	923
297	701	62	than	low	morning	486
230	759	374	drive	station	safe	1192
373	449	197	attention	recognize	thing	1049
353	881	867	size	drive	fire	1316
204	496	56	health	effort	myself	2080
\.


--
-- Data for Name: relation_27; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_27 (custorder_id, placed_at, status, customer_orders_customer_id, payment_order_customer_id, payment_order_payment_method_id) FROM stdin;
97	according	movie	\N	\N	\N
5	four	grow	187	\N	\N
7	loss	reason	299	\N	\N
16	husband	minute	316	\N	\N
17	my	part	259	\N	\N
41	head	you	261	\N	\N
43	though	thank	228	\N	\N
48	table	sound	273	\N	\N
77	also	indeed	299	\N	\N
37	human	nearly	170	292	575
71	every	respond	163	191	187
52	positive	candidate	292	236	877
36	big	will	\N	321	203
79	fly	scientist	351	133	286
19	someone	wonder	250	259	195
49	prove	statement	\N	360	872
66	behind	idea	364	177	348
32	their	wonder	191	311	794
81	down	step	111	380	256
3	trial	physical	360	128	979
22	life	leave	\N	206	800
75	need	relationship	305	295	770
80	maybe	short	\N	107	668
34	continue	thing	213	186	886
35	practice	foot	256	110	790
59	summer	successful	\N	311	880
40	sport	difficult	\N	218	235
56	over	number	265	206	496
1	above	drop	394	218	235
28	city	available	260	128	979
84	election	hold	\N	361	271
25	about	capital	389	127	222
78	number	report	167	243	793
65	throw	agency	\N	350	754
21	take	tree	123	234	159
8	exist	page	283	385	405
4	group	look	\N	317	809
39	political	yes	190	377	940
64	every	by	356	392	397
24	agree	behavior	363	275	382
27	his	option	179	187	675
87	method	safe	\N	316	608
9	suggest	including	360	317	809
94	responsibility	against	\N	150	852
10	less	trouble	338	259	195
12	force	friend	174	122	174
63	early	hospital	\N	257	146
85	process	as	396	152	924
23	follow	give	\N	227	758
73	management	per	\N	321	262
58	time	must	293	351	490
42	none	indicate	\N	172	408
13	along	Mr	160	214	809
92	course	per	\N	248	774
70	consider	pattern	\N	150	852
18	most	long	\N	236	155
57	through	network	188	187	675
46	expert	wall	\N	242	40
15	state	result	201	118	573
68	leave	win	\N	243	486
29	task	trial	123	272	478
86	whole	car	154	206	800
98	use	picture	201	\N	\N
96	report	young	236	272	478
95	rich	anything	299	172	408
93	radio	important	352	122	174
91	white	upon	298	120	535
89	let	crime	204	382	664
61	use	mouth	150	256	878
74	future	left	265	222	139
62	president	under	314	202	571
38	be	defense	\N	392	397
6	respond	always	204	236	155
14	particular	between	226	292	575
31	listen	organization	\N	263	86
2	accept	blue	116	234	159
83	change	how	338	126	377
100	control	our	360	389	39
67	force	better	374	349	266
90	TV	walk	184	214	809
99	himself	bit	\N	120	535
60	age	stay	348	190	399
54	language	mission	224	122	174
55	oil	from	270	185	745
30	mind	list	391	398	231
76	find	someone	\N	311	880
47	write	without	313	112	718
44	amount	benefit	249	107	668
51	inside	thought	312	379	126
53	meeting	tough	371	330	599
11	beyond	Mrs	\N	272	478
69	big	leave	377	330	599
88	plan	open	\N	389	39
82	great	usually	203	133	672
45	most	let	293	349	266
26	ok	throughout	298	122	174
20	song	service	\N	380	256
72	need	develop	128	248	774
50	bar	phone	396	185	745
33	old	wait	\N	107	668
\.


--
-- Data for Name: relation_28; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_28 (custorder_id, shipment_id, carrier, tracking_no, shipped_at, delivered_at, courier_shipments_courierpartner_id) FROM stdin;
53	418	represent	hospital	memory	open	\N
71	664	camera	teach	ability	information	\N
11	424	within	plan	whether	expert	\N
84	807	push	forward	scene	rest	\N
64	183	leader	style	fill	major	\N
12	202	red	race	administration	more	40
2	192	indicate	little	point	physical	92
42	67	yourself	operation	seek	candidate	47
67	944	floor	option	fire	oil	2
18	658	effort	wrong	option	fall	94
100	407	son	want	according	place	74
59	83	sing	economic	left	yet	4
2	590	point	adult	treat	right	25
68	291	central	quality	end	size	84
77	47	fast	everybody	police	player	79
52	162	beat	keep	itself	paper	94
78	853	ability	Mr	stand	type	4
40	746	bill	his	why	might	37
51	769	rate	already	career	international	41
35	685	professional	describe	sell	campaign	4
19	173	new	leave	home	wonder	51
21	410	reality	check	billion	race	13
53	426	stage	mean	sign	politics	94
54	445	none	street	goal	none	67
84	573	nothing	kid	management	admit	82
100	317	push	firm	field	card	85
72	342	training	thought	agency	social	45
96	71	no	question	heavy	Democrat	10
96	302	thousand	fine	them	hour	80
14	42	business	between	measure	space	28
42	540	may	top	art	society	97
44	204	century	teacher	best	before	14
8	929	executive	ten	next	also	22
91	971	stop	stuff	interest	education	56
50	682	election	front	factor	skin	82
16	927	arm	finally	check	worker	92
32	246	still	look	poor	expect	33
87	925	morning	color	politics	customer	62
48	120	thus	generation	community	front	97
37	388	fund	wall	threat	front	85
32	170	without	special	finally	usually	54
15	93	red	develop	pretty	word	23
8	998	entire	southern	appear	little	32
66	796	than	much	or	water	73
92	47	than	value	begin	music	97
3	5	eye	station	open	tend	53
86	599	research	note	power	bed	84
40	30	never	training	rise	scientist	86
88	886	kid	party	fill	black	68
75	839	TV	sea	open	section	38
11	124	paper	recent	wind	loss	30
92	272	lead	citizen	already	recognize	31
69	807	behavior	drop	catch	establish	26
21	578	forget	among	physical	cut	52
62	282	travel	push	suffer	past	28
75	476	sit	pressure	sign	teacher	73
96	179	along	guess	toward	industry	42
94	198	yet	career	note	happen	84
80	639	any	energy	room	democratic	94
38	137	last	as	always	measure	78
61	497	front	population	fight	account	60
57	243	crime	produce	offer	person	85
100	587	age	cause	dream	add	87
16	479	arrive	public	own	citizen	61
67	61	voice	large	need	financial	86
6	534	great	pick	situation	exist	82
49	658	always	anyone	organization	or	51
25	75	laugh	science	after	sing	50
27	234	grow	protect	home	spring	43
72	513	him	argue	part	scene	31
51	819	finally	share	word	myself	77
82	931	investment	spend	free	other	19
46	550	just	step	indicate	happy	14
64	50	food	eye	loss	mother	94
11	51	specific	woman	international	commercial	26
61	239	again	blue	certainly	member	40
21	946	computer	expert	child	friend	2
79	170	evidence	half	laugh	safe	100
47	984	whatever	rise	democratic	suggest	96
54	214	including	blue	commercial	magazine	61
43	78	alone	like	still	suggest	36
35	562	state	few	seem	next	17
85	368	brother	star	letter	line	62
75	350	here	after	thus	red	40
93	416	themselves	model	religious	where	32
43	473	amount	doctor	clearly	seat	16
73	231	vote	particularly	store	learn	5
88	794	federal	buy	remain	positive	27
27	24	perform	tax	subject	firm	41
66	52	ago	there	bag	very	77
46	279	wait	system	put	man	65
33	610	ball	best	could	these	77
43	382	ten	concern	against	often	18
57	984	southern	season	pull	once	3
60	769	be	take	suddenly	project	60
17	293	speak	issue	picture	toward	29
71	535	nature	hour	western	local	95
65	19	history	decide	key	song	95
83	891	perhaps	assume	power	standard	85
55	342	cultural	her	garden	adult	19
\.


--
-- Data for Name: relation_29; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_29 (promotion_id, promo_name, starts_at, ends_at, discount_type, discount_value) FROM stdin;
1	or	impact	magazine	push	career
2	eye	measure	environmental	indicate	culture
3	management	within	capital	difference	water
4	art	record	hand	wife	husband
5	option	part	play	firm	agent
6	time	high	as	personal	bad
7	south	him	try	performance	through
8	activity	compare	officer	evidence	gun
9	amount	article	law	not	show
10	husband	leader	weight	these	authority
11	race	man	now	approach	difference
12	sell	audience	sea	between	same
13	concern	feel	clearly	beat	enough
14	check	would	worker	radio	oil
15	analysis	enter	professor	who	send
16	do	chance	probably	main	fall
17	power	look	itself	risk	yourself
18	anything	of	factor	parent	no
19	she	performance	off	three	energy
20	produce	include	his	manager	peace
21	run	board	create	support	though
22	hour	forget	science	one	miss
23	sing	stay	building	probably	then
24	reach	middle	you	cost	structure
25	enough	million	trial	spend	newspaper
26	girl	into	then	four	show
27	them	white	show	identify	suddenly
28	radio	sign	product	try	news
29	candidate	feeling	improve	involve	school
30	win	go	enough	car	power
31	entire	form	eight	plant	without
32	eye	keep	himself	strategy	keep
33	spend	write	team	floor	school
34	policy	more	sound	attention	decision
35	dark	very	also	already	which
36	coach	discuss	big	include	yard
37	table	choose	government	institution	call
38	professor	cause	force	generation	production
39	new	forget	future	hope	kind
40	security	speak	capital	fine	those
41	science	over	into	assume	it
42	administration	rock	so	them	describe
43	shake	toward	PM	benefit	work
44	concern	central	whom	people	adult
45	on	own	develop	matter	up
46	full	resource	last	analysis	ready
47	rock	present	happy	attention	rich
48	pretty	staff	all	kind	notice
49	parent	or	day	daughter	trouble
50	finish	available	hundred	leader	include
51	car	maintain	bag	outside	his
52	weight	movement	American	middle	camera
53	plan	when	five	your	before
54	key	oil	modern	decision	once
55	make	dark	western	use	capital
56	sound	attorney	suddenly	prepare	challenge
57	between	future	manage	himself	site
58	air	eye	claim	program	improve
59	change	whole	so	rich	soldier
60	they	itself	call	mother	leader
61	customer	owner	against	economy	growth
62	dark	factor	collection	spend	write
63	exist	turn	age	responsibility	thought
64	lay	big	gun	they	however
65	discussion	wide	protect	good	cup
66	have	property	central	history	candidate
67	will	step	per	election	green
68	election	me	center	same	next
69	start	provide	she	parent	this
70	bar	whether	economy	room	main
71	trouble	relate	son	teacher	student
72	fall	grow	investment	brother	me
73	each	art	anything	development	company
74	enough	catch	best	hair	international
75	before	sea	great	control	artist
76	town	about	though	activity	gas
77	tree	age	somebody	red	take
78	generation	wish	once	pass	young
79	price	how	hour	we	join
80	truth	perform	call	federal	able
81	industry	director	join	break	big
82	size	usually	relate	a	set
83	nearly	end	owner	southern	drug
84	work	mouth	protect	country	kind
85	theory	degree	claim	suffer	anything
86	game	although	feeling	establish	minute
87	kind	window	significant	debate	doctor
88	reason	right	clear	mention	Mr
89	argue	option	music	language	dog
90	report	easy	type	operation	walk
91	key	several	participant	practice	maybe
92	without	interest	small	build	painting
93	sometimes	quite	one	large	authority
94	wonder	ever	join	improve	fish
95	everybody	data	important	decide	opportunity
96	win	really	beat	suggest	mission
97	try	easy	deal	ago	matter
98	hotel	goal	paper	I	national
99	benefit	fear	light	upon	push
100	food	spring	discussion	current	shake
\.


--
-- Data for Name: relation_3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_3 (digitalproduct_id, sku, product_name, base_price, is_active, quantity, mv_attributes, delivery_type, license_type, role, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
201	soon	us	173	305	669	{project,memory}	nothing	\N	digitalproduct	\N	\N	\N	\N
202	address	soon	365	625	758	{despite}	room	\N	digitalproduct	\N	\N	\N	\N
203	present	wrong	402	575	410	{over}	central	\N	digitalproduct	\N	\N	\N	\N
204	thing	I	496	809	266	{stay,may}	fight	\N	digitalproduct	\N	\N	\N	\N
205	a	open	734	228	265	{one}	suffer	\N	digitalproduct	\N	\N	\N	\N
206	phone	visit	865	677	32	{parent,lay}	federal	\N	digitalproduct	\N	\N	\N	\N
207	share	town	325	951	443	{west}	win	\N	digitalproduct	\N	\N	\N	\N
208	lot	turn	805	276	195	{give}	room	\N	digitalproduct	\N	\N	\N	\N
211	maybe	place	621	969	269	{sea,paper}	color	\N	digitalproduct	\N	\N	\N	\N
212	increase	news	540	167	142	{way}	whose	\N	digitalproduct	\N	\N	\N	\N
215	without	evidence	119	736	212	{middle,source}	action	\N	digitalproduct	\N	\N	\N	\N
216	dinner	example	70	109	234	{in,nearly}	growth	\N	digitalproduct	\N	\N	\N	\N
217	network	information	330	505	951	{opportunity}	allow	\N	digitalproduct	\N	\N	\N	\N
218	interest	player	979	192	47	{professor}	child	\N	digitalproduct	\N	\N	\N	\N
221	citizen	city	351	679	858	{wonder,situation}	action	\N	digitalproduct	\N	\N	\N	\N
222	available	a	121	628	710	{build}	already	\N	digitalproduct	\N	\N	\N	\N
223	sign	thing	98	228	410	{chance}	note	\N	digitalproduct	\N	\N	\N	\N
224	nearly	off	507	461	387	{lawyer}	expert	\N	digitalproduct	\N	\N	\N	\N
225	hope	together	997	238	242	{country,your}	industry	\N	digitalproduct	\N	\N	\N	\N
227	total	heavy	217	463	733	{question,history}	poor	\N	digitalproduct	\N	\N	\N	\N
229	company	a	932	219	81	{name}	happy	\N	digitalproduct	\N	\N	\N	\N
231	understand	behavior	328	911	393	{new,seven}	into	\N	digitalproduct	\N	\N	\N	\N
233	few	factor	902	845	777	{nor}	than	\N	digitalproduct	\N	\N	\N	\N
235	most	ten	397	149	898	{now}	spend	\N	digitalproduct	\N	\N	\N	\N
237	perhaps	officer	82	474	668	{police,current}	culture	\N	digitalproduct	\N	\N	\N	\N
238	road	president	928	15	37	{power}	number	\N	digitalproduct	\N	\N	\N	\N
239	represent	decade	538	861	133	{scene}	network	\N	digitalproduct	\N	\N	\N	\N
240	all	resource	956	281	800	{its}	store	\N	digitalproduct	\N	\N	\N	\N
241	Congress	PM	443	94	195	{again}	require	\N	digitalproduct	\N	\N	\N	\N
242	far	front	512	653	134	{product,chance}	force	\N	digitalproduct	\N	\N	\N	\N
243	federal	near	704	837	866	{suggest}	pull	\N	digitalproduct	\N	\N	\N	\N
244	figure	scientist	679	459	400	{question,material}	music	\N	digitalproduct	\N	\N	\N	\N
245	property	international	647	275	993	{would,pay}	a	\N	digitalproduct	\N	\N	\N	\N
246	southern	strong	658	651	249	{thousand}	create	\N	digitalproduct	\N	\N	\N	\N
247	what	industry	62	603	958	{thousand}	edge	\N	digitalproduct	\N	\N	\N	\N
248	kind	these	359	439	620	{beyond}	this	\N	digitalproduct	\N	\N	\N	\N
249	friend	boy	927	362	561	{only,radio}	moment	\N	digitalproduct	\N	\N	\N	\N
252	issue	section	762	626	739	{sound}	physical	\N	digitalproduct	\N	\N	\N	\N
253	name	lot	258	182	1000	{structure}	rich	\N	digitalproduct	\N	\N	\N	\N
254	character	around	155	61	941	{onto}	image	\N	digitalproduct	\N	\N	\N	\N
257	threat	born	514	380	102	{base,computer}	amount	\N	digitalproduct	\N	\N	\N	\N
258	president	fire	42	130	545	{dream}	degree	\N	digitalproduct	\N	\N	\N	\N
259	form	Republican	454	681	132	{better,list}	senior	\N	digitalproduct	\N	\N	\N	\N
260	response	will	782	725	921	{either,various}	walk	\N	digitalproduct	\N	\N	\N	\N
261	half	large	26	755	538	{key,nation}	necessary	\N	digitalproduct	\N	\N	\N	\N
262	stock	deep	93	257	820	{every,treatment}	soldier	\N	digitalproduct	\N	\N	\N	\N
228	kid	officer	339	509	608	{thing}	finish	\N	digitalproduct	\N	\N	[{"price": "174", "ends_at": "rate", "price_id": "288", "starts_at": "ok"}]	\N
209	thank	attack	641	750	170	{plan,cut}	age	\N	digitalproduct	\N	\N	\N	87
264	together	action	60	751	268	{myself,difference}	property	\N	digitalproduct	\N	\N	\N	\N
265	compare	everything	753	134	267	{green,great}	someone	\N	digitalproduct	\N	\N	\N	\N
266	behavior	natural	827	120	877	{wife,decade}	no	\N	digitalproduct	\N	\N	\N	\N
269	myself	reflect	946	347	522	{argue,hope}	after	\N	digitalproduct	\N	\N	\N	\N
270	sister	order	980	918	599	{end,someone}	million	\N	digitalproduct	\N	\N	\N	\N
271	send	tend	108	133	669	{outside,raise}	eye	\N	digitalproduct	\N	\N	\N	\N
274	character	capital	205	380	399	{ball,responsibility}	stage	\N	digitalproduct	\N	\N	\N	\N
275	couple	general	100	420	354	{able}	true	\N	digitalproduct	\N	\N	\N	\N
277	card	floor	835	819	667	{represent,election}	receive	\N	digitalproduct	\N	\N	\N	\N
278	buy	half	428	306	327	{new,a}	central	\N	digitalproduct	\N	\N	\N	\N
279	newspaper	tough	280	334	767	{step}	last	\N	digitalproduct	\N	\N	\N	\N
281	star	alone	937	745	334	{appear,science}	wide	\N	digitalproduct	\N	\N	\N	\N
282	able	music	587	71	463	{present,direction}	Democrat	\N	digitalproduct	\N	\N	\N	\N
286	husband	share	945	593	821	{wait}	early	\N	digitalproduct	\N	\N	\N	\N
288	hear	course	590	874	258	{place}	card	\N	digitalproduct	\N	\N	\N	\N
290	challenge	southern	371	965	817	{hot,third}	continue	\N	digitalproduct	\N	\N	\N	\N
291	almost	will	413	315	476	{require,return}	stock	\N	digitalproduct	\N	\N	\N	\N
296	leave	fire	832	102	559	{effect,break}	fact	\N	digitalproduct	\N	\N	\N	\N
300	for	realize	659	859	178	{play,money}	eye	\N	digitalproduct	\N	\N	\N	\N
2001	from	capital	674	842	707	{economic}	discussion	laugh	software	\N	\N	\N	\N
2003	middle	law	813	228	984	{sometimes,build}	life	might	software	\N	\N	\N	\N
2004	carry	finally	99	8	447	{know}	teacher	catch	software	\N	\N	\N	\N
2006	door	during	971	757	858	{course}	general	college	software	\N	\N	\N	\N
2007	medical	part	826	635	587	{easy,part}	identify	fear	software	\N	\N	\N	\N
2008	daughter	represent	197	823	821	{stop,form}	put	through	software	\N	\N	\N	\N
2009	past	anything	325	118	971	{science}	see	game	software	\N	\N	\N	\N
2010	into	summer	576	122	496	{benefit}	example	baby	software	\N	\N	\N	\N
2011	others	yes	808	569	394	{official,avoid}	hear	recently	software	\N	\N	\N	\N
2013	easy	first	476	917	274	{senior}	book	present	software	\N	\N	\N	\N
2014	each	nothing	593	336	741	{someone,risk}	wonder	perhaps	software	\N	\N	\N	\N
2015	degree	law	129	842	319	{land,treatment}	on	game	software	\N	\N	\N	\N
2018	game	significant	858	439	441	{standard}	body	development	software	\N	\N	\N	\N
2019	food	black	434	365	574	{response}	skill	them	software	\N	\N	\N	\N
2020	heart	share	718	590	505	{build,red}	door	drive	software	\N	\N	\N	\N
2021	often	most	735	665	722	{present,world}	employee	road	software	\N	\N	\N	\N
2022	or	shake	950	301	770	{stop,factor}	carry	machine	software	\N	\N	\N	\N
284	hard	natural	950	760	994	{well,level}	student	\N	digitalproduct	\N	[{"barcode": "another", "variant_id": "237", "price_override": "481", "is_active_variant": "68"}]	\N	\N
2025	think	study	753	15	784	{at,protect}	little	agree	software	\N	[{"barcode": "job", "variant_id": "991", "price_override": "657", "is_active_variant": "83"}]	\N	\N
294	third	leader	577	137	929	{democratic}	hour	\N	digitalproduct	\N	\N	[{"price": "208", "ends_at": "real", "price_id": "261", "starts_at": "member"}]	\N
272	executive	way	537	573	737	{large}	full	\N	digitalproduct	\N	\N	\N	42
292	but	bad	545	520	172	{you}	would	\N	digitalproduct	\N	\N	\N	94
297	feel	together	732	110	210	{sell,put}	civil	\N	digitalproduct	\N	\N	\N	59
283	after	although	492	466	935	{week,short}	practice	\N	digitalproduct	\N	\N	\N	51
2027	down	away	214	297	905	{defense,turn}	recently	assume	software	\N	\N	\N	\N
2028	step	minute	149	88	937	{run}	effort	city	software	\N	\N	\N	\N
2030	rather	door	175	418	173	{fund}	social	add	software	\N	\N	\N	\N
2033	world	newspaper	862	571	238	{nature,us}	herself	information	software	\N	\N	\N	\N
2035	yet	pay	793	772	768	{represent}	event	popular	software	\N	\N	\N	\N
2037	nearly	soldier	115	232	640	{question}	suggest	manage	software	\N	\N	\N	\N
2039	according	suggest	179	703	811	{doctor}	morning	attention	software	\N	\N	\N	\N
2040	pull	may	822	551	451	{off,could}	dog	none	software	\N	\N	\N	\N
2041	choice	anyone	954	645	151	{different,quickly}	by	worker	software	\N	\N	\N	\N
2042	green	call	411	876	231	{necessary,report}	positive	market	software	\N	\N	\N	\N
2043	Republican	class	855	735	927	{price,painting}	experience	specific	software	\N	\N	\N	\N
2045	sister	follow	25	301	649	{experience}	same	yourself	software	\N	\N	\N	\N
2047	task	reach	365	118	685	{reduce,billion}	can	rate	software	\N	\N	\N	\N
2048	concern	political	282	980	728	{body}	nearly	budget	software	\N	\N	\N	\N
2049	degree	politics	57	566	280	{meeting,sing}	since	control	software	\N	\N	\N	\N
2050	read	forward	978	358	252	{dark,herself}	tough	production	software	\N	\N	\N	\N
2051	necessary	determine	1000	804	502	{ready,religious}	everyone	suddenly	software	\N	\N	\N	\N
2052	former	whole	779	773	70	{we}	time	senior	software	\N	\N	\N	\N
2053	interest	morning	419	390	482	{wonder}	drive	record	software	\N	\N	\N	\N
2055	save	behind	445	227	468	{list}	support	must	software	\N	\N	\N	\N
2057	sound	senior	194	206	909	{girl}	everything	lawyer	software	\N	\N	\N	\N
2058	box	difficult	39	642	147	{three,data}	place	support	software	\N	\N	\N	\N
2061	TV	young	328	318	19	{rate,market}	more	can	software	\N	\N	\N	\N
2063	effect	off	801	736	723	{financial}	since	charge	software	\N	\N	\N	\N
2066	reason	as	237	848	612	{miss,decision}	hold	coach	software	\N	\N	\N	\N
2069	feeling	once	228	685	123	{figure}	eye	day	software	\N	\N	\N	\N
2070	hotel	police	871	97	198	{move}	money	agree	software	\N	\N	\N	\N
2071	dark	send	44	424	903	{letter,place}	discussion	newspaper	software	\N	\N	\N	\N
2074	particularly	word	876	63	969	{hope}	huge	choose	software	\N	\N	\N	\N
2075	support	study	729	780	103	{think}	listen	nice	software	\N	\N	\N	\N
2076	in	common	193	362	65	{become,old}	nation	force	software	\N	\N	\N	\N
2078	soldier	fight	998	401	299	{attack}	buy	card	software	\N	\N	\N	\N
2079	approach	drug	609	300	317	{always,son}	reduce	fear	software	\N	\N	\N	\N
2085	price	hand	93	880	445	{father,whose}	guy	hold	software	\N	\N	\N	\N
2086	research	product	847	539	366	{floor}	carry	pattern	software	\N	\N	\N	\N
2087	power	back	1000	313	532	{agree,pressure}	campaign	professional	software	\N	\N	\N	\N
2044	out	spend	125	515	767	{fly,resource}	reality	beautiful	software	\N	\N	[{"price": "278", "ends_at": "far", "price_id": "802", "starts_at": "charge"}]	\N
2054	hope	ability	848	629	423	{article,you}	several	well	software	\N	\N	\N	95
2080	such	few	597	903	372	{sense}	detail	support	software	\N	\N	\N	58
2056	tend	loss	754	520	405	{range,approach}	indicate	church	software	\N	\N	\N	42
2084	front	street	924	54	537	{live}	unit	adult	software	\N	\N	\N	97
2089	public	leave	171	153	550	{all}	those	score	software	\N	\N	\N	\N
2090	when	often	926	677	626	{sing}	professor	concern	software	\N	\N	\N	\N
2091	truth	over	674	228	716	{woman,prevent}	eat	they	software	\N	\N	\N	\N
2092	try	central	446	433	945	{hotel,cost}	region	cover	software	\N	\N	\N	\N
2093	series	professor	516	644	892	{stay,big}	own	simple	software	\N	\N	\N	\N
2094	tax	decade	952	317	454	{teacher,game}	particular	man	software	\N	\N	\N	\N
2096	kind	officer	1	592	965	{gun}	area	give	software	\N	\N	\N	\N
2097	imagine	floor	306	632	514	{film}	design	happen	software	\N	\N	\N	\N
2099	herself	material	372	459	376	{capital,western}	again	whole	software	\N	\N	\N	\N
2100	realize	cell	154	285	837	{establish}	could	fight	software	\N	\N	\N	\N
2081	special	action	226	123	754	{floor,others}	send	ago	software	[{"url": "attorney", "alt_text": "difficult", "image_id": "518", "sort_order": "234"}]	\N	\N	\N
298	history	break	69	648	585	{reflect}	contain	\N	digitalproduct	[{"url": "identify", "alt_text": "sound", "image_id": "798", "sort_order": "609"}]	\N	\N	\N
210	long	site	596	936	956	{apply}	increase	\N	digitalproduct	[{"url": "daughter", "alt_text": "should", "image_id": "793", "sort_order": "271"}]	\N	\N	\N
2064	senior	discover	722	764	13	{again,her}	television	surface	software	[{"url": "low", "alt_text": "change", "image_id": "949", "sort_order": "541"}]	\N	\N	\N
2073	source	among	478	649	851	{still}	organization	type	software	[{"url": "someone", "alt_text": "like", "image_id": "566", "sort_order": "363"}]	\N	\N	\N
2038	about	instead	437	605	5	{society}	need	state	software	[{"url": "him", "alt_text": "doctor", "image_id": "67", "sort_order": "334"}]	\N	\N	\N
293	little	during	152	257	704	{ahead}	return	\N	digitalproduct	[{"url": "office", "alt_text": "tend", "image_id": "688", "sort_order": "422"}]	\N	\N	\N
299	buy	threat	876	75	814	{miss}	anything	\N	digitalproduct	[{"url": "speak", "alt_text": "good", "image_id": "377", "sort_order": "550"}]	\N	\N	\N
236	similar	system	579	389	261	{memory}	rich	\N	digitalproduct	[{"url": "road", "alt_text": "school", "image_id": "476", "sort_order": "99"}]	\N	\N	\N
2098	name	point	659	75	116	{chair}	including	house	software	\N	[{"barcode": "new", "variant_id": "427", "price_override": "242", "is_active_variant": "850"}]	\N	\N
295	can	recent	190	785	421	{consumer}	along	\N	digitalproduct	[{"url": "artist", "alt_text": "once", "image_id": "941", "sort_order": "955"}]	[{"barcode": "if", "variant_id": "178", "price_override": "522", "is_active_variant": "122"}]	\N	\N
276	lose	stop	589	67	45	{computer,ever}	onto	\N	digitalproduct	\N	\N	[{"price": "865", "ends_at": "cut", "price_id": "569", "starts_at": "work"}]	\N
273	school	modern	919	852	299	{democratic}	wish	\N	digitalproduct	\N	\N	[{"price": "207", "ends_at": "media", "price_id": "449", "starts_at": "pressure"}]	\N
232	standard	player	941	201	410	{course}	hour	\N	digitalproduct	\N	\N	\N	86
2095	address	suddenly	58	466	574	{family,determine}	traditional	among	software	\N	\N	\N	42
2012	return	doctor	574	917	57	{instead}	owner	rise	software	\N	\N	\N	16
2068	hair	wear	242	559	728	{sing}	friend	camera	software	\N	\N	\N	96
2016	world	party	49	130	296	{keep}	movie	think	software	\N	\N	\N	61
2083	remain	help	361	612	540	{might,almost}	forget	station	software	\N	\N	\N	41
2029	everything	husband	544	93	676	{current}	make	degree	software	\N	\N	\N	17
214	late	ball	318	770	411	{dinner}	will	\N	digitalproduct	\N	\N	\N	50
2046	civil	indeed	294	57	95	{discussion,give}	early	agreement	software	\N	\N	\N	47
2017	goal	respond	807	608	126	{big}	candidate	beyond	software	\N	\N	\N	47
2059	PM	fish	360	361	870	{return}	relate	meet	software	\N	\N	\N	90
287	central	late	138	50	537	{use,speech}	guess	\N	digitalproduct	\N	\N	\N	45
2065	place	you	956	436	716	{fire}	book	half	software	\N	\N	\N	18
2026	traditional	appear	460	987	684	{fall}	eye	happen	software	\N	\N	\N	41
251	small	yes	942	679	72	{quite,race}	can	\N	digitalproduct	\N	\N	\N	62
255	more	why	876	439	873	{general}	local	\N	digitalproduct	\N	\N	\N	52
2067	either	land	834	634	395	{because}	second	name	software	[{"url": "market", "alt_text": "argue", "image_id": "652", "sort_order": "517"}]	\N	\N	1
2031	be	nearly	779	432	829	{compare,approach}	reduce	positive	software	\N	\N	\N	62
250	child	art	552	205	729	{day,tax}	today	\N	digitalproduct	\N	\N	\N	86
219	enough	various	829	612	24	{speech}	see	\N	digitalproduct	\N	\N	\N	37
213	leg	consumer	916	733	452	{return,case}	product	\N	digitalproduct	\N	\N	\N	18
234	radio	month	813	936	32	{may}	attack	\N	digitalproduct	\N	\N	\N	98
267	major	window	97	436	862	{Mr}	character	\N	digitalproduct	\N	\N	[{"price": "978", "ends_at": "coach", "price_id": "620", "starts_at": "fine"}]	73
2062	finally	computer	446	466	272	{social,although}	entire	create	software	\N	\N	\N	44
2002	national	son	584	1	447	{effort}	in	see	software	\N	\N	\N	4
2036	trouble	in	175	648	300	{down}	former	soon	software	\N	\N	\N	65
2005	different	car	563	295	529	{apply,even}	oil	require	software	\N	\N	\N	57
289	guess	next	720	588	765	{citizen,box}	member	\N	digitalproduct	\N	\N	\N	44
220	hit	defense	700	36	507	{or,behind}	we	\N	digitalproduct	\N	\N	\N	1
2077	keep	perform	586	612	223	{middle,buy}	ever	really	software	\N	\N	\N	18
2072	final	you	148	740	691	{bit}	require	charge	software	\N	\N	\N	81
2088	believe	where	396	530	559	{charge,bed}	fish	member	software	\N	\N	\N	52
263	generation	clear	88	310	36	{most,audience}	both	\N	digitalproduct	\N	\N	\N	98
280	stage	think	539	125	153	{official,magazine}	leg	\N	digitalproduct	\N	\N	\N	54
230	laugh	development	16	817	6	{wait,school}	image	\N	digitalproduct	\N	\N	\N	65
2082	training	me	146	369	953	{sea,board}	arrive	technology	software	\N	\N	\N	62
2032	take	fast	348	793	676	{never}	yet	difference	software	\N	\N	\N	79
2060	practice	be	260	875	990	{do}	would	himself	software	\N	\N	\N	30
285	serve	expert	836	911	948	{bar}	able	\N	digitalproduct	\N	\N	\N	35
226	yet	turn	474	561	594	{meeting,off}	truth	\N	digitalproduct	\N	\N	\N	49
2024	understand	like	136	64	972	{instead,wind}	election	picture	software	[{"url": "break", "alt_text": "continue", "image_id": "289", "sort_order": "482"}, {"url": "second", "alt_text": "week", "image_id": "371", "sort_order": "257"}]	\N	[{"price": "998", "ends_at": "its", "price_id": "200", "starts_at": "partner"}]	46
256	run	think	55	653	94	{candidate,around}	type	\N	digitalproduct	\N	\N	\N	81
2023	exist	treat	479	248	214	{around}	exist	ask	software	\N	\N	\N	14
268	detail	allow	515	571	211	{game,case}	loss	\N	digitalproduct	\N	\N	\N	40
2034	seat	remain	337	763	782	{we}	huge	everyone	software	\N	\N	\N	88
\.


--
-- Data for Name: relation_30; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_30 (promotion_id, coupon_code, max_uses, per_user_limit, order_coupons_custorder_id) FROM stdin;
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
-- Data for Name: relation_31; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_31 (warehouse_id, warehouse_name, region) FROM stdin;
1	play	believe
2	suffer	level
3	hour	else
4	help	beautiful
5	security	statement
6	very	article
7	weight	owner
8	between	those
9	scientist	sport
10	than	traditional
11	major	teach
12	land	future
13	once	color
14	knowledge	each
15	example	past
16	do	effort
17	pretty	perform
18	back	feel
19	section	hair
20	near	spend
21	election	sometimes
22	may	show
23	against	church
24	budget	growth
25	game	stop
26	clear	act
27	Mr	player
28	central	happen
29	could	before
30	finally	pretty
31	successful	site
32	water	cultural
33	page	leg
34	director	their
35	consider	way
36	physical	employee
37	paper	yeah
38	rule	financial
39	summer	relate
40	find	cut
41	suffer	because
42	capital	people
43	another	bit
44	onto	relationship
45	pass	south
46	right	develop
47	friend	spend
48	nothing	feeling
49	purpose	collection
50	training	inside
51	store	commercial
52	front	test
53	hundred	option
54	true	appear
55	help	structure
56	four	capital
57	minute	since
58	space	foot
59	management	little
60	class	trouble
61	factor	effort
62	population	above
63	budget	prevent
64	point	with
65	human	assume
66	among	chance
67	try	their
68	research	source
69	all	computer
70	trip	vote
71	agreement	prevent
72	baby	make
73	cost	nearly
74	general	stop
75	few	house
76	model	large
77	Republican	significant
78	strong	upon
79	customer	involve
80	accept	trade
81	result	avoid
82	nothing	loss
83	exist	wind
84	trouble	prevent
85	final	together
86	answer	court
87	technology	now
88	activity	management
89	without	picture
90	happen	into
91	activity	her
92	floor	couple
93	kitchen	party
94	remain	common
95	spend	study
96	score	yes
97	position	bar
98	season	security
99	significant	that
100	PM	personal
\.


--
-- Data for Name: relation_32; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_32 (warehouse_id, bin_id, code) FROM stdin;
58	789	add
40	943	wish
72	244	add
65	777	determine
3	398	subject
59	180	student
57	823	than
94	989	tree
69	35	within
2	134	her
39	489	look
79	496	feeling
81	661	place
83	790	rich
71	727	remember
5	766	reach
58	253	raise
26	74	value
2	441	war
19	5	pay
8	549	road
35	331	American
9	227	explain
1	556	quite
18	99	get
45	961	consumer
82	205	exactly
36	493	easy
23	845	word
96	679	late
60	639	remain
19	991	week
69	325	exactly
21	995	increase
51	961	it
76	214	floor
39	611	home
87	677	size
33	469	activity
57	140	lose
24	180	somebody
21	511	culture
53	765	successful
42	173	side
80	791	success
18	272	kitchen
70	665	loss
93	676	major
83	24	admit
52	818	onto
69	279	cover
84	954	new
23	557	strategy
46	750	according
96	112	attorney
69	257	wall
6	180	job
82	709	near
55	25	begin
9	661	miss
3	591	glass
70	9	one
60	552	practice
56	375	bill
78	789	director
19	922	season
23	57	appear
2	378	piece
93	602	same
84	831	shoulder
91	85	lose
8	126	economy
19	159	effect
3	262	cut
29	586	individual
95	580	poor
25	693	stock
10	353	wonder
53	353	leg
95	506	generation
50	521	until
25	276	natural
93	565	ability
25	742	tonight
53	812	hear
31	390	right
28	103	understand
52	694	deal
31	325	remain
70	951	what
48	826	certainly
5	213	recent
21	329	toward
39	635	conference
59	103	several
2	192	several
97	732	television
70	377	lawyer
26	163	create
36	796	figure
\.


--
-- Data for Name: relation_33; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_33 (supplier_id, supplier_name) FROM stdin;
1	wife
2	matter
3	network
4	significant
5	science
6	accept
7	issue
8	worry
9	worry
10	market
11	evening
12	standard
13	now
14	inside
15	whether
16	baby
17	politics
18	street
19	think
20	simply
21	trade
22	event
23	know
24	air
25	visit
26	who
27	man
28	maybe
29	cold
30	under
31	open
32	argue
33	business
34	room
35	statement
36	visit
37	support
38	family
39	manage
40	economy
41	glass
42	street
43	rise
44	discuss
45	among
46	else
47	simple
48	else
49	but
50	box
51	country
52	group
53	until
54	peace
55	policy
56	the
57	visit
58	dream
59	cut
60	imagine
61	apply
62	sea
63	investment
64	eye
65	quickly
66	scientist
67	answer
68	ready
69	evening
70	choose
71	grow
72	conference
73	beyond
74	Congress
75	capital
76	station
77	television
78	or
79	effort
80	along
81	school
82	take
83	remember
84	agreement
85	sense
86	action
87	many
88	quite
89	dark
90	firm
91	yeah
92	capital
93	security
94	west
95	tax
96	charge
97	lot
98	small
99	himself
100	term
\.


--
-- Data for Name: relation_34; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_34 (supplier_id, contact_id, email, phone) FROM stdin;
21	114	dwu@example.net	choice
25	386	kaitlyn21@example.com	her
72	443	wferguson@example.net	age
40	212	carlahuff@example.com	quickly
9	290	kara91@example.net	phone
64	515	wardlindsey@example.org	education
60	233	jonessteven@example.net	hair
80	742	danielmosley@example.org	rise
7	892	robertsonwendy@example.net	natural
34	333	imiller@example.org	gas
51	589	david65@example.org	series
95	865	zmyers@example.org	ten
20	946	drakekendra@example.org	trial
84	346	sarah98@example.net	huge
43	463	caingregory@example.net	already
22	535	dmoran@example.net	resource
13	825	obrienheidi@example.com	cut
59	130	rhonda09@example.net	join
20	962	bradleythomas@example.com	strategy
1	393	fwebb@example.net	clear
22	135	kevin10@example.com	red
14	570	kingcarol@example.com	do
82	212	bridgesolivia@example.net	operation
81	882	hrivera@example.org	assume
15	927	beth95@example.org	morning
8	797	breanna05@example.org	possible
74	778	lowejeffrey@example.org	care
63	229	alexisadkins@example.net	woman
70	408	ofowler@example.org	key
92	357	david87@example.net	somebody
38	93	bsullivan@example.com	around
29	378	hchandler@example.net	catch
96	25	maxwelljohnson@example.net	throw
13	270	ronald00@example.net	set
36	297	bobbygreen@example.org	art
71	318	tyler38@example.org	seem
24	442	diana31@example.net	management
89	502	chandlerpatrick@example.org	hair
42	883	fitzpatricksean@example.org	page
49	288	whitethomas@example.com	available
71	790	hurstalec@example.org	institution
52	928	dweber@example.net	loss
27	428	cameronhayes@example.org	government
45	73	pmata@example.org	impact
90	547	steelephyllis@example.com	player
58	312	alexandraduffy@example.com	fly
40	406	amy47@example.org	trouble
45	725	betty65@example.net	son
85	30	wcervantes@example.net	according
37	133	andrea83@example.net	blood
15	766	underwoodlarry@example.org	nor
42	243	maynarddavid@example.org	even
86	910	davidsonnicole@example.net	inside
32	529	martinezpatrick@example.org	capital
76	704	palmerandrew@example.net	capital
44	144	sandersaaron@example.org	foreign
77	999	ugardner@example.com	change
6	968	gavin02@example.com	choose
45	172	william83@example.org	easy
75	258	greenevincent@example.com	history
68	952	catherinejohnson@example.com	environment
83	880	daymartha@example.com	movie
52	730	daniel04@example.net	example
8	743	zbuchanan@example.com	this
80	232	rushmichael@example.com	build
39	909	bateskelli@example.net	take
44	996	kevin97@example.com	here
44	527	rodriguezwilliam@example.net	TV
96	617	craig68@example.com	indicate
95	869	jonathansmith@example.net	discuss
6	3	gfernandez@example.net	line
53	952	wweber@example.net	wrong
37	838	colliercaleb@example.net	catch
1	102	jeffrey36@example.com	table
18	599	katherine50@example.org	place
37	112	haleylee@example.org	follow
6	280	joshua90@example.org	land
7	884	tammy22@example.net	small
78	489	smithaustin@example.com	low
64	54	jacquelinerobles@example.org	training
27	878	erica86@example.net	stage
25	756	mark29@example.org	instead
7	865	longjulie@example.net	pick
45	288	agonzalez@example.org	four
48	526	kstewart@example.org	believe
29	329	yolandasmith@example.net	democratic
42	505	cynthiaherrera@example.org	notice
5	606	karlmunoz@example.com	color
81	820	christinacase@example.net	hope
18	132	amymorales@example.net	after
73	194	jessica27@example.org	much
84	241	william02@example.org	specific
92	56	rebecca80@example.com	magazine
12	36	normanlaura@example.com	fly
7	196	millercody@example.org	common
97	368	hallangel@example.org	still
53	803	brookematthews@example.net	player
93	162	brian03@example.com	on
25	831	fgarcia@example.net	major
100	214	underwoodkimberly@example.org	offer
\.


--
-- Data for Name: relation_35; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_35 (purchaseorder_id, created_at, status, supplier_pos_supplier_id) FROM stdin;
6	blood	second	\N
11	assume	couple	\N
12	century	ability	\N
21	often	spend	\N
27	wait	account	\N
32	by	again	\N
36	wait	far	\N
46	daughter	fight	\N
48	seat	never	\N
51	still	hand	\N
63	computer	child	\N
72	herself	throughout	\N
87	bed	soon	\N
30	theory	if	25
97	yes	blood	38
24	win	according	93
34	human	lot	69
4	station	three	25
73	finally	bit	94
8	system	job	57
93	drug	carry	6
86	natural	will	85
17	direction	child	38
90	several	ago	85
18	hear	out	77
66	turn	sure	21
49	break	pretty	85
16	main	then	2
81	interesting	standard	3
20	term	process	77
69	current	baby	57
5	picture	still	10
85	firm	meeting	24
76	could	thus	18
95	story	law	66
79	heart	above	73
67	decide	property	72
50	court	rule	44
84	what	evening	77
45	just	talk	14
96	live	at	96
60	where	president	57
94	nature	style	93
65	speech	deal	24
56	now	discussion	68
35	only	community	62
39	catch	interest	90
82	return	business	74
2	add	enjoy	53
15	to	perhaps	84
89	water	agree	35
42	analysis	opportunity	16
61	yes	person	73
74	school	type	33
7	model	computer	24
64	discussion	agent	43
10	process	others	59
80	catch	air	4
33	great	series	24
25	piece	discussion	13
43	population	blue	21
83	store	old	61
75	I	mention	91
13	respond	dog	66
59	their	live	38
68	nature	station	31
9	air	should	44
99	keep	play	64
55	bar	maybe	12
1	listen	baby	90
40	western	social	29
14	writer	quite	7
92	large	author	58
26	force	start	15
77	national	field	34
52	one	century	35
57	different	group	49
78	method	resource	33
54	unit	help	83
22	stuff	begin	49
53	artist	prevent	16
19	structure	partner	92
62	accept	small	94
98	forget	soon	30
70	door	miss	7
71	final	hand	21
47	place	involve	31
100	four	tend	35
29	television	as	15
3	power	possible	99
23	that	offer	98
41	wrong	century	97
91	weight	provide	63
37	throughout	happen	27
88	model	draw	97
58	edge	record	81
44	side	others	43
38	technology	news	30
28	laugh	get	68
31	probably	than	3
\.


--
-- Data for Name: relation_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_36 (courierpartner_id, carrier_code, webhook_url) FROM stdin;
1	name	program
2	according	stand
3	lead	receive
4	action	attention
5	always	kitchen
6	both	those
7	until	way
8	skill	no
9	list	full
10	same	either
11	whole	could
12	discussion	room
13	teach	rich
14	time	though
15	responsibility	speak
16	kid	film
17	sound	type
18	job	try
19	trial	across
20	perhaps	car
21	return	hard
22	open	its
23	walk	assume
24	education	agree
25	argue	picture
26	able	single
27	risk	real
28	too	difference
29	someone	eight
30	suddenly	marriage
31	onto	tough
32	financial	speak
33	activity	difference
34	idea	service
35	green	Mr
36	hundred	us
37	anything	vote
38	their	part
39	skill	people
40	usually	who
41	inside	represent
42	next	improve
43	one	main
44	glass	kitchen
45	once	especially
46	song	yes
47	reduce	each
48	late	them
49	several	fill
50	since	hot
51	cost	minute
52	themselves	include
53	everybody	think
54	she	difficult
55	candidate	draw
56	very	name
57	foreign	arm
58	almost	success
59	guy	girl
60	run	where
61	perform	billion
62	after	design
63	get	stop
64	school	trade
65	hotel	and
66	decade	almost
67	crime	purpose
68	over	audience
69	mouth	local
70	travel	win
71	choose	want
72	director	character
73	upon	describe
74	out	too
75	we	campaign
76	road	everybody
77	relationship	very
78	than	scene
79	event	fire
80	behind	wall
81	worry	decision
82	fill	brother
83	traditional	heart
84	surface	method
85	black	total
86	strong	management
87	professor	campaign
88	similar	course
89	explain	director
90	kid	traditional
91	candidate	child
92	pressure	commercial
93	far	smile
94	table	mind
95	wear	writer
96	real	beat
97	billion	morning
98	speak	southern
99	well	lead
100	national	skin
\.


--
-- Data for Name: relation_37; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_37 (product_id, tag_id) FROM stdin;
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
-- Data for Name: relation_38; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_38 (product_id, bought_together_product_product_id) FROM stdin;
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
-- Data for Name: relation_39; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_39 (customer_id, product_id) FROM stdin;
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
-- Data for Name: relation_4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_4 (electronics_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, accessory_type, role, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
302	involve	accept	827	291	226	{beyond}	list	613	\N	electronics	\N	\N	\N	\N
304	necessary	tell	464	692	376	{born}	relationship	818	\N	electronics	\N	\N	\N	\N
306	become	situation	207	9	765	{price,science}	defense	527	\N	electronics	\N	\N	\N	\N
307	rise	model	898	499	79	{while,beautiful}	he	631	\N	electronics	\N	\N	\N	\N
308	out	just	904	523	816	{gas,approach}	south	42	\N	electronics	\N	\N	\N	\N
309	son	population	361	872	470	{leader}	write	195	\N	electronics	\N	\N	\N	\N
311	local	cut	123	842	310	{such,year}	matter	995	\N	electronics	\N	\N	\N	\N
313	black	his	422	556	963	{will,while}	fear	618	\N	electronics	\N	\N	\N	\N
314	task	nice	646	596	316	{wife,great}	eight	310	\N	electronics	\N	\N	\N	\N
315	take	and	135	519	455	{recognize}	establish	564	\N	electronics	\N	\N	\N	\N
316	lead	across	792	998	167	{effort,bill}	occur	652	\N	electronics	\N	\N	\N	\N
317	resource	live	10	435	754	{easy}	send	378	\N	electronics	\N	\N	\N	\N
318	half	important	431	412	289	{despite}	summer	921	\N	electronics	\N	\N	\N	\N
319	situation	seven	93	948	93	{water}	ahead	393	\N	electronics	\N	\N	\N	\N
321	case	friend	768	873	493	{manage,agency}	push	398	\N	electronics	\N	\N	\N	\N
322	bank	help	468	823	120	{month,look}	listen	364	\N	electronics	\N	\N	\N	\N
323	where	home	149	426	152	{consumer}	kind	177	\N	electronics	\N	\N	\N	\N
325	firm	grow	806	295	973	{election,remain}	study	265	\N	electronics	\N	\N	\N	\N
326	water	grow	962	527	295	{pretty,ok}	range	708	\N	electronics	\N	\N	\N	\N
327	yeah	direction	281	444	344	{attention,visit}	environment	221	\N	electronics	\N	\N	\N	\N
328	throughout	director	733	850	504	{mouth,person}	station	734	\N	electronics	\N	\N	\N	\N
329	full	offer	436	94	66	{spend}	factor	212	\N	electronics	\N	\N	\N	\N
330	she	hit	990	154	235	{how}	animal	106	\N	electronics	\N	\N	\N	\N
331	person	toward	260	160	492	{control}	note	409	\N	electronics	\N	\N	\N	\N
332	seem	practice	666	741	192	{list}	stuff	92	\N	electronics	\N	\N	\N	\N
333	only	receive	438	627	978	{western}	actually	563	\N	electronics	\N	\N	\N	\N
335	new	degree	969	668	993	{analysis}	capital	753	\N	electronics	\N	\N	\N	\N
336	magazine	heavy	567	696	430	{claim}	main	272	\N	electronics	\N	\N	\N	\N
337	situation	method	701	286	184	{different,century}	especially	825	\N	electronics	\N	\N	\N	\N
341	church	usually	699	521	510	{technology,mother}	city	119	\N	electronics	\N	\N	\N	\N
342	environment	size	621	875	491	{admit}	total	153	\N	electronics	\N	\N	\N	\N
343	run	officer	396	629	928	{recent}	some	172	\N	electronics	\N	\N	\N	\N
346	friend	song	778	639	346	{source,point}	home	106	\N	electronics	\N	\N	\N	\N
347	drive	others	9	776	747	{up,long}	side	949	\N	electronics	\N	\N	\N	\N
352	need	popular	152	134	263	{indeed}	second	418	\N	electronics	\N	\N	\N	\N
353	expert	number	575	646	613	{maintain}	part	546	\N	electronics	\N	\N	\N	\N
354	professor	shake	855	624	522	{example}	cup	969	\N	electronics	\N	\N	\N	\N
355	attorney	view	424	277	287	{top,month}	have	713	\N	electronics	\N	\N	\N	\N
356	hotel	man	314	274	504	{build}	real	511	\N	electronics	\N	\N	\N	\N
357	strong	him	377	614	482	{challenge}	city	347	\N	electronics	\N	\N	\N	\N
358	red	suffer	181	621	778	{but}	scientist	757	\N	electronics	\N	\N	\N	\N
359	give	professional	902	595	711	{available,create}	brother	548	\N	electronics	\N	\N	\N	\N
362	fear	end	638	506	492	{film,newspaper}	think	122	\N	electronics	\N	\N	\N	\N
360	collection	production	154	60	517	{nature,it}	everything	542	\N	electronics	\N	[{"barcode": "agency", "variant_id": "554", "price_override": "352", "is_active_variant": "508"}]	\N	\N
338	quality	show	813	722	879	{rock}	discover	806	\N	electronics	\N	\N	[{"price": "484", "ends_at": "above", "price_id": "690", "starts_at": "wonder"}]	\N
349	radio	glass	554	641	451	{reality,management}	sister	779	\N	electronics	\N	\N	\N	25
348	either	serious	907	992	726	{trade,work}	miss	58	\N	electronics	\N	\N	\N	43
340	impact	ball	400	127	685	{executive,pretty}	idea	302	\N	electronics	\N	\N	\N	4
363	either	field	131	909	144	{nearly,put}	president	231	\N	electronics	\N	\N	\N	\N
364	activity	source	91	651	552	{physical}	leader	577	\N	electronics	\N	\N	\N	\N
365	both	support	177	702	119	{subject}	west	577	\N	electronics	\N	\N	\N	\N
366	chair	media	205	516	582	{right,left}	audience	433	\N	electronics	\N	\N	\N	\N
368	body	beat	313	842	631	{situation}	particular	87	\N	electronics	\N	\N	\N	\N
369	bag	positive	761	230	287	{civil,short}	such	276	\N	electronics	\N	\N	\N	\N
370	though	computer	616	737	531	{realize,dark}	sure	24	\N	electronics	\N	\N	\N	\N
373	light	maybe	588	43	356	{Republican}	campaign	95	\N	electronics	\N	\N	\N	\N
376	lot	clear	81	143	948	{ask,key}	top	381	\N	electronics	\N	\N	\N	\N
377	cause	improve	957	738	654	{series}	necessary	97	\N	electronics	\N	\N	\N	\N
379	trade	price	910	330	982	{bed}	compare	361	\N	electronics	\N	\N	\N	\N
380	join	bring	946	823	810	{building}	full	621	\N	electronics	\N	\N	\N	\N
383	at	present	429	549	957	{court,choose}	natural	309	\N	electronics	\N	\N	\N	\N
384	firm	any	920	225	648	{staff,commercial}	difficult	563	\N	electronics	\N	\N	\N	\N
387	enough	glass	560	21	257	{around,ever}	practice	968	\N	electronics	\N	\N	\N	\N
388	others	them	543	269	485	{even}	Mr	413	\N	electronics	\N	\N	\N	\N
390	participant	market	671	558	372	{nation}	other	634	\N	electronics	\N	\N	\N	\N
391	two	more	316	457	699	{somebody}	commercial	160	\N	electronics	\N	\N	\N	\N
394	decision	building	821	869	786	{grow,staff}	early	374	\N	electronics	\N	\N	\N	\N
395	military	field	910	300	164	{big}	drug	870	\N	electronics	\N	\N	\N	\N
396	case	oil	815	391	854	{become,among}	appear	416	\N	electronics	\N	\N	\N	\N
398	indeed	animal	683	704	819	{heavy}	might	551	\N	electronics	\N	\N	\N	\N
399	and	party	976	10	942	{whether}	senior	389	\N	electronics	\N	\N	\N	\N
400	build	work	765	576	965	{trial}	describe	471	\N	electronics	\N	\N	\N	\N
401	he	character	32	798	443	{nothing,near}	meeting	283	\N	computer	\N	\N	\N	\N
404	wife	race	852	114	602	{piece}	career	544	\N	computer	\N	\N	\N	\N
410	up	let	745	355	260	{pick}	behavior	632	\N	computer	\N	\N	\N	\N
413	still	line	532	148	58	{industry,beat}	husband	690	\N	computer	\N	\N	\N	\N
414	process	campaign	913	526	177	{difficult,network}	value	916	\N	computer	\N	\N	\N	\N
417	economic	reveal	234	103	255	{peace,national}	theory	999	\N	computer	\N	\N	\N	\N
418	either	particularly	337	673	252	{president,nice}	news	761	\N	computer	\N	\N	\N	\N
419	leader	wife	379	505	668	{build}	feeling	443	\N	computer	\N	\N	\N	\N
421	reach	member	860	129	154	{experience}	others	386	\N	computer	\N	\N	\N	\N
422	central	student	112	819	27	{law}	step	964	\N	computer	\N	\N	\N	\N
423	mission	rise	470	785	387	{easy,will}	see	940	\N	computer	\N	\N	\N	\N
386	arrive	position	247	221	919	{majority,far}	record	282	\N	electronics	\N	[{"barcode": "exist", "variant_id": "228", "price_override": "682", "is_active_variant": "934"}]	\N	\N
411	fast	indicate	425	386	368	{those,will}	majority	773	\N	computer	\N	\N	[{"price": "50", "ends_at": "environment", "price_id": "77", "starts_at": "but"}]	\N
374	certain	view	743	106	308	{accept,beyond}	stuff	255	\N	electronics	\N	\N	[{"price": "220", "ends_at": "various", "price_id": "444", "starts_at": "tell"}]	\N
375	experience	last	276	543	51	{summer,positive}	piece	32	\N	electronics	\N	\N	\N	30
424	foreign	own	158	996	538	{someone}	against	970	\N	computer	\N	\N	\N	85
371	offer	future	125	338	356	{tell}	collection	117	\N	electronics	\N	\N	\N	41
382	bit	task	696	591	636	{rock,marriage}	range	578	\N	electronics	\N	\N	\N	70
425	suggest	at	20	476	407	{very}	story	551	\N	computer	\N	\N	\N	\N
426	medical	lead	401	6	558	{continue}	way	434	\N	computer	\N	\N	\N	\N
427	ever	see	163	679	184	{box,go}	outside	679	\N	computer	\N	\N	\N	\N
428	rest	truth	78	794	550	{people}	almost	180	\N	computer	\N	\N	\N	\N
430	cover	reduce	814	42	959	{prepare}	event	718	\N	computer	\N	\N	\N	\N
431	space	and	708	627	670	{necessary}	state	254	\N	computer	\N	\N	\N	\N
433	if	second	574	97	657	{course,out}	bring	47	\N	computer	\N	\N	\N	\N
437	interview	owner	652	460	514	{director,meeting}	simply	568	\N	computer	\N	\N	\N	\N
438	various	however	716	405	716	{hundred,play}	sense	828	\N	computer	\N	\N	\N	\N
440	let	piece	266	581	287	{individual}	whom	800	\N	computer	\N	\N	\N	\N
442	institution	which	147	265	262	{traditional,stand}	lay	358	\N	computer	\N	\N	\N	\N
443	since	treat	286	580	479	{election}	particularly	153	\N	computer	\N	\N	\N	\N
444	offer	huge	134	982	259	{if}	hair	202	\N	computer	\N	\N	\N	\N
445	series	party	821	594	551	{big}	forward	557	\N	computer	\N	\N	\N	\N
446	whom	raise	734	893	246	{soon}	long	568	\N	computer	\N	\N	\N	\N
448	artist	standard	80	157	806	{trade}	partner	31	\N	computer	\N	\N	\N	\N
451	sit	somebody	871	391	143	{provide,window}	movement	208	\N	computer	\N	\N	\N	\N
452	nearly	step	737	407	366	{size}	learn	231	\N	computer	\N	\N	\N	\N
455	cost	wide	475	23	298	{return}	control	630	\N	computer	\N	\N	\N	\N
456	we	able	773	455	262	{social}	police	54	\N	computer	\N	\N	\N	\N
458	truth	other	645	842	106	{by}	PM	875	\N	computer	\N	\N	\N	\N
459	three	Mrs	649	601	252	{bad}	foot	517	\N	computer	\N	\N	\N	\N
460	moment	back	407	125	935	{citizen}	garden	839	\N	computer	\N	\N	\N	\N
463	board	happy	829	207	782	{law,establish}	represent	679	\N	computer	\N	\N	\N	\N
464	and	hear	559	629	237	{capital,truth}	question	39	\N	computer	\N	\N	\N	\N
466	place	view	991	281	788	{act,significant}	she	409	\N	computer	\N	\N	\N	\N
467	both	then	506	101	686	{keep}	writer	192	\N	computer	\N	\N	\N	\N
468	describe	game	17	465	772	{far}	group	501	\N	computer	\N	\N	\N	\N
469	store	true	404	843	748	{trip,trial}	increase	930	\N	computer	\N	\N	\N	\N
471	start	everyone	854	453	194	{seven}	able	610	\N	computer	\N	\N	\N	\N
473	note	wide	202	239	369	{baby}	them	350	\N	computer	\N	\N	\N	\N
474	believe	top	54	470	46	{bed}	several	913	\N	computer	\N	\N	\N	\N
475	serious	tend	875	929	962	{culture,billion}	election	481	\N	computer	\N	\N	\N	\N
476	lead	both	598	514	67	{score,oil}	management	95	\N	computer	\N	\N	\N	\N
480	news	pattern	603	767	325	{cold}	camera	611	\N	computer	\N	\N	\N	\N
481	do	remain	570	872	285	{increase}	compare	886	\N	computer	\N	\N	\N	\N
482	agree	once	807	810	795	{recognize,after}	eye	426	\N	computer	\N	\N	\N	\N
483	and	try	533	810	25	{worry}	side	38	\N	computer	\N	\N	\N	\N
484	personal	safe	543	15	104	{sense,market}	appear	345	\N	computer	\N	\N	\N	\N
485	light	democratic	378	769	565	{likely}	ever	653	\N	computer	\N	\N	\N	\N
486	season	on	597	76	497	{nothing}	receive	868	\N	computer	\N	\N	\N	\N
461	two	use	394	677	946	{past}	thing	834	\N	computer	\N	[{"barcode": "quickly", "variant_id": "468", "price_override": "581", "is_active_variant": "700"}]	\N	\N
470	father	capital	97	79	695	{author}	everything	867	\N	computer	\N	\N	[{"price": "658", "ends_at": "prove", "price_id": "316", "starts_at": "six"}]	\N
487	plant	suffer	457	343	513	{even}	cold	945	\N	computer	\N	\N	\N	74
432	teacher	get	799	477	122	{star}	central	397	\N	computer	\N	\N	\N	30
449	base	may	416	392	428	{care}	floor	606	\N	computer	\N	\N	\N	60
447	star	among	401	729	201	{general}	reveal	641	\N	computer	\N	\N	\N	82
488	parent	doctor	932	333	370	{participant}	organization	150	\N	computer	\N	\N	\N	\N
492	bed	at	786	646	253	{worker,dinner}	society	773	\N	computer	\N	\N	\N	\N
493	effort	world	407	564	291	{politics}	argue	77	\N	computer	\N	\N	\N	\N
494	team	available	175	927	959	{manage,goal}	suddenly	424	\N	computer	\N	\N	\N	\N
495	wait	trip	130	290	565	{government,they}	throughout	241	\N	computer	\N	\N	\N	\N
496	more	interesting	102	284	740	{time,strong}	action	49	\N	computer	\N	\N	\N	\N
500	in	full	373	819	766	{question}	sing	30	\N	computer	\N	\N	\N	\N
501	arm	myself	428	768	168	{rule}	center	724	\N	desktop	\N	\N	\N	\N
503	leg	look	925	203	239	{mouth}	smile	602	\N	desktop	\N	\N	\N	\N
505	camera	official	470	202	801	{eye}	answer	370	\N	desktop	\N	\N	\N	\N
507	company	purpose	955	651	10	{best}	player	501	\N	desktop	\N	\N	\N	\N
508	significant	allow	169	260	921	{major}	firm	10	\N	desktop	\N	\N	\N	\N
509	sea	energy	784	909	87	{way}	argue	36	\N	desktop	\N	\N	\N	\N
511	community	drug	503	519	381	{many,moment}	piece	402	\N	desktop	\N	\N	\N	\N
513	table	near	639	305	979	{cold,brother}	lot	629	\N	desktop	\N	\N	\N	\N
514	analysis	another	373	24	500	{thank}	economy	953	\N	desktop	\N	\N	\N	\N
516	see	raise	597	352	348	{dinner}	challenge	663	\N	desktop	\N	\N	\N	\N
517	health	report	200	719	527	{factor,happy}	as	975	\N	desktop	\N	\N	\N	\N
519	major	opportunity	757	590	927	{mouth,TV}	along	619	\N	desktop	\N	\N	\N	\N
520	from	throughout	170	853	275	{behavior,those}	born	577	\N	desktop	\N	\N	\N	\N
522	stock	understand	16	620	776	{new}	end	801	\N	desktop	\N	\N	\N	\N
524	wish	than	215	717	488	{local,player}	office	713	\N	desktop	\N	\N	\N	\N
525	year	about	149	394	884	{thank,ago}	our	56	\N	desktop	\N	\N	\N	\N
528	eat	themselves	333	347	317	{might}	parent	214	\N	desktop	\N	\N	\N	\N
529	green	stuff	84	337	123	{best}	American	132	\N	desktop	\N	\N	\N	\N
530	save	perhaps	708	302	983	{Republican,nation}	high	623	\N	desktop	\N	\N	\N	\N
531	director	lead	239	28	986	{who}	indeed	774	\N	desktop	\N	\N	\N	\N
533	doctor	enough	388	431	950	{billion,represent}	start	831	\N	desktop	\N	\N	\N	\N
536	road	require	250	731	405	{PM,effect}	likely	216	\N	desktop	\N	\N	\N	\N
537	issue	significant	156	738	307	{lead,health}	yes	2	\N	desktop	\N	\N	\N	\N
539	card	usually	692	150	32	{get,half}	build	448	\N	desktop	\N	\N	\N	\N
540	individual	mention	351	896	821	{newspaper,cold}	green	326	\N	desktop	\N	\N	\N	\N
541	decide	surface	619	115	598	{organization,movement}	know	830	\N	desktop	\N	\N	\N	\N
542	learn	Republican	679	283	440	{growth}	most	863	\N	desktop	\N	\N	\N	\N
543	decide	long	771	89	655	{stock,grow}	plan	118	\N	desktop	\N	\N	\N	\N
544	travel	report	226	892	621	{true,alone}	environment	448	\N	desktop	\N	\N	\N	\N
545	class	with	804	237	56	{Mrs}	pass	612	\N	desktop	\N	\N	\N	\N
546	involve	give	527	524	167	{manage}	serve	300	\N	desktop	\N	\N	\N	\N
547	organization	can	50	906	70	{seat}	young	4	\N	desktop	\N	\N	\N	\N
521	contain	end	826	406	622	{reach,style}	instead	262	\N	desktop	\N	[{"barcode": "town", "variant_id": "524", "price_override": "479", "is_active_variant": "504"}]	\N	\N
512	move	wrong	670	76	200	{offer}	expert	193	\N	desktop	\N	\N	\N	3
548	wonder	speech	64	434	750	{safe}	be	68	\N	desktop	\N	\N	\N	51
498	visit	only	77	564	324	{fish,center}	stand	949	\N	computer	\N	\N	\N	93
552	movement	rather	188	216	401	{he}	memory	245	\N	desktop	\N	\N	\N	\N
554	situation	view	417	123	17	{instead}	day	518	\N	desktop	\N	\N	\N	\N
555	nation	baby	96	780	190	{nor}	station	231	\N	desktop	\N	\N	\N	\N
556	movement	run	312	928	826	{not}	executive	61	\N	desktop	\N	\N	\N	\N
562	without	staff	806	832	761	{ask}	Republican	961	\N	desktop	\N	\N	\N	\N
563	church	reveal	732	259	540	{friend,blood}	occur	893	\N	desktop	\N	\N	\N	\N
564	thought	issue	740	34	742	{politics,evidence}	eat	784	\N	desktop	\N	\N	\N	\N
567	effect	tend	396	92	437	{door}	compare	852	\N	desktop	\N	\N	\N	\N
569	former	fire	117	246	75	{check,line}	alone	907	\N	desktop	\N	\N	\N	\N
571	thing	serve	380	420	468	{special,career}	special	361	\N	desktop	\N	\N	\N	\N
572	fish	information	406	982	483	{view}	future	380	\N	desktop	\N	\N	\N	\N
573	trade	now	310	173	310	{begin}	heart	893	\N	desktop	\N	\N	\N	\N
574	affect	change	729	745	154	{challenge}	executive	469	\N	desktop	\N	\N	\N	\N
576	yet	above	627	260	242	{leg,meeting}	condition	661	\N	desktop	\N	\N	\N	\N
577	prove	note	176	284	877	{economic,administration}	if	318	\N	desktop	\N	\N	\N	\N
580	job	trip	71	702	192	{suggest,could}	wrong	548	\N	desktop	\N	\N	\N	\N
581	toward	and	48	744	978	{board}	born	666	\N	desktop	\N	\N	\N	\N
584	measure	leave	124	190	972	{eat,pull}	base	34	\N	desktop	\N	\N	\N	\N
585	range	onto	907	629	729	{buy}	truth	64	\N	desktop	\N	\N	\N	\N
586	simply	stop	858	869	312	{listen,article}	old	577	\N	desktop	\N	\N	\N	\N
587	the	start	251	369	791	{such}	impact	238	\N	desktop	\N	\N	\N	\N
589	war	various	1000	139	229	{page,laugh}	represent	519	\N	desktop	\N	\N	\N	\N
590	staff	professor	273	145	167	{end}	food	78	\N	desktop	\N	\N	\N	\N
591	hair	sign	588	523	522	{after,lot}	growth	884	\N	desktop	\N	\N	\N	\N
594	politics	radio	284	211	235	{treatment}	whom	137	\N	desktop	\N	\N	\N	\N
596	agreement	exist	51	803	369	{common}	occur	625	\N	desktop	\N	\N	\N	\N
597	mean	design	695	713	889	{lot}	economy	90	\N	desktop	\N	\N	\N	\N
598	charge	sing	660	672	202	{again,hundred}	big	169	\N	desktop	\N	\N	\N	\N
599	skin	within	708	859	856	{tell}	really	223	\N	desktop	\N	\N	\N	\N
602	mouth	wind	524	327	681	{water,audience}	situation	620	\N	laptop	\N	\N	\N	\N
604	loss	third	74	269	65	{clearly,daughter}	task	20	\N	laptop	\N	\N	\N	\N
609	music	price	670	737	580	{note,budget}	cultural	590	\N	laptop	\N	\N	\N	\N
610	apply	day	263	692	177	{sing,may}	eye	147	\N	laptop	\N	\N	\N	\N
612	seem	tonight	853	493	995	{home}	soldier	39	\N	laptop	\N	\N	\N	\N
614	citizen	likely	483	584	496	{television,fly}	individual	940	\N	laptop	\N	\N	\N	\N
615	continue	create	175	577	726	{lead,various}	land	408	\N	laptop	\N	\N	\N	\N
616	network	catch	566	742	576	{crime,than}	single	170	\N	laptop	\N	\N	\N	\N
553	staff	different	569	718	464	{laugh}	stock	340	\N	desktop	\N	[{"barcode": "tend", "variant_id": "418", "price_override": "825", "is_active_variant": "833"}]	\N	\N
582	management	follow	754	986	375	{area,actually}	away	879	\N	desktop	\N	[{"barcode": "live", "variant_id": "151", "price_override": "185", "is_active_variant": "192"}]	\N	\N
568	different	season	502	899	352	{however}	gun	620	\N	desktop	\N	\N	[{"price": "799", "ends_at": "body", "price_id": "826", "starts_at": "subject"}]	\N
605	face	system	336	232	321	{ok,right}	would	855	\N	laptop	\N	\N	\N	55
600	heavy	some	912	492	566	{public}	eye	923	\N	desktop	\N	\N	\N	65
583	authority	operation	801	516	643	{fill,food}	media	351	\N	desktop	\N	\N	\N	46
613	coach	cover	254	81	759	{especially}	modern	40	\N	laptop	\N	\N	\N	43
566	single	do	945	676	889	{foot,really}	option	886	\N	desktop	\N	[{"barcode": "to", "variant_id": "635", "price_override": "478", "is_active_variant": "183"}]	\N	10
618	rest	according	244	705	661	{media,notice}	program	872	\N	laptop	\N	\N	\N	\N
619	audience	four	777	893	366	{send}	western	166	\N	laptop	\N	\N	\N	\N
620	expect	prove	953	853	47	{truth,very}	medical	581	\N	laptop	\N	\N	\N	\N
621	at	morning	828	178	583	{watch,yeah}	score	490	\N	laptop	\N	\N	\N	\N
622	involve	central	240	906	898	{resource}	color	455	\N	laptop	\N	\N	\N	\N
623	place	image	522	214	410	{impact,apply}	however	127	\N	laptop	\N	\N	\N	\N
624	value	officer	142	174	338	{probably}	article	185	\N	laptop	\N	\N	\N	\N
625	visit	thus	760	633	543	{structure,mother}	none	240	\N	laptop	\N	\N	\N	\N
626	body	identify	438	480	469	{forward,pay}	give	174	\N	laptop	\N	\N	\N	\N
629	after	still	731	671	526	{wear}	control	633	\N	laptop	\N	\N	\N	\N
631	wonder	reflect	56	88	740	{develop}	environment	100	\N	laptop	\N	\N	\N	\N
632	part	ball	141	455	407	{ground}	themselves	487	\N	laptop	\N	\N	\N	\N
633	exactly	half	874	608	38	{seven}	like	970	\N	laptop	\N	\N	\N	\N
634	possible	happen	461	501	400	{too,course}	teach	935	\N	laptop	\N	\N	\N	\N
636	authority	town	29	570	63	{free}	key	999	\N	laptop	\N	\N	\N	\N
637	shake	power	236	457	871	{others,central}	possible	453	\N	laptop	\N	\N	\N	\N
638	great	language	764	105	398	{measure}	level	766	\N	laptop	\N	\N	\N	\N
639	thousand	serious	953	420	477	{financial,control}	although	520	\N	laptop	\N	\N	\N	\N
640	free	everything	411	555	887	{yard,main}	watch	905	\N	laptop	\N	\N	\N	\N
642	bank	media	995	141	626	{leave}	series	231	\N	laptop	\N	\N	\N	\N
647	son	fire	321	870	772	{will,large}	like	179	\N	laptop	\N	\N	\N	\N
649	change	beautiful	550	327	324	{beyond,candidate}	kitchen	975	\N	laptop	\N	\N	\N	\N
650	onto	term	958	651	350	{plant,make}	anyone	576	\N	laptop	\N	\N	\N	\N
651	grow	stuff	474	332	497	{worry,cold}	step	844	\N	laptop	\N	\N	\N	\N
652	government	reality	224	171	247	{small}	base	880	\N	laptop	\N	\N	\N	\N
653	foot	kid	252	53	800	{general,enough}	every	928	\N	laptop	\N	\N	\N	\N
654	us	guess	64	337	430	{sound}	agreement	353	\N	laptop	\N	\N	\N	\N
655	born	respond	615	610	903	{daughter,stop}	religious	215	\N	laptop	\N	\N	\N	\N
656	administration	local	875	296	929	{growth}	fall	322	\N	laptop	\N	\N	\N	\N
657	improve	mission	394	686	793	{over}	summer	9	\N	laptop	\N	\N	\N	\N
658	physical	police	924	992	983	{give,building}	radio	619	\N	laptop	\N	\N	\N	\N
659	down	rather	631	860	916	{force}	without	240	\N	laptop	\N	\N	\N	\N
660	if	both	627	328	394	{relate}	serious	728	\N	laptop	\N	\N	\N	\N
661	clear	newspaper	99	445	5	{world,nice}	glass	96	\N	laptop	\N	\N	\N	\N
662	benefit	machine	975	157	115	{play}	surface	772	\N	laptop	\N	\N	\N	\N
664	person	table	199	163	169	{situation}	ask	988	\N	laptop	\N	\N	\N	\N
667	hundred	consumer	368	798	179	{beat}	section	241	\N	laptop	\N	\N	\N	\N
671	song	born	542	473	909	{see}	six	737	\N	laptop	\N	\N	\N	\N
675	wonder	family	108	457	736	{discuss,realize}	mission	684	\N	laptop	\N	\N	\N	\N
676	vote	contain	442	381	664	{start,kid}	catch	955	\N	laptop	\N	\N	\N	\N
677	seek	Republican	422	447	377	{key}	follow	201	\N	laptop	\N	\N	\N	\N
678	theory	pattern	244	246	22	{very}	tough	686	\N	laptop	\N	\N	\N	\N
679	who	treat	804	632	452	{candidate}	pick	56	\N	laptop	\N	\N	\N	\N
681	hit	natural	805	286	426	{foreign}	movie	881	\N	laptop	\N	\N	\N	\N
617	protect	nation	383	53	861	{woman,laugh}	trip	842	\N	laptop	\N	[{"barcode": "determine", "variant_id": "779", "price_override": "616", "is_active_variant": "807"}]	\N	\N
635	out	west	775	178	863	{affect,tree}	sure	185	\N	laptop	\N	\N	[{"price": "335", "ends_at": "likely", "price_id": "775", "starts_at": "price"}]	\N
669	pay	challenge	579	147	215	{quickly,quality}	mind	726	\N	laptop	\N	\N	[{"price": "912", "ends_at": "daughter", "price_id": "456", "starts_at": "above"}]	\N
643	although	positive	222	909	465	{direction}	bar	106	\N	laptop	\N	\N	\N	13
670	view	against	916	759	357	{none}	from	393	\N	laptop	\N	\N	\N	7
648	spring	American	185	457	158	{in,Mr}	baby	109	\N	laptop	\N	\N	\N	22
682	rich	simply	791	677	384	{nature,accept}	wall	798	\N	laptop	\N	\N	\N	\N
683	them	hot	766	49	519	{particularly,air}	cell	133	\N	laptop	\N	\N	\N	\N
684	hotel	company	536	373	599	{people}	despite	358	\N	laptop	\N	\N	\N	\N
686	skill	decide	825	20	375	{behavior}	leader	155	\N	laptop	\N	\N	\N	\N
689	child	under	100	132	552	{wife,position}	matter	659	\N	laptop	\N	\N	\N	\N
691	radio	ago	325	449	120	{expert}	including	216	\N	laptop	\N	\N	\N	\N
693	prove	even	905	929	201	{feeling}	able	707	\N	laptop	\N	\N	\N	\N
694	agree	together	90	4	525	{voice,you}	decide	934	\N	laptop	\N	\N	\N	\N
695	simply	a	94	315	500	{sister}	once	588	\N	laptop	\N	\N	\N	\N
696	thank	simple	306	402	644	{get}	event	687	\N	laptop	\N	\N	\N	\N
697	authority	item	284	931	636	{program,teach}	not	449	\N	laptop	\N	\N	\N	\N
699	perform	opportunity	276	527	178	{purpose,force}	suffer	467	\N	laptop	\N	\N	\N	\N
700	book	base	605	187	329	{I,nor}	anyone	778	\N	laptop	\N	\N	\N	\N
801	seven	score	525	94	910	{hot,agreement}	organization	694	\N	smartwatch	\N	\N	\N	\N
803	sometimes	instead	586	172	441	{environmental,across}	represent	734	\N	smartwatch	\N	\N	\N	\N
805	adult	thing	393	29	984	{total,report}	everybody	124	\N	smartwatch	\N	\N	\N	\N
806	player	town	294	266	26	{area}	smile	333	\N	smartwatch	\N	\N	\N	\N
807	before	fear	641	527	679	{Republican}	do	225	\N	smartwatch	\N	\N	\N	\N
808	only	key	301	758	83	{decide}	over	467	\N	smartwatch	\N	\N	\N	\N
813	image	serve	181	551	489	{indicate,language}	sound	18	\N	smartwatch	\N	\N	\N	\N
814	stop	along	466	895	351	{job}	available	869	\N	smartwatch	\N	\N	\N	\N
815	model	happen	991	232	355	{expert}	treat	24	\N	smartwatch	\N	\N	\N	\N
817	produce	claim	184	238	84	{young,sell}	administration	42	\N	smartwatch	\N	\N	\N	\N
819	career	cost	836	635	540	{establish}	at	40	\N	smartwatch	\N	\N	\N	\N
820	relationship	give	858	433	228	{little,idea}	Congress	690	\N	smartwatch	\N	\N	\N	\N
821	within	action	532	995	982	{shoulder,participant}	evening	194	\N	smartwatch	\N	\N	\N	\N
823	article	grow	409	524	437	{she,those}	need	454	\N	smartwatch	\N	\N	\N	\N
824	how	art	346	579	948	{herself}	eye	81	\N	smartwatch	\N	\N	\N	\N
825	control	quality	484	853	750	{nearly,picture}	defense	166	\N	smartwatch	\N	\N	\N	\N
829	Mrs	question	408	565	386	{despite,husband}	position	246	\N	smartwatch	\N	\N	\N	\N
830	section	wide	368	556	558	{challenge}	without	272	\N	smartwatch	\N	\N	\N	\N
831	course	fire	21	873	674	{every}	country	270	\N	smartwatch	\N	\N	\N	\N
834	billion	able	17	164	841	{finally,service}	let	114	\N	smartwatch	\N	\N	\N	\N
835	great	though	225	156	116	{main,you}	husband	59	\N	smartwatch	\N	\N	\N	\N
836	form	enter	177	70	98	{name,she}	food	563	\N	smartwatch	\N	\N	\N	\N
837	foreign	look	748	671	480	{also}	may	60	\N	smartwatch	\N	\N	\N	\N
840	staff	member	449	114	347	{my,thing}	politics	895	\N	smartwatch	\N	\N	\N	\N
810	rise	political	828	695	484	{site}	little	577	\N	smartwatch	\N	[{"barcode": "here", "variant_id": "869", "price_override": "343", "is_active_variant": "478"}]	\N	\N
687	since	argue	484	654	28	{central,admit}	thank	69	\N	laptop	\N	\N	[{"price": "651", "ends_at": "affect", "price_id": "163", "starts_at": "population"}]	\N
804	firm	start	454	748	250	{any,fund}	policy	768	\N	smartwatch	\N	\N	[{"price": "482", "ends_at": "provide", "price_id": "716", "starts_at": "kitchen"}]	\N
692	school	especially	887	715	379	{performance}	carry	99	\N	laptop	\N	\N	[{"price": "880", "ends_at": "these", "price_id": "669", "starts_at": "better"}]	\N
811	expect	page	501	577	86	{rather}	response	61	\N	smartwatch	\N	\N	\N	25
832	after	camera	727	898	400	{letter}	Republican	271	\N	smartwatch	\N	\N	\N	39
822	above	ever	859	42	620	{activity,rule}	authority	421	\N	smartwatch	\N	\N	\N	34
690	through	watch	975	420	248	{small,very}	memory	490	\N	laptop	\N	\N	\N	81
826	again	military	919	441	165	{rather}	culture	274	\N	smartwatch	\N	\N	\N	31
844	clear	cell	273	192	155	{near}	continue	339	\N	smartwatch	\N	\N	\N	\N
845	surface	own	986	361	991	{today,save}	improve	69	\N	smartwatch	\N	\N	\N	\N
846	option	type	647	608	813	{unit,subject}	trade	590	\N	smartwatch	\N	\N	\N	\N
848	can	available	737	937	862	{focus}	trip	545	\N	smartwatch	\N	\N	\N	\N
850	down	organization	632	541	934	{left}	keep	792	\N	smartwatch	\N	\N	\N	\N
852	than	unit	410	436	501	{unit,attack}	product	721	\N	smartwatch	\N	\N	\N	\N
853	soldier	thus	799	35	545	{image}	including	25	\N	smartwatch	\N	\N	\N	\N
857	remain	once	349	84	607	{notice}	your	796	\N	smartwatch	\N	\N	\N	\N
858	prepare	interesting	143	940	869	{Democrat,pay}	human	971	\N	smartwatch	\N	\N	\N	\N
859	purpose	scene	181	94	9	{detail}	board	25	\N	smartwatch	\N	\N	\N	\N
860	company	available	188	286	199	{reason,action}	amount	412	\N	smartwatch	\N	\N	\N	\N
862	fine	perhaps	997	881	943	{law,focus}	old	571	\N	smartwatch	\N	\N	\N	\N
863	decade	fact	394	890	108	{various,ask}	street	475	\N	smartwatch	\N	\N	\N	\N
864	everybody	two	248	73	745	{until,stuff}	play	138	\N	smartwatch	\N	\N	\N	\N
865	interesting	wide	703	619	28	{rather,imagine}	everybody	653	\N	smartwatch	\N	\N	\N	\N
866	quality	production	58	298	354	{maybe}	rich	712	\N	smartwatch	\N	\N	\N	\N
867	tell	within	636	450	325	{doctor}	ball	781	\N	smartwatch	\N	\N	\N	\N
868	mind	worker	546	324	942	{management,thought}	care	712	\N	smartwatch	\N	\N	\N	\N
869	agency	low	968	778	750	{treat}	voice	598	\N	smartwatch	\N	\N	\N	\N
871	yard	without	416	754	127	{region}	easy	12	\N	smartwatch	\N	\N	\N	\N
872	actually	past	937	957	794	{writer,western}	head	781	\N	smartwatch	\N	\N	\N	\N
874	source	better	42	147	951	{program,movement}	for	529	\N	smartwatch	\N	\N	\N	\N
877	together	herself	831	610	263	{serious}	tree	798	\N	smartwatch	\N	\N	\N	\N
879	while	also	150	332	175	{someone,recent}	different	403	\N	smartwatch	\N	\N	\N	\N
880	federal	station	592	949	937	{information}	ago	516	\N	smartwatch	\N	\N	\N	\N
881	must	evening	917	658	81	{should,about}	none	267	\N	smartwatch	\N	\N	\N	\N
882	her	actually	402	501	747	{with}	man	824	\N	smartwatch	\N	\N	\N	\N
883	sport	she	642	758	298	{middle}	view	863	\N	smartwatch	\N	\N	\N	\N
884	interest	character	649	959	276	{animal,admit}	approach	281	\N	smartwatch	\N	\N	\N	\N
885	certain	hard	128	262	989	{admit}	away	994	\N	smartwatch	\N	\N	\N	\N
886	thought	business	123	854	688	{music}	senior	480	\N	smartwatch	\N	\N	\N	\N
888	imagine	today	244	43	231	{modern}	environment	111	\N	smartwatch	\N	\N	\N	\N
889	line	central	835	955	99	{wall}	surface	593	\N	smartwatch	\N	\N	\N	\N
890	often	like	674	117	45	{technology,season}	many	425	\N	smartwatch	\N	\N	\N	\N
892	least	them	863	818	932	{effect,method}	choose	999	\N	smartwatch	\N	\N	\N	\N
893	girl	beyond	814	629	640	{whether}	program	164	\N	smartwatch	\N	\N	\N	\N
894	cover	across	550	588	502	{bring}	around	361	\N	smartwatch	\N	\N	\N	\N
895	carry	article	849	620	408	{professional}	usually	334	\N	smartwatch	\N	\N	\N	\N
899	unit	must	288	562	313	{right,once}	government	470	\N	smartwatch	\N	\N	\N	\N
900	simply	knowledge	393	121	832	{over}	college	314	\N	smartwatch	\N	\N	\N	\N
1001	note	gun	293	852	853	{cover}	point	56	\N	phone	\N	\N	\N	\N
1003	finish	purpose	69	736	161	{popular,many}	two	275	\N	phone	\N	\N	\N	\N
1004	edge	analysis	784	830	134	{agent}	responsibility	923	\N	phone	\N	\N	\N	\N
1005	recent	remember	198	945	783	{study}	loss	617	\N	phone	\N	\N	\N	\N
873	mention	cause	996	357	180	{necessary,see}	current	753	\N	smartwatch	\N	[{"barcode": "plan", "variant_id": "583", "price_override": "542", "is_active_variant": "131"}]	\N	\N
897	executive	seem	16	828	590	{two,stuff}	technology	102	\N	smartwatch	\N	\N	[{"price": "750", "ends_at": "lay", "price_id": "921", "starts_at": "quality"}]	\N
870	project	force	833	700	458	{back}	sea	434	\N	smartwatch	\N	\N	\N	92
1002	allow	me	956	320	673	{admit}	thus	131	\N	phone	\N	\N	\N	14
851	sometimes	north	209	307	176	{camera}	two	663	\N	smartwatch	\N	\N	\N	79
847	direction	government	925	994	182	{suggest}	art	783	\N	smartwatch	\N	\N	\N	59
1006	lawyer	century	427	222	801	{try,skin}	might	555	\N	phone	\N	\N	\N	\N
1008	occur	character	511	249	209	{find}	prepare	699	\N	phone	\N	\N	\N	\N
1009	real	alone	156	251	922	{feel}	chair	625	\N	phone	\N	\N	\N	\N
1011	product	little	266	990	67	{special,thousand}	practice	81	\N	phone	\N	\N	\N	\N
1014	maintain	any	130	568	604	{age}	our	815	\N	phone	\N	\N	\N	\N
1016	listen	fill	230	455	692	{table,evidence}	forget	341	\N	phone	\N	\N	\N	\N
1019	real	garden	680	738	478	{walk,garden}	true	361	\N	phone	\N	\N	\N	\N
1020	whom	size	160	469	206	{fly,similar}	against	549	\N	phone	\N	\N	\N	\N
1021	whatever	forget	289	613	214	{question}	pull	624	\N	phone	\N	\N	\N	\N
1022	sell	leave	226	290	109	{lot}	president	672	\N	phone	\N	\N	\N	\N
1023	direction	money	233	867	435	{skin}	term	688	\N	phone	\N	\N	\N	\N
1027	move	safe	13	777	468	{smile,improve}	power	430	\N	phone	\N	\N	\N	\N
1028	friend	pass	250	664	108	{daughter}	health	518	\N	phone	\N	\N	\N	\N
1029	a	natural	53	757	392	{sense}	source	956	\N	phone	\N	\N	\N	\N
1031	prepare	yes	497	378	563	{everything,inside}	let	30	\N	phone	\N	\N	\N	\N
1033	bar	production	986	244	531	{seek}	cover	574	\N	phone	\N	\N	\N	\N
1034	still	how	643	45	989	{sort}	price	663	\N	phone	\N	\N	\N	\N
1035	far	start	859	324	37	{until}	rest	450	\N	phone	\N	\N	\N	\N
1036	high	analysis	862	720	183	{off,military}	believe	150	\N	phone	\N	\N	\N	\N
1037	move	defense	148	258	517	{population,use}	single	709	\N	phone	\N	\N	\N	\N
1039	three	newspaper	970	393	859	{police,vote}	subject	376	\N	phone	\N	\N	\N	\N
1040	small	response	216	39	543	{win,camera}	since	226	\N	phone	\N	\N	\N	\N
1041	trip	treatment	987	493	977	{focus}	enter	173	\N	phone	\N	\N	\N	\N
1043	issue	star	713	306	952	{wall,yeah}	listen	846	\N	phone	\N	\N	\N	\N
1044	growth	glass	860	824	791	{Mr}	issue	778	\N	phone	\N	\N	\N	\N
1046	general	ask	993	789	584	{show}	conference	778	\N	phone	\N	\N	\N	\N
1047	hotel	remain	38	639	323	{traditional}	star	813	\N	phone	\N	\N	\N	\N
1048	agent	everything	541	667	183	{behind,example}	seem	554	\N	phone	\N	\N	\N	\N
1049	continue	line	83	420	739	{likely}	thousand	839	\N	phone	\N	\N	\N	\N
1050	second	fine	558	45	811	{next}	civil	328	\N	phone	\N	\N	\N	\N
1051	black	vote	959	684	955	{eye,get}	hit	463	\N	phone	\N	\N	\N	\N
1055	may	if	855	984	641	{discover}	another	98	\N	phone	\N	\N	\N	\N
1056	stock	size	457	816	863	{within,trouble}	speech	315	\N	phone	\N	\N	\N	\N
1057	example	politics	717	178	307	{appear}	here	763	\N	phone	\N	\N	\N	\N
1058	evidence	whom	338	934	341	{show}	guess	991	\N	phone	\N	\N	\N	\N
1059	result	society	42	53	983	{ten}	attack	725	\N	phone	\N	\N	\N	\N
1060	technology	scientist	187	616	474	{think,foot}	art	990	\N	phone	\N	\N	\N	\N
1061	statement	sign	731	38	273	{water,full}	thousand	988	\N	phone	\N	\N	\N	\N
1062	impact	soon	68	736	656	{personal}	hand	904	\N	phone	\N	\N	\N	\N
1063	hold	billion	933	886	13	{economic}	not	770	\N	phone	\N	\N	\N	\N
1064	agent	begin	424	356	277	{protect,success}	position	40	\N	phone	\N	\N	\N	\N
1065	area	attention	396	114	313	{dream,card}	forget	770	\N	phone	\N	\N	\N	\N
1068	camera	action	487	726	783	{girl}	opportunity	949	\N	phone	\N	\N	\N	\N
1053	theory	tend	862	823	88	{bank,better}	strong	375	\N	phone	\N	[{"barcode": "allow", "variant_id": "554", "price_override": "896", "is_active_variant": "613"}]	\N	\N
1032	say	protect	950	661	609	{science,couple}	should	399	\N	phone	\N	\N	[{"price": "858", "ends_at": "red", "price_id": "918", "starts_at": "store"}]	\N
1038	probably	husband	96	525	127	{heavy}	often	714	\N	phone	\N	\N	\N	72
1066	address	cause	255	235	531	{future,turn}	dark	581	\N	phone	\N	\N	\N	65
1010	front	use	629	718	983	{spend}	science	562	\N	phone	\N	\N	\N	11
1071	challenge	girl	660	892	564	{past}	usually	136	\N	phone	\N	\N	\N	\N
1074	fund	rather	794	35	611	{reduce,low}	vote	280	\N	phone	\N	\N	\N	\N
1075	subject	top	361	8	921	{cell}	image	718	\N	phone	\N	\N	\N	\N
1076	way	I	856	9	66	{old,land}	threat	965	\N	phone	\N	\N	\N	\N
1077	join	stay	734	444	732	{skin,author}	team	317	\N	phone	\N	\N	\N	\N
1078	kind	animal	702	137	402	{else,seek}	believe	774	\N	phone	\N	\N	\N	\N
1079	turn	share	369	803	459	{everyone,doctor}	worry	300	\N	phone	\N	\N	\N	\N
1081	really	police	319	236	712	{arrive}	energy	512	\N	phone	\N	\N	\N	\N
1082	week	later	62	803	8	{push}	mouth	609	\N	phone	\N	\N	\N	\N
1083	business	indicate	475	3	1000	{child}	end	136	\N	phone	\N	\N	\N	\N
1084	model	final	729	402	825	{memory,page}	approach	228	\N	phone	\N	\N	\N	\N
1085	those	sister	608	873	865	{red,recognize}	give	188	\N	phone	\N	\N	\N	\N
1087	learn	prevent	925	940	339	{hotel,they}	nothing	89	\N	phone	\N	\N	\N	\N
1088	president	way	125	955	823	{baby}	who	210	\N	phone	\N	\N	\N	\N
1090	defense	travel	795	723	85	{training,foot}	wind	586	\N	phone	\N	\N	\N	\N
1092	activity	easy	633	105	363	{manage}	event	704	\N	phone	\N	\N	\N	\N
1093	throughout	environmental	896	948	506	{possible}	never	468	\N	phone	\N	\N	\N	\N
1094	other	inside	442	224	65	{describe}	go	682	\N	phone	\N	\N	\N	\N
1095	growth	newspaper	650	258	337	{structure,effect}	focus	860	\N	phone	\N	\N	\N	\N
1096	prove	remain	378	596	335	{term,guy}	society	530	\N	phone	\N	\N	\N	\N
1097	rule	reason	636	614	667	{finish}	image	195	\N	phone	\N	\N	\N	\N
1099	physical	home	710	123	459	{four,film}	imagine	9	\N	phone	\N	\N	\N	\N
1100	level	pressure	231	977	312	{economic,property}	rise	685	\N	phone	\N	\N	\N	\N
1101	none	cell	975	695	144	{PM}	beyond	285	make	accessories	\N	\N	\N	\N
1102	argue	address	723	522	631	{government}	film	167	huge	accessories	\N	\N	\N	\N
1103	between	address	864	594	318	{such}	detail	677	do	accessories	\N	\N	\N	\N
1104	major	hope	114	273	654	{economic}	finish	961	century	accessories	\N	\N	\N	\N
1108	question	experience	299	763	385	{work}	provide	580	bill	accessories	\N	\N	\N	\N
1109	political	at	448	133	702	{peace}	month	439	rule	accessories	\N	\N	\N	\N
1111	cold	particularly	534	190	64	{day}	begin	195	so	accessories	\N	\N	\N	\N
1112	major	staff	20	356	244	{condition}	gas	727	ever	accessories	\N	\N	\N	\N
1116	goal	star	160	881	562	{beautiful}	do	818	care	accessories	\N	\N	\N	\N
1118	international	read	370	341	749	{score}	individual	97	beyond	accessories	\N	\N	\N	\N
1119	establish	growth	262	900	996	{nature,such}	likely	365	tough	accessories	\N	\N	\N	\N
1122	argue	name	952	308	692	{drug,school}	subject	315	argue	accessories	\N	\N	\N	\N
1123	financial	drop	813	395	495	{town,rich}	they	689	explain	accessories	\N	\N	\N	\N
1124	firm	street	123	600	977	{visit}	study	732	establish	accessories	\N	\N	\N	\N
1125	rich	last	109	435	76	{administration}	hear	127	forget	accessories	\N	\N	\N	\N
1126	network	finish	646	10	252	{every,part}	oil	936	conference	accessories	\N	\N	\N	\N
1127	significant	rather	73	968	218	{purpose,unit}	figure	220	major	accessories	\N	\N	\N	\N
1129	week	receive	714	572	587	{compare}	model	713	family	accessories	\N	\N	\N	\N
1130	seem	million	474	386	86	{receive}	significant	76	summer	accessories	\N	\N	\N	\N
1086	sister	share	741	224	166	{administration}	night	907	\N	phone	\N	[{"barcode": "he", "variant_id": "222", "price_override": "1", "is_active_variant": "52"}]	\N	\N
1080	over	guy	906	487	191	{international,their}	treatment	9	\N	phone	\N	[{"barcode": "station", "variant_id": "651", "price_override": "899", "is_active_variant": "780"}]	\N	\N
1073	pretty	song	133	141	623	{ready}	soldier	131	\N	phone	\N	\N	[{"price": "9", "ends_at": "book", "price_id": "626", "starts_at": "shake"}]	\N
1110	use	imagine	499	65	605	{high,box}	modern	545	say	accessories	\N	\N	\N	97
1117	order	probably	26	146	558	{whether,team}	movie	236	information	accessories	\N	\N	\N	11
1113	next	design	540	540	666	{doctor,near}	single	572	shake	accessories	\N	\N	\N	85
1131	front	these	992	309	740	{want,share}	move	210	tend	accessories	\N	\N	\N	78
1072	environmental	face	411	143	626	{season,watch}	sign	199	\N	phone	\N	\N	\N	9
1120	marriage	light	609	891	44	{design}	change	875	may	accessories	\N	\N	\N	85
1132	worry	hospital	738	303	835	{analysis,agreement}	these	190	little	accessories	\N	\N	\N	\N
1133	front	any	658	622	946	{marriage,toward}	mind	385	development	accessories	\N	\N	\N	\N
1134	growth	year	865	873	746	{draw,better}	live	227	Mr	accessories	\N	\N	\N	\N
1135	might	should	253	944	506	{town}	trip	300	nice	accessories	\N	\N	\N	\N
1136	just	by	275	486	506	{himself,budget}	threat	773	involve	accessories	\N	\N	\N	\N
1137	guess	kid	113	608	740	{near}	customer	220	give	accessories	\N	\N	\N	\N
1138	accept	discover	706	458	398	{help}	character	432	chair	accessories	\N	\N	\N	\N
1140	reflect	step	719	700	396	{trip,any}	put	383	like	accessories	\N	\N	\N	\N
1141	a	exist	539	146	820	{message}	anyone	917	meeting	accessories	\N	\N	\N	\N
1142	cost	skin	525	730	164	{sell}	total	597	return	accessories	\N	\N	\N	\N
1143	although	the	795	218	778	{away,especially}	base	671	growth	accessories	\N	\N	\N	\N
1145	buy	nice	22	725	463	{assume,suddenly}	win	685	red	accessories	\N	\N	\N	\N
1146	simple	new	691	593	354	{performance,learn}	happen	729	feel	accessories	\N	\N	\N	\N
1148	move	these	685	473	592	{garden,evidence}	ahead	836	establish	accessories	\N	\N	\N	\N
1150	same	process	284	889	455	{question}	resource	114	city	accessories	\N	\N	\N	\N
1152	rule	government	841	912	859	{really}	already	522	ball	accessories	\N	\N	\N	\N
1153	plant	magazine	926	934	328	{player}	always	159	entire	accessories	\N	\N	\N	\N
1156	system	future	231	140	74	{gun}	major	170	join	accessories	\N	\N	\N	\N
1157	he	defense	480	617	745	{war,man}	weight	815	apply	accessories	\N	\N	\N	\N
1158	within	during	816	945	226	{take,record}	cost	619	above	accessories	\N	\N	\N	\N
1159	under	center	401	275	9	{loss,dog}	type	154	unit	accessories	\N	\N	\N	\N
1160	consumer	medical	124	760	442	{our,write}	ground	757	seven	accessories	\N	\N	\N	\N
1163	money	most	918	792	170	{bill,world}	language	835	mind	accessories	\N	\N	\N	\N
1164	three	by	444	114	949	{computer}	along	368	career	accessories	\N	\N	\N	\N
1166	her	same	822	463	33	{relationship,along}	doctor	292	despite	accessories	\N	\N	\N	\N
1168	nature	dog	768	281	173	{as,nothing}	assume	524	rather	accessories	\N	\N	\N	\N
1170	write	remain	713	37	132	{sort}	some	393	here	accessories	\N	\N	\N	\N
1172	require	north	300	28	773	{give,cup}	sometimes	19	serious	accessories	\N	\N	\N	\N
1173	science	score	557	654	628	{result}	into	431	paper	accessories	\N	\N	\N	\N
1176	ever	suddenly	128	895	589	{despite}	account	811	although	accessories	\N	\N	\N	\N
1178	pick	the	600	34	848	{but,source}	employee	484	easy	accessories	\N	\N	\N	\N
1179	where	television	889	556	327	{administration}	mission	9	establish	accessories	\N	\N	\N	\N
1180	which	data	131	484	483	{myself,onto}	purpose	443	ask	accessories	\N	\N	\N	\N
1181	side	tend	647	528	104	{series,kind}	trip	464	purpose	accessories	\N	\N	\N	\N
1183	under	major	921	911	434	{bring}	out	933	PM	accessories	\N	\N	\N	\N
1186	bill	begin	677	104	892	{environmental}	former	617	benefit	accessories	\N	\N	\N	\N
1187	reality	remember	326	163	893	{you}	machine	339	late	accessories	\N	\N	\N	\N
1165	campaign	would	663	326	315	{education}	participant	314	lot	accessories	\N	[{"barcode": "continue", "variant_id": "268", "price_override": "697", "is_active_variant": "561"}]	\N	\N
1185	produce	first	468	371	114	{fall,because}	protect	820	add	accessories	\N	[{"barcode": "kind", "variant_id": "601", "price_override": "210", "is_active_variant": "212"}]	\N	\N
1161	heart	too	687	309	706	{you,industry}	former	568	focus	accessories	\N	\N	[{"price": "460", "ends_at": "drive", "price_id": "172", "starts_at": "discover"}]	\N
1147	call	reduce	373	877	224	{indicate,growth}	son	209	somebody	accessories	\N	\N	\N	50
1149	music	western	278	704	639	{those,gun}	present	292	statement	accessories	\N	\N	\N	50
1151	report	identify	965	334	459	{individual,mission}	sense	532	nation	accessories	\N	\N	\N	68
1184	significant	eight	941	360	832	{who}	necessary	85	choose	accessories	\N	\N	\N	28
1190	strong	son	473	834	513	{rock,everyone}	save	396	husband	accessories	\N	\N	\N	\N
1191	around	range	373	536	789	{child,smile}	dog	829	word	accessories	\N	\N	\N	\N
1193	laugh	almost	180	316	182	{shoulder}	catch	213	teacher	accessories	\N	\N	\N	\N
1194	policy	scene	880	794	138	{eat}	American	942	maintain	accessories	\N	\N	\N	\N
1195	hotel	without	469	810	142	{exist}	you	928	tell	accessories	\N	\N	\N	\N
1196	effect	professor	497	519	562	{usually,where}	theory	404	make	accessories	\N	\N	\N	\N
1197	water	culture	626	655	766	{know,surface}	politics	558	remember	accessories	\N	\N	\N	\N
1198	job	base	980	662	517	{decide,personal}	compare	482	present	accessories	\N	\N	\N	\N
1199	fill	society	287	489	129	{cold}	knowledge	388	hard	accessories	\N	\N	\N	\N
1200	right	new	37	977	956	{miss,mention}	perhaps	625	world	accessories	\N	\N	\N	\N
344	land	treat	534	264	427	{catch,exactly}	learn	890	\N	electronics	[{"url": "simple", "alt_text": "leg", "image_id": "659", "sort_order": "221"}]	\N	\N	\N
875	four	half	718	628	421	{discuss}	same	808	\N	smartwatch	[{"url": "artist", "alt_text": "production", "image_id": "754", "sort_order": "843"}]	\N	\N	\N
557	nor	garden	322	900	744	{black}	free	65	\N	desktop	[{"url": "show", "alt_text": "every", "image_id": "588", "sort_order": "868"}]	\N	\N	\N
1155	onto	investment	864	31	691	{goal,ability}	under	408	audience	accessories	[{"url": "authority", "alt_text": "west", "image_id": "499", "sort_order": "925"}]	\N	\N	\N
361	use	cold	707	139	661	{buy}	employee	323	\N	electronics	[{"url": "politics", "alt_text": "everything", "image_id": "796", "sort_order": "714"}]	\N	\N	\N
641	shake	data	759	877	490	{stage}	available	328	\N	laptop	[{"url": "speech", "alt_text": "would", "image_id": "417", "sort_order": "971"}]	\N	\N	\N
1013	when	forget	581	481	444	{almost}	difference	950	\N	phone	[{"url": "yourself", "alt_text": "same", "image_id": "324", "sort_order": "67"}]	\N	\N	\N
372	yet	inside	257	921	789	{picture}	interesting	698	\N	electronics	[{"url": "method", "alt_text": "position", "image_id": "272", "sort_order": "415"}]	\N	\N	\N
570	push	within	546	312	943	{use,soon}	site	773	\N	desktop	[{"url": "final", "alt_text": "approach", "image_id": "478", "sort_order": "460"}]	\N	\N	\N
1115	occur	lay	225	967	523	{machine}	major	672	west	accessories	[{"url": "oil", "alt_text": "where", "image_id": "673", "sort_order": "580"}]	\N	\N	\N
855	factor	with	406	455	523	{particularly,part}	behind	437	\N	smartwatch	[{"url": "industry", "alt_text": "third", "image_id": "383", "sort_order": "745"}]	\N	\N	\N
560	stock	admit	813	234	681	{sea}	history	123	\N	desktop	[{"url": "write", "alt_text": "likely", "image_id": "267", "sort_order": "782"}]	\N	\N	\N
453	table	me	727	148	357	{public,two}	collection	549	\N	computer	[{"url": "of", "alt_text": "attention", "image_id": "936", "sort_order": "353"}]	\N	\N	\N
1054	matter	fire	11	292	217	{southern,country}	hotel	384	\N	phone	[{"url": "by", "alt_text": "smile", "image_id": "341", "sort_order": "681"}]	\N	\N	\N
510	town	finally	541	206	215	{always,campaign}	challenge	296	\N	desktop	[{"url": "interview", "alt_text": "including", "image_id": "128", "sort_order": "143"}]	\N	\N	\N
324	fast	pick	834	267	377	{ok}	chair	604	\N	electronics	[{"url": "national", "alt_text": "treatment", "image_id": "135", "sort_order": "573"}]	\N	\N	\N
565	girl	sea	334	359	366	{hot,brother}	another	783	\N	desktop	[{"url": "evening", "alt_text": "life", "image_id": "399", "sort_order": "150"}]	\N	\N	\N
812	suggest	rule	20	286	38	{reflect,choice}	baby	319	\N	smartwatch	[{"url": "just", "alt_text": "market", "image_id": "593", "sort_order": "454"}]	\N	\N	\N
551	too	billion	273	303	596	{letter,hit}	order	911	\N	desktop	[{"url": "safe", "alt_text": "street", "image_id": "935", "sort_order": "970"}]	\N	\N	\N
1192	increase	crime	179	858	696	{positive}	three	1	woman	accessories	[{"url": "economy", "alt_text": "then", "image_id": "538", "sort_order": "791"}]	\N	\N	\N
1174	industry	off	553	847	476	{sense}	since	827	fall	accessories	[{"url": "affect", "alt_text": "guess", "image_id": "18", "sort_order": "601"}]	\N	\N	\N
601	vote	century	874	376	512	{step,approach}	popular	139	\N	laptop	[{"url": "road", "alt_text": "position", "image_id": "809", "sort_order": "701"}]	\N	\N	\N
828	stuff	game	356	959	725	{cold,down}	she	892	\N	smartwatch	[{"url": "wrong", "alt_text": "image", "image_id": "313", "sort_order": "647"}]	\N	\N	\N
588	forward	church	298	715	583	{Republican}	sometimes	201	\N	desktop	[{"url": "accept", "alt_text": "sort", "image_id": "427", "sort_order": "945"}]	\N	\N	\N
1107	future	daughter	56	145	505	{writer,case}	practice	516	skill	accessories	[{"url": "our", "alt_text": "piece", "image_id": "837", "sort_order": "554"}]	\N	\N	\N
385	fish	give	137	56	615	{strategy}	store	180	\N	electronics	[{"url": "performance", "alt_text": "prepare", "image_id": "143", "sort_order": "439"}]	\N	\N	52
665	support	pass	123	453	599	{general}	reflect	442	\N	laptop	[{"url": "half", "alt_text": "bank", "image_id": "667", "sort_order": "725"}]	\N	\N	88
1121	at	they	690	470	39	{under,thing}	can	319	drop	accessories	[{"url": "group", "alt_text": "decide", "image_id": "840", "sort_order": "48"}]	\N	\N	\N
685	this	next	883	252	651	{necessary}	real	448	\N	laptop	\N	[{"barcode": "station", "variant_id": "783", "price_override": "873", "is_active_variant": "709"}]	\N	\N
1171	three	every	331	348	853	{than,room}	simple	172	kid	accessories	[{"url": "tax", "alt_text": "process", "image_id": "178", "sort_order": "748"}]	[{"barcode": "happen", "variant_id": "994", "price_override": "471", "is_active_variant": "421"}]	\N	\N
479	station	herself	932	893	489	{around}	spend	438	\N	computer	\N	[{"barcode": "assume", "variant_id": "310", "price_override": "141", "is_active_variant": "266"}]	\N	\N
818	happy	record	179	328	5	{book,only}	always	552	\N	smartwatch	\N	[{"barcode": "American", "variant_id": "218", "price_override": "705", "is_active_variant": "776"}]	\N	\N
578	across	sell	439	158	564	{sometimes,school}	former	908	\N	desktop	\N	[{"barcode": "team", "variant_id": "13", "price_override": "127", "is_active_variant": "178"}]	\N	\N
407	church	what	840	715	252	{ready}	throw	109	\N	computer	\N	[{"barcode": "movement", "variant_id": "240", "price_override": "327", "is_active_variant": "324"}]	\N	\N
838	minute	serve	278	53	542	{current,drive}	born	911	\N	smartwatch	\N	[{"barcode": "feeling", "variant_id": "428", "price_override": "484", "is_active_variant": "143"}]	\N	\N
592	turn	floor	450	595	525	{visit,financial}	hard	188	\N	desktop	\N	[{"barcode": "TV", "variant_id": "373", "price_override": "883", "is_active_variant": "507"}]	\N	\N
1007	arm	know	869	502	178	{contain}	clear	823	\N	phone	\N	[{"barcode": "sit", "variant_id": "763", "price_override": "53", "is_active_variant": "201"}]	\N	\N
1017	property	certainly	686	581	188	{past}	student	785	\N	phone	\N	[{"barcode": "recently", "variant_id": "894", "price_override": "674", "is_active_variant": "230"}]	\N	\N
1189	raise	Mrs	598	976	68	{mouth,write}	quite	579	worker	accessories	\N	[{"barcode": "pass", "variant_id": "680", "price_override": "906", "is_active_variant": "171"}]	\N	\N
575	choice	reflect	643	156	139	{sound}	also	82	\N	desktop	\N	[{"barcode": "effort", "variant_id": "2", "price_override": "275", "is_active_variant": "767"}]	\N	\N
303	card	international	506	887	921	{after}	worker	436	\N	electronics	\N	\N	[{"price": "127", "ends_at": "factor", "price_id": "485", "starts_at": "pretty"}]	\N
1188	born	security	790	84	214	{share,fire}	suddenly	571	how	accessories	\N	\N	[{"price": "904", "ends_at": "together", "price_id": "720", "starts_at": "rule"}]	\N
301	what	fund	23	605	377	{recent,free}	many	728	\N	electronics	\N	\N	[{"price": "38", "ends_at": "role", "price_id": "988", "starts_at": "career"}]	\N
477	treatment	water	816	525	863	{buy,trouble}	election	404	\N	computer	\N	\N	[{"price": "4", "ends_at": "memory", "price_id": "638", "starts_at": "sure"}]	\N
403	professor	seat	483	798	39	{head}	realize	832	\N	computer	\N	\N	[{"price": "896", "ends_at": "several", "price_id": "655", "starts_at": "develop"}]	\N
896	least	method	543	877	73	{positive}	huge	980	\N	smartwatch	[{"url": "event", "alt_text": "food", "image_id": "652", "sort_order": "369"}]	\N	\N	45
389	part	difference	726	107	763	{provide,best}	fear	71	\N	electronics	\N	[{"barcode": "health", "variant_id": "215", "price_override": "477", "is_active_variant": "966"}]	\N	43
436	though	physical	137	576	725	{step,service}	television	790	\N	computer	\N	\N	[{"price": "841", "ends_at": "represent", "price_id": "188", "starts_at": "candidate"}]	35
523	PM	center	469	914	365	{forget}	under	521	\N	desktop	\N	[{"barcode": "many", "variant_id": "329", "price_override": "136", "is_active_variant": "518"}]	\N	28
1177	method	traditional	393	92	512	{after}	here	363	yes	accessories	\N	\N	[{"price": "45", "ends_at": "five", "price_id": "431", "starts_at": "street"}]	25
627	sure	manage	520	979	317	{push}	effect	290	\N	laptop	\N	[{"barcode": "north", "variant_id": "169", "price_override": "903", "is_active_variant": "200"}]	[{"price": "250", "ends_at": "according", "price_id": "464", "starts_at": "tough"}]	90
644	necessary	store	436	54	465	{talk}	store	384	\N	laptop	\N	\N	[{"price": "932", "ends_at": "day", "price_id": "830", "starts_at": "strong"}]	\N
856	free	nation	611	880	347	{population,onto}	personal	922	\N	smartwatch	\N	\N	[{"price": "738", "ends_at": "coach", "price_id": "134", "starts_at": "personal"}]	\N
1069	message	fact	909	906	359	{brother}	drug	978	\N	phone	\N	\N	[{"price": "651", "ends_at": "report", "price_id": "285", "starts_at": "own"}]	\N
698	benefit	especially	932	891	330	{article,every}	record	453	\N	laptop	[{"url": "most", "alt_text": "thus", "image_id": "679", "sort_order": "728"}]	\N	[{"price": "700", "ends_at": "boy", "price_id": "158", "starts_at": "beat"}]	\N
1012	provide	more	365	541	286	{even}	religious	673	\N	phone	\N	[{"barcode": "prove", "variant_id": "388", "price_override": "601", "is_active_variant": "681"}]	[{"price": "884", "ends_at": "almost", "price_id": "976", "starts_at": "short"}]	\N
854	talk	national	377	255	160	{cut}	recent	932	\N	smartwatch	\N	\N	[{"price": "181", "ends_at": "public", "price_id": "50", "starts_at": "indicate"}]	\N
891	hope	test	151	835	356	{left}	still	52	\N	smartwatch	\N	\N	[{"price": "635", "ends_at": "western", "price_id": "56", "starts_at": "generation"}]	\N
1114	international	run	425	170	804	{second}	adult	1	show	accessories	\N	\N	[{"price": "469", "ends_at": "decide", "price_id": "956", "starts_at": "you"}]	\N
630	force	exist	461	835	547	{they,tax}	thousand	373	\N	laptop	\N	[{"barcode": "east", "variant_id": "972", "price_override": "842", "is_active_variant": "152"}, {"barcode": "also", "variant_id": "582", "price_override": "652", "is_active_variant": "425"}]	[{"price": "14", "ends_at": "maintain", "price_id": "442", "starts_at": "two"}]	\N
816	seat	none	452	525	203	{stuff,assume}	our	157	\N	smartwatch	\N	\N	[{"price": "521", "ends_at": "yes", "price_id": "924", "starts_at": "everybody"}]	\N
1128	behind	everything	931	304	293	{edge,improve}	hear	477	step	accessories	\N	\N	[{"price": "180", "ends_at": "billion", "price_id": "828", "starts_at": "section"}]	\N
393	should	poor	901	847	222	{part,education}	who	862	\N	electronics	[{"url": "to", "alt_text": "letter", "image_id": "611", "sort_order": "375"}]	\N	[{"price": "711", "ends_at": "necessary", "price_id": "512", "starts_at": "subject"}]	\N
1106	hundred	movie	931	254	954	{size,citizen}	phone	442	four	accessories	\N	\N	[{"price": "886", "ends_at": "difficult", "price_id": "929", "starts_at": "development"}]	16
1105	east	growth	185	724	656	{bar,practice}	window	584	act	accessories	\N	\N	[{"price": "144", "ends_at": "sell", "price_id": "581", "starts_at": "rest"}]	31
408	about	network	975	367	893	{different}	figure	120	\N	computer	\N	\N	[{"price": "160", "ends_at": "center", "price_id": "994", "starts_at": "continue"}]	7
1045	have	term	926	929	219	{financial,him}	try	127	\N	phone	\N	\N	\N	1
392	each	drug	77	936	594	{final}	find	693	\N	electronics	\N	\N	\N	1
409	know	common	42	939	721	{own,media}	much	433	\N	computer	\N	\N	\N	94
843	decision	start	358	438	442	{example,material}	me	602	\N	smartwatch	\N	\N	\N	50
1139	heart	say	64	964	747	{ball}	here	780	step	accessories	\N	\N	\N	46
1042	four	card	243	202	543	{force,off}	talk	658	\N	phone	\N	\N	\N	18
1182	current	hand	565	529	303	{after}	room	54	push	accessories	\N	\N	\N	76
429	author	reason	600	23	526	{cover}	read	438	\N	computer	\N	\N	\N	27
876	good	stuff	584	481	741	{their,reflect}	fly	597	\N	smartwatch	\N	\N	\N	26
320	song	senior	276	476	279	{decision,clearly}	level	652	\N	electronics	\N	\N	\N	2
378	beat	understand	696	337	281	{general}	enjoy	528	\N	electronics	\N	\N	\N	31
310	professor	three	984	307	713	{throw}	strong	554	\N	electronics	\N	\N	\N	68
457	clear	forward	801	324	164	{challenge}	act	980	\N	computer	\N	\N	\N	52
833	nation	expect	789	820	603	{probably,ball}	official	503	\N	smartwatch	\N	\N	\N	67
1067	executive	prove	271	11	6	{ten}	relationship	800	\N	phone	\N	\N	\N	37
550	increase	ago	20	627	10	{approach}	foreign	481	\N	desktop	\N	\N	\N	98
663	increase	information	385	448	334	{rule,hospital}	win	965	\N	laptop	\N	[{"barcode": "across", "variant_id": "523", "price_override": "584", "is_active_variant": "839"}, {"barcode": "consumer", "variant_id": "280", "price_override": "592", "is_active_variant": "366"}]	[{"price": "47", "ends_at": "participant", "price_id": "805", "starts_at": "about"}]	55
1052	goal	front	766	196	915	{catch,however}	beautiful	475	\N	phone	\N	\N	\N	35
367	part	leave	336	5	793	{I}	rate	842	\N	electronics	\N	\N	\N	13
439	culture	spend	508	837	286	{wait,article}	that	951	\N	computer	\N	\N	\N	11
532	some	week	775	517	768	{west,eight}	person	310	\N	desktop	\N	\N	\N	10
898	agency	society	462	90	1	{somebody}	become	760	\N	smartwatch	\N	\N	\N	96
454	for	show	91	527	848	{old,worker}	avoid	214	\N	computer	\N	\N	\N	62
412	act	fill	350	452	818	{tend}	world	651	\N	computer	\N	\N	\N	66
450	usually	water	133	689	552	{service}	other	950	\N	computer	\N	\N	\N	56
595	let	alone	214	22	168	{hundred,expect}	record	372	\N	desktop	[{"url": "book", "alt_text": "play", "image_id": "903", "sort_order": "221"}, {"url": "evidence", "alt_text": "leg", "image_id": "578", "sort_order": "194"}]	\N	\N	51
666	market	training	342	622	813	{million,produce}	happy	609	\N	laptop	\N	\N	\N	75
334	bad	cell	224	548	433	{character,begin}	though	49	\N	electronics	\N	\N	\N	86
628	theory	across	699	7	833	{space,party}	paper	122	\N	laptop	\N	\N	\N	93
672	central	market	706	931	817	{writer}	room	740	\N	laptop	\N	\N	\N	84
435	raise	deep	320	478	285	{condition,thing}	catch	171	\N	computer	\N	\N	\N	33
499	assume	least	881	529	137	{budget}	serious	453	\N	computer	\N	\N	\N	72
518	particular	evidence	853	623	578	{born,book}	trip	615	\N	desktop	\N	\N	\N	16
802	will	through	38	284	863	{kitchen,participant}	pull	133	\N	smartwatch	\N	\N	\N	18
842	nice	fund	85	235	838	{other,get}	create	575	\N	smartwatch	\N	\N	\N	95
839	without	generation	760	658	213	{door,born}	deep	610	\N	smartwatch	\N	\N	[{"price": "811", "ends_at": "individual", "price_id": "7", "starts_at": "next"}]	90
506	ahead	seven	468	343	950	{he,how}	project	226	\N	desktop	\N	\N	\N	91
1144	these	place	947	318	309	{effort,song}	collection	138	say	accessories	\N	\N	\N	51
549	fear	someone	10	36	551	{education,bar}	early	341	\N	desktop	\N	\N	\N	74
878	inside	table	904	401	553	{race,do}	including	936	\N	smartwatch	\N	\N	\N	37
593	mouth	late	885	365	201	{with,customer}	clearly	824	\N	desktop	\N	[{"barcode": "have", "variant_id": "243", "price_override": "156", "is_active_variant": "735"}]	\N	65
489	never	would	595	152	604	{professor}	none	414	\N	computer	\N	\N	\N	7
434	hit	including	245	797	13	{low}	front	979	\N	computer	\N	\N	\N	26
887	bill	water	970	155	478	{nice}	economy	802	\N	smartwatch	\N	\N	\N	76
339	class	half	220	694	660	{enter}	just	888	\N	electronics	\N	\N	\N	35
497	production	of	525	309	807	{table}	education	842	\N	computer	\N	\N	\N	59
827	care	prevent	423	767	493	{person,point}	himself	981	\N	smartwatch	\N	\N	\N	77
606	series	property	891	314	975	{few,last}	exist	426	\N	laptop	\N	\N	[{"price": "694", "ends_at": "break", "price_id": "771", "starts_at": "history"}]	51
645	poor	need	961	287	408	{long}	TV	397	\N	laptop	\N	\N	\N	32
1167	heavy	next	573	643	218	{marriage,guess}	trouble	984	meet	accessories	\N	\N	\N	95
1025	boy	fish	209	652	716	{star}	natural	317	\N	phone	\N	\N	\N	96
841	even	see	392	959	670	{pretty,defense}	chair	298	\N	smartwatch	\N	\N	\N	75
559	draw	service	985	353	60	{share}	where	454	\N	desktop	\N	\N	\N	32
668	of	us	607	501	36	{few}	its	137	\N	laptop	\N	\N	\N	49
680	best	hit	841	839	540	{participant}	under	46	\N	laptop	\N	\N	\N	89
538	serve	laugh	722	704	315	{price,radio}	year	510	\N	desktop	\N	\N	\N	88
534	figure	I	879	76	963	{black}	behind	418	\N	desktop	\N	\N	\N	10
502	task	light	719	680	645	{feeling,any}	year	189	\N	desktop	\N	\N	\N	52
1026	management	face	765	307	637	{sign}	nearly	439	\N	phone	\N	\N	\N	72
1162	issue	record	63	679	764	{decide}	pretty	100	if	accessories	\N	\N	\N	26
611	environment	reflect	407	366	535	{training}	often	406	\N	laptop	\N	\N	\N	84
405	onto	improve	782	365	565	{similar,energy}	article	802	\N	computer	\N	\N	\N	32
1098	reduce	way	915	422	356	{theory,every}	should	355	\N	phone	\N	\N	\N	65
1089	over	the	337	815	574	{institution,onto}	door	812	\N	phone	\N	[{"barcode": "available", "variant_id": "862", "price_override": "230", "is_active_variant": "844"}]	\N	44
345	benefit	feeling	505	649	917	{read}	guy	808	\N	electronics	\N	\N	\N	89
688	world	paper	604	442	95	{place,report}	participant	558	\N	laptop	\N	\N	\N	83
397	natural	change	121	616	149	{over,use}	certainly	303	\N	electronics	\N	\N	\N	93
402	glass	hospital	380	419	416	{stock,dream}	animal	55	\N	computer	\N	\N	\N	43
441	administration	study	637	86	749	{team,exist}	special	345	\N	computer	\N	\N	\N	21
608	break	positive	441	950	628	{day}	indeed	285	\N	laptop	\N	\N	\N	95
603	while	cover	803	587	92	{allow,science}	week	347	\N	laptop	\N	\N	\N	64
579	deep	school	939	111	866	{worry}	war	701	\N	desktop	\N	\N	\N	6
490	amount	next	888	521	431	{sport,generation}	both	350	\N	computer	\N	\N	\N	37
351	pattern	crime	282	277	724	{quality}	pay	422	\N	electronics	\N	\N	\N	2
1024	ahead	son	858	308	505	{paper}	Congress	385	\N	phone	\N	\N	\N	19
849	miss	natural	210	489	970	{table}	in	368	\N	smartwatch	\N	\N	\N	55
646	to	glass	457	309	759	{rate,bank}	Congress	660	\N	laptop	\N	\N	\N	26
1030	movie	role	855	18	527	{fight,main}	rise	950	\N	phone	\N	\N	[{"price": "260", "ends_at": "return", "price_id": "648", "starts_at": "later"}]	82
381	impact	doctor	950	892	278	{across,own}	yourself	94	\N	electronics	\N	\N	\N	27
561	which	whatever	208	56	765	{tree}	human	90	\N	desktop	\N	\N	\N	80
420	herself	page	409	556	124	{night,Mrs}	instead	950	\N	computer	\N	\N	\N	16
515	mean	especially	675	641	592	{view,fire}	no	848	\N	desktop	\N	\N	\N	74
526	spend	their	114	365	893	{director}	economic	262	\N	desktop	\N	\N	\N	87
350	watch	reflect	926	863	104	{parent}	outside	521	\N	electronics	\N	\N	\N	9
1175	him	whole	633	522	880	{would,enough}	former	109	show	accessories	\N	\N	\N	4
1070	admit	production	613	951	866	{item}	religious	571	\N	phone	\N	\N	\N	42
535	manage	want	238	623	44	{other}	add	645	\N	desktop	\N	\N	\N	86
527	during	behind	555	760	56	{eight,piece}	quite	388	\N	desktop	\N	[{"barcode": "no", "variant_id": "193", "price_override": "341", "is_active_variant": "197"}]	\N	45
504	whom	method	998	601	519	{weight}	once	739	\N	desktop	\N	\N	\N	31
674	company	fast	833	823	790	{throughout}	while	888	\N	laptop	\N	\N	\N	25
472	discuss	enough	195	868	522	{certainly,we}	future	535	\N	computer	\N	\N	[{"price": "848", "ends_at": "song", "price_id": "326", "starts_at": "lay"}]	90
809	seek	window	381	409	653	{positive,really}	eight	887	\N	smartwatch	\N	\N	\N	19
415	sister	behind	776	728	125	{meet}	same	492	\N	computer	\N	\N	\N	88
673	poor	other	44	274	840	{daughter}	write	74	\N	laptop	\N	\N	\N	29
406	current	true	931	992	671	{total,society}	what	822	\N	computer	\N	\N	\N	5
465	generation	national	172	688	687	{certainly}	opportunity	876	\N	computer	\N	\N	\N	44
1018	foreign	recently	940	50	377	{authority,its}	sister	166	\N	phone	\N	\N	\N	62
478	good	feeling	928	361	482	{whether}	change	566	\N	computer	\N	\N	\N	71
1091	energy	responsibility	365	966	915	{change}	believe	186	\N	phone	\N	\N	\N	48
462	necessary	score	593	261	743	{themselves}	only	735	\N	computer	\N	\N	\N	95
416	court	attack	215	393	647	{under}	mouth	407	\N	computer	\N	\N	\N	61
312	discover	before	796	557	661	{very,break}	of	539	\N	electronics	\N	\N	\N	31
861	perhaps	method	731	555	524	{religious,throw}	year	715	\N	smartwatch	\N	\N	\N	13
607	medical	realize	302	167	649	{structure,father}	tree	50	\N	laptop	\N	\N	\N	87
1015	she	carry	906	446	760	{reality,role}	door	377	\N	phone	\N	\N	\N	60
1154	want	direction	161	261	726	{audience}	those	422	scientist	accessories	\N	\N	\N	25
558	high	store	454	154	237	{realize}	fear	766	\N	desktop	\N	\N	\N	99
305	site	travel	494	744	75	{street,movie}	perhaps	418	\N	electronics	\N	\N	\N	22
491	do	turn	267	624	378	{discussion}	management	729	\N	computer	\N	\N	\N	78
1169	raise	officer	347	569	837	{idea}	western	918	measure	accessories	\N	\N	\N	22
\.


--
-- Data for Name: relation_40; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_40 (customer_id, wishlist_id, product_id) FROM stdin;
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
-- Data for Name: relation_41; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_41 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_42; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_42 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_43; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_43 (product_id, warehouse_id, bin_id) FROM stdin;
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
-- Data for Name: relation_44; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_44 (supplier_id, product_id) FROM stdin;
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
-- Data for Name: relation_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_45 (purchaseorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_46; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_46 (phone_id, bundle_phone_phone_id) FROM stdin;
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
-- Data for Name: relation_5; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_5 (computer_id, cpu, ram_gb, form_factor, role) FROM stdin;
401	reflect	956	\N	computer
402	become	102	\N	computer
403	certainly	44	\N	computer
404	dog	521	\N	computer
405	enough	582	\N	computer
406	color	486	\N	computer
407	deal	576	\N	computer
408	tell	796	\N	computer
409	half	901	\N	computer
410	thought	446	\N	computer
411	society	836	\N	computer
412	year	625	\N	computer
413	on	117	\N	computer
414	according	350	\N	computer
415	rise	919	\N	computer
416	western	734	\N	computer
417	visit	994	\N	computer
418	condition	483	\N	computer
419	year	452	\N	computer
420	state	273	\N	computer
421	service	425	\N	computer
422	fine	188	\N	computer
423	red	160	\N	computer
424	live	261	\N	computer
425	human	713	\N	computer
426	reflect	930	\N	computer
427	design	245	\N	computer
428	he	385	\N	computer
429	successful	242	\N	computer
430	military	517	\N	computer
431	nor	408	\N	computer
432	share	92	\N	computer
433	partner	531	\N	computer
434	role	880	\N	computer
435	energy	610	\N	computer
436	section	548	\N	computer
437	life	172	\N	computer
438	letter	206	\N	computer
439	try	156	\N	computer
440	agency	739	\N	computer
441	according	951	\N	computer
442	scene	394	\N	computer
443	nothing	977	\N	computer
444	artist	73	\N	computer
445	personal	440	\N	computer
446	operation	472	\N	computer
447	effect	958	\N	computer
448	wall	765	\N	computer
449	life	612	\N	computer
450	soldier	248	\N	computer
451	PM	678	\N	computer
452	plant	305	\N	computer
453	star	299	\N	computer
454	heart	723	\N	computer
455	everybody	382	\N	computer
456	perhaps	849	\N	computer
457	wife	946	\N	computer
458	almost	446	\N	computer
459	investment	520	\N	computer
460	turn	970	\N	computer
461	quality	734	\N	computer
462	public	124	\N	computer
463	direction	494	\N	computer
464	out	654	\N	computer
465	former	421	\N	computer
466	future	279	\N	computer
467	tell	573	\N	computer
468	throughout	220	\N	computer
469	good	250	\N	computer
470	direction	433	\N	computer
471	this	515	\N	computer
472	want	370	\N	computer
473	run	928	\N	computer
474	find	152	\N	computer
475	participant	45	\N	computer
476	hair	410	\N	computer
477	else	275	\N	computer
478	young	971	\N	computer
479	since	312	\N	computer
480	nor	604	\N	computer
481	move	622	\N	computer
482	offer	401	\N	computer
483	action	588	\N	computer
484	indicate	956	\N	computer
485	beat	380	\N	computer
486	television	553	\N	computer
487	price	165	\N	computer
488	big	918	\N	computer
489	bad	325	\N	computer
490	six	873	\N	computer
491	local	65	\N	computer
492	loss	993	\N	computer
493	there	726	\N	computer
494	where	86	\N	computer
495	sell	216	\N	computer
496	red	756	\N	computer
497	get	557	\N	computer
498	able	304	\N	computer
499	identify	834	\N	computer
500	window	324	\N	computer
501	news	603	wind	desktop
502	free	997	wear	desktop
503	behavior	134	evidence	desktop
504	fine	273	experience	desktop
505	else	986	responsibility	desktop
506	lead	948	add	desktop
507	administration	34	compare	desktop
508	where	236	girl	desktop
509	employee	969	eight	desktop
510	check	249	accept	desktop
511	population	968	like	desktop
512	billion	701	possible	desktop
513	cover	486	religious	desktop
514	cup	108	career	desktop
515	very	725	these	desktop
516	why	431	accept	desktop
517	factor	863	mother	desktop
518	seven	697	action	desktop
519	weight	483	choice	desktop
520	heavy	784	such	desktop
521	artist	318	indicate	desktop
522	song	469	stage	desktop
523	project	455	watch	desktop
524	fire	641	like	desktop
525	cost	658	call	desktop
526	assume	770	base	desktop
527	realize	16	decade	desktop
528	stay	734	success	desktop
529	newspaper	800	economy	desktop
530	also	349	fast	desktop
531	until	785	nothing	desktop
532	member	301	they	desktop
533	material	888	visit	desktop
534	most	961	face	desktop
535	them	230	development	desktop
536	phone	637	upon	desktop
537	position	730	election	desktop
538	prevent	175	relationship	desktop
539	take	568	trip	desktop
540	trip	962	capital	desktop
541	life	562	partner	desktop
542	change	319	direction	desktop
543	let	514	reduce	desktop
544	police	382	conference	desktop
545	knowledge	528	that	desktop
546	foreign	945	nice	desktop
547	process	689	these	desktop
548	whole	57	us	desktop
549	tell	804	consumer	desktop
550	never	205	plan	desktop
551	political	240	step	desktop
552	majority	994	glass	desktop
553	vote	335	home	desktop
554	thousand	656	history	desktop
555	politics	181	state	desktop
556	foot	814	imagine	desktop
557	no	853	large	desktop
558	many	294	drug	desktop
559	far	206	range	desktop
560	American	59	our	desktop
561	Republican	976	prevent	desktop
562	decision	293	leg	desktop
563	live	255	save	desktop
564	wonder	200	someone	desktop
565	talk	896	protect	desktop
566	admit	696	hit	desktop
567	camera	851	election	desktop
568	recently	665	along	desktop
569	say	284	personal	desktop
570	address	852	real	desktop
571	doctor	324	hard	desktop
572	serious	131	bring	desktop
573	at	562	create	desktop
574	pull	661	each	desktop
575	phone	833	about	desktop
576	information	323	option	desktop
577	away	80	bar	desktop
578	while	461	energy	desktop
579	real	324	month	desktop
580	meet	36	notice	desktop
581	attention	365	site	desktop
582	management	872	who	desktop
583	act	670	argue	desktop
584	long	278	will	desktop
585	force	253	natural	desktop
586	far	413	how	desktop
587	respond	965	hour	desktop
588	remain	100	paper	desktop
589	knowledge	912	energy	desktop
590	new	319	message	desktop
591	foot	893	mention	desktop
592	building	525	practice	desktop
593	various	76	company	desktop
594	serious	792	west	desktop
595	game	189	magazine	desktop
596	system	244	clear	desktop
597	help	452	although	desktop
598	hold	589	recent	desktop
599	us	324	capital	desktop
600	often	54	low	desktop
601	executive	500	\N	laptop
602	question	326	\N	laptop
603	sell	426	\N	laptop
604	include	185	\N	laptop
605	political	838	\N	laptop
606	machine	974	\N	laptop
607	figure	119	\N	laptop
608	foreign	366	\N	laptop
609	medical	289	\N	laptop
610	fine	361	\N	laptop
611	last	461	\N	laptop
612	rule	748	\N	laptop
613	myself	532	\N	laptop
614	town	533	\N	laptop
615	sign	14	\N	laptop
616	base	608	\N	laptop
617	child	362	\N	laptop
618	add	91	\N	laptop
619	remember	138	\N	laptop
620	bad	346	\N	laptop
621	want	9	\N	laptop
622	decide	671	\N	laptop
623	that	323	\N	laptop
624	age	825	\N	laptop
625	read	568	\N	laptop
626	statement	533	\N	laptop
627	behind	690	\N	laptop
628	value	436	\N	laptop
629	his	909	\N	laptop
630	more	856	\N	laptop
631	ready	552	\N	laptop
632	author	460	\N	laptop
633	artist	1000	\N	laptop
634	Mr	358	\N	laptop
635	less	899	\N	laptop
636	certainly	951	\N	laptop
637	serve	344	\N	laptop
638	that	480	\N	laptop
639	player	99	\N	laptop
640	late	910	\N	laptop
641	available	150	\N	laptop
642	same	806	\N	laptop
643	mother	716	\N	laptop
644	back	574	\N	laptop
645	between	499	\N	laptop
646	recognize	596	\N	laptop
647	job	103	\N	laptop
648	total	552	\N	laptop
649	phone	694	\N	laptop
650	learn	607	\N	laptop
651	drive	550	\N	laptop
652	outside	609	\N	laptop
653	party	635	\N	laptop
654	develop	369	\N	laptop
655	improve	806	\N	laptop
656	owner	407	\N	laptop
657	special	399	\N	laptop
658	skill	803	\N	laptop
659	voice	68	\N	laptop
660	somebody	893	\N	laptop
661	despite	828	\N	laptop
662	born	349	\N	laptop
663	arm	961	\N	laptop
664	build	992	\N	laptop
665	either	138	\N	laptop
666	itself	141	\N	laptop
667	mind	710	\N	laptop
668	beyond	546	\N	laptop
669	top	142	\N	laptop
670	blue	487	\N	laptop
671	it	247	\N	laptop
672	off	714	\N	laptop
673	thought	817	\N	laptop
674	picture	410	\N	laptop
675	medical	288	\N	laptop
676	center	769	\N	laptop
677	indicate	67	\N	laptop
678	exist	404	\N	laptop
679	girl	177	\N	laptop
680	sound	441	\N	laptop
681	national	242	\N	laptop
682	cold	351	\N	laptop
683	bill	706	\N	laptop
684	concern	121	\N	laptop
685	natural	974	\N	laptop
686	open	296	\N	laptop
687	visit	769	\N	laptop
688	sense	618	\N	laptop
689	year	617	\N	laptop
690	see	853	\N	laptop
691	worry	607	\N	laptop
692	cell	364	\N	laptop
693	late	670	\N	laptop
694	book	988	\N	laptop
695	business	440	\N	laptop
696	describe	610	\N	laptop
697	gun	225	\N	laptop
698	safe	547	\N	laptop
699	country	303	\N	laptop
700	great	991	\N	laptop
\.


--
-- Data for Name: relation_6; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_6 (laptop_id, battery_wh) FROM stdin;
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
-- Data for Name: relation_7; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_7 (tablet_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, screen_size_in, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
701	skin	stop	710	424	702	{throw,true}	determine	489	771	\N	\N	\N	\N
702	your	although	646	226	314	{sound}	enjoy	65	152	\N	\N	\N	\N
703	affect	do	506	997	842	{thing}	little	847	369	\N	\N	\N	\N
704	well	information	266	866	859	{parent,close}	choose	809	555	\N	\N	\N	\N
705	woman	song	901	311	142	{quite}	apply	514	142	\N	\N	\N	\N
707	difficult	hotel	584	933	334	{name,behavior}	fact	129	729	\N	\N	\N	\N
708	someone	within	1000	15	551	{least}	exactly	789	276	\N	\N	\N	\N
709	mind	candidate	638	830	67	{Mrs,natural}	bed	291	13	\N	\N	\N	\N
713	lead	my	511	543	352	{beautiful}	perform	193	174	\N	\N	\N	\N
714	most	they	57	632	120	{bag}	poor	121	569	\N	\N	\N	\N
715	page	form	543	313	772	{organization}	final	166	547	\N	\N	\N	\N
716	where	order	154	234	887	{peace}	scientist	92	516	\N	\N	\N	\N
717	serve	attack	362	920	707	{director,carry}	else	274	630	\N	\N	\N	\N
718	individual	create	138	293	592	{chance}	him	72	877	\N	\N	\N	\N
719	later	though	611	272	59	{they}	concern	443	626	\N	\N	\N	\N
720	research	student	989	290	864	{world,feeling}	individual	433	447	\N	\N	\N	\N
721	vote	court	861	829	70	{though}	operation	220	787	\N	\N	\N	\N
722	challenge	front	696	35	954	{receive,above}	actually	977	870	\N	\N	\N	\N
723	may	me	425	364	964	{them,write}	force	524	933	\N	\N	\N	\N
724	feel	project	152	184	809	{lay}	important	235	830	\N	\N	\N	\N
725	chance	represent	965	61	375	{wrong}	beautiful	889	458	\N	\N	\N	\N
726	news	possible	330	834	223	{affect}	American	264	159	\N	\N	\N	\N
727	fill	suggest	708	913	722	{structure,meet}	property	110	490	\N	\N	\N	\N
730	attack	moment	818	136	707	{audience,dark}	among	679	36	\N	\N	\N	\N
731	as	economy	807	787	392	{century,lay}	same	549	886	\N	\N	\N	\N
733	evidence	in	908	304	719	{whom,we}	early	206	529	\N	\N	\N	\N
736	thank	degree	966	610	650	{meeting,participant}	type	410	567	\N	\N	\N	\N
737	threat	car	996	432	858	{cold}	story	641	409	\N	\N	\N	\N
738	its	difference	969	890	145	{baby,early}	onto	131	63	\N	\N	\N	\N
739	wrong	available	300	398	632	{can,carry}	behind	654	98	\N	\N	\N	\N
740	speech	glass	207	613	278	{word,section}	business	610	433	\N	\N	\N	\N
744	single	learn	466	272	769	{possible}	eight	291	143	\N	\N	\N	\N
745	learn	once	823	87	417	{wear,exactly}	new	29	491	\N	\N	\N	\N
746	decade	accept	597	737	134	{rule,market}	its	504	821	\N	\N	\N	\N
747	fund	business	862	791	239	{hundred}	box	386	823	\N	\N	\N	\N
748	chance	president	64	421	616	{never}	country	256	689	\N	\N	\N	\N
753	company	else	877	788	176	{pretty,sometimes}	as	898	539	\N	\N	\N	\N
755	structure	marriage	791	719	223	{apply,shake}	fast	980	314	\N	\N	\N	\N
756	find	serious	852	550	331	{toward,model}	huge	602	5	\N	\N	\N	\N
758	try	herself	248	882	166	{lose}	happen	266	409	\N	\N	\N	\N
759	him	indicate	208	142	169	{door}	physical	324	396	\N	\N	\N	\N
762	century	event	319	791	226	{fund,discover}	senior	524	814	\N	\N	\N	\N
763	fish	sport	668	457	345	{current}	huge	71	73	\N	\N	\N	\N
764	speech	nature	844	237	123	{fly,Congress}	I	732	848	\N	\N	\N	\N
765	exist	bank	570	470	11	{current}	section	470	444	\N	\N	\N	\N
766	piece	seven	554	113	197	{third}	key	250	316	\N	\N	\N	\N
735	or	project	119	183	509	{smile,hour}	either	724	659	\N	[{"barcode": "newspaper", "variant_id": "957", "price_override": "453", "is_active_variant": "489"}]	\N	\N
706	traditional	instead	467	872	39	{thought,use}	treat	481	748	\N	\N	[{"price": "471", "ends_at": "big", "price_id": "990", "starts_at": "buy"}]	\N
760	everyone	police	931	723	217	{collection}	prove	40	457	\N	\N	\N	79
757	discover	can	673	493	259	{thought}	and	152	996	\N	\N	\N	86
767	hope	article	220	532	622	{power,affect}	positive	931	316	\N	\N	\N	\N
768	evening	yourself	271	943	358	{final,ability}	child	295	49	\N	\N	\N	\N
769	home	attack	30	896	11	{future,add}	officer	44	212	\N	\N	\N	\N
770	police	marriage	79	324	464	{trouble,identify}	likely	118	253	\N	\N	\N	\N
771	safe	whatever	690	891	114	{career}	make	31	200	\N	\N	\N	\N
773	send	see	30	573	233	{early,plant}	clear	178	858	\N	\N	\N	\N
774	recognize	house	545	973	939	{throw}	number	230	142	\N	\N	\N	\N
775	throughout	process	65	17	893	{table}	course	329	936	\N	\N	\N	\N
776	nor	make	591	87	530	{of,very}	third	200	408	\N	\N	\N	\N
777	individual	down	9	557	287	{white,eight}	PM	266	556	\N	\N	\N	\N
778	gas	consumer	395	895	414	{toward,follow}	prevent	286	91	\N	\N	\N	\N
779	level	candidate	185	778	491	{course,soldier}	alone	137	924	\N	\N	\N	\N
781	west	put	867	325	149	{around}	role	327	407	\N	\N	\N	\N
782	poor	plant	42	902	419	{parent,quickly}	human	852	515	\N	\N	\N	\N
783	consider	including	901	804	67	{end}	bag	135	569	\N	\N	\N	\N
784	culture	near	421	560	399	{film,phone}	notice	607	46	\N	\N	\N	\N
785	growth	improve	223	199	312	{writer,involve}	their	981	307	\N	\N	\N	\N
786	police	stage	932	531	24	{best,not}	and	196	549	\N	\N	\N	\N
787	prepare	inside	534	759	547	{continue}	trip	236	91	\N	\N	\N	\N
790	career	particular	102	859	969	{if}	word	726	602	\N	\N	\N	\N
791	join	available	441	487	979	{try}	early	965	839	\N	\N	\N	\N
792	serious	myself	224	580	480	{everything}	glass	994	885	\N	\N	\N	\N
795	either	prevent	377	444	837	{down}	amount	867	975	\N	\N	\N	\N
796	present	approach	454	267	965	{cultural,way}	water	365	396	\N	\N	\N	\N
797	meeting	feeling	822	580	235	{report,interesting}	meet	924	636	\N	\N	\N	\N
800	vote	both	472	923	113	{success}	source	466	360	\N	\N	\N	\N
728	general	describe	702	750	921	{least}	must	484	320	[{"url": "figure", "alt_text": "early", "image_id": "21", "sort_order": "964"}]	\N	\N	\N
798	positive	on	887	109	186	{last,message}	conference	78	27	[{"url": "sound", "alt_text": "buy", "image_id": "94", "sort_order": "532"}]	\N	\N	\N
751	large	feeling	848	47	599	{machine,market}	late	363	316	[{"url": "political", "alt_text": "high", "image_id": "522", "sort_order": "785"}]	\N	\N	\N
743	free	fill	924	694	26	{other}	indeed	789	380	\N	[{"barcode": "buy", "variant_id": "559", "price_override": "91", "is_active_variant": "144"}]	\N	\N
788	let	so	216	492	169	{open}	especially	674	862	\N	\N	\N	23
799	economic	prepare	430	897	601	{total,after}	cost	63	781	\N	\N	\N	30
742	ahead	majority	967	157	575	{experience,claim}	wrong	967	689	\N	\N	\N	66
754	range	I	256	336	618	{ahead}	machine	255	650	\N	\N	\N	62
789	image	mouth	413	911	290	{serve}	eye	155	821	\N	\N	\N	41
772	pressure	stuff	652	928	139	{go}	discover	451	747	[{"url": "still", "alt_text": "there", "image_id": "341", "sort_order": "133"}]	\N	\N	14
729	watch	very	269	796	813	{relationship,son}	fund	920	214	\N	\N	\N	22
761	necessary	whom	222	411	810	{clearly}	exist	718	919	\N	\N	\N	45
794	stop	fill	347	519	487	{especially,top}	candidate	525	677	\N	\N	\N	19
780	product	before	633	214	539	{doctor}	field	530	53	\N	\N	\N	55
734	hour	son	342	101	255	{color}	process	504	589	\N	\N	\N	9
741	natural	eat	271	521	850	{summer}	sister	334	802	\N	\N	\N	42
732	food	employee	25	135	238	{show,magazine}	choose	661	102	\N	\N	\N	5
711	defense	among	115	101	702	{goal,team}	certain	620	635	\N	\N	\N	56
749	man	window	41	923	466	{support}	campaign	301	626	\N	\N	\N	53
712	stock	officer	653	713	705	{democratic,design}	amount	94	626	\N	\N	\N	56
710	interest	major	663	273	743	{quite}	collection	580	412	\N	\N	\N	80
793	develop	trial	679	415	894	{image}	student	65	131	\N	\N	\N	97
752	charge	push	93	551	482	{specific,bad}	participant	871	335	\N	\N	\N	81
750	although	send	41	356	788	{such}	Democrat	70	75	\N	\N	\N	57
\.


--
-- Data for Name: relation_8; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_8 (smartwatch_id, band_size, bundled_phone_smart_watch_phone_id) FROM stdin;
801	character	\N
802	include	\N
803	wait	\N
804	unit	\N
805	member	\N
808	far	\N
809	success	\N
812	you	\N
813	out	\N
815	million	\N
819	against	\N
820	size	\N
823	meeting	\N
825	building	\N
834	detail	\N
835	ball	\N
836	know	\N
837	hour	\N
838	who	\N
839	toward	\N
840	treat	\N
841	myself	\N
843	score	\N
844	station	\N
845	board	\N
848	tonight	\N
851	they	\N
852	particularly	\N
857	cup	\N
858	be	\N
859	our	\N
860	young	\N
861	suggest	\N
862	decade	\N
867	approach	\N
868	prepare	\N
871	information	\N
874	field	\N
875	art	\N
876	place	\N
878	knowledge	\N
879	operation	\N
882	customer	\N
883	just	\N
885	very	\N
886	strong	\N
889	close	\N
890	away	\N
893	seat	\N
894	season	\N
896	reason	\N
898	skill	\N
806	store	1063
807	power	1018
810	sure	1001
811	government	1034
814	hope	1060
816	tend	1090
817	sell	1019
818	nor	1022
821	issue	1081
822	enough	1052
824	program	1026
826	type	1071
827	first	1032
828	occur	1082
829	before	1018
830	owner	1045
831	tax	1044
832	party	1091
833	left	1037
842	trial	1064
846	single	1036
847	body	1091
849	create	1063
850	Mrs	1066
853	resource	1009
854	everyone	1078
855	particularly	1081
856	wait	1098
863	bank	1018
864	kitchen	1041
865	tax	1043
866	already	1038
869	computer	1050
870	national	1014
872	somebody	1056
873	language	1037
877	thank	1064
880	individual	1046
881	compare	1093
884	he	1078
887	best	1034
888	local	1100
891	industry	1071
892	fill	1011
895	fast	1066
897	deep	1075
899	discussion	1070
900	from	1044
\.


--
-- Data for Name: relation_9; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_9 (camera_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, sensor_mp, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
901	TV	law	657	682	798	{of}	system	522	514	\N	\N	\N	\N
902	young	film	907	764	962	{only}	read	375	893	\N	\N	\N	\N
903	yet	exist	727	458	97	{many,smile}	head	832	689	\N	\N	\N	\N
905	quality	concern	842	217	337	{itself}	bill	572	229	\N	\N	\N	\N
907	science	peace	495	368	657	{far}	occur	419	686	\N	\N	\N	\N
909	involve	heavy	55	541	303	{dream,test}	grow	204	214	\N	\N	\N	\N
912	ever	whether	144	438	784	{suddenly,experience}	effort	93	529	\N	\N	\N	\N
914	standard	drop	437	415	146	{environmental}	see	683	451	\N	\N	\N	\N
915	change	inside	843	531	683	{down}	enter	166	221	\N	\N	\N	\N
917	author	kitchen	258	581	773	{foreign}	sound	32	227	\N	\N	\N	\N
918	little	such	264	946	494	{should}	list	351	18	\N	\N	\N	\N
919	second	single	932	961	858	{responsibility}	mouth	715	206	\N	\N	\N	\N
920	sound	ten	266	659	931	{natural}	say	75	437	\N	\N	\N	\N
921	lose	argue	705	378	705	{build,stand}	opportunity	771	833	\N	\N	\N	\N
922	water	model	785	195	109	{country}	film	956	402	\N	\N	\N	\N
923	way	such	348	587	338	{mother,tell}	plan	352	603	\N	\N	\N	\N
927	remain	voice	903	355	792	{show,what}	agreement	735	30	\N	\N	\N	\N
928	somebody	kitchen	109	609	544	{lay}	method	176	638	\N	\N	\N	\N
930	note	current	434	409	637	{serve}	pick	70	407	\N	\N	\N	\N
931	others	part	157	749	602	{practice}	town	863	935	\N	\N	\N	\N
933	this	hundred	420	940	803	{and}	floor	923	732	\N	\N	\N	\N
934	herself	end	676	505	221	{few,east}	summer	992	571	\N	\N	\N	\N
935	bad	trip	798	38	882	{enter,education}	subject	301	807	\N	\N	\N	\N
936	vote	phone	143	258	843	{page,up}	base	488	137	\N	\N	\N	\N
937	sign	enter	447	342	534	{trial,feeling}	memory	216	285	\N	\N	\N	\N
938	remember	figure	41	319	515	{almost,training}	determine	510	307	\N	\N	\N	\N
939	only	again	271	164	297	{effect,far}	whether	819	918	\N	\N	\N	\N
940	senior	next	343	998	153	{reality,citizen}	organization	397	903	\N	\N	\N	\N
941	degree	television	690	453	964	{serious,away}	type	739	173	\N	\N	\N	\N
942	top	clear	917	908	393	{skin}	spend	95	597	\N	\N	\N	\N
943	hand	machine	211	995	953	{consider,dinner}	because	53	536	\N	\N	\N	\N
945	set	out	979	633	642	{its,civil}	security	133	944	\N	\N	\N	\N
948	do	arrive	20	669	455	{treatment}	have	173	914	\N	\N	\N	\N
949	responsibility	thought	828	902	764	{music,life}	discover	824	687	\N	\N	\N	\N
950	finally	line	632	850	215	{on,second}	suddenly	297	645	\N	\N	\N	\N
951	good	training	169	45	40	{space,up}	person	400	892	\N	\N	\N	\N
952	expect	you	978	555	701	{standard}	size	390	295	\N	\N	\N	\N
953	year	hand	447	932	52	{thus}	window	342	430	\N	\N	\N	\N
954	people	final	602	590	499	{never}	scientist	594	524	\N	\N	\N	\N
955	time	public	691	92	345	{care,sure}	watch	887	671	\N	\N	\N	\N
958	large	color	430	695	405	{society}	lot	262	797	\N	\N	\N	\N
959	what	interesting	2	289	34	{benefit,various}	sort	800	88	\N	\N	\N	\N
960	soon	run	185	634	259	{major,him}	challenge	711	446	\N	\N	\N	\N
963	wife	report	690	409	565	{yard}	forget	581	516	\N	\N	\N	\N
965	imagine	sometimes	263	166	613	{west}	against	75	180	\N	\N	\N	\N
966	or	employee	800	719	697	{cold,institution}	town	544	581	\N	\N	\N	\N
967	oil	four	740	24	226	{will,what}	response	699	19	\N	\N	\N	\N
925	direction	few	283	792	362	{task}	summer	952	824	\N	[{"barcode": "everybody", "variant_id": "796", "price_override": "177", "is_active_variant": "606"}]	\N	\N
910	enter	feel	235	857	754	{alone}	evidence	386	356	\N	\N	[{"price": "259", "ends_at": "policy", "price_id": "371", "starts_at": "call"}]	\N
904	law	talk	160	282	117	{month,apply}	education	259	778	\N	\N	[{"price": "82", "ends_at": "source", "price_id": "185", "starts_at": "away"}]	\N
932	oil	especially	486	687	956	{commercial,into}	likely	506	102	\N	\N	\N	98
946	property	exactly	11	353	248	{consider,treat}	administration	532	445	\N	\N	\N	50
929	husband	whether	773	231	792	{collection,garden}	power	869	301	\N	\N	\N	57
944	movie	simple	764	313	42	{fill,evidence}	table	815	112	\N	\N	\N	16
957	itself	whom	855	973	497	{billion}	since	822	655	\N	\N	\N	46
969	soon	score	818	989	792	{amount}	travel	55	758	\N	\N	\N	\N
970	car	offer	940	799	406	{specific,include}	nor	196	163	\N	\N	\N	\N
971	air	million	228	94	627	{chair,along}	like	553	558	\N	\N	\N	\N
973	audience	important	611	262	841	{ground,peace}	public	254	688	\N	\N	\N	\N
974	big	what	300	635	264	{side}	audience	730	648	\N	\N	\N	\N
977	defense	table	23	108	224	{particular,need}	could	173	756	\N	\N	\N	\N
979	enough	western	398	269	264	{attorney}	cup	651	268	\N	\N	\N	\N
981	vote	gun	737	509	962	{include,number}	that	309	974	\N	\N	\N	\N
983	history	serious	294	937	287	{organization,player}	moment	495	633	\N	\N	\N	\N
986	together	fight	214	465	885	{subject,fund}	long	42	276	\N	\N	\N	\N
987	such	event	346	864	5	{house,PM}	cold	804	442	\N	\N	\N	\N
989	black	foreign	376	956	624	{oil,he}	and	779	199	\N	\N	\N	\N
990	unit	rich	760	443	883	{open,bring}	assume	297	911	\N	\N	\N	\N
991	certainly	work	99	83	980	{home}	interest	723	346	\N	\N	\N	\N
992	phone	baby	936	375	583	{officer,realize}	coach	723	392	\N	\N	\N	\N
997	star	future	830	789	888	{three}	finally	388	646	\N	\N	\N	\N
998	vote	election	966	496	577	{full}	apply	39	516	\N	\N	\N	\N
999	crime	camera	204	697	256	{budget}	foot	123	281	\N	\N	\N	\N
947	team	base	961	730	247	{benefit}	explain	34	343	[{"url": "PM", "alt_text": "start", "image_id": "88", "sort_order": "522"}]	\N	\N	37
964	this	someone	305	3	745	{politics,green}	rise	349	100	[{"url": "picture", "alt_text": "court", "image_id": "405", "sort_order": "997"}]	\N	\N	\N
924	to	structure	809	708	264	{same,western}	apply	773	630	[{"url": "relationship", "alt_text": "let", "image_id": "227", "sort_order": "762"}]	\N	\N	\N
976	newspaper	court	225	792	881	{above}	carry	550	678	[{"url": "the", "alt_text": "best", "image_id": "133", "sort_order": "348"}]	\N	\N	\N
1000	send	up	996	967	571	{child}	Republican	6	381	\N	[{"barcode": "family", "variant_id": "364", "price_override": "352", "is_active_variant": "554"}]	\N	\N
911	her	able	263	893	2	{door,look}	set	791	519	\N	[{"barcode": "own", "variant_id": "844", "price_override": "598", "is_active_variant": "101"}]	\N	\N
968	official	may	688	5	541	{side,character}	spend	783	632	\N	[{"barcode": "manage", "variant_id": "629", "price_override": "769", "is_active_variant": "170"}]	\N	\N
961	interest	power	313	103	305	{manager}	off	489	180	\N	[{"barcode": "raise", "variant_id": "290", "price_override": "737", "is_active_variant": "298"}]	\N	\N
913	project	establish	819	853	283	{throw}	popular	225	112	\N	[{"barcode": "community", "variant_id": "457", "price_override": "148", "is_active_variant": "518"}]	\N	\N
985	production	card	63	74	267	{wind}	reason	794	506	\N	\N	[{"price": "195", "ends_at": "design", "price_id": "444", "starts_at": "itself"}]	\N
980	dream	choose	385	43	787	{explain}	health	885	158	\N	\N	[{"price": "86", "ends_at": "sister", "price_id": "55", "starts_at": "commercial"}]	\N
996	admit	audience	99	710	356	{ready,may}	change	518	451	\N	\N	[{"price": "59", "ends_at": "order", "price_id": "376", "starts_at": "pressure"}]	\N
988	too	change	836	893	930	{a,matter}	social	434	773	\N	\N	\N	64
994	whole	read	623	206	116	{marriage}	enjoy	880	705	\N	\N	\N	97
995	cause	news	490	393	178	{age}	public	226	635	\N	\N	[{"price": "162", "ends_at": "others", "price_id": "462", "starts_at": "project"}]	48
984	student	adult	157	804	595	{project,whole}	it	145	400	\N	\N	\N	91
926	main	company	946	865	448	{wife}	international	628	484	\N	[{"barcode": "sort", "variant_id": "408", "price_override": "931", "is_active_variant": "118"}]	\N	93
916	step	address	280	375	858	{quickly,ever}	oil	356	765	\N	[{"barcode": "expect", "variant_id": "946", "price_override": "678", "is_active_variant": "180"}]	\N	76
972	task	treatment	343	873	682	{whom,capital}	produce	197	520	\N	\N	\N	72
978	only	heart	330	225	167	{pattern}	decide	624	225	[{"url": "top", "alt_text": "especially", "image_id": "827", "sort_order": "212"}, {"url": "sister", "alt_text": "source", "image_id": "831", "sort_order": "676"}]	\N	[{"price": "7", "ends_at": "add", "price_id": "560", "starts_at": "wrong"}]	\N
982	floor	thing	872	376	416	{health,nice}	fear	633	203	\N	\N	\N	63
908	computer	bank	352	438	922	{experience,rich}	born	115	257	\N	\N	\N	28
906	box	land	963	630	8	{fire}	though	725	861	\N	[{"barcode": "cup", "variant_id": "190", "price_override": "910", "is_active_variant": "582"}]	\N	63
962	ahead	believe	837	261	562	{standard}	hour	130	44	\N	\N	\N	69
993	here	stuff	127	860	895	{find,full}	go	54	445	\N	\N	\N	1
975	institution	control	273	371	593	{property,speak}	glass	513	657	\N	\N	[{"price": "964", "ends_at": "back", "price_id": "465", "starts_at": "why"}]	49
956	stock	check	184	800	967	{eye}	medical	530	971	\N	\N	\N	37
\.


--
-- Data for Name: temp_browsingsession; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_browsingsession (user_id, email, password_hash, mv_user, loyalty_tier, contact_no, role, employee_no, shift, browsingsession) FROM stdin;
7	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "travel", "session_id": "445", "started_at": "young"}]
740	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "chance", "session_id": "702", "started_at": "woman"}]
183	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "cultural", "session_id": "47", "started_at": "new"}]
699	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "home", "session_id": "641", "started_at": "order"}]
116	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "rock", "session_id": "643", "started_at": "million"}]
238	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "capital", "session_id": "748", "started_at": "state"}]
113	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "marriage", "session_id": "858", "started_at": "yeah"}]
309	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "space", "session_id": "102", "started_at": "way"}]
946	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "I", "session_id": "38", "started_at": "state"}]
461	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "short", "session_id": "322", "started_at": "personal"}]
967	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "street", "session_id": "224", "started_at": "foot"}]
619	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "see", "session_id": "747", "started_at": "energy"}]
518	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "night", "session_id": "578", "started_at": "join"}]
586	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "material", "session_id": "63", "started_at": "wear"}]
66	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "talk", "session_id": "685", "started_at": "how"}]
995	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "religious", "session_id": "975", "started_at": "executive"}]
648	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "doctor", "session_id": "671", "started_at": "color"}]
318	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "north", "session_id": "72", "started_at": "camera"}]
415	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "education", "session_id": "630", "started_at": "wide"}]
803	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "blood", "session_id": "783", "started_at": "simply"}]
208	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "why", "session_id": "813", "started_at": "home"}]
77	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "quite", "session_id": "899", "started_at": "author"}]
909	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "organization", "session_id": "377", "started_at": "these"}]
772	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "girl", "session_id": "361", "started_at": "able"}]
898	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "particular", "session_id": "778", "started_at": "newspaper"}]
467	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "window", "session_id": "40", "started_at": "room"}]
329	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "hit", "session_id": "443", "started_at": "choice"}]
382	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "perform", "session_id": "748", "started_at": "fill"}, {"device": "recognize", "session_id": "657", "started_at": "water"}]
315	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "build", "session_id": "281", "started_at": "watch"}]
993	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "true", "session_id": "979", "started_at": "reflect"}]
921	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "just", "session_id": "421", "started_at": "this"}, {"device": "continue", "session_id": "316", "started_at": "language"}]
357	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "song", "session_id": "1", "started_at": "here"}]
102	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "claim", "session_id": "577", "started_at": "some"}]
21	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "believe", "session_id": "430", "started_at": "move"}]
537	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "brother", "session_id": "314", "started_at": "front"}]
977	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "many", "session_id": "863", "started_at": "challenge"}]
637	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "relationship", "session_id": "447", "started_at": "into"}]
361	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "interest", "session_id": "792", "started_at": "trip"}]
754	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "western", "session_id": "709", "started_at": "game"}]
169	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "avoid", "session_id": "717", "started_at": "social"}]
837	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "somebody", "session_id": "128", "started_at": "unit"}]
346	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "while", "session_id": "49", "started_at": "either"}]
246	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "huge", "session_id": "457", "started_at": "research"}]
266	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "outside", "session_id": "713", "started_at": "really"}]
730	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "voice", "session_id": "848", "started_at": "institution"}]
774	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "meet", "session_id": "872", "started_at": "mean"}]
492	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "or", "session_id": "268", "started_at": "over"}]
197	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "form", "session_id": "636", "started_at": "could"}]
910	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "western", "session_id": "571", "started_at": "century"}]
384	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "politics", "session_id": "489", "started_at": "exist"}]
148	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "focus", "session_id": "931", "started_at": "finally"}]
375	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "away", "session_id": "1", "started_at": "wrong"}]
753	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "value", "session_id": "264", "started_at": "occur"}]
314	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "increase", "session_id": "62", "started_at": "across"}]
784	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "forward", "session_id": "748", "started_at": "south"}]
385	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "ready", "session_id": "541", "started_at": "structure"}]
222	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "between", "session_id": "366", "started_at": "between"}]
413	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "close", "session_id": "672", "started_at": "white"}]
751	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "chance", "session_id": "65", "started_at": "early"}]
815	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "four", "session_id": "640", "started_at": "along"}, {"device": "student", "session_id": "294", "started_at": "wear"}]
801	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "example", "session_id": "607", "started_at": "thought"}]
836	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "language", "session_id": "7", "started_at": "PM"}]
458	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "that", "session_id": "367", "started_at": "fear"}]
734	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "article", "session_id": "152", "started_at": "society"}]
724	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "laugh", "session_id": "28", "started_at": "program"}]
729	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "Democrat", "session_id": "889", "started_at": "account"}]
362	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "son", "session_id": "437", "started_at": "remain"}]
690	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "end", "session_id": "792", "started_at": "clearly"}]
579	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "suddenly", "session_id": "10", "started_at": "sound"}]
11	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "because", "session_id": "421", "started_at": "walk"}]
718	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "back", "session_id": "82", "started_at": "north"}]
294	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "trouble", "session_id": "12", "started_at": "instead"}]
390	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "professor", "session_id": "843", "started_at": "painting"}]
424	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "long", "session_id": "838", "started_at": "school"}]
636	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "executive", "session_id": "528", "started_at": "game"}]
695	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "seat", "session_id": "301", "started_at": "term"}]
2	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "financial", "session_id": "169", "started_at": "table"}]
929	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "program", "session_id": "254", "started_at": "million"}]
202	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "practice", "session_id": "463", "started_at": "interest"}]
215	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "sea", "session_id": "649", "started_at": "walk"}, {"device": "surface", "session_id": "571", "started_at": "charge"}]
465	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "executive", "session_id": "840", "started_at": "tough"}]
398	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "anything", "session_id": "789", "started_at": "work"}]
132	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "perhaps", "session_id": "516", "started_at": "television"}]
899	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "leave", "session_id": "157", "started_at": "instead"}]
808	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "me", "session_id": "893", "started_at": "by"}]
240	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "television", "session_id": "87", "started_at": "sit"}]
114	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "marriage", "session_id": "66", "started_at": "sell"}]
613	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "begin", "session_id": "103", "started_at": "how"}]
447	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "family", "session_id": "326", "started_at": "care"}]
701	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "foreign", "session_id": "1000", "started_at": "phone"}]
265	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "year", "session_id": "35", "started_at": "college"}]
822	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "air", "session_id": "905", "started_at": "again"}]
408	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "fund", "session_id": "444", "started_at": "team"}]
466	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "there", "session_id": "11", "started_at": "early"}]
358	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "director", "session_id": "557", "started_at": "a"}]
761	\N	\N	\N	\N	\N	\N	\N	\N	[{"device": "network", "session_id": "891", "started_at": "administration"}]
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

COPY public.temp_category_products (product_id, sku, product_name, base_price, is_active, quantity, mv_attributes, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1430	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
1395	\N	\N	\N	\N	\N	\N	[]	[]	[]	58
1340	\N	\N	\N	\N	\N	\N	[]	[]	[]	39
605	\N	\N	\N	\N	\N	\N	[]	[]	[]	55
1926	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
1509	\N	\N	\N	\N	\N	\N	[]	[]	[]	73
1482	\N	\N	\N	\N	\N	\N	[]	[]	[]	54
932	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
1801	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
946	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
788	\N	\N	\N	\N	\N	\N	[]	[]	[]	23
2054	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
1677	\N	\N	\N	\N	\N	\N	[]	[]	[]	69
146	\N	\N	\N	\N	\N	\N	[]	[]	[]	79
87	\N	\N	\N	\N	\N	\N	[]	[]	[]	49
811	\N	\N	\N	\N	\N	\N	[]	[]	[]	25
349	\N	\N	\N	\N	\N	\N	[]	[]	[]	25
1510	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
1838	\N	\N	\N	\N	\N	\N	[]	[]	[]	83
111	\N	\N	\N	\N	\N	\N	[]	[]	[]	60
1498	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
209	\N	\N	\N	\N	\N	\N	[]	[]	[]	87
1750	\N	\N	\N	\N	\N	\N	[]	[]	[]	68
487	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
272	\N	\N	\N	\N	\N	\N	[]	[]	[]	42
432	\N	\N	\N	\N	\N	\N	[]	[]	[]	30
292	\N	\N	\N	\N	\N	\N	[]	[]	[]	94
870	\N	\N	\N	\N	\N	\N	[]	[]	[]	92
1537	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
1147	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
1110	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
1504	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
180	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
1002	\N	\N	\N	\N	\N	\N	[]	[]	[]	14
1106	\N	\N	\N	\N	\N	\N	[]	[]	[]	16
1149	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
1883	\N	\N	\N	\N	\N	\N	[]	[]	[]	3
154	\N	\N	\N	\N	\N	\N	[]	[]	[]	27
760	\N	\N	\N	\N	\N	\N	[]	[]	[]	79
385	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1038	\N	\N	\N	\N	\N	\N	[]	[]	[]	72
297	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
1434	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
1613	\N	\N	\N	\N	\N	\N	[]	[]	[]	33
1117	\N	\N	\N	\N	\N	\N	[]	[]	[]	11
1751	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
283	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
643	\N	\N	\N	\N	\N	\N	[]	[]	[]	13
1475	\N	\N	\N	\N	\N	\N	[]	[]	[]	66
947	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
2080	\N	\N	\N	\N	\N	\N	[]	[]	[]	58
1753	\N	\N	\N	\N	\N	\N	[]	[]	[]	85
1804	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
15	\N	\N	\N	\N	\N	\N	[]	[]	[]	33
78	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
1668	\N	\N	\N	\N	\N	\N	[]	[]	[]	68
449	\N	\N	\N	\N	\N	\N	[]	[]	[]	60
1105	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
1492	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
2056	\N	\N	\N	\N	\N	\N	[]	[]	[]	42
375	\N	\N	\N	\N	\N	\N	[]	[]	[]	30
896	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
424	\N	\N	\N	\N	\N	\N	[]	[]	[]	85
512	\N	\N	\N	\N	\N	\N	[]	[]	[]	3
1347	\N	\N	\N	\N	\N	\N	[]	[]	[]	33
447	\N	\N	\N	\N	\N	\N	[]	[]	[]	82
1066	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
1752	\N	\N	\N	\N	\N	\N	[]	[]	[]	16
2084	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
1217	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
1735	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
232	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
2095	\N	\N	\N	\N	\N	\N	[]	[]	[]	42
832	\N	\N	\N	\N	\N	\N	[]	[]	[]	39
408	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
24	\N	\N	\N	\N	\N	\N	[]	[]	[]	5
47	\N	\N	\N	\N	\N	\N	[]	[]	[]	35
1231	\N	\N	\N	\N	\N	\N	[]	[]	[]	70
548	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
1439	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1488	\N	\N	\N	\N	\N	\N	[]	[]	[]	23
1293	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
1010	\N	\N	\N	\N	\N	\N	[]	[]	[]	11
348	\N	\N	\N	\N	\N	\N	[]	[]	[]	43
822	\N	\N	\N	\N	\N	\N	[]	[]	[]	34
1045	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
371	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
1795	\N	\N	\N	\N	\N	\N	[]	[]	[]	39
1718	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
799	\N	\N	\N	\N	\N	\N	[]	[]	[]	30
742	\N	\N	\N	\N	\N	\N	[]	[]	[]	66
1416	\N	\N	\N	\N	\N	\N	[]	[]	[]	14
145	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
115	\N	\N	\N	\N	\N	\N	[]	[]	[]	58
757	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
600	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
1212	\N	\N	\N	\N	\N	\N	[]	[]	[]	48
389	\N	\N	\N	\N	\N	\N	[]	[]	[]	43
436	\N	\N	\N	\N	\N	\N	[]	[]	[]	35
754	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
523	\N	\N	\N	\N	\N	\N	[]	[]	[]	28
1545	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
1714	\N	\N	\N	\N	\N	\N	[]	[]	[]	83
583	\N	\N	\N	\N	\N	\N	[]	[]	[]	46
670	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
1335	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1666	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
382	\N	\N	\N	\N	\N	\N	[]	[]	[]	70
1113	\N	\N	\N	\N	\N	\N	[]	[]	[]	85
789	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
1281	\N	\N	\N	\N	\N	\N	[]	[]	[]	61
1903	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
2012	\N	\N	\N	\N	\N	\N	[]	[]	[]	16
613	\N	\N	\N	\N	\N	\N	[]	[]	[]	43
1131	\N	\N	\N	\N	\N	\N	[]	[]	[]	78
1374	\N	\N	\N	\N	\N	\N	[]	[]	[]	58
161	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
1450	\N	\N	\N	\N	\N	\N	[]	[]	[]	91
2068	\N	\N	\N	\N	\N	\N	[]	[]	[]	96
690	\N	\N	\N	\N	\N	\N	[]	[]	[]	81
1151	\N	\N	\N	\N	\N	\N	[]	[]	[]	68
772	\N	\N	\N	\N	\N	\N	[]	[]	[]	14
1491	\N	\N	\N	\N	\N	\N	[]	[]	[]	34
7	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
1184	\N	\N	\N	\N	\N	\N	[]	[]	[]	28
1936	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
39	\N	\N	\N	\N	\N	\N	[]	[]	[]	88
1845	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
665	\N	\N	\N	\N	\N	\N	[]	[]	[]	88
1268	\N	\N	\N	\N	\N	\N	[]	[]	[]	96
929	\N	\N	\N	\N	\N	\N	[]	[]	[]	57
1635	\N	\N	\N	\N	\N	\N	[]	[]	[]	70
1710	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
566	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
1653	\N	\N	\N	\N	\N	\N	[]	[]	[]	17
340	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
498	\N	\N	\N	\N	\N	\N	[]	[]	[]	93
1473	\N	\N	\N	\N	\N	\N	[]	[]	[]	72
1249	\N	\N	\N	\N	\N	\N	[]	[]	[]	87
51	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
392	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
851	\N	\N	\N	\N	\N	\N	[]	[]	[]	79
1072	\N	\N	\N	\N	\N	\N	[]	[]	[]	9
61	\N	\N	\N	\N	\N	\N	[]	[]	[]	82
847	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
1645	\N	\N	\N	\N	\N	\N	[]	[]	[]	63
409	\N	\N	\N	\N	\N	\N	[]	[]	[]	94
843	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
1139	\N	\N	\N	\N	\N	\N	[]	[]	[]	46
1617	\N	\N	\N	\N	\N	\N	[]	[]	[]	54
1221	\N	\N	\N	\N	\N	\N	[]	[]	[]	3
1621	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
729	\N	\N	\N	\N	\N	\N	[]	[]	[]	22
1455	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
188	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
1042	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
1182	\N	\N	\N	\N	\N	\N	[]	[]	[]	76
1906	\N	\N	\N	\N	\N	\N	[]	[]	[]	11
429	\N	\N	\N	\N	\N	\N	[]	[]	[]	27
876	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
1424	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
320	\N	\N	\N	\N	\N	\N	[]	[]	[]	2
2016	\N	\N	\N	\N	\N	\N	[]	[]	[]	61
2083	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
378	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
197	\N	\N	\N	\N	\N	\N	[]	[]	[]	76
2029	\N	\N	\N	\N	\N	\N	[]	[]	[]	17
1349	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
214	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
310	\N	\N	\N	\N	\N	\N	[]	[]	[]	68
1765	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
988	\N	\N	\N	\N	\N	\N	[]	[]	[]	64
1827	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
457	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
170	\N	\N	\N	\N	\N	\N	[]	[]	[]	34
833	\N	\N	\N	\N	\N	\N	[]	[]	[]	67
1919	\N	\N	\N	\N	\N	\N	[]	[]	[]	84
1067	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
550	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
1611	\N	\N	\N	\N	\N	\N	[]	[]	[]	29
648	\N	\N	\N	\N	\N	\N	[]	[]	[]	22
2046	\N	\N	\N	\N	\N	\N	[]	[]	[]	47
1794	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
663	\N	\N	\N	\N	\N	\N	[]	[]	[]	55
1052	\N	\N	\N	\N	\N	\N	[]	[]	[]	35
2017	\N	\N	\N	\N	\N	\N	[]	[]	[]	47
367	\N	\N	\N	\N	\N	\N	[]	[]	[]	13
2059	\N	\N	\N	\N	\N	\N	[]	[]	[]	90
287	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
1393	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
33	\N	\N	\N	\N	\N	\N	[]	[]	[]	23
1843	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
1269	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
439	\N	\N	\N	\N	\N	\N	[]	[]	[]	11
532	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
1524	\N	\N	\N	\N	\N	\N	[]	[]	[]	29
1973	\N	\N	\N	\N	\N	\N	[]	[]	[]	30
36	\N	\N	\N	\N	\N	\N	[]	[]	[]	84
1577	\N	\N	\N	\N	\N	\N	[]	[]	[]	83
898	\N	\N	\N	\N	\N	\N	[]	[]	[]	96
1362	\N	\N	\N	\N	\N	\N	[]	[]	[]	5
1575	\N	\N	\N	\N	\N	\N	[]	[]	[]	28
1773	\N	\N	\N	\N	\N	\N	[]	[]	[]	36
2065	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
2026	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
994	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
1980	\N	\N	\N	\N	\N	\N	[]	[]	[]	80
1177	\N	\N	\N	\N	\N	\N	[]	[]	[]	25
1120	\N	\N	\N	\N	\N	\N	[]	[]	[]	85
93	\N	\N	\N	\N	\N	\N	[]	[]	[]	87
107	\N	\N	\N	\N	\N	\N	[]	[]	[]	5
251	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
1493	\N	\N	\N	\N	\N	\N	[]	[]	[]	25
1481	\N	\N	\N	\N	\N	\N	[]	[]	[]	78
143	\N	\N	\N	\N	\N	\N	[]	[]	[]	92
1914	\N	\N	\N	\N	\N	\N	[]	[]	[]	14
826	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
1849	\N	\N	\N	\N	\N	\N	[]	[]	[]	99
1822	\N	\N	\N	\N	\N	\N	[]	[]	[]	3
1810	\N	\N	\N	\N	\N	\N	[]	[]	[]	66
1294	\N	\N	\N	\N	\N	\N	[]	[]	[]	69
627	\N	\N	\N	\N	\N	\N	[]	[]	[]	90
1834	\N	\N	\N	\N	\N	\N	[]	[]	[]	35
1289	\N	\N	\N	\N	\N	\N	[]	[]	[]	2
1523	\N	\N	\N	\N	\N	\N	[]	[]	[]	11
454	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
1559	\N	\N	\N	\N	\N	\N	[]	[]	[]	5
412	\N	\N	\N	\N	\N	\N	[]	[]	[]	66
255	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1299	\N	\N	\N	\N	\N	\N	[]	[]	[]	15
52	\N	\N	\N	\N	\N	\N	[]	[]	[]	82
450	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
167	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
595	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
666	\N	\N	\N	\N	\N	\N	[]	[]	[]	75
761	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
1413	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
995	\N	\N	\N	\N	\N	\N	[]	[]	[]	48
334	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
68	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
147	\N	\N	\N	\N	\N	\N	[]	[]	[]	60
41	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
628	\N	\N	\N	\N	\N	\N	[]	[]	[]	93
672	\N	\N	\N	\N	\N	\N	[]	[]	[]	84
435	\N	\N	\N	\N	\N	\N	[]	[]	[]	33
1998	\N	\N	\N	\N	\N	\N	[]	[]	[]	66
794	\N	\N	\N	\N	\N	\N	[]	[]	[]	19
1734	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
499	\N	\N	\N	\N	\N	\N	[]	[]	[]	72
1327	\N	\N	\N	\N	\N	\N	[]	[]	[]	21
518	\N	\N	\N	\N	\N	\N	[]	[]	[]	16
780	\N	\N	\N	\N	\N	\N	[]	[]	[]	55
802	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
842	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
839	\N	\N	\N	\N	\N	\N	[]	[]	[]	90
734	\N	\N	\N	\N	\N	\N	[]	[]	[]	9
1896	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
506	\N	\N	\N	\N	\N	\N	[]	[]	[]	91
1144	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
23	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
1454	\N	\N	\N	\N	\N	\N	[]	[]	[]	54
1516	\N	\N	\N	\N	\N	\N	[]	[]	[]	89
549	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
878	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
593	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
1934	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
1777	\N	\N	\N	\N	\N	\N	[]	[]	[]	57
489	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
741	\N	\N	\N	\N	\N	\N	[]	[]	[]	42
127	\N	\N	\N	\N	\N	\N	[]	[]	[]	24
187	\N	\N	\N	\N	\N	\N	[]	[]	[]	73
434	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
887	\N	\N	\N	\N	\N	\N	[]	[]	[]	76
156	\N	\N	\N	\N	\N	\N	[]	[]	[]	43
1967	\N	\N	\N	\N	\N	\N	[]	[]	[]	49
339	\N	\N	\N	\N	\N	\N	[]	[]	[]	35
497	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
827	\N	\N	\N	\N	\N	\N	[]	[]	[]	77
1529	\N	\N	\N	\N	\N	\N	[]	[]	[]	20
70	\N	\N	\N	\N	\N	\N	[]	[]	[]	70
606	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
645	\N	\N	\N	\N	\N	\N	[]	[]	[]	32
1588	\N	\N	\N	\N	\N	\N	[]	[]	[]	20
1167	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
984	\N	\N	\N	\N	\N	\N	[]	[]	[]	91
1025	\N	\N	\N	\N	\N	\N	[]	[]	[]	96
5	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
841	\N	\N	\N	\N	\N	\N	[]	[]	[]	75
148	\N	\N	\N	\N	\N	\N	[]	[]	[]	92
1366	\N	\N	\N	\N	\N	\N	[]	[]	[]	27
559	\N	\N	\N	\N	\N	\N	[]	[]	[]	32
668	\N	\N	\N	\N	\N	\N	[]	[]	[]	49
1266	\N	\N	\N	\N	\N	\N	[]	[]	[]	89
2067	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
2031	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
680	\N	\N	\N	\N	\N	\N	[]	[]	[]	89
250	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
219	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
213	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
1788	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
234	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
538	\N	\N	\N	\N	\N	\N	[]	[]	[]	88
267	\N	\N	\N	\N	\N	\N	[]	[]	[]	73
1511	\N	\N	\N	\N	\N	\N	[]	[]	[]	28
2062	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
1476	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
1925	\N	\N	\N	\N	\N	\N	[]	[]	[]	34
1478	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
1309	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
2002	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
2036	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
534	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
1622	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
502	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1723	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
926	\N	\N	\N	\N	\N	\N	[]	[]	[]	93
26	\N	\N	\N	\N	\N	\N	[]	[]	[]	24
1584	\N	\N	\N	\N	\N	\N	[]	[]	[]	67
916	\N	\N	\N	\N	\N	\N	[]	[]	[]	76
1026	\N	\N	\N	\N	\N	\N	[]	[]	[]	72
732	\N	\N	\N	\N	\N	\N	[]	[]	[]	5
1451	\N	\N	\N	\N	\N	\N	[]	[]	[]	68
1162	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
611	\N	\N	\N	\N	\N	\N	[]	[]	[]	84
405	\N	\N	\N	\N	\N	\N	[]	[]	[]	32
1601	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
1098	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
1089	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
711	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
1241	\N	\N	\N	\N	\N	\N	[]	[]	[]	42
1634	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
345	\N	\N	\N	\N	\N	\N	[]	[]	[]	89
688	\N	\N	\N	\N	\N	\N	[]	[]	[]	83
1616	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
972	\N	\N	\N	\N	\N	\N	[]	[]	[]	72
1300	\N	\N	\N	\N	\N	\N	[]	[]	[]	83
1749	\N	\N	\N	\N	\N	\N	[]	[]	[]	79
2005	\N	\N	\N	\N	\N	\N	[]	[]	[]	57
289	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
397	\N	\N	\N	\N	\N	\N	[]	[]	[]	93
402	\N	\N	\N	\N	\N	\N	[]	[]	[]	43
441	\N	\N	\N	\N	\N	\N	[]	[]	[]	21
608	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
1820	\N	\N	\N	\N	\N	\N	[]	[]	[]	29
603	\N	\N	\N	\N	\N	\N	[]	[]	[]	64
220	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
1997	\N	\N	\N	\N	\N	\N	[]	[]	[]	51
579	\N	\N	\N	\N	\N	\N	[]	[]	[]	6
490	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
179	\N	\N	\N	\N	\N	\N	[]	[]	[]	71
85	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
351	\N	\N	\N	\N	\N	\N	[]	[]	[]	2
1593	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
1024	\N	\N	\N	\N	\N	\N	[]	[]	[]	19
1785	\N	\N	\N	\N	\N	\N	[]	[]	[]	93
2077	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
2072	\N	\N	\N	\N	\N	\N	[]	[]	[]	81
2088	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1429	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
849	\N	\N	\N	\N	\N	\N	[]	[]	[]	55
982	\N	\N	\N	\N	\N	\N	[]	[]	[]	63
1522	\N	\N	\N	\N	\N	\N	[]	[]	[]	80
76	\N	\N	\N	\N	\N	\N	[]	[]	[]	89
1277	\N	\N	\N	\N	\N	\N	[]	[]	[]	19
646	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
1766	\N	\N	\N	\N	\N	\N	[]	[]	[]	92
944	\N	\N	\N	\N	\N	\N	[]	[]	[]	16
1250	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
1030	\N	\N	\N	\N	\N	\N	[]	[]	[]	82
1487	\N	\N	\N	\N	\N	\N	[]	[]	[]	64
1323	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
263	\N	\N	\N	\N	\N	\N	[]	[]	[]	98
1214	\N	\N	\N	\N	\N	\N	[]	[]	[]	9
1758	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
957	\N	\N	\N	\N	\N	\N	[]	[]	[]	46
381	\N	\N	\N	\N	\N	\N	[]	[]	[]	27
29	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
908	\N	\N	\N	\N	\N	\N	[]	[]	[]	28
561	\N	\N	\N	\N	\N	\N	[]	[]	[]	80
280	\N	\N	\N	\N	\N	\N	[]	[]	[]	54
420	\N	\N	\N	\N	\N	\N	[]	[]	[]	16
1426	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
749	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
1591	\N	\N	\N	\N	\N	\N	[]	[]	[]	71
1571	\N	\N	\N	\N	\N	\N	[]	[]	[]	18
230	\N	\N	\N	\N	\N	\N	[]	[]	[]	65
153	\N	\N	\N	\N	\N	\N	[]	[]	[]	50
1853	\N	\N	\N	\N	\N	\N	[]	[]	[]	54
712	\N	\N	\N	\N	\N	\N	[]	[]	[]	56
1229	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
2082	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
710	\N	\N	\N	\N	\N	\N	[]	[]	[]	80
1329	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
2032	\N	\N	\N	\N	\N	\N	[]	[]	[]	79
1776	\N	\N	\N	\N	\N	\N	[]	[]	[]	55
515	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
1740	\N	\N	\N	\N	\N	\N	[]	[]	[]	32
526	\N	\N	\N	\N	\N	\N	[]	[]	[]	87
350	\N	\N	\N	\N	\N	\N	[]	[]	[]	9
1175	\N	\N	\N	\N	\N	\N	[]	[]	[]	4
1070	\N	\N	\N	\N	\N	\N	[]	[]	[]	42
1253	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
2060	\N	\N	\N	\N	\N	\N	[]	[]	[]	30
285	\N	\N	\N	\N	\N	\N	[]	[]	[]	35
1736	\N	\N	\N	\N	\N	\N	[]	[]	[]	82
1684	\N	\N	\N	\N	\N	\N	[]	[]	[]	54
1940	\N	\N	\N	\N	\N	\N	[]	[]	[]	41
535	\N	\N	\N	\N	\N	\N	[]	[]	[]	86
1889	\N	\N	\N	\N	\N	\N	[]	[]	[]	22
527	\N	\N	\N	\N	\N	\N	[]	[]	[]	45
504	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
674	\N	\N	\N	\N	\N	\N	[]	[]	[]	25
1895	\N	\N	\N	\N	\N	\N	[]	[]	[]	76
472	\N	\N	\N	\N	\N	\N	[]	[]	[]	90
1835	\N	\N	\N	\N	\N	\N	[]	[]	[]	17
906	\N	\N	\N	\N	\N	\N	[]	[]	[]	63
1833	\N	\N	\N	\N	\N	\N	[]	[]	[]	21
1396	\N	\N	\N	\N	\N	\N	[]	[]	[]	22
809	\N	\N	\N	\N	\N	\N	[]	[]	[]	19
415	\N	\N	\N	\N	\N	\N	[]	[]	[]	88
673	\N	\N	\N	\N	\N	\N	[]	[]	[]	29
962	\N	\N	\N	\N	\N	\N	[]	[]	[]	69
406	\N	\N	\N	\N	\N	\N	[]	[]	[]	5
793	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
226	\N	\N	\N	\N	\N	\N	[]	[]	[]	49
1420	\N	\N	\N	\N	\N	\N	[]	[]	[]	48
465	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
1018	\N	\N	\N	\N	\N	\N	[]	[]	[]	62
478	\N	\N	\N	\N	\N	\N	[]	[]	[]	71
1091	\N	\N	\N	\N	\N	\N	[]	[]	[]	48
2024	\N	\N	\N	\N	\N	\N	[]	[]	[]	46
1965	\N	\N	\N	\N	\N	\N	[]	[]	[]	94
462	\N	\N	\N	\N	\N	\N	[]	[]	[]	95
175	\N	\N	\N	\N	\N	\N	[]	[]	[]	30
416	\N	\N	\N	\N	\N	\N	[]	[]	[]	61
1701	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
1862	\N	\N	\N	\N	\N	\N	[]	[]	[]	60
312	\N	\N	\N	\N	\N	\N	[]	[]	[]	31
1379	\N	\N	\N	\N	\N	\N	[]	[]	[]	67
861	\N	\N	\N	\N	\N	\N	[]	[]	[]	13
607	\N	\N	\N	\N	\N	\N	[]	[]	[]	87
139	\N	\N	\N	\N	\N	\N	[]	[]	[]	19
1332	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
1941	\N	\N	\N	\N	\N	\N	[]	[]	[]	20
1626	\N	\N	\N	\N	\N	\N	[]	[]	[]	78
1628	\N	\N	\N	\N	\N	\N	[]	[]	[]	75
42	\N	\N	\N	\N	\N	\N	[]	[]	[]	29
1815	\N	\N	\N	\N	\N	\N	[]	[]	[]	17
1235	\N	\N	\N	\N	\N	\N	[]	[]	[]	44
1373	\N	\N	\N	\N	\N	\N	[]	[]	[]	53
1680	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
256	\N	\N	\N	\N	\N	\N	[]	[]	[]	81
1888	\N	\N	\N	\N	\N	\N	[]	[]	[]	58
1015	\N	\N	\N	\N	\N	\N	[]	[]	[]	60
2023	\N	\N	\N	\N	\N	\N	[]	[]	[]	14
103	\N	\N	\N	\N	\N	\N	[]	[]	[]	85
1154	\N	\N	\N	\N	\N	\N	[]	[]	[]	25
993	\N	\N	\N	\N	\N	\N	[]	[]	[]	1
1884	\N	\N	\N	\N	\N	\N	[]	[]	[]	59
558	\N	\N	\N	\N	\N	\N	[]	[]	[]	99
1800	\N	\N	\N	\N	\N	\N	[]	[]	[]	52
1769	\N	\N	\N	\N	\N	\N	[]	[]	[]	64
1480	\N	\N	\N	\N	\N	\N	[]	[]	[]	26
1389	\N	\N	\N	\N	\N	\N	[]	[]	[]	73
1284	\N	\N	\N	\N	\N	\N	[]	[]	[]	78
1423	\N	\N	\N	\N	\N	\N	[]	[]	[]	58
752	\N	\N	\N	\N	\N	\N	[]	[]	[]	81
1790	\N	\N	\N	\N	\N	\N	[]	[]	[]	10
1465	\N	\N	\N	\N	\N	\N	[]	[]	[]	74
305	\N	\N	\N	\N	\N	\N	[]	[]	[]	22
1667	\N	\N	\N	\N	\N	\N	[]	[]	[]	60
1590	\N	\N	\N	\N	\N	\N	[]	[]	[]	39
1567	\N	\N	\N	\N	\N	\N	[]	[]	[]	7
975	\N	\N	\N	\N	\N	\N	[]	[]	[]	49
1910	\N	\N	\N	\N	\N	\N	[]	[]	[]	97
491	\N	\N	\N	\N	\N	\N	[]	[]	[]	78
1589	\N	\N	\N	\N	\N	\N	[]	[]	[]	89
956	\N	\N	\N	\N	\N	\N	[]	[]	[]	37
1306	\N	\N	\N	\N	\N	\N	[]	[]	[]	23
1169	\N	\N	\N	\N	\N	\N	[]	[]	[]	22
750	\N	\N	\N	\N	\N	\N	[]	[]	[]	57
268	\N	\N	\N	\N	\N	\N	[]	[]	[]	40
2034	\N	\N	\N	\N	\N	\N	[]	[]	[]	88
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

COPY public.temp_pricehistory (product_id, sku, product_name, base_price, is_active, quantity, mv_attributes, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
338	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "484", "ends_at": "above", "price_id": "690", "starts_at": "wonder"}]	\N
1292	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "164", "ends_at": "civil", "price_id": "660", "starts_at": "word"}]	\N
56	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "197", "ends_at": "among", "price_id": "760", "starts_at": "stuff"}]	\N
1632	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "399", "ends_at": "condition", "price_id": "382", "starts_at": "performance"}]	\N
568	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "799", "ends_at": "body", "price_id": "826", "starts_at": "subject"}]	\N
1439	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "74", "ends_at": "national", "price_id": "785", "starts_at": "long"}]	\N
1977	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "2", "ends_at": "even", "price_id": "303", "starts_at": "authority"}]	\N
1726	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "995", "ends_at": "born", "price_id": "122", "starts_at": "put"}]	\N
303	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "127", "ends_at": "factor", "price_id": "485", "starts_at": "pretty"}]	\N
1871	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "228", "ends_at": "middle", "price_id": "666", "starts_at": "both"}]	\N
1073	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "9", "ends_at": "book", "price_id": "626", "starts_at": "shake"}]	\N
1477	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "592", "ends_at": "one", "price_id": "386", "starts_at": "would"}]	\N
687	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "651", "ends_at": "affect", "price_id": "163", "starts_at": "population"}]	\N
1030	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "260", "ends_at": "return", "price_id": "648", "starts_at": "later"}]	\N
267	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "978", "ends_at": "coach", "price_id": "620", "starts_at": "fine"}]	\N
113	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "102", "ends_at": "reality", "price_id": "140", "starts_at": "support"}]	\N
1875	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "458", "ends_at": "billion", "price_id": "767", "starts_at": "part"}]	\N
1206	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "620", "ends_at": "participant", "price_id": "288", "starts_at": "choice"}]	\N
1161	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "460", "ends_at": "drive", "price_id": "172", "starts_at": "discover"}]	\N
2024	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "998", "ends_at": "its", "price_id": "200", "starts_at": "partner"}]	\N
117	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "72", "ends_at": "usually", "price_id": "656", "starts_at": "color"}]	\N
1188	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "904", "ends_at": "together", "price_id": "720", "starts_at": "rule"}]	\N
1960	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "449", "ends_at": "trouble", "price_id": "191", "starts_at": "against"}]	\N
411	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "50", "ends_at": "environment", "price_id": "77", "starts_at": "but"}]	\N
1032	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "858", "ends_at": "red", "price_id": "918", "starts_at": "store"}]	\N
985	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "195", "ends_at": "design", "price_id": "444", "starts_at": "itself"}]	\N
102	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "102", "ends_at": "everything", "price_id": "540", "starts_at": "appear"}]	\N
1513	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "938", "ends_at": "season", "price_id": "447", "starts_at": "reveal"}]	\N
1475	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "705", "ends_at": "forget", "price_id": "291", "starts_at": "religious"}]	\N
1177	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "45", "ends_at": "five", "price_id": "431", "starts_at": "street"}]	\N
635	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "335", "ends_at": "likely", "price_id": "775", "starts_at": "price"}]	\N
1229	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "509", "ends_at": "cold", "price_id": "387", "starts_at": "father"}]	\N
1703	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "333", "ends_at": "who", "price_id": "89", "starts_at": "power"}]	\N
980	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "86", "ends_at": "sister", "price_id": "55", "starts_at": "commercial"}]	\N
436	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "841", "ends_at": "represent", "price_id": "188", "starts_at": "candidate"}]	\N
13	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "434", "ends_at": "campaign", "price_id": "347", "starts_at": "natural"}]	\N
669	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "912", "ends_at": "daughter", "price_id": "456", "starts_at": "above"}]	\N
897	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "750", "ends_at": "lay", "price_id": "921", "starts_at": "quality"}]	\N
294	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "208", "ends_at": "real", "price_id": "261", "starts_at": "member"}]	\N
1445	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "441", "ends_at": "keep", "price_id": "172", "starts_at": "start"}]	\N
1314	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "881", "ends_at": "various", "price_id": "757", "starts_at": "language"}]	\N
1402	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "777", "ends_at": "story", "price_id": "398", "starts_at": "lawyer"}]	\N
804	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "482", "ends_at": "provide", "price_id": "716", "starts_at": "kitchen"}]	\N
141	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "810", "ends_at": "successful", "price_id": "335", "starts_at": "require"}, {"price": "403", "ends_at": "evening", "price_id": "571", "starts_at": "consumer"}]	\N
1340	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "80", "ends_at": "what", "price_id": "57", "starts_at": "prove"}]	\N
1288	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "59", "ends_at": "and", "price_id": "756", "starts_at": "draw"}]	\N
374	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "220", "ends_at": "various", "price_id": "444", "starts_at": "tell"}]	\N
301	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "38", "ends_at": "role", "price_id": "988", "starts_at": "career"}]	\N
470	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "658", "ends_at": "prove", "price_id": "316", "starts_at": "six"}]	\N
477	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "4", "ends_at": "memory", "price_id": "638", "starts_at": "sure"}]	\N
606	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "694", "ends_at": "break", "price_id": "771", "starts_at": "history"}]	\N
995	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "162", "ends_at": "others", "price_id": "462", "starts_at": "project"}]	\N
403	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "896", "ends_at": "several", "price_id": "655", "starts_at": "develop"}]	\N
692	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "880", "ends_at": "these", "price_id": "669", "starts_at": "better"}]	\N
1381	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "202", "ends_at": "television", "price_id": "230", "starts_at": "into"}]	\N
627	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "250", "ends_at": "according", "price_id": "464", "starts_at": "tough"}]	\N
1939	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "664", "ends_at": "bad", "price_id": "235", "starts_at": "operation"}]	\N
996	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "59", "ends_at": "order", "price_id": "376", "starts_at": "pressure"}]	\N
1857	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "993", "ends_at": "line", "price_id": "446", "starts_at": "knowledge"}]	\N
644	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "932", "ends_at": "day", "price_id": "830", "starts_at": "strong"}]	\N
1869	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "9", "ends_at": "major", "price_id": "765", "starts_at": "wear"}]	\N
1304	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "585", "ends_at": "there", "price_id": "491", "starts_at": "per"}]	\N
149	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "221", "ends_at": "similar", "price_id": "997", "starts_at": "party"}]	\N
228	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "174", "ends_at": "rate", "price_id": "288", "starts_at": "ok"}]	\N
1411	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "299", "ends_at": "prevent", "price_id": "667", "starts_at": "gun"}]	\N
839	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "811", "ends_at": "individual", "price_id": "7", "starts_at": "next"}]	\N
856	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "738", "ends_at": "coach", "price_id": "134", "starts_at": "personal"}]	\N
1069	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "651", "ends_at": "report", "price_id": "285", "starts_at": "own"}]	\N
1876	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "794", "ends_at": "use", "price_id": "47", "starts_at": "reality"}]	\N
1661	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "394", "ends_at": "admit", "price_id": "199", "starts_at": "minute"}]	\N
706	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "471", "ends_at": "big", "price_id": "990", "starts_at": "buy"}]	\N
698	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "700", "ends_at": "boy", "price_id": "158", "starts_at": "beat"}]	\N
408	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "160", "ends_at": "center", "price_id": "994", "starts_at": "continue"}]	\N
975	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "964", "ends_at": "back", "price_id": "465", "starts_at": "why"}]	\N
1106	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "886", "ends_at": "difficult", "price_id": "929", "starts_at": "development"}]	\N
1012	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "884", "ends_at": "almost", "price_id": "976", "starts_at": "short"}]	\N
1105	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "144", "ends_at": "sell", "price_id": "581", "starts_at": "rest"}]	\N
1787	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "242", "ends_at": "up", "price_id": "590", "starts_at": "go"}]	\N
910	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "259", "ends_at": "policy", "price_id": "371", "starts_at": "call"}]	\N
854	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "181", "ends_at": "public", "price_id": "50", "starts_at": "indicate"}]	\N
891	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "635", "ends_at": "western", "price_id": "56", "starts_at": "generation"}]	\N
1378	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "308", "ends_at": "high", "price_id": "49", "starts_at": "mission"}]	\N
978	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "7", "ends_at": "add", "price_id": "560", "starts_at": "wrong"}]	\N
1114	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "469", "ends_at": "decide", "price_id": "956", "starts_at": "you"}]	\N
630	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "14", "ends_at": "maintain", "price_id": "442", "starts_at": "two"}]	\N
904	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "82", "ends_at": "source", "price_id": "185", "starts_at": "away"}]	\N
663	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "47", "ends_at": "participant", "price_id": "805", "starts_at": "about"}]	\N
1577	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "852", "ends_at": "personal", "price_id": "490", "starts_at": "score"}]	\N
2044	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "278", "ends_at": "far", "price_id": "802", "starts_at": "charge"}]	\N
276	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "865", "ends_at": "cut", "price_id": "569", "starts_at": "work"}]	\N
816	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "521", "ends_at": "yes", "price_id": "924", "starts_at": "everybody"}]	\N
1217	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "319", "ends_at": "woman", "price_id": "229", "starts_at": "agree"}]	\N
196	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "24", "ends_at": "vote", "price_id": "492", "starts_at": "goal"}]	\N
1716	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "592", "ends_at": "free", "price_id": "795", "starts_at": "research"}]	\N
273	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "207", "ends_at": "media", "price_id": "449", "starts_at": "pressure"}]	\N
111	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "152", "ends_at": "consider", "price_id": "839", "starts_at": "world"}]	\N
1128	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "180", "ends_at": "billion", "price_id": "828", "starts_at": "section"}]	\N
472	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "848", "ends_at": "song", "price_id": "326", "starts_at": "lay"}]	\N
393	\N	\N	\N	\N	\N	\N	[]	[]	[{"price": "711", "ends_at": "necessary", "price_id": "512", "starts_at": "subject"}]	\N
\.


--
-- Data for Name: temp_productimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_productimage (product_id, sku, product_name, base_price, is_active, quantity, mv_attributes, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1839	\N	\N	\N	\N	\N	\N	[{"url": "adult", "alt_text": "building", "image_id": "406", "sort_order": "489"}]	[]	[]	\N
295	\N	\N	\N	\N	\N	\N	[{"url": "artist", "alt_text": "once", "image_id": "941", "sort_order": "955"}]	[]	[]	\N
344	\N	\N	\N	\N	\N	\N	[{"url": "simple", "alt_text": "leg", "image_id": "659", "sort_order": "221"}]	[]	[]	\N
978	\N	\N	\N	\N	\N	\N	[{"url": "top", "alt_text": "especially", "image_id": "827", "sort_order": "212"}, {"url": "sister", "alt_text": "source", "image_id": "831", "sort_order": "676"}]	[]	[]	\N
875	\N	\N	\N	\N	\N	\N	[{"url": "artist", "alt_text": "production", "image_id": "754", "sort_order": "843"}]	[]	[]	\N
557	\N	\N	\N	\N	\N	\N	[{"url": "show", "alt_text": "every", "image_id": "588", "sort_order": "868"}]	[]	[]	\N
1155	\N	\N	\N	\N	\N	\N	[{"url": "authority", "alt_text": "west", "image_id": "499", "sort_order": "925"}]	[]	[]	\N
1808	\N	\N	\N	\N	\N	\N	[{"url": "level", "alt_text": "news", "image_id": "258", "sort_order": "900"}]	[]	[]	\N
1774	\N	\N	\N	\N	\N	\N	[{"url": "outside", "alt_text": "benefit", "image_id": "92", "sort_order": "843"}]	[]	[]	\N
361	\N	\N	\N	\N	\N	\N	[{"url": "politics", "alt_text": "everything", "image_id": "796", "sort_order": "714"}]	[]	[]	\N
1236	\N	\N	\N	\N	\N	\N	[{"url": "at", "alt_text": "true", "image_id": "993", "sort_order": "729"}]	[]	[]	\N
1377	\N	\N	\N	\N	\N	\N	[{"url": "might", "alt_text": "house", "image_id": "99", "sort_order": "583"}]	[]	[]	\N
1725	\N	\N	\N	\N	\N	\N	[{"url": "professional", "alt_text": "writer", "image_id": "985", "sort_order": "536"}]	[]	[]	\N
1906	\N	\N	\N	\N	\N	\N	[{"url": "position", "alt_text": "open", "image_id": "330", "sort_order": "867"}]	[]	[]	\N
1861	\N	\N	\N	\N	\N	\N	[{"url": "walk", "alt_text": "those", "image_id": "159", "sort_order": "537"}]	[]	[]	\N
2081	\N	\N	\N	\N	\N	\N	[{"url": "attorney", "alt_text": "difficult", "image_id": "518", "sort_order": "234"}]	[]	[]	\N
1782	\N	\N	\N	\N	\N	\N	[{"url": "house", "alt_text": "finally", "image_id": "213", "sort_order": "568"}]	[]	[]	\N
1547	\N	\N	\N	\N	\N	\N	[{"url": "form", "alt_text": "mind", "image_id": "132", "sort_order": "928"}]	[]	[]	\N
964	\N	\N	\N	\N	\N	\N	[{"url": "picture", "alt_text": "court", "image_id": "405", "sort_order": "997"}]	[]	[]	\N
1655	\N	\N	\N	\N	\N	\N	[{"url": "kitchen", "alt_text": "ball", "image_id": "38", "sort_order": "31"}]	[]	[]	\N
641	\N	\N	\N	\N	\N	\N	[{"url": "speech", "alt_text": "would", "image_id": "417", "sort_order": "971"}]	[]	[]	\N
1404	\N	\N	\N	\N	\N	\N	[{"url": "business", "alt_text": "field", "image_id": "872", "sort_order": "44"}]	[]	[]	\N
55	\N	\N	\N	\N	\N	\N	[{"url": "there", "alt_text": "admit", "image_id": "473", "sort_order": "593"}]	[]	[]	\N
2067	\N	\N	\N	\N	\N	\N	[{"url": "market", "alt_text": "argue", "image_id": "652", "sort_order": "517"}]	[]	[]	\N
1713	\N	\N	\N	\N	\N	\N	[{"url": "station", "alt_text": "particular", "image_id": "557", "sort_order": "409"}]	[]	[]	\N
156	\N	\N	\N	\N	\N	\N	[{"url": "window", "alt_text": "range", "image_id": "694", "sort_order": "769"}]	[]	[]	\N
1554	\N	\N	\N	\N	\N	\N	[{"url": "thousand", "alt_text": "administration", "image_id": "260", "sort_order": "499"}]	[]	[]	\N
728	\N	\N	\N	\N	\N	\N	[{"url": "figure", "alt_text": "early", "image_id": "21", "sort_order": "964"}]	[]	[]	\N
1013	\N	\N	\N	\N	\N	\N	[{"url": "yourself", "alt_text": "same", "image_id": "324", "sort_order": "67"}]	[]	[]	\N
1875	\N	\N	\N	\N	\N	\N	[{"url": "become", "alt_text": "close", "image_id": "56", "sort_order": "63"}]	[]	[]	\N
1471	\N	\N	\N	\N	\N	\N	[{"url": "yes", "alt_text": "future", "image_id": "330", "sort_order": "892"}]	[]	[]	\N
385	\N	\N	\N	\N	\N	\N	[{"url": "performance", "alt_text": "prepare", "image_id": "143", "sort_order": "439"}]	[]	[]	\N
1358	\N	\N	\N	\N	\N	\N	[{"url": "group", "alt_text": "age", "image_id": "892", "sort_order": "291"}]	[]	[]	\N
1596	\N	\N	\N	\N	\N	\N	[{"url": "there", "alt_text": "against", "image_id": "5", "sort_order": "231"}]	[]	[]	\N
372	\N	\N	\N	\N	\N	\N	[{"url": "method", "alt_text": "position", "image_id": "272", "sort_order": "415"}]	[]	[]	\N
1732	\N	\N	\N	\N	\N	\N	[{"url": "budget", "alt_text": "hand", "image_id": "482", "sort_order": "416"}]	[]	[]	\N
298	\N	\N	\N	\N	\N	\N	[{"url": "identify", "alt_text": "sound", "image_id": "798", "sort_order": "609"}]	[]	[]	\N
210	\N	\N	\N	\N	\N	\N	[{"url": "daughter", "alt_text": "should", "image_id": "793", "sort_order": "271"}]	[]	[]	\N
570	\N	\N	\N	\N	\N	\N	[{"url": "final", "alt_text": "approach", "image_id": "478", "sort_order": "460"}]	[]	[]	\N
2064	\N	\N	\N	\N	\N	\N	[{"url": "low", "alt_text": "change", "image_id": "949", "sort_order": "541"}]	[]	[]	\N
1945	\N	\N	\N	\N	\N	\N	[{"url": "nearly", "alt_text": "responsibility", "image_id": "768", "sort_order": "815"}]	[]	[]	\N
393	\N	\N	\N	\N	\N	\N	[{"url": "to", "alt_text": "letter", "image_id": "611", "sort_order": "375"}]	[]	[]	\N
1992	\N	\N	\N	\N	\N	\N	[{"url": "fall", "alt_text": "computer", "image_id": "175", "sort_order": "973"}]	[]	[]	\N
1115	\N	\N	\N	\N	\N	\N	[{"url": "oil", "alt_text": "where", "image_id": "673", "sort_order": "580"}]	[]	[]	\N
2073	\N	\N	\N	\N	\N	\N	[{"url": "someone", "alt_text": "like", "image_id": "566", "sort_order": "363"}]	[]	[]	\N
595	\N	\N	\N	\N	\N	\N	[{"url": "book", "alt_text": "play", "image_id": "903", "sort_order": "221"}, {"url": "evidence", "alt_text": "leg", "image_id": "578", "sort_order": "194"}]	[]	[]	\N
855	\N	\N	\N	\N	\N	\N	[{"url": "industry", "alt_text": "third", "image_id": "383", "sort_order": "745"}]	[]	[]	\N
665	\N	\N	\N	\N	\N	\N	[{"url": "half", "alt_text": "bank", "image_id": "667", "sort_order": "725"}]	[]	[]	\N
2038	\N	\N	\N	\N	\N	\N	[{"url": "him", "alt_text": "doctor", "image_id": "67", "sort_order": "334"}]	[]	[]	\N
798	\N	\N	\N	\N	\N	\N	[{"url": "sound", "alt_text": "buy", "image_id": "94", "sort_order": "532"}]	[]	[]	\N
1897	\N	\N	\N	\N	\N	\N	[{"url": "spring", "alt_text": "item", "image_id": "235", "sort_order": "719"}]	[]	[]	\N
772	\N	\N	\N	\N	\N	\N	[{"url": "still", "alt_text": "there", "image_id": "341", "sort_order": "133"}]	[]	[]	\N
1397	\N	\N	\N	\N	\N	\N	[{"url": "glass", "alt_text": "against", "image_id": "360", "sort_order": "241"}]	[]	[]	\N
1296	\N	\N	\N	\N	\N	\N	[{"url": "world", "alt_text": "bed", "image_id": "252", "sort_order": "522"}]	[]	[]	\N
101	\N	\N	\N	\N	\N	\N	[{"url": "data", "alt_text": "idea", "image_id": "595", "sort_order": "38"}]	[]	[]	\N
560	\N	\N	\N	\N	\N	\N	[{"url": "write", "alt_text": "likely", "image_id": "267", "sort_order": "782"}]	[]	[]	\N
1648	\N	\N	\N	\N	\N	\N	[{"url": "try", "alt_text": "southern", "image_id": "511", "sort_order": "120"}]	[]	[]	\N
293	\N	\N	\N	\N	\N	\N	[{"url": "office", "alt_text": "tend", "image_id": "688", "sort_order": "422"}]	[]	[]	\N
1647	\N	\N	\N	\N	\N	\N	[{"url": "very", "alt_text": "stuff", "image_id": "100", "sort_order": "859"}]	[]	[]	\N
453	\N	\N	\N	\N	\N	\N	[{"url": "of", "alt_text": "attention", "image_id": "936", "sort_order": "353"}]	[]	[]	\N
299	\N	\N	\N	\N	\N	\N	[{"url": "speak", "alt_text": "good", "image_id": "377", "sort_order": "550"}]	[]	[]	\N
1283	\N	\N	\N	\N	\N	\N	[{"url": "ball", "alt_text": "media", "image_id": "206", "sort_order": "439"}]	[]	[]	\N
1468	\N	\N	\N	\N	\N	\N	[{"url": "professor", "alt_text": "front", "image_id": "174", "sort_order": "581"}]	[]	[]	\N
1411	\N	\N	\N	\N	\N	\N	[{"url": "both", "alt_text": "meeting", "image_id": "72", "sort_order": "576"}]	[]	[]	\N
2024	\N	\N	\N	\N	\N	\N	[{"url": "break", "alt_text": "continue", "image_id": "289", "sort_order": "482"}, {"url": "second", "alt_text": "week", "image_id": "371", "sort_order": "257"}]	[]	[]	\N
1409	\N	\N	\N	\N	\N	\N	[{"url": "plant", "alt_text": "available", "image_id": "207", "sort_order": "338"}]	[]	[]	\N
1476	\N	\N	\N	\N	\N	\N	[{"url": "study", "alt_text": "why", "image_id": "848", "sort_order": "792"}]	[]	[]	\N
1412	\N	\N	\N	\N	\N	\N	[{"url": "meeting", "alt_text": "sometimes", "image_id": "175", "sort_order": "906"}]	[]	[]	\N
924	\N	\N	\N	\N	\N	\N	[{"url": "relationship", "alt_text": "let", "image_id": "227", "sort_order": "762"}]	[]	[]	\N
1054	\N	\N	\N	\N	\N	\N	[{"url": "by", "alt_text": "smile", "image_id": "341", "sort_order": "681"}]	[]	[]	\N
510	\N	\N	\N	\N	\N	\N	[{"url": "interview", "alt_text": "including", "image_id": "128", "sort_order": "143"}]	[]	[]	\N
324	\N	\N	\N	\N	\N	\N	[{"url": "national", "alt_text": "treatment", "image_id": "135", "sort_order": "573"}]	[]	[]	\N
75	\N	\N	\N	\N	\N	\N	[{"url": "wait", "alt_text": "miss", "image_id": "52", "sort_order": "392"}]	[]	[]	\N
976	\N	\N	\N	\N	\N	\N	[{"url": "the", "alt_text": "best", "image_id": "133", "sort_order": "348"}]	[]	[]	\N
236	\N	\N	\N	\N	\N	\N	[{"url": "road", "alt_text": "school", "image_id": "476", "sort_order": "99"}]	[]	[]	\N
565	\N	\N	\N	\N	\N	\N	[{"url": "evening", "alt_text": "life", "image_id": "399", "sort_order": "150"}]	[]	[]	\N
1453	\N	\N	\N	\N	\N	\N	[{"url": "necessary", "alt_text": "fight", "image_id": "89", "sort_order": "765"}]	[]	[]	\N
947	\N	\N	\N	\N	\N	\N	[{"url": "PM", "alt_text": "start", "image_id": "88", "sort_order": "522"}]	[]	[]	\N
1266	\N	\N	\N	\N	\N	\N	[{"url": "family", "alt_text": "another", "image_id": "304", "sort_order": "155"}]	[]	[]	\N
1568	\N	\N	\N	\N	\N	\N	[{"url": "entire", "alt_text": "far", "image_id": "998", "sort_order": "910"}]	[]	[]	\N
812	\N	\N	\N	\N	\N	\N	[{"url": "just", "alt_text": "market", "image_id": "593", "sort_order": "454"}]	[]	[]	\N
751	\N	\N	\N	\N	\N	\N	[{"url": "political", "alt_text": "high", "image_id": "522", "sort_order": "785"}]	[]	[]	\N
551	\N	\N	\N	\N	\N	\N	[{"url": "safe", "alt_text": "street", "image_id": "935", "sort_order": "970"}]	[]	[]	\N
1192	\N	\N	\N	\N	\N	\N	[{"url": "economy", "alt_text": "then", "image_id": "538", "sort_order": "791"}]	[]	[]	\N
1874	\N	\N	\N	\N	\N	\N	[{"url": "section", "alt_text": "two", "image_id": "961", "sort_order": "709"}]	[]	[]	\N
2000	\N	\N	\N	\N	\N	\N	[{"url": "mind", "alt_text": "it", "image_id": "118", "sort_order": "995"}]	[]	[]	\N
1174	\N	\N	\N	\N	\N	\N	[{"url": "affect", "alt_text": "guess", "image_id": "18", "sort_order": "601"}]	[]	[]	\N
601	\N	\N	\N	\N	\N	\N	[{"url": "road", "alt_text": "position", "image_id": "809", "sort_order": "701"}]	[]	[]	\N
828	\N	\N	\N	\N	\N	\N	[{"url": "wrong", "alt_text": "image", "image_id": "313", "sort_order": "647"}]	[]	[]	\N
588	\N	\N	\N	\N	\N	\N	[{"url": "accept", "alt_text": "sort", "image_id": "427", "sort_order": "945"}]	[]	[]	\N
1107	\N	\N	\N	\N	\N	\N	[{"url": "our", "alt_text": "piece", "image_id": "837", "sort_order": "554"}]	[]	[]	\N
1272	\N	\N	\N	\N	\N	\N	[{"url": "letter", "alt_text": "play", "image_id": "737", "sort_order": "938"}]	[]	[]	\N
1121	\N	\N	\N	\N	\N	\N	[{"url": "group", "alt_text": "decide", "image_id": "840", "sort_order": "48"}]	[]	[]	\N
1171	\N	\N	\N	\N	\N	\N	[{"url": "tax", "alt_text": "process", "image_id": "178", "sort_order": "748"}]	[]	[]	\N
896	\N	\N	\N	\N	\N	\N	[{"url": "event", "alt_text": "food", "image_id": "652", "sort_order": "369"}]	[]	[]	\N
698	\N	\N	\N	\N	\N	\N	[{"url": "most", "alt_text": "thus", "image_id": "679", "sort_order": "728"}]	[]	[]	\N
1765	\N	\N	\N	\N	\N	\N	[{"url": "race", "alt_text": "discover", "image_id": "114", "sort_order": "612"}]	[]	[]	\N
\.


--
-- Data for Name: temp_productvariant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_productvariant (product_id, sku, product_name, base_price, is_active, quantity, mv_attributes, productimage, productvariant, pricehistory, category_products_category_id) FROM stdin;
1086	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "he", "variant_id": "222", "price_override": "1", "is_active_variant": "52"}]	[]	\N
1357	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "worker", "variant_id": "176", "price_override": "432", "is_active_variant": "585"}]	[]	\N
1359	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "including", "variant_id": "998", "price_override": "145", "is_active_variant": "961"}]	[]	\N
521	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "town", "variant_id": "524", "price_override": "479", "is_active_variant": "504"}]	[]	\N
630	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "east", "variant_id": "972", "price_override": "842", "is_active_variant": "152"}, {"barcode": "also", "variant_id": "582", "price_override": "652", "is_active_variant": "425"}]	[]	\N
42	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "talk", "variant_id": "910", "price_override": "262", "is_active_variant": "476"}]	[]	\N
1858	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "whom", "variant_id": "602", "price_override": "347", "is_active_variant": "622"}]	[]	\N
2098	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "new", "variant_id": "427", "price_override": "242", "is_active_variant": "850"}]	[]	\N
1429	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "story", "variant_id": "478", "price_override": "491", "is_active_variant": "507"}]	[]	\N
527	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "no", "variant_id": "193", "price_override": "341", "is_active_variant": "197"}]	[]	\N
810	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "here", "variant_id": "869", "price_override": "343", "is_active_variant": "478"}]	[]	\N
685	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "station", "variant_id": "783", "price_override": "873", "is_active_variant": "709"}]	[]	\N
1165	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "continue", "variant_id": "268", "price_override": "697", "is_active_variant": "561"}]	[]	\N
1396	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "remember", "variant_id": "459", "price_override": "736", "is_active_variant": "443"}, {"barcode": "activity", "variant_id": "614", "price_override": "630", "is_active_variant": "86"}]	[]	\N
925	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "everybody", "variant_id": "796", "price_override": "177", "is_active_variant": "606"}]	[]	\N
663	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "across", "variant_id": "523", "price_override": "584", "is_active_variant": "839"}, {"barcode": "consumer", "variant_id": "280", "price_override": "592", "is_active_variant": "366"}]	[]	\N
1782	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "give", "variant_id": "834", "price_override": "495", "is_active_variant": "759"}]	[]	\N
1721	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "imagine", "variant_id": "566", "price_override": "261", "is_active_variant": "927"}]	[]	\N
1637	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "why", "variant_id": "542", "price_override": "513", "is_active_variant": "386"}]	[]	\N
1203	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "both", "variant_id": "535", "price_override": "863", "is_active_variant": "230"}]	[]	\N
1807	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "high", "variant_id": "876", "price_override": "316", "is_active_variant": "284"}]	[]	\N
1506	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "grow", "variant_id": "591", "price_override": "390", "is_active_variant": "268"}]	[]	\N
32	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "threat", "variant_id": "170", "price_override": "968", "is_active_variant": "843"}]	[]	\N
1427	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "best", "variant_id": "564", "price_override": "688", "is_active_variant": "590"}]	[]	\N
1053	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "allow", "variant_id": "554", "price_override": "896", "is_active_variant": "613"}]	[]	\N
735	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "newspaper", "variant_id": "957", "price_override": "453", "is_active_variant": "489"}]	[]	\N
1892	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "quickly", "variant_id": "326", "price_override": "77", "is_active_variant": "840"}]	[]	\N
386	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "exist", "variant_id": "228", "price_override": "682", "is_active_variant": "934"}]	[]	\N
1000	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "family", "variant_id": "364", "price_override": "352", "is_active_variant": "554"}]	[]	\N
97	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "move", "variant_id": "559", "price_override": "176", "is_active_variant": "921"}]	[]	\N
1080	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "station", "variant_id": "651", "price_override": "899", "is_active_variant": "780"}]	[]	\N
1185	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "kind", "variant_id": "601", "price_override": "210", "is_active_variant": "212"}]	[]	\N
1171	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "happen", "variant_id": "994", "price_override": "471", "is_active_variant": "421"}]	[]	\N
1556	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "participant", "variant_id": "697", "price_override": "863", "is_active_variant": "30"}]	[]	\N
1794	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "plan", "variant_id": "840", "price_override": "184", "is_active_variant": "130"}]	[]	\N
1348	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "understand", "variant_id": "917", "price_override": "429", "is_active_variant": "568"}]	[]	\N
295	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "if", "variant_id": "178", "price_override": "522", "is_active_variant": "122"}]	[]	\N
911	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "own", "variant_id": "844", "price_override": "598", "is_active_variant": "101"}]	[]	\N
566	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "to", "variant_id": "635", "price_override": "478", "is_active_variant": "183"}]	[]	\N
743	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "buy", "variant_id": "559", "price_override": "91", "is_active_variant": "144"}]	[]	\N
553	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "tend", "variant_id": "418", "price_override": "825", "is_active_variant": "833"}]	[]	\N
1639	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "serious", "variant_id": "196", "price_override": "354", "is_active_variant": "862"}]	[]	\N
1997	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "adult", "variant_id": "924", "price_override": "652", "is_active_variant": "790"}]	[]	\N
3	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "her", "variant_id": "805", "price_override": "475", "is_active_variant": "616"}]	[]	\N
23	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "task", "variant_id": "479", "price_override": "647", "is_active_variant": "864"}]	[]	\N
1272	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "develop", "variant_id": "105", "price_override": "345", "is_active_variant": "349"}]	[]	\N
461	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "quickly", "variant_id": "468", "price_override": "581", "is_active_variant": "700"}]	[]	\N
1489	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "doctor", "variant_id": "288", "price_override": "404", "is_active_variant": "340"}]	[]	\N
479	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "assume", "variant_id": "310", "price_override": "141", "is_active_variant": "266"}]	[]	\N
582	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "live", "variant_id": "151", "price_override": "185", "is_active_variant": "192"}]	[]	\N
1467	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "never", "variant_id": "882", "price_override": "128", "is_active_variant": "946"}]	[]	\N
1214	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "themselves", "variant_id": "414", "price_override": "175", "is_active_variant": "732"}]	[]	\N
1696	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "kid", "variant_id": "355", "price_override": "636", "is_active_variant": "542"}]	[]	\N
926	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "sort", "variant_id": "408", "price_override": "931", "is_active_variant": "118"}]	[]	\N
1458	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "time", "variant_id": "372", "price_override": "234", "is_active_variant": "14"}]	[]	\N
818	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "American", "variant_id": "218", "price_override": "705", "is_active_variant": "776"}]	[]	\N
1463	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "red", "variant_id": "81", "price_override": "30", "is_active_variant": "584"}]	[]	\N
1404	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "common", "variant_id": "363", "price_override": "396", "is_active_variant": "120"}]	[]	\N
968	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "manage", "variant_id": "629", "price_override": "769", "is_active_variant": "170"}]	[]	\N
389	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "health", "variant_id": "215", "price_override": "477", "is_active_variant": "966"}]	[]	\N
1302	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "shake", "variant_id": "543", "price_override": "186", "is_active_variant": "473"}]	[]	\N
1255	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "well", "variant_id": "496", "price_override": "231", "is_active_variant": "401"}]	[]	\N
578	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "team", "variant_id": "13", "price_override": "127", "is_active_variant": "178"}]	[]	\N
407	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "movement", "variant_id": "240", "price_override": "327", "is_active_variant": "324"}]	[]	\N
838	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "feeling", "variant_id": "428", "price_override": "484", "is_active_variant": "143"}]	[]	\N
360	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "agency", "variant_id": "554", "price_override": "352", "is_active_variant": "508"}]	[]	\N
961	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "raise", "variant_id": "290", "price_override": "737", "is_active_variant": "298"}]	[]	\N
592	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "TV", "variant_id": "373", "price_override": "883", "is_active_variant": "507"}]	[]	\N
617	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "determine", "variant_id": "779", "price_override": "616", "is_active_variant": "807"}]	[]	\N
1352	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "table", "variant_id": "238", "price_override": "52", "is_active_variant": "573"}]	[]	\N
1706	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "media", "variant_id": "185", "price_override": "835", "is_active_variant": "497"}, {"barcode": "including", "variant_id": "563", "price_override": "71", "is_active_variant": "197"}]	[]	\N
906	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "cup", "variant_id": "190", "price_override": "910", "is_active_variant": "582"}]	[]	\N
523	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "many", "variant_id": "329", "price_override": "136", "is_active_variant": "518"}]	[]	\N
1007	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "sit", "variant_id": "763", "price_override": "53", "is_active_variant": "201"}]	[]	\N
1089	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "available", "variant_id": "862", "price_override": "230", "is_active_variant": "844"}]	[]	\N
1017	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "recently", "variant_id": "894", "price_override": "674", "is_active_variant": "230"}]	[]	\N
1393	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "agent", "variant_id": "256", "price_override": "736", "is_active_variant": "760"}]	[]	\N
1675	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "game", "variant_id": "932", "price_override": "530", "is_active_variant": "631"}]	[]	\N
1936	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "sort", "variant_id": "240", "price_override": "863", "is_active_variant": "738"}]	[]	\N
1012	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "prove", "variant_id": "388", "price_override": "601", "is_active_variant": "681"}]	[]	\N
916	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "expect", "variant_id": "946", "price_override": "678", "is_active_variant": "180"}]	[]	\N
1483	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "bill", "variant_id": "394", "price_override": "516", "is_active_variant": "160"}]	[]	\N
873	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "plan", "variant_id": "583", "price_override": "542", "is_active_variant": "131"}]	[]	\N
1189	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "pass", "variant_id": "680", "price_override": "906", "is_active_variant": "171"}]	[]	\N
284	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "another", "variant_id": "237", "price_override": "481", "is_active_variant": "68"}]	[]	\N
1526	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "your", "variant_id": "920", "price_override": "61", "is_active_variant": "509"}]	[]	\N
913	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "community", "variant_id": "457", "price_override": "148", "is_active_variant": "518"}]	[]	\N
127	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "down", "variant_id": "856", "price_override": "402", "is_active_variant": "115"}]	[]	\N
627	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "north", "variant_id": "169", "price_override": "903", "is_active_variant": "200"}]	[]	\N
1217	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "must", "variant_id": "274", "price_override": "640", "is_active_variant": "390"}]	[]	\N
1643	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "those", "variant_id": "44", "price_override": "38", "is_active_variant": "493"}]	[]	\N
2025	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "job", "variant_id": "991", "price_override": "657", "is_active_variant": "83"}]	[]	\N
1970	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "worry", "variant_id": "907", "price_override": "136", "is_active_variant": "886"}]	[]	\N
1983	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "likely", "variant_id": "218", "price_override": "866", "is_active_variant": "636"}]	[]	\N
575	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "effort", "variant_id": "2", "price_override": "275", "is_active_variant": "767"}]	[]	\N
593	\N	\N	\N	\N	\N	\N	[]	[{"barcode": "have", "variant_id": "243", "price_override": "156", "is_active_variant": "735"}]	[]	\N
\.


--
-- Data for Name: temp_reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_reviews (user_id, review_id, rating, title, body, created_at, reviews_product_id) FROM stdin;
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
    ADD CONSTRAINT relation_14_pkey PRIMARY KEY (media_id);


--
-- Name: relation_15 relation_15_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_15
    ADD CONSTRAINT relation_15_pkey PRIMARY KEY (user_id);


--
-- Name: relation_16 relation_16_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_16
    ADD CONSTRAINT relation_16_pkey PRIMARY KEY (primecustomer_id);


--
-- Name: relation_17 relation_17_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_17
    ADD CONSTRAINT relation_17_pkey PRIMARY KEY (businesscustomer_id);


--
-- Name: relation_18 relation_18_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_18
    ADD CONSTRAINT relation_18_pkey PRIMARY KEY (corporateemployee_id);


--
-- Name: relation_19 relation_19_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_19
    ADD CONSTRAINT relation_19_pkey PRIMARY KEY (supportagent_id);


--
-- Name: relation_1 relation_1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_1
    ADD CONSTRAINT relation_1_pkey PRIMARY KEY (product_id);


--
-- Name: relation_20 relation_20_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_20
    ADD CONSTRAINT relation_20_pkey PRIMARY KEY (categorymanager_id);


--
-- Name: relation_21 relation_21_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_21
    ADD CONSTRAINT relation_21_pkey PRIMARY KEY (tag_id);


--
-- Name: relation_22 relation_22_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_22
    ADD CONSTRAINT relation_22_pkey PRIMARY KEY (user_id, address_id);


--
-- Name: relation_23 relation_23_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_23
    ADD CONSTRAINT relation_23_pkey PRIMARY KEY (user_id, payment_method_id);


--
-- Name: relation_24 relation_24_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_24
    ADD CONSTRAINT relation_24_pkey PRIMARY KEY (user_id);


--
-- Name: relation_25 relation_25_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_25
    ADD CONSTRAINT relation_25_pkey PRIMARY KEY (user_id, wishlist_id);


--
-- Name: relation_26 relation_26_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_26
    ADD CONSTRAINT relation_26_pkey PRIMARY KEY (user_id, review_id);


--
-- Name: relation_27 relation_27_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_27
    ADD CONSTRAINT relation_27_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_28 relation_28_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_28
    ADD CONSTRAINT relation_28_pkey PRIMARY KEY (custorder_id, shipment_id);


--
-- Name: relation_29 relation_29_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_29
    ADD CONSTRAINT relation_29_pkey PRIMARY KEY (promotion_id);


--
-- Name: relation_2 relation_2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_2
    ADD CONSTRAINT relation_2_pkey PRIMARY KEY (physicalproduct_id);


--
-- Name: relation_30 relation_30_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_30
    ADD CONSTRAINT relation_30_pkey PRIMARY KEY (promotion_id, coupon_code);


--
-- Name: relation_31 relation_31_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_31
    ADD CONSTRAINT relation_31_pkey PRIMARY KEY (warehouse_id);


--
-- Name: relation_32 relation_32_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_32
    ADD CONSTRAINT relation_32_pkey PRIMARY KEY (warehouse_id, bin_id);


--
-- Name: relation_33 relation_33_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_33
    ADD CONSTRAINT relation_33_pkey PRIMARY KEY (supplier_id);


--
-- Name: relation_34 relation_34_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_34
    ADD CONSTRAINT relation_34_pkey PRIMARY KEY (supplier_id, contact_id);


--
-- Name: relation_35 relation_35_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_35
    ADD CONSTRAINT relation_35_pkey PRIMARY KEY (purchaseorder_id);


--
-- Name: relation_36 relation_36_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_36
    ADD CONSTRAINT relation_36_pkey PRIMARY KEY (courierpartner_id);


--
-- Name: relation_37 relation_37_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_37
    ADD CONSTRAINT relation_37_pkey PRIMARY KEY (product_id, tag_id);


--
-- Name: relation_38 relation_38_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_38
    ADD CONSTRAINT relation_38_pkey PRIMARY KEY (product_id, bought_together_product_product_id);


--
-- Name: relation_39 relation_39_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_39
    ADD CONSTRAINT relation_39_pkey PRIMARY KEY (customer_id, product_id);


--
-- Name: relation_3 relation_3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_3
    ADD CONSTRAINT relation_3_pkey PRIMARY KEY (digitalproduct_id);


--
-- Name: relation_40 relation_40_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_40
    ADD CONSTRAINT relation_40_pkey PRIMARY KEY (customer_id, wishlist_id, product_id);


--
-- Name: relation_41 relation_41_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_41
    ADD CONSTRAINT relation_41_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_42 relation_42_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_42
    ADD CONSTRAINT relation_42_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_43 relation_43_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_43
    ADD CONSTRAINT relation_43_pkey PRIMARY KEY (product_id, warehouse_id, bin_id);


--
-- Name: relation_44 relation_44_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_44
    ADD CONSTRAINT relation_44_pkey PRIMARY KEY (supplier_id, product_id);


--
-- Name: relation_45 relation_45_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_45
    ADD CONSTRAINT relation_45_pkey PRIMARY KEY (purchaseorder_id, product_id);


--
-- Name: relation_46 relation_46_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_46
    ADD CONSTRAINT relation_46_pkey PRIMARY KEY (phone_id, bundle_phone_phone_id);


--
-- Name: relation_4 relation_4_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_4
    ADD CONSTRAINT relation_4_pkey PRIMARY KEY (electronics_id);


--
-- Name: relation_5 relation_5_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_5
    ADD CONSTRAINT relation_5_pkey PRIMARY KEY (computer_id);


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
    ADD CONSTRAINT temp_reviews_pkey PRIMARY KEY (user_id, review_id);


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

CREATE INDEX idx_temp_reviews ON public.temp_reviews USING btree (user_id, review_id);


--
-- Name: idx_temp_supplier_pos; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_supplier_pos ON public.temp_supplier_pos USING btree (purchaseorder_id);


--
-- PostgreSQL database dump complete
--

