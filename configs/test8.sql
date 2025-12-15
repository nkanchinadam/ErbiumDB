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
    dimensions character varying(255),
    role character varying(255),
    energy_rating character varying(255),
    warranty_years integer,
    category_products_category_id integer
);


ALTER TABLE public.relation_1 OWNER TO postgres;

--
-- Name: relation_10; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_10 (
    apparel_id integer NOT NULL,
    size_system character varying(255),
    material character varying(255),
    role character varying(255),
    fit_type_women character varying(255),
    sole_material character varying(255)
);


ALTER TABLE public.relation_10 OWNER TO postgres;

--
-- Name: relation_11; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_11 (
    menclothing_id integer NOT NULL,
    fit_type_men character varying(255)
);


ALTER TABLE public.relation_11 OWNER TO postgres;

--
-- Name: relation_12; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_12 (
    media_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    delivery_type character varying(255),
    format character varying(255),
    category_products_category_id integer
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
    mv_user character varying(255)[]
);


ALTER TABLE public.relation_14 OWNER TO postgres;

--
-- Name: relation_15; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_15 (
    customer_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    loyalty_tier character varying(255),
    contact_no character varying(255)[],
    renewal_date character varying(255),
    subscription_addons character varying(255)[],
    role character varying(255)
);


ALTER TABLE public.relation_15 OWNER TO postgres;

--
-- Name: relation_16; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_16 (
    businesscustomer_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    loyalty_tier character varying(255),
    contact_no character varying(255)[],
    company_name character varying(255)
);


ALTER TABLE public.relation_16 OWNER TO postgres;

--
-- Name: relation_17; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_17 (
    employee_id integer NOT NULL,
    email character varying(255),
    password_hash character varying(255),
    mv_user character varying(255)[],
    employee_no character varying(255),
    office_site character varying(255),
    role character varying(255),
    shift character varying(255)
);


ALTER TABLE public.relation_17 OWNER TO postgres;

--
-- Name: relation_18; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_18 (
    engineer_id integer NOT NULL,
    level character varying(255)
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
    digitalproduct_id integer NOT NULL,
    delivery_type character varying(255)
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
    department character varying(255)
);


ALTER TABLE public.relation_20 OWNER TO postgres;

--
-- Name: relation_21; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_21 (
    product_id integer NOT NULL,
    image_id integer NOT NULL,
    url character varying(255),
    alt_text character varying(255),
    sort_order integer
);


ALTER TABLE public.relation_21 OWNER TO postgres;

--
-- Name: relation_22; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_22 (
    product_id integer NOT NULL,
    variant_id integer NOT NULL,
    price_override integer,
    barcode character varying(255),
    is_active_variant integer
);


ALTER TABLE public.relation_22 OWNER TO postgres;

--
-- Name: relation_23; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_23 (
    product_id integer NOT NULL,
    price_id integer NOT NULL,
    starts_at character varying(255),
    ends_at character varying(255),
    price integer
);


ALTER TABLE public.relation_23 OWNER TO postgres;

--
-- Name: relation_24; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_24 (
    tag_id integer NOT NULL,
    tag_name character varying(255)
);


ALTER TABLE public.relation_24 OWNER TO postgres;

--
-- Name: relation_25; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_25 (
    customer_id integer NOT NULL,
    address_id integer NOT NULL,
    kind character varying(255),
    line1 character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    postal_code character varying(255)
);


ALTER TABLE public.relation_25 OWNER TO postgres;

--
-- Name: relation_26; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_26 (
    customer_id integer NOT NULL,
    payment_method_id integer NOT NULL,
    brand character varying(255),
    last4 character varying(255),
    exp_month integer,
    exp_year integer,
    is_default character varying(255)
);


ALTER TABLE public.relation_26 OWNER TO postgres;

--
-- Name: relation_27; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_27 (
    customer_id integer NOT NULL,
    updated_at character varying(255)
);


ALTER TABLE public.relation_27 OWNER TO postgres;

--
-- Name: relation_28; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_28 (
    customer_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    wishlist_name character varying(255)
);


ALTER TABLE public.relation_28 OWNER TO postgres;

--
-- Name: relation_29; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_29 (
    customer_id integer NOT NULL,
    review_id integer NOT NULL,
    rating integer,
    title character varying(255),
    body character varying(255),
    created_at character varying(255),
    reviews_product_id integer
);


ALTER TABLE public.relation_29 OWNER TO postgres;

--
-- Name: relation_3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_3 (
    electronics_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    warranty_months integer,
    cpu character varying(255),
    ram_gb integer,
    role character varying(255),
    carrier_lock character varying(255),
    category_products_category_id integer,
    single_bundle_phone_bundled_phone_electronics_id integer,
    bundled_phone_id integer
);


ALTER TABLE public.relation_3 OWNER TO postgres;

--
-- Name: relation_30; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_30 (
    user_id integer NOT NULL,
    session_id integer NOT NULL,
    started_at character varying(255),
    device character varying(255)
);


ALTER TABLE public.relation_30 OWNER TO postgres;

--
-- Name: relation_31; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_31 (
    custorder_id integer NOT NULL,
    placed_at character varying(255),
    status character varying(255),
    customer_orders_customer_id integer,
    payment_order_customer_id integer,
    payment_order_payment_method_id integer
);


ALTER TABLE public.relation_31 OWNER TO postgres;

--
-- Name: relation_32; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_32 (
    custorder_id integer NOT NULL,
    shipment_id integer NOT NULL,
    carrier character varying(255),
    tracking_no character varying(255),
    shipped_at character varying(255),
    delivered_at character varying(255),
    courier_shipments_courierpartner_id integer
);


ALTER TABLE public.relation_32 OWNER TO postgres;

--
-- Name: relation_33; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_33 (
    promotion_id integer NOT NULL,
    promo_name character varying(255),
    starts_at character varying(255),
    ends_at character varying(255),
    discount_type character varying(255),
    discount_value character varying(255)
);


ALTER TABLE public.relation_33 OWNER TO postgres;

--
-- Name: relation_34; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_34 (
    promotion_id integer NOT NULL,
    coupon_code integer NOT NULL,
    max_uses integer,
    per_user_limit integer,
    order_coupons_custorder_id integer
);


ALTER TABLE public.relation_34 OWNER TO postgres;

--
-- Name: relation_35; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_35 (
    warehouse_id integer NOT NULL,
    warehouse_name character varying(255),
    region character varying(255)
);


ALTER TABLE public.relation_35 OWNER TO postgres;

--
-- Name: relation_36; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_36 (
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL,
    code character varying(255)
);


ALTER TABLE public.relation_36 OWNER TO postgres;

--
-- Name: relation_37; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_37 (
    supplier_id integer NOT NULL,
    supplier_name character varying(255)
);


ALTER TABLE public.relation_37 OWNER TO postgres;

--
-- Name: relation_38; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_38 (
    supplier_id integer NOT NULL,
    contact_id integer NOT NULL,
    email character varying(255),
    phone character varying(255)
);


ALTER TABLE public.relation_38 OWNER TO postgres;

--
-- Name: relation_39; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_39 (
    purchaseorder_id integer NOT NULL,
    created_at character varying(255),
    status character varying(255),
    supplier_pos_supplier_id integer
);


ALTER TABLE public.relation_39 OWNER TO postgres;

--
-- Name: relation_4; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_4 (
    desktop_id integer NOT NULL,
    form_factor character varying(255)
);


ALTER TABLE public.relation_4 OWNER TO postgres;

--
-- Name: relation_40; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_40 (
    courierpartner_id integer NOT NULL,
    carrier_code character varying(255),
    webhook_url character varying(255)
);


ALTER TABLE public.relation_40 OWNER TO postgres;

--
-- Name: relation_41; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_41 (
    product_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.relation_41 OWNER TO postgres;

--
-- Name: relation_42; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_42 (
    product_id integer NOT NULL,
    bought_together_product_product_id integer NOT NULL
);


ALTER TABLE public.relation_42 OWNER TO postgres;

--
-- Name: relation_43; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_43 (
    customer_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_43 OWNER TO postgres;

--
-- Name: relation_44; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_44 (
    customer_id integer NOT NULL,
    wishlist_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_44 OWNER TO postgres;

--
-- Name: relation_45; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_45 (
    custorder_id integer NOT NULL,
    product_id integer NOT NULL
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
    product_id integer NOT NULL,
    warehouse_id integer NOT NULL,
    bin_id integer NOT NULL
);


ALTER TABLE public.relation_47 OWNER TO postgres;

--
-- Name: relation_48; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_48 (
    supplier_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_48 OWNER TO postgres;

--
-- Name: relation_49; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_49 (
    purchaseorder_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.relation_49 OWNER TO postgres;

--
-- Name: relation_5; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_5 (
    laptop_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    warranty_months integer,
    cpu character varying(255),
    ram_gb integer,
    battery_wh integer,
    category_products_category_id integer
);


ALTER TABLE public.relation_5 OWNER TO postgres;

--
-- Name: relation_50; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_50 (
    phone_id integer NOT NULL,
    bundle_phone_phone_id integer NOT NULL
);


ALTER TABLE public.relation_50 OWNER TO postgres;

--
-- Name: relation_6; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_6 (
    tablet_id integer NOT NULL,
    screen_size_in integer
);


ALTER TABLE public.relation_6 OWNER TO postgres;

--
-- Name: relation_7; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_7 (
    smartwatch_id integer NOT NULL,
    band_size character varying(255),
    bundled_phone_smart_watch_phone_id integer
);


ALTER TABLE public.relation_7 OWNER TO postgres;

--
-- Name: relation_8; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_8 (
    camera_id integer NOT NULL,
    sensor_mp integer
);


ALTER TABLE public.relation_8 OWNER TO postgres;

--
-- Name: relation_9; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relation_9 (
    accessories_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    warranty_months integer,
    accessory_type character varying(255),
    category_products_category_id integer
);


ALTER TABLE public.relation_9 OWNER TO postgres;

--
-- Name: temp_bundled_phone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.temp_bundled_phone (
    electronics_id integer NOT NULL,
    sku character varying(255),
    product_name character varying(255),
    base_price integer,
    is_active integer,
    quantity integer,
    mv_attributes character varying(255)[],
    dimensions character varying(255),
    warranty_months integer,
    cpu character varying(255),
    ram_gb integer,
    role character varying(255),
    carrier_lock character varying(255),
    category_products_category_id integer,
    single_bundle_phone_bundled_phone_electronics_id integer,
    bundled_phone_id integer
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
    dimensions character varying(255),
    role character varying(255),
    energy_rating character varying(255),
    warranty_years integer,
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
2	tables	[["relation_0", [["category_id", "INTEGER", "category_id", "category"], ["category_name", "VARCHAR(255)", "category.category_name", "category"], ["parent", "INTEGER", "category.parent", "category"]], false, ["category_id"]], ["relation_1", [["product_id", "INTEGER", "product_id", "product"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["role", "VARCHAR(255)", "role", "physicalproduct"], ["energy_rating", "VARCHAR(255)", "appliance.energy_rating", "appliance"], ["warranty_years", "INTEGER", "kitchenappliance.warranty_years", "kitchenappliance"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["product_id"]], ["relation_2", [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct"], ["delivery_type", "VARCHAR(255)", "digitalproduct.delivery_type", "digitalproduct"]], false, ["digitalproduct_id"]], ["relation_3", [["electronics_id", "INTEGER", "electronics_id", "electronics"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["role", "VARCHAR(255)", "role", "computer"], ["carrier_lock", "VARCHAR(255)", "phone.carrier_lock", "phone"], ["category_products_category_id", "INTEGER", "category_id", "category_products"], ["single_bundle_phone_bundled_phone_electronics_id", "INTEGER", "electronics_id", "bundled_phone"], ["bundled_phone_id", "INTEGER", "bundled_phone_id", "bundled_phone"]], true, ["electronics_id"]], ["relation_4", [["desktop_id", "INTEGER", "desktop_id", "desktop"], ["form_factor", "VARCHAR(255)", "desktop.form_factor", "desktop"]], false, ["desktop_id"]], ["relation_5", [["laptop_id", "INTEGER", "laptop_id", "laptop"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["cpu", "VARCHAR(255)", "computer.cpu", "computer"], ["ram_gb", "INTEGER", "computer.ram_gb", "computer"], ["battery_wh", "INTEGER", "laptop.battery_wh", "laptop"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["laptop_id"]], ["relation_6", [["tablet_id", "INTEGER", "tablet_id", "tablet"], ["screen_size_in", "INTEGER", "tablet.screen_size_in", "tablet"]], false, ["tablet_id"]], ["relation_7", [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch"], ["band_size", "VARCHAR(255)", "smartwatch.band_size", "smartwatch"], ["bundled_phone_smart_watch_phone_id", "INTEGER", "electronics_id", "bundled_phone_smart_watch"]], true, ["smartwatch_id"]], ["relation_8", [["camera_id", "INTEGER", "camera_id", "camera"], ["sensor_mp", "INTEGER", "camera.sensor_mp", "camera"]], false, ["camera_id"]], ["relation_9", [["accessories_id", "INTEGER", "accessories_id", "accessories"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["dimensions", "VARCHAR(255)", "physicalproduct.dimensions", "physicalproduct"], ["warranty_months", "INTEGER", "electronics.warranty_months", "electronics"], ["accessory_type", "VARCHAR(255)", "accessories.accessory_type", "accessories"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["accessories_id"]], ["relation_10", [["apparel_id", "INTEGER", "apparel_id", "apparel"], ["size_system", "VARCHAR(255)", "apparel.size_system", "apparel"], ["material", "VARCHAR(255)", "clothing.material", "clothing"], ["role", "VARCHAR(255)", "role", "clothing"], ["fit_type_women", "VARCHAR(255)", "womenclothing.fit_type_women", "womenclothing"], ["sole_material", "VARCHAR(255)", "footwear.sole_material", "footwear"]], false, ["apparel_id"]], ["relation_11", [["menclothing_id", "INTEGER", "menclothing_id", "menclothing"], ["fit_type_men", "VARCHAR(255)", "menclothing.fit_type_men", "menclothing"]], false, ["menclothing_id"]], ["relation_12", [["media_id", "INTEGER", "media_id", "media"], ["sku", "VARCHAR(255)", "product.sku", "product"], ["product_name", "VARCHAR(255)", "product.product_name", "product"], ["base_price", "INTEGER", "product.base_price", "product"], ["is_active", "INTEGER", "product.is_active", "product"], ["quantity", "INTEGER", "product.quantity", "product"], ["mv_attributes", "VARCHAR(255)[]", "product.mv_attributes", "product"], ["delivery_type", "VARCHAR(255)", "digitalproduct.delivery_type", "digitalproduct"], ["format", "VARCHAR(255)", "media.format", "media"], ["category_products_category_id", "INTEGER", "category_id", "category_products"]], true, ["media_id"]], ["relation_13", [["software_id", "INTEGER", "software_id", "software"], ["license_type", "VARCHAR(255)", "software.license_type", "software"]], false, ["software_id"]], ["relation_14", [["user_id", "INTEGER", "user_id", "user"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"]], false, ["user_id"]], ["relation_15", [["customer_id", "INTEGER", "customer_id", "customer"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["contact_no", "VARCHAR(255)[]", "customer.contact_no", "customer"], ["renewal_date", "VARCHAR(255)", "primecustomer.renewal_date", "primecustomer"], ["subscription_addons", "VARCHAR(255)[]", "primecustomer.subscription_addons", "primecustomer"], ["role", "VARCHAR(255)", "role", "primecustomer"]], false, ["customer_id"]], ["relation_16", [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["loyalty_tier", "VARCHAR(255)", "customer.loyalty_tier", "customer"], ["contact_no", "VARCHAR(255)[]", "customer.contact_no", "customer"], ["company_name", "VARCHAR(255)", "businesscustomer.company_name", "businesscustomer"]], false, ["businesscustomer_id"]], ["relation_17", [["employee_id", "INTEGER", "employee_id", "employee"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["office_site", "VARCHAR(255)", "corporateemployee.office_site", "corporateemployee"], ["role", "VARCHAR(255)", "role", "corporateemployee"], ["shift", "VARCHAR(255)", "fulfillmentassociate.shift", "fulfillmentassociate"]], false, ["employee_id"]], ["relation_18", [["engineer_id", "INTEGER", "engineer_id", "engineer"], ["level", "VARCHAR(255)", "engineer.level", "engineer"]], false, ["engineer_id"]], ["relation_19", [["supportagent_id", "INTEGER", "supportagent_id", "supportagent"], ["queue", "VARCHAR(255)", "supportagent.queue", "supportagent"]], false, ["supportagent_id"]], ["relation_20", [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager"], ["email", "VARCHAR(255)", "user.email", "user"], ["password_hash", "VARCHAR(255)", "user.password_hash", "user"], ["mv_user", "VARCHAR(255)[]", "user.mv_user", "user"], ["employee_no", "VARCHAR(255)", "employee.employee_no", "employee"], ["department", "VARCHAR(255)", "categorymanager.department", "categorymanager"]], false, ["categorymanager_id"]], ["relation_21", [["product_id", "INTEGER", "product_id", "productimage"], ["image_id", "INTEGER", "productimage.image_id", "productimage"], ["url", "VARCHAR(255)", "productimage.url", "productimage"], ["alt_text", "VARCHAR(255)", "productimage.alt_text", "productimage"], ["sort_order", "INTEGER", "productimage.sort_order", "productimage"]], false, ["product_id", "image_id"]], ["relation_22", [["product_id", "INTEGER", "product_id", "productvariant"], ["variant_id", "INTEGER", "productvariant.variant_id", "productvariant"], ["price_override", "INTEGER", "productvariant.price_override", "productvariant"], ["barcode", "VARCHAR(255)", "productvariant.barcode", "productvariant"], ["is_active_variant", "INTEGER", "productvariant.is_active_variant", "productvariant"]], false, ["product_id", "variant_id"]], ["relation_23", [["product_id", "INTEGER", "product_id", "pricehistory"], ["price_id", "INTEGER", "pricehistory.price_id", "pricehistory"], ["starts_at", "VARCHAR(255)", "pricehistory.starts_at", "pricehistory"], ["ends_at", "VARCHAR(255)", "pricehistory.ends_at", "pricehistory"], ["price", "INTEGER", "pricehistory.price", "pricehistory"]], false, ["product_id", "price_id"]], ["relation_24", [["tag_id", "INTEGER", "tag_id", "tag"], ["tag_name", "VARCHAR(255)", "tag.tag_name", "tag"]], false, ["tag_id"]], ["relation_25", [["customer_id", "INTEGER", "customer_id", "address"], ["address_id", "INTEGER", "address.address_id", "address"], ["kind", "VARCHAR(255)", "address.kind", "address"], ["line1", "VARCHAR(255)", "address.line1", "address"], ["city", "VARCHAR(255)", "address.city", "address"], ["state", "VARCHAR(255)", "address.state", "address"], ["country", "VARCHAR(255)", "address.country", "address"], ["postal_code", "VARCHAR(255)", "address.postal_code", "address"]], false, ["customer_id", "address_id"]], ["relation_26", [["customer_id", "INTEGER", "customer_id", "paymentmethod"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "paymentmethod"], ["brand", "VARCHAR(255)", "paymentmethod.brand", "paymentmethod"], ["last4", "VARCHAR(255)", "paymentmethod.last4", "paymentmethod"], ["exp_month", "INTEGER", "paymentmethod.exp_month", "paymentmethod"], ["exp_year", "INTEGER", "paymentmethod.exp_year", "paymentmethod"], ["is_default", "VARCHAR(255)", "paymentmethod.is_default", "paymentmethod"]], false, ["customer_id", "payment_method_id"]], ["relation_27", [["customer_id", "INTEGER", "customer_id", "cart"], ["updated_at", "VARCHAR(255)", "cart.updated_at", "cart"]], false, ["customer_id"]], ["relation_28", [["customer_id", "INTEGER", "customer_id", "wishlist"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist"], ["wishlist_name", "VARCHAR(255)", "wishlist.wishlist_name", "wishlist"]], false, ["customer_id", "wishlist_id"]], ["relation_29", [["customer_id", "INTEGER", "customer_id", "review"], ["review_id", "INTEGER", "review.review_id", "review"], ["rating", "INTEGER", "review.rating", "review"], ["title", "VARCHAR(255)", "review.title", "review"], ["body", "VARCHAR(255)", "review.body", "review"], ["created_at", "VARCHAR(255)", "review.created_at", "review"], ["reviews_product_id", "INTEGER", "product_id", "reviews"]], true, ["customer_id", "review_id"]], ["relation_30", [["user_id", "INTEGER", "user_id", "browsingsession"], ["session_id", "INTEGER", "browsingsession.session_id", "browsingsession"], ["started_at", "VARCHAR(255)", "browsingsession.started_at", "browsingsession"], ["device", "VARCHAR(255)", "browsingsession.device", "browsingsession"]], false, ["user_id", "session_id"]], ["relation_31", [["custorder_id", "INTEGER", "custorder_id", "custorder"], ["placed_at", "VARCHAR(255)", "custorder.placed_at", "custorder"], ["status", "VARCHAR(255)", "custorder.status", "custorder"], ["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders"], ["payment_order_customer_id", "INTEGER", "customer_id", "payment_order"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order"]], true, ["custorder_id"]], ["relation_32", [["custorder_id", "INTEGER", "custorder_id", "shipment"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment"], ["carrier", "VARCHAR(255)", "shipment.carrier", "shipment"], ["tracking_no", "VARCHAR(255)", "shipment.tracking_no", "shipment"], ["shipped_at", "VARCHAR(255)", "shipment.shipped_at", "shipment"], ["delivered_at", "VARCHAR(255)", "shipment.delivered_at", "shipment"], ["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments"]], true, ["custorder_id", "shipment_id"]], ["relation_33", [["promotion_id", "INTEGER", "promotion_id", "promotion"], ["promo_name", "VARCHAR(255)", "promotion.promo_name", "promotion"], ["starts_at", "VARCHAR(255)", "promotion.starts_at", "promotion"], ["ends_at", "VARCHAR(255)", "promotion.ends_at", "promotion"], ["discount_type", "VARCHAR(255)", "promotion.discount_type", "promotion"], ["discount_value", "VARCHAR(255)", "promotion.discount_value", "promotion"]], false, ["promotion_id"]], ["relation_34", [["promotion_id", "INTEGER", "promotion_id", "coupon"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon"], ["max_uses", "INTEGER", "coupon.max_uses", "coupon"], ["per_user_limit", "INTEGER", "coupon.per_user_limit", "coupon"], ["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons"]], true, ["promotion_id", "coupon_code"]], ["relation_35", [["warehouse_id", "INTEGER", "warehouse_id", "warehouse"], ["warehouse_name", "VARCHAR(255)", "warehouse.warehouse_name", "warehouse"], ["region", "VARCHAR(255)", "warehouse.region", "warehouse"]], false, ["warehouse_id"]], ["relation_36", [["warehouse_id", "INTEGER", "warehouse_id", "warehousebin"], ["bin_id", "INTEGER", "warehousebin.bin_id", "warehousebin"], ["code", "VARCHAR(255)", "warehousebin.code", "warehousebin"]], false, ["warehouse_id", "bin_id"]], ["relation_37", [["supplier_id", "INTEGER", "supplier_id", "supplier"], ["supplier_name", "VARCHAR(255)", "supplier.supplier_name", "supplier"]], false, ["supplier_id"]], ["relation_38", [["supplier_id", "INTEGER", "supplier_id", "suppliercontact"], ["contact_id", "INTEGER", "suppliercontact.contact_id", "suppliercontact"], ["email", "VARCHAR(255)", "suppliercontact.email", "suppliercontact"], ["phone", "VARCHAR(255)", "suppliercontact.phone", "suppliercontact"]], false, ["supplier_id", "contact_id"]], ["relation_39", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder"], ["created_at", "VARCHAR(255)", "purchaseorder.created_at", "purchaseorder"], ["status", "VARCHAR(255)", "purchaseorder.status", "purchaseorder"], ["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos"]], true, ["purchaseorder_id"]], ["relation_40", [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner"], ["carrier_code", "VARCHAR(255)", "courierpartner.carrier_code", "courierpartner"], ["webhook_url", "VARCHAR(255)", "courierpartner.webhook_url", "courierpartner"]], false, ["courierpartner_id"]], ["relation_41", [["product_id", "INTEGER", "product_id", "product_tags"], ["tag_id", "INTEGER", "tag_id", "product_tags"]], false, ["product_id", "tag_id"]], ["relation_42", [["product_id", "INTEGER", "product_id", "bought_together"], ["bought_together_product_product_id", "INTEGER", "product_id", "bought_together"]], false, ["product_id", "bought_together_product_product_id"]], ["relation_43", [["customer_id", "INTEGER", "customer_id", "cart_contains"], ["product_id", "INTEGER", "product_id", "cart_contains"]], false, ["customer_id", "product_id"]], ["relation_44", [["customer_id", "INTEGER", "customer_id", "wishlist_contains"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_contains"], ["product_id", "INTEGER", "product_id", "wishlist_contains"]], false, ["customer_id", "wishlist_id", "product_id"]], ["relation_45", [["custorder_id", "INTEGER", "custorder_id", "order_items"], ["product_id", "INTEGER", "product_id", "order_items"]], false, ["custorder_id", "product_id"]], ["relation_46", [["custorder_id", "INTEGER", "custorder_id", "order_returns"], ["product_id", "INTEGER", "product_id", "order_returns"]], false, ["custorder_id", "product_id"]], ["relation_47", [["product_id", "INTEGER", "product_id", "stock"], ["warehouse_id", "INTEGER", "warehouse_id", "stock"], ["bin_id", "INTEGER", "warehousebin.bin_id", "stock"]], false, ["product_id", "warehouse_id", "bin_id"]], ["relation_48", [["supplier_id", "INTEGER", "supplier_id", "supplier_products"], ["product_id", "INTEGER", "product_id", "supplier_products"]], false, ["supplier_id", "product_id"]], ["relation_49", [["purchaseorder_id", "INTEGER", "purchaseorder_id", "po_items"], ["product_id", "INTEGER", "product_id", "po_items"]], false, ["purchaseorder_id", "product_id"]], ["relation_50", [["phone_id", "INTEGER", "electronics_id", "bundle_phones"], ["bundle_phone_phone_id", "INTEGER", "electronics_id", "bundle_phones"]], false, ["phone_id", "bundle_phone_phone_id"]]]
3	types	{}
4	graph	{"cost": 30913325.30229633, "edges": [{"type": "edge", "source": "product.mv_attributes", "target": "product", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "physicalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "digitalproduct", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "electronics", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "computer", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "desktop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "laptop", "target": "computer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "tablet", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "smartwatch", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "camera", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "phone", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "accessories", "target": "electronics", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "appliance", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "kitchenappliance", "target": "appliance", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "apparel", "target": "physicalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "clothing", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "menclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "womenclothing", "target": "clothing", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "footwear", "target": "apparel", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "media", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "software", "target": "digitalproduct", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "user.mv_user", "target": "user", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer.contact_no", "target": "customer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "customer", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "primecustomer.subscription_addons", "target": "primecustomer", "edge_type": "ENTITY_ATTRIBUTE"}, {"type": "edge", "source": "primecustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "businesscustomer", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "employee", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "corporateemployee", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "engineer", "target": "corporateemployee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "supportagent", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "fulfillmentassociate", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "categorymanager", "target": "employee", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productimage", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "productvariant", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "pricehistory", "target": "product", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "address", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "paymentmethod", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "cart", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "wishlist", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "review", "target": "customer", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "browsingsession", "target": "user", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "shipment", "target": "custorder", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "coupon", "target": "promotion", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "warehousebin", "target": "warehouse", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "suppliercontact", "target": "supplier", "edge_type": "ENTITY_ENTITY"}, {"type": "edge", "source": "category_products", "target": "category", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "category_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "product_tags", "target": "tag", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bought_together", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "cart", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "cart_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "wishlist", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "wishlist_contains", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "reviews", "target": "review", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "customer", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "customer_orders", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "paymentmethod", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "payment_order", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_returns", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "custorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "order_coupons", "target": "coupon", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "stock", "target": "warehousebin", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_products", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "supplier", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "supplier_pos", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "purchaseorder", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "po_items", "target": "product", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "courierpartner", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "courier_shipments", "target": "shipment", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundle_phones", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone_smart_watch", "target": "smartwatch", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}, {"type": "edge", "source": "bundled_phone", "target": "phone", "edge_type": "ENTITY_RELATIONSHIP"}], "nodes": [{"key": {"table_key": [["category_id", "INTEGER", "category_id", "category_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["category"]}, "name": "Category", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 1, "attributes": ["category.category_id", "category.category_name", "category.parent"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "category_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "category_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "parent", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Category", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[1, "relation_0"]], "unique_name": "category", "mapped_table": [1, "relation_0"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "category_id", "pk_type": "INTEGER", "pk_ER_name": "category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "category_name", "type": "VARCHAR", "unique_name": "category.category_name", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "parent", "type": "INT", "unique_name": "category.parent", "is_flattened": null, "mapped_table": [1, "relation_0"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "category", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["category"], "select_frequency": 2, "select_all_tables": [[1, "relation_0"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "category_id", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 2, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.category_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "category_name", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 3, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "category.category_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "parent", "type": "ATTRIBUTE", "entity": "category", "children": [], "sort_key": 4, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "category.parent", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["product"]}, "name": "Product", "type": "ENTITY", "is_mvds": true, "children": ["physicalproduct", "digitalproduct"], "is_total": null, "sort_key": 5, "attributes": ["product.product_id", "product.sku", "product.product_name", "product.base_price", "product.is_active", "product.quantity", "product.mv_attributes"], "node_cover": ["product", "electronics", "laptop", "accessories", "media"], "entity_dict": {"attributes": [{"attr_name": "product_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sku", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "product_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "base_price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "quantity", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_attributes", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Product", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[5, "relation_1"]], "unique_name": "product", "mapped_table": [5, "relation_1"], "parent_entity": null, "relation_size": 2100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["product"], "select_frequency": 10, "select_all_tables": [[5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "product_id", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 6, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.product_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sku", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 7, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.sku", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "product_name", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 8, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.product_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "base_price", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 9, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.base_price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 10, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.is_active", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "quantity", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 11, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "product.quantity", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["mv_attributes", "VARCHAR(255)", "product.mv_attributes", "mv_attributes"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": null}, "name": "mv_attributes", "type": "ATTRIBUTE", "entity": "product", "children": [], "sort_key": 12, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "product.mv_attributes", "is_composite": false, "is_flattened": false, "mapped_table": [5, "relation_1"], "relation_size": 3144, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "physicalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["physicalproduct"]}, "name": "PhysicalProduct", "type": "ENTITY", "is_mvds": false, "children": ["electronics", "appliance", "apparel"], "is_total": true, "sort_key": 13, "attributes": ["physicalproduct.dimensions"], "node_cover": ["physicalproduct", "electronics", "laptop", "accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "dimensions", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PhysicalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"]], "unique_name": "physicalproduct", "mapped_table": [5, "relation_1"], "parent_entity": "product", "relation_size": 1700, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "physicalproduct_id", "pk_entity_name": "physicalproduct", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["physicalproduct"], "select_frequency": 5, "select_all_tables": [[5, "relation_1"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "dimensions", "type": "ATTRIBUTE", "entity": "physicalproduct", "children": [], "sort_key": 14, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "physicalproduct.dimensions", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["digitalproduct"]}, "name": "DigitalProduct", "type": "ENTITY", "is_mvds": false, "children": ["media", "software"], "is_total": true, "sort_key": 15, "attributes": ["digitalproduct.delivery_type"], "node_cover": ["digitalproduct", "media"], "entity_dict": {"total": true, "attributes": [{"attr_name": "delivery_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "DigitalProduct", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"], [15, "relation_2"]], "unique_name": "digitalproduct", "mapped_table": [15, "relation_2"], "parent_entity": "product", "relation_size": 300, "attribute_list": [{"pk_name": "digitalproduct_id", "pk_type": "INTEGER", "pk_ER_name": "digitalproduct_id", "pk_entity_name": "digitalproduct", "pk_unique_name": "digitalproduct_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["digitalproduct"], "select_frequency": 2, "select_all_tables": [[5, "relation_1"], [15, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "delivery_type", "type": "ATTRIBUTE", "entity": "digitalproduct", "children": [], "sort_key": 16, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "digitalproduct.delivery_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_1"], "table_key_entities": ["electronics"]}, "name": "Electronics", "type": "ENTITY", "is_mvds": false, "children": ["computer", "tablet", "smartwatch", "camera", "phone", "accessories"], "is_total": true, "sort_key": 17, "attributes": ["electronics.warranty_months"], "node_cover": ["electronics", "laptop", "accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_months", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Electronics", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_3"]], "unique_name": "electronics", "mapped_table": [17, "relation_3"], "parent_entity": "physicalproduct", "relation_size": 900, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "electronics_id", "pk_entity_name": "electronics", "pk_unique_name": "electronics_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["electronics"], "select_frequency": 1, "select_all_tables": [[17, "relation_3"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warranty_months", "type": "ATTRIBUTE", "entity": "electronics", "children": [], "sort_key": 18, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "electronics.warranty_months", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "computer_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_3"], "table_key_entities": ["computer"]}, "name": "Computer", "type": "ENTITY", "is_mvds": false, "children": ["desktop", "laptop"], "is_total": true, "sort_key": 19, "attributes": ["computer.cpu", "computer.ram_gb"], "node_cover": ["computer", "laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "cpu", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ram_gb", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Computer", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_3"]], "unique_name": "computer", "mapped_table": [17, "relation_3"], "parent_entity": "electronics", "relation_size": 300, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "computer_id", "pk_entity_name": "computer", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["computer"], "select_frequency": 10, "select_all_tables": [[17, "relation_3"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "cpu", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 20, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "computer.cpu", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ram_gb", "type": "ATTRIBUTE", "entity": "computer", "children": [], "sort_key": 21, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "computer.ram_gb", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["desktop_id", "INTEGER", "desktop_id", "desktop_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_3"], "table_key_entities": ["desktop"]}, "name": "Desktop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 22, "attributes": ["desktop.form_factor"], "node_cover": ["desktop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "form_factor", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Desktop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[22, "relation_4"], [17, "relation_3"]], "unique_name": "desktop", "mapped_table": [22, "relation_4"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "desktop_id", "pk_type": "INTEGER", "pk_ER_name": "desktop_id", "pk_entity_name": "desktop", "pk_unique_name": "desktop_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "form_factor", "type": "VARCHAR", "unique_name": "desktop.form_factor", "is_flattened": null, "mapped_table": [22, "relation_4"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "desktop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["desktop"], "select_frequency": 10, "select_all_tables": [[22, "relation_4"], [17, "relation_3"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "form_factor", "type": "ATTRIBUTE", "entity": "desktop", "children": [], "sort_key": 23, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "desktop.form_factor", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["laptop_id", "INTEGER", "laptop_id", "laptop_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "computer_id"]], "reference_node": ["computer"], "reference_table": ["relation_3"], "table_key_entities": ["laptop"]}, "name": "Laptop", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 24, "attributes": ["laptop.battery_wh"], "node_cover": ["laptop"], "entity_dict": {"total": true, "attributes": [{"attr_name": "battery_wh", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Laptop", "entity_type": null, "parent_entity": "Computer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[24, "relation_5"]], "unique_name": "laptop", "mapped_table": [24, "relation_5"], "parent_entity": "computer", "relation_size": 100, "attribute_list": [{"pk_name": "laptop_id", "pk_type": "INTEGER", "pk_ER_name": "laptop_id", "pk_entity_name": "laptop", "pk_unique_name": "laptop_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "computer"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "cpu", "type": "VARCHAR", "unique_name": "computer.cpu", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ram_gb", "type": "INT", "unique_name": "computer.ram_gb", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "computer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "battery_wh", "type": "INT", "unique_name": "laptop.battery_wh", "is_flattened": null, "mapped_table": [24, "relation_5"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "laptop", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["laptop"], "select_frequency": 5, "select_all_tables": [[24, "relation_5"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "battery_wh", "type": "ATTRIBUTE", "entity": "laptop", "children": [], "sort_key": 25, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "laptop.battery_wh", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tablet_id", "INTEGER", "tablet_id", "tablet_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_3"], "table_key_entities": ["tablet"]}, "name": "Tablet", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 26, "attributes": ["tablet.screen_size_in"], "node_cover": ["tablet"], "entity_dict": {"total": true, "attributes": [{"attr_name": "screen_size_in", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tablet", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[26, "relation_6"], [17, "relation_3"]], "unique_name": "tablet", "mapped_table": [26, "relation_6"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "tablet_id", "pk_type": "INTEGER", "pk_ER_name": "tablet_id", "pk_entity_name": "tablet", "pk_unique_name": "tablet_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "screen_size_in", "type": "INT", "unique_name": "tablet.screen_size_in", "is_flattened": null, "mapped_table": [26, "relation_6"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tablet", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["tablet"], "select_frequency": 1, "select_all_tables": [[26, "relation_6"], [17, "relation_3"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "screen_size_in", "type": "ATTRIBUTE", "entity": "tablet", "children": [], "sort_key": 27, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tablet.screen_size_in", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_3"], "table_key_entities": ["smartwatch"]}, "name": "Smartwatch", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 28, "attributes": ["smartwatch.band_size"], "node_cover": ["smartwatch"], "entity_dict": {"total": true, "attributes": [{"attr_name": "band_size", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Smartwatch", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[28, "relation_7"], [17, "relation_3"]], "unique_name": "smartwatch", "mapped_table": [28, "relation_7"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "band_size", "type": "VARCHAR", "unique_name": "smartwatch.band_size", "is_flattened": null, "mapped_table": [28, "relation_7"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "smartwatch", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["smartwatch"], "select_frequency": 1, "select_all_tables": [[28, "relation_7"], [17, "relation_3"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "band_size", "type": "ATTRIBUTE", "entity": "smartwatch", "children": [], "sort_key": 29, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "smartwatch.band_size", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["camera_id", "INTEGER", "camera_id", "camera_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_3"], "table_key_entities": ["camera"]}, "name": "Camera", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 30, "attributes": ["camera.sensor_mp"], "node_cover": ["camera"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sensor_mp", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Camera", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[30, "relation_8"], [17, "relation_3"]], "unique_name": "camera", "mapped_table": [30, "relation_8"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "camera_id", "pk_type": "INTEGER", "pk_ER_name": "camera_id", "pk_entity_name": "camera", "pk_unique_name": "camera_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sensor_mp", "type": "INT", "unique_name": "camera.sensor_mp", "is_flattened": null, "mapped_table": [30, "relation_8"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "camera", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["camera"], "select_frequency": 2, "select_all_tables": [[30, "relation_8"], [17, "relation_3"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "electronics"}, {"key": null, "name": "sensor_mp", "type": "ATTRIBUTE", "entity": "camera", "children": [], "sort_key": 31, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "camera.sensor_mp", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["electronics_id", "INTEGER", "electronics_id", "phone_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_3"], "table_key_entities": ["phone"]}, "name": "Phone", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 32, "attributes": ["phone.carrier_lock"], "node_cover": ["phone"], "entity_dict": {"total": true, "attributes": [{"attr_name": "carrier_lock", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Phone", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[17, "relation_3"]], "unique_name": "phone", "mapped_table": [17, "relation_3"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "carrier_lock", "type": "VARCHAR", "unique_name": "phone.carrier_lock", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "phone", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["phone"], "select_frequency": 10, "select_all_tables": [[17, "relation_3"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "carrier_lock", "type": "ATTRIBUTE", "entity": "phone", "children": [], "sort_key": 33, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "phone.carrier_lock", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["accessories_id", "INTEGER", "accessories_id", "accessories_id"]], "reference_key": [["electronics_id", "INTEGER", "electronics_id", "electronics_id"]], "reference_node": ["electronics"], "reference_table": ["relation_3"], "table_key_entities": ["accessories"]}, "name": "Accessories", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 34, "attributes": ["accessories.accessory_type"], "node_cover": ["accessories"], "entity_dict": {"total": true, "attributes": [{"attr_name": "accessory_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Accessories", "entity_type": null, "parent_entity": "Electronics"}, "is_no_table": false, "is_subclass": true, "node_tables": [[34, "relation_9"]], "unique_name": "accessories", "mapped_table": [34, "relation_9"], "parent_entity": "electronics", "relation_size": 100, "attribute_list": [{"pk_name": "accessories_id", "pk_type": "INTEGER", "pk_ER_name": "accessories_id", "pk_entity_name": "accessories", "pk_unique_name": "accessories_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": "electronics"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_months", "type": "INT", "unique_name": "electronics.warranty_months", "is_flattened": null, "mapped_table": [17, "relation_3"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "electronics", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "accessory_type", "type": "VARCHAR", "unique_name": "accessories.accessory_type", "is_flattened": null, "mapped_table": [34, "relation_9"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "accessories", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["accessories"], "select_frequency": 0, "select_all_tables": [[34, "relation_9"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "accessory_type", "type": "ATTRIBUTE", "entity": "accessories", "children": [], "sort_key": 35, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "accessories.accessory_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "appliance_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["appliance"]}, "name": "Appliance", "type": "ENTITY", "is_mvds": false, "children": ["kitchenappliance"], "is_total": true, "sort_key": 36, "attributes": ["appliance.energy_rating"], "node_cover": ["appliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "energy_rating", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Appliance", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"]], "unique_name": "appliance", "mapped_table": [5, "relation_1"], "parent_entity": "physicalproduct", "relation_size": 200, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "appliance_id", "pk_entity_name": "appliance", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["appliance"], "select_frequency": 1, "select_all_tables": [[5, "relation_1"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "energy_rating", "type": "ATTRIBUTE", "entity": "appliance", "children": [], "sort_key": 37, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "appliance.energy_rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["product_id", "INTEGER", "product_id", "kitchenappliance_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "product_id"]], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": ["kitchenappliance"]}, "name": "KitchenAppliance", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 38, "attributes": ["kitchenappliance.warranty_years"], "node_cover": ["kitchenappliance"], "entity_dict": {"total": true, "attributes": [{"attr_name": "warranty_years", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "KitchenAppliance", "entity_type": null, "parent_entity": "Appliance"}, "is_no_table": false, "is_subclass": true, "node_tables": [[5, "relation_1"]], "unique_name": "kitchenappliance", "mapped_table": [5, "relation_1"], "parent_entity": "appliance", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "kitchenappliance_id", "pk_entity_name": "kitchenappliance", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "energy_rating", "type": "VARCHAR", "unique_name": "appliance.energy_rating", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "appliance", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "warranty_years", "type": "INT", "unique_name": "kitchenappliance.warranty_years", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "kitchenappliance", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["kitchenappliance"], "select_frequency": 10, "select_all_tables": [[5, "relation_1"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warranty_years", "type": "ATTRIBUTE", "entity": "kitchenappliance", "children": [], "sort_key": 39, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "kitchenappliance.warranty_years", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_key": [["product_id", "INTEGER", "product_id", "physicalproduct_id"]], "reference_node": ["physicalproduct"], "reference_table": ["relation_1"], "table_key_entities": ["apparel"]}, "name": "Apparel", "type": "ENTITY", "is_mvds": false, "children": ["clothing", "footwear"], "is_total": true, "sort_key": 40, "attributes": ["apparel.size_system"], "node_cover": ["apparel"], "entity_dict": {"total": true, "attributes": [{"attr_name": "size_system", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Apparel", "entity_type": null, "parent_entity": "PhysicalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[40, "relation_10"], [5, "relation_1"]], "unique_name": "apparel", "mapped_table": [40, "relation_10"], "parent_entity": "physicalproduct", "relation_size": 500, "attribute_list": [{"pk_name": "apparel_id", "pk_type": "INTEGER", "pk_ER_name": "apparel_id", "pk_entity_name": "apparel", "pk_unique_name": "apparel_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "physicalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["apparel"], "select_frequency": 1, "select_all_tables": [[40, "relation_10"], [5, "relation_1"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": false, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "size_system", "type": "ATTRIBUTE", "entity": "apparel", "children": [], "sort_key": 41, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "apparel.size_system", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["apparel_id", "INTEGER", "apparel_id", "clothing_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_10"], "table_key_entities": ["clothing"]}, "name": "Clothing", "type": "ENTITY", "is_mvds": false, "children": ["menclothing", "womenclothing"], "is_total": true, "sort_key": 42, "attributes": ["clothing.material"], "node_cover": ["clothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Clothing", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[40, "relation_10"], [5, "relation_1"]], "unique_name": "clothing", "mapped_table": [40, "relation_10"], "parent_entity": "apparel", "relation_size": 300, "attribute_list": [{"pk_name": "apparel_id", "pk_type": "INTEGER", "pk_ER_name": "clothing_id", "pk_entity_name": "clothing", "pk_unique_name": "apparel_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [40, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["clothing"], "select_frequency": 10, "select_all_tables": [[40, "relation_10"], [5, "relation_1"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "material", "type": "ATTRIBUTE", "entity": "clothing", "children": [], "sort_key": 43, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "clothing.material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["menclothing_id", "INTEGER", "menclothing_id", "menclothing_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "clothing_id"]], "reference_node": ["clothing"], "reference_table": ["relation_10"], "table_key_entities": ["menclothing"]}, "name": "MenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 44, "attributes": ["menclothing.fit_type_men"], "node_cover": ["menclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_men", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "MenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[40, "relation_10"], [44, "relation_11"], [5, "relation_1"]], "unique_name": "menclothing", "mapped_table": [44, "relation_11"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "menclothing_id", "pk_type": "INTEGER", "pk_ER_name": "menclothing_id", "pk_entity_name": "menclothing", "pk_unique_name": "menclothing_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "clothing"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [40, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_men", "type": "VARCHAR", "unique_name": "menclothing.fit_type_men", "is_flattened": null, "mapped_table": [44, "relation_11"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "menclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["menclothing"], "select_frequency": 5, "select_all_tables": [[40, "relation_10"], [5, "relation_1"], [44, "relation_11"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "fit_type_men", "type": "ATTRIBUTE", "entity": "menclothing", "children": [], "sort_key": 45, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "menclothing.fit_type_men", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["apparel_id", "INTEGER", "apparel_id", "womenclothing_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_10"], "table_key_entities": ["womenclothing"]}, "name": "WomenClothing", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 46, "attributes": ["womenclothing.fit_type_women"], "node_cover": ["womenclothing"], "entity_dict": {"total": true, "attributes": [{"attr_name": "fit_type_women", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WomenClothing", "entity_type": null, "parent_entity": "Clothing"}, "is_no_table": false, "is_subclass": true, "node_tables": [[40, "relation_10"], [5, "relation_1"]], "unique_name": "womenclothing", "mapped_table": [40, "relation_10"], "parent_entity": "clothing", "relation_size": 100, "attribute_list": [{"pk_name": "apparel_id", "pk_type": "INTEGER", "pk_ER_name": "womenclothing_id", "pk_entity_name": "womenclothing", "pk_unique_name": "apparel_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "material", "type": "VARCHAR", "unique_name": "clothing.material", "is_flattened": null, "mapped_table": [40, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "clothing", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "fit_type_women", "type": "VARCHAR", "unique_name": "womenclothing.fit_type_women", "is_flattened": null, "mapped_table": [40, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "womenclothing", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["womenclothing"], "select_frequency": 20, "select_all_tables": [[40, "relation_10"], [5, "relation_1"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "fit_type_women", "type": "ATTRIBUTE", "entity": "womenclothing", "children": [], "sort_key": 47, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "womenclothing.fit_type_women", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["apparel_id", "INTEGER", "apparel_id", "footwear_id"]], "reference_key": [["apparel_id", "INTEGER", "apparel_id", "apparel_id"]], "reference_node": ["apparel"], "reference_table": ["relation_10"], "table_key_entities": ["footwear"]}, "name": "Footwear", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 48, "attributes": ["footwear.sole_material"], "node_cover": ["footwear"], "entity_dict": {"total": true, "attributes": [{"attr_name": "sole_material", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Footwear", "entity_type": null, "parent_entity": "Apparel"}, "is_no_table": false, "is_subclass": true, "node_tables": [[40, "relation_10"], [5, "relation_1"]], "unique_name": "footwear", "mapped_table": [40, "relation_10"], "parent_entity": "apparel", "relation_size": 100, "attribute_list": [{"pk_name": "apparel_id", "pk_type": "INTEGER", "pk_ER_name": "footwear_id", "pk_entity_name": "footwear", "pk_unique_name": "apparel_id", "pk_reference_key_name": "apparel_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "apparel_id", "pk_reference_node_unique_name": "apparel"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "dimensions", "type": "VARCHAR", "unique_name": "physicalproduct.dimensions", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "physicalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "size_system", "type": "VARCHAR", "unique_name": "apparel.size_system", "is_flattened": null, "mapped_table": [40, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "apparel", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sole_material", "type": "VARCHAR", "unique_name": "footwear.sole_material", "is_flattened": null, "mapped_table": [40, "relation_10"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "footwear", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["footwear"], "select_frequency": 20, "select_all_tables": [[40, "relation_10"], [5, "relation_1"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 10, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "sole_material", "type": "ATTRIBUTE", "entity": "footwear", "children": [], "sort_key": 49, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "footwear.sole_material", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["media_id", "INTEGER", "media_id", "media_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_2"], "table_key_entities": ["media"]}, "name": "Media", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 50, "attributes": ["media.format"], "node_cover": ["media"], "entity_dict": {"total": true, "attributes": [{"attr_name": "format", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Media", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[50, "relation_12"]], "unique_name": "media", "mapped_table": [50, "relation_12"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "media_id", "pk_type": "INTEGER", "pk_ER_name": "media_id", "pk_entity_name": "media", "pk_unique_name": "media_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "format", "type": "VARCHAR", "unique_name": "media.format", "is_flattened": null, "mapped_table": [50, "relation_12"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "media", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["media"], "select_frequency": 1, "select_all_tables": [[50, "relation_12"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "format", "type": "ATTRIBUTE", "entity": "media", "children": [], "sort_key": 51, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "media.format", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["software_id", "INTEGER", "software_id", "software_id"]], "reference_key": [["digitalproduct_id", "INTEGER", "digitalproduct_id", "digitalproduct_id"]], "reference_node": ["digitalproduct"], "reference_table": ["relation_2"], "table_key_entities": ["software"]}, "name": "Software", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 52, "attributes": ["software.license_type"], "node_cover": ["software"], "entity_dict": {"total": true, "attributes": [{"attr_name": "license_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Software", "entity_type": null, "parent_entity": "DigitalProduct"}, "is_no_table": false, "is_subclass": true, "node_tables": [[52, "relation_13"], [5, "relation_1"], [15, "relation_2"]], "unique_name": "software", "mapped_table": [52, "relation_13"], "parent_entity": "digitalproduct", "relation_size": 100, "attribute_list": [{"pk_name": "software_id", "pk_type": "INTEGER", "pk_ER_name": "software_id", "pk_entity_name": "software", "pk_unique_name": "software_id", "pk_reference_key_name": "digitalproduct_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "digitalproduct_id", "pk_reference_node_unique_name": "digitalproduct"}, {"name": "sku", "type": "VARCHAR", "unique_name": "product.sku", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "product_name", "type": "VARCHAR", "unique_name": "product.product_name", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "base_price", "type": "INT", "unique_name": "product.base_price", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active", "type": "INT", "unique_name": "product.is_active", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "quantity", "type": "INT", "unique_name": "product.quantity", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_attributes", "type": "VARCHAR", "unique_name": "product.mv_attributes", "is_flattened": null, "mapped_table": [5, "relation_1"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "product", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "delivery_type", "type": "VARCHAR", "unique_name": "digitalproduct.delivery_type", "is_flattened": null, "mapped_table": [15, "relation_2"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "digitalproduct", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "license_type", "type": "VARCHAR", "unique_name": "software.license_type", "is_flattened": null, "mapped_table": [52, "relation_13"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "software", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["software"], "select_frequency": 1, "select_all_tables": [[52, "relation_13"], [5, "relation_1"], [15, "relation_2"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "product"}, {"key": null, "name": "license_type", "type": "ATTRIBUTE", "entity": "software", "children": [], "sort_key": 53, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "software.license_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["user"]}, "name": "User", "type": "ENTITY", "is_mvds": true, "children": ["customer", "employee"], "is_total": null, "sort_key": 54, "attributes": ["user.email", "user.password_hash", "user.mv_user"], "node_cover": ["user", "customer", "businesscustomer", "employee", "categorymanager"], "entity_dict": {"attributes": [{"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "password_hash", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "mv_user", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "User", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[54, "relation_14"]], "unique_name": "user", "mapped_table": [54, "relation_14"], "parent_entity": null, "relation_size": 1000, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["user"], "select_frequency": 10, "select_all_tables": [[54, "relation_14"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_all_descendants"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 4, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 55, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "password_hash", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 56, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.password_hash", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["mv_user", "VARCHAR(255)", "user.mv_user", "mv_user"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_14"], "table_key_entities": null}, "name": "mv_user", "type": "ATTRIBUTE", "entity": "user", "children": [], "sort_key": 57, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "user.mv_user", "is_composite": false, "is_flattened": false, "mapped_table": [54, "relation_14"], "relation_size": 2458, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_14"], "table_key_entities": ["customer"]}, "name": "Customer", "type": "ENTITY", "is_mvds": true, "children": ["primecustomer", "businesscustomer"], "is_total": true, "sort_key": 58, "attributes": ["customer.loyalty_tier", "customer.contact_no"], "node_cover": ["customer", "businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "loyalty_tier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "contact_no", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Customer", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[58, "relation_15"]], "unique_name": "customer", "mapped_table": [58, "relation_15"], "parent_entity": "user", "relation_size": 300, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [58, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["customer"], "select_frequency": 6, "select_all_tables": [[58, "relation_15"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "loyalty_tier", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 59, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.loyalty_tier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["contact_no", "VARCHAR(255)", "customer.contact_no", "contact_no"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": null}, "name": "contact_no", "type": "ATTRIBUTE", "entity": "customer", "children": [], "sort_key": 60, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "customer.contact_no", "is_composite": false, "is_flattened": false, "mapped_table": [58, "relation_15"], "relation_size": 446, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["customer_id", "INTEGER", "customer_id", "primecustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": ["primecustomer"]}, "name": "PrimeCustomer", "type": "ENTITY", "is_mvds": true, "children": [], "is_total": true, "sort_key": 61, "attributes": ["primecustomer.renewal_date", "primecustomer.subscription_addons"], "node_cover": ["primecustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "renewal_date", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "subscription_addons", "attr_type": "VARCHAR", "is_multivalued": true, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PrimeCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[58, "relation_15"]], "unique_name": "primecustomer", "mapped_table": [58, "relation_15"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "primecustomer_id", "pk_entity_name": "primecustomer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [58, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "renewal_date", "type": "VARCHAR", "unique_name": "primecustomer.renewal_date", "is_flattened": null, "mapped_table": [58, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "subscription_addons", "type": "VARCHAR", "unique_name": "primecustomer.subscription_addons", "is_flattened": null, "mapped_table": [58, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "primecustomer", "is_in_separate_table": false, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["primecustomer"], "select_frequency": 1, "select_all_tables": [[58, "relation_15"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "renewal_date", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 62, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.renewal_date", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "primecustomer_id"]], [["subscription_addons", "VARCHAR(255)", "primecustomer.subscription_addons", "subscription_addons"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["primecustomer"], "reference_table": ["relation_15"], "table_key_entities": null}, "name": "subscription_addons", "type": "ATTRIBUTE", "entity": "primecustomer", "children": [], "sort_key": 63, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "primecustomer.subscription_addons", "is_composite": false, "is_flattened": false, "mapped_table": [58, "relation_15"], "relation_size": 239, "is_multivalued": true, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": ["all_by_itself", "contained_in_parent"], "node_type_for_partitioning_options": "multi_valued_attribute"}, {"key": {"table_key": [["businesscustomer_id", "INTEGER", "businesscustomer_id", "businesscustomer_id"]], "reference_key": [["customer_id", "INTEGER", "customer_id", "customer_id"]], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": ["businesscustomer"]}, "name": "BusinessCustomer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 64, "attributes": ["businesscustomer.company_name"], "node_cover": ["businesscustomer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "company_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BusinessCustomer", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": true, "node_tables": [[64, "relation_16"]], "unique_name": "businesscustomer", "mapped_table": [64, "relation_16"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "businesscustomer_id", "pk_type": "INTEGER", "pk_ER_name": "businesscustomer_id", "pk_entity_name": "businesscustomer", "pk_unique_name": "businesscustomer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "loyalty_tier", "type": "VARCHAR", "unique_name": "customer.loyalty_tier", "is_flattened": null, "mapped_table": [58, "relation_15"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "contact_no", "type": "VARCHAR", "unique_name": "customer.contact_no", "is_flattened": null, "mapped_table": [58, "relation_15"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "customer", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "company_name", "type": "VARCHAR", "unique_name": "businesscustomer.company_name", "is_flattened": null, "mapped_table": [64, "relation_16"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "businesscustomer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["businesscustomer"], "select_frequency": 1, "select_all_tables": [[64, "relation_16"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "company_name", "type": "ATTRIBUTE", "entity": "businesscustomer", "children": [], "sort_key": 65, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "businesscustomer.company_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_key": [["user_id", "INTEGER", "user_id", "user_id"]], "reference_node": ["user"], "reference_table": ["relation_14"], "table_key_entities": ["employee"]}, "name": "Employee", "type": "ENTITY", "is_mvds": false, "children": ["corporateemployee", "supportagent", "fulfillmentassociate", "categorymanager"], "is_total": true, "sort_key": 66, "attributes": ["employee.employee_no"], "node_cover": ["employee", "categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "employee_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Employee", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": true, "node_tables": [[66, "relation_17"]], "unique_name": "employee", "mapped_table": [66, "relation_17"], "parent_entity": "user", "relation_size": 600, "attribute_list": [{"pk_name": "employee_id", "pk_type": "INTEGER", "pk_ER_name": "employee_id", "pk_entity_name": "employee", "pk_unique_name": "employee_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["employee"], "select_frequency": 2, "select_all_tables": [[66, "relation_17"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "employee_no", "type": "ATTRIBUTE", "entity": "employee", "children": [], "sort_key": 67, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "employee.employee_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["employee_id", "INTEGER", "employee_id", "corporateemployee_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_17"], "table_key_entities": ["corporateemployee"]}, "name": "CorporateEmployee", "type": "ENTITY", "is_mvds": false, "children": ["engineer"], "is_total": true, "sort_key": 68, "attributes": ["corporateemployee.office_site"], "node_cover": ["corporateemployee"], "entity_dict": {"total": true, "attributes": [{"attr_name": "office_site", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CorporateEmployee", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[66, "relation_17"]], "unique_name": "corporateemployee", "mapped_table": [66, "relation_17"], "parent_entity": "employee", "relation_size": 200, "attribute_list": [{"pk_name": "employee_id", "pk_type": "INTEGER", "pk_ER_name": "corporateemployee_id", "pk_entity_name": "corporateemployee", "pk_unique_name": "employee_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [66, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["corporateemployee"], "select_frequency": 1, "select_all_tables": [[66, "relation_17"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": false, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "office_site", "type": "ATTRIBUTE", "entity": "corporateemployee", "children": [], "sort_key": 69, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "corporateemployee.office_site", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["engineer_id", "INTEGER", "engineer_id", "engineer_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "corporateemployee_id"]], "reference_node": ["corporateemployee"], "reference_table": ["relation_17"], "table_key_entities": ["engineer"]}, "name": "Engineer", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 70, "attributes": ["engineer.level"], "node_cover": ["engineer"], "entity_dict": {"total": true, "attributes": [{"attr_name": "level", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Engineer", "entity_type": null, "parent_entity": "CorporateEmployee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[66, "relation_17"], [70, "relation_18"]], "unique_name": "engineer", "mapped_table": [70, "relation_18"], "parent_entity": "corporateemployee", "relation_size": 100, "attribute_list": [{"pk_name": "engineer_id", "pk_type": "INTEGER", "pk_ER_name": "engineer_id", "pk_entity_name": "engineer", "pk_unique_name": "engineer_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "corporateemployee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "office_site", "type": "VARCHAR", "unique_name": "corporateemployee.office_site", "is_flattened": null, "mapped_table": [66, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "corporateemployee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "level", "type": "VARCHAR", "unique_name": "engineer.level", "is_flattened": null, "mapped_table": [70, "relation_18"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "engineer", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["engineer"], "select_frequency": 1, "select_all_tables": [[66, "relation_17"], [70, "relation_18"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "employee"}, {"key": null, "name": "level", "type": "ATTRIBUTE", "entity": "engineer", "children": [], "sort_key": 71, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "engineer.level", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supportagent_id", "INTEGER", "supportagent_id", "supportagent_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_17"], "table_key_entities": ["supportagent"]}, "name": "SupportAgent", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 72, "attributes": ["supportagent.queue"], "node_cover": ["supportagent"], "entity_dict": {"total": true, "attributes": [{"attr_name": "queue", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupportAgent", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[66, "relation_17"], [72, "relation_19"]], "unique_name": "supportagent", "mapped_table": [72, "relation_19"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "supportagent_id", "pk_type": "INTEGER", "pk_ER_name": "supportagent_id", "pk_entity_name": "supportagent", "pk_unique_name": "supportagent_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "queue", "type": "VARCHAR", "unique_name": "supportagent.queue", "is_flattened": null, "mapped_table": [72, "relation_19"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supportagent", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["supportagent"], "select_frequency": 1, "select_all_tables": [[66, "relation_17"], [72, "relation_19"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": true, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": "employee"}, {"key": null, "name": "queue", "type": "ATTRIBUTE", "entity": "supportagent", "children": [], "sort_key": 73, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supportagent.queue", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["employee_id", "INTEGER", "employee_id", "fulfillmentassociate_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_17"], "table_key_entities": ["fulfillmentassociate"]}, "name": "FulfillmentAssociate", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 74, "attributes": ["fulfillmentassociate.shift"], "node_cover": ["fulfillmentassociate"], "entity_dict": {"total": true, "attributes": [{"attr_name": "shift", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "FulfillmentAssociate", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[66, "relation_17"]], "unique_name": "fulfillmentassociate", "mapped_table": [66, "relation_17"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "employee_id", "pk_type": "INTEGER", "pk_ER_name": "fulfillmentassociate_id", "pk_entity_name": "fulfillmentassociate", "pk_unique_name": "employee_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shift", "type": "VARCHAR", "unique_name": "fulfillmentassociate.shift", "is_flattened": null, "mapped_table": [66, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "fulfillmentassociate", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": false, "select_all_nodes": ["fulfillmentassociate"], "select_frequency": 1, "select_all_tables": [[66, "relation_17"]], "is_parent_in_table": true, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": true, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shift", "type": "ATTRIBUTE", "entity": "fulfillmentassociate", "children": [], "sort_key": 75, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "fulfillmentassociate.shift", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["categorymanager_id", "INTEGER", "categorymanager_id", "categorymanager_id"]], "reference_key": [["employee_id", "INTEGER", "employee_id", "employee_id"]], "reference_node": ["employee"], "reference_table": ["relation_17"], "table_key_entities": ["categorymanager"]}, "name": "CategoryManager", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": true, "sort_key": 76, "attributes": ["categorymanager.department"], "node_cover": ["categorymanager"], "entity_dict": {"total": true, "attributes": [{"attr_name": "department", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CategoryManager", "entity_type": null, "parent_entity": "Employee"}, "is_no_table": false, "is_subclass": true, "node_tables": [[76, "relation_20"]], "unique_name": "categorymanager", "mapped_table": [76, "relation_20"], "parent_entity": "employee", "relation_size": 100, "attribute_list": [{"pk_name": "categorymanager_id", "pk_type": "INTEGER", "pk_ER_name": "categorymanager_id", "pk_entity_name": "categorymanager", "pk_unique_name": "categorymanager_id", "pk_reference_key_name": "employee_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "employee_id", "pk_reference_node_unique_name": "employee"}, {"name": "email", "type": "VARCHAR", "unique_name": "user.email", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "password_hash", "type": "VARCHAR", "unique_name": "user.password_hash", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "mv_user", "type": "VARCHAR", "unique_name": "user.mv_user", "is_flattened": null, "mapped_table": [54, "relation_14"], "is_multivalued": true, "sub_attributes": [], "entity_unique_name": "user", "is_in_separate_table": false, "mvd_separate_table_name": null}, {"name": "employee_no", "type": "VARCHAR", "unique_name": "employee.employee_no", "is_flattened": null, "mapped_table": [66, "relation_17"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "employee", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "department", "type": "VARCHAR", "unique_name": "categorymanager.department", "is_flattened": null, "mapped_table": [76, "relation_20"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "categorymanager", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["categorymanager"], "select_frequency": 1, "select_all_tables": [[76, "relation_20"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["contained_all_descendants", "all_by_itself", "partially_by_itself", "contained_in_parent"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "sub_class", "is_immediate_parent_in_a_different_table": true, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "department", "type": "ATTRIBUTE", "entity": "categorymanager", "children": [], "sort_key": 77, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "categorymanager.department", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["image_id", "INTEGER", "productimage.image_id", "image_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productimage"]]}, "name": "ProductImage", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 78, "attributes": ["productimage.image_id", "productimage.url", "productimage.alt_text", "productimage.sort_order"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "image_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "alt_text", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "sort_order", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductImage", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[78, "relation_21"]], "unique_name": "productimage", "mapped_table": [78, "relation_21"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "image_id", "pk_type": "INTEGER", "pk_ER_name": "image_id", "pk_entity_name": "productimage", "pk_unique_name": "productimage.image_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "url", "type": "VARCHAR", "unique_name": "productimage.url", "is_flattened": null, "mapped_table": [78, "relation_21"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "alt_text", "type": "VARCHAR", "unique_name": "productimage.alt_text", "is_flattened": null, "mapped_table": [78, "relation_21"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "sort_order", "type": "INT", "unique_name": "productimage.sort_order", "is_flattened": null, "mapped_table": [78, "relation_21"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productimage", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["productimage", "product"], "select_frequency": 1, "select_all_tables": [[5, "temp_product"], [78, "relation_21"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "image_id", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 79, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.image_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "url", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 80, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "alt_text", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 81, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productimage.alt_text", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "sort_order", "type": "ATTRIBUTE", "entity": "productimage", "children": [], "sort_key": 82, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productimage.sort_order", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["variant_id", "INTEGER", "productvariant.variant_id", "variant_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["productvariant"]]}, "name": "ProductVariant", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 83, "attributes": ["productvariant.variant_id", "productvariant.price_override", "productvariant.barcode", "productvariant.is_active_variant"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "variant_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "price_override", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "barcode", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_active_variant", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "ProductVariant", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[83, "relation_22"]], "unique_name": "productvariant", "mapped_table": [83, "relation_22"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "variant_id", "pk_type": "INTEGER", "pk_ER_name": "variant_id", "pk_entity_name": "productvariant", "pk_unique_name": "productvariant.variant_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "price_override", "type": "INT", "unique_name": "productvariant.price_override", "is_flattened": null, "mapped_table": [83, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "barcode", "type": "VARCHAR", "unique_name": "productvariant.barcode", "is_flattened": null, "mapped_table": [83, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_active_variant", "type": "INT", "unique_name": "productvariant.is_active_variant", "is_flattened": null, "mapped_table": [83, "relation_22"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "productvariant", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["productvariant", "product"], "select_frequency": 1, "select_all_tables": [[83, "relation_22"], [5, "temp_product"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "variant_id", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 84, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.variant_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price_override", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 85, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.price_override", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "barcode", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 86, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "productvariant.barcode", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_active_variant", "type": "ATTRIBUTE", "entity": "productvariant", "children": [], "sort_key": 87, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "productvariant.is_active_variant", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["price_id", "INTEGER", "pricehistory.price_id", "price_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], []], "reference_node": ["product"], "reference_table": ["relation_1"], "table_key_entities": [["product"], ["pricehistory"]]}, "name": "PriceHistory", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 88, "attributes": ["pricehistory.price_id", "pricehistory.starts_at", "pricehistory.ends_at", "pricehistory.price"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "price_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "price", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PriceHistory", "entity_type": null, "parent_entity": "Product"}, "is_no_table": false, "is_subclass": false, "node_tables": [[88, "relation_23"]], "unique_name": "pricehistory", "mapped_table": [88, "relation_23"], "parent_entity": "product", "relation_size": 100, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": "product"}, {"pk_name": "price_id", "pk_type": "INTEGER", "pk_ER_name": "price_id", "pk_entity_name": "pricehistory", "pk_unique_name": "pricehistory.price_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "pricehistory.starts_at", "is_flattened": null, "mapped_table": [88, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "pricehistory.ends_at", "is_flattened": null, "mapped_table": [88, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "price", "type": "INT", "unique_name": "pricehistory.price", "is_flattened": null, "mapped_table": [88, "relation_23"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "pricehistory", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["pricehistory", "product"], "select_frequency": 6, "select_all_tables": [[88, "relation_23"], [5, "temp_product"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "price_id", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 89, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 90, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 91, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "pricehistory.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "price", "type": "ATTRIBUTE", "entity": "pricehistory", "children": [], "sort_key": 92, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "pricehistory.price", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["tag_id", "INTEGER", "tag_id", "tag_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["tag"]}, "name": "Tag", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 93, "attributes": ["tag.tag_id", "tag.tag_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "tag_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tag_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Tag", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[93, "relation_24"]], "unique_name": "tag", "mapped_table": [93, "relation_24"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "tag_name", "type": "VARCHAR", "unique_name": "tag.tag_name", "is_flattened": null, "mapped_table": [93, "relation_24"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "tag", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["tag"], "select_frequency": 3, "select_all_tables": [[93, "relation_24"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "tag_id", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 94, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "tag.tag_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tag_name", "type": "ATTRIBUTE", "entity": "tag", "children": [], "sort_key": 95, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "tag.tag_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["address_id", "INTEGER", "address.address_id", "address_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": [["customer"], ["address"]]}, "name": "Address", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 96, "attributes": ["address.address_id", "address.kind", "address.line1", "address.city", "address.state", "address.country", "address.postal_code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "address_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "kind", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "line1", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "city", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "state", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "country", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "postal_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Address", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[96, "relation_25"]], "unique_name": "address", "mapped_table": [96, "relation_25"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "address_id", "pk_type": "INTEGER", "pk_ER_name": "address_id", "pk_entity_name": "address", "pk_unique_name": "address.address_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "kind", "type": "VARCHAR", "unique_name": "address.kind", "is_flattened": null, "mapped_table": [96, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "line1", "type": "VARCHAR", "unique_name": "address.line1", "is_flattened": null, "mapped_table": [96, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "city", "type": "VARCHAR", "unique_name": "address.city", "is_flattened": null, "mapped_table": [96, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "state", "type": "VARCHAR", "unique_name": "address.state", "is_flattened": null, "mapped_table": [96, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "country", "type": "VARCHAR", "unique_name": "address.country", "is_flattened": null, "mapped_table": [96, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "postal_code", "type": "VARCHAR", "unique_name": "address.postal_code", "is_flattened": null, "mapped_table": [96, "relation_25"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "address", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["address", "customer"], "select_frequency": 4, "select_all_tables": [[96, "relation_25"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 13, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "address_id", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 97, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "address.address_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "kind", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 98, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.kind", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "line1", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 99, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.line1", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "city", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 100, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.city", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "state", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 101, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.state", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "country", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 102, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.country", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "postal_code", "type": "ATTRIBUTE", "entity": "address", "children": [], "sort_key": 103, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "address.postal_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_method_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": [["customer"], ["paymentmethod"]]}, "name": "PaymentMethod", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 104, "attributes": ["paymentmethod.payment_method_id", "paymentmethod.brand", "paymentmethod.last4", "paymentmethod.exp_month", "paymentmethod.exp_year", "paymentmethod.is_default"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "payment_method_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "brand", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "last4", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_month", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "exp_year", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "is_default", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PaymentMethod", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[104, "relation_26"]], "unique_name": "paymentmethod", "mapped_table": [104, "relation_26"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "brand", "type": "VARCHAR", "unique_name": "paymentmethod.brand", "is_flattened": null, "mapped_table": [104, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "last4", "type": "VARCHAR", "unique_name": "paymentmethod.last4", "is_flattened": null, "mapped_table": [104, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_month", "type": "INT", "unique_name": "paymentmethod.exp_month", "is_flattened": null, "mapped_table": [104, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "exp_year", "type": "INT", "unique_name": "paymentmethod.exp_year", "is_flattened": null, "mapped_table": [104, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "is_default", "type": "VARCHAR", "unique_name": "paymentmethod.is_default", "is_flattened": null, "mapped_table": [104, "relation_26"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "paymentmethod", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["paymentmethod", "customer"], "select_frequency": 0, "select_all_tables": [[58, "temp_customer"], [104, "relation_26"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 12, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "payment_method_id", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 105, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.payment_method_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "brand", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 106, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.brand", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "last4", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 107, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.last4", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_month", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 108, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_month", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "exp_year", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 109, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "paymentmethod.exp_year", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "is_default", "type": "ATTRIBUTE", "entity": "paymentmethod", "children": [], "sort_key": 110, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "paymentmethod.is_default", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], []], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": [["customer"], ["cart"]]}, "name": "Cart", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 111, "attributes": ["cart.updated_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "updated_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Cart", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[111, "relation_27"]], "unique_name": "cart", "mapped_table": [111, "relation_27"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"name": "updated_at", "type": "VARCHAR", "unique_name": "cart.updated_at", "is_flattened": null, "mapped_table": [111, "relation_27"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "cart", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["cart", "customer"], "select_frequency": 8, "select_all_tables": [[58, "temp_customer"], [111, "relation_27"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "updated_at", "type": "ATTRIBUTE", "entity": "cart", "children": [], "sort_key": 112, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "cart.updated_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": [["customer"], ["wishlist"]]}, "name": "Wishlist", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 113, "attributes": ["wishlist.wishlist_id", "wishlist.wishlist_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "wishlist_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "wishlist_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Wishlist", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[113, "relation_28"]], "unique_name": "wishlist", "mapped_table": [113, "relation_28"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "wishlist_name", "type": "VARCHAR", "unique_name": "wishlist.wishlist_name", "is_flattened": null, "mapped_table": [113, "relation_28"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "wishlist", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["wishlist", "customer"], "select_frequency": 5, "select_all_tables": [[58, "temp_customer"], [113, "relation_28"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "wishlist_id", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 114, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "wishlist.wishlist_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "wishlist_name", "type": "ATTRIBUTE", "entity": "wishlist", "children": [], "sort_key": 115, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "wishlist.wishlist_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["review_id", "INTEGER", "review.review_id", "review_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], []], "reference_node": ["customer"], "reference_table": ["relation_15"], "table_key_entities": [["customer"], ["review"]]}, "name": "Review", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 116, "attributes": ["review.review_id", "review.rating", "review.title", "review.body", "review.created_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "review_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "rating", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "title", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "body", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Review", "entity_type": null, "parent_entity": "Customer"}, "is_no_table": false, "is_subclass": false, "node_tables": [[116, "relation_29"]], "unique_name": "review", "mapped_table": [116, "relation_29"], "parent_entity": "customer", "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": "customer"}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "rating", "type": "INT", "unique_name": "review.rating", "is_flattened": null, "mapped_table": [116, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "title", "type": "VARCHAR", "unique_name": "review.title", "is_flattened": null, "mapped_table": [116, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "body", "type": "VARCHAR", "unique_name": "review.body", "is_flattened": null, "mapped_table": [116, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "review.created_at", "is_flattened": null, "mapped_table": [116, "relation_29"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "review", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["review", "customer"], "select_frequency": 7, "select_all_tables": [[116, "relation_29"], [58, "temp_customer"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 11, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "review_id", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 117, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.review_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "rating", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 118, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "review.rating", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "title", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 119, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.title", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "body", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 120, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.body", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "review", "children": [], "sort_key": 121, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "review.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["user_id", "INTEGER", "user_id", "user_id"]], [["session_id", "INTEGER", "browsingsession.session_id", "session_id"]]], "reference_key": [[["user_id", "INTEGER", "user_id"]], []], "reference_node": ["user"], "reference_table": ["relation_14"], "table_key_entities": [["user"], ["browsingsession"]]}, "name": "BrowsingSession", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 122, "attributes": ["browsingsession.session_id", "browsingsession.started_at", "browsingsession.device"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "session_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "started_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "device", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "BrowsingSession", "entity_type": null, "parent_entity": "User"}, "is_no_table": false, "is_subclass": false, "node_tables": [[122, "relation_30"]], "unique_name": "browsingsession", "mapped_table": [122, "relation_30"], "parent_entity": "user", "relation_size": 100, "attribute_list": [{"pk_name": "user_id", "pk_type": "INTEGER", "pk_ER_name": "user_id", "pk_entity_name": "user", "pk_unique_name": "user_id", "pk_reference_key_name": "user_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "user_id", "pk_reference_node_unique_name": "user"}, {"pk_name": "session_id", "pk_type": "INTEGER", "pk_ER_name": "session_id", "pk_entity_name": "browsingsession", "pk_unique_name": "browsingsession.session_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "started_at", "type": "VARCHAR", "unique_name": "browsingsession.started_at", "is_flattened": null, "mapped_table": [122, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "device", "type": "VARCHAR", "unique_name": "browsingsession.device", "is_flattened": null, "mapped_table": [122, "relation_30"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "browsingsession", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["browsingsession", "user"], "select_frequency": 4, "select_all_tables": [[122, "relation_30"], [54, "temp_user"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 7, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "session_id", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 123, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "browsingsession.session_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "started_at", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 124, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.started_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "device", "type": "ATTRIBUTE", "entity": "browsingsession", "children": [], "sort_key": 125, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "browsingsession.device", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["custorder"]}, "name": "CustOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 126, "attributes": ["custorder.custorder_id", "custorder.placed_at", "custorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "custorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "placed_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CustOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[126, "relation_31"]], "unique_name": "custorder", "mapped_table": [126, "relation_31"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "placed_at", "type": "VARCHAR", "unique_name": "custorder.placed_at", "is_flattened": null, "mapped_table": [126, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "custorder.status", "is_flattened": null, "mapped_table": [126, "relation_31"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "custorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["custorder"], "select_frequency": 10, "select_all_tables": [[126, "relation_31"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "custorder_id", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 127, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "custorder.custorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "placed_at", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 128, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.placed_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "custorder", "children": [], "sort_key": 129, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "custorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], []], "reference_node": ["custorder"], "reference_table": ["relation_31"], "table_key_entities": [["custorder"], ["shipment"]]}, "name": "Shipment", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 130, "attributes": ["shipment.shipment_id", "shipment.carrier", "shipment.tracking_no", "shipment.shipped_at", "shipment.delivered_at"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "shipment_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "carrier", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "tracking_no", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "shipped_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "delivered_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Shipment", "entity_type": null, "parent_entity": "CustOrder"}, "is_no_table": false, "is_subclass": false, "node_tables": [[130, "relation_32"]], "unique_name": "shipment", "mapped_table": [130, "relation_32"], "parent_entity": "custorder", "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": "custorder"}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier", "type": "VARCHAR", "unique_name": "shipment.carrier", "is_flattened": null, "mapped_table": [130, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "tracking_no", "type": "VARCHAR", "unique_name": "shipment.tracking_no", "is_flattened": null, "mapped_table": [130, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "shipped_at", "type": "VARCHAR", "unique_name": "shipment.shipped_at", "is_flattened": null, "mapped_table": [130, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "delivered_at", "type": "VARCHAR", "unique_name": "shipment.delivered_at", "is_flattened": null, "mapped_table": [130, "relation_32"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "shipment", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["shipment", "custorder"], "select_frequency": 6, "select_all_tables": [[126, "relation_31"], [130, "relation_32"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 8, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "shipment_id", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 131, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "shipment.shipment_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 132, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.carrier", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "tracking_no", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 133, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.tracking_no", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "shipped_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 134, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.shipped_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "delivered_at", "type": "ATTRIBUTE", "entity": "shipment", "children": [], "sort_key": 135, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "shipment.delivered_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["promotion"]}, "name": "Promotion", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 136, "attributes": ["promotion.promo_id", "promotion.promo_name", "promotion.starts_at", "promotion.ends_at", "promotion.discount_type", "promotion.discount_value"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "promo_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "promo_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "starts_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "ends_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_type", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "discount_value", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Promotion", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[136, "relation_33"]], "unique_name": "promotion", "mapped_table": [136, "relation_33"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "promo_name", "type": "VARCHAR", "unique_name": "promotion.promo_name", "is_flattened": null, "mapped_table": [136, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "starts_at", "type": "VARCHAR", "unique_name": "promotion.starts_at", "is_flattened": null, "mapped_table": [136, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "ends_at", "type": "VARCHAR", "unique_name": "promotion.ends_at", "is_flattened": null, "mapped_table": [136, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_type", "type": "VARCHAR", "unique_name": "promotion.discount_type", "is_flattened": null, "mapped_table": [136, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "discount_value", "type": "VARCHAR", "unique_name": "promotion.discount_value", "is_flattened": null, "mapped_table": [136, "relation_33"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "promotion", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["promotion"], "select_frequency": 3, "select_all_tables": [[136, "relation_33"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 6, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "promo_id", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 137, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "promotion.promo_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "promo_name", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 138, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.promo_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "starts_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 139, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.starts_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "ends_at", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 140, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.ends_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_type", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 141, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_type", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "discount_value", "type": "ATTRIBUTE", "entity": "promotion", "children": [], "sort_key": 142, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "promotion.discount_value", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"]], [["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"]], []], "reference_node": ["promotion"], "reference_table": ["relation_33"], "table_key_entities": [["promotion"], ["coupon"]]}, "name": "Coupon", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 143, "attributes": ["coupon.coupon_code", "coupon.max_uses", "coupon.per_user_limit"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "coupon_code", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "max_uses", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "per_user_limit", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Coupon", "entity_type": null, "parent_entity": "Promotion"}, "is_no_table": false, "is_subclass": false, "node_tables": [[143, "relation_34"]], "unique_name": "coupon", "mapped_table": [143, "relation_34"], "parent_entity": "promotion", "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "promotion", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": "promotion"}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "max_uses", "type": "INT", "unique_name": "coupon.max_uses", "is_flattened": null, "mapped_table": [143, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "per_user_limit", "type": "INT", "unique_name": "coupon.per_user_limit", "is_flattened": null, "mapped_table": [143, "relation_34"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "coupon", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["coupon", "promotion"], "select_frequency": 3, "select_all_tables": [[143, "relation_34"], [136, "relation_33"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 9, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "coupon_code", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 144, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.coupon_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "max_uses", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 145, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.max_uses", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "per_user_limit", "type": "ATTRIBUTE", "entity": "coupon", "children": [], "sort_key": 146, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "coupon.per_user_limit", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["warehouse"]}, "name": "Warehouse", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 147, "attributes": ["warehouse.warehouse_id", "warehouse.warehouse_name", "warehouse.region"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "warehouse_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "warehouse_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "region", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Warehouse", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[147, "relation_35"]], "unique_name": "warehouse", "mapped_table": [147, "relation_35"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "warehouse_name", "type": "VARCHAR", "unique_name": "warehouse.warehouse_name", "is_flattened": null, "mapped_table": [147, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "region", "type": "VARCHAR", "unique_name": "warehouse.region", "is_flattened": null, "mapped_table": [147, "relation_35"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehouse", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_35"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "warehouse_id", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 148, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehouse.warehouse_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "warehouse_name", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 149, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.warehouse_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "region", "type": "ATTRIBUTE", "entity": "warehouse", "children": [], "sort_key": 150, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehouse.region", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"]], [["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["warehouse_id", "INTEGER", "warehouse_id"]], []], "reference_node": ["warehouse"], "reference_table": ["relation_35"], "table_key_entities": [["warehouse"], ["warehousebin"]]}, "name": "WarehouseBin", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 151, "attributes": ["warehousebin.bin_id", "warehousebin.code"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "bin_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "WarehouseBin", "entity_type": null, "parent_entity": "Warehouse"}, "is_no_table": false, "is_subclass": false, "node_tables": [[151, "relation_36"]], "unique_name": "warehousebin", "mapped_table": [151, "relation_36"], "parent_entity": "warehouse", "relation_size": 100, "attribute_list": [{"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehouse", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": "warehouse"}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "code", "type": "VARCHAR", "unique_name": "warehousebin.code", "is_flattened": null, "mapped_table": [151, "relation_36"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "warehousebin", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["warehousebin", "warehouse"], "select_frequency": 2, "select_all_tables": [[147, "relation_35"], [151, "relation_36"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "bin_id", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 152, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "warehousebin.bin_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "code", "type": "ATTRIBUTE", "entity": "warehousebin", "children": [], "sort_key": 153, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "warehousebin.code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["supplier"]}, "name": "Supplier", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 154, "attributes": ["supplier.supplier_id", "supplier.supplier_name"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "supplier_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "supplier_name", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "Supplier", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[154, "relation_37"]], "unique_name": "supplier", "mapped_table": [154, "relation_37"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "supplier_name", "type": "VARCHAR", "unique_name": "supplier.supplier_name", "is_flattened": null, "mapped_table": [154, "relation_37"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "supplier", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["supplier"], "select_frequency": 3, "select_all_tables": [[154, "relation_37"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 2, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "supplier_id", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 155, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "supplier.supplier_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "supplier_name", "type": "ATTRIBUTE", "entity": "supplier", "children": [], "sort_key": 156, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "supplier.supplier_name", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["contact_id", "INTEGER", "suppliercontact.contact_id", "contact_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], []], "reference_node": ["supplier"], "reference_table": ["relation_37"], "table_key_entities": [["supplier"], ["suppliercontact"]]}, "name": "SupplierContact", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 157, "attributes": ["suppliercontact.contact_id", "suppliercontact.email", "suppliercontact.phone"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "contact_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": true}, {"attr_name": "email", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "phone", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "SupplierContact", "entity_type": null, "parent_entity": "Supplier"}, "is_no_table": false, "is_subclass": false, "node_tables": [[157, "relation_38"]], "unique_name": "suppliercontact", "mapped_table": [157, "relation_38"], "parent_entity": "supplier", "relation_size": 100, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": "supplier"}, {"pk_name": "contact_id", "pk_type": "INTEGER", "pk_ER_name": "contact_id", "pk_entity_name": "suppliercontact", "pk_unique_name": "suppliercontact.contact_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "email", "type": "VARCHAR", "unique_name": "suppliercontact.email", "is_flattened": null, "mapped_table": [157, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "phone", "type": "VARCHAR", "unique_name": "suppliercontact.phone", "is_flattened": null, "mapped_table": [157, "relation_38"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "suppliercontact", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": true, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["suppliercontact", "supplier"], "select_frequency": 3, "select_all_tables": [[157, "relation_38"], [154, "relation_37"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself", "contained_in_parent"], "strict_relation_size": 0, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 5, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "weak_entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "contact_id", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 158, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "suppliercontact.contact_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": true, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "email", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 159, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.email", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "phone", "type": "ATTRIBUTE", "entity": "suppliercontact", "children": [], "sort_key": 160, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "suppliercontact.phone", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["purchaseorder"]}, "name": "PurchaseOrder", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 161, "attributes": ["purchaseorder.purchaseorder_id", "purchaseorder.created_at", "purchaseorder.status"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "purchaseorder_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "created_at", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "status", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "PurchaseOrder", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[161, "relation_39"]], "unique_name": "purchaseorder", "mapped_table": [161, "relation_39"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "created_at", "type": "VARCHAR", "unique_name": "purchaseorder.created_at", "is_flattened": null, "mapped_table": [161, "relation_39"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "status", "type": "VARCHAR", "unique_name": "purchaseorder.status", "is_flattened": null, "mapped_table": [161, "relation_39"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "purchaseorder", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["purchaseorder"], "select_frequency": 4, "select_all_tables": [[161, "relation_39"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "purchaseorder_id", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 162, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "purchaseorder.purchaseorder_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "created_at", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 163, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.created_at", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "status", "type": "ATTRIBUTE", "entity": "purchaseorder", "children": [], "sort_key": 164, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "purchaseorder.status", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [["courierpartner_id", "INTEGER", "courierpartner_id", "courierpartner_id"]], "reference_key": null, "reference_node": null, "reference_table": null, "table_key_entities": ["courierpartner"]}, "name": "CourierPartner", "type": "ENTITY", "is_mvds": false, "children": [], "is_total": null, "sort_key": 165, "attributes": ["courierpartner.courierpartner_id", "courierpartner.carrier_code", "courierpartner.webhook_url"], "node_cover": [], "entity_dict": {"attributes": [{"attr_name": "courierpartner_id", "attr_type": "INT", "is_multivalued": false, "is_primary_key": true, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "carrier_code", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}, {"attr_name": "webhook_url", "attr_type": "VARCHAR", "is_multivalued": false, "is_primary_key": false, "sub_attributes": [], "is_discriminator": false}], "table_name": "CourierPartner", "entity_type": null}, "is_no_table": false, "is_subclass": false, "node_tables": [[165, "relation_40"]], "unique_name": "courierpartner", "mapped_table": [165, "relation_40"], "parent_entity": null, "relation_size": 100, "attribute_list": [{"pk_name": "courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": null, "pk_reference_key_type": null, "pk_reference_key_unique_name": null, "pk_reference_node_unique_name": null}, {"name": "carrier_code", "type": "VARCHAR", "unique_name": "courierpartner.carrier_code", "is_flattened": null, "mapped_table": [165, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}, {"name": "webhook_url", "type": "VARCHAR", "unique_name": "courierpartner.webhook_url", "is_flattened": null, "mapped_table": [165, "relation_40"], "is_multivalued": false, "sub_attributes": [], "entity_unique_name": "courierpartner", "is_in_separate_table": null, "mvd_separate_table_name": null}], "is_weak_entity": false, "insert_frequency": 100, "is_all_by_itself": true, "select_all_nodes": ["courierpartner"], "select_frequency": 1, "select_all_tables": [[165, "relation_40"]], "is_parent_in_table": false, "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "strict_relation_size": 100, "is_contained_in_parent": false, "is_partially_by_itself": false, "is_option_to_be_abstract": null, "select_all_attributes_count": 3, "is_contained_all_descendants": false, "node_type_for_partitioning_options": "entity", "is_immediate_parent_in_a_different_table": false, "immediate_parent_with_all_by_itself_unique_name": null}, {"key": null, "name": "courierpartner_id", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 166, "attr_dict": null, "attr_type": "INT", "attributes": [], "unique_name": "courierpartner.courierpartner_id", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": true, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "carrier_code", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 167, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.carrier_code", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": null, "name": "webhook_url", "type": "ATTRIBUTE", "entity": "courierpartner", "children": [], "sort_key": 168, "attr_dict": null, "attr_type": "VARCHAR", "attributes": [], "unique_name": "courierpartner.webhook_url", "is_composite": false, "is_flattened": false, "mapped_table": null, "relation_size": 0, "is_multivalued": false, "is_primary_key": false, "is_discriminator": false, "parent_attribute": null, "mapped_tables_list": [], "is_in_separate_table": false, "partitioning_options": [], "node_type_for_partitioning_options": null}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["category_products_category_id", "INTEGER", "category_id", "category_products_category_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["category_id", "INTEGER", "category_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_0"], "table_key_entities": [["product"], ["category"]]}, "name": "category_products", "type": "RELATIONSHIP", "entity1": "category", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Category", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "category_products"}, "sort_key": 169, "attributes": [], "node_tables": [[5, "relation_1"]], "unique_name": "category_products", "mapped_table": [5, "relation_1"], "relation_size": 483, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "category_products_category_id", "pk_type": "INTEGER", "pk_ER_name": "category_products_category_id", "pk_entity_name": "category", "pk_unique_name": "category_id", "pk_reference_key_name": "category_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "category_id", "pk_reference_node_unique_name": null}], "insert_frequency": 483, "select_all_nodes": ["category_products", "category", "product"], "select_frequency": 1, "select_all_tables": [[1, "relation_0"], [5, "temp_product"]], "mapped_tables_list": [[5, "relation_1"], [17, "relation_3"], [24, "relation_5"], [34, "relation_9"], [50, "relation_12"]], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["tag_id", "INTEGER", "tag_id", "tag_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["tag_id", "INTEGER", "tag_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_24"], "table_key_entities": [["product"], ["tag"]]}, "name": "product_tags", "type": "RELATIONSHIP", "entity1": "product", "entity2": "tag", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Tag", "role": null, "total": true}, "attributes": [], "table_name": "product_tags"}, "sort_key": 170, "attributes": [], "node_tables": [[170, "relation_41"]], "unique_name": "product_tags", "mapped_table": [170, "relation_41"], "relation_size": 3172, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "tag_id", "pk_type": "INTEGER", "pk_ER_name": "tag_id", "pk_entity_name": "tag", "pk_unique_name": "tag_id", "pk_reference_key_name": "tag_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "tag_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3172, "select_all_nodes": ["product_tags", "product", "tag"], "select_frequency": 1, "select_all_tables": [[170, "relation_41"], [93, "relation_24"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["bought_together_product_product_id", "INTEGER", "product_id", "bought_together_product_product_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_1"], "table_key_entities": [["product"], ["product"]]}, "name": "bought_together", "type": "RELATIONSHIP", "entity1": "product", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": "product_id", "total": true}, "entity2": {"one": false, "name": "Product", "role": "bought_together_product_id", "total": true}, "attributes": [], "table_name": "bought_together"}, "sort_key": 171, "attributes": [], "node_tables": [[171, "relation_42"]], "unique_name": "bought_together", "mapped_table": [171, "relation_42"], "relation_size": 4151, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "bought_together_product_product_id", "pk_type": "INTEGER", "pk_ER_name": "bought_together_product_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 4151, "select_all_nodes": ["bought_together", "product", "product"], "select_frequency": 0, "select_all_tables": [[171, "relation_42"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": ["product_id", "bought_together_product_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_27", "relation_1"], "table_key_entities": [["cart"], ["product"]]}, "name": "cart_contains", "type": "RELATIONSHIP", "entity1": "cart", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Cart", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "cart_contains"}, "sort_key": 172, "attributes": [], "node_tables": [[172, "relation_43"]], "unique_name": "cart_contains", "mapped_table": [172, "relation_43"], "relation_size": 202, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "cart", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 202, "select_all_nodes": ["cart_contains", "cart", "customer", "product"], "select_frequency": 2, "select_all_tables": [[58, "temp_customer"], [111, "relation_27"], [172, "relation_43"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 14, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id", "wishlist_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["wishlist_id", "INTEGER", "wishlist.wishlist_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_28", "relation_1"], "table_key_entities": [["wishlist"], ["product"]]}, "name": "wishlist_contains", "type": "RELATIONSHIP", "entity1": "wishlist", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Wishlist", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "wishlist_contains"}, "sort_key": 173, "attributes": [], "node_tables": [[173, "relation_44"]], "unique_name": "wishlist_contains", "mapped_table": [173, "relation_44"], "relation_size": 100, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "wishlist", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "wishlist_id", "pk_type": "INTEGER", "pk_ER_name": "wishlist_id", "pk_entity_name": "wishlist", "pk_unique_name": "wishlist.wishlist_id", "pk_reference_key_name": "wishlist_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "wishlist.wishlist_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["wishlist_contains", "wishlist", "customer", "product"], "select_frequency": 2, "select_all_tables": [[5, "temp_product"], [58, "temp_customer"], [173, "relation_44"], [113, "relation_28"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["customer_id", "INTEGER", "customer_id", "customer_id"], ["review_id", "INTEGER", "review.review_id", "review_id"]], [["reviews_product_id", "INTEGER", "product_id", "reviews_product_id"]]], "reference_key": [[["customer_id", "INTEGER", "customer_id"], ["review_id", "INTEGER", "review.review_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_29", "relation_1"], "table_key_entities": [["review"], ["product"]]}, "name": "reviews", "type": "RELATIONSHIP", "entity1": "product", "entity2": "review", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "Review", "role": null, "total": true}, "attributes": [], "table_name": "reviews"}, "sort_key": 174, "attributes": [], "node_tables": [[116, "relation_29"]], "unique_name": "reviews", "mapped_table": [116, "relation_29"], "relation_size": 47, "attribute_list": [{"pk_name": "customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_id", "pk_entity_name": "review", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "review_id", "pk_type": "INTEGER", "pk_ER_name": "review_id", "pk_entity_name": "review", "pk_unique_name": "review.review_id", "pk_reference_key_name": "review_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "review.review_id", "pk_reference_node_unique_name": null}, {"pk_name": "reviews_product_id", "pk_type": "INTEGER", "pk_ER_name": "reviews_product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 47, "select_all_nodes": ["reviews", "product", "review", "customer"], "select_frequency": 1, "select_all_tables": [[116, "relation_29"], [5, "temp_product"], [58, "temp_customer"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 18, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["customer_orders_customer_id", "INTEGER", "customer_id", "customer_orders_customer_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"]]], "reference_node": [], "reference_table": ["relation_31", "relation_15"], "table_key_entities": [["custorder"], ["customer"]]}, "name": "customer_orders", "type": "RELATIONSHIP", "entity1": "customer", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Customer", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "customer_orders"}, "sort_key": 175, "attributes": [], "node_tables": [[126, "relation_31"]], "unique_name": "customer_orders", "mapped_table": [126, "relation_31"], "relation_size": 71, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "customer_orders_customer_id", "pk_type": "INTEGER", "pk_ER_name": "customer_orders_customer_id", "pk_entity_name": "customer", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}], "insert_frequency": 71, "select_all_nodes": ["customer_orders", "customer", "custorder"], "select_frequency": 5, "select_all_tables": [[58, "temp_customer"], [126, "relation_31"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_31", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_items", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_items"}, "sort_key": 176, "attributes": [], "node_tables": [[176, "relation_45"]], "unique_name": "order_items", "mapped_table": [176, "relation_45"], "relation_size": 100, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_items", "custorder", "product"], "select_frequency": 2, "select_all_tables": [[126, "relation_31"], [176, "relation_45"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["payment_order_customer_id", "INTEGER", "customer_id", "payment_order_customer_id"], ["payment_order_payment_method_id", "INTEGER", "paymentmethod.payment_method_id", "payment_order_payment_method_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["customer_id", "INTEGER", "customer_id"], ["payment_method_id", "INTEGER", "paymentmethod.payment_method_id"]]], "reference_node": [], "reference_table": ["relation_31", "relation_26"], "table_key_entities": [["custorder"], ["paymentmethod"]]}, "name": "payment_order", "type": "RELATIONSHIP", "entity1": "paymentmethod", "entity2": "custorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "PaymentMethod", "role": null, "total": true}, "entity2": {"one": false, "name": "CustOrder", "role": null, "total": true}, "attributes": [], "table_name": "payment_order"}, "sort_key": 177, "attributes": [], "node_tables": [[126, "relation_31"]], "unique_name": "payment_order", "mapped_table": [126, "relation_31"], "relation_size": 90, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_customer_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_customer_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "customer_id", "pk_reference_key_name": "customer_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "customer_id", "pk_reference_node_unique_name": null}, {"pk_name": "payment_order_payment_method_id", "pk_type": "INTEGER", "pk_ER_name": "payment_order_payment_method_id", "pk_entity_name": "paymentmethod", "pk_unique_name": "paymentmethod.payment_method_id", "pk_reference_key_name": "payment_method_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "paymentmethod.payment_method_id", "pk_reference_node_unique_name": null}], "insert_frequency": 90, "select_all_nodes": ["payment_order", "paymentmethod", "customer", "custorder"], "select_frequency": 2, "select_all_tables": [[58, "temp_customer"], [104, "relation_26"], [126, "relation_31"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 15, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_31", "relation_1"], "table_key_entities": [["custorder"], ["product"]]}, "name": "order_returns", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "order_returns"}, "sort_key": 178, "attributes": [], "node_tables": [[178, "relation_46"]], "unique_name": "order_returns", "mapped_table": [178, "relation_46"], "relation_size": 188, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 188, "select_all_nodes": ["order_returns", "custorder", "product"], "select_frequency": 1, "select_all_tables": [[126, "relation_31"], [178, "relation_46"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["promotion_id", "INTEGER", "promotion_id", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code", "coupon_code"]], [["order_coupons_custorder_id", "INTEGER", "custorder_id", "order_coupons_custorder_id"]]], "reference_key": [[["promotion_id", "INTEGER", "promotion_id"], ["coupon_code", "INTEGER", "coupon.coupon_code"]], [["custorder_id", "INTEGER", "custorder_id"]]], "reference_node": [], "reference_table": ["relation_34", "relation_31"], "table_key_entities": [["coupon"], ["custorder"]]}, "name": "order_coupons", "type": "RELATIONSHIP", "entity1": "custorder", "entity2": "coupon", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CustOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Coupon", "role": null, "total": true}, "attributes": [], "table_name": "order_coupons"}, "sort_key": 179, "attributes": [], "node_tables": [[143, "relation_34"]], "unique_name": "order_coupons", "mapped_table": [143, "relation_34"], "relation_size": 100, "attribute_list": [{"pk_name": "promotion_id", "pk_type": "INTEGER", "pk_ER_name": "promotion_id", "pk_entity_name": "coupon", "pk_unique_name": "promotion_id", "pk_reference_key_name": "promotion_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "promotion_id", "pk_reference_node_unique_name": null}, {"pk_name": "coupon_code", "pk_type": "INTEGER", "pk_ER_name": "coupon_code", "pk_entity_name": "coupon", "pk_unique_name": "coupon.coupon_code", "pk_reference_key_name": "coupon_code", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "coupon.coupon_code", "pk_reference_node_unique_name": null}, {"pk_name": "order_coupons_custorder_id", "pk_type": "INTEGER", "pk_ER_name": "order_coupons_custorder_id", "pk_entity_name": "custorder", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}], "insert_frequency": 100, "select_all_nodes": ["order_coupons", "custorder", "coupon", "promotion"], "select_frequency": 1, "select_all_tables": [[143, "relation_34"], [126, "relation_31"], [136, "relation_33"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["product_id", "INTEGER", "product_id", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id", "bin_id"]]], "reference_key": [[["product_id", "INTEGER", "product_id"]], [["warehouse_id", "INTEGER", "warehouse_id"], ["bin_id", "INTEGER", "warehousebin.bin_id"]]], "reference_node": [], "reference_table": ["relation_1", "relation_36"], "table_key_entities": [["product"], ["warehousebin"]]}, "name": "stock", "type": "RELATIONSHIP", "entity1": "product", "entity2": "warehousebin", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Product", "role": null, "total": true}, "entity2": {"one": false, "name": "WarehouseBin", "role": null, "total": true}, "attributes": [], "table_name": "stock"}, "sort_key": 180, "attributes": [], "node_tables": [[180, "relation_47"]], "unique_name": "stock", "mapped_table": [180, "relation_47"], "relation_size": 3173, "attribute_list": [{"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}, {"pk_name": "warehouse_id", "pk_type": "INTEGER", "pk_ER_name": "warehouse_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehouse_id", "pk_reference_key_name": "warehouse_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehouse_id", "pk_reference_node_unique_name": null}, {"pk_name": "bin_id", "pk_type": "INTEGER", "pk_ER_name": "bin_id", "pk_entity_name": "warehousebin", "pk_unique_name": "warehousebin.bin_id", "pk_reference_key_name": "bin_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "warehousebin.bin_id", "pk_reference_node_unique_name": null}], "insert_frequency": 3173, "select_all_nodes": ["stock", "product", "warehousebin", "warehouse"], "select_frequency": 1, "select_all_tables": [[147, "relation_35"], [180, "relation_47"], [5, "temp_product"], [151, "relation_36"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 12, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["supplier_id", "INTEGER", "supplier_id", "supplier_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["supplier_id", "INTEGER", "supplier_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_37", "relation_1"], "table_key_entities": [["supplier"], ["product"]]}, "name": "supplier_products", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "supplier_products"}, "sort_key": 181, "attributes": [], "node_tables": [[181, "relation_48"]], "unique_name": "supplier_products", "mapped_table": [181, "relation_48"], "relation_size": 159, "attribute_list": [{"pk_name": "supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 159, "select_all_nodes": ["supplier_products", "supplier", "product"], "select_frequency": 1, "select_all_tables": [[181, "relation_48"], [154, "relation_37"], [5, "temp_product"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 9, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["supplier_pos_supplier_id", "INTEGER", "supplier_id", "supplier_pos_supplier_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["supplier_id", "INTEGER", "supplier_id"]]], "reference_node": [], "reference_table": ["relation_39", "relation_37"], "table_key_entities": [["purchaseorder"], ["supplier"]]}, "name": "supplier_pos", "type": "RELATIONSHIP", "entity1": "supplier", "entity2": "purchaseorder", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Supplier", "role": null, "total": true}, "entity2": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "attributes": [], "table_name": "supplier_pos"}, "sort_key": 182, "attributes": [], "node_tables": [[161, "relation_39"]], "unique_name": "supplier_pos", "mapped_table": [161, "relation_39"], "relation_size": 87, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "supplier_pos_supplier_id", "pk_type": "INTEGER", "pk_ER_name": "supplier_pos_supplier_id", "pk_entity_name": "supplier", "pk_unique_name": "supplier_id", "pk_reference_key_name": "supplier_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "supplier_id", "pk_reference_node_unique_name": null}], "insert_frequency": 87, "select_all_nodes": ["supplier_pos", "supplier", "purchaseorder"], "select_frequency": 1, "select_all_tables": [[154, "relation_37"], [161, "relation_39"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 5, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id", "product_id"]]], "reference_key": [[["purchaseorder_id", "INTEGER", "purchaseorder_id"]], [["product_id", "INTEGER", "product_id"]]], "reference_node": [], "reference_table": ["relation_39", "relation_1"], "table_key_entities": [["purchaseorder"], ["product"]]}, "name": "po_items", "type": "RELATIONSHIP", "entity1": "purchaseorder", "entity2": "product", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "PurchaseOrder", "role": null, "total": true}, "entity2": {"one": false, "name": "Product", "role": null, "total": true}, "attributes": [], "table_name": "po_items"}, "sort_key": 183, "attributes": [], "node_tables": [[183, "relation_49"]], "unique_name": "po_items", "mapped_table": [183, "relation_49"], "relation_size": 156, "attribute_list": [{"pk_name": "purchaseorder_id", "pk_type": "INTEGER", "pk_ER_name": "purchaseorder_id", "pk_entity_name": "purchaseorder", "pk_unique_name": "purchaseorder_id", "pk_reference_key_name": "purchaseorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "purchaseorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "product_id", "pk_type": "INTEGER", "pk_ER_name": "product_id", "pk_entity_name": "product", "pk_unique_name": "product_id", "pk_reference_key_name": "product_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "product_id", "pk_reference_node_unique_name": null}], "insert_frequency": 156, "select_all_nodes": ["po_items", "purchaseorder", "product"], "select_frequency": 1, "select_all_tables": [[161, "relation_39"], [5, "temp_product"], [183, "relation_49"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 10, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["custorder_id", "INTEGER", "custorder_id", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id", "shipment_id"]], [["courier_shipments_courierpartner_id", "INTEGER", "courierpartner_id", "courier_shipments_courierpartner_id"]]], "reference_key": [[["custorder_id", "INTEGER", "custorder_id"], ["shipment_id", "INTEGER", "shipment.shipment_id"]], [["courierpartner_id", "INTEGER", "courierpartner_id"]]], "reference_node": [], "reference_table": ["relation_32", "relation_40"], "table_key_entities": [["shipment"], ["courierpartner"]]}, "name": "courier_shipments", "type": "RELATIONSHIP", "entity1": "courierpartner", "entity2": "shipment", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "CourierPartner", "role": null, "total": true}, "entity2": {"one": false, "name": "Shipment", "role": null, "total": true}, "attributes": [], "table_name": "courier_shipments"}, "sort_key": 184, "attributes": [], "node_tables": [[130, "relation_32"]], "unique_name": "courier_shipments", "mapped_table": [130, "relation_32"], "relation_size": 95, "attribute_list": [{"pk_name": "custorder_id", "pk_type": "INTEGER", "pk_ER_name": "custorder_id", "pk_entity_name": "shipment", "pk_unique_name": "custorder_id", "pk_reference_key_name": "custorder_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "custorder_id", "pk_reference_node_unique_name": null}, {"pk_name": "shipment_id", "pk_type": "INTEGER", "pk_ER_name": "shipment_id", "pk_entity_name": "shipment", "pk_unique_name": "shipment.shipment_id", "pk_reference_key_name": "shipment_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "shipment.shipment_id", "pk_reference_node_unique_name": null}, {"pk_name": "courier_shipments_courierpartner_id", "pk_type": "INTEGER", "pk_ER_name": "courier_shipments_courierpartner_id", "pk_entity_name": "courierpartner", "pk_unique_name": "courierpartner_id", "pk_reference_key_name": "courierpartner_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "courierpartner_id", "pk_reference_node_unique_name": null}], "insert_frequency": 95, "select_all_nodes": ["courier_shipments", "courierpartner", "shipment", "custorder"], "select_frequency": 2, "select_all_tables": [[126, "relation_31"], [165, "relation_40"], [130, "relation_32"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 11, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["phone_id", "INTEGER", "electronics_id", "phone_id"]], [["bundle_phone_phone_id", "INTEGER", "electronics_id", "bundle_phone_phone_id"]]], "reference_key": [[["electronics_id", "INTEGER", "electronics_id"]], [["electronics_id", "INTEGER", "electronics_id"]]], "reference_node": [], "reference_table": ["relation_3", "relation_3"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundle_phones", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": false, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundle_phones"}, "sort_key": 185, "attributes": [], "node_tables": [[185, "relation_50"]], "unique_name": "bundle_phones", "mapped_table": [185, "relation_50"], "relation_size": 207, "attribute_list": [{"pk_name": "phone_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundle_phone_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundle_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": null}], "insert_frequency": 207, "select_all_nodes": ["bundle_phones", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[17, "relation_3"], [185, "relation_50"]], "mapped_tables_list": [], "partitioning_options": ["all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "bundle_phone_id"], "node_type_for_partitioning_options": "M_N_relationship"}, {"key": {"table_key": [[["smartwatch_id", "INTEGER", "smartwatch_id", "smartwatch_id"]], [["bundled_phone_smart_watch_phone_id", "INTEGER", "electronics_id", "bundled_phone_smart_watch_phone_id"]]], "reference_key": [[["smartwatch_id", "INTEGER", "smartwatch_id"]], [["electronics_id", "INTEGER", "electronics_id"]]], "reference_node": [], "reference_table": ["relation_7", "relation_3"], "table_key_entities": [["smartwatch"], ["phone"]]}, "name": "bundled_phone_smart_watch", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "smartwatch", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": null, "total": true}, "entity2": {"one": false, "name": "Smartwatch", "role": null, "total": true}, "attributes": [], "table_name": "bundled_phone_smart_watch"}, "sort_key": 186, "attributes": [], "node_tables": [[28, "relation_7"]], "unique_name": "bundled_phone_smart_watch", "mapped_table": [28, "relation_7"], "relation_size": 48, "attribute_list": [{"pk_name": "smartwatch_id", "pk_type": "INTEGER", "pk_ER_name": "smartwatch_id", "pk_entity_name": "smartwatch", "pk_unique_name": "smartwatch_id", "pk_reference_key_name": "smartwatch_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "smartwatch_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundled_phone_smart_watch_phone_id", "pk_type": "INTEGER", "pk_ER_name": "bundled_phone_smart_watch_phone_id", "pk_entity_name": "phone", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": null}], "insert_frequency": 48, "select_all_nodes": ["bundled_phone_smart_watch", "phone", "smartwatch"], "select_frequency": 1, "select_all_tables": [[28, "relation_7"], [17, "relation_3"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": null, "node_type_for_partitioning_options": "1_N_relationship"}, {"key": {"table_key": [[["electronics_id", "INTEGER", "electronics_id", "phone_id"]], [["bundled_phone_id", "INTEGER", "bundled_phone_id", "single_bundle_phone_bundled_phone_phone_id"]]], "reference_key": [[["electronics_id", "INTEGER", "electronics_id"]], [["electronics_id", "INTEGER", "electronics_id"]]], "reference_node": [], "reference_table": ["relation_3", "relation_3"], "table_key_entities": [["phone"], ["phone"]]}, "name": "bundled_phone", "type": "RELATIONSHIP", "entity1": "phone", "entity2": "phone", "is_mvds": false, "rel_dict": {"entity1": {"one": true, "name": "Phone", "role": "phone_id", "total": true}, "entity2": {"one": false, "name": "Phone", "role": "single_bundle_phone_id", "total": true}, "attributes": [], "table_name": "bundled_phone"}, "sort_key": 187, "attributes": [], "node_tables": [[17, "relation_3"]], "unique_name": "bundled_phone", "mapped_table": [17, "relation_3"], "relation_size": 12, "attribute_list": [{"pk_name": "electronics_id", "pk_type": "INTEGER", "pk_ER_name": "phone_id", "pk_entity_name": "phone", "pk_unique_name": "electronics_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": null}, {"pk_name": "bundled_phone_id", "pk_type": "INTEGER", "pk_ER_name": "single_bundle_phone_bundled_phone_phone_id", "pk_entity_name": "phone", "pk_unique_name": "bundled_phone_id", "pk_reference_key_name": "electronics_id", "pk_reference_key_type": "INTEGER", "pk_reference_key_unique_name": "electronics_id", "pk_reference_node_unique_name": null}], "insert_frequency": 12, "select_all_nodes": ["bundled_phone", "phone", "phone"], "select_frequency": 1, "select_all_tables": [[17, "relation_3"]], "mapped_tables_list": [], "partitioning_options": ["folded_to_many_side", "all_by_itself"], "select_all_attributes_count": 20, "recursive_relationship_roles": ["phone_id", "single_bundle_phone_id"], "node_type_for_partitioning_options": "1_N_relationship"}], "config": {"tag": "all_by_itself", "cart": "all_by_itself", "user": "all_by_itself", "media": "all_by_itself", "phone": "contained_in_parent", "stock": "all_by_itself", "camera": "partially_by_itself", "coupon": "all_by_itself", "laptop": "all_by_itself", "review": "all_by_itself", "tablet": "partially_by_itself", "address": "all_by_itself", "apparel": "partially_by_itself", "desktop": "partially_by_itself", "product": "all_by_itself", "reviews": "folded_to_many_side", "category": "all_by_itself", "clothing": "contained_in_parent", "computer": "contained_in_parent", "customer": "all_by_itself", "employee": "all_by_itself", "engineer": "partially_by_itself", "footwear": "contained_in_parent", "po_items": "all_by_itself", "shipment": "all_by_itself", "software": "partially_by_itself", "supplier": "all_by_itself", "wishlist": "all_by_itself", "appliance": "contained_in_parent", "custorder": "all_by_itself", "promotion": "all_by_itself", "warehouse": "all_by_itself", "smartwatch": "partially_by_itself", "accessories": "all_by_itself", "electronics": "all_by_itself", "menclothing": "partially_by_itself", "order_items": "all_by_itself", "pricehistory": "all_by_itself", "product_tags": "all_by_itself", "productimage": "all_by_itself", "supplier_pos": "folded_to_many_side", "supportagent": "partially_by_itself", "user.mv_user": "contained_in_parent", "warehousebin": "all_by_itself", "bundle_phones": "all_by_itself", "bundled_phone": "folded_to_many_side", "cart_contains": "all_by_itself", "order_coupons": "folded_to_many_side", "order_returns": "all_by_itself", "payment_order": "folded_to_many_side", "paymentmethod": "all_by_itself", "primecustomer": "contained_in_parent", "purchaseorder": "all_by_itself", "womenclothing": "contained_in_parent", "courierpartner": "all_by_itself", "digitalproduct": "partially_by_itself", "productvariant": "all_by_itself", "bought_together": "all_by_itself", "browsingsession": "all_by_itself", "categorymanager": "all_by_itself", "customer_orders": "folded_to_many_side", "physicalproduct": "contained_in_parent", "suppliercontact": "all_by_itself", "businesscustomer": "all_by_itself", "kitchenappliance": "contained_in_parent", "category_products": "folded_to_many_side", "corporateemployee": "contained_in_parent", "courier_shipments": "folded_to_many_side", "supplier_products": "all_by_itself", "wishlist_contains": "all_by_itself", "customer.contact_no": "contained_in_parent", "fulfillmentassociate": "contained_in_parent", "product.mv_attributes": "contained_in_parent", "bundled_phone_smart_watch": "folded_to_many_side", "primecustomer.subscription_addons": "contained_in_parent"}}
\.


--
-- Data for Name: relation_0; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_0 (category_id, category_name, parent) FROM stdin;
1	international	138
2	thousand	583
3	actually	868
4	cultural	822
5	according	783
6	instead	65
7	central	262
8	offer	121
9	mention	508
10	state	780
11	send	461
12	education	484
13	cell	668
14	exist	389
15	its	808
16	community	215
17	fast	97
18	economic	500
19	travel	30
20	long	915
21	behind	856
22	provide	400
23	hour	444
24	watch	623
25	exactly	781
26	save	786
27	commercial	3
28	girl	713
29	medical	457
30	husband	273
31	nature	739
32	check	822
33	difficult	235
34	enjoy	606
35	fish	968
36	reveal	105
37	local	924
38	leader	326
39	successful	32
40	market	23
41	stand	27
42	if	666
43	find	555
44	write	10
45	along	962
46	environment	903
47	dog	391
48	free	703
49	month	222
50	modern	993
51	win	433
52	approach	744
53	success	30
54	report	541
55	material	228
56	recently	783
57	experience	449
58	argue	962
59	apply	508
60	read	567
61	yet	239
62	investment	354
63	number	237
64	space	694
65	heart	225
66	level	780
67	successful	471
68	his	976
69	thousand	297
70	front	949
71	note	23
72	spring	427
73	possible	858
74	type	939
75	though	570
76	I	945
77	save	658
78	treat	103
79	certain	191
80	history	645
81	animal	742
82	huge	881
83	religious	304
84	sure	124
85	beautiful	761
86	civil	341
87	stay	918
88	group	739
89	certainly	997
90	fight	729
91	young	513
92	speak	959
93	professional	991
94	plan	433
95	guess	520
96	debate	850
97	staff	933
98	ten	687
99	large	195
100	full	311
\.


--
-- Data for Name: relation_1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_1 (product_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, role, energy_rating, warranty_years, category_products_category_id) FROM stdin;
1	focus	deal	291	602	997	{indicate,nearly}	\N	product	\N	\N	\N
2	dinner	race	867	964	518	{herself,affect}	\N	product	\N	\N	\N
3	guy	second	604	874	36	{agent,official}	\N	product	\N	\N	\N
4	produce	return	249	762	817	{increase,heart}	\N	product	\N	\N	\N
6	air	whose	562	904	720	{source,everyone}	\N	product	\N	\N	\N
8	begin	store	798	168	534	{move,employee}	\N	product	\N	\N	\N
9	whose	question	380	502	751	{deal}	\N	product	\N	\N	\N
10	artist	economy	481	45	316	{marriage,economic}	\N	product	\N	\N	\N
11	measure	develop	663	175	173	{employee}	\N	product	\N	\N	\N
12	boy	number	13	790	205	{good}	\N	product	\N	\N	\N
13	manage	weight	415	527	353	{approach,option}	\N	product	\N	\N	\N
14	chair	scene	471	932	276	{particular}	\N	product	\N	\N	\N
16	year	catch	532	797	575	{response}	\N	product	\N	\N	\N
17	interview	industry	437	973	58	{difficult,exist}	\N	product	\N	\N	\N
18	final	off	891	374	584	{energy}	\N	product	\N	\N	\N
19	must	nor	964	517	424	{blue,put}	\N	product	\N	\N	\N
20	glass	ready	833	366	425	{begin,son}	\N	product	\N	\N	\N
21	cost	follow	2	552	554	{Mrs,federal}	\N	product	\N	\N	\N
22	notice	professor	470	615	29	{four}	\N	product	\N	\N	\N
25	both	government	34	862	967	{trial}	\N	product	\N	\N	\N
27	where	administration	15	773	774	{sometimes,system}	\N	product	\N	\N	\N
28	tree	top	256	276	113	{of}	\N	product	\N	\N	\N
30	child	north	164	262	541	{fly}	\N	product	\N	\N	\N
31	return	center	673	280	664	{simply,particularly}	\N	product	\N	\N	\N
32	although	rate	466	720	330	{others,beat}	\N	product	\N	\N	\N
34	provide	section	396	352	432	{together}	\N	product	\N	\N	\N
35	summer	voice	265	112	260	{sit}	\N	product	\N	\N	\N
37	week	fast	231	19	407	{up}	\N	product	\N	\N	\N
38	rich	high	37	737	983	{suffer}	\N	product	\N	\N	\N
40	audience	red	558	853	226	{she,who}	\N	product	\N	\N	\N
43	common	they	676	647	437	{need}	\N	product	\N	\N	\N
44	condition	while	756	306	129	{good}	\N	product	\N	\N	\N
45	final	author	897	49	314	{rock}	\N	product	\N	\N	\N
46	dark	risk	880	79	318	{able,black}	\N	product	\N	\N	\N
48	outside	citizen	134	9	575	{message}	\N	product	\N	\N	\N
49	to	main	605	840	223	{note,wish}	\N	product	\N	\N	\N
50	morning	place	176	848	889	{resource}	\N	product	\N	\N	\N
53	between	nature	606	199	505	{could}	\N	product	\N	\N	\N
54	sure	image	961	682	400	{nothing,president}	\N	product	\N	\N	\N
55	together	despite	517	512	18	{west,learn}	\N	product	\N	\N	\N
56	direction	staff	627	893	412	{tonight,wonder}	\N	product	\N	\N	\N
57	after	but	19	161	206	{parent,probably}	\N	product	\N	\N	\N
58	data	send	831	577	802	{hear}	\N	product	\N	\N	\N
59	tree	necessary	348	440	219	{central,second}	\N	product	\N	\N	\N
60	field	idea	691	99	858	{budget,decade}	\N	product	\N	\N	\N
62	first	international	787	546	241	{role}	\N	product	\N	\N	\N
63	impact	this	743	42	87	{never}	\N	product	\N	\N	\N
64	general	discover	174	171	933	{writer}	\N	product	\N	\N	\N
65	benefit	imagine	275	778	341	{control,around}	\N	product	\N	\N	\N
66	thing	career	377	347	349	{easy}	\N	product	\N	\N	\N
67	ahead	sign	299	241	889	{floor,direction}	\N	product	\N	\N	\N
69	democratic	usually	329	41	417	{reduce}	\N	product	\N	\N	\N
71	southern	relate	849	129	350	{major}	\N	product	\N	\N	\N
72	call	join	630	602	801	{lose,rock}	\N	product	\N	\N	\N
73	growth	behavior	79	585	564	{reflect}	\N	product	\N	\N	\N
74	increase	including	580	84	976	{blood,have}	\N	product	\N	\N	\N
75	evening	still	374	913	303	{even}	\N	product	\N	\N	\N
77	Mrs	third	806	47	848	{fact,top}	\N	product	\N	\N	\N
79	compare	responsibility	94	424	118	{outside}	\N	product	\N	\N	\N
80	arrive	ready	193	246	805	{most,response}	\N	product	\N	\N	\N
81	eat	individual	166	119	462	{yet}	\N	product	\N	\N	\N
82	face	to	698	248	163	{skill}	\N	product	\N	\N	\N
83	rather	free	446	933	988	{action,star}	\N	product	\N	\N	\N
84	control	crime	826	994	556	{community,action}	\N	product	\N	\N	\N
86	support	sure	323	103	213	{power,yourself}	\N	product	\N	\N	\N
88	apply	politics	744	611	328	{until,perform}	\N	product	\N	\N	\N
89	front	avoid	401	321	409	{region}	\N	product	\N	\N	\N
90	particularly	often	66	936	325	{rise,four}	\N	product	\N	\N	\N
91	structure	action	115	257	221	{behavior,yet}	\N	product	\N	\N	\N
92	affect	again	678	365	266	{have}	\N	product	\N	\N	\N
94	down	history	253	370	84	{road,hand}	\N	product	\N	\N	\N
95	where	trade	92	772	459	{sport}	\N	product	\N	\N	\N
96	them	person	668	589	659	{worry,collection}	\N	product	\N	\N	\N
97	artist	clear	964	233	400	{billion,series}	\N	product	\N	\N	\N
98	establish	positive	43	336	192	{college,organization}	\N	product	\N	\N	\N
99	suggest	happen	812	868	593	{fast,no}	\N	product	\N	\N	\N
100	degree	increase	252	343	104	{message}	\N	product	\N	\N	\N
101	would	letter	251	226	21	{in}	herself	physicalproduct	\N	\N	\N
102	avoid	Mrs	412	75	275	{population}	also	physicalproduct	\N	\N	\N
104	quickly	these	298	769	812	{house,almost}	once	physicalproduct	\N	\N	\N
105	president	challenge	506	481	884	{power}	you	physicalproduct	\N	\N	\N
106	sign	benefit	104	514	797	{plant,popular}	certain	physicalproduct	\N	\N	\N
108	opportunity	picture	184	795	154	{end}	blood	physicalproduct	\N	\N	\N
109	area	already	842	887	328	{family,despite}	season	physicalproduct	\N	\N	\N
110	wall	throughout	110	727	527	{I,time}	interest	physicalproduct	\N	\N	\N
112	economic	that	559	933	740	{business}	gun	physicalproduct	\N	\N	\N
113	everybody	by	799	324	841	{sing}	move	physicalproduct	\N	\N	\N
114	including	cover	183	307	444	{hot}	senior	physicalproduct	\N	\N	\N
116	follow	bag	259	797	66	{pretty,land}	forget	physicalproduct	\N	\N	\N
117	him	drop	828	441	563	{part,could}	already	physicalproduct	\N	\N	\N
118	on	issue	555	450	872	{center,state}	environmental	physicalproduct	\N	\N	\N
119	past	art	12	406	857	{woman,avoid}	detail	physicalproduct	\N	\N	\N
120	drug	wrong	176	265	498	{attention}	policy	physicalproduct	\N	\N	\N
121	kind	road	813	662	956	{people,perhaps}	budget	physicalproduct	\N	\N	\N
122	morning	he	1000	585	20	{cost}	debate	physicalproduct	\N	\N	\N
123	let	study	709	364	594	{many}	himself	physicalproduct	\N	\N	\N
124	much	miss	608	129	142	{offer,candidate}	thousand	physicalproduct	\N	\N	\N
125	million	economy	849	284	408	{culture,call}	mouth	physicalproduct	\N	\N	\N
126	act	sit	177	628	92	{south}	movement	physicalproduct	\N	\N	\N
128	standard	hospital	513	915	665	{southern,moment}	billion	physicalproduct	\N	\N	\N
129	challenge	necessary	953	703	655	{special}	second	physicalproduct	\N	\N	\N
130	fund	democratic	245	321	507	{day,together}	win	physicalproduct	\N	\N	\N
131	other	mention	980	231	730	{public,establish}	step	physicalproduct	\N	\N	\N
132	product	do	346	574	626	{clearly,push}	fund	physicalproduct	\N	\N	\N
133	avoid	area	996	662	225	{town}	simple	physicalproduct	\N	\N	\N
134	western	collection	944	74	782	{think,floor}	particular	physicalproduct	\N	\N	\N
135	thousand	modern	164	524	785	{car}	person	physicalproduct	\N	\N	\N
136	option	part	320	306	710	{six,I}	if	physicalproduct	\N	\N	\N
137	fill	red	870	566	381	{sound}	family	physicalproduct	\N	\N	\N
138	yard	ready	719	719	755	{finally,however}	prepare	physicalproduct	\N	\N	\N
140	hot	little	919	621	984	{question,benefit}	local	physicalproduct	\N	\N	\N
141	tree	whole	181	160	257	{what,require}	suffer	physicalproduct	\N	\N	\N
142	catch	behavior	223	965	584	{open}	health	physicalproduct	\N	\N	\N
144	apply	say	394	528	866	{lot}	source	physicalproduct	\N	\N	\N
149	upon	physical	456	872	947	{fill}	try	physicalproduct	\N	\N	\N
150	either	now	995	872	392	{despite,box}	garden	physicalproduct	\N	\N	\N
151	drug	experience	407	169	932	{feeling,fish}	determine	physicalproduct	\N	\N	\N
152	hundred	floor	449	130	638	{painting,kind}	magazine	physicalproduct	\N	\N	\N
155	need	decade	677	303	285	{action}	hold	physicalproduct	\N	\N	\N
157	note	choice	983	195	542	{main,look}	idea	physicalproduct	\N	\N	\N
158	them	area	593	22	32	{near}	past	physicalproduct	\N	\N	\N
159	foreign	attack	856	267	212	{drug}	officer	physicalproduct	\N	\N	\N
160	cultural	artist	292	152	556	{movement}	perform	physicalproduct	\N	\N	\N
162	support	prevent	853	700	458	{my}	employee	physicalproduct	\N	\N	\N
163	cut	free	559	366	503	{inside,through}	think	physicalproduct	\N	\N	\N
164	subject	peace	877	125	788	{cover}	line	physicalproduct	\N	\N	\N
165	discover	arrive	585	901	393	{of}	probably	physicalproduct	\N	\N	\N
166	trip	particularly	291	831	111	{beautiful}	TV	physicalproduct	\N	\N	\N
168	everything	change	559	304	989	{series}	go	physicalproduct	\N	\N	\N
169	window	free	77	513	383	{movie,there}	religious	physicalproduct	\N	\N	\N
171	its	part	777	542	332	{with}	cup	physicalproduct	\N	\N	\N
172	material	four	127	453	736	{north,exist}	process	physicalproduct	\N	\N	\N
173	even	truth	359	313	553	{draw,best}	technology	physicalproduct	\N	\N	\N
174	growth	beautiful	348	802	749	{hotel,prove}	almost	physicalproduct	\N	\N	\N
176	international	population	392	209	571	{election}	strategy	physicalproduct	\N	\N	\N
177	front	partner	285	651	613	{money}	begin	physicalproduct	\N	\N	\N
178	smile	history	946	473	616	{coach,scientist}	us	physicalproduct	\N	\N	\N
181	technology	past	369	539	4	{tend,write}	who	physicalproduct	\N	\N	\N
182	need	risk	594	437	994	{example,these}	identify	physicalproduct	\N	\N	\N
183	field	alone	345	882	637	{worry}	despite	physicalproduct	\N	\N	\N
184	might	entire	505	764	254	{expect,general}	skin	physicalproduct	\N	\N	\N
185	miss	piece	645	22	417	{nature}	often	physicalproduct	\N	\N	\N
186	suffer	agreement	649	798	960	{tend,sell}	idea	physicalproduct	\N	\N	\N
189	will	occur	358	935	271	{size,its}	couple	physicalproduct	\N	\N	\N
190	time	human	895	702	558	{prove,conference}	prevent	physicalproduct	\N	\N	\N
191	area	during	156	474	853	{area,note}	role	physicalproduct	\N	\N	\N
192	talk	stage	497	174	479	{scientist}	can	physicalproduct	\N	\N	\N
193	north	want	278	523	101	{toward,that}	nor	physicalproduct	\N	\N	\N
194	back	yes	72	364	69	{once,say}	kind	physicalproduct	\N	\N	\N
195	couple	glass	21	169	520	{its}	show	physicalproduct	\N	\N	\N
196	can	tree	708	96	412	{add,likely}	much	physicalproduct	\N	\N	\N
198	machine	administration	243	908	342	{decide,along}	social	physicalproduct	\N	\N	\N
199	positive	military	71	77	716	{where,arrive}	hair	physicalproduct	\N	\N	\N
200	series	benefit	480	524	572	{care}	listen	physicalproduct	\N	\N	\N
201	agree	least	173	305	669	{deal,industry}	\N	digitalproduct	\N	\N	\N
202	agree	should	365	625	758	{exactly}	\N	digitalproduct	\N	\N	\N
203	positive	catch	402	575	410	{likely}	\N	digitalproduct	\N	\N	\N
204	along	court	496	809	266	{the,million}	\N	digitalproduct	\N	\N	\N
205	heart	child	734	228	265	{young}	\N	digitalproduct	\N	\N	\N
206	third	game	865	677	32	{listen,painting}	\N	digitalproduct	\N	\N	\N
207	understand	light	325	951	443	{least}	\N	digitalproduct	\N	\N	\N
208	party	region	805	276	195	{whose}	\N	digitalproduct	\N	\N	\N
210	author	respond	596	936	956	{eye}	\N	digitalproduct	\N	\N	\N
211	front	person	621	969	269	{son,court}	\N	digitalproduct	\N	\N	\N
212	anyone	north	540	167	142	{operation}	\N	digitalproduct	\N	\N	\N
215	necessary	maintain	119	736	212	{report,election}	\N	digitalproduct	\N	\N	\N
216	practice	article	70	109	234	{speech,PM}	\N	digitalproduct	\N	\N	\N
217	walk	able	330	505	951	{memory}	\N	digitalproduct	\N	\N	\N
218	nor	short	979	192	47	{community}	\N	digitalproduct	\N	\N	\N
221	director	security	351	679	858	{move,resource}	\N	digitalproduct	\N	\N	\N
222	sea	letter	121	628	710	{allow}	\N	digitalproduct	\N	\N	\N
223	whom	if	98	228	410	{moment}	\N	digitalproduct	\N	\N	\N
224	statement	it	507	461	387	{media}	\N	digitalproduct	\N	\N	\N
225	free	teach	997	238	242	{different,expect}	\N	digitalproduct	\N	\N	\N
227	particular	heavy	217	463	733	{Democrat,bank}	\N	digitalproduct	\N	\N	\N
228	generation	base	339	509	608	{money}	\N	digitalproduct	\N	\N	\N
229	attack	country	932	219	81	{happen}	\N	digitalproduct	\N	\N	\N
231	paper	station	328	911	393	{month,building}	\N	digitalproduct	\N	\N	\N
233	later	full	902	845	777	{design}	\N	digitalproduct	\N	\N	\N
235	face	society	397	149	898	{simple}	\N	digitalproduct	\N	\N	\N
236	deal	Congress	579	389	261	{together}	\N	digitalproduct	\N	\N	\N
237	magazine	rock	82	474	668	{per,movement}	\N	digitalproduct	\N	\N	\N
238	billion	hard	928	15	37	{play}	\N	digitalproduct	\N	\N	\N
239	clear	us	538	861	133	{collection}	\N	digitalproduct	\N	\N	\N
240	deal	pick	956	281	800	{add}	\N	digitalproduct	\N	\N	\N
241	bar	newspaper	443	94	195	{purpose}	\N	digitalproduct	\N	\N	\N
242	car	question	512	653	134	{yourself,political}	\N	digitalproduct	\N	\N	\N
243	good	prove	704	837	866	{significant}	\N	digitalproduct	\N	\N	\N
244	cell	deal	679	459	400	{instead,to}	\N	digitalproduct	\N	\N	\N
245	rock	person	647	275	993	{camera,eye}	\N	digitalproduct	\N	\N	\N
246	finish	often	658	651	249	{little}	\N	digitalproduct	\N	\N	\N
247	maybe	choice	62	603	958	{debate}	\N	digitalproduct	\N	\N	\N
248	reveal	reach	359	439	620	{interview}	\N	digitalproduct	\N	\N	\N
249	adult	own	927	362	561	{behind,however}	\N	digitalproduct	\N	\N	\N
252	respond	outside	762	626	739	{reveal}	\N	digitalproduct	\N	\N	\N
253	value	cup	258	182	1000	{American}	\N	digitalproduct	\N	\N	\N
254	find	executive	155	61	941	{Mr}	\N	digitalproduct	\N	\N	\N
257	media	pull	514	380	102	{where,main}	\N	digitalproduct	\N	\N	\N
258	expect	image	42	130	545	{room}	\N	digitalproduct	\N	\N	\N
259	really	get	454	681	132	{local,billion}	\N	digitalproduct	\N	\N	\N
260	number	impact	782	725	921	{charge,four}	\N	digitalproduct	\N	\N	\N
261	author	after	26	755	538	{item,month}	\N	digitalproduct	\N	\N	\N
262	indicate	these	93	257	820	{establish,point}	\N	digitalproduct	\N	\N	\N
264	himself	bed	60	751	268	{or,go}	\N	digitalproduct	\N	\N	\N
265	church	break	753	134	267	{Mrs,line}	\N	digitalproduct	\N	\N	\N
266	seek	affect	827	120	877	{across,instead}	\N	digitalproduct	\N	\N	\N
269	institution	hotel	946	347	522	{popular,sense}	\N	digitalproduct	\N	\N	\N
270	morning	former	980	918	599	{management,choose}	\N	digitalproduct	\N	\N	\N
271	mouth	store	108	133	669	{less,off}	\N	digitalproduct	\N	\N	\N
273	help	assume	919	852	299	{charge}	\N	digitalproduct	\N	\N	\N
274	subject	certainly	205	380	399	{these,part}	\N	digitalproduct	\N	\N	\N
275	act	cost	100	420	354	{part}	\N	digitalproduct	\N	\N	\N
276	respond	radio	589	67	45	{form,production}	\N	digitalproduct	\N	\N	\N
277	high	yes	835	819	667	{design,admit}	\N	digitalproduct	\N	\N	\N
278	experience	try	428	306	327	{half,high}	\N	digitalproduct	\N	\N	\N
279	baby	huge	280	334	767	{entire}	\N	digitalproduct	\N	\N	\N
281	necessary	stage	937	745	334	{very,certainly}	\N	digitalproduct	\N	\N	\N
282	away	executive	587	71	463	{culture,difficult}	\N	digitalproduct	\N	\N	\N
284	forget	responsibility	950	760	994	{American,against}	\N	digitalproduct	\N	\N	\N
286	leader	along	945	593	821	{whether}	\N	digitalproduct	\N	\N	\N
288	standard	read	590	874	258	{out}	\N	digitalproduct	\N	\N	\N
290	significant	present	371	965	817	{try,skill}	\N	digitalproduct	\N	\N	\N
291	task	right	413	315	476	{action,Democrat}	\N	digitalproduct	\N	\N	\N
293	model	effort	152	257	704	{sense}	\N	digitalproduct	\N	\N	\N
294	today	baby	577	137	929	{feel}	\N	digitalproduct	\N	\N	\N
295	factor	college	190	785	421	{listen}	\N	digitalproduct	\N	\N	\N
296	admit	almost	832	102	559	{rich,camera}	\N	digitalproduct	\N	\N	\N
298	agent	participant	69	648	585	{blue}	\N	digitalproduct	\N	\N	\N
299	thing	century	876	75	814	{attack}	\N	digitalproduct	\N	\N	\N
300	turn	purpose	659	859	178	{behavior,more}	\N	digitalproduct	\N	\N	\N
1201	interview	book	802	144	451	{rate}	she	appliance	soldier	\N	\N
1202	audience	upon	159	924	400	{mouth,stuff}	team	appliance	fund	\N	\N
1203	fall	performance	643	690	64	{apply,space}	bad	appliance	agree	\N	\N
1204	police	rate	726	232	683	{field}	single	appliance	time	\N	\N
1205	out	others	293	607	794	{maybe,record}	country	appliance	community	\N	\N
1206	face	ahead	959	339	157	{travel}	quality	appliance	by	\N	\N
1207	five	church	677	844	633	{term,story}	become	appliance	can	\N	\N
1208	voice	lawyer	925	687	861	{later}	or	appliance	cup	\N	\N
1209	task	commercial	76	1	877	{number}	test	appliance	officer	\N	\N
1210	watch	teacher	683	77	837	{activity}	stay	appliance	can	\N	\N
1211	him	up	899	882	135	{little,debate}	five	appliance	society	\N	\N
1213	employee	debate	346	699	286	{maintain,article}	water	appliance	around	\N	\N
1215	main	of	420	83	363	{account}	truth	appliance	nation	\N	\N
1216	guess	anyone	433	462	852	{fire,usually}	ten	appliance	but	\N	\N
1218	high	appear	927	677	58	{society}	bit	appliance	man	\N	\N
1219	southern	sport	418	786	929	{produce}	enter	appliance	out	\N	\N
1220	remember	area	207	70	889	{of}	idea	appliance	smile	\N	\N
1222	any	agree	335	717	824	{population,many}	like	appliance	family	\N	\N
1223	bit	out	675	318	808	{analysis}	century	appliance	century	\N	\N
1224	manager	myself	464	54	45	{three,moment}	go	appliance	candidate	\N	\N
1225	structure	he	164	783	25	{arm,machine}	middle	appliance	push	\N	\N
1226	teacher	economic	25	865	152	{defense,bank}	no	appliance	law	\N	\N
1227	help	book	110	240	263	{might,trade}	must	appliance	no	\N	\N
1228	maintain	degree	512	197	945	{police}	maintain	appliance	worker	\N	\N
1230	view	price	659	864	242	{coach}	father	appliance	situation	\N	\N
1232	plan	American	607	632	472	{reflect}	memory	appliance	possible	\N	\N
1233	boy	a	4	960	836	{yourself}	after	appliance	generation	\N	\N
1234	at	baby	582	375	668	{after}	environmental	appliance	focus	\N	\N
1236	guess	low	308	238	386	{loss,play}	serious	appliance	involve	\N	\N
1237	ok	lead	559	139	945	{none,lot}	cost	appliance	citizen	\N	\N
1238	able	assume	143	305	847	{art}	whole	appliance	might	\N	\N
1239	cultural	TV	307	536	103	{lawyer}	data	appliance	check	\N	\N
1240	early	yourself	451	410	656	{easy}	next	appliance	reality	\N	\N
1242	continue	political	489	989	658	{imagine}	with	appliance	score	\N	\N
1243	purpose	government	898	301	711	{art,vote}	property	appliance	brother	\N	\N
1244	research	personal	481	378	185	{item}	country	appliance	those	\N	\N
1245	health	would	489	893	562	{physical}	spring	appliance	hard	\N	\N
1246	change	site	532	756	806	{wife}	after	appliance	strong	\N	\N
1247	interview	national	142	444	716	{today}	house	appliance	section	\N	\N
1248	official	table	735	374	504	{tend}	significant	appliance	city	\N	\N
1251	few	two	218	443	340	{the,lay}	ten	appliance	close	\N	\N
1252	science	camera	461	453	838	{until,common}	area	appliance	between	\N	\N
1254	every	material	381	41	209	{could,other}	write	appliance	power	\N	\N
1255	soldier	different	134	847	954	{night}	type	appliance	relationship	\N	\N
1256	possible	say	807	779	905	{people,forward}	alone	appliance	arrive	\N	\N
1257	capital	system	859	205	336	{nature}	street	appliance	when	\N	\N
1258	player	whole	855	6	891	{capital}	factor	appliance	note	\N	\N
1259	stage	budget	204	964	736	{camera,drug}	event	appliance	three	\N	\N
1260	despite	raise	200	311	835	{wrong,Republican}	power	appliance	occur	\N	\N
1261	fast	Democrat	676	798	384	{her}	individual	appliance	account	\N	\N
1262	hope	political	29	695	913	{well}	close	appliance	article	\N	\N
1263	process	country	611	285	313	{above}	world	appliance	ability	\N	\N
1264	it	forget	818	682	718	{home}	day	appliance	situation	\N	\N
1265	instead	hard	903	16	357	{economy}	want	appliance	risk	\N	\N
1267	none	enjoy	863	503	467	{significant}	teacher	appliance	opportunity	\N	\N
1270	heart	how	203	438	144	{traditional,cut}	mind	appliance	life	\N	\N
1271	his	bag	411	602	361	{huge}	race	appliance	so	\N	\N
1272	which	act	39	981	874	{Congress,as}	degree	appliance	how	\N	\N
1273	side	there	821	871	848	{outside,when}	mission	appliance	decision	\N	\N
1274	enjoy	course	295	720	382	{mother,issue}	watch	appliance	scientist	\N	\N
1275	per	enough	995	947	384	{several}	right	appliance	door	\N	\N
1276	let	exactly	955	876	118	{final,marriage}	life	appliance	that	\N	\N
1278	commercial	point	686	864	780	{star,near}	husband	appliance	floor	\N	\N
1279	move	structure	284	54	504	{cultural,fact}	mouth	appliance	partner	\N	\N
1280	step	several	855	722	439	{president,lay}	some	appliance	I	\N	\N
1282	media	most	175	524	43	{special,key}	everything	appliance	dog	\N	\N
1283	across	charge	263	197	323	{society}	under	appliance	story	\N	\N
1285	thing	soon	431	432	580	{situation,glass}	call	appliance	become	\N	\N
1286	international	build	622	743	133	{whole}	bank	appliance	anyone	\N	\N
1287	population	general	265	246	720	{better,room}	sit	appliance	month	\N	\N
1288	view	benefit	585	896	189	{dark,center}	much	appliance	usually	\N	\N
1290	building	over	313	523	142	{remember}	similar	appliance	strong	\N	\N
1407	professional	join	619	366	237	{PM}	talk	apparel	\N	\N	\N
1291	bank	identify	422	38	479	{work,improve}	everybody	appliance	quickly	\N	\N
1292	above	real	875	921	531	{wear}	choice	appliance	and	\N	\N
1295	treat	door	832	888	421	{though}	there	appliance	trip	\N	\N
1296	today	above	881	269	616	{issue}	enough	appliance	such	\N	\N
1297	the	color	299	266	334	{site}	wait	appliance	need	\N	\N
1298	need	center	144	557	57	{direction}	already	appliance	quality	\N	\N
1301	hard	actually	82	999	537	{line,leg}	discover	kitchenappliance	minute	933	\N
1302	large	form	997	534	65	{impact,any}	meeting	kitchenappliance	bed	375	\N
1303	national	a	946	644	849	{whole}	reality	kitchenappliance	week	801	\N
1304	name	base	472	416	627	{market,power}	rise	kitchenappliance	economic	698	\N
1305	truth	difference	289	511	998	{always}	light	kitchenappliance	perhaps	543	\N
1307	cultural	catch	991	211	624	{senior,each}	hold	kitchenappliance	program	492	\N
1308	read	word	528	152	788	{shoulder}	and	kitchenappliance	policy	929	\N
1310	bed	minute	365	654	759	{fine,write}	role	kitchenappliance	ok	702	\N
1311	wait	nation	258	741	370	{wide,sea}	raise	kitchenappliance	ground	955	\N
1312	I	right	318	417	409	{need,move}	three	kitchenappliance	series	449	\N
1313	today	trouble	378	334	907	{state,scene}	wrong	kitchenappliance	more	156	\N
1314	prove	lot	819	136	718	{husband,price}	owner	kitchenappliance	management	257	\N
1315	open	grow	653	921	711	{beat,around}	them	kitchenappliance	director	438	\N
1316	blue	kitchen	984	592	483	{success}	media	kitchenappliance	politics	302	\N
1317	treat	form	544	825	506	{the,summer}	deep	kitchenappliance	middle	507	\N
1318	mind	their	135	458	149	{argue,but}	across	kitchenappliance	own	978	\N
1319	level	but	866	155	898	{cause}	have	kitchenappliance	three	342	\N
1320	prevent	fire	799	72	700	{evening,gun}	well	kitchenappliance	agree	175	\N
1321	marriage	national	812	431	641	{see,all}	next	kitchenappliance	economic	312	\N
1322	anyone	hot	277	227	632	{on}	fill	kitchenappliance	resource	877	\N
1324	behind	special	270	498	737	{positive,see}	thank	kitchenappliance	service	471	\N
1325	although	likely	838	47	438	{nothing,need}	under	kitchenappliance	very	500	\N
1326	simple	thank	543	154	330	{nice}	without	kitchenappliance	prove	211	\N
1328	receive	reveal	909	915	330	{learn}	enough	kitchenappliance	also	481	\N
1330	order	lot	944	539	159	{yeah,manager}	us	kitchenappliance	position	863	\N
1331	tax	couple	160	872	63	{where}	work	kitchenappliance	room	722	\N
1333	wonder	college	297	38	447	{teach}	represent	kitchenappliance	someone	220	\N
1334	wide	former	28	972	590	{financial,run}	old	kitchenappliance	scene	415	\N
1336	together	feeling	443	359	886	{against,off}	impact	kitchenappliance	step	913	\N
1337	right	alone	333	844	698	{government,claim}	strong	kitchenappliance	light	124	\N
1338	child	including	692	381	35	{edge,summer}	feeling	kitchenappliance	participant	209	\N
1339	probably	risk	743	602	112	{production,southern}	nor	kitchenappliance	run	18	\N
1341	they	tree	409	922	472	{data,in}	tell	kitchenappliance	accept	560	\N
1342	raise	physical	287	382	148	{page,word}	key	kitchenappliance	capital	60	\N
1343	dog	approach	107	388	910	{write,pull}	great	kitchenappliance	fire	942	\N
1344	necessary	condition	321	912	8	{present,require}	degree	kitchenappliance	hear	645	\N
1345	around	hospital	241	140	322	{six}	only	kitchenappliance	very	209	\N
1346	sound	bank	497	887	176	{yet,such}	government	kitchenappliance	head	353	\N
1348	spring	police	971	63	619	{manage,knowledge}	strategy	kitchenappliance	series	813	\N
1350	stand	boy	482	374	438	{dog,control}	share	kitchenappliance	station	70	\N
1351	hear	move	997	965	231	{yes,all}	culture	kitchenappliance	decide	964	\N
1352	alone	business	57	333	107	{country,car}	among	kitchenappliance	heavy	559	\N
1353	want	yourself	733	711	512	{value,medical}	major	kitchenappliance	man	146	\N
1354	who	rate	928	208	71	{almost,fact}	inside	kitchenappliance	less	509	\N
1355	seven	marriage	906	499	480	{concern,form}	clear	kitchenappliance	other	477	\N
1356	general	professor	557	83	505	{stage,according}	thing	kitchenappliance	go	746	\N
1357	society	major	560	859	661	{reach}	save	kitchenappliance	use	725	\N
1358	cut	compare	586	828	836	{force}	move	kitchenappliance	market	914	\N
1359	agency	whole	427	96	761	{level}	car	kitchenappliance	indicate	936	\N
1360	piece	provide	928	835	392	{debate}	yard	kitchenappliance	wife	434	\N
1361	born	raise	942	751	571	{school}	avoid	kitchenappliance	size	970	\N
1363	discuss	could	850	104	84	{soldier,although}	science	kitchenappliance	again	128	\N
1364	western	analysis	694	597	573	{on,in}	but	kitchenappliance	free	427	\N
1365	tree	industry	700	405	77	{concern,activity}	alone	kitchenappliance	take	880	\N
1367	century	same	762	798	447	{production,thought}	lead	kitchenappliance	really	408	\N
1368	size	most	638	558	623	{only}	cut	kitchenappliance	hair	469	\N
1369	when	cup	619	490	397	{figure}	trip	kitchenappliance	country	341	\N
1370	world	dinner	285	642	851	{which}	standard	kitchenappliance	attack	272	\N
1371	yes	clear	675	45	97	{reach}	effect	kitchenappliance	per	750	\N
1372	join	student	675	37	5	{theory,to}	over	kitchenappliance	relationship	347	\N
1375	land	song	894	696	405	{war}	point	kitchenappliance	find	29	\N
1376	available	model	140	246	990	{test,easy}	doctor	kitchenappliance	discussion	665	\N
1377	successful	mission	400	967	322	{case}	take	kitchenappliance	media	296	\N
1378	main	cause	627	143	583	{car}	hot	kitchenappliance	chance	568	\N
1380	those	phone	916	875	204	{fact}	its	kitchenappliance	produce	853	\N
1381	issue	spring	973	218	502	{people,data}	consider	kitchenappliance	meet	807	\N
1382	north	she	373	481	649	{according,house}	run	kitchenappliance	social	544	\N
1383	behind	not	1	431	917	{quickly}	modern	kitchenappliance	space	728	\N
1384	common	threat	389	849	879	{price,parent}	could	kitchenappliance	society	634	\N
1385	Congress	trip	959	965	28	{court,vote}	base	kitchenappliance	bag	112	\N
1386	with	reduce	827	526	879	{smile}	paper	kitchenappliance	wrong	439	\N
1387	more	suggest	264	133	905	{than,early}	section	kitchenappliance	use	582	\N
1388	mind	such	888	781	561	{window,tend}	break	kitchenappliance	least	258	\N
1390	tax	make	359	415	453	{admit,response}	according	kitchenappliance	necessary	432	\N
1391	sing	beautiful	940	693	519	{outside,kitchen}	machine	kitchenappliance	population	512	\N
1392	owner	paper	386	550	29	{relate}	class	kitchenappliance	see	848	\N
1394	affect	energy	21	359	79	{where}	alone	kitchenappliance	agent	710	\N
1397	budget	remember	286	775	485	{international,walk}	really	kitchenappliance	gas	192	\N
1398	performance	write	239	45	300	{create,data}	good	kitchenappliance	before	557	\N
1399	choice	health	568	928	465	{theory,south}	number	kitchenappliance	spring	842	\N
1400	exist	discuss	252	12	312	{get,before}	far	kitchenappliance	structure	153	\N
1401	process	red	204	202	186	{attorney,late}	draw	apparel	\N	\N	\N
1402	adult	describe	74	263	969	{network}	few	apparel	\N	\N	\N
1403	area	town	402	643	817	{result,building}	everything	apparel	\N	\N	\N
1404	apply	something	764	787	186	{outside,condition}	rule	apparel	\N	\N	\N
1405	decision	yard	912	958	408	{many}	think	apparel	\N	\N	\N
1406	five	rise	920	833	977	{management,town}	ask	apparel	\N	\N	\N
1408	series	smile	810	853	554	{story}	lead	apparel	\N	\N	\N
1409	girl	system	466	638	129	{computer,send}	on	apparel	\N	\N	\N
1410	something	energy	948	396	153	{some,reflect}	window	apparel	\N	\N	\N
1411	deal	discuss	352	257	855	{list}	become	apparel	\N	\N	\N
1412	produce	right	897	147	193	{special,born}	political	apparel	\N	\N	\N
1414	rather	full	952	1000	664	{term}	get	apparel	\N	\N	\N
1415	maybe	when	879	471	292	{difference}	respond	apparel	\N	\N	\N
1417	last	available	767	80	619	{natural}	teacher	apparel	\N	\N	\N
1418	third	no	874	208	969	{participant}	include	apparel	\N	\N	\N
1419	such	truth	910	32	447	{glass}	difference	apparel	\N	\N	\N
1421	party	player	54	458	634	{meet,carry}	role	apparel	\N	\N	\N
1422	five	item	725	294	593	{while}	land	apparel	\N	\N	\N
1425	garden	natural	236	527	325	{few}	that	apparel	\N	\N	\N
1427	radio	able	273	656	430	{style,whether}	court	apparel	\N	\N	\N
1428	will	base	118	19	979	{such}	chance	apparel	\N	\N	\N
1431	one	property	36	31	268	{future}	laugh	apparel	\N	\N	\N
1432	attention	far	32	743	299	{employee,bank}	it	apparel	\N	\N	\N
1433	two	some	738	740	613	{generation,source}	country	apparel	\N	\N	\N
1435	require	capital	180	360	736	{environment}	officer	apparel	\N	\N	\N
1436	improve	provide	805	379	148	{later,mean}	middle	apparel	\N	\N	\N
1437	cause	number	199	937	473	{student,nor}	father	apparel	\N	\N	\N
1438	suffer	these	459	356	630	{provide}	image	apparel	\N	\N	\N
1440	activity	in	91	749	320	{most,perhaps}	prove	apparel	\N	\N	\N
1441	system	state	84	125	602	{real,protect}	American	apparel	\N	\N	\N
1442	prepare	pass	946	256	570	{subject,decide}	figure	apparel	\N	\N	\N
1443	poor	despite	793	905	936	{green,hundred}	have	apparel	\N	\N	\N
1444	know	test	829	932	128	{benefit}	check	apparel	\N	\N	\N
1445	form	thank	733	417	217	{perform,leader}	study	apparel	\N	\N	\N
1446	actually	process	969	140	794	{energy}	fund	apparel	\N	\N	\N
1447	role	approach	856	82	445	{station}	respond	apparel	\N	\N	\N
1448	travel	figure	391	158	585	{truth}	community	apparel	\N	\N	\N
1449	ahead	meet	948	309	263	{herself,including}	base	apparel	\N	\N	\N
1452	tax	born	494	675	920	{myself,easy}	as	apparel	\N	\N	\N
1453	medical	enjoy	909	218	601	{think,help}	another	apparel	\N	\N	\N
1456	forward	TV	949	677	413	{state,training}	ground	apparel	\N	\N	\N
1457	most	minute	330	828	111	{including}	that	apparel	\N	\N	\N
1458	citizen	daughter	209	951	383	{economic,reason}	be	apparel	\N	\N	\N
1459	least	they	647	333	578	{few}	feel	apparel	\N	\N	\N
1460	you	than	57	727	470	{fund}	available	apparel	\N	\N	\N
1461	later	onto	466	511	522	{miss}	choice	apparel	\N	\N	\N
1462	bed	half	822	880	285	{letter,threat}	bank	apparel	\N	\N	\N
1463	decision	short	631	160	291	{new}	will	apparel	\N	\N	\N
1464	seven	then	996	326	229	{cultural,research}	reflect	apparel	\N	\N	\N
1466	grow	least	875	426	217	{best,never}	order	apparel	\N	\N	\N
1467	usually	mean	799	137	525	{activity}	senior	apparel	\N	\N	\N
1468	free	then	904	398	30	{main,break}	probably	apparel	\N	\N	\N
1469	office	road	143	404	355	{beat,school}	bed	apparel	\N	\N	\N
1470	treatment	whether	617	150	750	{many}	expert	apparel	\N	\N	\N
1471	garden	question	783	989	703	{Democrat}	with	apparel	\N	\N	\N
1472	decide	full	773	988	205	{although,seven}	onto	apparel	\N	\N	\N
1474	stop	beyond	259	571	993	{popular}	big	apparel	\N	\N	\N
1477	effect	member	149	175	626	{even,history}	out	apparel	\N	\N	\N
1479	cold	move	414	936	55	{his,thus}	else	apparel	\N	\N	\N
1483	eye	benefit	856	365	731	{accept,rock}	individual	apparel	\N	\N	\N
1484	opportunity	we	248	420	141	{measure}	level	apparel	\N	\N	\N
1485	husband	though	700	942	411	{blood}	so	apparel	\N	\N	\N
1486	sure	role	253	193	582	{method}	all	apparel	\N	\N	\N
1489	compare	people	54	952	526	{ready,artist}	cut	apparel	\N	\N	\N
1490	here	news	884	550	775	{available,stop}	scene	apparel	\N	\N	\N
1494	system	law	132	366	642	{customer,chance}	couple	apparel	\N	\N	\N
1495	computer	prevent	95	475	528	{agent,according}	radio	apparel	\N	\N	\N
1496	dark	second	387	797	270	{name}	husband	apparel	\N	\N	\N
1497	imagine	only	469	479	681	{since}	water	apparel	\N	\N	\N
1499	condition	response	804	964	541	{east,executive}	represent	apparel	\N	\N	\N
1500	cup	apply	434	948	243	{difficult,billion}	them	apparel	\N	\N	\N
1501	individual	market	721	477	824	{analysis,only}	fact	clothing	\N	\N	\N
1502	cold	specific	452	533	771	{travel}	plant	clothing	\N	\N	\N
1503	under	record	149	826	736	{do}	clear	clothing	\N	\N	\N
1505	responsibility	perhaps	280	374	230	{image}	cut	clothing	\N	\N	\N
1506	college	admit	986	456	367	{though,all}	save	clothing	\N	\N	\N
1507	open	mother	855	716	40	{sort}	effort	clothing	\N	\N	\N
1508	if	different	399	545	362	{life,crime}	return	clothing	\N	\N	\N
1512	service	firm	761	318	942	{today}	few	clothing	\N	\N	\N
1513	reach	couple	438	571	600	{tend}	black	clothing	\N	\N	\N
1514	avoid	clear	252	286	95	{recently,history}	entire	clothing	\N	\N	\N
1515	wonder	like	402	697	519	{manage,production}	all	clothing	\N	\N	\N
1517	hospital	consumer	423	230	718	{use}	have	clothing	\N	\N	\N
1518	sometimes	difference	494	125	528	{music,far}	president	clothing	\N	\N	\N
1519	everybody	often	867	583	769	{technology}	heavy	clothing	\N	\N	\N
1520	lay	line	33	84	331	{more}	food	clothing	\N	\N	\N
1521	from	company	881	454	93	{understand}	power	clothing	\N	\N	\N
1525	day	break	507	129	707	{nice,kitchen}	foreign	clothing	\N	\N	\N
1526	time	suggest	447	491	302	{physical}	go	clothing	\N	\N	\N
1527	whose	the	622	257	558	{first}	actually	clothing	\N	\N	\N
1528	language	site	612	915	94	{standard,everything}	their	clothing	\N	\N	\N
1530	around	fight	877	23	770	{worry,many}	offer	clothing	\N	\N	\N
1531	major	us	43	136	342	{spend,plant}	management	clothing	\N	\N	\N
1532	want	politics	569	824	846	{more}	law	clothing	\N	\N	\N
1533	family	difference	617	798	462	{role,professor}	lot	clothing	\N	\N	\N
1534	expect	race	336	212	438	{fast,on}	never	clothing	\N	\N	\N
1535	relate	attack	66	390	931	{inside,out}	international	clothing	\N	\N	\N
1536	road	law	856	803	5	{attack}	determine	clothing	\N	\N	\N
1538	word	put	581	592	388	{section}	three	clothing	\N	\N	\N
1539	claim	student	996	401	78	{finish}	occur	clothing	\N	\N	\N
1540	resource	rate	864	250	65	{possible,fund}	thing	clothing	\N	\N	\N
1541	staff	at	881	871	540	{fine,character}	along	clothing	\N	\N	\N
1542	pull	lawyer	567	873	319	{wear}	present	clothing	\N	\N	\N
1543	light	month	148	506	497	{one,indicate}	arrive	clothing	\N	\N	\N
1544	book	score	154	561	120	{full}	to	clothing	\N	\N	\N
1546	prepare	trip	509	641	679	{couple,site}	training	clothing	\N	\N	\N
1547	them	already	148	152	324	{physical,public}	her	clothing	\N	\N	\N
1548	science	relate	453	280	855	{energy,buy}	billion	clothing	\N	\N	\N
1549	challenge	morning	607	979	804	{film,enough}	at	clothing	\N	\N	\N
1550	along	will	723	926	407	{any}	cover	clothing	\N	\N	\N
1551	develop	figure	23	221	563	{only}	condition	clothing	\N	\N	\N
1552	knowledge	fine	253	625	689	{sometimes,pay}	staff	clothing	\N	\N	\N
1553	race	value	992	444	571	{best}	who	clothing	\N	\N	\N
1554	rule	foreign	85	30	797	{item}	hot	clothing	\N	\N	\N
1555	talk	practice	878	662	340	{everyone}	perform	clothing	\N	\N	\N
1556	together	organization	744	951	206	{save}	from	clothing	\N	\N	\N
1557	design	less	563	87	523	{itself}	two	clothing	\N	\N	\N
1558	prepare	skill	63	308	653	{tree,son}	say	clothing	\N	\N	\N
1560	including	quite	888	910	357	{government,decide}	machine	clothing	\N	\N	\N
1561	current	clear	381	788	211	{region}	stuff	clothing	\N	\N	\N
1562	step	debate	628	596	512	{want}	son	clothing	\N	\N	\N
1563	list	painting	183	391	3	{child}	live	clothing	\N	\N	\N
1564	describe	manage	18	272	375	{seat}	time	clothing	\N	\N	\N
1565	force	way	417	675	194	{yet}	forget	clothing	\N	\N	\N
1566	movie	even	429	914	678	{walk}	cause	clothing	\N	\N	\N
1568	treat	kid	176	599	855	{challenge}	shoulder	clothing	\N	\N	\N
1569	military	research	837	643	213	{wall}	pretty	clothing	\N	\N	\N
1570	past	trip	59	299	151	{standard,machine}	for	clothing	\N	\N	\N
1572	cause	natural	168	915	525	{writer}	eat	clothing	\N	\N	\N
1573	just	color	512	879	661	{nice}	off	clothing	\N	\N	\N
1574	call	direction	929	459	188	{surface,appear}	probably	clothing	\N	\N	\N
1576	color	unit	587	722	45	{along}	painting	clothing	\N	\N	\N
1578	audience	require	246	832	767	{adult,major}	wind	clothing	\N	\N	\N
1579	off	parent	849	964	897	{thousand,result}	once	clothing	\N	\N	\N
1580	indeed	first	734	934	241	{job,ready}	at	clothing	\N	\N	\N
1581	value	oil	864	802	910	{attack,another}	some	clothing	\N	\N	\N
1582	prove	employee	901	421	826	{lead}	some	clothing	\N	\N	\N
1583	left	side	470	526	693	{hospital,author}	since	clothing	\N	\N	\N
1585	bring	share	434	127	558	{learn}	machine	clothing	\N	\N	\N
1586	ok	garden	780	427	953	{each,peace}	check	clothing	\N	\N	\N
1587	defense	deep	525	391	616	{stand,party}	report	clothing	\N	\N	\N
1592	medical	while	386	652	961	{run,check}	peace	clothing	\N	\N	\N
1594	general	city	321	877	181	{here,bank}	door	clothing	\N	\N	\N
1595	but	edge	680	815	556	{field}	leg	clothing	\N	\N	\N
1596	picture	exactly	979	195	77	{someone}	itself	clothing	\N	\N	\N
1597	hundred	win	88	261	699	{half,know}	part	clothing	\N	\N	\N
1598	down	no	759	229	505	{sea,young}	particular	clothing	\N	\N	\N
1599	among	anyone	882	35	959	{so,personal}	let	clothing	\N	\N	\N
1600	result	rock	353	412	945	{wife,us}	require	clothing	\N	\N	\N
1602	people	eight	940	238	155	{product}	some	menclothing	\N	\N	\N
1603	action	hour	958	345	675	{enjoy,half}	order	menclothing	\N	\N	\N
1604	none	decision	626	993	596	{stage,magazine}	same	menclothing	\N	\N	\N
1605	two	especially	436	691	309	{wind,American}	movie	menclothing	\N	\N	\N
1606	attorney	trade	753	321	266	{write}	rich	menclothing	\N	\N	\N
1545	not	site	275	556	804	{personal}	street	clothing	\N	\N	65
1607	computer	finally	465	404	984	{impact,film}	down	menclothing	\N	\N	\N
1608	minute	personal	40	593	797	{staff}	impact	menclothing	\N	\N	\N
1609	significant	dark	819	796	698	{customer}	will	menclothing	\N	\N	\N
1610	account	suffer	676	641	140	{half}	at	menclothing	\N	\N	\N
1612	check	writer	773	409	257	{charge}	thus	menclothing	\N	\N	\N
1614	describe	debate	327	71	212	{country,break}	parent	menclothing	\N	\N	\N
1615	heart	risk	216	410	630	{by}	into	menclothing	\N	\N	\N
1618	instead	executive	940	115	396	{member}	establish	menclothing	\N	\N	\N
1619	strategy	thought	479	791	495	{himself}	medical	menclothing	\N	\N	\N
1620	turn	there	166	773	6	{south,kitchen}	pay	menclothing	\N	\N	\N
1623	house	expect	207	871	745	{reflect}	he	menclothing	\N	\N	\N
1624	become	shake	618	63	349	{office}	drug	menclothing	\N	\N	\N
1625	serve	Mr	491	288	764	{former}	board	menclothing	\N	\N	\N
1627	hand	most	938	50	159	{however}	let	menclothing	\N	\N	\N
1629	like	high	711	74	189	{watch}	PM	menclothing	\N	\N	\N
1630	design	actually	386	297	523	{article}	admit	menclothing	\N	\N	\N
1631	camera	list	293	142	175	{nation,thus}	recent	menclothing	\N	\N	\N
1632	result	mind	955	521	240	{ground,expect}	anyone	menclothing	\N	\N	\N
1633	share	low	887	830	460	{certain}	chair	menclothing	\N	\N	\N
1636	guess	product	994	365	676	{law,yet}	also	menclothing	\N	\N	\N
1637	finally	weight	788	46	689	{ahead,camera}	of	menclothing	\N	\N	\N
1638	various	large	91	162	506	{stay}	painting	menclothing	\N	\N	\N
1639	past	possible	361	918	317	{production}	camera	menclothing	\N	\N	\N
1640	director	only	42	710	494	{population,region}	people	menclothing	\N	\N	\N
1641	phone	mention	365	354	356	{shoulder}	somebody	menclothing	\N	\N	\N
1642	view	food	797	557	137	{act}	give	menclothing	\N	\N	\N
1643	wish	entire	425	820	685	{understand}	father	menclothing	\N	\N	\N
1644	pay	life	971	246	264	{garden,all}	player	menclothing	\N	\N	\N
1646	recognize	only	645	454	997	{practice}	technology	menclothing	\N	\N	\N
1647	dream	risk	504	721	500	{family}	course	menclothing	\N	\N	\N
1648	real	difference	28	436	397	{agreement}	remember	menclothing	\N	\N	\N
1649	adult	glass	293	575	706	{home,human}	center	menclothing	\N	\N	\N
1650	rich	use	196	895	606	{light,service}	force	menclothing	\N	\N	\N
1651	human	rock	823	759	715	{animal}	light	menclothing	\N	\N	\N
1652	name	responsibility	250	659	496	{organization,concern}	drug	menclothing	\N	\N	\N
1654	father	part	977	881	60	{family,strategy}	drop	menclothing	\N	\N	\N
1655	team	push	162	140	55	{end,sister}	skill	menclothing	\N	\N	\N
1656	discussion	chance	484	248	875	{heavy}	front	menclothing	\N	\N	\N
1657	begin	partner	846	36	15	{resource,let}	chance	menclothing	\N	\N	\N
1658	magazine	despite	917	470	838	{heart,piece}	leg	menclothing	\N	\N	\N
1659	seem	television	788	440	249	{exactly,book}	full	menclothing	\N	\N	\N
1660	collection	value	181	107	249	{mission,stock}	tend	menclothing	\N	\N	\N
1661	art	exactly	312	236	26	{note}	tax	menclothing	\N	\N	\N
1662	market	sign	211	440	944	{card,over}	career	menclothing	\N	\N	\N
1663	us	physical	928	508	773	{name,market}	fire	menclothing	\N	\N	\N
1664	amount	bed	816	966	314	{successful}	consumer	menclothing	\N	\N	\N
1665	Democrat	scientist	647	478	143	{minute,final}	like	menclothing	\N	\N	\N
1669	seem	whose	773	4	321	{analysis,help}	south	menclothing	\N	\N	\N
1670	first	until	114	67	437	{option,address}	weight	menclothing	\N	\N	\N
1671	enough	chance	259	44	144	{dark,few}	front	menclothing	\N	\N	\N
1672	wall	blood	384	801	352	{everything,these}	explain	menclothing	\N	\N	\N
1673	exist	them	929	184	886	{the}	newspaper	menclothing	\N	\N	\N
1674	compare	report	480	861	335	{attorney}	reach	menclothing	\N	\N	\N
1675	effort	officer	616	235	835	{none,doctor}	gas	menclothing	\N	\N	\N
1676	within	however	167	637	437	{senior,dream}	rest	menclothing	\N	\N	\N
1678	professor	save	628	471	997	{hand}	sound	menclothing	\N	\N	\N
1679	full	parent	604	966	446	{computer,small}	hot	menclothing	\N	\N	\N
1681	meet	that	32	572	717	{live,agent}	enter	menclothing	\N	\N	\N
1682	now	able	585	615	552	{mouth}	culture	menclothing	\N	\N	\N
1683	back	pull	245	46	921	{matter,father}	reason	menclothing	\N	\N	\N
1685	right	hit	264	584	358	{idea,cost}	arm	menclothing	\N	\N	\N
1686	decide	anyone	529	375	581	{finally}	example	menclothing	\N	\N	\N
1687	only	since	185	438	228	{which,simply}	human	menclothing	\N	\N	\N
1688	loss	respond	836	997	647	{direction,science}	conference	menclothing	\N	\N	\N
1689	type	fall	674	260	744	{send}	including	menclothing	\N	\N	\N
1690	rich	exist	68	632	266	{interview,man}	film	menclothing	\N	\N	\N
1691	contain	agree	526	792	35	{rock,little}	oil	menclothing	\N	\N	\N
1692	myself	eight	490	946	494	{history}	we	menclothing	\N	\N	\N
1693	long	else	868	95	690	{house}	want	menclothing	\N	\N	\N
1694	onto	senior	52	586	596	{recognize,tend}	choice	menclothing	\N	\N	\N
1695	perform	trial	293	68	569	{artist}	be	menclothing	\N	\N	\N
1696	street	federal	607	672	174	{or}	worry	menclothing	\N	\N	\N
1697	there	military	698	737	444	{various,fund}	pretty	menclothing	\N	\N	\N
1698	until	believe	649	965	727	{knowledge}	effort	menclothing	\N	\N	\N
1699	ball	look	621	961	797	{together,society}	trade	menclothing	\N	\N	\N
1700	west	day	683	943	989	{threat}	east	menclothing	\N	\N	\N
1702	purpose	most	52	18	79	{cell,effect}	camera	womenclothing	\N	\N	\N
1703	but	bar	804	371	922	{night,actually}	democratic	womenclothing	\N	\N	\N
1704	movement	campaign	193	938	860	{ready}	leave	womenclothing	\N	\N	\N
1705	later	able	6	838	437	{which}	fine	womenclothing	\N	\N	\N
1706	just	others	252	64	927	{Democrat,account}	end	womenclothing	\N	\N	\N
1707	test	him	116	379	384	{week}	clear	womenclothing	\N	\N	\N
1708	phone	design	876	390	536	{physical}	protect	womenclothing	\N	\N	\N
1709	rate	success	763	326	502	{picture}	human	womenclothing	\N	\N	\N
1711	trip	later	444	869	616	{quality,each}	direction	womenclothing	\N	\N	\N
1712	material	cup	20	353	528	{several,party}	hot	womenclothing	\N	\N	\N
1713	management	many	238	408	509	{official,perhaps}	wonder	womenclothing	\N	\N	\N
1715	group	who	418	621	439	{enter}	best	womenclothing	\N	\N	\N
1716	middle	music	708	149	339	{school}	late	womenclothing	\N	\N	\N
1717	religious	entire	145	504	936	{without,easy}	interest	womenclothing	\N	\N	\N
1719	eye	answer	907	375	382	{rise,my}	hair	womenclothing	\N	\N	\N
1720	throw	stop	748	83	803	{standard,international}	either	womenclothing	\N	\N	\N
1721	director	wish	135	733	661	{whether}	here	womenclothing	\N	\N	\N
1722	important	on	895	145	51	{dream,nation}	hundred	womenclothing	\N	\N	\N
1724	wonder	story	131	141	246	{could,worker}	despite	womenclothing	\N	\N	\N
1725	doctor	story	987	216	773	{myself}	those	womenclothing	\N	\N	\N
1726	administration	reveal	455	204	419	{time,charge}	weight	womenclothing	\N	\N	\N
1727	turn	campaign	135	319	804	{evening}	stuff	womenclothing	\N	\N	\N
1728	dream	film	472	26	588	{between}	develop	womenclothing	\N	\N	\N
1729	south	training	752	970	642	{note}	along	womenclothing	\N	\N	\N
1730	ask	against	33	765	145	{bank,city}	minute	womenclothing	\N	\N	\N
1731	make	address	676	299	526	{central}	soon	womenclothing	\N	\N	\N
1732	week	expect	59	920	73	{or,significant}	professional	womenclothing	\N	\N	\N
1733	adult	ask	750	275	710	{return,turn}	structure	womenclothing	\N	\N	\N
1737	despite	suddenly	119	211	184	{interest,director}	morning	womenclothing	\N	\N	\N
1738	peace	including	772	840	912	{realize,way}	standard	womenclothing	\N	\N	\N
1739	goal	brother	649	132	847	{body}	test	womenclothing	\N	\N	\N
1741	middle	hard	896	707	602	{note}	guy	womenclothing	\N	\N	\N
1742	Mrs	focus	703	990	759	{well}	western	womenclothing	\N	\N	\N
1743	blue	ago	393	456	368	{condition}	huge	womenclothing	\N	\N	\N
1744	idea	decide	980	617	825	{hotel,threat}	my	womenclothing	\N	\N	\N
1745	probably	although	653	500	790	{admit}	must	womenclothing	\N	\N	\N
1746	more	what	256	625	920	{me,so}	argue	womenclothing	\N	\N	\N
1747	movie	already	178	519	624	{interest,coach}	relationship	womenclothing	\N	\N	\N
1748	else	movement	70	768	880	{plant,structure}	week	womenclothing	\N	\N	\N
1754	light	money	631	548	1	{stock}	full	womenclothing	\N	\N	\N
1755	yard	game	71	774	553	{maybe,south}	once	womenclothing	\N	\N	\N
1756	issue	product	944	489	50	{thousand}	court	womenclothing	\N	\N	\N
1757	center	research	471	466	581	{smile}	firm	womenclothing	\N	\N	\N
1759	star	with	356	66	180	{once}	perform	womenclothing	\N	\N	\N
1760	car	program	776	588	5	{trial,matter}	accept	womenclothing	\N	\N	\N
1761	remain	policy	199	583	686	{or}	much	womenclothing	\N	\N	\N
1762	sound	set	967	159	499	{part}	agency	womenclothing	\N	\N	\N
1763	young	seem	357	537	879	{upon,career}	industry	womenclothing	\N	\N	\N
1764	vote	soldier	611	106	737	{important}	onto	womenclothing	\N	\N	\N
1767	laugh	future	586	330	551	{nature,itself}	they	womenclothing	\N	\N	\N
1768	face	experience	590	758	595	{environment,action}	technology	womenclothing	\N	\N	\N
1770	figure	task	805	805	933	{stay,available}	trouble	womenclothing	\N	\N	\N
1771	course	black	604	154	312	{should,training}	thank	womenclothing	\N	\N	\N
1772	person	today	937	859	80	{whom,state}	too	womenclothing	\N	\N	\N
1774	environmental	evidence	734	134	502	{program,society}	pull	womenclothing	\N	\N	\N
1775	spring	pressure	683	269	979	{occur}	practice	womenclothing	\N	\N	\N
1778	spend	today	412	691	130	{get,alone}	discussion	womenclothing	\N	\N	\N
1779	employee	design	44	699	260	{less}	teach	womenclothing	\N	\N	\N
1780	cultural	kind	348	83	940	{hand,apply}	decade	womenclothing	\N	\N	\N
1781	entire	drug	391	107	135	{total}	picture	womenclothing	\N	\N	\N
1782	left	everyone	995	498	332	{imagine,key}	financial	womenclothing	\N	\N	\N
1783	message	relate	417	795	84	{pay,different}	responsibility	womenclothing	\N	\N	\N
1784	TV	consider	999	37	445	{measure}	close	womenclothing	\N	\N	\N
1786	explain	position	632	633	776	{first}	kind	womenclothing	\N	\N	\N
1787	region	certainly	137	879	868	{bed,season}	until	womenclothing	\N	\N	\N
1789	discuss	particularly	452	4	355	{near,by}	bring	womenclothing	\N	\N	\N
1791	cold	theory	716	682	984	{recent}	always	womenclothing	\N	\N	\N
1792	country	kitchen	744	452	638	{clear}	it	womenclothing	\N	\N	\N
1793	bit	face	678	205	942	{list,later}	environment	womenclothing	\N	\N	\N
1796	particular	group	687	90	785	{employee}	student	womenclothing	\N	\N	\N
1797	benefit	account	542	634	492	{describe}	structure	womenclothing	\N	\N	\N
1798	goal	simply	98	512	123	{speech,five}	maybe	womenclothing	\N	\N	\N
1799	position	successful	518	559	171	{present}	operation	womenclothing	\N	\N	\N
1802	study	hot	596	230	534	{position}	popular	footwear	\N	\N	\N
1803	owner	boy	804	462	235	{wonder}	forget	footwear	\N	\N	\N
1805	dark	practice	258	591	527	{section,want}	strategy	footwear	\N	\N	\N
1806	actually	relate	841	21	342	{beautiful,community}	sister	footwear	\N	\N	\N
1807	recognize	explain	250	442	157	{month,by}	style	footwear	\N	\N	\N
1808	Republican	matter	70	488	906	{firm,effort}	let	footwear	\N	\N	\N
1809	new	think	420	757	858	{around}	ago	footwear	\N	\N	\N
1811	million	Mrs	957	122	859	{begin,seven}	someone	footwear	\N	\N	\N
1812	sister	me	388	873	33	{reflect}	power	footwear	\N	\N	\N
1813	student	deal	558	353	77	{together,far}	against	footwear	\N	\N	\N
1814	reality	everybody	1000	692	482	{describe,sure}	husband	footwear	\N	\N	\N
1816	far	rise	410	44	268	{inside,stand}	perhaps	footwear	\N	\N	\N
1817	recent	affect	692	402	395	{pick,number}	Republican	footwear	\N	\N	\N
1818	apply	discuss	16	731	693	{address}	civil	footwear	\N	\N	\N
1819	your	option	551	134	76	{role,test}	next	footwear	\N	\N	\N
1821	important	mouth	202	414	651	{speech,rate}	factor	footwear	\N	\N	\N
1823	one	art	23	795	45	{body,game}	seat	footwear	\N	\N	\N
1824	condition	film	759	429	134	{despite}	same	footwear	\N	\N	\N
1825	then	single	762	194	517	{local,life}	bank	footwear	\N	\N	\N
1826	central	kid	846	291	903	{PM}	early	footwear	\N	\N	\N
1828	take	one	479	163	305	{little}	billion	footwear	\N	\N	\N
1829	couple	hour	666	308	600	{notice,artist}	about	footwear	\N	\N	\N
1830	carry	lead	33	630	537	{tend,team}	rate	footwear	\N	\N	\N
1831	phone	assume	301	33	500	{professional}	policy	footwear	\N	\N	\N
1832	investment	onto	960	168	759	{change,miss}	action	footwear	\N	\N	\N
1836	generation	institution	356	205	351	{dark}	pick	footwear	\N	\N	\N
1837	some	trouble	251	142	967	{trial}	mean	footwear	\N	\N	\N
1839	project	through	315	324	505	{front,agree}	should	footwear	\N	\N	\N
1840	item	recognize	22	395	592	{know,character}	teacher	footwear	\N	\N	\N
1841	sing	religious	241	754	539	{memory}	civil	footwear	\N	\N	\N
1842	member	paper	564	788	939	{different}	ask	footwear	\N	\N	\N
1844	picture	science	983	571	9	{move,together}	represent	footwear	\N	\N	\N
1846	fire	blue	136	448	839	{party}	peace	footwear	\N	\N	\N
1847	tough	side	113	582	116	{simple,ball}	main	footwear	\N	\N	\N
1848	education	technology	180	917	361	{training,stay}	respond	footwear	\N	\N	\N
1850	set	forward	905	603	882	{able,east}	friend	footwear	\N	\N	\N
1851	threat	west	656	718	246	{moment,end}	space	footwear	\N	\N	\N
1852	ahead	only	73	734	878	{trial,laugh}	city	footwear	\N	\N	\N
1854	film	live	270	793	932	{civil}	window	footwear	\N	\N	\N
1855	wife	business	653	843	135	{professional}	bank	footwear	\N	\N	\N
1856	affect	face	474	366	133	{dinner}	particularly	footwear	\N	\N	\N
1857	tend	decide	312	754	43	{cost,between}	although	footwear	\N	\N	\N
1858	under	research	458	505	892	{provide}	give	footwear	\N	\N	\N
1859	foreign	tell	178	977	574	{scientist,modern}	between	footwear	\N	\N	\N
1860	social	woman	829	684	697	{group,kid}	event	footwear	\N	\N	\N
1861	base	recognize	670	741	321	{international,another}	least	footwear	\N	\N	\N
1863	door	big	841	95	776	{more,bank}	now	footwear	\N	\N	\N
1864	education	production	833	249	976	{total,but}	east	footwear	\N	\N	\N
1865	choose	international	97	960	926	{gas,better}	air	footwear	\N	\N	\N
1866	subject	six	249	731	68	{hotel,in}	at	footwear	\N	\N	\N
1867	eat	gun	973	693	548	{team,share}	fire	footwear	\N	\N	\N
1868	head	population	45	922	584	{bit,article}	activity	footwear	\N	\N	\N
1869	trial	wait	945	910	531	{minute}	onto	footwear	\N	\N	\N
1870	care	message	395	676	99	{especially}	fall	footwear	\N	\N	\N
1871	woman	its	846	3	588	{fear}	black	footwear	\N	\N	\N
1872	long	year	474	112	222	{focus,space}	area	footwear	\N	\N	\N
1873	join	mean	69	525	142	{executive,begin}	region	footwear	\N	\N	\N
1874	become	instead	189	449	870	{compare}	even	footwear	\N	\N	\N
1875	away	series	528	938	279	{four,born}	off	footwear	\N	\N	\N
1876	card	no	826	187	384	{PM}	clearly	footwear	\N	\N	\N
1877	arm	so	124	664	137	{authority}	deal	footwear	\N	\N	\N
1878	call	make	655	960	406	{recognize}	speech	footwear	\N	\N	\N
1879	clear	pick	187	230	818	{least,idea}	bad	footwear	\N	\N	\N
1880	through	once	835	874	878	{require}	campaign	footwear	\N	\N	\N
1881	such	hit	51	957	617	{party}	spend	footwear	\N	\N	\N
1882	PM	movement	7	610	713	{pattern}	positive	footwear	\N	\N	\N
1885	anyone	computer	305	153	870	{article,ago}	interesting	footwear	\N	\N	\N
1886	environment	class	381	633	388	{though}	down	footwear	\N	\N	\N
1887	material	newspaper	906	832	626	{soldier}	make	footwear	\N	\N	\N
1890	focus	fly	514	270	480	{particular}	fish	footwear	\N	\N	\N
1891	road	realize	903	817	85	{throughout}	agreement	footwear	\N	\N	\N
1892	with	hope	221	953	616	{such}	threat	footwear	\N	\N	\N
1893	good	do	941	255	809	{write}	reduce	footwear	\N	\N	\N
1894	let	over	733	880	559	{size,decision}	hand	footwear	\N	\N	\N
1897	worker	wait	179	421	132	{Mr,chance}	in	footwear	\N	\N	\N
1898	bar	remember	518	937	236	{protect}	able	footwear	\N	\N	\N
1899	how	million	58	381	174	{painting}	article	footwear	\N	\N	\N
1900	say	so	442	838	552	{discussion}	success	footwear	\N	\N	\N
2001	over	arm	674	842	707	{list}	\N	software	\N	\N	\N
2003	rule	blue	813	228	984	{garden,weight}	\N	software	\N	\N	\N
2004	break	debate	99	8	447	{civil}	\N	software	\N	\N	\N
2006	author	anything	971	757	858	{positive}	\N	software	\N	\N	\N
2007	responsibility	design	826	635	587	{recently,list}	\N	software	\N	\N	\N
2008	time	face	197	823	821	{rate,majority}	\N	software	\N	\N	\N
2009	believe	house	325	118	971	{machine}	\N	software	\N	\N	\N
2010	employee	where	576	122	496	{year}	\N	software	\N	\N	\N
2011	theory	together	808	569	394	{process,operation}	\N	software	\N	\N	\N
2013	evening	while	476	917	274	{parent}	\N	software	\N	\N	\N
2014	service	explain	593	336	741	{whose,history}	\N	software	\N	\N	\N
2015	chance	system	129	842	319	{throughout,per}	\N	software	\N	\N	\N
2018	stay	able	858	439	441	{low}	\N	software	\N	\N	\N
2019	create	within	434	365	574	{worker}	\N	software	\N	\N	\N
2020	probably	religious	718	590	505	{spring,between}	\N	software	\N	\N	\N
2021	see	PM	735	665	722	{lot,approach}	\N	software	\N	\N	\N
2022	spring	benefit	950	301	770	{decision,away}	\N	software	\N	\N	\N
2025	election	ask	753	15	784	{environmental,finally}	\N	software	\N	\N	\N
2027	as	vote	214	297	905	{trip,enough}	\N	software	\N	\N	\N
2028	raise	throughout	149	88	937	{which}	\N	software	\N	\N	\N
2030	seek	program	175	418	173	{morning}	\N	software	\N	\N	\N
2033	nearly	positive	862	571	238	{sister,get}	\N	software	\N	\N	\N
2035	represent	time	793	772	768	{at}	\N	software	\N	\N	\N
2037	return	once	115	232	640	{create}	\N	software	\N	\N	\N
2038	scene	training	437	605	5	{more}	\N	software	\N	\N	\N
2039	usually	course	179	703	811	{state}	\N	software	\N	\N	\N
2040	power	business	822	551	451	{million,nothing}	\N	software	\N	\N	\N
2041	national	line	954	645	151	{employee,interesting}	\N	software	\N	\N	\N
2042	street	difference	411	876	231	{dark,want}	\N	software	\N	\N	\N
2043	threat	mean	855	735	927	{administration,decide}	\N	software	\N	\N	\N
2044	thing	week	125	515	767	{military,maybe}	\N	software	\N	\N	\N
2045	analysis	partner	25	301	649	{size}	\N	software	\N	\N	\N
2047	parent	decide	365	118	685	{grow,man}	\N	software	\N	\N	\N
2048	really	skin	282	980	728	{nature}	\N	software	\N	\N	\N
2049	production	case	57	566	280	{claim,production}	\N	software	\N	\N	\N
2050	my	official	978	358	252	{image,remain}	\N	software	\N	\N	\N
2051	ground	likely	1000	804	502	{present,occur}	\N	software	\N	\N	\N
2052	trial	present	779	773	70	{structure}	\N	software	\N	\N	\N
2053	relationship	dark	419	390	482	{its}	\N	software	\N	\N	\N
2055	administration	agreement	445	227	468	{south}	\N	software	\N	\N	\N
2057	would	worry	194	206	909	{nothing}	\N	software	\N	\N	\N
2058	surface	much	39	642	147	{detail,forward}	\N	software	\N	\N	\N
2061	him	everybody	328	318	19	{environment,western}	\N	software	\N	\N	\N
2063	only	behavior	801	736	723	{short}	\N	software	\N	\N	\N
2064	drug	foreign	722	764	13	{teach,including}	\N	software	\N	\N	\N
2066	very	change	237	848	612	{skill,local}	\N	software	\N	\N	\N
2069	big	foot	228	685	123	{rock}	\N	software	\N	\N	\N
2070	might	population	871	97	198	{sure}	\N	software	\N	\N	\N
2071	detail	environment	44	424	903	{star,purpose}	\N	software	\N	\N	\N
2073	public	region	478	649	851	{benefit}	\N	software	\N	\N	\N
2074	follow	add	876	63	969	{course}	\N	software	\N	\N	\N
2075	activity	nation	729	780	103	{option}	\N	software	\N	\N	\N
2076	blue	professor	193	362	65	{knowledge,kitchen}	\N	software	\N	\N	\N
2078	attack	career	998	401	299	{child}	\N	software	\N	\N	\N
2079	career	trouble	609	300	317	{might,ask}	\N	software	\N	\N	\N
2081	describe	actually	226	123	754	{why,remember}	\N	software	\N	\N	\N
2085	election	market	93	880	445	{fight,speech}	\N	software	\N	\N	\N
2086	fast	successful	847	539	366	{high}	\N	software	\N	\N	\N
2087	cell	really	1000	313	532	{election,scientist}	\N	software	\N	\N	\N
2089	know	she	171	153	550	{candidate}	\N	software	\N	\N	\N
2090	lose	think	926	677	626	{respond}	\N	software	\N	\N	\N
2091	position	a	674	228	716	{few,know}	\N	software	\N	\N	\N
2092	full	training	446	433	945	{job,strategy}	\N	software	\N	\N	\N
2093	everybody	minute	516	644	892	{discussion,perform}	\N	software	\N	\N	\N
2094	reflect	fear	952	317	454	{free,particular}	\N	software	\N	\N	\N
2096	across	individual	1	592	965	{will}	\N	software	\N	\N	\N
2097	seek	executive	306	632	514	{give}	\N	software	\N	\N	\N
2098	consider	early	659	75	116	{garden}	\N	software	\N	\N	\N
2099	morning	development	372	459	376	{rise,simple}	\N	software	\N	\N	\N
2100	team	surface	154	285	837	{coach}	\N	software	\N	\N	\N
1430	open	board	59	336	163	{stock}	lot	apparel	\N	\N	4
1395	discover	open	487	126	237	{force}	politics	kitchenappliance	summer	471	58
1340	tough	key	265	982	988	{guess,only}	wish	kitchenappliance	place	114	39
1509	book	its	678	835	865	{discuss,stuff}	amount	clothing	\N	\N	73
1482	better	source	626	696	676	{money,either}	so	apparel	\N	\N	54
1801	company	that	535	732	801	{rule,practice}	feel	footwear	\N	\N	56
2054	development	choice	848	629	423	{dark,build}	\N	software	\N	\N	95
1677	lot	food	113	320	924	{five}	trade	menclothing	\N	\N	69
146	star	yet	828	262	644	{growth}	grow	physicalproduct	\N	\N	79
87	mean	decade	41	28	11	{it,report}	\N	product	\N	\N	49
1510	under	understand	310	522	267	{study,that}	piece	clothing	\N	\N	10
1838	citizen	husband	857	42	97	{bit}	figure	footwear	\N	\N	83
111	air	west	130	916	212	{effect}	store	physicalproduct	\N	\N	60
1498	sense	save	270	721	967	{step}	save	apparel	\N	\N	86
209	approach	mouth	641	750	170	{direction,street}	\N	digitalproduct	\N	\N	87
1750	choice	race	714	832	533	{happy,according}	better	womenclothing	\N	\N	68
272	century	something	537	573	737	{car}	\N	digitalproduct	\N	\N	42
292	cause	others	545	520	172	{according}	\N	digitalproduct	\N	\N	94
1537	good	situation	310	749	837	{important}	break	clothing	\N	\N	98
1504	type	piece	806	709	102	{make}	democratic	clothing	\N	\N	10
180	say	pass	720	175	461	{prove}	without	physicalproduct	\N	\N	37
1883	support	doctor	13	832	935	{size,watch}	sometimes	footwear	\N	\N	3
154	size	care	616	547	419	{situation}	degree	physicalproduct	\N	\N	27
297	he	everybody	732	110	210	{kitchen,see}	\N	digitalproduct	\N	\N	59
1434	population	tell	346	602	92	{sometimes}	for	apparel	\N	\N	51
1613	know	must	427	324	887	{feeling}	day	menclothing	\N	\N	33
1751	expect	political	870	691	133	{meeting}	own	womenclothing	\N	\N	31
283	state	summer	492	466	935	{benefit,man}	\N	digitalproduct	\N	\N	51
1475	interview	meeting	542	773	537	{exactly,store}	great	apparel	\N	\N	66
2080	tax	democratic	597	903	372	{hospital}	\N	software	\N	\N	58
1753	picture	product	177	682	794	{mean}	home	womenclothing	\N	\N	85
1804	within	me	864	784	90	{test,life}	why	footwear	\N	\N	37
15	reality	test	393	803	878	{challenge}	\N	product	\N	\N	33
78	whatever	option	13	629	687	{seat}	\N	product	\N	\N	56
1668	animal	happen	476	515	741	{somebody}	worker	menclothing	\N	\N	68
1492	miss	fill	939	234	359	{laugh,real}	common	apparel	\N	\N	45
2056	happy	culture	754	520	405	{Mrs,however}	\N	software	\N	\N	42
1347	system	network	225	664	788	{official}	high	kitchenappliance	model	630	33
1752	small	add	323	82	151	{agreement}	course	womenclothing	\N	\N	16
2084	body	station	924	54	537	{little}	\N	software	\N	\N	97
1217	contain	artist	515	945	105	{push}	short	appliance	participant	\N	62
1735	purpose	exist	579	352	109	{store,it}	feel	womenclothing	\N	\N	98
232	among	despite	941	201	410	{hand}	\N	digitalproduct	\N	\N	86
2095	course	organization	58	466	574	{war,country}	\N	software	\N	\N	42
24	would	experience	882	94	818	{moment,place}	\N	product	\N	\N	5
47	change	develop	762	163	427	{claim,nation}	\N	product	\N	\N	35
1231	material	approach	787	696	180	{receive}	song	appliance	drive	\N	70
1439	seem	sense	253	239	98	{memory}	prove	apparel	\N	\N	52
1488	true	could	925	790	214	{drug,every}	not	apparel	\N	\N	23
1293	trial	contain	397	109	706	{last,only}	situation	appliance	very	\N	74
1795	clear	lawyer	286	281	166	{reduce,spring}	but	womenclothing	\N	\N	39
1718	election	three	322	773	791	{technology}	weight	womenclothing	\N	\N	97
1416	market	no	537	772	936	{stock}	chance	apparel	\N	\N	14
145	write	hotel	558	748	42	{until}	mention	physicalproduct	\N	\N	50
115	daughter	tonight	50	732	883	{owner}	here	physicalproduct	\N	\N	58
1212	morning	make	63	214	879	{forget,stock}	sit	appliance	again	\N	48
1714	left	approach	379	52	863	{different}	project	womenclothing	\N	\N	83
1335	alone	past	832	299	253	{eat,its}	hand	kitchenappliance	present	847	52
1666	knowledge	song	321	807	319	{at,new}	care	menclothing	\N	\N	53
1281	determine	indicate	596	906	576	{list}	too	appliance	perhaps	\N	61
2012	we	similar	574	917	57	{worker}	\N	software	\N	\N	16
1374	tree	huge	18	442	563	{bag,industry}	not	kitchenappliance	hard	126	58
161	there	public	280	319	600	{threat,purpose}	reveal	physicalproduct	\N	\N	59
1450	leader	try	880	396	121	{draw}	me	apparel	\N	\N	91
2068	stock	cup	242	559	728	{space}	\N	software	\N	\N	96
1491	near	consumer	358	676	725	{agency,here}	note	apparel	\N	\N	34
7	get	once	89	450	680	{might}	\N	product	\N	\N	18
39	picture	like	457	722	519	{degree,well}	\N	product	\N	\N	88
1845	respond	general	420	813	398	{information}	maintain	footwear	\N	\N	86
1268	language	goal	995	232	614	{push,rate}	ago	appliance	two	\N	96
1635	home	accept	211	621	386	{throw,painting}	least	menclothing	\N	\N	70
1710	open	such	479	241	414	{mouth}	fight	womenclothing	\N	\N	1
1653	paper	treat	372	456	317	{several}	try	menclothing	\N	\N	17
1473	answer	prevent	485	388	791	{continue,moment}	reach	apparel	\N	\N	72
1249	member	agree	50	252	851	{up}	involve	appliance	positive	\N	87
51	bank	season	388	206	356	{pattern}	\N	product	\N	\N	7
61	tend	wind	955	561	353	{picture,management}	\N	product	\N	\N	82
1645	likely	material	548	923	475	{by,note}	when	menclothing	\N	\N	63
1617	great	right	116	142	832	{often,thank}	consider	menclothing	\N	\N	54
1221	money	trip	467	910	527	{bring}	page	appliance	left	\N	3
1621	thus	religious	977	58	971	{meet,people}	you	menclothing	\N	\N	26
1455	guess	beat	976	653	201	{race}	raise	apparel	\N	\N	4
188	group	peace	786	76	835	{something}	one	physicalproduct	\N	\N	98
1424	color	as	250	117	464	{tax,such}	his	apparel	\N	\N	31
2016	security	less	49	130	296	{course}	\N	software	\N	\N	61
2083	perform	science	361	612	540	{mouth,receive}	\N	software	\N	\N	41
197	about	stay	620	312	214	{receive}	ten	physicalproduct	\N	\N	76
2029	edge	item	544	93	676	{concern}	\N	software	\N	\N	17
1349	respond	style	283	688	694	{reality,discover}	south	kitchenappliance	fast	473	53
214	join	account	318	770	411	{until}	\N	digitalproduct	\N	\N	50
1765	health	return	513	936	317	{treat}	fine	womenclothing	\N	\N	86
1827	conference	unit	561	44	424	{let}	mean	footwear	\N	\N	26
170	available	high	448	516	694	{accept,home}	wrong	physicalproduct	\N	\N	34
1611	service	north	361	902	148	{upon,study}	sometimes	menclothing	\N	\N	29
2046	couple	human	294	57	95	{another,already}	\N	software	\N	\N	47
1794	real	say	340	793	969	{I,family}	space	womenclothing	\N	\N	4
2017	might	have	807	608	126	{he}	\N	software	\N	\N	47
2059	area	specific	360	361	870	{skin}	\N	software	\N	\N	90
287	another	central	138	50	537	{my,go}	\N	digitalproduct	\N	\N	45
1393	offer	reduce	500	870	331	{someone}	child	kitchenappliance	wide	106	45
33	value	skill	486	117	25	{religious,mind}	\N	product	\N	\N	23
1843	growth	listen	428	567	396	{after}	member	footwear	\N	\N	95
1269	foot	store	64	85	248	{form}	realize	appliance	fly	\N	53
1524	and	draw	813	905	52	{two}	tough	clothing	\N	\N	29
36	stage	produce	989	621	443	{his}	\N	product	\N	\N	84
1577	when	thousand	667	223	876	{last,company}	one	clothing	\N	\N	83
1362	reflect	often	151	4	574	{gun}	evening	kitchenappliance	night	958	5
1575	quite	usually	274	359	454	{generation}	prove	clothing	\N	\N	28
1773	model	type	35	582	891	{simply,yourself}	each	womenclothing	\N	\N	36
2065	campaign	organization	956	436	716	{deal}	\N	software	\N	\N	18
2026	administration	represent	460	987	684	{fact}	\N	software	\N	\N	41
93	seat	leg	555	213	315	{effect}	\N	product	\N	\N	87
107	skin	majority	79	522	973	{act}	less	physicalproduct	\N	\N	5
251	join	voice	942	679	72	{later,can}	\N	digitalproduct	\N	\N	62
1493	will	agent	74	231	930	{present,never}	wish	apparel	\N	\N	25
1481	sister	simple	228	925	346	{skill,base}	their	apparel	\N	\N	78
143	buy	change	507	698	404	{yes,believe}	tend	physicalproduct	\N	\N	92
1849	wait	up	510	788	894	{after}	market	footwear	\N	\N	99
1822	activity	main	446	27	820	{democratic,mission}	low	footwear	\N	\N	3
1810	involve	decide	722	126	930	{character,debate}	something	footwear	\N	\N	66
1294	else	forward	424	475	111	{deep,degree}	performance	appliance	son	\N	69
1834	ground	sound	271	835	460	{budget}	garden	footwear	\N	\N	35
1289	difficult	five	841	436	18	{prepare}	law	appliance	boy	\N	2
1523	same	grow	88	703	483	{loss}	indeed	clothing	\N	\N	11
1559	without	alone	601	909	727	{film,our}	though	clothing	\N	\N	5
255	understand	business	876	439	873	{bring}	\N	digitalproduct	\N	\N	52
1299	help	wonder	324	760	100	{travel}	brother	appliance	concern	\N	15
52	town	according	211	588	691	{society,tell}	\N	product	\N	\N	82
167	very	door	121	583	766	{put}	accept	physicalproduct	\N	\N	52
1413	morning	sit	219	642	7	{action}	author	apparel	\N	\N	62
68	within	away	139	594	565	{rather}	\N	product	\N	\N	41
147	field	economy	274	755	935	{send}	result	physicalproduct	\N	\N	60
41	Republican	property	229	537	665	{dark}	\N	product	\N	\N	98
1734	simple	task	573	452	477	{within}	design	womenclothing	\N	\N	97
1327	difficult	your	754	391	125	{recognize}	wonder	kitchenappliance	various	804	21
1896	decision	boy	461	33	882	{treat}	price	footwear	\N	\N	26
23	church	pay	651	182	564	{team}	\N	product	\N	\N	98
1454	attention	result	154	643	275	{author,skin}	speak	apparel	\N	\N	54
1516	television	miss	300	620	498	{take}	reduce	clothing	\N	\N	89
1777	even	consumer	250	400	554	{effort}	improve	womenclothing	\N	\N	57
127	night	voice	498	8	182	{structure,respond}	matter	physicalproduct	\N	\N	24
187	accept	law	802	277	867	{visit}	process	physicalproduct	\N	\N	73
156	sell	since	388	768	573	{TV}	standard	physicalproduct	\N	\N	43
1529	agency	near	35	239	965	{attack}	property	clothing	\N	\N	20
70	green	particularly	390	887	808	{pretty}	\N	product	\N	\N	70
1588	three	concern	97	816	208	{forward}	forget	clothing	\N	\N	20
5	tree	commercial	425	681	178	{suffer,decade}	\N	product	\N	\N	44
148	gun	about	983	999	143	{why}	property	physicalproduct	\N	\N	92
1366	market	parent	843	869	871	{about,within}	concern	kitchenappliance	born	308	27
1266	agreement	social	712	580	769	{arm,land}	after	appliance	project	\N	89
2067	how	laugh	834	634	395	{pretty}	\N	software	\N	\N	1
2031	writer	skill	779	432	829	{better,forward}	\N	software	\N	\N	62
250	evening	sort	552	205	729	{its,apply}	\N	digitalproduct	\N	\N	86
219	drug	sense	829	612	24	{drive}	\N	digitalproduct	\N	\N	37
213	available	participant	916	733	452	{Democrat,home}	\N	digitalproduct	\N	\N	18
1788	call	deep	57	19	985	{arrive}	continue	womenclothing	\N	\N	95
234	again	visit	813	936	32	{understand}	\N	digitalproduct	\N	\N	98
267	Democrat	phone	97	436	862	{third}	\N	digitalproduct	\N	\N	73
1511	myself	society	85	55	107	{to,tree}	open	clothing	\N	\N	28
2062	capital	including	446	466	272	{special,nothing}	\N	software	\N	\N	44
1476	material	approach	25	998	391	{idea,my}	war	apparel	\N	\N	44
1478	building	true	102	417	117	{that,place}	physical	apparel	\N	\N	95
1309	office	hold	720	136	435	{reality}	result	kitchenappliance	protect	77	7
2002	focus	resource	584	1	447	{force}	\N	software	\N	\N	4
2036	paper	candidate	175	648	300	{own}	\N	software	\N	\N	65
1622	blue	step	140	774	512	{moment,window}	risk	menclothing	\N	\N	31
1723	base	method	271	341	42	{quality}	attack	womenclothing	\N	\N	74
26	yard	media	86	889	18	{son,central}	\N	product	\N	\N	24
1584	seek	who	48	239	228	{nice}	PM	clothing	\N	\N	67
1451	term	change	912	676	369	{prove,behind}	particularly	apparel	\N	\N	68
1601	summer	environment	427	210	56	{cut,authority}	note	menclothing	\N	\N	31
1241	garden	response	32	988	832	{state,turn}	hotel	appliance	think	\N	42
1634	president	board	521	200	719	{turn}	gun	menclothing	\N	\N	7
1616	on	environmental	694	653	480	{case}	trip	menclothing	\N	\N	1
1300	put	and	310	762	423	{produce}	today	appliance	join	\N	83
1749	if	state	89	984	852	{community,tend}	dog	womenclothing	\N	\N	79
2005	early	window	563	295	529	{computer,determine}	\N	software	\N	\N	57
289	debate	record	720	588	765	{college,material}	\N	digitalproduct	\N	\N	44
1820	between	side	414	215	110	{do,at}	thus	footwear	\N	\N	29
220	figure	international	700	36	507	{only,board}	\N	digitalproduct	\N	\N	1
179	commercial	large	960	763	730	{Democrat,east}	collection	physicalproduct	\N	\N	71
85	walk	surface	564	260	729	{director,wife}	\N	product	\N	\N	56
1593	eight	student	521	815	976	{oil,media}	tough	clothing	\N	\N	37
1785	none	figure	404	580	585	{security,blood}	us	womenclothing	\N	\N	93
2077	almost	guy	586	612	223	{economic,cover}	\N	software	\N	\N	18
2072	wife	instead	148	740	691	{soldier}	\N	software	\N	\N	81
2088	consider	speech	396	530	559	{career,five}	\N	software	\N	\N	52
1429	store	prevent	937	380	514	{give}	officer	apparel	\N	\N	1
1522	society	market	906	34	452	{one}	marriage	clothing	\N	\N	80
76	various	identify	469	919	284	{perhaps}	\N	product	\N	\N	89
1277	man	language	309	981	280	{develop}	whose	appliance	natural	\N	19
1766	us	bad	993	308	91	{present}	if	womenclothing	\N	\N	92
1250	program	indeed	992	372	69	{attack}	discuss	appliance	across	\N	41
1487	woman	avoid	581	348	192	{reflect}	again	apparel	\N	\N	64
1323	car	occur	672	492	367	{art}	if	kitchenappliance	Mr	852	56
263	interesting	catch	88	310	36	{three,easy}	\N	digitalproduct	\N	\N	98
1214	same	important	206	846	703	{involve}	network	appliance	such	\N	9
1758	music	answer	283	365	460	{the}	out	womenclothing	\N	\N	41
29	also	news	353	298	72	{interview}	\N	product	\N	\N	10
280	why	under	539	125	153	{huge,material}	\N	digitalproduct	\N	\N	54
1426	citizen	mean	687	314	959	{read}	forward	apparel	\N	\N	74
1591	none	here	771	384	656	{require}	win	clothing	\N	\N	71
1571	send	create	625	369	189	{there}	indicate	clothing	\N	\N	18
230	attack	someone	16	817	6	{option,world}	\N	digitalproduct	\N	\N	65
153	fast	laugh	983	218	123	{again,fact}	democratic	physicalproduct	\N	\N	50
1853	late	remember	251	672	814	{among}	summer	footwear	\N	\N	54
1229	my	industry	135	293	921	{school}	standard	appliance	upon	\N	59
2082	gas	popular	146	369	953	{space,movement}	\N	software	\N	\N	62
1329	able	child	644	534	819	{tonight,middle}	as	kitchenappliance	anything	887	31
2032	win	image	348	793	676	{investment}	\N	software	\N	\N	79
1776	from	Mrs	592	297	447	{field}	return	womenclothing	\N	\N	55
1740	Mr	area	576	658	212	{age,trouble}	drug	womenclothing	\N	\N	32
1253	find	determine	902	673	610	{expect,common}	choose	appliance	now	\N	45
2060	home	when	260	875	990	{interest}	\N	software	\N	\N	30
285	exactly	coach	836	911	948	{key}	\N	digitalproduct	\N	\N	35
1736	someone	turn	235	799	46	{sort}	off	womenclothing	\N	\N	82
1684	interest	boy	424	827	701	{especially,face}	ability	menclothing	\N	\N	54
1889	politics	return	740	198	170	{collection}	professional	footwear	\N	\N	22
1895	rise	contain	534	535	20	{work}	he	footwear	\N	\N	76
1835	area	memory	431	36	303	{establish}	third	footwear	\N	\N	17
1833	high	should	954	720	646	{party,own}	day	footwear	\N	\N	21
1396	account	allow	914	759	78	{feeling}	beat	kitchenappliance	argue	644	22
226	good	reveal	474	561	594	{Mr,success}	\N	digitalproduct	\N	\N	49
1420	force	ground	176	451	975	{whose,future}	effect	apparel	\N	\N	48
2024	structure	happen	136	64	972	{force,stage}	\N	software	\N	\N	46
175	modern	throughout	116	664	940	{hit,opportunity}	responsibility	physicalproduct	\N	\N	30
1701	sit	expect	906	1	783	{leader}	open	womenclothing	\N	\N	53
1862	responsibility	radio	285	163	367	{goal,high}	home	footwear	\N	\N	60
1379	the	phone	145	778	150	{assume}	before	kitchenappliance	scientist	744	67
139	instead	direction	609	88	877	{process}	listen	physicalproduct	\N	\N	19
1332	either	admit	409	343	660	{particular,fill}	wait	kitchenappliance	possible	500	26
1626	cover	can	562	510	518	{answer,physical}	system	menclothing	\N	\N	78
1628	technology	source	11	859	315	{pretty,hospital}	support	menclothing	\N	\N	75
42	card	arrive	405	692	590	{minute,true}	\N	product	\N	\N	29
1815	fear	ask	765	687	661	{plant}	leave	footwear	\N	\N	17
1235	couple	both	277	836	98	{will}	give	appliance	early	\N	44
1373	clear	whole	43	166	432	{door,drop}	recently	kitchenappliance	yourself	634	53
1680	during	church	655	144	760	{current}	per	menclothing	\N	\N	59
256	it	specific	55	653	94	{feeling,test}	\N	digitalproduct	\N	\N	81
1888	single	trade	348	9	433	{resource,trade}	enjoy	footwear	\N	\N	58
2023	type	personal	479	248	214	{laugh}	\N	software	\N	\N	14
103	when	place	747	77	23	{here}	person	physicalproduct	\N	\N	85
1884	capital	draw	711	197	630	{crime,news}	accept	footwear	\N	\N	59
1800	realize	visit	714	994	661	{would,lay}	recognize	womenclothing	\N	\N	52
1769	product	teach	451	296	776	{central,available}	particular	womenclothing	\N	\N	64
1480	her	yes	84	962	578	{program}	treat	apparel	\N	\N	26
1389	yeah	available	919	125	898	{film}	safe	kitchenappliance	where	729	73
1284	democratic	fund	759	115	628	{investment}	trouble	appliance	others	\N	78
1423	economic	seek	995	557	968	{themselves}	condition	apparel	\N	\N	58
1790	across	hour	335	997	823	{from}	experience	womenclothing	\N	\N	10
1465	off	least	321	202	778	{watch}	far	apparel	\N	\N	74
1667	goal	bit	37	305	202	{mind,allow}	near	menclothing	\N	\N	60
1590	citizen	bad	443	539	860	{authority,operation}	issue	clothing	\N	\N	39
1567	control	available	426	585	389	{best}	exist	clothing	\N	\N	7
1589	lawyer	increase	401	214	559	{wall}	great	clothing	\N	\N	89
1306	sell	single	139	19	648	{sit}	again	kitchenappliance	happy	905	23
268	view	fight	515	571	211	{behind,improve}	\N	digitalproduct	\N	\N	40
2034	easy	always	337	763	782	{interview}	\N	software	\N	\N	88
\.


--
-- Data for Name: relation_10; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_10 (apparel_id, size_system, material, role, fit_type_women, sole_material) FROM stdin;
1401	political	\N	apparel	\N	\N
1402	which	\N	apparel	\N	\N
1403	wide	\N	apparel	\N	\N
1404	worry	\N	apparel	\N	\N
1405	seven	\N	apparel	\N	\N
1406	while	\N	apparel	\N	\N
1407	provide	\N	apparel	\N	\N
1408	hundred	\N	apparel	\N	\N
1409	class	\N	apparel	\N	\N
1410	Mr	\N	apparel	\N	\N
1411	building	\N	apparel	\N	\N
1412	require	\N	apparel	\N	\N
1413	offer	\N	apparel	\N	\N
1414	likely	\N	apparel	\N	\N
1415	old	\N	apparel	\N	\N
1416	institution	\N	apparel	\N	\N
1417	matter	\N	apparel	\N	\N
1418	couple	\N	apparel	\N	\N
1419	this	\N	apparel	\N	\N
1420	eat	\N	apparel	\N	\N
1421	century	\N	apparel	\N	\N
1422	network	\N	apparel	\N	\N
1423	us	\N	apparel	\N	\N
1424	born	\N	apparel	\N	\N
1425	interest	\N	apparel	\N	\N
1426	anything	\N	apparel	\N	\N
1427	join	\N	apparel	\N	\N
1428	similar	\N	apparel	\N	\N
1429	appear	\N	apparel	\N	\N
1430	picture	\N	apparel	\N	\N
1431	term	\N	apparel	\N	\N
1432	network	\N	apparel	\N	\N
1433	first	\N	apparel	\N	\N
1434	else	\N	apparel	\N	\N
1435	fund	\N	apparel	\N	\N
1436	face	\N	apparel	\N	\N
1437	sell	\N	apparel	\N	\N
1438	expect	\N	apparel	\N	\N
1439	teach	\N	apparel	\N	\N
1440	prevent	\N	apparel	\N	\N
1441	less	\N	apparel	\N	\N
1442	expect	\N	apparel	\N	\N
1443	team	\N	apparel	\N	\N
1444	still	\N	apparel	\N	\N
1445	commercial	\N	apparel	\N	\N
1446	again	\N	apparel	\N	\N
1447	citizen	\N	apparel	\N	\N
1448	keep	\N	apparel	\N	\N
1449	hear	\N	apparel	\N	\N
1450	significant	\N	apparel	\N	\N
1451	book	\N	apparel	\N	\N
1452	protect	\N	apparel	\N	\N
1453	mission	\N	apparel	\N	\N
1454	sure	\N	apparel	\N	\N
1455	build	\N	apparel	\N	\N
1456	organization	\N	apparel	\N	\N
1457	source	\N	apparel	\N	\N
1458	study	\N	apparel	\N	\N
1459	fire	\N	apparel	\N	\N
1460	upon	\N	apparel	\N	\N
1461	situation	\N	apparel	\N	\N
1462	employee	\N	apparel	\N	\N
1463	huge	\N	apparel	\N	\N
1464	today	\N	apparel	\N	\N
1465	image	\N	apparel	\N	\N
1466	early	\N	apparel	\N	\N
1467	else	\N	apparel	\N	\N
1468	low	\N	apparel	\N	\N
1469	easy	\N	apparel	\N	\N
1470	common	\N	apparel	\N	\N
1471	little	\N	apparel	\N	\N
1472	region	\N	apparel	\N	\N
1473	effort	\N	apparel	\N	\N
1474	guess	\N	apparel	\N	\N
1475	sit	\N	apparel	\N	\N
1476	perhaps	\N	apparel	\N	\N
1477	financial	\N	apparel	\N	\N
1478	mind	\N	apparel	\N	\N
1479	beat	\N	apparel	\N	\N
1480	give	\N	apparel	\N	\N
1481	but	\N	apparel	\N	\N
1482	across	\N	apparel	\N	\N
1483	outside	\N	apparel	\N	\N
1484	major	\N	apparel	\N	\N
1485	pick	\N	apparel	\N	\N
1486	mouth	\N	apparel	\N	\N
1487	task	\N	apparel	\N	\N
1488	prepare	\N	apparel	\N	\N
1489	long	\N	apparel	\N	\N
1490	American	\N	apparel	\N	\N
1491	tonight	\N	apparel	\N	\N
1492	development	\N	apparel	\N	\N
1493	item	\N	apparel	\N	\N
1494	rather	\N	apparel	\N	\N
1495	particular	\N	apparel	\N	\N
1496	major	\N	apparel	\N	\N
1497	worker	\N	apparel	\N	\N
1498	market	\N	apparel	\N	\N
1499	expert	\N	apparel	\N	\N
1500	kind	\N	apparel	\N	\N
1501	country	nearly	clothing	\N	\N
1502	conference	line	clothing	\N	\N
1503	though	civil	clothing	\N	\N
1504	reveal	apply	clothing	\N	\N
1505	model	believe	clothing	\N	\N
1506	agree	case	clothing	\N	\N
1507	long	put	clothing	\N	\N
1508	teach	traditional	clothing	\N	\N
1509	personal	real	clothing	\N	\N
1510	you	note	clothing	\N	\N
1511	money	forget	clothing	\N	\N
1512	baby	owner	clothing	\N	\N
1513	son	while	clothing	\N	\N
1514	order	environmental	clothing	\N	\N
1515	address	up	clothing	\N	\N
1516	top	big	clothing	\N	\N
1517	to	across	clothing	\N	\N
1518	chair	until	clothing	\N	\N
1519	believe	interest	clothing	\N	\N
1520	nature	suffer	clothing	\N	\N
1521	amount	catch	clothing	\N	\N
1522	PM	center	clothing	\N	\N
1523	according	he	clothing	\N	\N
1524	perhaps	until	clothing	\N	\N
1525	ever	to	clothing	\N	\N
1526	far	prepare	clothing	\N	\N
1527	tonight	back	clothing	\N	\N
1528	enough	who	clothing	\N	\N
1529	young	share	clothing	\N	\N
1530	piece	star	clothing	\N	\N
1531	environment	room	clothing	\N	\N
1532	medical	tell	clothing	\N	\N
1533	help	travel	clothing	\N	\N
1534	human	market	clothing	\N	\N
1535	series	firm	clothing	\N	\N
1536	many	during	clothing	\N	\N
1537	defense	simple	clothing	\N	\N
1538	hundred	study	clothing	\N	\N
1539	war	time	clothing	\N	\N
1540	day	impact	clothing	\N	\N
1541	wish	cultural	clothing	\N	\N
1542	history	hope	clothing	\N	\N
1543	line	memory	clothing	\N	\N
1544	partner	southern	clothing	\N	\N
1545	concern	ask	clothing	\N	\N
1546	ground	lay	clothing	\N	\N
1547	show	summer	clothing	\N	\N
1548	movement	eat	clothing	\N	\N
1549	number	send	clothing	\N	\N
1550	quickly	probably	clothing	\N	\N
1551	couple	popular	clothing	\N	\N
1552	politics	whole	clothing	\N	\N
1553	five	such	clothing	\N	\N
1554	on	size	clothing	\N	\N
1555	care	morning	clothing	\N	\N
1556	skin	realize	clothing	\N	\N
1557	nice	trial	clothing	\N	\N
1558	baby	doctor	clothing	\N	\N
1559	interest	big	clothing	\N	\N
1560	available	paper	clothing	\N	\N
1561	mouth	know	clothing	\N	\N
1562	including	lay	clothing	\N	\N
1563	region	the	clothing	\N	\N
1564	happen	pull	clothing	\N	\N
1565	respond	enjoy	clothing	\N	\N
1566	list	can	clothing	\N	\N
1567	happen	magazine	clothing	\N	\N
1568	ago	shake	clothing	\N	\N
1569	find	political	clothing	\N	\N
1570	travel	education	clothing	\N	\N
1571	everyone	wear	clothing	\N	\N
1572	window	teach	clothing	\N	\N
1573	play	newspaper	clothing	\N	\N
1574	hot	while	clothing	\N	\N
1575	together	cold	clothing	\N	\N
1576	the	push	clothing	\N	\N
1577	establish	hear	clothing	\N	\N
1578	her	consumer	clothing	\N	\N
1579	public	play	clothing	\N	\N
1580	themselves	risk	clothing	\N	\N
1581	one	letter	clothing	\N	\N
1582	local	population	clothing	\N	\N
1583	model	group	clothing	\N	\N
1584	treatment	factor	clothing	\N	\N
1585	share	since	clothing	\N	\N
1586	trip	customer	clothing	\N	\N
1587	fear	make	clothing	\N	\N
1588	picture	fine	clothing	\N	\N
1589	son	building	clothing	\N	\N
1590	it	move	clothing	\N	\N
1591	thought	interest	clothing	\N	\N
1592	thing	environment	clothing	\N	\N
1593	run	summer	clothing	\N	\N
1594	garden	article	clothing	\N	\N
1595	over	contain	clothing	\N	\N
1596	part	make	clothing	\N	\N
1597	subject	development	clothing	\N	\N
1598	already	good	clothing	\N	\N
1599	PM	president	clothing	\N	\N
1600	say	wait	clothing	\N	\N
1601	fill	wind	menclothing	\N	\N
1602	write	physical	menclothing	\N	\N
1603	foot	suddenly	menclothing	\N	\N
1604	to	wait	menclothing	\N	\N
1605	evening	answer	menclothing	\N	\N
1606	me	street	menclothing	\N	\N
1607	approach	watch	menclothing	\N	\N
1608	executive	chair	menclothing	\N	\N
1609	inside	guy	menclothing	\N	\N
1610	customer	result	menclothing	\N	\N
1611	recognize	middle	menclothing	\N	\N
1612	experience	least	menclothing	\N	\N
1613	huge	able	menclothing	\N	\N
1614	lot	door	menclothing	\N	\N
1615	especially	town	menclothing	\N	\N
1616	enter	economic	menclothing	\N	\N
1617	decision	know	menclothing	\N	\N
1618	walk	nothing	menclothing	\N	\N
1619	article	front	menclothing	\N	\N
1620	land	he	menclothing	\N	\N
1621	player	focus	menclothing	\N	\N
1622	ground	everybody	menclothing	\N	\N
1623	push	two	menclothing	\N	\N
1624	popular	trouble	menclothing	\N	\N
1625	wear	training	menclothing	\N	\N
1626	step	eye	menclothing	\N	\N
1627	very	pull	menclothing	\N	\N
1628	strong	sense	menclothing	\N	\N
1629	book	same	menclothing	\N	\N
1630	to	son	menclothing	\N	\N
1631	me	despite	menclothing	\N	\N
1632	staff	officer	menclothing	\N	\N
1633	require	because	menclothing	\N	\N
1634	issue	professor	menclothing	\N	\N
1635	pay	north	menclothing	\N	\N
1636	must	magazine	menclothing	\N	\N
1637	surface	pay	menclothing	\N	\N
1638	structure	knowledge	menclothing	\N	\N
1639	ago	strategy	menclothing	\N	\N
1640	hotel	firm	menclothing	\N	\N
1641	space	herself	menclothing	\N	\N
1642	represent	onto	menclothing	\N	\N
1643	hard	story	menclothing	\N	\N
1644	ever	civil	menclothing	\N	\N
1645	song	suddenly	menclothing	\N	\N
1646	hundred	economic	menclothing	\N	\N
1647	let	attention	menclothing	\N	\N
1648	how	heavy	menclothing	\N	\N
1649	suddenly	simply	menclothing	\N	\N
1650	pay	agree	menclothing	\N	\N
1651	make	seven	menclothing	\N	\N
1652	set	happy	menclothing	\N	\N
1653	still	agent	menclothing	\N	\N
1654	wish	into	menclothing	\N	\N
1655	day	continue	menclothing	\N	\N
1656	could	protect	menclothing	\N	\N
1657	positive	human	menclothing	\N	\N
1658	capital	whether	menclothing	\N	\N
1659	strong	early	menclothing	\N	\N
1660	forward	ok	menclothing	\N	\N
1661	foreign	his	menclothing	\N	\N
1662	operation	place	menclothing	\N	\N
1663	experience	born	menclothing	\N	\N
1664	evening	manage	menclothing	\N	\N
1665	effect	toward	menclothing	\N	\N
1666	anyone	make	menclothing	\N	\N
1667	sing	property	menclothing	\N	\N
1668	cold	offer	menclothing	\N	\N
1669	use	that	menclothing	\N	\N
1670	song	finally	menclothing	\N	\N
1671	try	company	menclothing	\N	\N
1672	west	sing	menclothing	\N	\N
1673	head	outside	menclothing	\N	\N
1674	onto	expect	menclothing	\N	\N
1675	movie	song	menclothing	\N	\N
1676	ground	long	menclothing	\N	\N
1677	consider	safe	menclothing	\N	\N
1678	raise	suffer	menclothing	\N	\N
1679	drop	thank	menclothing	\N	\N
1680	nation	color	menclothing	\N	\N
1681	begin	treatment	menclothing	\N	\N
1682	article	per	menclothing	\N	\N
1683	appear	break	menclothing	\N	\N
1684	herself	rock	menclothing	\N	\N
1685	hot	major	menclothing	\N	\N
1686	movie	record	menclothing	\N	\N
1687	wide	not	menclothing	\N	\N
1688	discuss	ball	menclothing	\N	\N
1689	lay	radio	menclothing	\N	\N
1690	specific	box	menclothing	\N	\N
1691	learn	face	menclothing	\N	\N
1692	author	Mr	menclothing	\N	\N
1693	kid	difference	menclothing	\N	\N
1694	compare	commercial	menclothing	\N	\N
1695	special	entire	menclothing	\N	\N
1696	matter	skin	menclothing	\N	\N
1697	continue	they	menclothing	\N	\N
1698	campaign	enjoy	menclothing	\N	\N
1699	project	local	menclothing	\N	\N
1700	tax	billion	menclothing	\N	\N
1701	scene	lose	womenclothing	understand	\N
1702	care	lawyer	womenclothing	majority	\N
1703	sometimes	up	womenclothing	still	\N
1704	computer	break	womenclothing	voice	\N
1705	happen	remember	womenclothing	tough	\N
1706	you	player	womenclothing	camera	\N
1707	while	away	womenclothing	air	\N
1708	major	safe	womenclothing	conference	\N
1709	prepare	sense	womenclothing	feeling	\N
1710	quite	at	womenclothing	sign	\N
1711	phone	into	womenclothing	southern	\N
1712	financial	allow	womenclothing	soldier	\N
1713	study	old	womenclothing	window	\N
1714	she	create	womenclothing	speech	\N
1715	system	break	womenclothing	class	\N
1716	television	although	womenclothing	lawyer	\N
1717	leg	bill	womenclothing	responsibility	\N
1718	fight	color	womenclothing	least	\N
1719	fact	available	womenclothing	begin	\N
1720	no	development	womenclothing	political	\N
1721	idea	building	womenclothing	responsibility	\N
1722	value	answer	womenclothing	expect	\N
1723	use	cup	womenclothing	weight	\N
1724	that	energy	womenclothing	pattern	\N
1725	sister	work	womenclothing	item	\N
1726	walk	various	womenclothing	today	\N
1727	scene	present	womenclothing	nothing	\N
1728	wear	last	womenclothing	vote	\N
1729	successful	act	womenclothing	alone	\N
1730	hair	education	womenclothing	Democrat	\N
1731	tree	town	womenclothing	generation	\N
1732	administration	fill	womenclothing	challenge	\N
1733	situation	senior	womenclothing	none	\N
1734	several	choose	womenclothing	nature	\N
1735	heart	their	womenclothing	that	\N
1736	where	use	womenclothing	form	\N
1737	service	six	womenclothing	white	\N
1738	feel	purpose	womenclothing	center	\N
1739	all	often	womenclothing	right	\N
1740	process	leg	womenclothing	participant	\N
1741	and	national	womenclothing	character	\N
1742	story	wall	womenclothing	community	\N
1743	explain	current	womenclothing	third	\N
1744	production	it	womenclothing	foot	\N
1745	base	community	womenclothing	relate	\N
1746	special	good	womenclothing	will	\N
1747	trade	newspaper	womenclothing	affect	\N
1748	relate	day	womenclothing	alone	\N
1749	bill	indicate	womenclothing	back	\N
1750	trial	plant	womenclothing	TV	\N
1751	process	character	womenclothing	myself	\N
1752	upon	tend	womenclothing	full	\N
1753	them	evening	womenclothing	difficult	\N
1754	machine	crime	womenclothing	herself	\N
1755	main	oil	womenclothing	really	\N
1756	situation	point	womenclothing	hotel	\N
1757	less	world	womenclothing	long	\N
1758	system	red	womenclothing	might	\N
1759	education	skill	womenclothing	so	\N
1760	stock	color	womenclothing	despite	\N
1761	break	style	womenclothing	or	\N
1762	opportunity	worry	womenclothing	newspaper	\N
1763	audience	vote	womenclothing	agent	\N
1764	oil	themselves	womenclothing	trouble	\N
1765	case	may	womenclothing	assume	\N
1766	television	choose	womenclothing	sense	\N
1767	mouth	should	womenclothing	choose	\N
1768	whose	industry	womenclothing	social	\N
1769	friend	several	womenclothing	yet	\N
1770	deal	various	womenclothing	pattern	\N
1771	audience	decision	womenclothing	government	\N
1772	collection	everybody	womenclothing	check	\N
1773	born	technology	womenclothing	central	\N
1774	prepare	design	womenclothing	quite	\N
1775	claim	soldier	womenclothing	show	\N
1776	someone	cut	womenclothing	garden	\N
1777	camera	defense	womenclothing	state	\N
1778	act	including	womenclothing	hold	\N
1779	environment	finally	womenclothing	few	\N
1780	national	deep	womenclothing	partner	\N
1781	technology	memory	womenclothing	catch	\N
1782	single	travel	womenclothing	develop	\N
1783	information	program	womenclothing	military	\N
1784	visit	personal	womenclothing	machine	\N
1785	well	bad	womenclothing	win	\N
1786	enter	evening	womenclothing	culture	\N
1787	skill	here	womenclothing	hit	\N
1788	player	go	womenclothing	return	\N
1789	beautiful	look	womenclothing	special	\N
1790	foot	economy	womenclothing	cut	\N
1791	Congress	reality	womenclothing	work	\N
1792	maybe	where	womenclothing	role	\N
1793	upon	day	womenclothing	keep	\N
1794	western	on	womenclothing	store	\N
1795	idea	economy	womenclothing	Congress	\N
1796	big	image	womenclothing	matter	\N
1797	everyone	box	womenclothing	most	\N
1798	just	tend	womenclothing	win	\N
1799	red	worker	womenclothing	coach	\N
1800	mean	detail	womenclothing	yes	\N
1801	bring	\N	footwear	\N	voice
1802	people	\N	footwear	\N	fine
1803	material	\N	footwear	\N	form
1804	today	\N	footwear	\N	structure
1805	house	\N	footwear	\N	chance
1806	available	\N	footwear	\N	practice
1807	side	\N	footwear	\N	challenge
1808	decide	\N	footwear	\N	better
1809	live	\N	footwear	\N	law
1810	PM	\N	footwear	\N	air
1811	simple	\N	footwear	\N	consumer
1812	concern	\N	footwear	\N	Republican
1813	develop	\N	footwear	\N	against
1814	interest	\N	footwear	\N	continue
1815	according	\N	footwear	\N	specific
1816	positive	\N	footwear	\N	from
1817	activity	\N	footwear	\N	view
1818	father	\N	footwear	\N	while
1819	school	\N	footwear	\N	treat
1820	around	\N	footwear	\N	three
1821	future	\N	footwear	\N	speech
1822	off	\N	footwear	\N	available
1823	western	\N	footwear	\N	anything
1824	prevent	\N	footwear	\N	citizen
1825	house	\N	footwear	\N	page
1826	light	\N	footwear	\N	myself
1827	from	\N	footwear	\N	federal
1828	million	\N	footwear	\N	more
1829	not	\N	footwear	\N	stand
1830	yet	\N	footwear	\N	different
1831	what	\N	footwear	\N	woman
1832	control	\N	footwear	\N	woman
1833	wait	\N	footwear	\N	follow
1834	guess	\N	footwear	\N	kid
1835	PM	\N	footwear	\N	seek
1836	compare	\N	footwear	\N	middle
1837	clear	\N	footwear	\N	perform
1838	girl	\N	footwear	\N	future
1839	ten	\N	footwear	\N	general
1840	stay	\N	footwear	\N	case
1841	begin	\N	footwear	\N	among
1842	evening	\N	footwear	\N	play
1843	talk	\N	footwear	\N	mouth
1844	doctor	\N	footwear	\N	wife
1845	tax	\N	footwear	\N	set
1846	hot	\N	footwear	\N	less
1847	many	\N	footwear	\N	unit
1848	we	\N	footwear	\N	none
1849	set	\N	footwear	\N	yes
1850	mission	\N	footwear	\N	service
1851	voice	\N	footwear	\N	girl
1852	born	\N	footwear	\N	capital
1853	will	\N	footwear	\N	single
1854	pass	\N	footwear	\N	call
1855	artist	\N	footwear	\N	appear
1856	meeting	\N	footwear	\N	none
1857	development	\N	footwear	\N	similar
1858	along	\N	footwear	\N	very
1859	attack	\N	footwear	\N	experience
1860	ask	\N	footwear	\N	play
1861	different	\N	footwear	\N	pick
1862	gun	\N	footwear	\N	these
1863	hold	\N	footwear	\N	measure
1864	yes	\N	footwear	\N	figure
1865	your	\N	footwear	\N	rate
1866	bed	\N	footwear	\N	only
1867	garden	\N	footwear	\N	charge
1868	apply	\N	footwear	\N	general
1869	down	\N	footwear	\N	beat
1870	box	\N	footwear	\N	old
1871	leader	\N	footwear	\N	box
1872	even	\N	footwear	\N	Mr
1873	result	\N	footwear	\N	skin
1874	Republican	\N	footwear	\N	anyone
1875	lead	\N	footwear	\N	support
1876	street	\N	footwear	\N	eat
1877	late	\N	footwear	\N	factor
1878	seven	\N	footwear	\N	member
1879	up	\N	footwear	\N	any
1880	ability	\N	footwear	\N	particularly
1881	movie	\N	footwear	\N	range
1882	you	\N	footwear	\N	from
1883	billion	\N	footwear	\N	southern
1884	arm	\N	footwear	\N	rather
1885	international	\N	footwear	\N	under
1886	design	\N	footwear	\N	thousand
1887	establish	\N	footwear	\N	fight
1888	wish	\N	footwear	\N	despite
1889	fly	\N	footwear	\N	writer
1890	on	\N	footwear	\N	bill
1891	whom	\N	footwear	\N	officer
1892	glass	\N	footwear	\N	recognize
1893	total	\N	footwear	\N	keep
1894	ready	\N	footwear	\N	democratic
1895	loss	\N	footwear	\N	health
1896	go	\N	footwear	\N	feel
1897	small	\N	footwear	\N	gas
1898	very	\N	footwear	\N	quality
1899	question	\N	footwear	\N	another
1900	close	\N	footwear	\N	daughter
\.


--
-- Data for Name: relation_11; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_11 (menclothing_id, fit_type_men) FROM stdin;
1601	shake
1602	law
1603	generation
1604	culture
1605	thing
1606	tell
1607	rise
1608	care
1609	effect
1610	option
1611	situation
1612	nation
1613	civil
1614	industry
1615	health
1616	trip
1617	room
1618	but
1619	necessary
1620	during
1621	would
1622	nor
1623	probably
1624	much
1625	street
1626	response
1627	wear
1628	meet
1629	front
1630	ever
1631	because
1632	role
1633	lead
1634	during
1635	room
1636	let
1637	personal
1638	through
1639	town
1640	brother
1641	yourself
1642	expert
1643	animal
1644	south
1645	develop
1646	if
1647	question
1648	our
1649	career
1650	according
1651	leave
1652	throughout
1653	bad
1654	those
1655	including
1656	attention
1657	soldier
1658	program
1659	determine
1660	concern
1661	analysis
1662	good
1663	need
1664	letter
1665	after
1666	life
1667	data
1668	single
1669	practice
1670	party
1671	sense
1672	different
1673	out
1674	pattern
1675	produce
1676	have
1677	city
1678	represent
1679	against
1680	building
1681	pull
1682	these
1683	current
1684	floor
1685	price
1686	network
1687	whatever
1688	these
1689	buy
1690	special
1691	can
1692	increase
1693	hand
1694	effect
1695	race
1696	special
1697	play
1698	first
1699	mean
1700	resource
\.


--
-- Data for Name: relation_12; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_12 (media_id, sku, product_name, base_price, is_active, quantity, mv_attributes, delivery_type, format, category_products_category_id) FROM stdin;
1901	use	option	276	355	769	{social}	color	necessary	\N
1902	significant	others	303	608	243	{sense}	trip	information	\N
1904	kid	three	570	183	758	{bit}	challenge	less	\N
1905	the	hour	424	326	559	{hundred,tax}	do	party	\N
1907	and	large	797	662	547	{have}	despite	economic	\N
1908	give	fill	30	326	489	{various}	nature	these	\N
1909	region	for	210	409	102	{future,career}	since	because	\N
1911	computer	machine	506	552	565	{court}	but	boy	\N
1912	type	over	775	797	459	{window}	green	region	\N
1913	difference	least	696	654	198	{spend}	between	believe	\N
1915	goal	school	8	69	832	{business,bank}	girl	late	\N
1916	without	real	19	825	196	{nor,serve}	agent	others	\N
1917	think	particularly	281	653	580	{however}	health	before	\N
1918	pull	sell	787	490	573	{catch}	try	discussion	\N
1920	hand	perform	412	57	656	{instead}	sea	throw	\N
1921	culture	perform	297	363	240	{fill}	move	prevent	\N
1922	protect	west	471	572	482	{article,cost}	sister	significant	\N
1923	three	summer	39	786	998	{young}	middle	area	\N
1924	true	bag	121	330	833	{simple,worry}	face	develop	\N
1927	summer	decide	883	911	284	{general,heart}	quality	TV	\N
1928	power	third	701	563	895	{sea,bit}	town	girl	\N
1929	something	thing	991	110	674	{art,as}	environment	international	\N
1930	animal	wish	436	519	435	{middle,culture}	safe	language	\N
1931	accept	discuss	837	491	229	{turn}	kitchen	might	\N
1932	what	gas	182	530	610	{them,stop}	view	method	\N
1933	notice	media	636	938	479	{our}	data	pick	\N
1935	source	computer	772	273	196	{side,computer}	capital	need	\N
1937	wide	physical	995	610	385	{force}	drop	serve	\N
1938	most	current	605	13	244	{cell,upon}	staff	owner	\N
1939	goal	cover	395	270	629	{politics,control}	sign	whose	\N
1942	something	free	873	185	179	{skill,without}	the	include	\N
1943	fine	development	578	119	240	{old}	development	cultural	\N
1944	education	door	429	296	161	{involve}	they	war	\N
1945	wrong	or	862	594	137	{majority,contain}	try	small	\N
1946	free	conference	562	195	126	{treat,production}	environmental	respond	\N
1947	choose	money	673	506	207	{show,job}	never	success	\N
1948	actually	onto	640	717	815	{blood}	give	war	\N
1949	major	buy	735	851	619	{age}	data	receive	\N
1950	interesting	board	181	339	674	{sort}	total	oil	\N
1951	still	water	197	979	665	{fact,play}	history	whole	\N
1952	view	family	114	335	597	{former,would}	sound	cup	\N
1953	someone	born	183	3	772	{remember,resource}	authority	government	\N
1954	amount	story	392	553	396	{join,stage}	especially	business	\N
1955	place	find	66	325	345	{follow}	magazine	people	\N
1956	much	oil	266	903	275	{right,teacher}	wrong	sell	\N
1957	suddenly	call	164	960	473	{contain}	easy	talk	\N
1958	so	argue	393	481	96	{measure,send}	sister	magazine	\N
1959	word	still	728	125	572	{world}	base	range	\N
1960	somebody	black	264	966	317	{street,what}	quickly	family	\N
1961	change	usually	833	302	761	{Congress,mother}	and	reduce	\N
1962	offer	soldier	205	366	666	{small}	join	amount	\N
1963	environment	something	687	876	863	{whose}	conference	democratic	\N
1964	miss	purpose	553	895	659	{type}	soon	month	\N
1966	up	situation	269	775	548	{within}	southern	six	\N
1968	hotel	artist	807	346	54	{decision,city}	other	truth	\N
1969	cost	reduce	967	257	882	{small}	member	his	\N
1970	ten	with	990	680	903	{commercial}	old	fear	\N
1971	go	business	619	252	38	{difficult,identify}	everyone	song	\N
1972	rise	authority	880	873	96	{throughout}	night	but	\N
1974	never	only	923	832	841	{down}	may	blue	\N
1975	hope	pass	518	627	874	{few}	brother	ever	\N
1976	race	news	696	419	506	{provide}	eight	talk	\N
1977	walk	everything	555	901	246	{behavior}	attorney	listen	\N
1978	rate	lawyer	678	111	836	{black,recent}	their	my	\N
1979	amount	hear	437	181	33	{establish,since}	listen	treat	\N
1981	economic	against	350	396	449	{share,term}	receive	out	\N
1982	third	wait	485	364	742	{source}	born	center	\N
1983	letter	vote	448	63	693	{process,arm}	base	benefit	\N
1984	low	list	266	583	50	{interest}	hot	author	\N
1985	film	develop	394	158	487	{conference}	bag	economy	\N
1986	really	add	400	848	557	{religious,series}	every	reality	\N
1987	least	draw	183	232	527	{president}	his	learn	\N
1988	realize	never	856	630	867	{fall}	enjoy	turn	\N
1989	week	soldier	422	465	768	{body}	unit	require	\N
1990	cut	once	203	48	581	{worker,go}	prove	democratic	\N
1991	read	article	76	968	723	{him,majority}	time	condition	\N
1992	visit	friend	6	913	145	{popular}	detail	cup	\N
1993	those	couple	705	872	841	{moment,seven}	career	send	\N
1994	whole	question	348	214	105	{positive,purpose}	paper	support	\N
1995	feeling	ago	916	325	34	{your}	save	father	\N
1996	life	rule	207	359	972	{hard,contain}	ok	analysis	\N
1999	street	chair	301	667	518	{leader}	rise	modern	\N
2000	style	yourself	768	173	811	{data}	tree	population	\N
1926	camera	quality	862	719	759	{safe}	stand	describe	53
1903	fall	peace	559	43	338	{company,successful}	value	goal	4
1936	every	son	588	686	964	{nearly,class}	focus	after	1
1906	quality	here	614	843	932	{create}	crime	despite	11
1919	tree	maintain	464	43	390	{interview,lose}	recognize	usually	84
1973	up	cold	686	185	197	{weight}	chance	of	30
1980	wonder	likely	313	363	32	{parent,threat}	food	machine	80
1914	foot	moment	651	264	620	{hope,word}	improve	choose	14
1998	trouble	character	607	931	314	{happy,represent}	market	body	66
1934	generation	realize	105	87	411	{these,positive}	through	consumer	86
1967	own	while	136	681	911	{west}	form	information	49
1925	lead	career	960	439	750	{responsibility}	suddenly	relate	34
1997	fire	modern	715	44	662	{how,water}	building	generation	51
1940	others	newspaper	88	167	404	{provide}	yeah	tax	41
1965	enough	sure	843	816	442	{term}	bed	more	94
1941	son	parent	803	53	218	{significant,practice}	ago	including	20
1910	lose	front	728	647	817	{red,she}	big	ten	97
\.


--
-- Data for Name: relation_13; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_13 (software_id, license_type) FROM stdin;
2001	avoid
2002	great
2003	want
2004	cut
2005	in
2006	population
2007	feeling
2008	PM
2009	dinner
2010	reach
2011	record
2012	week
2013	article
2014	prove
2015	finish
2016	manage
2017	voice
2018	hold
2019	indicate
2020	task
2021	course
2022	long
2023	when
2024	seat
2025	enter
2026	ability
2027	realize
2028	never
2029	treat
2030	hit
2031	decision
2032	food
2033	itself
2034	traditional
2035	much
2036	today
2037	within
2038	discussion
2039	teacher
2040	year
2041	mean
2042	television
2043	week
2044	number
2045	eye
2046	eight
2047	notice
2048	perform
2049	view
2050	song
2051	go
2052	forward
2053	during
2054	say
2055	wind
2056	site
2057	keep
2058	debate
2059	hot
2060	under
2061	power
2062	enjoy
2063	approach
2064	we
2065	common
2066	southern
2067	skin
2068	fire
2069	much
2070	single
2071	film
2072	no
2073	yet
2074	federal
2075	significant
2076	travel
2077	blood
2078	international
2079	too
2080	sort
2081	lose
2082	rather
2083	mission
2084	recently
2085	more
2086	others
2087	be
2088	others
2089	exactly
2090	she
2091	white
2092	indeed
2093	environment
2094	foot
2095	person
2096	figure
2097	story
2098	report
2099	still
2100	human
\.


--
-- Data for Name: relation_14; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_14 (user_id, email, password_hash, mv_user) FROM stdin;
1	brandonnichols@example.com	month	{term,husband}
2	hernandezcharles@example.com	must	{space,agency,hard,right}
3	lisamoore@example.com	age	{music,yourself,point}
4	rodriguezstephanie@example.net	method	{network,fish}
5	ehamilton@example.net	admit	{fill,anyone,figure}
6	tiffany96@example.com	boy	{benefit}
7	ngillespie@example.org	same	{face}
8	carterpeter@example.org	Republican	{can}
9	lowebecky@example.com	keep	{be,heart}
10	zbranch@example.net	close	{bit,relationship,part,thus}
11	qgray@example.org	option	{good,sign,season,free}
12	tiffany63@example.com	particularly	{near}
13	hhogan@example.org	bit	{statement,fine,how,explain}
14	jeremiah50@example.com	expert	{she}
15	brownsharon@example.net	institution	{decision,writer}
16	kathleenmorse@example.net	bring	{rule}
17	charles21@example.net	once	{opportunity,daughter,environment}
18	jessica95@example.com	both	{have}
19	courtney22@example.net	blue	{run,with,every,particularly}
20	vpena@example.com	drug	{study,open}
21	khartman@example.net	trade	{us,pick}
22	timothygray@example.net	almost	{newspaper,animal}
23	barbarahaney@example.com	woman	{authority,one}
24	toddwhite@example.com	place	{to,such,woman,rock}
25	schmidtkarl@example.net	five	{culture,glass}
26	daniellecampbell@example.com	its	{draw,approach}
27	prodgers@example.com	instead	{eat,full}
28	tjackson@example.org	appear	{computer,price,certainly}
29	qmccoy@example.org	value	{professional}
30	victoria11@example.com	black	{admit,against,such}
31	johnsonallison@example.org	board	{great}
32	laura32@example.org	already	{reach,book,sister,class}
33	melissabaker@example.org	none	{reduce,drug,laugh,behind}
34	charlesdavis@example.net	conference	{century}
35	qallen@example.org	represent	{pick}
36	ryantran@example.org	they	{main,skin,ago,time}
37	huntjose@example.org	pressure	{social,message}
38	lorifreeman@example.com	will	{major,choice,bar,happy}
39	michaelrussell@example.net	remain	{enough,card,accept}
40	hdavis@example.net	unit	{ten}
41	johnpatrick@example.net	suffer	{especially}
42	duranrhonda@example.org	spring	{computer}
43	mckayjacqueline@example.com	risk	{personal,different}
44	meyerjohn@example.org	example	{determine,race}
45	jeremythompson@example.org	develop	{but,rate,all}
46	cooksue@example.org	lawyer	{number}
47	moonjesus@example.net	against	{benefit,address,person}
48	brandy42@example.net	avoid	{call,tough}
49	mcdonaldjohn@example.com	popular	{run}
50	cowanstephen@example.org	father	{nearly}
51	nleblanc@example.net	fill	{likely,very,step,reflect}
52	cathy78@example.org	range	{point,ability}
53	uolson@example.com	movement	{traditional,college,make}
54	alexandria47@example.org	century	{family}
55	idavis@example.net	bit	{section}
56	jeffrey66@example.org	party	{write,impact,race}
57	david61@example.net	teacher	{any,care}
58	christophergeorge@example.com	game	{glass,stay}
59	arobinson@example.net	hard	{station,let}
60	jennifer22@example.org	marriage	{use,special,want}
61	thompsonregina@example.com	case	{level,six,tax,paper}
62	michaelwilliams@example.com	toward	{program,factor,a}
63	christinaholden@example.org	avoid	{option}
64	josephfreeman@example.org	speech	{responsibility}
65	williamvasquez@example.org	crime	{hit,list,news}
66	kimjacob@example.net	record	{gun,imagine}
67	fgonzales@example.com	benefit	{fast}
68	jaimebooker@example.com	however	{hour,push,billion}
69	quinndeborah@example.net	just	{Mrs,yes,strategy}
70	rcollins@example.net	how	{six,part}
71	williamsonheather@example.com	risk	{run}
72	zbrown@example.com	know	{walk,room,bed,throughout}
73	crobinson@example.com	cost	{life,general}
74	valdezdanielle@example.net	consumer	{shoulder,town,between}
75	thomaspatricia@example.org	happy	{wonder,small,environment}
76	michaelpatterson@example.com	modern	{along,whatever,challenge,today}
77	jamesrhodes@example.com	turn	{perform,interview,list,fly}
78	sanchezbenjamin@example.com	law	{help,inside,century,several}
79	taylorlaura@example.com	daughter	{alone,than,control}
80	xrichards@example.net	home	{add,specific,final,as}
81	linangela@example.net	heavy	{per}
82	alex90@example.org	century	{nothing}
83	chaserussell@example.org	land	{choice}
84	ucoleman@example.org	just	{high,cultural}
85	kfletcher@example.org	music	{happy,however,account}
86	jamesdeleon@example.com	mention	{soon,daughter}
87	erik64@example.org	court	{Republican}
88	unguyen@example.com	main	{pull}
89	xdavid@example.org	official	{until,day,exactly}
90	wolfbrandy@example.com	natural	{should,draw}
91	martinsusan@example.com	worker	{or,trial,color,here}
92	julie13@example.org	wonder	{half,box,industry,social}
93	nunezcharles@example.net	matter	{do}
94	fwelch@example.net	majority	{according}
95	yeseniajohnson@example.net	fight	{view,audience,still,true}
96	pmckenzie@example.org	trade	{history,year,use}
97	chenwillie@example.net	house	{rest,where,after}
98	sarah03@example.org	cover	{explain}
99	allison88@example.net	near	{figure}
100	margaret51@example.com	difficult	{way,left,stand}
\.


--
-- Data for Name: relation_15; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_15 (customer_id, email, password_hash, mv_user, loyalty_tier, contact_no, renewal_date, subscription_addons, role) FROM stdin;
101	william65@example.com	situation	{every,provide}	Mr	{move,expect}	\N	\N	customer
102	hollynguyen@example.com	century	{chair,whom,upon,else}	too	{information,ball}	\N	\N	customer
103	cramos@example.org	bed	{child,so}	source	{capital}	\N	\N	customer
104	robertwalter@example.net	evening	{society,practice,bed,call}	spend	{its,successful}	\N	\N	customer
105	jennifermooney@example.com	town	{season,fast}	herself	{gas}	\N	\N	customer
106	heatherortiz@example.org	offer	{information,probably}	education	{yeah}	\N	\N	customer
107	ellisrobin@example.org	action	{check,likely}	must	{produce}	\N	\N	customer
108	tacosta@example.org	beyond	{bring}	such	{involve}	\N	\N	customer
109	dennismatthews@example.com	subject	{eight,certain}	water	{future,voice}	\N	\N	customer
110	mcculloughtiffany@example.net	particular	{data,response,what}	nature	{east}	\N	\N	customer
111	brandon32@example.com	require	{address,may,behind,like}	capital	{night,mean}	\N	\N	customer
112	elizabeth59@example.com	building	{evidence,enough,spend,piece}	use	{man}	\N	\N	customer
113	acostatamara@example.org	father	{culture,account,room,difficult}	table	{old}	\N	\N	customer
114	turnerbrittany@example.com	clear	{majority}	suggest	{television}	\N	\N	customer
115	doylewanda@example.net	as	{sign,fight}	guess	{peace}	\N	\N	customer
116	jeffreyliu@example.com	arrive	{property}	action	{effect}	\N	\N	customer
117	millerraven@example.com	friend	{her,soon,section,it}	these	{price,yes}	\N	\N	customer
118	zmeyer@example.org	would	{agency,minute,return,perform}	person	{write,chance}	\N	\N	customer
119	lunaadam@example.org	citizen	{factor,she}	ready	{discuss}	\N	\N	customer
120	nicholaswhite@example.net	although	{school,difference,answer,discuss}	effort	{read}	\N	\N	customer
121	carrolldevin@example.org	true	{food,someone,really,within}	foot	{little,sometimes}	\N	\N	customer
122	jennifer76@example.com	agency	{better,likely,fly}	opportunity	{everyone}	\N	\N	customer
123	millerchristopher@example.org	thing	{during,right,safe,collection}	exist	{everything}	\N	\N	customer
124	leejohn@example.com	quality	{according,might}	eye	{building,bed}	\N	\N	customer
125	shannonerica@example.net	impact	{light,particularly,personal}	again	{else,color}	\N	\N	customer
126	vanessaweeks@example.com	wait	{rule}	bring	{federal}	\N	\N	customer
127	katie04@example.org	compare	{finally,a}	another	{stand,course}	\N	\N	customer
128	agonzalez@example.org	seat	{discuss,answer,cost}	moment	{girl,same}	\N	\N	customer
129	tmoore@example.org	vote	{maybe,here,including,mission}	meeting	{little,hour}	\N	\N	customer
130	cchan@example.net	sing	{build}	exactly	{life}	\N	\N	customer
131	thomasrobert@example.net	against	{any,able}	explain	{because,show}	\N	\N	customer
132	scottchristopher@example.com	artist	{general}	close	{together,company}	\N	\N	customer
133	andrew94@example.com	decision	{respond,letter,detail}	reason	{win}	\N	\N	customer
134	lance37@example.net	recognize	{yard}	probably	{force,five}	\N	\N	customer
135	kingdiane@example.com	the	{such}	understand	{school,college}	\N	\N	customer
136	kingrachel@example.org	popular	{professor,energy}	herself	{front,art}	\N	\N	customer
137	aguilarsara@example.org	decision	{war,especially,class}	who	{plant}	\N	\N	customer
138	bakeraaron@example.com	whose	{land,same,involve}	close	{explain}	\N	\N	customer
139	james19@example.net	issue	{amount,edge,around,most}	arm	{great,civil}	\N	\N	customer
140	ashleywilliams@example.org	reflect	{turn,run}	plant	{glass}	\N	\N	customer
141	petersonjames@example.net	whose	{word}	medical	{tonight}	\N	\N	customer
142	elizabethmcclure@example.net	leave	{skin,item}	or	{act}	\N	\N	customer
143	rwatson@example.net	space	{assume,information,one}	lose	{of}	\N	\N	customer
144	mariawilson@example.net	around	{heavy,but,choose,finally}	table	{smile,effort}	\N	\N	customer
145	kari08@example.net	consider	{bill,bag,outside,establish}	region	{send,property}	\N	\N	customer
146	mercadolori@example.net	language	{still,trip,seek,ahead}	amount	{green,painting}	\N	\N	customer
147	daniel78@example.org	affect	{east,purpose,position}	TV	{say,next}	\N	\N	customer
148	egriffin@example.com	bad	{camera,training}	through	{us}	\N	\N	customer
149	riosbilly@example.net	avoid	{occur,difference,really}	responsibility	{against}	\N	\N	customer
150	pgarcia@example.net	however	{no,nearly,area,side}	raise	{structure,weight}	\N	\N	customer
151	hsnyder@example.net	to	{large,capital,property,citizen}	laugh	{policy}	\N	\N	customer
152	brent28@example.org	edge	{answer}	color	{foot}	\N	\N	customer
153	ronniethompson@example.org	everything	{coach,five,policy,amount}	nothing	{politics}	\N	\N	customer
154	brendaritter@example.net	big	{there,anyone,so,significant}	others	{buy}	\N	\N	customer
155	brian01@example.net	speech	{shake,market}	officer	{right}	\N	\N	customer
156	nkramer@example.com	technology	{culture}	forward	{of,five}	\N	\N	customer
157	nancylove@example.net	police	{indicate,detail}	society	{room,show}	\N	\N	customer
158	cory18@example.net	science	{way,table,various}	sell	{window,name}	\N	\N	customer
159	amanda85@example.net	against	{remember,become}	affect	{save,leave}	\N	\N	customer
160	mallory80@example.org	course	{marriage,industry,none}	nice	{high}	\N	\N	customer
161	cpacheco@example.org	business	{perform,get,hard}	activity	{least}	\N	\N	customer
162	marcus84@example.org	pretty	{good,skill,suffer}	kind	{claim,baby}	\N	\N	customer
163	rachelrandall@example.net	usually	{surface,ready,other}	machine	{leader}	\N	\N	customer
164	trobinson@example.org	money	{about,president}	growth	{three,bar}	\N	\N	customer
165	dreyes@example.org	soon	{huge}	choose	{friend,strategy}	\N	\N	customer
166	katie23@example.org	mother	{identify}	quality	{attack}	\N	\N	customer
167	tinarobinson@example.org	address	{radio}	watch	{quality}	\N	\N	customer
168	qprice@example.org	anything	{plan,wrong,minute,itself}	tough	{very}	\N	\N	customer
169	keith55@example.org	affect	{build,seem,thousand,authority}	through	{together,that}	\N	\N	customer
170	geraldwong@example.com	east	{call,smile,style,quality}	it	{knowledge}	\N	\N	customer
171	grahamwilliam@example.com	employee	{affect}	policy	{Mrs,address}	\N	\N	customer
172	william22@example.net	avoid	{meeting,these}	most	{size}	\N	\N	customer
173	mackjesse@example.com	mention	{doctor,in,entire}	animal	{easy,animal}	\N	\N	customer
174	jcarr@example.net	usually	{learn}	continue	{woman}	\N	\N	customer
175	kimcarl@example.com	without	{expert,plan}	popular	{resource}	\N	\N	customer
176	nancy20@example.org	piece	{goal,first}	defense	{economy}	\N	\N	customer
177	tfreeman@example.org	force	{young,head}	growth	{national}	\N	\N	customer
178	ballen@example.org	arm	{organization,growth,whole,ready}	rate	{girl}	\N	\N	customer
179	cscott@example.org	now	{government,maintain,both,room}	bill	{may,cover}	\N	\N	customer
180	iandrews@example.net	shoulder	{suddenly,still,now}	drop	{against,dream}	\N	\N	customer
181	christian06@example.com	according	{bill,physical}	admit	{laugh,leader}	\N	\N	customer
182	lawrencehughes@example.net	sell	{machine,father,girl}	fact	{window,air}	\N	\N	customer
183	mconner@example.net	establish	{trade}	compare	{boy,attorney}	\N	\N	customer
184	ucolon@example.com	as	{thus,leg,difference,another}	interview	{worker}	\N	\N	customer
185	oanderson@example.net	save	{assume}	clear	{attack}	\N	\N	customer
186	raysean@example.org	become	{man}	report	{task,television}	\N	\N	customer
187	millernathan@example.com	how	{mind}	idea	{woman}	\N	\N	customer
188	hatfieldstacy@example.org	cultural	{material,wall,break,happen}	thank	{require,particular}	\N	\N	customer
189	heatherfranco@example.net	little	{perhaps}	change	{example,direction}	\N	\N	customer
190	nicholsmariah@example.com	beat	{result,plan,seven,blood}	conference	{stage}	\N	\N	customer
191	nancyallen@example.com	available	{true,product,action,billion}	soon	{treatment}	\N	\N	customer
192	unixon@example.com	until	{nation}	training	{successful}	\N	\N	customer
193	rhowe@example.net	also	{than,wrong,two}	yet	{step,early}	\N	\N	customer
194	vandrews@example.com	return	{science}	building	{question,make}	\N	\N	customer
195	brendamooney@example.net	now	{no,daughter,senior}	leave	{will,today}	\N	\N	customer
196	kevin71@example.org	job	{beautiful}	key	{sense,mention}	\N	\N	customer
197	prattdavid@example.net	free	{top,often}	weight	{especially}	\N	\N	customer
198	twilson@example.com	commercial	{take}	blue	{research}	\N	\N	customer
199	fkaufman@example.net	door	{tree,front,catch,listen}	mean	{bar}	\N	\N	customer
200	stacy31@example.com	control	{give,involve,role,from}	here	{finish}	\N	\N	customer
201	thomaslewis@example.com	case	{tonight}	evidence	{operation}	thousand	{more,family,fly,relate}	primecustomer
202	lopezhannah@example.org	standard	{significant}	affect	{article}	century	{born}	primecustomer
203	andreavaughn@example.org	my	{look,always}	challenge	{activity}	necessary	{make}	primecustomer
204	moralesgeorge@example.org	avoid	{claim}	occur	{run}	than	{those,best,west,down}	primecustomer
205	lclark@example.net	here	{civil}	PM	{response,heavy}	claim	{investment,kind,per}	primecustomer
206	miranda08@example.org	country	{themselves,land,better}	cause	{water}	nation	{church,reach}	primecustomer
207	gomezsheri@example.net	military	{lead,need}	rest	{information}	cold	{back,morning}	primecustomer
208	josephcombs@example.com	major	{teach,land}	everything	{note,beyond}	low	{true}	primecustomer
209	sarahscott@example.org	section	{region}	note	{work}	involve	{call,full}	primecustomer
210	jennifermason@example.net	method	{let}	sign	{offer,mission}	know	{though,less,economic}	primecustomer
211	blackwellvictoria@example.org	western	{season,lead,focus}	guess	{good}	never	{candidate,Republican}	primecustomer
212	nkirk@example.net	evening	{old,speak}	friend	{husband}	break	{too,west,something,suddenly}	primecustomer
213	hannahflores@example.com	treat	{agree}	executive	{per,individual}	concern	{bag,prove}	primecustomer
214	armstrongnatasha@example.org	than	{add}	phone	{early}	sell	{suffer,movie,various}	primecustomer
215	alyssa84@example.org	marriage	{show}	expert	{long,successful}	leg	{bank,today,begin,summer}	primecustomer
216	xtownsend@example.org	goal	{war,no}	modern	{section}	work	{quite,his,strategy}	primecustomer
217	ewingrobert@example.org	see	{agree,pretty,fear}	hit	{imagine,option}	increase	{describe,inside}	primecustomer
218	seanoliver@example.com	along	{suggest,end,parent}	relationship	{chair,water}	owner	{land,may,they,yet}	primecustomer
219	chambersvictoria@example.org	deep	{end,maintain,rise}	care	{cost,artist}	cost	{agent}	primecustomer
220	tschmitt@example.com	simply	{whole}	although	{environment}	stuff	{cover}	primecustomer
221	michaelswanson@example.org	fly	{change,in,her}	deal	{available,ready}	note	{suffer,smile,ahead,according}	primecustomer
222	malvarado@example.org	apply	{expect,sometimes,fly}	sound	{lot,PM}	management	{economy}	primecustomer
223	dphelps@example.com	budget	{dark,carry}	wait	{poor,often}	system	{born,strong,style,himself}	primecustomer
224	susanburns@example.org	this	{former,amount}	society	{operation,always}	memory	{value,other,so,size}	primecustomer
225	zimmermanteresa@example.com	rise	{give,somebody,best}	face	{pull,major}	group	{ago,affect}	primecustomer
226	qrussell@example.com	if	{evening}	information	{wall}	off	{north}	primecustomer
227	omartin@example.net	like	{different,system,call,range}	choice	{source}	mind	{piece,able,down,artist}	primecustomer
228	robert20@example.org	item	{show,defense,perform}	rather	{star,national}	service	{idea}	primecustomer
229	qpowell@example.net	pretty	{stage,sea,wife}	area	{himself,necessary}	hair	{major}	primecustomer
230	shoover@example.com	before	{modern,safe}	case	{its,can}	pay	{upon}	primecustomer
231	cherylgarrett@example.com	box	{nothing,require,effort,son}	month	{reveal,less}	whose	{ask}	primecustomer
232	christianmccoy@example.com	thing	{character,responsibility,material}	environmental	{newspaper}	or	{matter}	primecustomer
233	zanderson@example.com	big	{peace,nearly}	nearly	{rule,none}	toward	{ever,cold}	primecustomer
234	nray@example.com	popular	{compare,popular,measure,upon}	wife	{community,interest}	positive	{increase}	primecustomer
235	kennethanthony@example.com	position	{such,care}	perhaps	{responsibility}	item	{receive}	primecustomer
236	longlauren@example.org	major	{boy,teach,inside,third}	item	{because,white}	listen	{eat,popular,degree}	primecustomer
237	wrangel@example.org	raise	{discussion,prevent}	line	{happy,leader}	edge	{ball,middle}	primecustomer
238	andrew53@example.org	these	{often}	deal	{either}	friend	{church}	primecustomer
239	tgarner@example.org	analysis	{sell,we}	indeed	{make,couple}	read	{rate,before,security,here}	primecustomer
240	daniel49@example.com	generation	{only,policy,explain}	person	{perhaps}	worker	{manage,enter}	primecustomer
241	whiterobert@example.net	yard	{town,issue}	clear	{how,player}	television	{dark,college}	primecustomer
242	brandikey@example.com	style	{cut,one}	who	{people}	true	{later,understand,today,include}	primecustomer
243	mitchelldavid@example.org	admit	{occur,group}	one	{guess,themselves}	into	{successful,different,their}	primecustomer
244	fritzeric@example.net	cup	{red,ground}	across	{trial,body}	board	{law,shake,several}	primecustomer
245	robinsonbrandon@example.net	join	{move,travel}	writer	{size}	water	{something,should}	primecustomer
246	james79@example.com	attack	{trade,force,avoid}	act	{couple}	recent	{break,plan}	primecustomer
247	james53@example.com	player	{away,goal}	plant	{six}	open	{his,front,their,generation}	primecustomer
248	penningtonanna@example.com	serious	{could}	threat	{inside,Mr}	south	{guess,yourself,instead,appear}	primecustomer
249	johnsonashley@example.com	quality	{explain,fly}	conference	{trade,upon}	nice	{determine,education}	primecustomer
250	moorerebecca@example.net	spring	{page,book}	expect	{drive,then}	thousand	{take,do}	primecustomer
251	melanie10@example.com	decision	{medical}	crime	{sense,billion}	various	{number,little,those}	primecustomer
252	joannabrady@example.net	contain	{wind,language,never}	city	{than}	inside	{current,feel,huge}	primecustomer
253	williambrown@example.com	think	{message,include}	will	{should,writer}	three	{season}	primecustomer
254	ryan17@example.net	good	{explain,office,wait,window}	oil	{amount,keep}	cultural	{question}	primecustomer
255	hsmith@example.com	Mr	{heavy}	campaign	{range}	song	{next}	primecustomer
256	rodriguezmichael@example.net	senior	{west}	leader	{policy}	day	{box,pressure}	primecustomer
257	linjohn@example.org	feeling	{street,able,kid}	decade	{arm}	control	{single,center,child,company}	primecustomer
258	nsims@example.net	career	{economy}	sing	{purpose}	fire	{citizen,as}	primecustomer
259	richardwilliams@example.com	each	{tax,marriage,agree}	after	{task}	prove	{instead,consider}	primecustomer
260	gary08@example.net	pass	{feeling,left}	later	{let}	degree	{task,catch,either}	primecustomer
261	ellisrebecca@example.com	senior	{choice,measure}	race	{understand}	store	{behind}	primecustomer
262	vmathews@example.com	floor	{meeting,anyone,third}	lay	{space}	accept	{shake,sing,add,see}	primecustomer
263	robertsolis@example.org	media	{first,family,success,end}	add	{machine}	special	{community,win,window,recent}	primecustomer
264	cynthia90@example.org	child	{story}	forward	{Mrs}	into	{thought,central,and,season}	primecustomer
265	riverajonathan@example.net	they	{attorney,daughter,alone}	when	{heavy,fly}	see	{though,standard,walk}	primecustomer
266	lisagarcia@example.com	country	{serious,water,sense,through}	about	{Democrat}	article	{per}	primecustomer
267	goldendean@example.net	admit	{role}	decade	{clearly,them}	town	{candidate,read,indicate}	primecustomer
268	bernardjennifer@example.net	wrong	{make,everyone}	chair	{memory}	power	{ready,beautiful,ask,pretty}	primecustomer
269	whitematthew@example.net	best	{front}	example	{ago,way}	account	{give}	primecustomer
270	zbutler@example.org	field	{ever,sometimes}	call	{production,especially}	happy	{seem,on,reason}	primecustomer
271	sabrina61@example.org	rich	{find,land,interest}	again	{fine}	memory	{yourself,inside,become,anything}	primecustomer
272	ihouse@example.com	try	{both,civil,final,argue}	such	{important}	face	{check,policy}	primecustomer
273	jade35@example.net	why	{some}	contain	{court,argue}	according	{production,attorney,catch,lawyer}	primecustomer
274	diazvincent@example.net	truth	{now}	onto	{high}	ago	{go}	primecustomer
275	perrydanielle@example.com	ever	{use,analysis,simple,law}	remember	{after}	group	{most,line,about}	primecustomer
276	wintersmartha@example.com	wall	{message}	personal	{force}	go	{debate,still}	primecustomer
277	lisa95@example.org	answer	{help,owner,despite,high}	effect	{thing,wall}	throughout	{bad,each,west}	primecustomer
278	jeremy93@example.net	still	{generation}	win	{right}	inside	{follow,game,take,cost}	primecustomer
279	llee@example.com	individual	{age,appear}	camera	{cut,personal}	concern	{four}	primecustomer
280	ryanmills@example.net	fish	{fight,material}	stand	{by,huge}	message	{company}	primecustomer
281	jadams@example.org	accept	{what}	establish	{we,task}	since	{series}	primecustomer
282	trevorclark@example.net	senior	{threat}	young	{worry,morning}	these	{enough,out,citizen,Mr}	primecustomer
283	rwalters@example.net	commercial	{health,before}	just	{rock}	stand	{region,available,top,without}	primecustomer
284	bstevens@example.net	face	{where,good,everybody}	doctor	{several}	paper	{campaign}	primecustomer
285	williamslisa@example.com	represent	{stand}	at	{sense,sea}	summer	{us}	primecustomer
286	kevindavis@example.net	hold	{draw,energy}	no	{read,claim}	seek	{his,can,care,accept}	primecustomer
287	cbrown@example.net	song	{remember,technology}	will	{care,mean}	fund	{language,grow,war}	primecustomer
288	brianfrazier@example.com	positive	{risk,her,teacher}	region	{fall,role}	hour	{race,large,yet,really}	primecustomer
289	kochchristina@example.net	adult	{may,allow}	hundred	{husband,always}	smile	{their}	primecustomer
290	jennifer39@example.com	music	{identify,particular}	customer	{job}	middle	{something}	primecustomer
291	patelwendy@example.org	laugh	{about,power,religious,experience}	western	{heavy}	job	{pay}	primecustomer
292	caitlin84@example.net	test	{water,everybody,lead}	understand	{keep}	his	{suddenly,give,method}	primecustomer
293	ehicks@example.org	else	{test,record}	western	{by}	dream	{Mrs,power,go}	primecustomer
294	joshuapage@example.net	pull	{east}	response	{bed,rock}	most	{receive}	primecustomer
295	robinevans@example.org	reach	{continue,record,inside}	shake	{majority}	agent	{class,rather,direction,especially}	primecustomer
296	owenjonathan@example.com	matter	{people,back,maintain,his}	animal	{every}	money	{stage}	primecustomer
297	gtaylor@example.net	provide	{coach,site,still,pattern}	success	{drive,writer}	amount	{century,argue,star}	primecustomer
298	gregjohnson@example.net	type	{open,figure,star,allow}	sing	{will,economic}	early	{only,water,available,morning}	primecustomer
299	dillongregory@example.net	join	{pass,notice,really,hundred}	authority	{speak,herself}	pretty	{represent}	primecustomer
300	katelyn62@example.org	dark	{behind,current,reveal,hand}	late	{idea,seem}	run	{machine}	primecustomer
\.


--
-- Data for Name: relation_16; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_16 (businesscustomer_id, email, password_hash, mv_user, loyalty_tier, contact_no, company_name) FROM stdin;
301	robertsjodi@example.com	ask	{physical}	seven	{mind}	various
302	hjohnson@example.org	Mrs	{describe,campaign,home,think}	floor	{onto,measure}	edge
303	sara50@example.org	floor	{agent}	another	{center}	culture
304	nobleshelly@example.org	media	{record,fire,power,discuss}	research	{benefit,almost}	write
305	annettebutler@example.org	foot	{different}	process	{every}	my
306	joshua92@example.org	why	{just}	follow	{play,great}	shake
307	monroericky@example.com	add	{down,personal}	edge	{among,activity}	doctor
308	cameron33@example.org	idea	{able,air,question}	like	{money,man}	sit
309	jonestiffany@example.com	few	{nothing}	detail	{plant}	loss
310	farmerdouglas@example.net	hard	{guy,beat,room,son}	act	{when,because}	inside
311	chriswhite@example.com	left	{seem,face,return,major}	difficult	{far,possible}	better
312	ballardbradley@example.org	picture	{reach,four,subject,beyond}	number	{trial}	conference
313	edwin63@example.org	land	{already}	know	{require}	next
314	martinelizabeth@example.net	sometimes	{just,system,green,baby}	list	{service}	color
315	jeanne98@example.org	eat	{Republican,employee,treat}	carry	{factor}	board
316	mcox@example.org	kid	{chair,arm,back,receive}	rule	{total}	issue
317	perezjonathan@example.net	character	{call,foot,suffer}	wide	{at}	garden
318	tony71@example.org	possible	{project,allow}	bad	{throughout,charge}	table
319	williamhowell@example.net	American	{vote}	to	{response,likely}	occur
320	rebeccahudson@example.com	most	{plant}	ball	{open}	thousand
321	andrew22@example.com	open	{science,strategy,edge}	instead	{challenge,set}	current
322	markbarber@example.net	eight	{politics,single}	yourself	{plant,tell}	hard
323	james44@example.com	too	{add,identify,late}	station	{various,your}	but
324	ucox@example.net	design	{wonder,director,last}	property	{game,music}	believe
325	rjohnson@example.org	recently	{office,plan,government}	student	{paper}	enjoy
326	freemansusan@example.net	far	{until,popular}	win	{those}	decade
327	mjones@example.org	few	{let,middle}	keep	{loss,condition}	stage
328	nmack@example.net	pretty	{air}	culture	{else}	environment
329	oallen@example.com	why	{feel}	economy	{along}	between
330	noblestacey@example.org	for	{study,strategy,possible,vote}	management	{nearly}	experience
331	raydawn@example.net	air	{dinner,pass}	available	{executive}	image
332	gonzalezryan@example.org	senior	{their,politics,capital,well}	three	{edge,themselves}	pressure
333	jeffery30@example.org	cultural	{station,entire}	list	{discuss}	through
334	debrabond@example.org	Mrs	{huge,first,instead}	protect	{protect}	start
335	nicolejacobs@example.net	soon	{network,business,possible}	suggest	{dark}	carry
336	ioneill@example.org	large	{piece,almost}	medical	{start,sit}	next
337	brian10@example.org	character	{detail,say}	talk	{include}	one
338	leesandra@example.com	ten	{which,fill,camera,wish}	dark	{lead}	road
339	candice06@example.org	challenge	{order,gun,run}	accept	{tonight}	support
340	barrybrittney@example.org	wrong	{without,increase}	authority	{choice,father}	dream
341	cmiller@example.com	new	{able,total,cause}	computer	{onto,if}	growth
342	dariusfowler@example.com	though	{generation,decide,until,natural}	image	{anyone}	popular
343	christinamartinez@example.org	image	{son,stage}	list	{ten}	thus
344	harrisonkurt@example.com	in	{structure,experience}	part	{name,discussion}	security
345	ortizdavid@example.org	material	{school,any}	end	{less,purpose}	risk
346	adamcortez@example.com	never	{nature,card}	claim	{time}	raise
347	jessicastrickland@example.net	laugh	{require}	others	{most}	laugh
348	campbellcarrie@example.net	because	{live}	yard	{short}	gun
349	judithryan@example.org	up	{himself,yourself,travel,admit}	movie	{leg,soldier}	girl
350	sthompson@example.org	toward	{culture}	daughter	{cultural,call}	water
351	brooksbenjamin@example.org	hot	{party,act,laugh}	himself	{party,environment}	off
352	gibbsjared@example.org	democratic	{strategy,citizen,response}	east	{because,day}	full
353	gonzalezdanielle@example.com	even	{century,security,bag,head}	strong	{wind}	indeed
354	craigtyler@example.com	information	{wind}	hour	{test,question}	she
355	urios@example.net	traditional	{sound,image,hotel,magazine}	population	{list,clear}	most
356	lisa08@example.com	hit	{especially,follow}	where	{election}	morning
357	gonzaleswilliam@example.com	myself	{today,tonight}	and	{the}	control
358	gcannon@example.org	view	{cold,subject,rate}	natural	{without}	ever
359	karaparks@example.com	top	{production}	security	{remember,week}	unit
360	morrowjeremy@example.net	professional	{campaign,summer,just}	place	{know}	listen
361	iramsey@example.org	book	{the,suffer}	goal	{through,good}	rule
362	katherine31@example.com	often	{report,true,small}	administration	{draw}	professor
363	santoskayla@example.com	citizen	{really}	campaign	{prepare}	job
364	casey36@example.net	analysis	{drop,music}	step	{worker,two}	store
365	megan42@example.org	city	{lay,always}	draw	{region}	education
366	seantownsend@example.org	discussion	{center}	worry	{suggest,no}	bank
367	danny29@example.net	blue	{itself,only,compare,individual}	ago	{security}	for
368	victor97@example.org	allow	{room,hot,position}	remain	{we}	Mrs
369	bcameron@example.org	spend	{cover,bad,cultural,mission}	military	{machine,fish}	single
370	woodkelly@example.org	rock	{him,until,street}	should	{about,name}	win
371	dianashaw@example.org	heavy	{collection,start,though}	way	{star}	senior
372	millstracy@example.com	it	{account}	respond	{window}	imagine
373	langcrystal@example.org	provide	{seven,often}	rise	{word}	way
374	teresa06@example.com	fire	{guy}	first	{everyone}	worker
375	sarathomas@example.org	watch	{before,type}	industry	{likely,too}	Mrs
376	sophiahebert@example.net	loss	{easy,take,point}	wide	{send}	data
377	katie94@example.org	win	{somebody}	series	{whom,recently}	interest
378	nancybolton@example.net	kid	{time}	radio	{although}	she
379	wgreen@example.com	film	{ability}	security	{relate}	us
380	gonzaleseric@example.com	thank	{most,almost}	economy	{food,hot}	finally
381	zsmith@example.net	feel	{indicate,way}	finish	{special,wonder}	indicate
382	jtaylor@example.net	place	{believe,on}	me	{mother,hot}	as
383	scottanthony@example.org	arm	{me,capital,one}	enough	{inside,create}	concern
384	jamesmckinney@example.org	great	{choose,lot,wish}	training	{type}	call
385	andersonjesse@example.net	up	{health,tree,local,white}	against	{important}	us
386	kari08@example.net	focus	{south}	money	{car,professional}	very
387	billchase@example.org	shoulder	{way,across}	relationship	{whatever,pressure}	huge
388	mcintyreeric@example.net	drop	{order,receive,think,against}	really	{information}	itself
389	walter14@example.org	perhaps	{once,reduce,stay}	degree	{area,especially}	cause
390	wlee@example.net	fear	{walk,result}	right	{play,impact}	black
391	matthew00@example.com	sea	{shoulder,day,because,dream}	than	{president,car}	recognize
392	chelsea60@example.com	throughout	{parent}	scientist	{meeting,would}	every
393	smithyesenia@example.com	among	{institution,run,hit}	notice	{car,into}	must
394	princepenny@example.org	gun	{while,wall,so}	kind	{school}	treat
395	debralucero@example.com	away	{stuff,lay,amount,see}	yeah	{tough,last}	summer
396	andrearobinson@example.com	enough	{factor,fund,serve,particular}	take	{onto,follow}	chair
397	crystal11@example.org	call	{such,study,last}	indeed	{about}	million
398	kaylastevenson@example.com	form	{resource,charge,hard,eight}	letter	{cup}	common
399	crobinson@example.com	prove	{statement}	whose	{economic,miss}	former
400	wwilson@example.com	international	{raise,again}	feel	{spring,price}	mention
\.


--
-- Data for Name: relation_17; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_17 (employee_id, email, password_hash, mv_user, employee_no, office_site, role, shift) FROM stdin;
401	wilsonbrenda@example.net	throughout	{suddenly,television}	often	\N	employee	\N
402	agilbert@example.com	book	{political,nice,ball}	town	\N	employee	\N
403	lisa36@example.org	lead	{station,leg}	carry	\N	employee	\N
404	lisajohnson@example.org	drop	{news,anyone,case}	as	\N	employee	\N
405	berrygary@example.com	data	{thus,federal,peace,save}	voice	\N	employee	\N
406	monicasolis@example.com	international	{whom}	program	\N	employee	\N
407	jonathan88@example.org	every	{toward,evidence}	before	\N	employee	\N
408	ryan38@example.com	blood	{doctor,move,ability,investment}	use	\N	employee	\N
409	johnsongregory@example.org	all	{scene}	evidence	\N	employee	\N
410	sorozco@example.org	west	{together,not,several}	become	\N	employee	\N
411	higginsdeborah@example.org	pick	{far,myself,money}	list	\N	employee	\N
412	beth01@example.net	fund	{player,there,serious}	mention	\N	employee	\N
413	vjones@example.net	official	{be}	American	\N	employee	\N
414	isimmons@example.org	anything	{concern,easy,find,his}	deal	\N	employee	\N
415	rachel70@example.net	number	{boy}	tough	\N	employee	\N
416	matthewsanthony@example.com	surface	{chair}	particular	\N	employee	\N
417	colemanbrett@example.com	book	{help,argue}	talk	\N	employee	\N
418	steven40@example.com	would	{same,story,actually,boy}	deep	\N	employee	\N
419	vmills@example.org	arrive	{nation,attack}	really	\N	employee	\N
420	laurahull@example.net	fear	{begin,question,interview,may}	among	\N	employee	\N
421	meganwilliams@example.net	practice	{walk,past,fast}	media	\N	employee	\N
422	brittanymartinez@example.com	everyone	{politics,series,movement}	husband	\N	employee	\N
423	brandigardner@example.net	town	{meeting,spring,cell,section}	discussion	\N	employee	\N
424	mosserica@example.net	past	{her,policy,quite}	war	\N	employee	\N
425	kathrynparker@example.net	talk	{tend,possible,help}	artist	\N	employee	\N
426	erinjohnston@example.net	ahead	{behind,garden}	energy	\N	employee	\N
427	anthony31@example.org	effort	{meeting,discover,by,world}	group	\N	employee	\N
428	sophia01@example.net	turn	{me,bad,buy,turn}	realize	\N	employee	\N
429	ysparks@example.com	indicate	{stuff,race,somebody,paper}	whole	\N	employee	\N
430	christineellis@example.org	material	{probably,wait}	another	\N	employee	\N
431	bradleydawson@example.com	maintain	{interest,number}	surface	\N	employee	\N
432	carneykatie@example.net	build	{window,some,know,two}	stock	\N	employee	\N
433	melindawilliams@example.org	should	{poor,rest,any,specific}	environment	\N	employee	\N
434	lauren75@example.com	that	{friend}	upon	\N	employee	\N
435	garzamatthew@example.net	notice	{age,head,future,week}	special	\N	employee	\N
436	heather06@example.org	major	{drive}	always	\N	employee	\N
437	michael07@example.com	discussion	{degree}	dark	\N	employee	\N
438	corey26@example.org	family	{the,simple}	concern	\N	employee	\N
439	matthewstewart@example.com	charge	{can,community,pattern}	agree	\N	employee	\N
440	caseywhite@example.org	send	{into,executive}	near	\N	employee	\N
441	stephaniefreeman@example.net	step	{note}	eight	\N	employee	\N
442	peter86@example.com	coach	{debate}	some	\N	employee	\N
443	nwelch@example.org	lead	{rise,purpose,dog,feeling}	authority	\N	employee	\N
444	smora@example.org	generation	{community,meet}	exist	\N	employee	\N
445	itapia@example.com	than	{than}	position	\N	employee	\N
446	billy61@example.com	song	{letter,tree}	staff	\N	employee	\N
447	jackgutierrez@example.org	high	{six,letter,it}	produce	\N	employee	\N
448	efitzgerald@example.org	argue	{PM}	feel	\N	employee	\N
449	fwinters@example.org	democratic	{nothing,area,kitchen}	wear	\N	employee	\N
450	martin83@example.net	rest	{another,soon}	full	\N	employee	\N
451	bhicks@example.org	wall	{order,win}	body	\N	employee	\N
452	zjackson@example.com	itself	{reduce,wide,pattern,easy}	generation	\N	employee	\N
453	princejason@example.com	open	{activity}	tax	\N	employee	\N
454	walkerbradley@example.org	rather	{certain,media}	few	\N	employee	\N
455	williesanford@example.com	party	{hour,meeting,affect}	draw	\N	employee	\N
456	andre82@example.com	hotel	{political}	understand	\N	employee	\N
457	eparker@example.org	own	{nature,draw}	personal	\N	employee	\N
458	misty91@example.com	poor	{several}	century	\N	employee	\N
459	nicole62@example.net	draw	{professional}	maintain	\N	employee	\N
460	vanessawilliams@example.com	quality	{newspaper,determine}	better	\N	employee	\N
461	david55@example.org	letter	{control,though}	political	\N	employee	\N
462	tonyhansen@example.net	thus	{animal,according,sing}	chair	\N	employee	\N
463	ryanmartin@example.com	wind	{stay,film}	language	\N	employee	\N
464	william90@example.net	religious	{can,again}	international	\N	employee	\N
465	nicolerivera@example.org	reach	{girl,serve,modern,herself}	speech	\N	employee	\N
466	karenwilson@example.com	street	{close}	action	\N	employee	\N
467	websteredward@example.net	military	{film}	wear	\N	employee	\N
468	dale28@example.org	season	{up,physical,different}	them	\N	employee	\N
469	pearsonsarah@example.org	skill	{politics}	hotel	\N	employee	\N
470	bethrodriguez@example.com	born	{bill,large}	thing	\N	employee	\N
471	mortonrita@example.net	believe	{respond}	within	\N	employee	\N
472	orice@example.com	discussion	{notice,production,suddenly,yet}	name	\N	employee	\N
473	ystafford@example.net	board	{sure,culture,outside,be}	story	\N	employee	\N
474	elizabeth47@example.org	could	{political}	answer	\N	employee	\N
475	craig81@example.net	wife	{often,expert}	everybody	\N	employee	\N
476	bobbycarter@example.net	pay	{relationship,have,recently}	collection	\N	employee	\N
477	ralphwilliams@example.org	coach	{better}	want	\N	employee	\N
478	stacey12@example.net	consider	{look,voice,top,certainly}	machine	\N	employee	\N
479	darrellblankenship@example.com	debate	{onto,plant,no}	music	\N	employee	\N
480	barrettcolleen@example.net	late	{near,large}	painting	\N	employee	\N
481	mcconnellcynthia@example.net	material	{worry,lawyer}	money	\N	employee	\N
482	krobles@example.com	these	{base,rule,recent}	born	\N	employee	\N
483	thompsonvictoria@example.org	no	{matter}	could	\N	employee	\N
484	nicholashodge@example.com	group	{forget,treat,base}	statement	\N	employee	\N
485	wbarajas@example.net	morning	{this,how,industry}	whose	\N	employee	\N
486	josephbrown@example.net	quality	{all,today}	discover	\N	employee	\N
487	scottjohnson@example.com	recent	{maintain}	place	\N	employee	\N
488	tlee@example.com	education	{beautiful}	enter	\N	employee	\N
489	hobbstaylor@example.net	hit	{kitchen,season,management}	on	\N	employee	\N
490	christianmoyer@example.net	worker	{reason,those}	itself	\N	employee	\N
491	plang@example.com	four	{foot,success}	pressure	\N	employee	\N
492	christinachase@example.net	old	{politics,appear}	huge	\N	employee	\N
493	lukemercer@example.net	she	{bank,amount}	director	\N	employee	\N
494	vsmith@example.org	want	{become,be,significant,thus}	president	\N	employee	\N
495	samanthamcgee@example.net	option	{true,so,party}	example	\N	employee	\N
496	neilmurray@example.net	push	{defense,door,hear,understand}	gun	\N	employee	\N
497	ejones@example.com	probably	{brother,animal,remember,institution}	miss	\N	employee	\N
498	mduke@example.net	soon	{majority}	guy	\N	employee	\N
499	ballardsandra@example.net	environmental	{attention,foreign,western}	bring	\N	employee	\N
500	ambermoran@example.net	my	{happy}	type	\N	employee	\N
501	millerrobert@example.com	since	{task,official,rest,become}	cold	option	corporateemployee	\N
502	william97@example.org	adult	{difficult,general,end}	sure	herself	corporateemployee	\N
503	emendez@example.com	yourself	{reflect,view,name,campaign}	just	great	corporateemployee	\N
504	stacyrowland@example.org	behind	{however}	happen	exist	corporateemployee	\N
505	kelly60@example.net	sometimes	{page}	study	region	corporateemployee	\N
506	arthurphillips@example.net	soldier	{bit,quality,participant}	sure	perhaps	corporateemployee	\N
507	burgesscatherine@example.com	air	{apply,member,attack,reach}	foreign	since	corporateemployee	\N
508	fyoung@example.net	how	{follow}	course	seem	corporateemployee	\N
509	lozanowilliam@example.org	Congress	{present,happy}	positive	least	corporateemployee	\N
510	edward34@example.org	which	{race,claim}	town	raise	corporateemployee	\N
511	caldwelllisa@example.com	nice	{at}	matter	skill	corporateemployee	\N
512	gmorrison@example.org	present	{article,two,still,Mrs}	simple	camera	corporateemployee	\N
513	mschneider@example.net	big	{participant}	may	serve	corporateemployee	\N
514	christopherwhite@example.com	current	{office,plan}	event	American	corporateemployee	\N
515	brandicooper@example.net	movie	{life}	style	training	corporateemployee	\N
516	russellbrandon@example.org	development	{sea,other,now}	dinner	can	corporateemployee	\N
517	littlekimberly@example.com	rock	{guy,star,job}	executive	what	corporateemployee	\N
518	johnsonzachary@example.net	sport	{so}	cause	those	corporateemployee	\N
519	zbarnes@example.com	smile	{entire}	local	author	corporateemployee	\N
520	chris98@example.org	firm	{Democrat,bag,us}	use	story	corporateemployee	\N
521	kimlaura@example.net	once	{trade,minute,until}	power	popular	corporateemployee	\N
522	watsonlance@example.net	shoulder	{too,decision}	nice	another	corporateemployee	\N
523	caroline89@example.net	speak	{design,whole}	development	none	corporateemployee	\N
524	cooktom@example.org	rock	{everyone,reach}	rate	notice	corporateemployee	\N
699	ryanjennings@example.net	today	{cut,too}	professional	act	engineer	\N
525	fmay@example.com	weight	{car,fight,company,notice}	him	sister	corporateemployee	\N
526	gordonrita@example.net	teach	{standard}	act	reduce	corporateemployee	\N
527	moorenicole@example.org	lose	{somebody,big,go,education}	them	personal	corporateemployee	\N
528	wmckinney@example.com	establish	{want,buy,despite,heart}	attack	human	corporateemployee	\N
529	duranjackson@example.org	maintain	{young}	note	end	corporateemployee	\N
530	jesse41@example.org	speech	{low}	season	operation	corporateemployee	\N
531	cantubarbara@example.net	give	{will,environment,man}	be	treat	corporateemployee	\N
532	kimberlypowers@example.org	what	{TV,one,professional,over}	yourself	debate	corporateemployee	\N
533	eddieperez@example.org	place	{parent,operation,son}	prepare	star	corporateemployee	\N
534	charper@example.org	speech	{test,blue,question,treat}	state	market	corporateemployee	\N
535	elizabeth48@example.org	sign	{whom}	price	protect	corporateemployee	\N
536	vcarter@example.net	feeling	{operation,process,plant,after}	shake	possible	corporateemployee	\N
537	brentwood@example.net	front	{call,show,box}	sometimes	charge	corporateemployee	\N
538	michaelwalker@example.org	budget	{voice,realize,see,eight}	some	cost	corporateemployee	\N
539	robertramirez@example.com	pressure	{can}	relationship	society	corporateemployee	\N
540	egreen@example.org	outside	{win,trouble}	wait	treat	corporateemployee	\N
541	grayeric@example.net	space	{thousand,color,ten}	meet	make	corporateemployee	\N
542	bcarson@example.com	within	{new,base,ago}	begin	fight	corporateemployee	\N
543	chadallen@example.com	assume	{election,garden}	very	peace	corporateemployee	\N
544	kpatton@example.net	hair	{family}	may	wide	corporateemployee	\N
545	umorgan@example.org	writer	{enjoy,perform}	range	let	corporateemployee	\N
546	kayleearnold@example.com	both	{push,candidate,likely}	me	although	corporateemployee	\N
547	lisa33@example.org	manage	{serious,call,word,health}	wait	order	corporateemployee	\N
548	annrobinson@example.org	onto	{education,record,find}	add	interesting	corporateemployee	\N
549	ramireztammy@example.org	why	{final,pressure,hundred}	a	seven	corporateemployee	\N
550	julie43@example.org	fill	{travel,present,building}	less	cell	corporateemployee	\N
551	marcussmith@example.net	police	{conference,ok,enough,consider}	building	TV	corporateemployee	\N
552	wmckinney@example.com	accept	{among,government}	property	pull	corporateemployee	\N
553	danny08@example.com	life	{impact,human}	Mr	health	corporateemployee	\N
554	shawnhebert@example.net	actually	{near,four,each,spring}	small	manage	corporateemployee	\N
555	stephenwilson@example.org	television	{blue,anything}	child	teacher	corporateemployee	\N
556	luke64@example.org	should	{series}	story	together	corporateemployee	\N
557	tstevens@example.com	security	{central}	control	structure	corporateemployee	\N
558	sarah57@example.net	power	{job,eye}	factor	want	corporateemployee	\N
559	briantapia@example.com	company	{painting}	memory	eat	corporateemployee	\N
560	stonecassandra@example.com	early	{bad}	act	simple	corporateemployee	\N
561	rswanson@example.net	paper	{person}	yeah	near	corporateemployee	\N
562	matthew70@example.net	property	{organization,two,ahead,commercial}	think	trade	corporateemployee	\N
563	danielchandler@example.net	remain	{sound}	baby	economic	corporateemployee	\N
564	milleranthony@example.net	series	{probably,star}	machine	as	corporateemployee	\N
565	tiffany64@example.net	guy	{blood,floor,head}	energy	force	corporateemployee	\N
566	jeffersonanna@example.org	almost	{including,wife}	describe	red	corporateemployee	\N
567	vbird@example.org	method	{there,carry}	car	first	corporateemployee	\N
568	ymoore@example.org	without	{want,serious,but,south}	difficult	theory	corporateemployee	\N
569	samantha27@example.com	note	{actually}	rock	can	corporateemployee	\N
570	kimberly50@example.com	we	{trip,ok,prove,born}	someone	too	corporateemployee	\N
571	ilong@example.org	not	{suggest}	into	east	corporateemployee	\N
572	shannonwilliam@example.net	hundred	{fear}	deep	material	corporateemployee	\N
573	charlenebutler@example.net	pretty	{security,church,into,rise}	tell	main	corporateemployee	\N
574	david96@example.org	doctor	{again,animal,over}	subject	attack	corporateemployee	\N
575	boylemarie@example.org	team	{successful,discover,control,real}	indicate	manage	corporateemployee	\N
576	murphynicole@example.com	window	{however,condition}	section	agent	corporateemployee	\N
577	roy09@example.net	industry	{bar,billion,turn}	door	case	corporateemployee	\N
578	michael58@example.org	paper	{still,structure}	stock	over	corporateemployee	\N
579	guzmanhaley@example.com	matter	{among,from}	food	pick	corporateemployee	\N
580	rbaker@example.net	real	{sea,must,recently,season}	Mrs	check	corporateemployee	\N
761	laura64@example.net	culture	{site,movie}	necessary	\N	supportagent	\N
581	ishelton@example.org	particularly	{film,college,pay}	out	career	corporateemployee	\N
582	tkaiser@example.org	tend	{international,behavior}	across	food	corporateemployee	\N
583	charles24@example.com	front	{decade}	particularly	move	corporateemployee	\N
584	ashleycastillo@example.com	citizen	{consumer,quite,while}	raise	again	corporateemployee	\N
585	nmedina@example.org	spring	{worry,figure,behind,place}	science	worker	corporateemployee	\N
586	morgandonna@example.com	prove	{big,everyone}	important	upon	corporateemployee	\N
587	davidsilva@example.net	PM	{friend,man,day,easy}	again	we	corporateemployee	\N
588	froberts@example.org	best	{able,bed}	argue	treat	corporateemployee	\N
589	wilsonlynn@example.net	impact	{join,production,push}	wear	land	corporateemployee	\N
590	davisroger@example.org	least	{tough}	consumer	scientist	corporateemployee	\N
591	jonessean@example.org	near	{race,very}	human	provide	corporateemployee	\N
592	cervantesjonathan@example.org	research	{own,behavior}	none	animal	corporateemployee	\N
593	hilljames@example.org	national	{animal,foreign,our,look}	itself	range	corporateemployee	\N
594	wellsmadison@example.org	plan	{near,public}	condition	light	corporateemployee	\N
595	katherinemckinney@example.org	indeed	{local}	most	cause	corporateemployee	\N
596	dawn38@example.net	to	{low,hard,never,lot}	soldier	movie	corporateemployee	\N
597	amber18@example.com	sense	{people,wall,listen}	knowledge	thing	corporateemployee	\N
598	rebecca80@example.com	despite	{human,try,practice,million}	true	back	corporateemployee	\N
599	cyu@example.com	pay	{majority,partner,operation,bar}	happy	from	corporateemployee	\N
600	grimesholly@example.org	issue	{dinner,ready}	field	address	corporateemployee	\N
601	casey40@example.com	care	{between,four}	range	two	engineer	\N
602	suarezcourtney@example.com	line	{design}	four	hand	engineer	\N
603	marychristian@example.org	yard	{paper}	top	bill	engineer	\N
604	fryan@example.org	them	{floor,great}	tell	I	engineer	\N
605	brett66@example.net	or	{record,north,on,Democrat}	charge	purpose	engineer	\N
606	jack30@example.net	very	{home,type}	feeling	cultural	engineer	\N
607	cgonzalez@example.com	down	{wonder,consider,billion,specific}	course	could	engineer	\N
608	lwhite@example.org	appear	{forward,order,teacher}	according	follow	engineer	\N
609	pponce@example.net	argue	{add,possible,food,try}	citizen	just	engineer	\N
610	stevensadam@example.net	top	{study}	society	during	engineer	\N
611	daniel86@example.com	look	{pretty}	hard	act	engineer	\N
612	mendozadavid@example.com	either	{result}	Congress	table	engineer	\N
613	zsalas@example.org	produce	{and,feeling,type}	hand	hair	engineer	\N
614	pnelson@example.net	ask	{collection,whom}	only	despite	engineer	\N
615	craig01@example.com	help	{stop,key}	book	so	engineer	\N
616	psellers@example.net	focus	{morning,star,move,smile}	pick	small	engineer	\N
617	scottmedina@example.org	however	{none,local,appear}	development	bit	engineer	\N
618	woodalexandra@example.org	town	{space,wait,sort,four}	game	day	engineer	\N
619	bruce74@example.com	culture	{should,break,exist}	behind	employee	engineer	\N
620	crystalglover@example.org	back	{against,capital}	consider	help	engineer	\N
621	lrobertson@example.com	now	{try,material,total,mission}	kitchen	from	engineer	\N
622	mreyes@example.org	under	{foot,activity,school,democratic}	worry	trouble	engineer	\N
623	ebennett@example.net	during	{whose}	impact	similar	engineer	\N
624	aviladwayne@example.org	clear	{already}	street	article	engineer	\N
625	toddbradley@example.org	during	{subject,store}	old	much	engineer	\N
626	joel20@example.net	first	{support,second,hospital}	consider	last	engineer	\N
627	sheila14@example.net	involve	{later,score,season,play}	bill	offer	engineer	\N
628	wgutierrez@example.org	continue	{word,medical,way}	field	research	engineer	\N
629	ecolon@example.net	exactly	{court,drive,window,suggest}	meeting	strategy	engineer	\N
630	kimberly82@example.org	finally	{fact,section,white}	its	brother	engineer	\N
631	kgreen@example.com	both	{appear,attention,including,stage}	attorney	call	engineer	\N
632	andrew75@example.org	space	{art,charge,score,wall}	save	fly	engineer	\N
633	carolynclark@example.org	artist	{kind,remain}	indeed	him	engineer	\N
634	amanda34@example.net	hospital	{its,add}	where	particularly	engineer	\N
635	mariarodriguez@example.net	performance	{away,law,else,ability}	identify	such	engineer	\N
636	susan72@example.com	partner	{statement,entire,reveal}	night	daughter	engineer	\N
637	lewing@example.net	we	{value,foreign,rise}	media	charge	engineer	\N
638	aaronmoore@example.com	environmental	{your,food,without}	mother	leave	engineer	\N
639	chall@example.com	somebody	{whatever,floor,prove,learn}	night	believe	engineer	\N
640	jose46@example.com	involve	{establish}	according	late	engineer	\N
641	waltergibson@example.com	future	{possible,evidence,medical}	these	actually	engineer	\N
642	robertslisa@example.org	billion	{life}	firm	less	engineer	\N
643	wallerrodney@example.net	tax	{when,approach,job}	produce	course	engineer	\N
644	zrobinson@example.org	positive	{happen}	walk	life	engineer	\N
645	fsanchez@example.net	finally	{number,onto}	rise	character	engineer	\N
646	shaun19@example.com	expect	{happen,goal,radio}	full	plant	engineer	\N
647	amandayates@example.com	condition	{data,sing}	management	together	engineer	\N
648	crawfordkeith@example.net	class	{age,soon,everybody}	upon	fight	engineer	\N
649	karenjensen@example.com	court	{onto,third,thing,deep}	program	study	engineer	\N
650	weavercatherine@example.net	home	{board,step}	long	behind	engineer	\N
651	donaldbaker@example.com	section	{area,author,according,television}	hair	bit	engineer	\N
652	bakermonica@example.com	second	{important,difference,believe}	year	music	engineer	\N
653	michael39@example.net	pull	{spend,look,PM}	door	miss	engineer	\N
654	joybowen@example.com	case	{collection}	matter	friend	engineer	\N
655	tcarpenter@example.com	watch	{since,scene}	natural	huge	engineer	\N
656	john97@example.org	partner	{seek,buy}	pick	it	engineer	\N
657	kenneth38@example.net	among	{rather,south,smile}	fact	floor	engineer	\N
658	shari20@example.com	tax	{development,particularly,effect,too}	focus	newspaper	engineer	\N
659	stacy46@example.net	certain	{everything,our,almost,allow}	agree	bar	engineer	\N
660	meganhood@example.com	ground	{technology,fear}	spring	piece	engineer	\N
661	jacksonlinda@example.org	computer	{example}	lose	piece	engineer	\N
662	teresa98@example.org	million	{might,energy,shake}	church	anyone	engineer	\N
663	scottleonard@example.com	lawyer	{relate}	draw	attack	engineer	\N
664	garcianicholas@example.com	staff	{suffer,put,worker,week}	remain	seek	engineer	\N
665	zimmermanjessica@example.org	enough	{eight,son}	especially	itself	engineer	\N
666	krystalestes@example.net	space	{behavior,job,boy,bank}	rise	degree	engineer	\N
667	jacquelinehart@example.com	increase	{forward,and,compare}	let	source	engineer	\N
668	ibryan@example.org	PM	{sure,nation,my,beautiful}	vote	real	engineer	\N
669	martinezronald@example.org	wife	{onto,per,political}	result	east	engineer	\N
670	fallen@example.net	quickly	{nature}	morning	woman	engineer	\N
671	lopezlisa@example.org	event	{dog,clearly}	interesting	end	engineer	\N
672	danielle96@example.org	save	{common,police,not,today}	woman	this	engineer	\N
673	alexiswalter@example.com	lawyer	{society}	artist	ever	engineer	\N
674	vschmitt@example.com	hear	{threat}	worker	student	engineer	\N
675	nicolegrant@example.net	without	{pick}	family	look	engineer	\N
676	lisa42@example.net	energy	{strong,catch}	his	figure	engineer	\N
677	robertrobbins@example.net	simply	{miss,owner}	provide	ago	engineer	\N
678	yolson@example.net	similar	{understand}	already	million	engineer	\N
679	nicholasgonzalez@example.org	note	{behavior,industry,floor,attorney}	author	use	engineer	\N
680	allison65@example.net	effect	{huge,space,enter}	thus	dark	engineer	\N
681	andreareeves@example.org	mouth	{pay,model}	item	remember	engineer	\N
682	laura49@example.org	member	{yard,quite}	career	off	engineer	\N
683	rpugh@example.com	lead	{base}	fill	look	engineer	\N
684	kevinjohnson@example.net	dinner	{whether}	authority	sometimes	engineer	\N
685	bergerrobert@example.net	realize	{city,share,check}	wall	inside	engineer	\N
686	briannaclark@example.com	build	{send,doctor,trial}	whole	third	engineer	\N
687	jenniferbryan@example.net	last	{care}	order	agreement	engineer	\N
688	tiffanyhughes@example.net	economy	{police,against}	amount	night	engineer	\N
689	williamscindy@example.org	generation	{race,discover,quality}	offer	so	engineer	\N
690	dwright@example.com	baby	{involve,open,detail,from}	scientist	perform	engineer	\N
691	kaufmangina@example.org	reduce	{response,worry,do,we}	attention	lawyer	engineer	\N
692	smithzachary@example.com	hold	{yeah,suffer,them}	best	major	engineer	\N
693	iscott@example.org	site	{management}	word	near	engineer	\N
694	lcollins@example.net	soon	{operation,pay,set}	light	authority	engineer	\N
695	henrysusan@example.org	agent	{beyond}	should	politics	engineer	\N
696	kyang@example.net	view	{guy,for,time,despite}	go	process	engineer	\N
697	clarkbrenda@example.com	teacher	{degree,after}	must	either	engineer	\N
698	danielschwartz@example.org	writer	{yes,like}	pattern	senior	engineer	\N
700	rodriguezheather@example.net	nature	{but,him,practice}	fire	citizen	engineer	\N
701	barajasmary@example.com	since	{account,that,staff,national}	whole	\N	supportagent	\N
702	greenemelanie@example.org	save	{war,through,skill}	order	\N	supportagent	\N
703	griffincody@example.org	military	{memory,bill,effect}	necessary	\N	supportagent	\N
704	cfleming@example.org	nothing	{customer}	spring	\N	supportagent	\N
705	richardfigueroa@example.org	rise	{imagine,strategy,bank}	that	\N	supportagent	\N
706	rickey35@example.org	voice	{future,get}	involve	\N	supportagent	\N
707	elizabethford@example.com	region	{green,loss}	think	\N	supportagent	\N
708	donnahayes@example.com	piece	{same,term}	federal	\N	supportagent	\N
709	richardsjohnny@example.com	that	{site,dream,part,certain}	crime	\N	supportagent	\N
710	julie65@example.com	share	{although,which,industry}	administration	\N	supportagent	\N
711	michele83@example.net	free	{clearly,play,natural,something}	public	\N	supportagent	\N
712	carolmason@example.org	treatment	{light,bag,real,weight}	able	\N	supportagent	\N
713	brittanyrobinson@example.com	end	{soldier,kid}	letter	\N	supportagent	\N
714	angela97@example.com	increase	{never,try}	short	\N	supportagent	\N
715	mialong@example.com	red	{majority,particular,local,prevent}	heart	\N	supportagent	\N
716	madisonalvarado@example.org	prove	{resource,certain}	official	\N	supportagent	\N
717	wsantos@example.org	its	{hot,another,in}	conference	\N	supportagent	\N
718	garrettmatthew@example.com	peace	{debate,both}	step	\N	supportagent	\N
719	ambermckee@example.com	lawyer	{short,morning}	be	\N	supportagent	\N
720	jon84@example.net	professional	{education,effort}	add	\N	supportagent	\N
721	martin26@example.org	trade	{audience,draw,prove}	wife	\N	supportagent	\N
722	cruiz@example.com	set	{example}	account	\N	supportagent	\N
723	parkerjessica@example.org	year	{American}	lay	\N	supportagent	\N
724	michelleunderwood@example.net	population	{truth,various}	yard	\N	supportagent	\N
725	daniellerodgers@example.com	production	{another}	effect	\N	supportagent	\N
726	kjones@example.net	memory	{former,Democrat,yard}	color	\N	supportagent	\N
727	anthony06@example.org	buy	{training}	point	\N	supportagent	\N
728	jason11@example.com	analysis	{already,such}	bed	\N	supportagent	\N
729	michaelbradshaw@example.org	we	{court,half,me,oil}	health	\N	supportagent	\N
730	garyreyes@example.org	wind	{such,early,have,be}	husband	\N	supportagent	\N
731	oharris@example.com	his	{paper}	eat	\N	supportagent	\N
732	tracysmith@example.net	and	{many}	listen	\N	supportagent	\N
733	katie98@example.org	east	{kind}	affect	\N	supportagent	\N
734	robincurtis@example.org	candidate	{environmental,suffer}	nation	\N	supportagent	\N
735	sherry80@example.com	weight	{administration,prove,item,doctor}	building	\N	supportagent	\N
736	bmunoz@example.net	mother	{quite,very,husband,reduce}	notice	\N	supportagent	\N
737	twebb@example.org	drug	{feel,management,respond}	both	\N	supportagent	\N
738	zaguilar@example.com	sometimes	{mention,second}	lawyer	\N	supportagent	\N
739	davisjeffrey@example.com	across	{nearly,show}	meet	\N	supportagent	\N
740	jacquelinemurillo@example.org	next	{rate,finally,law,know}	experience	\N	supportagent	\N
741	barbarasmith@example.com	coach	{success,task}	whether	\N	supportagent	\N
742	michaelbrock@example.org	thus	{anyone,newspaper}	note	\N	supportagent	\N
743	camposkimberly@example.net	continue	{learn,effort,election}	become	\N	supportagent	\N
744	lindahodge@example.com	good	{likely,particular,new,staff}	speech	\N	supportagent	\N
745	mmartin@example.org	once	{radio,red,fall,hot}	long	\N	supportagent	\N
746	villanuevacorey@example.net	few	{attention,ok,hand}	social	\N	supportagent	\N
747	martin55@example.org	push	{why,fill}	successful	\N	supportagent	\N
748	yvonne04@example.org	investment	{between,pick}	almost	\N	supportagent	\N
749	jmcdaniel@example.com	parent	{traditional}	on	\N	supportagent	\N
750	nhansen@example.com	behind	{skin,together}	night	\N	supportagent	\N
751	faithgonzales@example.com	through	{camera,spend}	alone	\N	supportagent	\N
752	edwardsjennifer@example.com	front	{continue}	assume	\N	supportagent	\N
753	tiffanyvasquez@example.org	degree	{behavior,doctor,my}	kid	\N	supportagent	\N
754	hoffmanjulie@example.com	site	{statement,note}	practice	\N	supportagent	\N
755	xowens@example.net	training	{discover}	true	\N	supportagent	\N
756	dana26@example.org	safe	{leave,president,it}	strong	\N	supportagent	\N
757	toddjohnson@example.org	source	{future,scientist,weight,black}	require	\N	supportagent	\N
758	mclark@example.net	four	{include,develop}	trip	\N	supportagent	\N
759	turnerpatricia@example.org	true	{century,admit}	work	\N	supportagent	\N
760	ggray@example.org	sport	{consider,consumer,very}	any	\N	supportagent	\N
762	robertbrady@example.com	gas	{exist,history}	buy	\N	supportagent	\N
763	cisnerosdouglas@example.net	its	{society,smile}	camera	\N	supportagent	\N
764	tamaratorres@example.org	fly	{lawyer,factor,hospital,record}	conference	\N	supportagent	\N
765	joseph96@example.com	education	{wonder,spend}	security	\N	supportagent	\N
766	laurentaylor@example.com	we	{suddenly,these}	least	\N	supportagent	\N
767	kylie34@example.com	can	{want,card}	believe	\N	supportagent	\N
768	tlucas@example.net	statement	{resource}	one	\N	supportagent	\N
769	orozcorichard@example.org	staff	{plant,fear,argue}	more	\N	supportagent	\N
770	lisa53@example.net	go	{respond,top}	nature	\N	supportagent	\N
771	hannahgarcia@example.com	new	{anything,develop,official,act}	be	\N	supportagent	\N
772	jbrown@example.net	likely	{sure,phone,prevent,deal}	usually	\N	supportagent	\N
773	john85@example.org	bank	{interesting,style,should}	attorney	\N	supportagent	\N
774	derekbarnes@example.org	soldier	{agree,specific}	style	\N	supportagent	\N
775	misty98@example.org	thousand	{draw}	activity	\N	supportagent	\N
776	mark71@example.org	billion	{watch}	happy	\N	supportagent	\N
777	qali@example.org	rich	{weight}	other	\N	supportagent	\N
778	longelizabeth@example.com	anyone	{teach}	happy	\N	supportagent	\N
779	stanleymendoza@example.com	article	{economy,happen,trouble}	check	\N	supportagent	\N
780	jonathanmatthews@example.com	system	{administration,leader,group,red}	now	\N	supportagent	\N
781	waltersbrittany@example.org	out	{risk}	economic	\N	supportagent	\N
782	copelandjerry@example.com	speak	{voice}	fact	\N	supportagent	\N
783	teresawheeler@example.org	dinner	{many,boy,follow}	even	\N	supportagent	\N
784	sarahcastillo@example.net	then	{take,put,central}	feeling	\N	supportagent	\N
785	lisathompson@example.org	indicate	{offer,modern,they}	kid	\N	supportagent	\N
786	becky98@example.com	third	{could,less}	area	\N	supportagent	\N
787	mallen@example.org	far	{church,great}	pretty	\N	supportagent	\N
788	jon62@example.org	easy	{three,last,leave}	PM	\N	supportagent	\N
789	dorseyjill@example.org	use	{drive,lawyer}	democratic	\N	supportagent	\N
790	james98@example.org	dog	{long,course}	risk	\N	supportagent	\N
791	paul97@example.com	day	{car,Mr,human}	wind	\N	supportagent	\N
792	ashley25@example.org	provide	{future,century,on}	account	\N	supportagent	\N
793	ashleybrown@example.net	up	{girl,enter,wind}	identify	\N	supportagent	\N
794	brian74@example.org	control	{attorney,find,let}	cell	\N	supportagent	\N
795	brianbarber@example.net	heart	{upon}	design	\N	supportagent	\N
796	bhanna@example.net	compare	{near}	share	\N	supportagent	\N
797	jenniferbruce@example.com	first	{book,natural}	sense	\N	supportagent	\N
798	harrispatrick@example.net	south	{sport,value}	someone	\N	supportagent	\N
799	jeff54@example.org	teach	{old,particularly,soldier,skin}	social	\N	supportagent	\N
800	phillipsmisty@example.com	entire	{point,decision,reason,goal}	local	\N	supportagent	\N
801	johnochoa@example.org	can	{dinner,hit}	necessary	\N	fulfillmentassociate	six
802	nataliehernandez@example.net	seat	{when}	become	\N	fulfillmentassociate	room
803	jason58@example.net	help	{nearly,agree,consider,mission}	this	\N	fulfillmentassociate	statement
804	dcoleman@example.com	many	{hit,own,idea,whatever}	performance	\N	fulfillmentassociate	star
805	nicole51@example.org	civil	{management,leg,brother,build}	hear	\N	fulfillmentassociate	give
806	stewartsavannah@example.net	wide	{improve,challenge,sport}	political	\N	fulfillmentassociate	join
807	yhayes@example.net	their	{experience,soon,generation}	ok	\N	fulfillmentassociate	standard
808	smithkeith@example.com	myself	{else,each,part,poor}	where	\N	fulfillmentassociate	manager
809	hcollins@example.com	beyond	{protect}	if	\N	fulfillmentassociate	arrive
810	howelleric@example.net	relate	{play,nation,many}	baby	\N	fulfillmentassociate	less
811	kelsey33@example.net	bank	{price}	relationship	\N	fulfillmentassociate	certainly
812	gpark@example.net	senior	{already}	election	\N	fulfillmentassociate	customer
813	wagnerkaren@example.org	ten	{movie,certainly,vote,well}	politics	\N	fulfillmentassociate	experience
814	noahpatel@example.net	military	{artist,arm,poor,pick}	first	\N	fulfillmentassociate	civil
815	pbarnes@example.net	receive	{national,land,church}	different	\N	fulfillmentassociate	evidence
816	theresa37@example.com	cover	{ok,value,professor,share}	than	\N	fulfillmentassociate	thing
817	kendrafrancis@example.net	ten	{special,often}	director	\N	fulfillmentassociate	model
818	johnsonrebecca@example.com	within	{item,blood,station}	reveal	\N	fulfillmentassociate	about
819	jamesperez@example.net	measure	{security,whom}	accept	\N	fulfillmentassociate	film
820	shepparddavid@example.net	Mrs	{decide}	what	\N	fulfillmentassociate	perform
821	shawn73@example.com	glass	{green,face,store}	coach	\N	fulfillmentassociate	team
822	jayperkins@example.com	improve	{relationship}	beat	\N	fulfillmentassociate	by
823	mccarthydavid@example.net	firm	{couple,general,despite,which}	data	\N	fulfillmentassociate	color
824	gpadilla@example.net	stand	{attention}	probably	\N	fulfillmentassociate	public
825	bishopsandra@example.net	project	{worker,hour,chance,practice}	foot	\N	fulfillmentassociate	risk
826	richard04@example.net	fund	{large}	not	\N	fulfillmentassociate	lot
827	david02@example.com	yes	{happen,story,moment,several}	sure	\N	fulfillmentassociate	stage
828	thompsontim@example.com	at	{move,boy}	represent	\N	fulfillmentassociate	consider
829	julie78@example.org	executive	{tonight,into,career,easy}	bag	\N	fulfillmentassociate	present
830	tlynch@example.org	box	{begin,character,agent}	sell	\N	fulfillmentassociate	over
831	lauralopez@example.com	offer	{almost}	city	\N	fulfillmentassociate	always
832	michaelhernandez@example.net	box	{hit,still}	unit	\N	fulfillmentassociate	oil
833	sethmatthews@example.net	wide	{until,wind}	consumer	\N	fulfillmentassociate	same
834	melissa00@example.org	billion	{quality,theory}	report	\N	fulfillmentassociate	around
835	davidsoncharles@example.com	teacher	{perform,particular,work}	specific	\N	fulfillmentassociate	summer
836	wgreen@example.org	since	{rule,military}	degree	\N	fulfillmentassociate	practice
837	vphillips@example.com	coach	{bit,true,different}	spend	\N	fulfillmentassociate	enough
838	umiller@example.org	now	{let,out,nearly}	perform	\N	fulfillmentassociate	lot
839	whitejoshua@example.org	author	{protect}	happen	\N	fulfillmentassociate	the
840	benjamin43@example.org	skill	{sometimes,throw,deep,part}	practice	\N	fulfillmentassociate	region
841	campbellbenjamin@example.org	him	{against,world,laugh}	far	\N	fulfillmentassociate	mother
842	stewartdaniel@example.org	evening	{short}	six	\N	fulfillmentassociate	animal
843	paulpadilla@example.org	national	{stay,religious,often,movement}	imagine	\N	fulfillmentassociate	meeting
844	xhughes@example.net	party	{various}	son	\N	fulfillmentassociate	half
845	robertwarren@example.net	body	{adult,our,style,notice}	to	\N	fulfillmentassociate	light
846	duartewanda@example.com	factor	{strong}	benefit	\N	fulfillmentassociate	see
847	owenjennifer@example.net	Mrs	{learn}	sure	\N	fulfillmentassociate	wish
848	ulewis@example.org	term	{gas,book}	reduce	\N	fulfillmentassociate	short
849	james97@example.org	ball	{bag,manage}	report	\N	fulfillmentassociate	thousand
850	ilin@example.com	cause	{democratic}	myself	\N	fulfillmentassociate	partner
851	rebecca50@example.net	last	{leg,within,wind,run}	listen	\N	fulfillmentassociate	indicate
852	craig47@example.org	include	{positive,political,few,say}	election	\N	fulfillmentassociate	TV
853	ssosa@example.org	imagine	{number,for}	much	\N	fulfillmentassociate	look
854	daniel60@example.org	difficult	{staff}	service	\N	fulfillmentassociate	consider
855	dominiquebarton@example.com	second	{by,southern}	of	\N	fulfillmentassociate	can
856	martinandrew@example.com	offer	{soon,season}	interest	\N	fulfillmentassociate	join
857	ibarramegan@example.net	future	{interview,trial,memory,assume}	natural	\N	fulfillmentassociate	learn
858	jasoncoleman@example.net	democratic	{leg,seat,challenge}	might	\N	fulfillmentassociate	mouth
859	kathy11@example.org	garden	{sort,rise,life}	the	\N	fulfillmentassociate	walk
860	danielle55@example.net	artist	{other}	cut	\N	fulfillmentassociate	senior
861	matthewwhite@example.net	wear	{movement,parent}	something	\N	fulfillmentassociate	determine
862	cpeterson@example.net	probably	{hope,alone}	manage	\N	fulfillmentassociate	information
863	patrick29@example.org	try	{bill}	management	\N	fulfillmentassociate	customer
864	lisagonzalez@example.net	ready	{during,technology}	out	\N	fulfillmentassociate	trade
865	kelleyjoy@example.org	year	{kind,once,behind}	share	\N	fulfillmentassociate	training
866	robert67@example.net	industry	{wait,behind,star}	realize	\N	fulfillmentassociate	take
867	ugrant@example.com	always	{factor,stage,course}	threat	\N	fulfillmentassociate	according
868	keitholson@example.com	interview	{thought,least,likely,human}	name	\N	fulfillmentassociate	ago
869	gregorymalone@example.com	hot	{class,expert,begin}	tough	\N	fulfillmentassociate	front
870	ginalee@example.org	reach	{interview,agreement,cause,financial}	speech	\N	fulfillmentassociate	push
871	nelsonjessica@example.org	its	{either,reduce,if}	debate	\N	fulfillmentassociate	thousand
872	alexis46@example.net	as	{hour,mention}	agent	\N	fulfillmentassociate	goal
873	wmccormick@example.com	attention	{economy}	phone	\N	fulfillmentassociate	outside
874	robert06@example.org	teach	{likely,above,beautiful,my}	win	\N	fulfillmentassociate	from
875	elizabeth77@example.org	meet	{close,them}	vote	\N	fulfillmentassociate	brother
876	elizabeth56@example.com	rise	{hotel,final,how}	open	\N	fulfillmentassociate	remember
877	harrynguyen@example.com	agree	{film}	allow	\N	fulfillmentassociate	she
878	hglover@example.com	usually	{she,recently,need}	shoulder	\N	fulfillmentassociate	important
879	obishop@example.net	especially	{perform,push}	beat	\N	fulfillmentassociate	data
880	scarroll@example.net	trial	{water,instead,eye}	interest	\N	fulfillmentassociate	traditional
881	logan24@example.net	thus	{lose,order,so}	ago	\N	fulfillmentassociate	bad
882	ambersexton@example.org	cover	{parent,third,test}	within	\N	fulfillmentassociate	four
883	kendravillegas@example.org	pattern	{day,different}	day	\N	fulfillmentassociate	he
884	daughertymichael@example.com	public	{ask,along,none}	whole	\N	fulfillmentassociate	yard
885	knightkevin@example.org	send	{movement,understand,law}	store	\N	fulfillmentassociate	avoid
886	dfuller@example.net	radio	{face,easy,pattern}	buy	\N	fulfillmentassociate	month
887	ybarnett@example.net	foot	{this,type,nice,board}	draw	\N	fulfillmentassociate	season
888	sdavis@example.org	name	{modern}	industry	\N	fulfillmentassociate	nearly
889	nicholas67@example.org	near	{agreement,end,fund,prepare}	of	\N	fulfillmentassociate	trial
890	greenderrick@example.net	apply	{bring,magazine}	thousand	\N	fulfillmentassociate	skin
891	daniellehenderson@example.net	could	{son,book,great,section}	foreign	\N	fulfillmentassociate	daughter
892	williamfrazier@example.org	prevent	{strong,power}	alone	\N	fulfillmentassociate	wind
893	wrightlaura@example.com	true	{start,student}	help	\N	fulfillmentassociate	expert
894	kgomez@example.org	successful	{local,moment,agreement}	continue	\N	fulfillmentassociate	bar
895	zmoore@example.com	without	{child,prove,finish,food}	whether	\N	fulfillmentassociate	spend
896	weberbradley@example.org	sister	{eat,quality,task,fill}	concern	\N	fulfillmentassociate	man
897	nathan55@example.org	nature	{produce}	remain	\N	fulfillmentassociate	language
898	patrickdawson@example.org	music	{work}	above	\N	fulfillmentassociate	series
899	garnerrebecca@example.com	why	{exactly,purpose,prepare}	goal	\N	fulfillmentassociate	easy
900	hudsonjulie@example.com	number	{charge,across}	cut	\N	fulfillmentassociate	data
\.


--
-- Data for Name: relation_18; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_18 (engineer_id, level) FROM stdin;
601	across
602	or
603	million
604	boy
605	get
606	health
607	give
608	need
609	start
610	final
611	various
612	language
613	place
614	similar
615	consumer
616	them
617	southern
618	different
619	send
620	spend
621	community
622	prepare
623	around
624	where
625	possible
626	half
627	week
628	thing
629	clearly
630	second
631	street
632	animal
633	safe
634	whether
635	most
636	assume
637	quality
638	treatment
639	out
640	simple
641	finally
642	good
643	never
644	forget
645	relate
646	mouth
647	ahead
648	forward
649	pay
650	opportunity
651	age
652	according
653	talk
654	plant
655	certainly
656	it
657	although
658	tough
659	blue
660	popular
661	avoid
662	human
663	good
664	quickly
665	region
666	police
667	clearly
668	understand
669	anything
670	know
671	night
672	letter
673	always
674	stuff
675	when
676	woman
677	its
678	nature
679	mother
680	local
681	health
682	story
683	never
684	show
685	economic
686	action
687	structure
688	themselves
689	them
690	base
691	green
692	white
693	they
694	word
695	practice
696	school
697	plant
698	reality
699	would
700	remain
\.


--
-- Data for Name: relation_19; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_19 (supportagent_id, queue) FROM stdin;
701	get
702	particularly
703	land
704	relationship
705	rate
706	his
707	evidence
708	any
709	modern
710	idea
711	can
712	rock
713	reveal
714	rather
715	song
716	suffer
717	between
718	himself
719	worker
720	understand
721	mouth
722	former
723	church
724	later
725	eight
726	sell
727	hair
728	message
729	be
730	wind
731	reveal
732	talk
733	responsibility
734	company
735	free
736	summer
737	hard
738	artist
739	member
740	them
741	task
742	let
743	law
744	require
745	if
746	attack
747	economy
748	vote
749	study
750	final
751	discover
752	reason
753	government
754	candidate
755	someone
756	sure
757	mention
758	quickly
759	individual
760	important
761	series
762	consumer
763	treatment
764	his
765	buy
766	describe
767	item
768	challenge
769	study
770	figure
771	case
772	product
773	address
774	production
775	physical
776	scene
777	concern
778	face
779	result
780	medical
781	note
782	thing
783	cold
784	product
785	others
786	fill
787	with
788	ok
789	chair
790	appear
791	adult
792	use
793	different
794	sometimes
795	study
796	nice
797	appear
798	record
799	painting
800	policy
\.


--
-- Data for Name: relation_2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_2 (digitalproduct_id, delivery_type) FROM stdin;
201	enjoy
202	trip
203	must
204	outside
205	maybe
206	particularly
207	quickly
208	exactly
209	beyond
210	money
211	performance
212	age
213	firm
214	knowledge
215	someone
216	table
217	until
218	yard
219	career
220	education
221	sound
222	very
223	analysis
224	activity
225	all
226	wall
227	data
228	possible
229	type
230	health
231	next
232	agreement
233	science
234	rate
235	commercial
236	place
237	firm
238	executive
239	visit
240	rule
241	factor
242	suddenly
243	occur
244	enjoy
245	do
246	record
247	high
248	environmental
249	small
250	foot
251	unit
252	purpose
253	believe
254	effect
255	lot
256	PM
257	on
258	wide
259	individual
260	option
261	do
262	in
263	speech
264	these
265	offer
266	big
267	officer
268	ten
269	little
270	statement
271	past
272	through
273	now
274	responsibility
275	carry
276	especially
277	relationship
278	feel
279	art
280	they
281	toward
282	television
283	general
284	at
285	exist
286	vote
287	become
288	clear
289	difference
290	someone
291	movement
292	movement
293	able
294	here
295	all
296	section
297	scientist
298	although
299	real
300	friend
2001	recently
2002	edge
2003	financial
2004	arrive
2005	type
2006	card
2007	under
2008	TV
2009	quality
2010	black
2011	administration
2012	easy
2013	model
2014	camera
2015	result
2016	take
2017	tree
2018	beat
2019	somebody
2020	society
2021	ready
2022	ago
2023	class
2024	hope
2025	suddenly
2026	fact
2027	administration
2028	administration
2029	everybody
2030	management
2031	tree
2032	name
2033	year
2034	fall
2035	effort
2036	couple
2037	kitchen
2038	foreign
2039	although
2040	detail
2041	whether
2042	protect
2043	big
2044	decade
2045	too
2046	character
2047	even
2048	those
2049	quite
2050	half
2051	determine
2052	stay
2053	light
2054	pay
2055	pick
2056	thus
2057	whatever
2058	Republican
2059	conference
2060	camera
2061	officer
2062	water
2063	draw
2064	no
2065	girl
2066	strong
2067	material
2068	scene
2069	need
2070	program
2071	true
2072	nation
2073	pattern
2074	community
2075	majority
2076	special
2077	baby
2078	health
2079	beautiful
2080	because
2081	size
2082	in
2083	painting
2084	wait
2085	type
2086	war
2087	establish
2088	work
2089	natural
2090	road
2091	everything
2092	write
2093	camera
2094	size
2095	decide
2096	tree
2097	section
2098	several
2099	body
2100	cell
\.


--
-- Data for Name: relation_20; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_20 (categorymanager_id, email, password_hash, mv_user, employee_no, department) FROM stdin;
901	amanda91@example.org	lay	{during,fight,challenge,first}	themselves	project
902	jefferyfuller@example.com	offer	{figure}	data	house
903	garnerpamela@example.org	help	{number,risk,street}	in	parent
904	hebertmelissa@example.net	realize	{sing,catch}	force	gun
905	pfox@example.org	development	{clear,speak,strong}	carry	morning
906	perezscott@example.net	professional	{east,enough,issue}	nature	threat
907	george00@example.org	others	{yeah,specific,statement,purpose}	party	speak
908	wilsonmichael@example.net	increase	{subject,hope,require,dream}	century	though
909	smcmillan@example.net	yard	{book,decide}	recognize	car
910	pbuchanan@example.com	series	{catch,interview,detail}	whether	know
911	tina15@example.com	worry	{low,another}	music	plan
912	watsoncynthia@example.net	assume	{born,too}	particularly	admit
913	josephowens@example.org	would	{news,beat,majority,human}	walk	effect
914	andersonalexander@example.org	popular	{we,material,though}	standard	mention
915	dmcdaniel@example.com	lose	{vote}	could	catch
916	epoole@example.com	require	{himself,trial,decision}	feel	benefit
917	hclark@example.com	reality	{project,too,whether,call}	growth	collection
918	bellmegan@example.com	course	{ground,minute,force}	feeling	house
919	meredith79@example.net	sign	{herself}	trade	speech
920	stricklandderek@example.org	half	{hand,because}	find	today
921	pdunlap@example.org	interesting	{blue,clearly,among,fight}	capital	mother
922	brookeoneill@example.com	agree	{into,window,message,no}	many	cell
923	robertbeltran@example.net	throughout	{nation}	administration	step
924	beth27@example.org	though	{it}	vote	investment
925	fosterbrandon@example.net	dark	{deal,character,likely,rest}	other	reflect
926	jenningscasey@example.org	could	{someone,raise,look,easy}	international	data
927	sandra74@example.org	already	{compare}	remain	staff
928	todd03@example.net	the	{fly,reflect}	still	range
929	rachel79@example.com	generation	{agreement,know,fine,remember}	discuss	consider
930	dawnmartin@example.com	about	{apply,shake,social}	kid	trial
931	jeanette30@example.com	performance	{whether,value,require,she}	couple	add
932	maytraci@example.org	kind	{control,white,particularly,type}	group	today
933	arroyojoshua@example.net	prove	{over,accept,entire,would}	ten	many
934	sarah18@example.net	crime	{group,better,book,change}	through	information
935	adkinsmelissa@example.org	read	{nearly}	their	college
936	eandersen@example.org	sister	{face,from,ready,sense}	team	example
937	jessedrake@example.org	success	{during,think}	class	side
938	karen10@example.org	however	{develop,around}	explain	trip
939	gsmall@example.org	society	{near,add}	like	feel
940	josephpatel@example.org	people	{note}	type	after
941	ndrake@example.net	security	{one,current,consumer,must}	state	again
942	jeremiah23@example.com	nice	{test,so,person}	scene	beyond
943	susan07@example.com	save	{especially,yourself}	understand	represent
944	joshua12@example.org	significant	{fast,expert}	week	together
945	angelaweeks@example.com	data	{effect,system,worker,family}	pressure	available
946	avilaconnie@example.org	set	{act,wish,rich}	little	visit
947	garciamark@example.net	stuff	{court,glass,serve}	itself	page
948	savannah72@example.com	assume	{way,interesting}	according	shake
949	amandarobertson@example.net	wife	{hot,religious}	quality	bill
950	millerashley@example.net	surface	{huge,already}	blood	natural
951	barkerjamie@example.org	at	{issue,safe,everyone}	herself	generation
952	shawnmeza@example.net	someone	{across,thought}	outside	test
953	mendezvanessa@example.com	try	{local}	science	after
954	jimmyadams@example.net	change	{seat}	just	woman
955	shannonhughes@example.net	media	{control,suffer}	good	first
956	sabrinabarton@example.net	decision	{young,explain,long,environmental}	test	moment
957	jeannepeterson@example.net	home	{yard,note,let,three}	let	his
958	wellsjamie@example.com	indeed	{ready}	represent	term
959	amandathompson@example.net	range	{ability,now,teach}	group	student
960	william18@example.net	feeling	{should,really}	media	common
961	lsmith@example.org	claim	{research}	early	even
962	amanda66@example.net	already	{arm,let,anything,serve}	game	candidate
963	meyersusan@example.org	risk	{city}	far	hold
964	sbarnes@example.com	vote	{woman,act,send}	see	today
965	joshua82@example.org	PM	{it,practice}	believe	senior
966	tommy03@example.com	best	{but,catch,step,nature}	above	free
967	esmith@example.org	worry	{middle,care}	experience	daughter
968	justinbrown@example.org	pass	{move,cover,then}	yard	doctor
969	ricegina@example.org	put	{consider,fine}	both	college
970	jason62@example.org	of	{level,between,man}	require	ball
971	palmerroberto@example.net	receive	{production,performance}	he	unit
972	powellmichael@example.org	project	{newspaper,important,never,movement}	bring	go
973	jeffreysanchez@example.net	stock	{appear}	year	main
974	rebeccacarrillo@example.com	coach	{last}	although	information
975	sli@example.com	physical	{Congress}	cause	health
976	theresaray@example.org	third	{technology,institution,difficult}	trouble	report
977	gvasquez@example.org	performance	{cultural,add,activity}	should	sort
978	seanhill@example.com	bed	{tell}	prepare	interesting
979	dana89@example.org	outside	{fine,politics,shoulder}	baby	enough
980	sgibson@example.com	common	{success,tonight}	raise	recognize
981	steven69@example.org	always	{share,color,a,tough}	watch	Republican
982	mariacole@example.com	sign	{stand,reflect}	those	sense
983	katiedavis@example.com	cost	{maybe}	but	gas
984	lgonzalez@example.net	same	{laugh,perform,race,back}	she	commercial
985	gina32@example.org	heavy	{degree}	toward	unit
986	leslie12@example.com	action	{consider,record,majority}	thus	task
987	mark20@example.org	toward	{then,mother,reality,wish}	also	time
988	alexandercharles@example.net	me	{technology,TV,see,painting}	here	join
989	susancallahan@example.com	arm	{month,find,outside,explain}	include	on
990	chadrobinson@example.com	region	{light,six}	window	race
991	isanchez@example.net	when	{cold,TV,first,product}	per	happen
992	wolfkristina@example.org	cultural	{put,second,travel}	benefit	local
993	taylorbarry@example.com	home	{close,rich,structure,especially}	hand	exist
994	davidcarter@example.net	enter	{television}	determine	bill
995	brianna62@example.org	song	{order,guess,note,base}	thus	father
996	heidi28@example.org	history	{good,collection,great,for}	two	wife
997	kvega@example.com	continue	{interest}	degree	from
998	shannonjennifer@example.net	company	{sound}	region	attack
999	uharris@example.org	his	{voice,his,loss}	development	gas
1000	mariaking@example.org	light	{deep,second,admit}	strategy	in
\.


--
-- Data for Name: relation_21; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_21 (product_id, image_id, url, alt_text, sort_order) FROM stdin;
1839	406	rest	decide	489
295	941	need	research	955
344	659	drug	listen	221
978	827	manage	social	212
875	754	second	benefit	843
557	588	low	eight	868
1155	499	owner	hand	925
1808	258	have	without	900
1774	92	group	fast	843
361	796	deep	success	714
978	831	thank	upon	676
1236	993	set	reduce	729
1377	99	benefit	speak	583
1725	985	state	nearly	536
1906	330	chance	after	867
1861	159	wide	real	537
2081	518	everything	TV	234
1782	213	listen	include	568
1547	132	born	walk	928
964	405	show	evidence	997
1655	38	same	these	31
641	417	food	only	971
1404	872	fill	same	44
55	473	trouble	girl	593
2067	652	society	option	517
1713	557	listen	single	409
156	694	economy	discover	769
1554	260	forward	real	499
728	21	child	next	964
1013	324	not	follow	67
1875	56	fall	stop	63
1471	330	manage	day	892
385	143	source	draw	439
1358	892	hard	consider	291
1596	5	save	long	231
372	272	stand	above	415
1732	482	exactly	paper	416
298	798	some	maintain	609
210	793	reason	painting	271
570	478	nation	coach	460
2064	949	arm	significant	541
1945	768	ever	cover	815
393	611	officer	executive	375
1992	175	bill	develop	973
1115	673	civil	imagine	580
2073	566	president	take	363
595	903	add	collection	221
855	383	exist	city	745
665	667	field	still	725
2038	67	indeed	avoid	334
798	94	need	environment	532
1897	235	draw	join	719
772	341	west	conference	133
1397	360	what	certainly	241
1296	252	hotel	energy	522
101	595	bank	our	38
560	267	tree	bad	782
1648	511	thank	but	120
293	688	sister	answer	422
1647	100	pick	main	859
453	936	heart	fine	353
299	377	word	individual	550
1283	206	moment	so	439
1468	174	throw	every	581
1411	72	total	quite	576
2024	289	reason	these	482
1409	207	cell	knowledge	338
1476	848	join	suddenly	792
1412	175	offer	agreement	906
2024	371	charge	note	257
924	227	run	social	762
1054	341	sure	with	681
510	128	get	improve	143
324	135	boy	remain	573
75	52	place	main	392
976	133	some	purpose	348
236	476	top	present	99
565	399	other	create	150
1453	89	reason	and	765
947	88	coach	public	522
1266	304	image	popular	155
1568	998	someone	public	910
812	593	someone	young	454
751	522	child	back	785
551	935	weight	include	970
1192	538	pull	meeting	791
1874	961	three	respond	709
2000	118	national	special	995
1174	18	brother	model	601
601	809	discuss	type	701
828	313	why	race	647
588	427	market	religious	945
1107	837	stand	our	554
1272	737	against	brother	938
1121	840	seat	recognize	48
595	578	on	someone	194
1171	178	action	approach	748
896	652	court	put	369
698	679	pick	teacher	728
1765	114	person	instead	612
\.


--
-- Data for Name: relation_22; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_22 (product_id, variant_id, price_override, barcode, is_active_variant) FROM stdin;
1086	222	1	meeting	52
1357	176	432	tell	585
1359	998	145	about	961
521	524	479	consider	504
630	972	842	magazine	152
42	910	262	finally	476
1858	602	347	music	622
2098	427	242	pressure	850
1429	478	491	apply	507
527	193	341	hand	197
810	869	343	hundred	478
685	783	873	guy	709
1165	268	697	physical	561
1396	459	736	interesting	443
925	796	177	ready	606
663	523	584	idea	839
1782	834	495	would	759
1721	566	261	way	927
1637	542	513	message	386
1203	535	863	both	230
1807	876	316	child	284
1506	591	390	politics	268
1396	614	630	might	86
32	170	968	heavy	843
1427	564	688	least	590
1053	554	896	analysis	613
735	957	453	reason	489
1892	326	77	member	840
386	228	682	although	934
1000	364	352	road	554
97	559	176	task	921
1080	651	899	support	780
1185	601	210	someone	212
630	582	652	plan	425
1171	994	471	security	421
1556	697	863	appear	30
1794	840	184	later	130
1348	917	429	up	568
295	178	522	recognize	122
911	844	598	grow	101
566	635	478	fish	183
743	559	91	now	144
553	418	825	marriage	833
1639	196	354	chair	862
1997	924	652	everyone	790
3	805	475	although	616
23	479	647	light	864
1272	105	345	now	349
461	468	581	third	700
1489	288	404	great	340
479	310	141	political	266
582	151	185	range	192
1467	882	128	discuss	946
1214	414	175	likely	732
1696	355	636	century	542
926	408	931	rather	118
1458	372	234	through	14
818	218	705	contain	776
1463	81	30	age	584
1404	363	396	young	120
968	629	769	from	170
389	215	477	figure	966
1302	543	186	fall	473
1255	496	231	room	401
578	13	127	bank	178
407	240	327	eat	324
838	428	484	among	143
663	280	592	history	366
360	554	352	benefit	508
961	290	737	five	298
592	373	883	glass	507
617	779	616	future	807
1352	238	52	level	573
1706	185	835	minute	497
1706	563	71	political	197
906	190	910	include	582
523	329	136	can	518
1007	763	53	share	201
1089	862	230	maybe	844
1017	894	674	sign	230
1393	256	736	official	760
1675	932	530	well	631
1936	240	863	others	738
1012	388	601	its	681
916	946	678	financial	180
1483	394	516	scene	160
873	583	542	fill	131
1189	680	906	room	171
284	237	481	century	68
1526	920	61	no	509
913	457	148	continue	518
127	856	402	involve	115
627	169	903	language	200
1217	274	640	western	390
1643	44	38	film	493
2025	991	657	third	83
1970	907	136	site	886
1983	218	866	book	636
575	2	275	report	767
593	243	156	herself	735
\.


--
-- Data for Name: relation_23; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_23 (product_id, price_id, starts_at, ends_at, price) FROM stdin;
338	690	board	onto	484
1292	660	meeting	professor	164
56	760	sell	democratic	197
1632	382	throw	out	399
568	826	guy	upon	799
1439	785	look	sit	74
1977	303	ago	well	2
1726	122	enough	hand	995
303	485	born	approach	127
1871	666	seek	him	228
1073	626	mother	work	9
1477	386	use	difference	592
687	163	chance	relationship	651
1030	648	heart	half	260
267	620	fast	strong	978
113	140	behind	Democrat	102
1875	767	government	response	458
1206	288	increase	around	620
1161	172	still	pass	460
2024	200	single	thank	998
117	656	international	end	72
1188	720	argue	gun	904
1960	191	heavy	do	449
411	77	environmental	as	50
1032	918	claim	already	858
985	444	behavior	black	195
102	540	crime	major	102
1513	447	statement	decide	938
1475	291	there	director	705
1177	431	box	however	45
635	775	over	policy	335
1229	387	option	smile	509
1703	89	center	man	333
980	55	off	power	86
436	188	however	fill	841
13	347	language	debate	434
669	456	state	city	912
897	921	medical	total	750
294	261	no	PM	208
1445	172	continue	it	441
1314	757	performance	half	881
1402	398	head	sure	777
804	716	ground	shake	482
141	335	order	sing	810
1340	57	again	leader	80
1288	756	kind	first	59
374	444	ask	indeed	220
301	988	plan	now	38
470	316	them	common	658
477	638	some	throw	4
606	771	one	around	694
995	462	concern	organization	162
403	655	almost	include	896
692	669	memory	gun	880
1381	230	same	executive	202
627	464	stock	coach	250
1939	235	yard	answer	664
996	376	natural	loss	59
1857	446	current	dream	993
644	830	note	be	932
1869	765	debate	imagine	9
1304	491	despite	believe	585
149	997	ask	woman	221
228	288	total	join	174
1411	667	participant	one	299
839	7	identify	agent	811
141	571	clear	pass	403
856	134	hotel	movement	738
1069	285	organization	work	651
1876	47	new	economic	794
1661	199	treat	shake	394
706	990	various	seven	471
698	158	economy	close	700
408	994	lot	magazine	160
975	465	during	appear	964
1106	929	north	between	886
1012	976	degree	picture	884
1105	581	rich	focus	144
1787	590	student	form	242
910	371	rise	local	259
854	50	up	attention	181
891	56	get	cost	635
1378	49	bar	yeah	308
978	560	sister	its	7
1114	956	civil	nearly	469
630	442	Democrat	police	14
904	185	hope	source	82
663	805	detail	man	47
1577	490	career	thousand	852
2044	802	child	explain	278
276	569	direction	customer	865
816	924	six	benefit	521
1217	229	instead	and	319
196	492	painting	question	24
1716	795	some	nor	592
273	449	table	car	207
111	839	travel	she	152
1128	828	data	evening	180
472	326	seek	push	848
393	512	may	special	711
\.


--
-- Data for Name: relation_24; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_24 (tag_id, tag_name) FROM stdin;
1	position
2	than
3	everybody
4	collection
5	difficult
6	condition
7	public
8	quickly
9	evidence
10	father
11	oil
12	win
13	involve
14	technology
15	trial
16	decide
17	her
18	into
19	increase
20	tonight
21	large
22	what
23	raise
24	change
25	south
26	read
27	same
28	indeed
29	choice
30	point
31	magazine
32	adult
33	run
34	nation
35	machine
36	film
37	hard
38	trade
39	against
40	system
41	wonder
42	trouble
43	state
44	career
45	good
46	interview
47	size
48	former
49	drug
50	student
51	affect
52	return
53	which
54	political
55	member
56	role
57	customer
58	away
59	off
60	ground
61	risk
62	personal
63	poor
64	truth
65	group
66	reveal
67	real
68	him
69	choice
70	week
71	machine
72	benefit
73	position
74	claim
75	media
76	continue
77	really
78	high
79	must
80	center
81	hospital
82	prove
83	finally
84	month
85	because
86	operation
87	east
88	newspaper
89	herself
90	receive
91	break
92	strong
93	treatment
94	project
95	play
96	husband
97	wife
98	my
99	eight
100	happen
\.


--
-- Data for Name: relation_25; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_25 (customer_id, address_id, kind, line1, city, state, country, postal_code) FROM stdin;
203	101	attack	full	Morrisonberg	admit	especially	western
376	758	least	method	Marytown	sure	performance	material
216	906	shoulder	source	North Brian	possible	up	ahead
164	325	them	magazine	Richardsberg	threat	say	thousand
328	812	station	data	Lake David	price	lay	me
267	206	exactly	drive	Port Ryan	race	inside	feel
170	357	but	set	West Patriciatown	level	happy	across
308	749	process	wear	Maryfort	standard	girl	federal
372	164	where	office	North Darrellton	nor	memory	attention
113	857	everything	step	Gutierrezside	service	billion	door
127	712	enjoy	news	New Joshuaburgh	possible	full	strong
287	403	back	outside	Lake Seth	short	science	up
386	383	still	under	Phillipsbury	add	billion	challenge
356	272	special	different	South Matthew	do	human	born
300	991	gas	good	Wigginsside	long	none	go
382	120	behind	factor	Moralesport	summer	together	reduce
382	629	it	summer	Franktown	foreign	perform	establish
285	753	kid	minute	West Jessicabury	paper	old	spend
196	152	example	so	Bryanmouth	total	leader	dinner
342	836	central	arrive	East Steven	blood	than	find
290	965	need	close	Martinton	answer	local	compare
171	539	guess	argue	Lake Allison	discuss	nothing	various
335	581	trip	education	Lake Richard	no	how	school
326	230	line	expect	Pamelaville	want	price	although
139	212	my	same	West Jennifer	military	western	major
329	696	gun	region	Gilmorestad	hold	yard	system
339	670	part	lead	Port Johnside	out	those	certain
152	323	lay	what	Williamsmouth	it	machine	conference
288	378	shoulder	food	East Tony	ahead	turn	work
359	5	type	western	Kristenburgh	believe	talk	less
207	544	fine	expert	Shannonville	choose	fund	establish
396	774	debate	allow	Lake Rebeccaville	decide	difference	memory
110	291	opportunity	environmental	Port Shannon	could	off	mention
382	149	government	thousand	Jamesville	campaign	direction	read
266	698	court	page	Batesside	policy	notice	really
193	120	rate	whatever	Pierceberg	scene	these	shoulder
244	589	general	him	Lake Tamaraport	social	receive	analysis
195	637	simple	community	Ryanton	manager	nature	born
246	782	report	grow	Brandonview	knowledge	reality	small
254	836	rest	message	Jeremyton	environmental	should	order
293	230	possible	loss	Phillipsfurt	fish	quickly	season
385	861	market	hotel	Lake Matthew	lot	town	business
229	226	this	protect	Michelleville	fill	word	manage
390	422	run	call	Brookston	art	education	final
113	800	light	military	Stricklandbury	available	whose	each
181	260	late	if	Mccoyport	deal	respond	prepare
125	400	under	amount	Williamsland	customer	vote	card
207	938	police	these	South Erica	begin	cover	lawyer
173	948	thousand	political	Lewisville	population	natural	specific
377	772	charge	own	Lake Brenda	baby	interesting	maintain
136	725	dream	sign	Lake Rebeccaberg	soldier	feeling	another
194	396	despite	end	New William	race	drive	many
237	367	gas	note	Austinton	image	wrong	including
198	917	enough	and	South Larrytown	rate	those	scientist
255	359	consider	outside	Millerstad	international	stay	up
129	290	father	financial	South Madelinebury	area	girl	clear
260	433	likely	big	Michellemouth	else	down	behind
348	806	good	media	Port Kathleen	parent	staff	religious
147	444	clear	design	Franklinbury	scientist	including	my
136	148	if	anyone	Lynchbury	very	story	close
297	810	just	series	Millerchester	relate	policy	human
392	611	decision	next	Henryton	than	draw	decide
297	410	eight	not	Lake Ericfort	protect	try	something
272	531	dinner	forget	Lake Emilyville	pick	reason	rock
364	33	along	determine	South Philip	stay	fall	food
287	539	indeed	kind	Loriland	PM	national	expert
255	79	make	reach	Katherinehaven	under	card	mission
308	15	consumer	ground	Judytown	course	nothing	take
149	807	for	live	North Robert	central	understand	require
361	482	join	check	Ashleystad	participant	sure	green
116	177	stay	yourself	North Sarah	into	tree	law
370	744	write	possible	West Carolineberg	campaign	throw	build
325	864	short	wrong	Carolynshire	all	fine	firm
217	794	well	operation	Port Bryanborough	arrive	leave	decision
351	862	cut	time	North Stacy	gas	enjoy	ready
244	26	dinner	friend	Jameshaven	detail	fall	pay
218	6	institution	position	New Jesus	program	prepare	professional
129	226	blood	material	Sheilastad	energy	people	force
364	323	back	degree	Deanfurt	send	able	low
365	99	center	single	Wendyfurt	notice	trial	discover
268	296	figure	level	Watkinsville	option	western	time
336	977	measure	land	West Michael	could	month	first
186	80	end	response	West Courtney	coach	white	check
106	889	marriage	from	Lake Melissaland	network	staff	without
363	482	discussion	camera	Port Heather	everyone	parent	grow
365	180	character	character	West Franciscofort	rate	return	friend
191	319	dream	people	East Tracyburgh	scientist	career	remember
222	289	none	break	Littletown	share	compare	role
117	18	above	speech	South Brittney	teach	exactly	quite
177	568	food	main	Carrilloberg	resource	fast	ready
309	142	second	son	Starkhaven	medical	begin	value
250	744	him	information	East Matthewstad	writer	make	beyond
175	596	exactly	think	North Randallville	big	focus	administration
133	780	table	herself	New Donnabury	majority	hold	upon
335	952	artist	hair	Dawnberg	watch	should	structure
372	102	professor	place	North Martinville	teacher	sea	kind
254	366	seven	many	Marshallmouth	treat	share	base
116	747	detail	none	Anthonyberg	teach	development	alone
128	444	newspaper	offer	Stephanieland	seem	simple	both
398	38	adult	answer	Johnside	these	especially	point
\.


--
-- Data for Name: relation_26; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_26 (customer_id, payment_method_id, brand, last4, exp_month, exp_year, is_default) FROM stdin;
177	348	drug	still	8	980	street
259	195	feeling	fill	398	242	manage
351	490	often	when	445	698	myself
385	405	include	focus	452	467	power
124	992	prevent	common	88	810	choice
352	493	affect	later	299	498	event
234	159	college	check	690	96	or
253	999	whole	bar	696	670	daughter
172	408	probably	arrive	781	183	smile
391	795	character	experience	963	188	want
236	877	executive	discussion	956	973	under
120	535	expect	place	942	18	since
317	809	speak	source	790	446	article
191	187	difference	win	533	833	hour
247	841	car	and	470	51	hotel
311	880	conference	forward	377	337	rock
257	146	middle	time	239	648	part
206	496	operation	member	170	504	behavior
345	208	player	push	584	268	air
189	266	data	color	465	48	north
354	336	left	represent	77	494	set
128	496	today	player	50	374	hotel
139	500	brother	with	371	19	person
377	940	anyone	food	202	708	player
279	74	travel	collection	931	79	among
360	872	century	help	417	421	camera
361	271	foreign	three	702	695	too
165	683	song	nothing	277	127	world
398	231	knowledge	movement	912	756	feel
243	486	rock	reality	808	142	since
292	575	threat	interview	896	528	room
178	362	main	reveal	245	290	month
248	774	show	then	778	166	agree
126	377	crime	its	778	821	road
127	222	like	inside	406	49	sea
349	266	new	out	3	342	baby
295	770	interest	produce	291	800	direction
395	297	own	office	209	306	capital
383	970	I	them	710	888	organization
152	924	campaign	something	291	905	create
332	749	nature	across	455	975	course
311	794	wear	little	218	210	field
354	392	process	total	39	818	quality
202	571	civil	minute	656	115	see
392	397	dinner	quality	355	787	scene
316	688	father	who	69	754	choice
218	235	story	father	649	538	return
185	745	however	identify	383	801	reality
112	718	star	less	328	999	seem
370	850	price	issue	559	305	increase
230	777	decide	issue	285	263	budget
133	672	during	size	386	610	box
190	399	sea	note	791	36	activity
186	886	issue	sing	626	996	gun
343	903	crime	away	40	540	machine
321	262	benefit	maintain	899	61	red
395	697	civil	change	223	348	character
133	286	organization	cold	985	771	sing
396	306	interview	quickly	99	945	radio
179	966	candidate	identify	533	699	they
297	809	decade	improve	169	959	apply
166	455	become	fall	267	17	plan
118	573	so	describe	33	344	measure
284	327	human	control	55	193	particularly
114	486	including	fine	235	489	wall
187	675	lead	event	909	669	them
243	793	peace	use	358	731	recently
122	174	foreign	boy	734	603	save
178	691	bring	or	908	359	special
256	878	hotel	themselves	339	71	better
309	52	tonight	a	125	137	television
261	210	popular	choice	571	337	decide
272	478	reach	all	388	319	attack
206	800	so	finish	791	468	low
275	382	skin	buy	488	561	memory
140	642	American	do	490	687	way
128	979	here	step	858	413	no
242	40	month	off	572	563	spring
382	664	through	morning	134	335	sea
150	852	with	play	423	3	sign
379	126	of	floor	63	978	start
380	256	former	result	210	699	require
227	758	society	occur	658	392	give
350	754	next	go	540	756	force
107	668	good	above	972	700	live
222	139	third	wait	48	891	into
308	876	individual	call	935	733	car
316	608	concern	yes	911	396	turn
365	356	like	less	997	461	market
389	39	ready	rock	829	42	board
263	86	store	color	890	763	two
236	155	task	plant	56	983	north
214	809	citizen	several	101	11	last
110	790	something	large	914	325	join
325	562	hundred	law	538	936	go
321	203	apply	plant	475	463	glass
125	409	box	young	14	56	safe
354	210	perform	do	296	707	individual
326	883	happen	southern	280	327	what
330	599	compare	resource	871	577	herself
\.


--
-- Data for Name: relation_27; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_27 (customer_id, updated_at) FROM stdin;
378	build
238	work
335	general
176	author
303	agent
113	cost
282	amount
198	remain
121	be
275	result
190	yeah
314	total
400	weight
206	law
367	power
395	down
235	hair
123	decision
197	store
261	start
163	character
155	face
322	risk
146	fund
234	agency
290	way
360	much
191	evening
192	impact
361	activity
377	whether
317	their
186	camera
397	various
258	free
345	until
332	we
106	of
180	live
139	poor
343	make
185	agree
299	foreign
306	sit
291	participant
177	evening
300	treatment
321	something
359	enough
239	agreement
319	side
308	ability
388	environmental
302	out
278	skill
279	watch
134	authority
233	painting
170	city
144	unit
136	control
273	indeed
375	must
229	accept
221	street
307	decision
160	land
277	concern
268	body
135	cell
223	finish
200	north
362	machine
245	produce
341	spend
247	house
212	decade
382	he
166	entire
283	activity
368	ago
358	quickly
143	me
141	board
333	week
254	learn
137	law
353	expect
385	stock
171	interesting
311	heart
248	when
349	nor
110	per
344	start
257	draw
342	brother
120	who
380	fine
205	create
\.


--
-- Data for Name: relation_28; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_28 (customer_id, wishlist_id, wishlist_name) FROM stdin;
202	658	family
145	327	hot
263	947	almost
391	729	major
321	567	wish
239	99	again
256	35	little
112	929	the
358	53	hand
191	954	soon
227	363	raise
294	342	exist
129	334	appear
205	660	our
134	38	often
167	520	article
229	414	system
256	818	tonight
117	669	yes
164	817	city
251	678	town
379	393	yes
121	886	themselves
253	149	shoulder
354	393	able
315	877	these
395	463	discussion
395	756	either
180	487	range
112	943	entire
285	127	alone
227	225	should
263	63	tough
145	377	site
287	752	find
317	603	development
149	989	consider
229	777	his
114	803	direction
140	381	and
197	739	product
191	922	become
343	728	operation
290	216	detail
155	932	peace
314	475	after
376	879	however
309	128	job
292	902	size
290	55	fish
249	736	pay
124	528	discuss
255	680	especially
298	791	behavior
107	227	wife
108	80	consider
124	382	one
125	458	inside
181	929	guess
116	621	nothing
254	822	manage
127	12	society
179	673	language
122	38	interest
231	413	ten
229	870	only
132	434	lawyer
375	60	leader
128	512	alone
335	941	back
120	673	coach
150	714	its
287	982	short
193	600	fight
247	131	strong
365	960	fast
242	962	big
104	246	large
226	255	above
375	632	deal
355	677	method
309	904	lay
390	453	decision
298	517	worry
307	127	plan
257	280	close
117	642	news
115	647	above
356	947	husband
328	129	generation
344	275	least
321	935	probably
208	121	price
224	795	education
372	533	among
270	98	culture
134	610	ball
365	595	think
333	65	spend
316	894	performance
\.


--
-- Data for Name: relation_29; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_29 (customer_id, review_id, rating, title, body, created_at, reviews_product_id) FROM stdin;
355	171	859	likely	member	buy	\N
296	872	668	series	such	week	\N
349	256	177	myself	medical	alone	\N
273	979	230	become	administration	cell	\N
145	936	380	score	quite	great	\N
206	591	349	increase	until	cost	\N
144	25	508	modern	agent	popular	\N
234	883	960	low	rather	determine	\N
126	952	93	court	fish	heavy	\N
386	408	503	start	action	seek	\N
292	511	809	something	bill	plan	\N
370	551	833	home	bill	race	\N
113	204	284	else	while	safe	\N
385	624	86	able	administration	us	\N
217	188	618	major	should	concern	\N
151	619	507	become	future	item	\N
117	507	371	simply	compare	interesting	\N
127	244	23	any	animal	Republican	\N
264	49	413	democratic	these	man	\N
273	582	400	case	me	term	\N
334	906	742	name	system	station	\N
221	186	814	knowledge	middle	again	\N
381	270	564	throughout	power	trial	\N
265	523	959	approach	performance	determine	\N
365	990	72	theory	hot	general	\N
167	508	149	development	my	skill	\N
381	236	615	believe	mouth	continue	\N
369	128	725	right	country	though	\N
339	938	411	heart	little	vote	\N
161	269	446	hot	sell	prove	\N
365	36	686	play	reality	six	\N
385	308	954	if	young	tree	\N
316	755	50	explain	send	cause	\N
301	662	956	tell	or	few	\N
254	370	499	go	be	growth	\N
196	798	99	maintain	cup	method	\N
187	17	208	kitchen	blue	employee	\N
298	834	359	public	task	include	\N
108	128	218	story	affect	little	\N
136	255	239	discuss	at	environment	\N
298	550	300	term	beyond	table	\N
317	897	785	write	order	owner	\N
150	460	339	theory	drop	left	\N
244	780	971	set	station	reality	\N
256	613	789	design	challenge	same	\N
116	443	676	provide	scene	they	\N
199	405	148	another	all	director	\N
319	366	861	live	standard	scientist	\N
369	887	314	foreign	place	address	\N
310	951	34	success	situation	education	\N
120	57	379	form	notice	professor	\N
188	873	953	boy	picture	cut	\N
345	433	290	month	important	single	\N
353	675	419	likely	front	dinner	292
140	929	685	at	growth	executive	1120
103	49	379	magazine	study	develop	683
323	322	783	well	you	certain	593
386	532	79	hard	positive	stuff	2059
274	888	55	consumer	some	future	1054
391	714	804	condition	challenge	century	127
335	248	160	improve	easy	leave	288
331	529	750	light	that	test	624
105	452	573	develop	one	more	30
245	7	220	play	our	push	1034
400	660	235	fine	business	according	1823
165	773	180	against	size	meeting	169
289	477	191	customer	smile	commercial	1893
193	235	953	whole	finish	teach	1599
165	42	720	nothing	give	more	197
309	328	136	result	free	movement	615
199	723	205	realize	table	machine	1485
239	772	152	sometimes	eye	treatment	1845
127	699	977	feeling	partner	even	1662
148	383	554	lay	war	everybody	869
186	255	734	type	we	often	375
325	241	221	during	budget	case	1223
366	740	617	house	area	us	42
269	533	278	three	particularly	image	977
274	449	358	Mrs	level	send	1922
223	471	761	material	hope	then	9
225	529	685	she	direction	issue	2031
336	214	926	production	like	any	188
322	870	626	later	ball	concern	428
294	815	98	himself	page	allow	914
202	356	30	actually	training	blood	471
392	42	177	provide	avoid	box	636
244	484	806	among	various	soldier	1035
219	259	677	could	learn	able	1333
139	22	611	assume	entire	tend	1300
286	946	525	among	outside	daughter	567
272	424	949	center	some	phone	1488
377	587	191	Mrs	issue	Democrat	771
195	629	393	lead	situation	stuff	1791
227	359	97	question	common	military	1082
311	1000	462	month	cold	glass	923
297	701	62	likely	even	hospital	486
230	759	374	out	role	how	1192
373	449	197	better	watch	indeed	1049
353	881	867	happen	suggest	increase	1316
204	496	56	station	whose	dinner	2080
\.


--
-- Data for Name: relation_3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_3 (electronics_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, cpu, ram_gb, role, carrier_lock, category_products_category_id, single_bundle_phone_bundled_phone_electronics_id, bundled_phone_id) FROM stdin;
301	until	decade	23	605	377	{bed,significant}	great	728	\N	\N	electronics	\N	\N	\N	\N
302	quite	hand	827	291	226	{early}	sign	613	\N	\N	electronics	\N	\N	\N	\N
303	church	return	506	887	921	{huge}	anyone	436	\N	\N	electronics	\N	\N	\N	\N
304	food	visit	464	692	376	{lawyer}	special	818	\N	\N	electronics	\N	\N	\N	\N
306	land	senior	207	9	765	{herself,put}	top	527	\N	\N	electronics	\N	\N	\N	\N
307	wrong	claim	898	499	79	{oil,prepare}	matter	631	\N	\N	electronics	\N	\N	\N	\N
308	list	garden	904	523	816	{like,partner}	reason	42	\N	\N	electronics	\N	\N	\N	\N
309	matter	huge	361	872	470	{news}	society	195	\N	\N	electronics	\N	\N	\N	\N
311	service	note	123	842	310	{water,nor}	national	995	\N	\N	electronics	\N	\N	\N	\N
313	once	happen	422	556	963	{serve,gas}	plant	618	\N	\N	electronics	\N	\N	\N	\N
314	company	image	646	596	316	{member,administration}	color	310	\N	\N	electronics	\N	\N	\N	\N
315	sing	again	135	519	455	{coach}	education	564	\N	\N	electronics	\N	\N	\N	\N
316	big	stand	792	998	167	{break,return}	with	652	\N	\N	electronics	\N	\N	\N	\N
317	true	visit	10	435	754	{focus}	month	378	\N	\N	electronics	\N	\N	\N	\N
318	anyone	either	431	412	289	{wait}	offer	921	\N	\N	electronics	\N	\N	\N	\N
319	campaign	arm	93	948	93	{week}	decade	393	\N	\N	electronics	\N	\N	\N	\N
321	although	box	768	873	493	{coach,dog}	painting	398	\N	\N	electronics	\N	\N	\N	\N
322	treatment	message	468	823	120	{population,card}	role	364	\N	\N	electronics	\N	\N	\N	\N
323	level	power	149	426	152	{year}	someone	177	\N	\N	electronics	\N	\N	\N	\N
324	thus	social	834	267	377	{lose}	bag	604	\N	\N	electronics	\N	\N	\N	\N
325	attack	that	806	295	973	{make,act}	war	265	\N	\N	electronics	\N	\N	\N	\N
326	future	talk	962	527	295	{already,write}	machine	708	\N	\N	electronics	\N	\N	\N	\N
327	want	least	281	444	344	{glass,soldier}	site	221	\N	\N	electronics	\N	\N	\N	\N
328	down	health	733	850	504	{end,black}	situation	734	\N	\N	electronics	\N	\N	\N	\N
329	fill	among	436	94	66	{part}	true	212	\N	\N	electronics	\N	\N	\N	\N
330	employee	call	990	154	235	{various}	fly	106	\N	\N	electronics	\N	\N	\N	\N
331	subject	buy	260	160	492	{federal}	thousand	409	\N	\N	electronics	\N	\N	\N	\N
332	space	receive	666	741	192	{activity}	season	92	\N	\N	electronics	\N	\N	\N	\N
333	than	billion	438	627	978	{interesting}	successful	563	\N	\N	electronics	\N	\N	\N	\N
335	official	nation	969	668	993	{billion}	end	753	\N	\N	electronics	\N	\N	\N	\N
336	program	to	567	696	430	{media}	item	272	\N	\N	electronics	\N	\N	\N	\N
337	state	professor	701	286	184	{on,behind}	establish	825	\N	\N	electronics	\N	\N	\N	\N
338	identify	deep	813	722	879	{for}	seven	806	\N	\N	electronics	\N	\N	\N	\N
341	father	social	699	521	510	{meet,brother}	also	119	\N	\N	electronics	\N	\N	\N	\N
342	reduce	town	621	875	491	{business}	land	153	\N	\N	electronics	\N	\N	\N	\N
343	institution	risk	396	629	928	{at}	card	172	\N	\N	electronics	\N	\N	\N	\N
344	threat	fire	534	264	427	{agent,claim}	interesting	890	\N	\N	electronics	\N	\N	\N	\N
346	enter	almost	778	639	346	{support,everyone}	raise	106	\N	\N	electronics	\N	\N	\N	\N
347	beyond	visit	9	776	747	{Mrs,space}	help	949	\N	\N	electronics	\N	\N	\N	\N
352	back	turn	152	134	263	{road}	what	418	\N	\N	electronics	\N	\N	\N	\N
353	must	attack	575	646	613	{record}	century	546	\N	\N	electronics	\N	\N	\N	\N
354	red	head	855	624	522	{final}	human	969	\N	\N	electronics	\N	\N	\N	\N
355	system	strategy	424	277	287	{similar,too}	maybe	713	\N	\N	electronics	\N	\N	\N	\N
356	million	until	314	274	504	{model}	realize	511	\N	\N	electronics	\N	\N	\N	\N
357	watch	only	377	614	482	{news}	red	347	\N	\N	electronics	\N	\N	\N	\N
358	place	listen	181	621	778	{team}	strong	757	\N	\N	electronics	\N	\N	\N	\N
359	win	nation	902	595	711	{interest,cost}	east	548	\N	\N	electronics	\N	\N	\N	\N
360	former	itself	154	60	517	{attorney,sense}	style	542	\N	\N	electronics	\N	\N	\N	\N
361	kind	middle	707	139	661	{reason}	level	323	\N	\N	electronics	\N	\N	\N	\N
362	film	nor	638	506	492	{care,early}	marriage	122	\N	\N	electronics	\N	\N	\N	\N
363	take	memory	131	909	144	{society,serve}	dog	231	\N	\N	electronics	\N	\N	\N	\N
364	over	either	91	651	552	{benefit}	serious	577	\N	\N	electronics	\N	\N	\N	\N
365	whether	can	177	702	119	{including}	window	577	\N	\N	electronics	\N	\N	\N	\N
366	standard	cut	205	516	582	{note,player}	second	433	\N	\N	electronics	\N	\N	\N	\N
368	available	rest	313	842	631	{throw}	present	87	\N	\N	electronics	\N	\N	\N	\N
369	course	member	761	230	287	{spring,hit}	owner	276	\N	\N	electronics	\N	\N	\N	\N
370	one	price	616	737	531	{defense,control}	long	24	\N	\N	electronics	\N	\N	\N	\N
372	chance	firm	257	921	789	{itself}	notice	698	\N	\N	electronics	\N	\N	\N	\N
373	poor	ahead	588	43	356	{vote}	movie	95	\N	\N	electronics	\N	\N	\N	\N
374	act	get	743	106	308	{why,list}	test	255	\N	\N	electronics	\N	\N	\N	\N
376	between	computer	81	143	948	{sport,now}	enjoy	381	\N	\N	electronics	\N	\N	\N	\N
377	culture	left	957	738	654	{party}	affect	97	\N	\N	electronics	\N	\N	\N	\N
379	every	friend	910	330	982	{prevent}	from	361	\N	\N	electronics	\N	\N	\N	\N
380	sell	beyond	946	823	810	{author}	today	621	\N	\N	electronics	\N	\N	\N	\N
383	off	to	429	549	957	{himself,accept}	fast	309	\N	\N	electronics	\N	\N	\N	\N
384	police	how	920	225	648	{career,rich}	professor	563	\N	\N	electronics	\N	\N	\N	\N
386	large	painting	247	221	919	{live,world}	suggest	282	\N	\N	electronics	\N	\N	\N	\N
387	person	recent	560	21	257	{when,author}	section	968	\N	\N	electronics	\N	\N	\N	\N
388	everything	may	543	269	485	{drug}	already	413	\N	\N	electronics	\N	\N	\N	\N
390	seek	task	671	558	372	{nor}	food	634	\N	\N	electronics	\N	\N	\N	\N
391	production	huge	316	457	699	{plant}	attack	160	\N	\N	electronics	\N	\N	\N	\N
393	often	tough	901	847	222	{air,adult}	represent	862	\N	\N	electronics	\N	\N	\N	\N
394	painting	add	821	869	786	{reflect,capital}	take	374	\N	\N	electronics	\N	\N	\N	\N
395	say	common	910	300	164	{network}	even	870	\N	\N	electronics	\N	\N	\N	\N
396	various	cause	815	391	854	{spring,those}	green	416	\N	\N	electronics	\N	\N	\N	\N
398	describe	especially	683	704	819	{keep}	assume	551	\N	\N	electronics	\N	\N	\N	\N
399	want	lay	976	10	942	{amount}	happy	389	\N	\N	electronics	\N	\N	\N	\N
400	at	century	765	576	965	{experience}	Mrs	471	\N	\N	electronics	\N	\N	\N	\N
401	early	general	32	798	443	{sell,production}	show	283	along	956	computer	\N	\N	\N	\N
403	other	wait	483	798	39	{answer}	whether	832	section	44	computer	\N	\N	\N	\N
404	since	color	852	114	602	{concern}	defense	544	threat	521	computer	\N	\N	\N	\N
407	teach	gun	840	715	252	{agree}	detail	109	throw	576	computer	\N	\N	\N	\N
410	girl	anything	745	355	260	{guess}	season	632	although	446	computer	\N	\N	\N	\N
411	analysis	thought	425	386	368	{PM,get}	career	773	near	836	computer	\N	\N	\N	\N
413	power	unit	532	148	58	{practice,accept}	according	690	though	117	computer	\N	\N	\N	\N
414	main	whatever	913	526	177	{option,pull}	society	916	million	350	computer	\N	\N	\N	\N
417	card	hot	234	103	255	{close,discuss}	place	999	agree	994	computer	\N	\N	\N	\N
418	car	skill	337	673	252	{true,to}	summer	761	themselves	483	computer	\N	\N	\N	\N
419	want	again	379	505	668	{defense}	lawyer	443	cell	452	computer	\N	\N	\N	\N
421	certainly	political	860	129	154	{first}	real	386	believe	425	computer	\N	\N	\N	\N
422	story	add	112	819	27	{ability}	indicate	964	eye	188	computer	\N	\N	\N	\N
423	service	statement	470	785	387	{who,claim}	another	940	among	160	computer	\N	\N	\N	\N
425	bit	message	20	476	407	{score}	memory	551	in	713	computer	\N	\N	\N	\N
426	ago	again	401	6	558	{structure}	ten	434	nor	930	computer	\N	\N	\N	\N
427	word	fill	163	679	184	{movie,miss}	support	679	mother	245	computer	\N	\N	\N	\N
428	Congress	money	78	794	550	{goal}	lay	180	side	385	computer	\N	\N	\N	\N
430	scientist	customer	814	42	959	{painting}	for	718	finally	517	computer	\N	\N	\N	\N
431	pattern	out	708	627	670	{rate}	two	254	recently	408	computer	\N	\N	\N	\N
433	pattern	industry	574	97	657	{so,success}	probably	47	wonder	531	computer	\N	\N	\N	\N
437	most	section	652	460	514	{rate,safe}	find	568	best	172	computer	\N	\N	\N	\N
438	easy	sense	716	405	716	{company,open}	establish	828	green	206	computer	\N	\N	\N	\N
440	break	difference	266	581	287	{radio}	yes	800	alone	739	computer	\N	\N	\N	\N
442	suddenly	treat	147	265	262	{talk,that}	space	358	policy	394	computer	\N	\N	\N	\N
443	yourself	challenge	286	580	479	{line}	tonight	153	true	977	computer	\N	\N	\N	\N
444	glass	most	134	982	259	{billion}	person	202	form	73	computer	\N	\N	\N	\N
445	money	world	821	594	551	{there}	focus	557	relationship	440	computer	\N	\N	\N	\N
446	much	top	734	893	246	{establish}	one	568	five	472	computer	\N	\N	\N	\N
448	wide	its	80	157	806	{stuff}	fact	31	method	765	computer	\N	\N	\N	\N
451	still	simply	871	391	143	{theory,military}	thank	208	car	678	computer	\N	\N	\N	\N
452	our	require	737	407	366	{sing}	tree	231	look	305	computer	\N	\N	\N	\N
453	total	care	727	148	357	{low,her}	how	549	cold	299	computer	\N	\N	\N	\N
455	strategy	difference	475	23	298	{into}	teach	630	scene	382	computer	\N	\N	\N	\N
456	partner	now	773	455	262	{table}	about	54	heart	849	computer	\N	\N	\N	\N
458	school	staff	645	842	106	{would}	animal	875	popular	446	computer	\N	\N	\N	\N
459	message	case	649	601	252	{father}	network	517	whose	520	computer	\N	\N	\N	\N
460	piece	article	407	125	935	{population}	forget	839	me	970	computer	\N	\N	\N	\N
461	third	find	394	677	946	{million}	through	834	concern	734	computer	\N	\N	\N	\N
463	customer	exist	829	207	782	{maintain,health}	leader	679	agree	494	computer	\N	\N	\N	\N
464	beautiful	human	559	629	237	{another,commercial}	citizen	39	life	654	computer	\N	\N	\N	\N
466	science	field	991	281	788	{last,within}	source	409	morning	279	computer	\N	\N	\N	\N
467	blue	throughout	506	101	686	{whole}	that	192	two	573	computer	\N	\N	\N	\N
468	appear	money	17	465	772	{yeah}	turn	501	organization	220	computer	\N	\N	\N	\N
469	national	number	404	843	748	{near,movie}	make	930	matter	250	computer	\N	\N	\N	\N
470	until	career	97	79	695	{American}	their	867	expect	433	computer	\N	\N	\N	\N
471	appear	year	854	453	194	{add}	over	610	local	515	computer	\N	\N	\N	\N
473	draw	society	202	239	369	{sure}	figure	350	success	928	computer	\N	\N	\N	\N
474	air	name	54	470	46	{ok}	skin	913	under	152	computer	\N	\N	\N	\N
475	you	trade	875	929	962	{style,nice}	real	481	direction	45	computer	\N	\N	\N	\N
476	bad	anything	598	514	67	{yourself,yard}	decide	95	popular	410	computer	\N	\N	\N	\N
477	exactly	he	816	525	863	{clearly,lead}	much	404	need	275	computer	\N	\N	\N	\N
479	personal	natural	932	893	489	{in}	listen	438	class	312	computer	\N	\N	\N	\N
480	dream	plan	603	767	325	{board}	administration	611	religious	604	computer	\N	\N	\N	\N
481	back	work	570	872	285	{impact}	realize	886	relationship	622	computer	\N	\N	\N	\N
482	character	key	807	810	795	{point,dinner}	son	426	media	401	computer	\N	\N	\N	\N
483	believe	measure	533	810	25	{sea}	off	38	opportunity	588	computer	\N	\N	\N	\N
484	democratic	another	543	15	104	{avoid,close}	stuff	345	want	956	computer	\N	\N	\N	\N
485	PM	successful	378	769	565	{plan}	team	653	they	380	computer	\N	\N	\N	\N
486	reach	type	597	76	497	{experience}	choose	868	house	553	computer	\N	\N	\N	\N
488	and	institution	932	333	370	{wall}	easy	150	those	918	computer	\N	\N	\N	\N
492	arrive	water	786	646	253	{a,budget}	cell	773	side	993	computer	\N	\N	\N	\N
493	manager	decision	407	564	291	{these}	continue	77	professor	726	computer	\N	\N	\N	\N
494	Congress	least	175	927	959	{situation,interview}	what	424	animal	86	computer	\N	\N	\N	\N
495	statement	development	130	290	565	{director,order}	third	241	raise	216	computer	\N	\N	\N	\N
496	specific	put	102	284	740	{range,yes}	sense	49	people	756	computer	\N	\N	\N	\N
500	employee	police	373	819	766	{group}	war	30	subject	324	computer	\N	\N	\N	\N
501	less	main	428	768	168	{special}	now	724	wrong	603	desktop	\N	\N	\N	\N
503	draw	property	925	203	239	{collection}	according	602	there	134	desktop	\N	\N	\N	\N
505	director	morning	470	202	801	{manage}	stuff	370	newspaper	986	desktop	\N	\N	\N	\N
507	point	decision	955	651	10	{party}	reality	501	listen	34	desktop	\N	\N	\N	\N
508	finish	production	169	260	921	{adult}	along	10	easy	236	desktop	\N	\N	\N	\N
509	million	thought	784	909	87	{level}	here	36	its	969	desktop	\N	\N	\N	\N
510	course	movement	541	206	215	{across,result}	them	296	certain	249	desktop	\N	\N	\N	\N
511	modern	population	503	519	381	{less,treatment}	serious	402	necessary	968	desktop	\N	\N	\N	\N
513	hair	line	639	305	979	{moment,example}	radio	629	institution	486	desktop	\N	\N	\N	\N
514	hour	history	373	24	500	{usually}	set	953	east	108	desktop	\N	\N	\N	\N
516	become	newspaper	597	352	348	{share}	conference	663	west	431	desktop	\N	\N	\N	\N
517	we	Congress	200	719	527	{common,culture}	push	975	join	863	desktop	\N	\N	\N	\N
519	ability	cause	757	590	927	{land,book}	local	619	institution	483	desktop	\N	\N	\N	\N
520	it	raise	170	853	275	{right,institution}	nice	577	lose	784	desktop	\N	\N	\N	\N
521	campaign	outside	826	406	622	{friend,or}	area	262	treat	318	desktop	\N	\N	\N	\N
522	dream	collection	16	620	776	{industry}	available	801	whatever	469	desktop	\N	\N	\N	\N
524	strategy	type	215	717	488	{consumer,these}	region	713	reveal	641	desktop	\N	\N	\N	\N
525	piece	develop	149	394	884	{dinner,everyone}	arrive	56	laugh	658	desktop	\N	\N	\N	\N
528	option	building	333	347	317	{our}	mention	214	support	734	desktop	\N	\N	\N	\N
529	southern	beautiful	84	337	123	{great}	them	132	instead	800	desktop	\N	\N	\N	\N
530	leg	event	708	302	983	{theory,truth}	high	623	maintain	349	desktop	\N	\N	\N	\N
531	far	star	239	28	986	{individual}	boy	774	test	785	desktop	\N	\N	\N	\N
533	think	call	388	431	950	{offer,most}	power	831	result	888	desktop	\N	\N	\N	\N
536	keep	customer	250	731	405	{anything,action}	official	216	do	637	desktop	\N	\N	\N	\N
537	maybe	because	156	738	307	{tree,green}	nice	2	somebody	730	desktop	\N	\N	\N	\N
539	over	sometimes	692	150	32	{authority,challenge}	public	448	might	568	desktop	\N	\N	\N	\N
540	mean	young	351	896	821	{Republican,before}	work	326	especially	962	desktop	\N	\N	\N	\N
541	police	series	619	115	598	{employee,determine}	think	830	stay	562	desktop	\N	\N	\N	\N
542	play	ball	679	283	440	{water}	free	863	magazine	319	desktop	\N	\N	\N	\N
543	class	understand	771	89	655	{especially,site}	manage	118	floor	514	desktop	\N	\N	\N	\N
544	scientist	read	226	892	621	{operation,enter}	central	448	allow	382	desktop	\N	\N	\N	\N
545	your	detail	804	237	56	{trip}	get	612	us	528	desktop	\N	\N	\N	\N
546	dog	friend	527	524	167	{trip}	plan	300	me	945	desktop	\N	\N	\N	\N
547	read	word	50	906	70	{compare}	art	4	need	689	desktop	\N	\N	\N	\N
551	hospital	available	273	303	596	{gun,eight}	per	911	scene	240	desktop	\N	\N	\N	\N
552	election	than	188	216	401	{until}	direction	245	force	994	desktop	\N	\N	\N	\N
553	consider	subject	569	718	464	{this}	about	340	her	335	desktop	\N	\N	\N	\N
554	pattern	sit	417	123	17	{approach}	behind	518	interest	656	desktop	\N	\N	\N	\N
555	she	page	96	780	190	{treat}	window	231	study	181	desktop	\N	\N	\N	\N
556	I	run	312	928	826	{site}	teach	61	place	814	desktop	\N	\N	\N	\N
557	notice	ever	322	900	744	{kid}	fall	65	election	853	desktop	\N	\N	\N	\N
560	rise	material	813	234	681	{give}	now	123	gun	59	desktop	\N	\N	\N	\N
562	value	produce	806	832	761	{board}	live	961	whose	293	desktop	\N	\N	\N	\N
563	beat	class	732	259	540	{look,great}	treatment	893	stage	255	desktop	\N	\N	\N	\N
564	stage	join	740	34	742	{source,any}	particularly	784	others	200	desktop	\N	\N	\N	\N
565	though	serious	334	359	366	{difficult,there}	father	783	drug	896	desktop	\N	\N	\N	\N
567	if	sister	396	92	437	{outside}	upon	852	reach	851	desktop	\N	\N	\N	\N
568	win	idea	502	899	352	{study}	maybe	620	reveal	665	desktop	\N	\N	\N	\N
569	unit	color	117	246	75	{government,face}	pattern	907	hundred	284	desktop	\N	\N	\N	\N
570	security	marriage	546	312	943	{cup,staff}	lay	773	it	852	desktop	\N	\N	\N	\N
571	song	drop	380	420	468	{others,who}	line	361	modern	324	desktop	\N	\N	\N	\N
572	adult	notice	406	982	483	{southern}	out	380	relate	131	desktop	\N	\N	\N	\N
573	much	other	310	173	310	{natural}	page	893	thought	562	desktop	\N	\N	\N	\N
574	expert	picture	729	745	154	{detail}	air	469	stage	661	desktop	\N	\N	\N	\N
575	trial	thank	643	156	139	{third}	first	82	although	833	desktop	\N	\N	\N	\N
576	practice	risk	627	260	242	{wrong,big}	major	661	so	323	desktop	\N	\N	\N	\N
577	see	general	176	284	877	{decade,both}	throw	318	trouble	80	desktop	\N	\N	\N	\N
578	dream	few	439	158	564	{radio,free}	lay	908	bar	461	desktop	\N	\N	\N	\N
580	reach	soon	71	702	192	{item,these}	quite	548	left	36	desktop	\N	\N	\N	\N
581	girl	I	48	744	978	{information}	room	666	material	365	desktop	\N	\N	\N	\N
582	consider	describe	754	986	375	{section,character}	understand	879	mission	872	desktop	\N	\N	\N	\N
584	quickly	style	124	190	972	{commercial,paper}	upon	34	very	278	desktop	\N	\N	\N	\N
585	experience	industry	907	629	729	{must}	behavior	64	blood	253	desktop	\N	\N	\N	\N
586	page	actually	858	869	312	{why,article}	property	577	gas	413	desktop	\N	\N	\N	\N
587	various	pretty	251	369	791	{area}	scientist	238	much	965	desktop	\N	\N	\N	\N
588	agree	gun	298	715	583	{man}	sell	201	wear	100	desktop	\N	\N	\N	\N
589	set	alone	1000	139	229	{almost,claim}	economy	519	vote	912	desktop	\N	\N	\N	\N
590	write	prepare	273	145	167	{read}	majority	78	rest	319	desktop	\N	\N	\N	\N
591	give	second	588	523	522	{low,first}	begin	884	happy	893	desktop	\N	\N	\N	\N
592	this	center	450	595	525	{box,trade}	majority	188	TV	525	desktop	\N	\N	\N	\N
594	continue	thing	284	211	235	{future}	respond	137	whatever	792	desktop	\N	\N	\N	\N
596	energy	life	51	803	369	{here}	degree	625	wait	244	desktop	\N	\N	\N	\N
597	answer	end	695	713	889	{seek}	room	90	economy	452	desktop	\N	\N	\N	\N
598	majority	growth	660	672	202	{woman,only}	party	169	become	589	desktop	\N	\N	\N	\N
599	remember	give	708	859	856	{chair}	and	223	else	324	desktop	\N	\N	\N	\N
701	see	outside	710	424	702	{course,develop}	test	489	\N	\N	tablet	\N	\N	\N	\N
702	agree	wonder	646	226	314	{accept}	describe	65	\N	\N	tablet	\N	\N	\N	\N
703	wide	respond	506	997	842	{capital}	turn	847	\N	\N	tablet	\N	\N	\N	\N
704	raise	style	266	866	859	{whom,never}	different	809	\N	\N	tablet	\N	\N	\N	\N
705	under	manager	901	311	142	{operation}	again	514	\N	\N	tablet	\N	\N	\N	\N
706	subject	sure	467	872	39	{send,school}	practice	481	\N	\N	tablet	\N	\N	\N	\N
707	dog	college	584	933	334	{maybe,hot}	your	129	\N	\N	tablet	\N	\N	\N	\N
708	stay	page	1000	15	551	{long}	perform	789	\N	\N	tablet	\N	\N	\N	\N
709	road	during	638	830	67	{activity,for}	guess	291	\N	\N	tablet	\N	\N	\N	\N
713	prove	lawyer	511	543	352	{cut}	everybody	193	\N	\N	tablet	\N	\N	\N	\N
714	turn	building	57	632	120	{door}	manage	121	\N	\N	tablet	\N	\N	\N	\N
715	heart	work	543	313	772	{son}	third	166	\N	\N	tablet	\N	\N	\N	\N
716	whatever	positive	154	234	887	{tonight}	analysis	92	\N	\N	tablet	\N	\N	\N	\N
717	five	night	362	920	707	{federal,system}	PM	274	\N	\N	tablet	\N	\N	\N	\N
718	candidate	top	138	293	592	{hundred}	serve	72	\N	\N	tablet	\N	\N	\N	\N
719	hope	try	611	272	59	{manage}	win	443	\N	\N	tablet	\N	\N	\N	\N
720	church	woman	989	290	864	{Republican,economic}	budget	433	\N	\N	tablet	\N	\N	\N	\N
721	consumer	something	861	829	70	{meeting}	respond	220	\N	\N	tablet	\N	\N	\N	\N
722	sort	city	696	35	954	{we,challenge}	these	977	\N	\N	tablet	\N	\N	\N	\N
723	allow	health	425	364	964	{knowledge,any}	agree	524	\N	\N	tablet	\N	\N	\N	\N
724	they	meeting	152	184	809	{rate}	among	235	\N	\N	tablet	\N	\N	\N	\N
725	heart	few	965	61	375	{movie}	chance	889	\N	\N	tablet	\N	\N	\N	\N
726	six	loss	330	834	223	{kitchen}	trial	264	\N	\N	tablet	\N	\N	\N	\N
727	run	entire	708	913	722	{might,just}	on	110	\N	\N	tablet	\N	\N	\N	\N
728	hour	themselves	702	750	921	{season}	vote	484	\N	\N	tablet	\N	\N	\N	\N
730	entire	present	818	136	707	{much,evening}	speak	679	\N	\N	tablet	\N	\N	\N	\N
731	American	energy	807	787	392	{live,social}	network	549	\N	\N	tablet	\N	\N	\N	\N
733	here	similar	908	304	719	{player,should}	along	206	\N	\N	tablet	\N	\N	\N	\N
735	cause	spend	119	183	509	{become,fall}	special	724	\N	\N	tablet	\N	\N	\N	\N
736	meeting	story	966	610	650	{argue,ability}	conference	410	\N	\N	tablet	\N	\N	\N	\N
737	media	through	996	432	858	{read}	box	641	\N	\N	tablet	\N	\N	\N	\N
738	direction	stock	969	890	145	{protect,article}	draw	131	\N	\N	tablet	\N	\N	\N	\N
739	note	air	300	398	632	{participant,accept}	detail	654	\N	\N	tablet	\N	\N	\N	\N
740	area	defense	207	613	278	{trade,fill}	star	610	\N	\N	tablet	\N	\N	\N	\N
743	already	four	924	694	26	{price}	court	789	\N	\N	tablet	\N	\N	\N	\N
744	part	relationship	466	272	769	{important}	force	291	\N	\N	tablet	\N	\N	\N	\N
745	similar	analysis	823	87	417	{yet,camera}	forward	29	\N	\N	tablet	\N	\N	\N	\N
746	certain	remain	597	737	134	{add,degree}	start	504	\N	\N	tablet	\N	\N	\N	\N
747	decision	the	862	791	239	{indeed}	various	386	\N	\N	tablet	\N	\N	\N	\N
748	draw	bank	64	421	616	{technology}	fine	256	\N	\N	tablet	\N	\N	\N	\N
751	face	of	848	47	599	{seek,show}	however	363	\N	\N	tablet	\N	\N	\N	\N
753	never	war	877	788	176	{field,drop}	during	898	\N	\N	tablet	\N	\N	\N	\N
755	job	still	791	719	223	{hundred,subject}	factor	980	\N	\N	tablet	\N	\N	\N	\N
756	some	happy	852	550	331	{conference,least}	south	602	\N	\N	tablet	\N	\N	\N	\N
758	oil	agreement	248	882	166	{will}	about	266	\N	\N	tablet	\N	\N	\N	\N
759	there	possible	208	142	169	{perhaps}	child	324	\N	\N	tablet	\N	\N	\N	\N
762	air	support	319	791	226	{wrong,a}	project	524	\N	\N	tablet	\N	\N	\N	\N
763	price	sound	668	457	345	{five}	beat	71	\N	\N	tablet	\N	\N	\N	\N
764	worker	decision	844	237	123	{man,special}	service	732	\N	\N	tablet	\N	\N	\N	\N
765	especially	member	570	470	11	{player}	shake	470	\N	\N	tablet	\N	\N	\N	\N
766	law	least	554	113	197	{real}	throughout	250	\N	\N	tablet	\N	\N	\N	\N
767	state	including	220	532	622	{mouth,each}	tonight	931	\N	\N	tablet	\N	\N	\N	\N
768	with	player	271	943	358	{small,quickly}	wait	295	\N	\N	tablet	\N	\N	\N	\N
769	seek	event	30	896	11	{spend,wish}	listen	44	\N	\N	tablet	\N	\N	\N	\N
770	have	ago	79	324	464	{letter,own}	girl	118	\N	\N	tablet	\N	\N	\N	\N
771	kid	always	690	891	114	{half}	site	31	\N	\N	tablet	\N	\N	\N	\N
773	continue	certain	30	573	233	{travel,early}	he	178	\N	\N	tablet	\N	\N	\N	\N
774	once	poor	545	973	939	{character}	music	230	\N	\N	tablet	\N	\N	\N	\N
775	least	site	65	17	893	{catch}	you	329	\N	\N	tablet	\N	\N	\N	\N
776	door	true	591	87	530	{group,check}	relationship	200	\N	\N	tablet	\N	\N	\N	\N
777	including	let	9	557	287	{prove,but}	enter	266	\N	\N	tablet	\N	\N	\N	\N
778	nearly	as	395	895	414	{mind,environment}	church	286	\N	\N	tablet	\N	\N	\N	\N
779	child	organization	185	778	491	{event,society}	herself	137	\N	\N	tablet	\N	\N	\N	\N
781	scientist	try	867	325	149	{summer}	meet	327	\N	\N	tablet	\N	\N	\N	\N
782	term	expect	42	902	419	{trip,building}	sell	852	\N	\N	tablet	\N	\N	\N	\N
783	up	bar	901	804	67	{reality}	after	135	\N	\N	tablet	\N	\N	\N	\N
784	play	which	421	560	399	{place,great}	develop	607	\N	\N	tablet	\N	\N	\N	\N
785	future	moment	223	199	312	{who,once}	control	981	\N	\N	tablet	\N	\N	\N	\N
786	that	chair	932	531	24	{successful,increase}	thank	196	\N	\N	tablet	\N	\N	\N	\N
787	cultural	reveal	534	759	547	{garden}	popular	236	\N	\N	tablet	\N	\N	\N	\N
790	place	weight	102	859	969	{audience}	including	726	\N	\N	tablet	\N	\N	\N	\N
791	professor	couple	441	487	979	{authority}	hundred	965	\N	\N	tablet	\N	\N	\N	\N
792	but	happen	224	580	480	{actually}	about	994	\N	\N	tablet	\N	\N	\N	\N
795	each	sit	377	444	837	{heavy}	travel	867	\N	\N	tablet	\N	\N	\N	\N
796	car	say	454	267	965	{eight,glass}	evidence	365	\N	\N	tablet	\N	\N	\N	\N
797	really	mention	822	580	235	{sound,put}	agreement	924	\N	\N	tablet	\N	\N	\N	\N
798	end	form	887	109	186	{edge,way}	amount	78	\N	\N	tablet	\N	\N	\N	\N
800	remember	perhaps	472	923	113	{century}	character	466	\N	\N	tablet	\N	\N	\N	\N
801	land	strong	525	94	910	{before,commercial}	customer	694	\N	\N	smartwatch	\N	\N	\N	\N
803	bag	necessary	586	172	441	{camera,pick}	social	734	\N	\N	smartwatch	\N	\N	\N	\N
804	behind	sister	454	748	250	{analysis,remain}	interview	768	\N	\N	smartwatch	\N	\N	\N	\N
805	determine	board	393	29	984	{both,know}	major	124	\N	\N	smartwatch	\N	\N	\N	\N
806	number	instead	294	266	26	{floor}	sell	333	\N	\N	smartwatch	\N	\N	\N	\N
807	practice	decision	641	527	679	{against}	even	225	\N	\N	smartwatch	\N	\N	\N	\N
808	pattern	arm	301	758	83	{law}	thought	467	\N	\N	smartwatch	\N	\N	\N	\N
810	oil	community	828	695	484	{create}	power	577	\N	\N	smartwatch	\N	\N	\N	\N
812	ask	member	20	286	38	{make,young}	local	319	\N	\N	smartwatch	\N	\N	\N	\N
813	very	language	181	551	489	{pick,ball}	glass	18	\N	\N	smartwatch	\N	\N	\N	\N
814	eight	six	466	895	351	{different}	small	869	\N	\N	smartwatch	\N	\N	\N	\N
815	tend	better	991	232	355	{tend}	mission	24	\N	\N	smartwatch	\N	\N	\N	\N
816	discussion	power	452	525	203	{entire,determine}	modern	157	\N	\N	smartwatch	\N	\N	\N	\N
817	side	force	184	238	84	{some,summer}	vote	42	\N	\N	smartwatch	\N	\N	\N	\N
818	each	east	179	328	5	{suddenly,environment}	how	552	\N	\N	smartwatch	\N	\N	\N	\N
819	write	evening	836	635	540	{other}	young	40	\N	\N	smartwatch	\N	\N	\N	\N
820	single	move	858	433	228	{beautiful,gas}	firm	690	\N	\N	smartwatch	\N	\N	\N	\N
821	choose	shake	532	995	982	{public,record}	kitchen	194	\N	\N	smartwatch	\N	\N	\N	\N
823	course	ready	409	524	437	{sit,visit}	operation	454	\N	\N	smartwatch	\N	\N	\N	\N
824	wide	good	346	579	948	{total}	once	81	\N	\N	smartwatch	\N	\N	\N	\N
825	around	stand	484	853	750	{table,style}	not	166	\N	\N	smartwatch	\N	\N	\N	\N
828	attorney	later	356	959	725	{significant,probably}	writer	892	\N	\N	smartwatch	\N	\N	\N	\N
829	clear	they	408	565	386	{occur,popular}	physical	246	\N	\N	smartwatch	\N	\N	\N	\N
830	travel	life	368	556	558	{return}	show	272	\N	\N	smartwatch	\N	\N	\N	\N
831	century	parent	21	873	674	{beat}	writer	270	\N	\N	smartwatch	\N	\N	\N	\N
834	green	yes	17	164	841	{sell,carry}	yet	114	\N	\N	smartwatch	\N	\N	\N	\N
835	source	program	225	156	116	{kid,response}	open	59	\N	\N	smartwatch	\N	\N	\N	\N
836	year	worry	177	70	98	{happen,likely}	issue	563	\N	\N	smartwatch	\N	\N	\N	\N
837	end	expert	748	671	480	{night}	political	60	\N	\N	smartwatch	\N	\N	\N	\N
838	build	foot	278	53	542	{full,play}	mother	911	\N	\N	smartwatch	\N	\N	\N	\N
840	south	soon	449	114	347	{anyone,security}	industry	895	\N	\N	smartwatch	\N	\N	\N	\N
844	this	available	273	192	155	{treat}	surface	339	\N	\N	smartwatch	\N	\N	\N	\N
845	explain	arm	986	361	991	{around,leg}	admit	69	\N	\N	smartwatch	\N	\N	\N	\N
846	produce	report	647	608	813	{I,how}	prepare	590	\N	\N	smartwatch	\N	\N	\N	\N
848	environment	worry	737	937	862	{sure}	wish	545	\N	\N	smartwatch	\N	\N	\N	\N
850	almost	article	632	541	934	{floor}	none	792	\N	\N	smartwatch	\N	\N	\N	\N
852	yes	safe	410	436	501	{almost,member}	himself	721	\N	\N	smartwatch	\N	\N	\N	\N
853	executive	financial	799	35	545	{after}	teacher	25	\N	\N	smartwatch	\N	\N	\N	\N
854	wait	reality	377	255	160	{bad}	purpose	932	\N	\N	smartwatch	\N	\N	\N	\N
855	energy	major	406	455	523	{low,give}	government	437	\N	\N	smartwatch	\N	\N	\N	\N
856	who	hour	611	880	347	{home,seven}	major	922	\N	\N	smartwatch	\N	\N	\N	\N
857	around	idea	349	84	607	{information}	will	796	\N	\N	smartwatch	\N	\N	\N	\N
858	plan	cut	143	940	869	{former,best}	either	971	\N	\N	smartwatch	\N	\N	\N	\N
859	close	avoid	181	94	9	{show}	final	25	\N	\N	smartwatch	\N	\N	\N	\N
860	movement	set	188	286	199	{window,write}	every	412	\N	\N	smartwatch	\N	\N	\N	\N
862	mission	then	997	881	943	{what,ability}	close	571	\N	\N	smartwatch	\N	\N	\N	\N
863	cultural	sure	394	890	108	{ago,couple}	among	475	\N	\N	smartwatch	\N	\N	\N	\N
864	listen	I	248	73	745	{alone,test}	feel	138	\N	\N	smartwatch	\N	\N	\N	\N
865	woman	piece	703	619	28	{enjoy,trip}	our	653	\N	\N	smartwatch	\N	\N	\N	\N
866	member	region	58	298	354	{add}	likely	712	\N	\N	smartwatch	\N	\N	\N	\N
867	ground	would	636	450	325	{person}	early	781	\N	\N	smartwatch	\N	\N	\N	\N
868	once	sister	546	324	942	{present,south}	edge	712	\N	\N	smartwatch	\N	\N	\N	\N
869	member	mean	968	778	750	{image}	my	598	\N	\N	smartwatch	\N	\N	\N	\N
871	occur	product	416	754	127	{size}	cut	12	\N	\N	smartwatch	\N	\N	\N	\N
872	like	father	937	957	794	{interview,themselves}	structure	781	\N	\N	smartwatch	\N	\N	\N	\N
873	bank	nearly	996	357	180	{coach,check}	management	753	\N	\N	smartwatch	\N	\N	\N	\N
874	home	federal	42	147	951	{job,game}	short	529	\N	\N	smartwatch	\N	\N	\N	\N
875	mouth	now	718	628	421	{one}	unit	808	\N	\N	smartwatch	\N	\N	\N	\N
877	want	guess	831	610	263	{woman}	provide	798	\N	\N	smartwatch	\N	\N	\N	\N
879	design	beyond	150	332	175	{black,feel}	care	403	\N	\N	smartwatch	\N	\N	\N	\N
880	eat	forget	592	949	937	{under}	mean	516	\N	\N	smartwatch	\N	\N	\N	\N
881	move	trouble	917	658	81	{black,example}	over	267	\N	\N	smartwatch	\N	\N	\N	\N
882	speak	her	402	501	747	{economy}	doctor	824	\N	\N	smartwatch	\N	\N	\N	\N
883	medical	early	642	758	298	{bit}	help	863	\N	\N	smartwatch	\N	\N	\N	\N
884	available	far	649	959	276	{build,go}	finish	281	\N	\N	smartwatch	\N	\N	\N	\N
885	job	send	128	262	989	{so}	song	994	\N	\N	smartwatch	\N	\N	\N	\N
886	fire	cold	123	854	688	{take}	particularly	480	\N	\N	smartwatch	\N	\N	\N	\N
888	officer	act	244	43	231	{international}	seem	111	\N	\N	smartwatch	\N	\N	\N	\N
889	Congress	begin	835	955	99	{author}	door	593	\N	\N	smartwatch	\N	\N	\N	\N
890	answer	information	674	117	45	{begin,speak}	thought	425	\N	\N	smartwatch	\N	\N	\N	\N
891	enjoy	room	151	835	356	{old}	sense	52	\N	\N	smartwatch	\N	\N	\N	\N
892	box	thing	863	818	932	{media,create}	reduce	999	\N	\N	smartwatch	\N	\N	\N	\N
893	or	mouth	814	629	640	{certain}	read	164	\N	\N	smartwatch	\N	\N	\N	\N
894	once	produce	550	588	502	{guy}	question	361	\N	\N	smartwatch	\N	\N	\N	\N
895	lot	nice	849	620	408	{participant}	walk	334	\N	\N	smartwatch	\N	\N	\N	\N
897	official	hundred	16	828	590	{student,arm}	make	102	\N	\N	smartwatch	\N	\N	\N	\N
899	worry	policy	288	562	313	{policy,certain}	his	470	\N	\N	smartwatch	\N	\N	\N	\N
900	brother	order	393	121	832	{Mrs}	personal	314	\N	\N	smartwatch	\N	\N	\N	\N
901	resource	ball	657	682	798	{word}	spring	522	\N	\N	camera	\N	\N	\N	\N
902	nearly	vote	907	764	962	{ask}	build	375	\N	\N	camera	\N	\N	\N	\N
903	agree	so	727	458	97	{far,media}	rate	832	\N	\N	camera	\N	\N	\N	\N
904	foot	recently	160	282	117	{seat,song}	effort	259	\N	\N	camera	\N	\N	\N	\N
905	step	hear	842	217	337	{beyond}	score	572	\N	\N	camera	\N	\N	\N	\N
907	security	career	495	368	657	{summer}	personal	419	\N	\N	camera	\N	\N	\N	\N
909	consumer	both	55	541	303	{big,law}	necessary	204	\N	\N	camera	\N	\N	\N	\N
910	effort	several	235	857	754	{source}	somebody	386	\N	\N	camera	\N	\N	\N	\N
911	off	American	263	893	2	{owner,white}	ever	791	\N	\N	camera	\N	\N	\N	\N
912	local	alone	144	438	784	{both,our}	garden	93	\N	\N	camera	\N	\N	\N	\N
913	event	draw	819	853	283	{reveal}	culture	225	\N	\N	camera	\N	\N	\N	\N
914	project	manager	437	415	146	{responsibility}	eat	683	\N	\N	camera	\N	\N	\N	\N
915	decision	crime	843	531	683	{at}	ready	166	\N	\N	camera	\N	\N	\N	\N
917	of	full	258	581	773	{mind}	environmental	32	\N	\N	camera	\N	\N	\N	\N
918	of	huge	264	946	494	{evening}	gun	351	\N	\N	camera	\N	\N	\N	\N
919	quickly	character	932	961	858	{half}	various	715	\N	\N	camera	\N	\N	\N	\N
920	imagine	visit	266	659	931	{TV}	more	75	\N	\N	camera	\N	\N	\N	\N
921	hard	move	705	378	705	{reveal,go}	region	771	\N	\N	camera	\N	\N	\N	\N
922	agreement	conference	785	195	109	{those}	best	956	\N	\N	camera	\N	\N	\N	\N
923	action	shake	348	587	338	{good,case}	in	352	\N	\N	camera	\N	\N	\N	\N
924	star	act	809	708	264	{once,of}	floor	773	\N	\N	camera	\N	\N	\N	\N
925	then	hour	283	792	362	{out}	medical	952	\N	\N	camera	\N	\N	\N	\N
927	public	rule	903	355	792	{off,full}	house	735	\N	\N	camera	\N	\N	\N	\N
928	available	factor	109	609	544	{door}	mind	176	\N	\N	camera	\N	\N	\N	\N
930	military	win	434	409	637	{recognize}	plan	70	\N	\N	camera	\N	\N	\N	\N
931	three	skill	157	749	602	{property}	agent	863	\N	\N	camera	\N	\N	\N	\N
933	become	friend	420	940	803	{like}	idea	923	\N	\N	camera	\N	\N	\N	\N
934	we	stay	676	505	221	{maintain,can}	nation	992	\N	\N	camera	\N	\N	\N	\N
935	purpose	discover	798	38	882	{bag,material}	part	301	\N	\N	camera	\N	\N	\N	\N
936	poor	scientist	143	258	843	{will,step}	off	488	\N	\N	camera	\N	\N	\N	\N
937	middle	section	447	342	534	{human,reflect}	must	216	\N	\N	camera	\N	\N	\N	\N
938	act	resource	41	319	515	{few,right}	key	510	\N	\N	camera	\N	\N	\N	\N
939	role	special	271	164	297	{help,detail}	positive	819	\N	\N	camera	\N	\N	\N	\N
940	outside	north	343	998	153	{movie,property}	key	397	\N	\N	camera	\N	\N	\N	\N
941	do	stay	690	453	964	{particular,who}	realize	739	\N	\N	camera	\N	\N	\N	\N
942	partner	per	917	908	393	{nor}	may	95	\N	\N	camera	\N	\N	\N	\N
943	here	economy	211	995	953	{surface,such}	collection	53	\N	\N	camera	\N	\N	\N	\N
945	future	kind	979	633	642	{blue,necessary}	drive	133	\N	\N	camera	\N	\N	\N	\N
948	discover	above	20	669	455	{fight}	anyone	173	\N	\N	camera	\N	\N	\N	\N
949	military	nation	828	902	764	{listen,whole}	there	824	\N	\N	camera	\N	\N	\N	\N
950	fine	administration	632	850	215	{artist,career}	put	297	\N	\N	camera	\N	\N	\N	\N
951	enjoy	state	169	45	40	{wear,wide}	choose	400	\N	\N	camera	\N	\N	\N	\N
952	serve	leg	978	555	701	{because}	present	390	\N	\N	camera	\N	\N	\N	\N
953	daughter	outside	447	932	52	{firm}	baby	342	\N	\N	camera	\N	\N	\N	\N
954	central	chance	602	590	499	{sure}	sign	594	\N	\N	camera	\N	\N	\N	\N
955	federal	man	691	92	345	{number,water}	role	887	\N	\N	camera	\N	\N	\N	\N
958	ever	give	430	695	405	{far}	fire	262	\N	\N	camera	\N	\N	\N	\N
959	glass	property	2	289	34	{animal,stay}	you	800	\N	\N	camera	\N	\N	\N	\N
960	figure	already	185	634	259	{leave,off}	development	711	\N	\N	camera	\N	\N	\N	\N
961	security	agree	313	103	305	{half}	until	489	\N	\N	camera	\N	\N	\N	\N
963	forget	success	690	409	565	{much}	rate	581	\N	\N	camera	\N	\N	\N	\N
964	news	indicate	305	3	745	{time,role}	know	349	\N	\N	camera	\N	\N	\N	\N
965	last	force	263	166	613	{this}	possible	75	\N	\N	camera	\N	\N	\N	\N
966	eight	all	800	719	697	{eat,require}	Congress	544	\N	\N	camera	\N	\N	\N	\N
967	stop	list	740	24	226	{agree,door}	many	699	\N	\N	camera	\N	\N	\N	\N
968	decision	growth	688	5	541	{I,outside}	share	783	\N	\N	camera	\N	\N	\N	\N
969	decide	give	818	989	792	{large}	police	55	\N	\N	camera	\N	\N	\N	\N
970	teacher	here	940	799	406	{almost,trip}	simply	196	\N	\N	camera	\N	\N	\N	\N
971	television	scientist	228	94	627	{state,whole}	society	553	\N	\N	camera	\N	\N	\N	\N
973	responsibility	child	611	262	841	{condition,full}	toward	254	\N	\N	camera	\N	\N	\N	\N
974	scene	sea	300	635	264	{fish}	eat	730	\N	\N	camera	\N	\N	\N	\N
976	realize	gun	225	792	881	{other}	rather	550	\N	\N	camera	\N	\N	\N	\N
977	pattern	there	23	108	224	{six,southern}	news	173	\N	\N	camera	\N	\N	\N	\N
978	speak	between	330	225	167	{everything}	impact	624	\N	\N	camera	\N	\N	\N	\N
979	religious	either	398	269	264	{prepare}	effort	651	\N	\N	camera	\N	\N	\N	\N
980	small	very	385	43	787	{program}	deep	885	\N	\N	camera	\N	\N	\N	\N
981	push	south	737	509	962	{language,step}	floor	309	\N	\N	camera	\N	\N	\N	\N
983	piece	what	294	937	287	{wrong,city}	former	495	\N	\N	camera	\N	\N	\N	\N
985	police	reason	63	74	267	{city}	see	794	\N	\N	camera	\N	\N	\N	\N
986	case	attack	214	465	885	{reason,most}	company	42	\N	\N	camera	\N	\N	\N	\N
987	build	good	346	864	5	{method,everything}	support	804	\N	\N	camera	\N	\N	\N	\N
989	event	student	376	956	624	{attention,race}	answer	779	\N	\N	camera	\N	\N	\N	\N
990	another	start	760	443	883	{company,attention}	western	297	\N	\N	camera	\N	\N	\N	\N
991	news	talk	99	83	980	{community}	management	723	\N	\N	camera	\N	\N	\N	\N
992	and	if	936	375	583	{same,notice}	difficult	723	\N	\N	camera	\N	\N	\N	\N
996	something	place	99	710	356	{lose,whether}	manage	518	\N	\N	camera	\N	\N	\N	\N
997	generation	he	830	789	888	{to}	follow	388	\N	\N	camera	\N	\N	\N	\N
998	watch	mind	966	496	577	{hit}	exactly	39	\N	\N	camera	\N	\N	\N	\N
999	reduce	describe	204	697	256	{camera}	opportunity	123	\N	\N	camera	\N	\N	\N	\N
1000	feeling	those	996	967	571	{best}	space	6	\N	\N	camera	\N	\N	\N	\N
1001	large	seek	293	852	853	{manage}	hot	56	\N	\N	phone	these	\N	\N	\N
1003	skin	standard	69	736	161	{meeting,act}	maintain	275	\N	\N	phone	during	\N	\N	\N
1004	site	role	784	830	134	{west}	paper	923	\N	\N	phone	house	\N	\N	\N
1005	six	remember	198	945	783	{meeting}	loss	617	\N	\N	phone	include	\N	\N	\N
1006	model	region	427	222	801	{international,how}	often	555	\N	\N	phone	culture	\N	\N	\N
1007	woman	it	869	502	178	{test}	least	823	\N	\N	phone	about	\N	\N	\N
1008	that	themselves	511	249	209	{bag}	important	699	\N	\N	phone	third	\N	\N	\N
1011	themselves	animal	266	990	67	{any,million}	read	81	\N	\N	phone	year	\N	\N	\N
1013	station	investment	581	481	444	{current}	before	950	\N	\N	phone	provide	\N	\N	\N
1014	claim	discussion	130	568	604	{born}	hold	815	\N	\N	phone	blood	\N	\N	\N
1009	approach	seek	156	251	922	{nothing}	main	625	\N	\N	phone	include	\N	\N	1024
1012	nice	management	365	541	286	{camera}	everybody	673	\N	\N	phone	every	\N	\N	1004
1016	choice	Democrat	230	455	692	{general,feel}	go	341	\N	\N	phone	raise	\N	\N	\N
1019	sister	stay	680	738	478	{line,break}	reflect	361	\N	\N	phone	year	\N	\N	\N
1021	police	store	289	613	214	{ask}	call	624	\N	\N	phone	heart	\N	\N	\N
1022	deep	best	226	290	109	{lead}	they	672	\N	\N	phone	sort	\N	\N	\N
1023	store	as	233	867	435	{blue}	loss	688	\N	\N	phone	deep	\N	\N	\N
1027	Democrat	speak	13	777	468	{kitchen,blood}	game	430	\N	\N	phone	food	\N	\N	\N
1028	amount	artist	250	664	108	{campaign}	mean	518	\N	\N	phone	recognize	\N	\N	\N
1029	treat	prepare	53	757	392	{road}	must	956	\N	\N	phone	first	\N	\N	\N
1032	I	today	950	661	609	{none,challenge}	someone	399	\N	\N	phone	statement	\N	\N	\N
1033	check	tell	986	244	531	{positive}	unit	574	\N	\N	phone	air	\N	\N	\N
1034	fund	assume	643	45	989	{save}	fast	663	\N	\N	phone	leader	\N	\N	\N
1035	near	claim	859	324	37	{activity}	particularly	450	\N	\N	phone	drug	\N	\N	\N
1036	brother	recently	862	720	183	{training,himself}	determine	150	\N	\N	phone	simple	\N	\N	\N
1037	western	tough	148	258	517	{claim,feel}	window	709	\N	\N	phone	near	\N	\N	\N
1039	appear	data	970	393	859	{line,Republican}	free	376	\N	\N	phone	later	\N	\N	\N
1040	they	street	216	39	543	{design,democratic}	southern	226	\N	\N	phone	lot	\N	\N	\N
1041	least	down	987	493	977	{similar}	among	173	\N	\N	phone	price	\N	\N	\N
1043	sea	little	713	306	952	{reflect,how}	find	846	\N	\N	phone	television	\N	\N	\N
1046	fish	thousand	993	789	584	{indicate}	couple	778	\N	\N	phone	little	\N	\N	\N
1047	such	during	38	639	323	{partner}	hope	813	\N	\N	phone	property	\N	\N	\N
1048	team	total	541	667	183	{daughter,soon}	future	554	\N	\N	phone	hair	\N	\N	\N
1049	house	often	83	420	739	{west}	student	839	\N	\N	phone	them	\N	\N	\N
1050	almost	change	558	45	811	{last}	sense	328	\N	\N	phone	remain	\N	\N	\N
1051	certainly	today	959	684	955	{film,generation}	PM	463	\N	\N	phone	ten	\N	\N	\N
1053	pretty	meeting	862	823	88	{well,which}	team	375	\N	\N	phone	able	\N	\N	\N
1054	likely	main	11	292	217	{particularly,miss}	west	384	\N	\N	phone	situation	\N	\N	\N
1055	argue	suffer	855	984	641	{raise}	southern	98	\N	\N	phone	leader	\N	\N	\N
1056	despite	conference	457	816	863	{data,her}	ten	315	\N	\N	phone	when	\N	\N	\N
1057	range	good	717	178	307	{response}	office	763	\N	\N	phone	crime	\N	\N	\N
1058	remember	financial	338	934	341	{control}	model	991	\N	\N	phone	us	\N	\N	\N
1059	fast	community	42	53	983	{join}	agreement	725	\N	\N	phone	true	\N	\N	\N
1060	occur	moment	187	616	474	{drop,effort}	create	990	\N	\N	phone	three	\N	\N	\N
1061	throughout	fly	731	38	273	{best,although}	not	988	\N	\N	phone	be	\N	\N	\N
1062	middle	decade	68	736	656	{political}	would	904	\N	\N	phone	source	\N	\N	\N
1063	decide	yes	933	886	13	{instead}	only	770	\N	\N	phone	anything	\N	\N	\N
1064	hand	scene	424	356	277	{could,past}	plan	40	\N	\N	phone	nature	\N	\N	\N
1065	born	forget	396	114	313	{tree,down}	prevent	770	\N	\N	phone	allow	\N	\N	\N
1068	name	fund	487	726	783	{position}	born	949	\N	\N	phone	both	\N	\N	\N
1069	your	individual	909	906	359	{him}	black	978	\N	\N	phone	fast	\N	\N	\N
1071	wait	audience	660	892	564	{president}	later	136	\N	\N	phone	wrong	\N	\N	\N
1073	necessary	positive	133	141	623	{share}	increase	131	\N	\N	phone	first	\N	\N	\N
1074	assume	impact	794	35	611	{yes,discover}	together	280	\N	\N	phone	wonder	\N	\N	\N
1075	mention	leg	361	8	921	{describe}	out	718	\N	\N	phone	American	\N	\N	\N
1076	goal	heart	856	9	66	{appear,everyone}	price	965	\N	\N	phone	how	\N	\N	\N
1017	game	argue	686	581	188	{because}	effort	785	\N	\N	phone	story	\N	\N	1086
1020	pattern	responsibility	160	469	206	{box,prove}	long	549	\N	\N	phone	under	\N	\N	1071
1031	loss	away	497	378	563	{any,international}	operation	30	\N	\N	phone	case	\N	\N	1005
1044	rule	require	860	824	791	{hotel}	how	778	\N	\N	phone	network	\N	\N	1010
1077	song	rest	734	444	732	{build,fire}	their	317	\N	\N	phone	they	\N	\N	\N
1078	after	right	702	137	402	{prepare,anyone}	establish	774	\N	\N	phone	throughout	\N	\N	\N
1080	father	never	906	487	191	{best,deep}	standard	9	\N	\N	phone	group	\N	\N	\N
1081	finish	and	319	236	712	{central}	great	512	\N	\N	phone	pay	\N	\N	\N
1082	she	name	62	803	8	{really}	shake	609	\N	\N	phone	everyone	\N	\N	\N
1084	someone	also	729	402	825	{bed,compare}	raise	228	\N	\N	phone	far	\N	\N	\N
1086	bit	hundred	741	224	166	{discover}	school	907	\N	\N	phone	concern	\N	\N	\N
1087	drug	much	925	940	339	{else,also}	born	89	\N	\N	phone	west	\N	\N	\N
1088	join	dinner	125	955	823	{already}	usually	210	\N	\N	phone	rise	\N	\N	\N
1090	nearly	while	795	723	85	{push,raise}	around	586	\N	\N	phone	this	\N	\N	\N
1093	property	born	896	948	506	{camera}	chance	468	\N	\N	phone	on	\N	\N	\N
1094	fly	hit	442	224	65	{woman}	ago	682	\N	\N	phone	specific	\N	\N	\N
1095	make	drug	650	258	337	{example,agent}	power	860	\N	\N	phone	company	\N	\N	\N
1096	fire	true	378	596	335	{guy,help}	exist	530	\N	\N	phone	chair	\N	\N	\N
1099	few	order	710	123	459	{commercial,find}	commercial	9	\N	\N	phone	up	\N	\N	\N
1100	information	section	231	977	312	{yes,despite}	store	685	\N	\N	phone	building	\N	\N	\N
932	little	cover	486	687	956	{interest,realize}	boy	506	\N	\N	camera	\N	98	\N	\N
946	wide	down	11	353	248	{support,future}	too	532	\N	\N	camera	\N	50	\N	\N
788	risk	those	216	492	169	{girl}	beyond	674	\N	\N	tablet	\N	23	\N	\N
811	scene	mission	501	577	86	{follow}	pass	61	\N	\N	smartwatch	\N	25	\N	\N
349	employee	trade	554	641	451	{movement,nearly}	measure	779	\N	\N	electronics	\N	25	\N	\N
487	fall	resource	457	343	513	{effort}	interview	945	that	165	computer	\N	74	\N	\N
432	middle	particular	799	477	122	{task}	sort	397	change	92	computer	\N	30	\N	\N
870	who	laugh	833	700	458	{economy}	need	434	\N	\N	smartwatch	\N	92	\N	\N
1002	able	brother	956	320	673	{soon}	purpose	131	\N	\N	phone	year	14	\N	\N
760	message	soon	931	723	217	{type}	keep	40	\N	\N	tablet	\N	79	\N	\N
385	campaign	question	137	56	615	{value}	accept	180	\N	\N	electronics	\N	52	\N	\N
947	coach	outside	961	730	247	{agent}	instead	34	\N	\N	camera	\N	37	\N	\N
449	point	dog	416	392	428	{owner}	speak	606	prove	612	computer	\N	60	\N	\N
375	heart	dinner	276	543	51	{degree,popular}	law	32	\N	\N	electronics	\N	30	\N	\N
896	think	including	543	877	73	{theory}	fill	980	\N	\N	smartwatch	\N	45	\N	\N
424	like	give	158	996	538	{begin}	very	970	dark	261	computer	\N	85	\N	\N
512	everyone	wait	670	76	200	{deep}	site	193	show	701	desktop	\N	3	\N	\N
447	under	professor	401	729	201	{peace}	student	641	everybody	958	computer	\N	82	\N	\N
1066	course	role	255	235	531	{watch,offer}	mission	581	\N	\N	phone	mention	65	\N	\N
832	everything	peace	727	898	400	{major}	sign	271	\N	\N	smartwatch	\N	39	\N	\N
408	recent	let	975	367	893	{listen}	thought	120	talk	796	computer	\N	7	\N	\N
548	mean	industry	64	434	750	{fall}	thing	68	want	57	desktop	\N	51	\N	\N
1010	plant	time	629	718	983	{American}	expert	562	\N	\N	phone	car	11	\N	\N
348	those	partner	907	992	726	{lose,ago}	budget	58	\N	\N	electronics	\N	43	\N	\N
822	expect	sister	859	42	620	{message,eye}	song	421	\N	\N	smartwatch	\N	34	\N	\N
1045	water	third	926	929	219	{control,reveal}	ground	127	\N	\N	phone	Republican	1	\N	\N
371	model	option	125	338	356	{oil}	case	117	\N	\N	electronics	\N	41	\N	\N
799	may	my	430	897	601	{fight,may}	heart	63	\N	\N	tablet	\N	30	\N	\N
742	political	develop	967	157	575	{nation,line}	case	967	\N	\N	tablet	\N	66	\N	\N
757	all	write	673	493	259	{rich}	rise	152	\N	\N	tablet	\N	86	\N	\N
600	everybody	involve	912	492	566	{around}	administration	923	determine	54	desktop	\N	65	\N	\N
389	matter	activity	726	107	763	{stand,bank}	most	71	\N	\N	electronics	\N	43	\N	\N
436	ago	smile	137	576	725	{head,agent}	material	790	president	548	computer	\N	35	\N	\N
754	center	anyone	256	336	618	{security}	instead	255	\N	\N	tablet	\N	62	\N	\N
523	knowledge	opportunity	469	914	365	{author}	many	521	according	455	desktop	\N	28	\N	\N
1079	important	organization	369	803	459	{price,rule}	determine	300	\N	\N	phone	occur	\N	\N	1092
1083	member	certainly	475	3	1000	{yeah}	rate	136	\N	\N	phone	sound	\N	\N	1040
1085	day	place	608	873	865	{song,see}	born	188	\N	\N	phone	without	\N	\N	1055
583	even	leg	801	516	643	{news,number}	run	351	administration	670	desktop	\N	46	\N	\N
382	partner	social	696	591	636	{process,at}	doctor	578	\N	\N	electronics	\N	70	\N	\N
789	agent	worry	413	911	290	{less}	expect	155	\N	\N	tablet	\N	41	\N	\N
772	find	attention	652	928	139	{several}	party	451	\N	\N	tablet	\N	14	\N	\N
929	theory	dinner	773	231	792	{dark,maintain}	role	869	\N	\N	camera	\N	57	\N	\N
566	daughter	maybe	945	676	889	{particularly,good}	same	886	suddenly	696	desktop	\N	10	\N	\N
340	understand	check	400	127	685	{determine,chance}	notice	302	\N	\N	electronics	\N	4	\N	\N
498	nature	team	77	564	324	{former,try}	staff	949	economy	304	computer	\N	93	\N	\N
392	point	month	77	936	594	{group}	hair	693	\N	\N	electronics	\N	1	\N	\N
851	people	soldier	209	307	176	{benefit}	former	663	\N	\N	smartwatch	\N	79	\N	\N
1072	old	natural	411	143	626	{staff,movement}	war	199	\N	\N	phone	prevent	9	\N	\N
847	price	staff	925	994	182	{according}	grow	783	\N	\N	smartwatch	\N	59	\N	\N
409	imagine	institution	42	939	721	{sound,situation}	worker	433	teach	901	computer	\N	94	\N	\N
843	body	wait	358	438	442	{agree,involve}	about	602	\N	\N	smartwatch	\N	50	\N	\N
729	live	edge	269	796	813	{through,they}	wife	920	\N	\N	tablet	\N	22	\N	\N
1042	week	city	243	202	543	{receive,analysis}	book	658	\N	\N	phone	over	18	\N	\N
429	your	blood	600	23	526	{attack}	quite	438	peace	242	computer	\N	27	\N	\N
876	ask	newspaper	584	481	741	{speech,politics}	practice	597	\N	\N	smartwatch	\N	26	\N	\N
320	easy	because	276	476	279	{choice,truth}	else	652	\N	\N	electronics	\N	2	\N	\N
378	Mr	describe	696	337	281	{tree}	friend	528	\N	\N	electronics	\N	31	\N	\N
310	financial	two	984	307	713	{painting}	why	554	\N	\N	electronics	\N	68	\N	\N
988	leader	production	836	893	930	{heart,practice}	enough	434	\N	\N	camera	\N	64	\N	\N
457	return	here	801	324	164	{real}	challenge	980	rule	946	computer	\N	52	\N	\N
833	candidate	shoulder	789	820	603	{tough,successful}	politics	503	\N	\N	smartwatch	\N	67	\N	\N
1067	more	market	271	11	6	{song}	situation	800	\N	\N	phone	third	37	\N	\N
550	very	old	20	627	10	{compare}	system	481	mean	205	desktop	\N	98	\N	\N
1052	remain	pick	766	196	915	{financial,management}	in	475	\N	\N	phone	first	35	\N	\N
367	turn	successful	336	5	793	{much}	imagine	842	\N	\N	electronics	\N	13	\N	\N
439	rather	face	508	837	286	{than,anyone}	line	951	part	156	computer	\N	11	\N	\N
532	happy	indicate	775	517	768	{measure,area}	scientist	310	response	301	desktop	\N	10	\N	\N
898	trip	trouble	462	90	1	{line}	move	760	\N	\N	smartwatch	\N	96	\N	\N
994	business	indicate	623	206	116	{speech}	return	880	\N	\N	camera	\N	97	\N	\N
826	hotel	team	919	441	165	{American}	take	274	\N	\N	smartwatch	\N	31	\N	\N
454	begin	drug	91	527	848	{stop,accept}	into	214	finally	723	computer	\N	62	\N	\N
412	reduce	much	350	452	818	{trouble}	bar	651	exactly	625	computer	\N	66	\N	\N
450	crime	plan	133	689	552	{analysis}	common	950	own	248	computer	\N	56	\N	\N
595	finally	picture	214	22	168	{if,general}	alone	372	bit	189	desktop	\N	51	\N	\N
761	now	design	222	411	810	{environment}	reality	718	\N	\N	tablet	\N	45	\N	\N
995	easy	heavy	490	393	178	{modern}	member	226	\N	\N	camera	\N	48	\N	\N
334	machine	bag	224	548	433	{maintain,thus}	carry	49	\N	\N	electronics	\N	86	\N	\N
435	kind	guy	320	478	285	{or,step}	form	171	model	610	computer	\N	33	\N	\N
794	see	everyone	347	519	487	{civil,drug}	kind	525	\N	\N	tablet	\N	19	\N	\N
499	half	yet	881	529	137	{price}	defense	453	billion	834	computer	\N	72	\N	\N
518	board	attack	853	623	578	{hand,everybody}	charge	615	ok	697	desktop	\N	16	\N	\N
780	down	contain	633	214	539	{whom}	mention	530	\N	\N	tablet	\N	55	\N	\N
802	memory	serious	38	284	863	{door,record}	during	133	\N	\N	smartwatch	\N	18	\N	\N
842	at	me	85	235	838	{become,beautiful}	question	575	\N	\N	smartwatch	\N	95	\N	\N
839	sign	computer	760	658	213	{budget,car}	really	610	\N	\N	smartwatch	\N	90	\N	\N
734	during	appear	342	101	255	{up}	travel	504	\N	\N	tablet	\N	9	\N	\N
506	business	kitchen	468	343	950	{computer,she}	night	226	option	948	desktop	\N	91	\N	\N
549	remain	prove	10	36	551	{west,act}	long	341	lead	804	desktop	\N	74	\N	\N
878	college	station	904	401	553	{skin,may}	form	936	\N	\N	smartwatch	\N	37	\N	\N
593	myself	station	885	365	201	{sister,your}	everyone	824	interview	76	desktop	\N	65	\N	\N
489	once	form	595	152	604	{artist}	item	414	until	325	computer	\N	7	\N	\N
741	experience	threat	271	521	850	{white}	claim	334	\N	\N	tablet	\N	42	\N	\N
434	factor	rate	245	797	13	{beautiful}	rock	979	central	880	computer	\N	26	\N	\N
887	sort	significant	970	155	478	{player}	suggest	802	\N	\N	smartwatch	\N	76	\N	\N
339	scientist	theory	220	694	660	{forget}	exactly	888	\N	\N	electronics	\N	35	\N	\N
497	art	sense	525	309	807	{specific}	small	842	no	557	computer	\N	59	\N	\N
827	officer	later	423	767	493	{traditional,outside}	majority	981	\N	\N	smartwatch	\N	77	\N	\N
984	throw	sit	157	804	595	{stay,office}	member	145	\N	\N	camera	\N	91	\N	\N
1025	project	play	209	652	716	{process}	happy	317	\N	\N	phone	particularly	96	\N	\N
841	project	spring	392	959	670	{west,ground}	specific	298	\N	\N	smartwatch	\N	75	\N	\N
559	since	set	985	353	60	{policy}	west	454	show	206	desktop	\N	32	\N	\N
538	hour	try	722	704	315	{close,agree}	clearly	510	buy	175	desktop	\N	88	\N	\N
534	good	under	879	76	963	{oil}	standard	418	across	961	desktop	\N	10	\N	\N
502	all	development	719	680	645	{network,nor}	again	189	mind	997	desktop	\N	52	\N	\N
926	seven	foot	946	865	448	{skill}	each	628	\N	\N	camera	\N	93	\N	\N
916	figure	really	280	375	858	{act,yard}	prove	356	\N	\N	camera	\N	76	\N	\N
1026	prove	peace	765	307	637	{watch}	test	439	\N	\N	phone	manager	72	\N	\N
732	reduce	family	25	135	238	{sister,experience}	little	661	\N	\N	tablet	\N	5	\N	\N
405	feeling	ago	782	365	565	{land,writer}	seem	802	attack	582	computer	\N	32	\N	\N
1098	myself	operation	915	422	356	{customer,recent}	what	355	\N	\N	phone	already	65	\N	\N
1089	institution	television	337	815	574	{agree,through}	unit	812	\N	\N	phone	interesting	44	\N	\N
711	line	discussion	115	101	702	{sell,box}	teacher	620	\N	\N	tablet	\N	56	\N	\N
345	next	night	505	649	917	{place}	industry	808	\N	\N	electronics	\N	89	\N	\N
972	inside	life	343	873	682	{art,section}	would	197	\N	\N	camera	\N	72	\N	\N
397	head	method	121	616	149	{forget,could}	economy	303	\N	\N	electronics	\N	93	\N	\N
402	good	simple	380	419	416	{successful,none}	including	55	future	102	computer	\N	43	\N	\N
441	street	executive	637	86	749	{oil,throw}	record	345	purpose	951	computer	\N	21	\N	\N
579	drug	large	939	111	866	{moment}	quality	701	factor	324	desktop	\N	6	\N	\N
490	when	high	888	521	431	{actually,cut}	bar	350	item	873	computer	\N	37	\N	\N
351	size	surface	282	277	724	{enough}	where	422	\N	\N	electronics	\N	2	\N	\N
1024	detail	reason	858	308	505	{our}	moment	385	\N	\N	phone	question	19	\N	\N
849	prepare	leg	210	489	970	{several}	oil	368	\N	\N	smartwatch	\N	55	\N	\N
982	summer	indicate	872	376	416	{parent,stay}	wear	633	\N	\N	camera	\N	63	\N	\N
944	wait	cut	764	313	42	{morning,then}	situation	815	\N	\N	camera	\N	16	\N	\N
1030	after	attention	855	18	527	{institution,without}	security	950	\N	\N	phone	improve	82	\N	\N
957	type	that	855	973	497	{cut}	ago	822	\N	\N	camera	\N	46	\N	\N
381	cause	follow	950	892	278	{seven,oil}	I	94	\N	\N	electronics	\N	27	\N	\N
908	nation	enjoy	352	438	922	{choice,thought}	director	115	\N	\N	camera	\N	28	\N	\N
561	same	first	208	56	765	{outside}	and	90	score	976	desktop	\N	80	\N	\N
420	best	short	409	556	124	{force,miss}	break	950	clear	273	computer	\N	16	\N	\N
749	market	theory	41	923	466	{include}	truth	301	\N	\N	tablet	\N	53	\N	\N
712	structure	herself	653	713	705	{worry,ten}	current	94	\N	\N	tablet	\N	56	\N	\N
710	television	discover	663	273	743	{listen}	national	580	\N	\N	tablet	\N	80	\N	\N
515	card	store	675	641	592	{treat,one}	now	848	sell	725	desktop	\N	74	\N	\N
526	middle	so	114	365	893	{film}	even	262	out	770	desktop	\N	87	\N	\N
350	college	during	926	863	104	{money}	state	521	\N	\N	electronics	\N	9	\N	\N
1070	remember	commercial	613	951	866	{consider}	feeling	571	\N	\N	phone	put	42	\N	\N
535	young	these	238	623	44	{measure}	away	645	account	230	desktop	\N	86	\N	\N
527	add	great	555	760	56	{attorney,outside}	party	388	development	16	desktop	\N	45	\N	\N
504	court	but	998	601	519	{forward}	hit	739	street	273	desktop	\N	31	\N	\N
472	so	final	195	868	522	{season,it}	station	535	his	370	computer	\N	90	\N	\N
906	health	establish	963	630	8	{without}	oil	725	\N	\N	camera	\N	63	\N	\N
809	answer	as	381	409	653	{offer,doctor}	condition	887	\N	\N	smartwatch	\N	19	\N	\N
415	instead	amount	776	728	125	{painting}	course	492	husband	919	computer	\N	88	\N	\N
962	nearly	floor	837	261	562	{war}	win	130	\N	\N	camera	\N	69	\N	\N
406	admit	game	931	992	671	{show,decide}	reality	822	mention	486	computer	\N	5	\N	\N
793	last	season	679	415	894	{paper}	cut	65	\N	\N	tablet	\N	97	\N	\N
465	add	across	172	688	687	{score}	amount	876	fire	421	computer	\N	44	\N	\N
1018	hour	reach	940	50	377	{head,available}	admit	166	\N	\N	phone	first	62	\N	\N
478	after	who	928	361	482	{ability}	learn	566	start	971	computer	\N	71	\N	\N
1091	light	less	365	966	915	{put}	concern	186	\N	\N	phone	public	48	\N	\N
462	risk	theory	593	261	743	{sell}	marriage	735	whole	124	computer	\N	95	\N	\N
416	yeah	our	215	393	647	{federal}	choose	407	view	734	computer	\N	61	\N	\N
312	yet	remain	796	557	661	{enter,agent}	woman	539	\N	\N	electronics	\N	31	\N	\N
861	create	cost	731	555	524	{ahead,data}	build	715	\N	\N	smartwatch	\N	13	\N	\N
1015	pick	energy	906	446	760	{stay,page}	accept	377	\N	\N	phone	number	60	\N	\N
993	difficult	measure	127	860	895	{next,perform}	time	54	\N	\N	camera	\N	1	\N	\N
558	east	receive	454	154	237	{rest}	knowledge	766	career	294	desktop	\N	99	\N	\N
752	that	four	93	551	482	{relationship,usually}	left	871	\N	\N	tablet	\N	81	\N	\N
305	foreign	evening	494	744	75	{before,moment}	per	418	\N	\N	electronics	\N	22	\N	\N
975	pretty	person	273	371	593	{bar,finally}	inside	513	\N	\N	camera	\N	49	\N	\N
491	important	party	267	624	378	{deep}	treat	729	yes	65	computer	\N	78	\N	\N
956	skin	bit	184	800	967	{address}	leave	530	\N	\N	camera	\N	37	\N	\N
750	gas	must	41	356	788	{young}	buy	70	\N	\N	tablet	\N	57	\N	\N
1092	will	partner	633	105	363	{talk}	final	704	\N	\N	phone	next	\N	\N	1022
1097	see	thing	636	614	667	{along}	five	195	\N	\N	phone	deep	\N	\N	1093
1038	follow	wonder	96	525	127	{low}	expect	714	\N	\N	phone	visit	72	\N	1097
\.


--
-- Data for Name: relation_30; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_30 (user_id, session_id, started_at, device) FROM stdin;
7	445	purpose	yeah
740	702	seven	adult
183	47	finally	should
699	641	very	door
116	643	course	dinner
238	748	newspaper	more
113	858	to	this
309	102	dark	heavy
946	38	top	town
461	322	paper	only
967	224	poor	popular
619	747	despite	party
518	578	building	sea
586	63	pattern	speech
66	685	range	lead
995	975	college	newspaper
648	671	toward	exactly
318	72	audience	sing
415	630	break	wife
803	783	research	per
208	813	maybe	mouth
77	899	call	assume
909	377	range	same
772	361	information	summer
898	778	data	plan
467	40	how	compare
329	443	likely	remain
382	748	day	source
315	281	short	war
993	979	activity	well
921	421	owner	too
357	1	throughout	its
102	577	we	official
21	430	man	bank
537	314	statement	memory
977	863	such	second
637	447	use	without
361	792	however	worry
754	709	recently	agree
169	717	seem	seat
837	128	pick	these
346	49	election	nothing
246	457	inside	tell
266	713	strategy	environmental
730	848	religious	will
774	872	heavy	region
492	268	manage	front
197	636	different	difference
910	571	article	perhaps
384	489	tough	course
148	931	ahead	trouble
375	1	walk	order
921	316	modern	soon
753	264	born	conference
314	62	land	fight
784	748	bill	month
385	541	body	nothing
222	366	third	car
413	672	debate	leg
751	65	relationship	heavy
815	640	sing	lose
801	607	matter	myself
836	7	various	build
458	367	finish	around
734	152	difference	production
724	28	whole	statement
729	889	ahead	though
362	437	glass	room
690	792	bring	live
579	10	themselves	out
11	421	talk	today
718	82	why	build
294	12	employee	share
390	843	ever	part
424	838	we	health
636	528	set	popular
695	301	draw	task
2	169	sign	trip
929	254	growth	music
202	463	get	rather
215	649	opportunity	watch
465	840	or	mean
398	789	least	ground
132	516	child	rather
899	157	air	black
808	893	sing	shoulder
240	87	and	task
815	294	age	serve
114	66	your	me
613	103	enough	subject
447	326	lead	everyone
701	1000	war	cause
265	35	little	population
822	905	cost	alone
215	571	thus	worry
408	444	him	traditional
466	11	front	few
382	657	answer	event
358	557	expect	least
761	891	buy	hundred
\.


--
-- Data for Name: relation_31; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_31 (custorder_id, placed_at, status, customer_orders_customer_id, payment_order_customer_id, payment_order_payment_method_id) FROM stdin;
97	since	sit	\N	\N	\N
5	agree	artist	187	\N	\N
7	effect	everybody	299	\N	\N
16	road	offer	316	\N	\N
17	free	thing	259	\N	\N
41	throw	measure	261	\N	\N
43	blood	fund	228	\N	\N
48	much	fly	273	\N	\N
77	ability	wind	299	\N	\N
37	smile	or	170	292	575
71	bank	trip	163	191	187
52	method	keep	292	236	877
36	citizen	major	\N	321	203
79	happen	national	351	133	286
19	dog	need	250	259	195
49	win	have	\N	360	872
66	begin	sense	364	177	348
32	traditional	dinner	191	311	794
81	any	only	111	380	256
3	health	safe	360	128	979
22	system	leader	\N	206	800
75	part	environmental	305	295	770
80	across	painting	\N	107	668
34	wind	what	213	186	886
35	there	occur	256	110	790
59	cell	feeling	\N	311	880
40	debate	by	\N	218	235
56	tough	sure	265	206	496
1	without	best	394	218	235
28	though	ever	260	128	979
84	attention	budget	\N	361	271
25	my	manager	389	127	222
78	everyone	on	167	243	793
65	month	early	\N	350	754
21	hair	top	123	234	159
8	adult	such	283	385	405
4	happen	product	\N	317	809
39	hospital	miss	190	377	940
64	for	family	356	392	397
24	few	boy	363	275	382
27	reflect	similar	179	187	675
87	right	lawyer	\N	316	608
9	threat	or	360	317	809
94	miss	health	\N	150	852
10	face	during	338	259	195
12	strategy	before	174	122	174
63	measure	pay	\N	257	146
85	democratic	teacher	396	152	924
23	probably	government	\N	227	758
73	provide	hold	\N	321	262
58	state	group	293	351	490
42	true	explain	\N	172	408
13	guy	message	160	214	809
92	because	thing	\N	248	774
70	argue	career	\N	150	852
18	environment	could	\N	236	155
57	pull	situation	188	187	675
46	bed	during	\N	242	40
89	sell	modern	204	382	664
15	huge	we	201	118	573
68	become	minute	\N	243	486
98	blood	nothing	201	\N	\N
96	light	family	236	272	478
95	beautiful	put	299	172	408
93	end	history	352	122	174
91	visit	hour	298	120	535
29	get	test	123	272	478
86	sit	perform	154	206	800
61	reach	give	150	256	878
74	meet	low	265	222	139
62	speech	town	314	202	571
38	protect	single	\N	392	397
6	crime	sister	204	236	155
14	finish	one	226	292	575
31	especially	tax	\N	263	86
2	seem	health	116	234	159
83	TV	structure	338	126	377
100	tell	least	360	389	39
67	along	grow	374	349	266
90	foot	anyone	184	214	809
99	need	public	\N	120	535
60	letter	matter	348	190	399
54	within	for	224	122	174
55	particularly	benefit	270	185	745
30	step	training	391	398	231
76	idea	movie	\N	311	880
47	statement	often	313	112	718
44	minute	whole	249	107	668
51	artist	woman	312	379	126
53	method	prevent	371	330	599
11	weight	society	\N	272	478
69	resource	bed	377	330	599
88	whom	reality	\N	389	39
82	spend	effect	203	133	672
45	add	move	293	349	266
26	know	business	298	122	174
20	meeting	provide	\N	380	256
72	store	whatever	128	248	774
50	man	chance	396	185	745
33	market	home	\N	107	668
\.


--
-- Data for Name: relation_32; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_32 (custorder_id, shipment_id, carrier, tracking_no, shipped_at, delivered_at, courier_shipments_courierpartner_id) FROM stdin;
53	418	believe	dog	its	fish	\N
71	664	less	adult	beyond	stop	\N
11	424	policy	garden	six	development	\N
84	807	well	group	major	now	\N
64	183	seven	less	control	pretty	\N
12	202	several	near	significant	but	40
2	192	really	add	report	role	92
42	67	design	speech	table	sing	47
67	944	five	character	try	onto	2
18	658	take	threat	stuff	catch	94
100	407	control	federal	mind	next	74
59	83	affect	girl	open	college	4
2	590	offer	picture	evidence	tree	25
68	291	western	sit	help	already	84
77	47	always	produce	second	health	79
52	162	future	race	lead	down	94
78	853	network	drug	young	majority	4
40	746	central	near	red	area	37
51	769	forget	economic	plan	theory	41
35	685	form	player	adult	mind	4
19	173	tough	believe	economy	rather	51
21	410	market	despite	personal	guy	13
53	426	military	likely	close	best	94
54	445	example	within	tough	stage	67
84	573	cold	able	suffer	me	82
100	317	turn	establish	whom	meet	85
72	342	him	let	similar	tonight	45
96	71	statement	research	who	surface	10
96	302	turn	region	style	medical	80
14	42	share	enjoy	PM	movement	28
42	540	fish	figure	person	know	97
44	204	current	when	why	film	14
8	929	only	ground	baby	important	22
91	971	least	American	analysis	rise	56
50	682	without	win	card	house	82
16	927	change	you	human	gun	92
32	246	oil	deal	inside	whom	33
87	925	agent	population	democratic	charge	62
48	120	lose	various	check	lead	97
37	388	safe	himself	direction	forget	85
32	170	number	imagine	true	open	54
15	93	pattern	political	produce	world	23
8	998	behavior	it	billion	mean	32
66	796	perform	gas	street	show	73
92	47	full	parent	form	especially	97
3	5	true	war	item	help	53
86	599	will	become	dog	evidence	84
40	30	sister	sometimes	pass	reach	86
88	886	impact	unit	much	unit	68
75	839	painting	type	dog	home	38
11	124	interest	sea	but	score	30
92	272	ready	hope	exactly	history	31
69	807	break	chance	four	wife	26
21	578	join	almost	study	finally	52
62	282	author	create	figure	leave	28
75	476	significant	never	until	himself	73
96	179	test	order	save	individual	42
94	198	member	amount	important	to	84
80	639	on	past	word	rule	94
38	137	public	far	spring	scientist	78
61	497	into	tend	economic	star	60
57	243	region	your	town	enjoy	85
100	587	reason	because	work	sing	87
16	479	reduce	college	down	administration	61
67	61	indeed	myself	perform	big	86
6	534	stop	building	according	on	82
49	658	start	manager	behavior	box	51
25	75	discuss	guy	someone	education	50
27	234	network	center	beyond	tough	43
72	513	newspaper	test	we	thing	31
51	819	improve	present	specific	do	77
82	931	seven	remember	oil	look	19
46	550	indicate	break	truth	star	14
64	50	make	fight	adult	side	94
11	51	my	reflect	real	rate	26
61	239	character	woman	surface	base	40
21	946	seven	husband	side	military	2
79	170	remember	interview	ahead	hear	100
47	984	head	head	another	on	96
54	214	democratic	else	ready	himself	61
43	78	learn	establish	speak	manage	36
35	562	child	popular	particularly	meet	17
85	368	prepare	degree	board	why	62
75	350	great	writer	chair	participant	40
93	416	seek	ok	score	price	32
43	473	not	maintain	sound	seem	16
73	231	yes	price	now	call	5
88	794	shoulder	onto	relationship	say	27
27	24	happy	control	miss	scene	41
66	52	behavior	mean	church	economic	77
46	279	important	look	within	treatment	65
33	610	truth	chair	common	stage	77
43	382	religious	large	guess	which	18
57	984	art	forget	million	military	3
60	769	available	mention	certain	central	60
17	293	small	blood	others	condition	29
71	535	visit	program	need	friend	95
65	19	page	them	into	window	95
83	891	note	remain	debate	society	85
55	342	still	point	discuss	quite	19
\.


--
-- Data for Name: relation_33; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_33 (promotion_id, promo_name, starts_at, ends_at, discount_type, discount_value) FROM stdin;
1	four	development	sign	social	college
2	trip	indicate	behavior	indicate	card
3	summer	consider	wonder	suddenly	should
4	thank	factor	behind	of	central
5	lawyer	perform	draw	foreign	individual
6	way	heavy	perhaps	toward	enter
7	big	what	child	close	science
8	that	by	win	wish	before
9	any	a	worry	media	character
10	consider	door	much	employee	whose
11	and	walk	investment	point	whatever
12	huge	central	possible	there	suggest
13	my	approach	radio	final	for
14	sound	join	them	play	situation
15	base	purpose	movie	occur	laugh
16	certain	happy	ability	customer	candidate
17	direction	nation	structure	believe	suddenly
18	establish	will	if	garden	happy
19	president	now	perhaps	woman	but
20	nation	know	crime	check	here
21	note	country	range	along	simply
22	section	close	two	size	find
23	both	probably	various	democratic	amount
24	network	memory	win	mention	glass
25	deep	them	good	door	movie
26	agreement	fill	blue	different	sometimes
27	learn	various	as	past	work
28	rule	eye	organization	blue	add
29	meet	education	many	window	key
30	later	news	can	anything	individual
31	list	themselves	candidate	in	toward
32	with	play	watch	through	authority
33	common	we	single	leave	across
34	travel	kid	floor	century	air
35	green	exist	party	relationship	official
36	explain	fly	help	national	dog
37	mention	enough	either	tax	down
38	part	action	always	investment	remember
39	wonder	middle	president	official	gun
40	air	the	go	road	all
41	receive	mean	lead	notice	site
42	audience	key	strategy	family	top
43	believe	only	my	determine	gun
44	film	activity	work	much	write
45	worry	buy	side	enter	rich
46	long	change	until	blood	notice
47	several	degree	account	control	none
48	class	long	product	voice	born
49	think	value	especially	type	century
50	Republican	audience	physical	nearly	buy
51	arm	material	off	enter	not
52	positive	never	affect	point	purpose
53	support	marriage	eat	southern	ball
54	which	development	act	others	truth
55	himself	increase	bank	should	somebody
56	money	money	worry	light	serious
57	space	in	age	write	open
58	own	perform	here	around	word
59	someone	amount	east	television	break
60	entire	opportunity	charge	analysis	current
61	American	others	stage	way	answer
62	them	degree	though	fill	he
63	event	final	model	attention	issue
64	worry	rather	contain	various	note
65	discuss	prepare	close	base	stuff
66	window	them	generation	affect	wind
67	positive	send	born	chair	great
68	change	long	condition	record	sing
69	wonder	under	young	administration	shake
70	within	information	practice	image	garden
71	church	former	week	require	off
72	society	economy	compare	our	present
73	first	fill	need	bar	every
74	record	without	huge	against	remain
75	talk	reach	woman	light	easy
76	happen	sport	page	need	imagine
77	claim	force	rise	security	house
78	because	front	staff	six	individual
79	sister	point	economy	why	case
80	now	environmental	turn	rich	from
81	church	seek	arm	soldier	bag
82	medical	hundred	civil	myself	over
83	no	west	past	as	husband
84	hospital	then	management	Congress	why
85	discover	expect	three	politics	almost
86	market	current	market	clearly	until
87	art	half	detail	see	nothing
88	pass	sit	it	owner	executive
89	body	growth	anyone	enough	particularly
90	quality	throughout	fight	finally	admit
91	thus	laugh	result	loss	think
92	trouble	face	thousand	cultural	prepare
93	magazine	commercial	for	card	he
94	care	low	government	sing	throughout
95	wear	field	his	nothing	occur
96	business	thing	resource	nice	ten
97	challenge	organization	cost	movement	dream
98	act	stuff	director	somebody	eat
99	art	hit	nice	prevent	produce
100	picture	section	until	marriage	somebody
\.


--
-- Data for Name: relation_34; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_34 (promotion_id, coupon_code, max_uses, per_user_limit, order_coupons_custorder_id) FROM stdin;
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
-- Data for Name: relation_35; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_35 (warehouse_id, warehouse_name, region) FROM stdin;
1	blue	hand
2	wear	often
3	realize	should
4	quickly	picture
5	back	impact
6	like	local
7	central	yard
8	performance	push
9	only	customer
10	then	realize
11	paper	final
12	drug	help
13	medical	various
14	situation	trade
15	husband	best
16	do	available
17	level	serious
18	push	every
19	seek	attorney
20	care	thousand
21	partner	adult
22	meeting	box
23	worker	force
24	listen	suddenly
25	table	wrong
26	find	reason
27	reach	after
28	board	life
29	opportunity	hair
30	former	money
31	plant	firm
32	democratic	guy
33	boy	source
34	field	great
35	stand	today
36	ability	population
37	movie	use
38	modern	voice
39	step	play
40	house	notice
41	suddenly	entire
42	drive	eye
43	difference	hand
44	too	too
45	idea	increase
46	time	price
47	fear	less
48	information	owner
49	control	laugh
50	note	less
51	energy	computer
52	black	least
53	impact	nature
54	try	to
55	most	though
56	everybody	value
57	medical	artist
58	subject	speech
59	collection	away
60	even	partner
61	foreign	although
62	century	force
63	five	begin
64	choose	data
65	get	address
66	specific	protect
67	my	former
68	people	issue
69	imagine	shake
70	kind	leave
71	land	maybe
72	music	now
73	newspaper	goal
74	town	point
75	movie	particular
76	responsibility	affect
77	performance	question
78	education	charge
79	again	onto
80	senior	interesting
81	will	official
82	show	morning
83	ahead	base
84	huge	skin
85	miss	environment
86	structure	month
87	movie	rest
88	accept	age
89	show	interesting
90	growth	contain
91	trial	both
92	beat	keep
93	discover	wrong
94	develop	ability
95	seem	police
96	collection	listen
97	similar	assume
98	perform	for
99	wind	law
100	practice	method
\.


--
-- Data for Name: relation_36; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_36 (warehouse_id, bin_id, code) FROM stdin;
58	789	quickly
40	943	majority
72	244	sing
65	777	try
3	398	themselves
59	180	career
57	823	forget
94	989	prepare
69	35	guy
2	134	away
39	489	PM
79	496	the
81	661	can
83	790	will
71	727	responsibility
5	766	course
58	253	hot
26	74	bill
2	441	notice
19	5	build
8	549	remember
35	331	hard
9	227	fall
1	556	time
18	99	particularly
45	961	ahead
82	205	effect
36	493	off
23	845	study
96	679	boy
60	639	bag
19	991	decide
69	325	sing
21	995	program
51	961	call
76	214	figure
39	611	road
87	677	go
33	469	have
57	140	become
24	180	interesting
21	511	brother
53	765	bill
42	173	must
80	791	actually
18	272	building
70	665	capital
93	676	until
83	24	his
52	818	recently
69	279	front
84	954	nearly
23	557	democratic
46	750	she
96	112	method
69	257	not
6	180	require
82	709	value
55	25	summer
9	661	anyone
3	591	choice
70	9	direction
60	552	reduce
56	375	medical
78	789	head
19	922	stuff
23	57	sometimes
2	378	me
93	602	treat
84	831	contain
91	85	account
8	126	company
19	159	defense
3	262	decision
29	586	late
95	580	prevent
25	693	Republican
10	353	direction
53	353	forward
95	506	own
50	521	billion
25	276	kid
93	565	sign
25	742	here
53	812	adult
31	390	western
28	103	cost
52	694	compare
31	325	reveal
70	951	difference
48	826	picture
5	213	else
21	329	follow
39	635	compare
59	103	model
2	192	picture
97	732	executive
70	377	nation
26	163	sometimes
36	796	catch
\.


--
-- Data for Name: relation_37; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_37 (supplier_id, supplier_name) FROM stdin;
1	each
2	cover
3	everyone
4	data
5	half
6	sign
7	design
8	baby
9	box
10	movement
11	method
12	necessary
13	during
14	foreign
15	recently
16	reveal
17	force
18	can
19	hit
20	same
21	happen
22	himself
23	start
24	management
25	material
26	end
27	this
28	although
29	seem
30	seem
31	light
32	concern
33	talk
34	other
35	pay
36	begin
37	expert
38	care
39	both
40	small
41	laugh
42	feeling
43	sell
44	table
45	situation
46	enough
47	technology
48	company
49	traditional
50	page
51	plant
52	friend
53	like
54	want
55	present
56	memory
57	security
58	cup
59	out
60	fear
61	tend
62	hot
63	address
64	choice
65	ready
66	ability
67	law
68	attack
69	successful
70	brother
71	outside
72	recognize
73	watch
74	if
75	edge
76	third
77	hope
78	movement
79	join
80	table
81	month
82	statement
83	example
84	fight
85	career
86	north
87	surface
88	color
89	past
90	forward
91	agent
92	meet
93	center
94	modern
95	particularly
96	movement
97	community
98	recognize
99	will
100	future
\.


--
-- Data for Name: relation_38; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_38 (supplier_id, contact_id, email, phone) FROM stdin;
21	114	vjames@example.org	continue
25	386	cunninghamamy@example.com	upon
72	443	laurenlee@example.net	person
40	212	lawrencegonzalez@example.net	analysis
9	290	rmiller@example.com	technology
64	515	erin20@example.org	activity
60	233	markwells@example.net	war
80	742	kgilbert@example.org	detail
7	892	lisathomas@example.com	bed
34	333	bellvictoria@example.org	style
51	589	lauren27@example.net	drop
95	865	imendez@example.org	realize
20	946	hsanders@example.net	partner
84	346	youngjerry@example.net	learn
43	463	gwallace@example.net	visit
22	535	wfischer@example.net	always
13	825	michaelhughes@example.com	dinner
59	130	david73@example.com	school
20	962	taylorsandra@example.net	note
1	393	owright@example.net	street
22	135	paula45@example.com	they
14	570	ann07@example.org	drug
82	212	laura14@example.net	one
81	882	erinwright@example.com	foot
15	927	ccantu@example.com	down
8	797	georgestevenson@example.org	how
74	778	moniquecraig@example.net	here
63	229	lsellers@example.com	seat
70	408	xramos@example.com	once
92	357	lindajensen@example.org	one
38	93	iwang@example.net	similar
29	378	davidgilbert@example.com	PM
96	25	boyerdustin@example.org	news
13	270	aharris@example.net	crime
36	297	jamesjenna@example.org	important
71	318	michellewong@example.org	no
24	442	jeffersonkayla@example.net	use
89	502	bassjustin@example.net	meet
42	883	francoronald@example.org	skill
49	288	plopez@example.org	even
71	790	kyle85@example.net	those
52	928	chenmichelle@example.com	make
27	428	rachel73@example.org	memory
45	73	shayes@example.net	reach
90	547	shelbybrown@example.net	up
58	312	cruztimothy@example.net	unit
40	406	shelbybennett@example.org	need
45	725	omullins@example.net	subject
85	30	cameronturner@example.com	third
37	133	johnsontaylor@example.org	still
15	766	tayloraaron@example.com	race
42	243	rmorgan@example.org	off
86	910	brownjustin@example.net	painting
32	529	ireese@example.com	again
76	704	tranvicki@example.org	huge
44	144	sarahdavis@example.com	build
77	999	meghanbeasley@example.org	assume
6	968	phunt@example.com	well
45	172	matthew54@example.org	ability
75	258	robertcervantes@example.org	relationship
68	952	sarahdunn@example.net	factor
83	880	xrodriguez@example.com	somebody
52	730	phillipshailey@example.com	will
8	743	joshua45@example.net	along
80	232	fallen@example.com	lay
39	909	marialeon@example.org	woman
44	996	rlopez@example.com	writer
44	527	josephchapman@example.com	that
96	617	andersontroy@example.org	protect
95	869	sandrawilliams@example.net	official
6	3	ayalalaurie@example.net	social
53	952	mariahsherman@example.net	wonder
37	838	jamiemcdonald@example.net	show
1	102	oswanson@example.com	candidate
18	599	angelica43@example.com	body
37	112	schmidtdwayne@example.com	should
6	280	lauren32@example.org	final
7	884	andrepatterson@example.org	leader
78	489	heatherlewis@example.com	husband
64	54	mejiacindy@example.org	shoulder
27	878	carolynwhitaker@example.net	baby
25	756	smithstephen@example.com	less
7	865	jose36@example.org	decade
45	288	williamsjason@example.com	sound
48	526	denise16@example.net	dinner
29	329	sgardner@example.org	shoulder
42	505	ianderson@example.net	father
5	606	vjones@example.org	him
81	820	mark10@example.com	strategy
18	132	tiffany57@example.com	sound
73	194	erica30@example.net	fire
84	241	ediaz@example.net	person
92	56	alexanderson@example.com	specific
12	36	richardwerner@example.org	compare
7	196	erica21@example.org	sure
97	368	jose12@example.com	employee
53	803	lyonsjessica@example.org	ground
93	162	jennifer77@example.com	already
25	831	martineztim@example.net	development
100	214	susan63@example.org	pretty
\.


--
-- Data for Name: relation_39; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_39 (purchaseorder_id, created_at, status, supplier_pos_supplier_id) FROM stdin;
6	owner	law	\N
11	international	administration	\N
12	each	central	\N
21	decade	woman	\N
27	fund	director	\N
32	personal	run	\N
36	general	religious	\N
46	art	white	\N
48	project	minute	\N
51	will	set	\N
63	easy	degree	\N
72	message	culture	\N
87	choice	item	\N
30	receive	also	25
97	five	including	38
24	effect	cold	93
34	as	sound	69
4	but	return	25
73	school	recent	94
8	receive	present	57
93	or	child	6
86	despite	main	85
17	miss	eye	38
90	society	each	85
18	magazine	no	77
66	sister	space	21
49	concern	worry	85
16	price	culture	2
81	choice	sport	3
20	part	meet	77
69	go	base	57
5	member	condition	10
85	politics	simple	24
76	impact	evidence	18
95	if	only	66
79	throw	chance	73
67	cut	action	72
50	suffer	window	44
84	ok	suffer	77
45	change	accept	14
96	manager	town	96
60	political	open	57
94	city	central	93
65	bar	plan	24
56	their	indeed	68
35	finally	ground	62
39	instead	glass	90
82	parent	job	74
2	even	fact	53
15	personal	place	84
89	attorney	recently	35
42	main	level	16
61	represent	on	73
74	recognize	free	33
7	half	sit	24
64	what	loss	43
10	turn	despite	59
80	return	different	4
33	soon	hospital	24
25	tree	real	13
43	green	ability	21
83	add	front	61
75	party	resource	91
13	human	its	66
59	gun	support	38
68	plant	east	31
9	care	rule	44
99	fine	run	64
55	administration	require	12
1	guy	worker	90
40	sell	include	29
14	deep	trip	7
92	soon	positive	58
26	prepare	increase	15
77	on	soldier	34
52	attention	good	35
57	which	well	49
78	movie	my	33
54	such	idea	83
22	trial	clearly	49
53	public	if	16
19	call	star	92
62	significant	two	94
98	deep	say	30
70	set	cup	7
71	far	with	21
47	music	sense	31
100	explain	computer	35
29	figure	southern	15
3	recent	management	99
23	rule	goal	98
41	perhaps	staff	97
91	together	box	63
37	where	determine	27
88	but	upon	97
58	year	art	81
44	person	draw	43
38	page	public	30
28	first	way	68
31	reduce	long	3
\.


--
-- Data for Name: relation_4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_4 (desktop_id, form_factor) FROM stdin;
501	test
502	chair
503	throw
504	new
505	fast
506	season
507	simply
508	suggest
509	itself
510	outside
511	first
512	organization
513	around
514	account
515	very
516	according
517	capital
518	recent
519	least
520	easy
521	believe
522	relationship
523	grow
524	specific
525	note
526	why
527	movie
528	contain
529	them
530	probably
531	who
532	international
533	speech
534	official
535	image
536	approach
537	direction
538	leader
539	hold
540	they
541	more
542	determine
543	free
544	compare
545	each
546	full
547	evidence
548	relationship
549	military
550	force
551	it
552	across
553	admit
554	stock
555	wait
556	shake
557	stage
558	structure
559	part
560	act
561	identify
562	physical
563	dark
564	practice
565	clear
566	seat
567	realize
568	about
569	enough
570	by
571	report
572	the
573	design
574	mind
575	the
576	party
577	partner
578	suggest
579	improve
580	north
581	big
582	bar
583	bill
584	purpose
585	role
586	analysis
587	better
588	west
589	foot
590	nature
591	feel
592	material
593	need
594	have
595	second
596	big
597	claim
598	card
599	me
600	fill
\.


--
-- Data for Name: relation_40; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_40 (courierpartner_id, carrier_code, webhook_url) FROM stdin;
1	born	modern
2	card	individual
3	worry	court
4	land	ahead
5	somebody	fight
6	west	nature
7	source	up
8	account	manage
9	far	community
10	another	until
11	film	study
12	cut	finish
13	accept	analysis
14	method	citizen
15	action	thousand
16	within	sea
17	keep	painting
18	window	point
19	site	local
20	tax	perform
21	next	nothing
22	various	media
23	nor	couple
24	how	model
25	truth	town
26	blood	usually
27	high	standard
28	long	these
29	chair	notice
30	first	quickly
31	plant	answer
32	economy	hand
33	customer	part
34	positive	down
35	eat	suggest
36	more	share
37	PM	interest
38	movie	example
39	husband	lot
40	night	push
41	especially	thank
42	message	oil
43	star	single
44	why	together
45	reality	group
46	check	because
47	billion	case
48	which	himself
49	continue	according
50	develop	house
51	movie	again
52	among	maybe
53	someone	news
54	side	mean
55	material	energy
56	teacher	better
57	member	its
58	lead	use
59	assume	three
60	respond	his
61	perhaps	career
62	employee	strategy
63	hundred	produce
64	politics	important
65	project	north
66	machine	heart
67	point	senior
68	phone	individual
69	under	around
70	our	evidence
71	as	side
72	main	between
73	though	music
74	any	staff
75	yourself	about
76	garden	group
77	staff	tax
78	over	allow
79	less	begin
80	throw	name
81	various	for
82	sometimes	seem
83	on	explain
84	high	late
85	total	expect
86	worry	health
87	we	foreign
88	part	rich
89	decide	will
90	enjoy	parent
91	must	civil
92	allow	money
93	entire	police
94	central	beat
95	fact	range
96	near	character
97	book	citizen
98	budget	often
99	throw	condition
100	ok	participant
\.


--
-- Data for Name: relation_41; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_41 (product_id, tag_id) FROM stdin;
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
-- Data for Name: relation_42; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_42 (product_id, bought_together_product_product_id) FROM stdin;
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
-- Data for Name: relation_43; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_43 (customer_id, product_id) FROM stdin;
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
-- Data for Name: relation_44; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_44 (customer_id, wishlist_id, product_id) FROM stdin;
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
-- Data for Name: relation_45; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_45 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_46; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_46 (custorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_47; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_47 (product_id, warehouse_id, bin_id) FROM stdin;
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
-- Data for Name: relation_48; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_48 (supplier_id, product_id) FROM stdin;
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
-- Data for Name: relation_49; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_49 (purchaseorder_id, product_id) FROM stdin;
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
-- Data for Name: relation_5; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_5 (laptop_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, cpu, ram_gb, battery_wh, category_products_category_id) FROM stdin;
601	sing	entire	874	376	512	{still,leader}	she	139	analysis	500	70	\N
602	fight	budget	524	327	681	{house,and}	air	620	sense	326	912	\N
604	either	cut	74	269	65	{your,economy}	for	20	place	185	931	\N
609	either	imagine	670	737	580	{response,article}	purpose	590	maybe	289	624	\N
610	show	economy	263	692	177	{threat,music}	edge	147	other	361	97	\N
612	can	expect	853	493	995	{only}	out	39	to	748	656	\N
614	other	executive	483	584	496	{authority,organization}	western	940	stay	533	815	\N
615	ball	important	175	577	726	{training,hard}	partner	408	partner	14	396	\N
616	four	minute	566	742	576	{clear,adult}	father	170	police	608	603	\N
617	outside	past	383	53	861	{guess,practice}	chair	842	entire	362	449	\N
618	way	individual	244	705	661	{measure,arm}	approach	872	region	91	453	\N
619	born	north	777	893	366	{result}	yourself	166	now	138	453	\N
620	standard	discover	953	853	47	{role,pattern}	loss	581	direction	346	994	\N
621	deal	bed	828	178	583	{skill,kind}	education	490	now	9	590	\N
622	student	top	240	906	898	{later}	finally	455	agree	671	168	\N
623	rise	suffer	522	214	410	{short,crime}	garden	127	plan	323	269	\N
624	brother	join	142	174	338	{cover}	paper	185	heavy	825	934	\N
625	political	he	760	633	543	{best,training}	kind	240	believe	568	724	\N
626	field	according	438	480	469	{wall,business}	everybody	174	dream	533	631	\N
629	behind	happen	731	671	526	{wear}	current	633	ago	909	451	\N
630	red	teach	461	835	547	{sea,choose}	easy	373	ask	856	212	\N
631	center	part	56	88	740	{director}	school	100	wish	552	397	\N
632	college	place	141	455	407	{couple}	however	487	inside	460	535	\N
633	family	force	874	608	38	{strong}	majority	970	reality	1000	605	\N
634	city	president	461	501	400	{treatment,throughout}	morning	935	natural	358	795	\N
635	professor	economic	775	178	863	{rather,benefit}	network	185	nothing	899	795	\N
636	easy	base	29	570	63	{affect}	hope	999	throw	951	564	\N
637	third	system	236	457	871	{lose,young}	nation	453	which	344	911	\N
638	site	age	764	105	398	{really}	policy	766	position	480	285	\N
639	back	per	953	420	477	{only,specific}	technology	520	prove	99	169	\N
640	lead	claim	411	555	887	{style,idea}	fish	905	voice	910	629	\N
641	time	ready	759	877	490	{tax}	education	328	organization	150	359	\N
642	fall	front	995	141	626	{receive}	oil	231	step	806	831	\N
644	town	project	436	54	465	{generation}	actually	384	who	574	330	\N
647	improve	recently	321	870	772	{edge,green}	skill	179	remain	103	502	\N
649	lot	north	550	327	324	{decision,by}	more	975	do	694	573	\N
650	four	method	958	651	350	{join,successful}	to	576	stock	607	819	\N
651	none	various	474	332	497	{teach,state}	cold	844	support	550	930	\N
652	make	let	224	171	247	{dog}	prove	880	prepare	609	956	\N
653	partner	Mrs	252	53	800	{discover,who}	rather	928	effort	635	778	\N
654	draw	talk	64	337	430	{employee}	media	353	management	369	371	\N
655	special	job	615	610	903	{long,audience}	exist	215	start	806	924	\N
656	about	them	875	296	929	{become}	within	322	decide	407	716	\N
657	government	company	394	686	793	{north}	sometimes	9	where	399	667	\N
658	stock	nation	924	992	983	{college,describe}	cold	619	coach	803	799	\N
659	happen	price	631	860	916	{reality}	speak	240	reach	68	843	\N
660	heavy	whole	627	328	394	{usually}	development	728	rich	893	301	\N
661	phone	product	99	445	5	{miss,compare}	page	96	mention	828	418	\N
662	card	image	975	157	115	{feeling}	produce	772	herself	349	148	\N
664	Mrs	author	199	163	169	{machine}	ground	988	red	992	151	\N
667	task	decide	368	798	179	{improve}	power	241	check	710	509	\N
669	but	according	579	147	215	{water,site}	set	726	behavior	142	287	\N
671	first	call	542	473	909	{yard}	participant	737	sister	247	212	\N
675	wish	pass	108	457	736	{smile,view}	also	684	yard	288	147	\N
676	really	almost	442	381	664	{instead,idea}	level	955	go	769	393	\N
677	light	change	422	447	377	{most}	century	201	fall	67	149	\N
678	away	son	244	246	22	{hit}	off	686	difficult	404	468	\N
679	garden	particular	804	632	452	{training}	send	56	finally	177	835	\N
681	team	quality	805	286	426	{then}	bank	881	evening	242	712	\N
682	into	mean	791	677	384	{movement,before}	trouble	798	note	351	600	\N
683	rate	season	766	49	519	{space,film}	yet	133	assume	706	942	\N
684	station	local	536	373	599	{risk}	lot	358	a	121	862	\N
685	age	where	883	252	651	{skill}	project	448	growth	974	153	\N
686	garden	marriage	825	20	375	{arrive}	great	155	your	296	26	\N
687	husband	economic	484	654	28	{somebody,however}	education	69	president	769	816	\N
689	nice	however	100	132	552	{green,color}	owner	659	teach	617	558	\N
691	financial	ago	325	449	120	{machine}	behavior	216	understand	607	626	\N
692	ground	grow	887	715	379	{every}	light	99	nation	364	109	\N
693	face	fear	905	929	201	{firm}	brother	707	even	670	606	\N
694	east	miss	90	4	525	{soon,public}	from	934	but	988	241	\N
695	sing	treat	94	315	500	{food}	chance	588	enjoy	440	574	\N
696	wear	operation	306	402	644	{support}	edge	687	one	610	30	\N
697	figure	record	284	931	636	{general,you}	administration	449	political	225	276	\N
698	walk	fill	932	891	330	{main,itself}	TV	453	few	547	57	\N
699	difference	computer	276	527	178	{will,trade}	pattern	467	appear	303	600	\N
700	medical	our	605	187	329	{discover,sort}	shake	778	American	991	683	\N
605	soldier	bring	336	232	321	{all,finally}	ask	855	impact	838	259	55
643	fly	finally	222	909	465	{call}	goal	106	man	716	106	13
670	bill	light	916	759	357	{himself}	drop	393	where	487	31	7
613	cell	home	254	81	759	{heavy}	tonight	40	financial	532	520	43
690	forward	exist	975	420	248	{ground,offer}	create	490	fund	853	752	81
665	issue	leader	123	453	599	{sound}	plant	442	magazine	138	871	88
648	cell	energy	185	457	158	{street,product}	discussion	109	eat	552	127	22
663	technology	claim	385	448	334	{choose,different}	big	965	animal	961	214	55
627	high	professor	520	979	317	{because}	look	290	car	690	159	90
666	perform	commercial	342	622	813	{although,artist}	art	609	once	141	22	75
628	improve	hot	699	7	833	{usually,fear}	should	122	in	436	390	93
672	debate	eight	706	931	817	{particularly}	blood	740	three	714	312	84
606	toward	hundred	891	314	975	{couple,wind}	ball	426	state	974	13	51
645	ever	cultural	961	287	408	{man}	indeed	397	up	499	734	32
668	power	yes	607	501	36	{speak}	walk	137	main	546	481	49
680	heart	wife	841	839	540	{then}	character	46	throw	441	875	89
611	drive	try	407	366	535	{teach}	begin	406	degree	461	154	84
688	defense	sense	604	442	95	{low,enjoy}	learn	558	hand	618	514	83
608	make	cost	441	950	628	{teacher}	step	285	build	366	787	95
603	themselves	live	803	587	92	{majority,participant}	together	347	compare	426	872	64
646	sing	knowledge	457	309	759	{old,second}	necessary	660	where	596	397	26
674	note	type	833	823	790	{past}	natural	888	assume	410	340	25
673	another	determine	44	274	840	{watch}	provide	74	beat	817	109	29
607	media	defense	302	167	649	{factor,research}	data	50	point	119	442	87
\.


--
-- Data for Name: relation_50; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_50 (phone_id, bundle_phone_phone_id) FROM stdin;
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

COPY public.relation_6 (tablet_id, screen_size_in) FROM stdin;
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
-- Data for Name: relation_7; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_7 (smartwatch_id, band_size, bundled_phone_smart_watch_phone_id) FROM stdin;
801	gun	\N
802	detail	\N
803	begin	\N
804	knowledge	\N
805	support	\N
808	trade	\N
809	drop	\N
812	ask	\N
813	his	\N
815	picture	\N
819	agent	\N
820	find	\N
823	wear	\N
825	government	\N
834	benefit	\N
835	father	\N
836	everything	\N
837	whole	\N
838	account	\N
839	support	\N
840	most	\N
841	marriage	\N
843	discover	\N
844	fish	\N
845	practice	\N
848	name	\N
851	financial	\N
852	international	\N
857	activity	\N
858	account	\N
859	room	\N
860	radio	\N
861	speak	\N
862	responsibility	\N
867	child	\N
868	message	\N
871	religious	\N
874	program	\N
875	meet	\N
876	sea	\N
878	spend	\N
879	head	\N
882	one	\N
883	report	\N
885	believe	\N
886	second	\N
889	president	\N
890	culture	\N
893	safe	\N
894	just	\N
896	arrive	\N
898	wrong	\N
806	situation	1063
807	factor	1018
810	past	1001
811	detail	1034
814	likely	1060
816	prove	1090
817	main	1019
818	front	1022
821	kitchen	1081
822	without	1052
824	discussion	1026
826	important	1071
827	religious	1032
828	off	1082
829	anything	1018
830	coach	1045
831	both	1044
832	race	1091
833	vote	1037
842	daughter	1064
846	cost	1036
847	machine	1091
849	peace	1063
850	cup	1066
853	executive	1009
854	big	1078
855	of	1081
856	yourself	1098
863	serve	1018
864	protect	1041
865	sister	1043
866	may	1038
869	apply	1050
870	still	1014
872	fly	1056
873	recent	1037
877	cost	1064
880	seek	1046
881	billion	1093
884	place	1078
887	serve	1034
888	your	1100
891	federal	1071
892	same	1011
895	describe	1066
897	yard	1075
899	home	1070
900	along	1044
\.


--
-- Data for Name: relation_8; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_8 (camera_id, sensor_mp) FROM stdin;
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
-- Data for Name: relation_9; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relation_9 (accessories_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, accessory_type, category_products_category_id) FROM stdin;
1101	every	sound	975	695	144	{item}	front	285	town	\N
1102	scene	report	723	522	631	{enough}	establish	167	government	\N
1103	short	carry	864	594	318	{man}	chair	677	west	\N
1104	parent	factor	114	273	654	{eat}	idea	961	may	\N
1107	create	billion	56	145	505	{raise,camera}	history	516	majority	\N
1108	require	star	299	763	385	{both}	sound	580	box	\N
1109	student	hand	448	133	702	{wrong}	require	439	pressure	\N
1111	same	style	534	190	64	{need}	ready	195	door	\N
1112	hour	lead	20	356	244	{class}	believe	727	loss	\N
1114	born	cold	425	170	804	{film}	situation	1	develop	\N
1115	sound	significant	225	967	523	{section}	quickly	672	same	\N
1116	according	skill	160	881	562	{save}	democratic	818	without	\N
1118	worker	marriage	370	341	749	{good}	expect	97	campaign	\N
1119	raise	majority	262	900	996	{provide,machine}	right	365	collection	\N
1121	continue	hotel	690	470	39	{perform,old}	individual	319	kitchen	\N
1122	probably	against	952	308	692	{stop,clearly}	friend	315	clearly	\N
1123	can	much	813	395	495	{heavy,know}	special	689	scientist	\N
1124	care	still	123	600	977	{baby}	fast	732	view	\N
1125	career	fly	109	435	76	{right}	way	127	different	\N
1126	understand	way	646	10	252	{address,instead}	laugh	936	forward	\N
1127	rise	itself	73	968	218	{high,short}	house	220	field	\N
1128	type	know	931	304	293	{go,upon}	remember	477	line	\N
1129	physical	war	714	572	587	{tend}	realize	713	year	\N
1130	conference	expert	474	386	86	{share}	thing	76	realize	\N
1132	difficult	fight	738	303	835	{place,democratic}	road	190	foreign	\N
1133	office	paper	658	622	946	{take,bit}	right	385	cut	\N
1134	green	size	865	873	746	{student,story}	these	227	PM	\N
1135	wait	yet	253	944	506	{foreign}	hit	300	nothing	\N
1136	tend	speech	275	486	506	{sure,common}	painting	773	drug	\N
1137	bill	pull	113	608	740	{doctor}	ball	220	one	\N
1138	building	its	706	458	398	{foot}	deal	432	professional	\N
1140	capital	five	719	700	396	{particular,off}	company	383	study	\N
1141	avoid	article	539	146	820	{down}	prevent	917	describe	\N
1142	magazine	civil	525	730	164	{early}	administration	597	culture	\N
1143	identify	able	795	218	778	{past,minute}	direction	671	anything	\N
1145	town	sit	22	725	463	{stay,they}	anyone	685	animal	\N
1146	he	way	691	593	354	{entire,set}	every	729	cost	\N
1148	serious	interview	685	473	592	{nothing,here}	page	836	pattern	\N
1150	opportunity	research	284	889	455	{pick}	line	114	community	\N
1152	quality	reduce	841	912	859	{new}	discussion	522	friend	\N
1153	collection	identify	926	934	328	{attack}	whether	159	point	\N
1155	fish	finish	864	31	691	{action,soldier}	her	408	message	\N
1156	single	president	231	140	74	{heart}	pass	170	according	\N
1157	enough	style	480	617	745	{create,plant}	night	815	paper	\N
1158	skin	situation	816	945	226	{show,nation}	environment	619	other	\N
1159	sell	cover	401	275	9	{list,machine}	fear	154	risk	\N
1160	clearly	real	124	760	442	{election,season}	space	757	make	\N
1161	know	market	687	309	706	{situation,actually}	who	568	throughout	\N
1163	reality	until	918	792	170	{enter,collection}	political	835	return	\N
1164	board	mind	444	114	949	{quality}	involve	368	more	\N
1165	market	much	663	326	315	{else}	compare	314	bar	\N
1166	new	three	822	463	33	{produce,cultural}	marriage	292	remain	\N
1168	guess	series	768	281	173	{from,political}	believe	524	find	\N
1170	raise	enjoy	713	37	132	{during}	radio	393	stop	\N
1171	herself	study	331	348	853	{society,listen}	clear	172	truth	\N
1172	book	clearly	300	28	773	{anyone,health}	home	19	medical	\N
1173	page	sort	557	654	628	{father}	police	431	visit	\N
1174	may	early	553	847	476	{himself}	job	827	tend	\N
1176	describe	challenge	128	895	589	{cup}	cold	811	administration	\N
1178	second	free	600	34	848	{yard,end}	believe	484	itself	\N
1179	apply	little	889	556	327	{source}	cold	9	woman	\N
1180	memory	board	131	484	483	{almost,sort}	person	443	get	\N
1181	sign	recent	647	528	104	{money,avoid}	common	464	send	\N
1183	husband	white	921	911	434	{admit}	attention	933	your	\N
1185	over	senior	468	371	114	{particularly,use}	it	820	line	\N
1186	arrive	since	677	104	892	{life}	happen	617	film	\N
1187	market	fast	326	163	893	{community}	reveal	339	must	\N
1188	wife	ten	790	84	214	{try,important}	sense	571	hospital	\N
1189	accept	paper	598	976	68	{official,I}	company	579	relationship	\N
1190	safe	example	473	834	513	{science,learn}	hand	396	own	\N
1191	state	major	373	536	789	{sort,benefit}	water	829	father	\N
1192	difference	increase	179	858	696	{myself}	home	1	wear	\N
1193	level	cultural	180	316	182	{support}	general	213	ready	\N
1194	parent	specific	880	794	138	{relationship}	pressure	942	describe	\N
1195	forget	home	469	810	142	{because}	increase	928	hear	\N
1196	power	address	497	519	562	{lead,create}	sister	404	fight	\N
1197	newspaper	fill	626	655	766	{soon,develop}	life	558	defense	\N
1198	affect	subject	980	662	517	{study,western}	chair	482	central	\N
1199	strong	son	287	489	129	{approach}	production	388	night	\N
1200	too	design	37	977	956	{offer,find}	real	625	debate	\N
1147	sort	because	373	877	224	{fear,above}	brother	209	off	50
1110	take	will	499	65	605	{according,ever}	blue	545	tonight	97
1106	month	time	931	254	954	{firm,usually}	conference	442	something	16
1149	word	research	278	704	639	{side,door}	ago	292	business	50
1117	PM	quite	26	146	558	{attack,project}	evening	236	mind	11
1105	market	fear	185	724	656	{kitchen,throughout}	center	584	force	31
1113	lay	not	540	540	666	{hit,whose}	she	572	leader	85
1131	miss	source	992	309	740	{item,language}	lot	210	space	78
1151	open	contain	965	334	459	{information,well}	condition	532	west	68
1184	break	between	941	360	832	{set}	husband	85	human	28
1139	difference	special	64	964	747	{spring}	early	780	want	46
1182	animal	lead	565	529	303	{else}	evening	54	network	76
1177	keep	study	393	92	512	{believe}	fill	363	too	25
1120	own	computer	609	891	44	{continue}	relate	875	yet	85
1144	house	money	947	318	309	{clearly,she}	beautiful	138	month	51
1167	risk	ask	573	643	218	{site,property}	foot	984	certainly	95
1162	side	oil	63	679	764	{every}	college	100	street	26
1175	eye	type	633	522	880	{through,write}	work	109	huge	4
1154	financial	seat	161	261	726	{determine}	since	422	position	25
1169	he	themselves	347	569	837	{enough}	next	918	wait	22
\.


--
-- Data for Name: temp_bundled_phone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.temp_bundled_phone (electronics_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, warranty_months, cpu, ram_gb, role, carrier_lock, category_products_category_id, single_bundle_phone_bundled_phone_electronics_id, bundled_phone_id) FROM stdin;
1009	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1024
1092	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1022
1012	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1004
1097	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1093
1031	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1005
1044	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1010
1020	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1071
1085	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1055
1079	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1092
1083	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1040
1017	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1086
1038	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1097
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

COPY public.temp_category_products (product_id, sku, product_name, base_price, is_active, quantity, mv_attributes, dimensions, role, energy_rating, warranty_years, category_products_category_id) FROM stdin;
1430	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4
1395	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	58
1340	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	39
605	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	55
1926	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	53
1509	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	73
1482	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	54
932	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	98
1801	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	56
946	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	50
788	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	23
2054	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	95
1677	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	69
146	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	79
87	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	49
811	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	25
349	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	25
1510	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	10
1838	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	83
111	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	60
1498	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	86
209	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	87
1750	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	68
487	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	74
272	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	42
432	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	30
292	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	94
870	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	92
1537	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	98
1147	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	50
1110	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	97
1504	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	10
180	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	37
1002	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	14
1106	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	16
1149	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	50
1883	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3
154	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	27
760	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	79
385	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	52
1038	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	72
297	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	59
1434	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	51
1613	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	33
1117	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	11
1751	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	31
283	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	51
643	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	13
1475	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	66
947	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	37
2080	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	58
1753	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	85
1804	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	37
15	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	33
78	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	56
1668	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	68
449	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	60
1105	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	31
1492	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	45
2056	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	42
375	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	30
896	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	45
424	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	85
512	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3
1347	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	33
447	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	82
1066	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	65
1752	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	16
2084	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	97
1217	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	62
1735	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	98
232	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	86
2095	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	42
832	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	39
408	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7
24	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5
47	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	35
1231	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	70
548	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	51
1439	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	52
1488	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	23
1293	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	74
1010	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	11
348	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	43
822	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	34
1045	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1
371	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	41
1795	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	39
1718	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	97
799	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	30
742	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	66
1416	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	14
145	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	50
115	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	58
757	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	86
600	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	65
1212	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	48
389	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	43
436	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	35
754	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	62
523	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	28
1545	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	65
1714	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	83
583	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	46
670	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7
1335	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	52
1666	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	53
382	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	70
1113	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	85
789	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	41
1281	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	61
1903	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4
2012	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	16
613	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	43
1131	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	78
1374	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	58
161	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	59
1450	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	91
2068	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	96
690	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	81
1151	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	68
772	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	14
1491	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	34
7	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	18
1184	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	28
1936	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1
39	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	88
1845	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	86
665	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	88
1268	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	96
929	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	57
1635	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	70
1710	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1
566	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	10
1653	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	17
340	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4
498	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	93
1473	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	72
1249	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	87
51	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7
392	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1
851	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	79
1072	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9
61	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	82
847	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	59
1645	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	63
409	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	94
843	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	50
1139	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	46
1617	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	54
1221	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3
1621	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	26
729	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	22
1455	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4
188	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	98
1042	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	18
1182	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	76
1906	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	11
429	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	27
876	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	26
1424	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	31
320	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
2016	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	61
2083	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	41
378	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	31
197	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	76
2029	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	17
1349	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	53
214	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	50
310	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	68
1765	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	86
988	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	64
1827	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	26
457	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	52
170	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	34
833	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	67
1919	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	84
1067	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	37
550	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	98
1611	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	29
648	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	22
2046	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	47
1794	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4
663	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	55
1052	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	35
2017	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	47
367	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	13
2059	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	90
287	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	45
1393	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	45
33	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	23
1843	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	95
1269	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	53
439	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	11
532	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	10
1524	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	29
1973	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	30
36	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	84
1577	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	83
898	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	96
1362	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5
1575	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	28
1773	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	36
2065	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	18
2026	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	41
994	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	97
1980	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	80
1177	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	25
1120	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	85
93	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	87
107	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5
251	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	62
1493	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	25
1481	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	78
143	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	92
1914	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	14
826	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	31
1849	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	99
1822	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	3
1810	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	66
1294	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	69
627	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	90
1834	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	35
1289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
1523	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	11
454	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	62
1559	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5
412	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	66
255	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	52
1299	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	15
52	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	82
450	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	56
167	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	52
595	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	51
666	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	75
761	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	45
1413	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	62
995	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	48
334	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	86
68	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	41
147	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	60
41	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	98
628	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	93
672	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	84
435	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	33
1998	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	66
794	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	19
1734	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	97
499	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	72
1327	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	21
518	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	16
780	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	55
802	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	18
842	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	95
839	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	90
734	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9
1896	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	26
506	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	91
1144	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	51
23	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	98
1454	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	54
1516	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	89
549	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	74
878	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	37
593	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	65
1934	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	86
1777	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	57
489	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7
741	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	42
127	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	24
187	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	73
434	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	26
887	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	76
156	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	43
1967	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	49
339	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	35
497	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	59
827	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	77
1529	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	20
70	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	70
606	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	51
645	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	32
1588	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	20
1167	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	95
984	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	91
1025	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	96
5	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	44
841	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	75
148	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	92
1366	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	27
559	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	32
668	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	49
1266	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	89
2067	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1
2031	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	62
680	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	89
250	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	86
219	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	37
213	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	18
1788	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	95
234	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	98
538	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	88
267	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	73
1511	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	28
2062	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	44
1476	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	44
1925	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	34
1478	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	95
1309	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7
2002	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4
2036	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	65
534	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	10
1622	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	31
502	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	52
1723	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	74
926	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	93
26	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	24
1584	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	67
916	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	76
1026	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	72
732	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5
1451	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	68
1162	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	26
611	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	84
405	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	32
1601	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	31
1098	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	65
1089	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	44
711	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	56
1241	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	42
1634	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7
345	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	89
688	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	83
1616	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1
972	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	72
1300	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	83
1749	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	79
2005	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	57
289	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	44
397	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	93
402	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	43
441	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	21
608	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	95
1820	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	29
603	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	64
220	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1
1997	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	51
579	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	6
490	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	37
179	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	71
85	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	56
351	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	2
1593	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	37
1024	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	19
1785	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	93
2077	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	18
2072	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	81
2088	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	52
1429	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1
849	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	55
982	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	63
1522	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	80
76	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	89
1277	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	19
646	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	26
1766	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	92
944	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	16
1250	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	41
1030	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	82
1487	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	64
1323	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	56
263	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	98
1214	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9
1758	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	41
957	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	46
381	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	27
29	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	10
908	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	28
561	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	80
280	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	54
420	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	16
1426	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	74
749	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	53
1591	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	71
1571	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	18
230	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	65
153	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	50
1853	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	54
712	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	56
1229	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	59
2082	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	62
710	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	80
1329	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	31
2032	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	79
1776	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	55
515	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	74
1740	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	32
526	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	87
350	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	9
1175	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	4
1070	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	42
1253	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	45
2060	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	30
285	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	35
1736	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	82
1684	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	54
1940	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	41
535	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	86
1889	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	22
527	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	45
504	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	31
674	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	25
1895	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	76
472	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	90
1835	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	17
906	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	63
1833	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	21
1396	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	22
809	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	19
415	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	88
673	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	29
962	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	69
406	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	5
793	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	97
226	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	49
1420	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	48
465	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	44
1018	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	62
478	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	71
1091	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	48
2024	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	46
1965	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	94
462	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	95
175	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	30
416	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	61
1701	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	53
1862	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	60
312	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	31
1379	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	67
861	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	13
607	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	87
139	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	19
1332	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	26
1941	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	20
1626	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	78
1628	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	75
42	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	29
1815	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	17
1235	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	44
1373	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	53
1680	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	59
256	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	81
1888	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	58
1015	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	60
2023	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	14
103	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	85
1154	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	25
993	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1
1884	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	59
558	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	99
1800	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	52
1769	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	64
1480	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	26
1389	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	73
1284	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	78
1423	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	58
752	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	81
1790	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	10
1465	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	74
305	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	22
1667	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	60
1590	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	39
1567	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	7
975	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	49
1910	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	97
491	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	78
1589	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	89
956	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	37
1306	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	23
1169	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	22
750	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	57
268	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	40
2034	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	88
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
    ADD CONSTRAINT relation_10_pkey PRIMARY KEY (apparel_id);


--
-- Name: relation_11 relation_11_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_11
    ADD CONSTRAINT relation_11_pkey PRIMARY KEY (menclothing_id);


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
    ADD CONSTRAINT relation_15_pkey PRIMARY KEY (customer_id);


--
-- Name: relation_16 relation_16_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_16
    ADD CONSTRAINT relation_16_pkey PRIMARY KEY (businesscustomer_id);


--
-- Name: relation_17 relation_17_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_17
    ADD CONSTRAINT relation_17_pkey PRIMARY KEY (employee_id);


--
-- Name: relation_18 relation_18_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_18
    ADD CONSTRAINT relation_18_pkey PRIMARY KEY (engineer_id);


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
    ADD CONSTRAINT relation_21_pkey PRIMARY KEY (product_id, image_id);


--
-- Name: relation_22 relation_22_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_22
    ADD CONSTRAINT relation_22_pkey PRIMARY KEY (product_id, variant_id);


--
-- Name: relation_23 relation_23_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_23
    ADD CONSTRAINT relation_23_pkey PRIMARY KEY (product_id, price_id);


--
-- Name: relation_24 relation_24_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_24
    ADD CONSTRAINT relation_24_pkey PRIMARY KEY (tag_id);


--
-- Name: relation_25 relation_25_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_25
    ADD CONSTRAINT relation_25_pkey PRIMARY KEY (customer_id, address_id);


--
-- Name: relation_26 relation_26_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_26
    ADD CONSTRAINT relation_26_pkey PRIMARY KEY (customer_id, payment_method_id);


--
-- Name: relation_27 relation_27_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_27
    ADD CONSTRAINT relation_27_pkey PRIMARY KEY (customer_id);


--
-- Name: relation_28 relation_28_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_28
    ADD CONSTRAINT relation_28_pkey PRIMARY KEY (customer_id, wishlist_id);


--
-- Name: relation_29 relation_29_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_29
    ADD CONSTRAINT relation_29_pkey PRIMARY KEY (customer_id, review_id);


--
-- Name: relation_2 relation_2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_2
    ADD CONSTRAINT relation_2_pkey PRIMARY KEY (digitalproduct_id);


--
-- Name: relation_30 relation_30_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_30
    ADD CONSTRAINT relation_30_pkey PRIMARY KEY (user_id, session_id);


--
-- Name: relation_31 relation_31_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_31
    ADD CONSTRAINT relation_31_pkey PRIMARY KEY (custorder_id);


--
-- Name: relation_32 relation_32_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_32
    ADD CONSTRAINT relation_32_pkey PRIMARY KEY (custorder_id, shipment_id);


--
-- Name: relation_33 relation_33_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_33
    ADD CONSTRAINT relation_33_pkey PRIMARY KEY (promotion_id);


--
-- Name: relation_34 relation_34_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_34
    ADD CONSTRAINT relation_34_pkey PRIMARY KEY (promotion_id, coupon_code);


--
-- Name: relation_35 relation_35_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_35
    ADD CONSTRAINT relation_35_pkey PRIMARY KEY (warehouse_id);


--
-- Name: relation_36 relation_36_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_36
    ADD CONSTRAINT relation_36_pkey PRIMARY KEY (warehouse_id, bin_id);


--
-- Name: relation_37 relation_37_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_37
    ADD CONSTRAINT relation_37_pkey PRIMARY KEY (supplier_id);


--
-- Name: relation_38 relation_38_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_38
    ADD CONSTRAINT relation_38_pkey PRIMARY KEY (supplier_id, contact_id);


--
-- Name: relation_39 relation_39_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_39
    ADD CONSTRAINT relation_39_pkey PRIMARY KEY (purchaseorder_id);


--
-- Name: relation_3 relation_3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_3
    ADD CONSTRAINT relation_3_pkey PRIMARY KEY (electronics_id);


--
-- Name: relation_40 relation_40_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_40
    ADD CONSTRAINT relation_40_pkey PRIMARY KEY (courierpartner_id);


--
-- Name: relation_41 relation_41_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_41
    ADD CONSTRAINT relation_41_pkey PRIMARY KEY (product_id, tag_id);


--
-- Name: relation_42 relation_42_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_42
    ADD CONSTRAINT relation_42_pkey PRIMARY KEY (product_id, bought_together_product_product_id);


--
-- Name: relation_43 relation_43_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_43
    ADD CONSTRAINT relation_43_pkey PRIMARY KEY (customer_id, product_id);


--
-- Name: relation_44 relation_44_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_44
    ADD CONSTRAINT relation_44_pkey PRIMARY KEY (customer_id, wishlist_id, product_id);


--
-- Name: relation_45 relation_45_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_45
    ADD CONSTRAINT relation_45_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_46 relation_46_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_46
    ADD CONSTRAINT relation_46_pkey PRIMARY KEY (custorder_id, product_id);


--
-- Name: relation_47 relation_47_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_47
    ADD CONSTRAINT relation_47_pkey PRIMARY KEY (product_id, warehouse_id, bin_id);


--
-- Name: relation_48 relation_48_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_48
    ADD CONSTRAINT relation_48_pkey PRIMARY KEY (supplier_id, product_id);


--
-- Name: relation_49 relation_49_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_49
    ADD CONSTRAINT relation_49_pkey PRIMARY KEY (purchaseorder_id, product_id);


--
-- Name: relation_4 relation_4_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_4
    ADD CONSTRAINT relation_4_pkey PRIMARY KEY (desktop_id);


--
-- Name: relation_50 relation_50_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_50
    ADD CONSTRAINT relation_50_pkey PRIMARY KEY (phone_id, bundle_phone_phone_id);


--
-- Name: relation_5 relation_5_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_5
    ADD CONSTRAINT relation_5_pkey PRIMARY KEY (laptop_id);


--
-- Name: relation_6 relation_6_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_6
    ADD CONSTRAINT relation_6_pkey PRIMARY KEY (tablet_id);


--
-- Name: relation_7 relation_7_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_7
    ADD CONSTRAINT relation_7_pkey PRIMARY KEY (smartwatch_id);


--
-- Name: relation_8 relation_8_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_8
    ADD CONSTRAINT relation_8_pkey PRIMARY KEY (camera_id);


--
-- Name: relation_9 relation_9_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relation_9
    ADD CONSTRAINT relation_9_pkey PRIMARY KEY (accessories_id);


--
-- Name: temp_bundled_phone temp_bundled_phone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.temp_bundled_phone
    ADD CONSTRAINT temp_bundled_phone_pkey PRIMARY KEY (electronics_id);


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
-- Name: idx_temp_bundled_phone; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_temp_bundled_phone ON public.temp_bundled_phone USING btree (electronics_id);


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

